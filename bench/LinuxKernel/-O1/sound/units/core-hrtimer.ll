; ModuleID = 'sound/core/hrtimer.c'
source_filename = "sound/core/hrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_snd_hrtimer__212_168_snd_hrtimer_init\22, \22a\22\09\09"
module asm "__initcall__kmod_snd_hrtimer__212_168_snd_hrtimer_init6:\09\09\09"
module asm ".long\09__initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.snd_timer_hardware = type { i32, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i64, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.snd_hrtimer = type { ptr, %struct.hrtimer, i8 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID_author207 = internal constant [48 x i8] c"snd_hrtimer.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description208 = internal constant [45 x i8] c"snd_hrtimer.description=ALSA hrtimer backend\00", section ".modinfo", align 1, !dbg !1750
@__UNIQUE_ID_file209 = internal constant [40 x i8] c"snd_hrtimer.file=sound/core/snd-hrtimer\00", section ".modinfo", align 1, !dbg !1755
@__UNIQUE_ID_license210 = internal constant [24 x i8] c"snd_hrtimer.license=GPL\00", section ".modinfo", align 1, !dbg !1760
@__UNIQUE_ID_alias211 = internal constant [30 x i8] c"snd_hrtimer.alias=snd-timer-3\00", section ".modinfo", align 1, !dbg !1765
@mytimer = internal global ptr null, align 8, !dbg !1776
@__UNIQUE_ID___addressable___initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6213 = internal global ptr @__initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6, section ".discard.addressable", align 8, !dbg !1770
@__exitcall_snd_hrtimer_exit = internal global ptr @snd_hrtimer_exit, section ".exitcall.exit", align 8, !dbg !1772
@hrtimer_resolution = external dso_local global i32, align 4
@resolution = internal global i32 0, align 4, !dbg !1786
@.str = private unnamed_addr constant [8 x i8] c"hrtimer\00", align 1, !dbg !1778
@.str.1 = private unnamed_addr constant [9 x i8] c"HR timer\00", align 1, !dbg !1781
@hrtimer_hw = internal constant %struct.snd_timer_hardware { i32 17, i64 0, i64 0, i64 0, i64 0, ptr @snd_hrtimer_open, ptr @snd_hrtimer_close, ptr null, ptr @snd_hrtimer_start, ptr @snd_hrtimer_stop, ptr null, ptr null }, section ".init.rodata", align 8, !dbg !1788
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1791
@.str.3 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !1796
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__UNIQUE_ID_alias211, ptr @snd_hrtimer_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6213, ptr @__exitcall_snd_hrtimer_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @snd_hrtimer_exit() #0 section ".exit.text" align 16 !dbg !1813 {
entry:
  %0 = load ptr, ptr @mytimer, align 8, !dbg !1814
  %tobool = icmp ne ptr %0, null, !dbg !1814
  br i1 %tobool, label %if.then, label %if.end, !dbg !1816

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @mytimer, align 8, !dbg !1817
  %call = call i32 @snd_timer_global_free(ptr noundef %1) #15, !dbg !1819
  store ptr null, ptr @mytimer, align 8, !dbg !1820
  br label %if.end, !dbg !1821

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1823 dso_local i32 @snd_timer_global_free(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6() #0 section ".init.text" align 16 !dbg !1824 {
entry:
  %call = call i32 @snd_hrtimer_init() #16, !dbg !1825
  ret i32 %call, !dbg !1825
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @snd_hrtimer_init() #0 section ".init.text" align 16 !dbg !1826 {
entry:
  %retval = alloca i32, align 4
  %timer = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer) #17, !dbg !1830
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !1828, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1829, metadata !DIExpression()), !dbg !1833
  %0 = load i32, ptr @hrtimer_resolution, align 4, !dbg !1834
  store i32 %0, ptr @resolution, align 4, !dbg !1835
  %call = call i32 @snd_timer_global_new(ptr noundef @.str, i32 noundef 3, ptr noundef %timer) #15, !dbg !1836
  store i32 %call, ptr %err, align 4, !dbg !1837
  %1 = load i32, ptr %err, align 4, !dbg !1838
  %cmp = icmp slt i32 %1, 0, !dbg !1840
  br i1 %cmp, label %if.then, label %if.end, !dbg !1841

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !1842
  store i32 %2, ptr %retval, align 4, !dbg !1843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1843

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %timer, align 8, !dbg !1844
  %module = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 2, !dbg !1845
  store ptr null, ptr %module, align 8, !dbg !1846
  %4 = load ptr, ptr %timer, align 8, !dbg !1847
  %name = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 6, !dbg !1848
  %arraydecay = getelementptr inbounds [80 x i8], ptr %name, i64 0, i64 0, !dbg !1847
  %call1 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str.1) #15, !dbg !1849
  %5 = load ptr, ptr %timer, align 8, !dbg !1850
  %hw = getelementptr inbounds %struct.snd_timer, ptr %5, i32 0, i32 12, !dbg !1851
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hw, ptr align 8 @hrtimer_hw, i64 96, i1 false), !dbg !1852
  %6 = load i32, ptr @resolution, align 4, !dbg !1853
  %conv = zext i32 %6 to i64, !dbg !1853
  %7 = load ptr, ptr %timer, align 8, !dbg !1854
  %hw2 = getelementptr inbounds %struct.snd_timer, ptr %7, i32 0, i32 12, !dbg !1855
  %resolution = getelementptr inbounds %struct.snd_timer_hardware, ptr %hw2, i32 0, i32 1, !dbg !1856
  store i64 %conv, ptr %resolution, align 8, !dbg !1857
  %8 = load i32, ptr @resolution, align 4, !dbg !1858
  %conv3 = zext i32 %8 to i64, !dbg !1858
  %div = udiv i64 1000000000, %conv3, !dbg !1859
  %9 = load ptr, ptr %timer, align 8, !dbg !1860
  %hw4 = getelementptr inbounds %struct.snd_timer, ptr %9, i32 0, i32 12, !dbg !1861
  %ticks = getelementptr inbounds %struct.snd_timer_hardware, ptr %hw4, i32 0, i32 4, !dbg !1862
  store i64 %div, ptr %ticks, align 8, !dbg !1863
  %10 = load ptr, ptr %timer, align 8, !dbg !1864
  %max_instances = getelementptr inbounds %struct.snd_timer, ptr %10, i32 0, i32 20, !dbg !1865
  store i32 100, ptr %max_instances, align 8, !dbg !1866
  %11 = load ptr, ptr %timer, align 8, !dbg !1867
  %call5 = call i32 @snd_timer_global_register(ptr noundef %11) #15, !dbg !1868
  store i32 %call5, ptr %err, align 4, !dbg !1869
  %12 = load i32, ptr %err, align 4, !dbg !1870
  %cmp6 = icmp slt i32 %12, 0, !dbg !1872
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !1873

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %timer, align 8, !dbg !1874
  %call9 = call i32 @snd_timer_global_free(ptr noundef %13) #15, !dbg !1876
  %14 = load i32, ptr %err, align 4, !dbg !1877
  store i32 %14, ptr %retval, align 4, !dbg !1878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1878

if.end10:                                         ; preds = %if.end
  %15 = load ptr, ptr %timer, align 8, !dbg !1879
  store ptr %15, ptr @mytimer, align 8, !dbg !1880
  store i32 0, ptr %retval, align 4, !dbg !1881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1881

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer) #17, !dbg !1882
  %16 = load i32, ptr %retval, align 4, !dbg !1882
  ret i32 %16, !dbg !1882
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1883 dso_local i32 @snd_timer_global_new(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1887 dso_local ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1891 dso_local i32 @snd_timer_global_register(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hrtimer_open(ptr noundef %t) #5 align 16 !dbg !1892 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %stime = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1894, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #17, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !1895, metadata !DIExpression()), !dbg !1898
  %call = call noalias ptr @kzalloc(i64 noundef 80, i32 noundef 3264) #18, !dbg !1899
  store ptr %call, ptr %stime, align 8, !dbg !1900
  %0 = load ptr, ptr %stime, align 8, !dbg !1901
  %tobool = icmp ne ptr %0, null, !dbg !1901
  br i1 %tobool, label %if.end, label %if.then, !dbg !1903

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1904

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %stime, align 8, !dbg !1905
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %1, i32 0, i32 1, !dbg !1906
  call void @hrtimer_init(ptr noundef %hrt, i32 noundef 1, i32 noundef 1) #15, !dbg !1907
  %2 = load ptr, ptr %t.addr, align 8, !dbg !1908
  %3 = load ptr, ptr %stime, align 8, !dbg !1909
  %timer = getelementptr inbounds %struct.snd_hrtimer, ptr %3, i32 0, i32 0, !dbg !1910
  store ptr %2, ptr %timer, align 8, !dbg !1911
  %4 = load ptr, ptr %stime, align 8, !dbg !1912
  %hrt1 = getelementptr inbounds %struct.snd_hrtimer, ptr %4, i32 0, i32 1, !dbg !1913
  %function = getelementptr inbounds %struct.hrtimer, ptr %hrt1, i32 0, i32 2, !dbg !1914
  store ptr @snd_hrtimer_callback, ptr %function, align 8, !dbg !1915
  %5 = load ptr, ptr %stime, align 8, !dbg !1916
  %6 = load ptr, ptr %t.addr, align 8, !dbg !1917
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %6, i32 0, i32 10, !dbg !1918
  store ptr %5, ptr %private_data, align 8, !dbg !1919
  store i32 0, ptr %retval, align 4, !dbg !1920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1920

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #17, !dbg !1921
  %7 = load i32, ptr %retval, align 4, !dbg !1921
  ret i32 %7, !dbg !1921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hrtimer_close(ptr noundef %t) #5 align 16 !dbg !1922 {
entry:
  %t.addr = alloca ptr, align 8
  %stime = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1924, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #17, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !1925, metadata !DIExpression()), !dbg !1928
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1929
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10, !dbg !1930
  %1 = load ptr, ptr %private_data, align 8, !dbg !1930
  store ptr %1, ptr %stime, align 8, !dbg !1928
  %2 = load ptr, ptr %stime, align 8, !dbg !1931
  %tobool = icmp ne ptr %2, null, !dbg !1931
  br i1 %tobool, label %if.then, label %if.end, !dbg !1933

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %t.addr, align 8, !dbg !1934
  %lock = getelementptr inbounds %struct.snd_timer, ptr %3, i32 0, i32 13, !dbg !1936
  call void @spin_lock_irq(ptr noundef %lock) #15, !dbg !1937
  %4 = load ptr, ptr %t.addr, align 8, !dbg !1938
  %running = getelementptr inbounds %struct.snd_timer, ptr %4, i32 0, i32 8, !dbg !1939
  store i32 0, ptr %running, align 4, !dbg !1940
  %5 = load ptr, ptr %stime, align 8, !dbg !1941
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %5, i32 0, i32 2, !dbg !1942
  store i8 1, ptr %in_callback, align 8, !dbg !1943
  %6 = load ptr, ptr %t.addr, align 8, !dbg !1944
  %lock1 = getelementptr inbounds %struct.snd_timer, ptr %6, i32 0, i32 13, !dbg !1945
  call void @spin_unlock_irq(ptr noundef %lock1) #15, !dbg !1946
  %7 = load ptr, ptr %stime, align 8, !dbg !1947
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %7, i32 0, i32 1, !dbg !1948
  %call = call i32 @hrtimer_cancel(ptr noundef %hrt) #15, !dbg !1949
  %8 = load ptr, ptr %stime, align 8, !dbg !1950
  call void @kfree(ptr noundef %8) #15, !dbg !1951
  %9 = load ptr, ptr %t.addr, align 8, !dbg !1952
  %private_data2 = getelementptr inbounds %struct.snd_timer, ptr %9, i32 0, i32 10, !dbg !1953
  store ptr null, ptr %private_data2, align 8, !dbg !1954
  br label %if.end, !dbg !1955

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #17, !dbg !1956
  ret i32 0, !dbg !1957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hrtimer_start(ptr noundef %t) #5 align 16 !dbg !1958 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %stime = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #17, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !1961, metadata !DIExpression()), !dbg !1964
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1965
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10, !dbg !1966
  %1 = load ptr, ptr %private_data, align 8, !dbg !1966
  store ptr %1, ptr %stime, align 8, !dbg !1964
  %2 = load ptr, ptr %stime, align 8, !dbg !1967
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %2, i32 0, i32 2, !dbg !1969
  %3 = load i8, ptr %in_callback, align 8, !dbg !1969, !range !1970, !noundef !353
  %tobool = trunc i8 %3 to i1, !dbg !1969
  br i1 %tobool, label %if.then, label %if.end, !dbg !1971

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1972

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %stime, align 8, !dbg !1973
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %4, i32 0, i32 1, !dbg !1974
  %5 = load ptr, ptr %t.addr, align 8, !dbg !1975
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %5, i32 0, i32 9, !dbg !1976
  %6 = load i64, ptr %sticks, align 8, !dbg !1976
  %7 = load i32, ptr @resolution, align 4, !dbg !1977
  %conv = zext i32 %7 to i64, !dbg !1977
  %mul = mul i64 %6, %conv, !dbg !1978
  %call = call i64 @ns_to_ktime(i64 noundef %mul) #15, !dbg !1979
  call void @hrtimer_start(ptr noundef %hrt, i64 noundef %call, i32 noundef 1) #15, !dbg !1980
  store i32 0, ptr %retval, align 4, !dbg !1981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1981

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #17, !dbg !1982
  %8 = load i32, ptr %retval, align 4, !dbg !1982
  ret i32 %8, !dbg !1982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hrtimer_stop(ptr noundef %t) #5 align 16 !dbg !1983 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %stime = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1985, metadata !DIExpression()), !dbg !1987
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #17, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !1986, metadata !DIExpression()), !dbg !1989
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1990
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10, !dbg !1991
  %1 = load ptr, ptr %private_data, align 8, !dbg !1991
  store ptr %1, ptr %stime, align 8, !dbg !1989
  %2 = load ptr, ptr %stime, align 8, !dbg !1992
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %2, i32 0, i32 2, !dbg !1994
  %3 = load i8, ptr %in_callback, align 8, !dbg !1994, !range !1970, !noundef !353
  %tobool = trunc i8 %3 to i1, !dbg !1994
  br i1 %tobool, label %if.then, label %if.end, !dbg !1995

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1996

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %stime, align 8, !dbg !1997
  %hrt = getelementptr inbounds %struct.snd_hrtimer, ptr %4, i32 0, i32 1, !dbg !1998
  %call = call i32 @hrtimer_try_to_cancel(ptr noundef %hrt) #15, !dbg !1999
  store i32 0, ptr %retval, align 4, !dbg !2000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2000

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #17, !dbg !2001
  %5 = load i32, ptr %retval, align 4, !dbg !2001
  ret i32 %5, !dbg !2001
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2002 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2006, metadata !DIExpression()), !dbg !2008
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2007, metadata !DIExpression()), !dbg !2009
  %0 = load i64, ptr %size.addr, align 8, !dbg !2010
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2011
  %or = or i32 %1, 256, !dbg !2012
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !2013
  ret ptr %call, !dbg !2014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2015 dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hrtimer_callback(ptr noundef %hrt) #5 align 16 !dbg !2018 {
entry:
  %hrt.addr = alloca ptr, align 8
  %stime = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %t = alloca ptr, align 8
  %delta = alloca i64, align 8
  %ticks = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %hrt, ptr %hrt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hrt.addr, metadata !2020, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #17, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !2021, metadata !DIExpression()), !dbg !2031
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2022, metadata !DIExpression()), !dbg !2032
  %0 = load ptr, ptr %hrt.addr, align 8, !dbg !2032
  store ptr %0, ptr %__mptr, align 8, !dbg !2032
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2032
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !2032
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2032
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2033
  %2 = load ptr, ptr %tmp, align 8, !dbg !2032
  store ptr %2, ptr %stime, align 8, !dbg !2031
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #17, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %t, metadata !2024, metadata !DIExpression()), !dbg !2035
  %3 = load ptr, ptr %stime, align 8, !dbg !2036
  %timer = getelementptr inbounds %struct.snd_hrtimer, ptr %3, i32 0, i32 0, !dbg !2037
  %4 = load ptr, ptr %timer, align 8, !dbg !2037
  store ptr %4, ptr %t, align 8, !dbg !2035
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #17, !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !2025, metadata !DIExpression()), !dbg !2039
  call void @llvm.lifetime.start.p0(i64 8, ptr %ticks) #17, !dbg !2040
  call void @llvm.dbg.declare(metadata ptr %ticks, metadata !2026, metadata !DIExpression()), !dbg !2041
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2027, metadata !DIExpression()), !dbg !2043
  store i32 0, ptr %ret, align 4, !dbg !2043
  %5 = load ptr, ptr %t, align 8, !dbg !2044
  %lock = getelementptr inbounds %struct.snd_timer, ptr %5, i32 0, i32 13, !dbg !2045
  call void @spin_lock(ptr noundef %lock) #15, !dbg !2046
  %6 = load ptr, ptr %t, align 8, !dbg !2047
  %running = getelementptr inbounds %struct.snd_timer, ptr %6, i32 0, i32 8, !dbg !2049
  %7 = load i32, ptr %running, align 4, !dbg !2049
  %tobool = icmp ne i32 %7, 0, !dbg !2047
  br i1 %tobool, label %if.end, label %if.then, !dbg !2050

if.then:                                          ; preds = %entry
  br label %out, !dbg !2051

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %stime, align 8, !dbg !2052
  %in_callback = getelementptr inbounds %struct.snd_hrtimer, ptr %8, i32 0, i32 2, !dbg !2053
  store i8 1, ptr %in_callback, align 8, !dbg !2054
  %9 = load ptr, ptr %t, align 8, !dbg !2055
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %9, i32 0, i32 9, !dbg !2056
  %10 = load i64, ptr %sticks, align 8, !dbg !2056
  store i64 %10, ptr %ticks, align 8, !dbg !2057
  %11 = load ptr, ptr %t, align 8, !dbg !2058
  %lock1 = getelementptr inbounds %struct.snd_timer, ptr %11, i32 0, i32 13, !dbg !2059
  call void @spin_unlock(ptr noundef %lock1) #15, !dbg !2060
  %12 = load ptr, ptr %hrt.addr, align 8, !dbg !2061
  %base = getelementptr inbounds %struct.hrtimer, ptr %12, i32 0, i32 3, !dbg !2061
  %13 = load ptr, ptr %base, align 8, !dbg !2061
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, ptr %13, i32 0, i32 6, !dbg !2061
  %14 = load ptr, ptr %get_time, align 16, !dbg !2061
  %call = call i64 %14() #15, !dbg !2061
  %15 = load ptr, ptr %hrt.addr, align 8, !dbg !2061
  %call2 = call i64 @hrtimer_get_expires(ptr noundef %15) #15, !dbg !2061
  %sub = sub i64 %call, %call2, !dbg !2061
  store i64 %sub, ptr %delta, align 8, !dbg !2062
  %16 = load i64, ptr %delta, align 8, !dbg !2063
  %cmp = icmp sgt i64 %16, 0, !dbg !2065
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2066

if.then3:                                         ; preds = %if.end
  %17 = load i64, ptr %delta, align 8, !dbg !2067
  %18 = load i64, ptr %ticks, align 8, !dbg !2068
  %19 = load i32, ptr @resolution, align 4, !dbg !2069
  %conv = zext i32 %19 to i64, !dbg !2069
  %mul = mul i64 %18, %conv, !dbg !2070
  %call4 = call i64 @ktime_divns(i64 noundef %17, i64 noundef %mul) #15, !dbg !2071
  %20 = load i64, ptr %ticks, align 8, !dbg !2072
  %add = add i64 %20, %call4, !dbg !2072
  store i64 %add, ptr %ticks, align 8, !dbg !2072
  br label %if.end5, !dbg !2073

if.end5:                                          ; preds = %if.then3, %if.end
  %21 = load ptr, ptr %stime, align 8, !dbg !2074
  %timer6 = getelementptr inbounds %struct.snd_hrtimer, ptr %21, i32 0, i32 0, !dbg !2075
  %22 = load ptr, ptr %timer6, align 8, !dbg !2075
  %23 = load i64, ptr %ticks, align 8, !dbg !2076
  call void @snd_timer_interrupt(ptr noundef %22, i64 noundef %23) #15, !dbg !2077
  %24 = load ptr, ptr %t, align 8, !dbg !2078
  %lock7 = getelementptr inbounds %struct.snd_timer, ptr %24, i32 0, i32 13, !dbg !2079
  call void @spin_lock(ptr noundef %lock7) #15, !dbg !2080
  %25 = load ptr, ptr %t, align 8, !dbg !2081
  %running8 = getelementptr inbounds %struct.snd_timer, ptr %25, i32 0, i32 8, !dbg !2083
  %26 = load i32, ptr %running8, align 4, !dbg !2083
  %tobool9 = icmp ne i32 %26, 0, !dbg !2081
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !2084

if.then10:                                        ; preds = %if.end5
  %27 = load ptr, ptr %hrt.addr, align 8, !dbg !2085
  %28 = load ptr, ptr %t, align 8, !dbg !2087
  %sticks11 = getelementptr inbounds %struct.snd_timer, ptr %28, i32 0, i32 9, !dbg !2088
  %29 = load i64, ptr %sticks11, align 8, !dbg !2088
  %30 = load i32, ptr @resolution, align 4, !dbg !2089
  %conv12 = zext i32 %30 to i64, !dbg !2089
  %mul13 = mul i64 %29, %conv12, !dbg !2090
  call void @hrtimer_add_expires_ns(ptr noundef %27, i64 noundef %mul13) #15, !dbg !2091
  store i32 1, ptr %ret, align 4, !dbg !2092
  br label %if.end14, !dbg !2093

if.end14:                                         ; preds = %if.then10, %if.end5
  %31 = load ptr, ptr %stime, align 8, !dbg !2094
  %in_callback15 = getelementptr inbounds %struct.snd_hrtimer, ptr %31, i32 0, i32 2, !dbg !2095
  store i8 0, ptr %in_callback15, align 8, !dbg !2096
  br label %out, !dbg !2094

out:                                              ; preds = %if.end14, %if.then
  call void @llvm.dbg.label(metadata !2028), !dbg !2097
  %32 = load ptr, ptr %t, align 8, !dbg !2098
  %lock16 = getelementptr inbounds %struct.snd_timer, ptr %32, i32 0, i32 13, !dbg !2099
  call void @spin_unlock(ptr noundef %lock16) #15, !dbg !2100
  %33 = load i32, ptr %ret, align 4, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %ticks) #17, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #17, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #17, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #17, !dbg !2102
  ret i32 %33, !dbg !2103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2104 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2106, metadata !DIExpression()), !dbg !2111
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2107, metadata !DIExpression()), !dbg !2112
  %0 = load i64, ptr %size.addr, align 8, !dbg !2113
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2114
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2115

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2116
  %tobool = icmp ne i64 %2, 0, !dbg !2116
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2117

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2108, metadata !DIExpression()), !dbg !2119
  %3 = load i64, ptr %size.addr, align 8, !dbg !2120
  %cmp = icmp ugt i64 %3, 8192, !dbg !2122
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2123

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2124
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2125
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !2126
  store ptr %call, ptr %retval, align 8, !dbg !2127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2127

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2128
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2128
  store i32 %call2, ptr %index, align 4, !dbg !2129
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2130
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2131
  %9 = ptrtoint ptr %8 to i64, !dbg !2131
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2132
  %idxprom = zext i32 %call3 to i64, !dbg !2133
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2133
  %10 = load i32, ptr %index, align 4, !dbg !2134
  %idxprom4 = zext i32 %10 to i64, !dbg !2133
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2133
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2133
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2135
  %13 = load i64, ptr %size.addr, align 8, !dbg !2136
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !2137
  store ptr %call6, ptr %retval, align 8, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !2139
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2140
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2141
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !2142
  store ptr %call8, ptr %retval, align 8, !dbg !2143
  br label %return, !dbg !2143

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2144
  ret ptr %16, !dbg !2144
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2145 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !2146 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2150, metadata !DIExpression()), !dbg !2152
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2151, metadata !DIExpression()), !dbg !2153
  %0 = load i64, ptr %size.addr, align 8, !dbg !2154
  %tobool = icmp ne i64 %0, 0, !dbg !2154
  br i1 %tobool, label %if.end, label %if.then, !dbg !2156

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2157
  br label %return, !dbg !2157

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2158
  %cmp = icmp ule i64 %1, 8, !dbg !2160
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2161

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2162
  br label %return, !dbg !2162

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2163
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2165
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2166

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2167
  %cmp4 = icmp ule i64 %3, 96, !dbg !2168
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2169

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2171
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2173
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2174

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2175
  %cmp9 = icmp ule i64 %5, 192, !dbg !2176
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2177

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2178
  br label %return, !dbg !2178

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2179
  %cmp12 = icmp ule i64 %6, 8, !dbg !2181
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2182

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2183
  br label %return, !dbg !2183

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2184
  %cmp15 = icmp ule i64 %7, 16, !dbg !2186
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2187

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2188
  br label %return, !dbg !2188

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2189
  %cmp18 = icmp ule i64 %8, 32, !dbg !2191
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2192

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2193
  br label %return, !dbg !2193

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2194
  %cmp21 = icmp ule i64 %9, 64, !dbg !2196
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2197

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2198
  br label %return, !dbg !2198

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2199
  %cmp24 = icmp ule i64 %10, 128, !dbg !2201
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2202

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2203
  br label %return, !dbg !2203

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2204
  %cmp27 = icmp ule i64 %11, 256, !dbg !2206
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2207

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2208
  br label %return, !dbg !2208

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2209
  %cmp30 = icmp ule i64 %12, 512, !dbg !2211
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2212

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2213
  br label %return, !dbg !2213

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2214
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2216
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2217

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2218
  br label %return, !dbg !2218

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2219
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2221
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2222

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2223
  br label %return, !dbg !2223

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2224
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2226
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2227

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2228
  br label %return, !dbg !2228

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2229
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2231
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2232

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2233
  br label %return, !dbg !2233

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2234
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2236
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2237

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2238
  br label %return, !dbg !2238

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2239
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2241
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2242

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2243
  br label %return, !dbg !2243

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2244
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2246
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2247

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2248
  br label %return, !dbg !2248

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2249
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2251
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2252

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2253
  br label %return, !dbg !2253

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2254
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2256
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2257

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2258
  br label %return, !dbg !2258

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2259
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2261
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2262

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2263
  br label %return, !dbg !2263

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2264
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2266
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2267

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2268
  br label %return, !dbg !2268

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2269
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2271
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2272

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2274, !range !1970, !noundef !353
  %tobool69 = trunc i8 %25 to i1, !dbg !2274
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2276

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2277

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !2278, !srcloc !2281
  unreachable, !dbg !2278

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2282

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2283

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2284

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2286

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2284

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !2288, !srcloc !2290
  br label %do.end75, !dbg !2288

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2284

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2291
  br label %return, !dbg !2291

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2292
  ret i32 %26, !dbg !2292
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2293 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !2299 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2303, metadata !DIExpression()), !dbg !2305
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2304, metadata !DIExpression()), !dbg !2306
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2307
  %and = and i32 %0, 17, !dbg !2307
  %cmp = icmp eq i32 %and, 0, !dbg !2307
  %lnot = xor i1 %cmp, true, !dbg !2307
  %lnot1 = xor i1 %lnot, true, !dbg !2307
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2307
  %conv = sext i32 %lnot.ext to i64, !dbg !2307
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2307
  %tobool = icmp ne i64 %expval, 0, !dbg !2307
  br i1 %tobool, label %if.then, label %if.end, !dbg !2309

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2310
  br label %return, !dbg !2310

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2311
  %and2 = and i32 %1, 1, !dbg !2313
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2313
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2314

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2315
  br label %return, !dbg !2315

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2318
  ret i32 %2, !dbg !2318
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2319 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2320 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #10 align 16 !dbg !2321 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2329
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2329
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !2329
  ret void, !dbg !2330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #10 align 16 !dbg !2331 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2335
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2335
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !2335
  ret void, !dbg !2336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hrtimer_get_expires(ptr noundef %timer) #14 align 16 !dbg !2337 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !2343, metadata !DIExpression()), !dbg !2344
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !2345
  %node = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 0, !dbg !2346
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %node, i32 0, i32 1, !dbg !2347
  %1 = load i64, ptr %expires, align 8, !dbg !2347
  ret i64 %1, !dbg !2348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #14 align 16 !dbg !2349 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2354, metadata !DIExpression()), !dbg !2361
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !2355, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !2363
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2356, metadata !DIExpression()), !dbg !2363
  %0 = load i64, ptr %div.addr, align 8, !dbg !2363
  %cmp = icmp slt i64 %0, 0, !dbg !2363
  %lnot = xor i1 %cmp, true, !dbg !2363
  %lnot1 = xor i1 %lnot, true, !dbg !2363
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2363
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2363
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2364
  %tobool = icmp ne i32 %1, 0, !dbg !2364
  %lnot2 = xor i1 %tobool, true, !dbg !2364
  %lnot4 = xor i1 %lnot2, true, !dbg !2364
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2364
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2364
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2364
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2364
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2363

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2364

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !2365
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2358, metadata !DIExpression()), !dbg !2365
  store i32 2305, ptr %__flags, align 4, !dbg !2365
  br label %do.body7, !dbg !2365

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2366

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2366

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2365

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2368
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 154, i32 %2, i64 12) #17, !dbg !2368, !srcloc !2370
  br label %do.cond9, !dbg !2368

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2368

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2365

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2371

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2371

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !2364
  br label %do.cond14, !dbg !2365

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2365

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2365

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2363
  %tobool16 = icmp ne i32 %3, 0, !dbg !2363
  %lnot17 = xor i1 %tobool16, true, !dbg !2363
  %lnot19 = xor i1 %lnot17, true, !dbg !2363
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2363
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2363
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2363
  store i64 %expval22, ptr %tmp, align 8, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !2373
  %4 = load i64, ptr %tmp, align 8, !dbg !2363
  %5 = load i64, ptr %kt.addr, align 8, !dbg !2374
  %6 = load i64, ptr %div.addr, align 8, !dbg !2375
  %div23 = sdiv i64 %5, %6, !dbg !2376
  ret i64 %div23, !dbg !2377
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2378 dso_local void @snd_timer_interrupt(ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_add_expires_ns(ptr noundef %timer, i64 noundef %ns) #14 align 16 !dbg !2381 {
entry:
  %timer.addr = alloca ptr, align 8
  %ns.addr = alloca i64, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !2385, metadata !DIExpression()), !dbg !2387
  store i64 %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2386, metadata !DIExpression()), !dbg !2388
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !2389
  %node = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 0, !dbg !2389
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %node, i32 0, i32 1, !dbg !2389
  %1 = load i64, ptr %expires, align 8, !dbg !2389
  %2 = load i64, ptr %ns.addr, align 8, !dbg !2389
  %add = add i64 %1, %2, !dbg !2389
  %3 = load ptr, ptr %timer.addr, align 8, !dbg !2390
  %node1 = getelementptr inbounds %struct.hrtimer, ptr %3, i32 0, i32 0, !dbg !2391
  %expires2 = getelementptr inbounds %struct.timerqueue_node, ptr %node1, i32 0, i32 1, !dbg !2392
  store i64 %add, ptr %expires2, align 8, !dbg !2393
  %4 = load ptr, ptr %timer.addr, align 8, !dbg !2394
  %_softexpires = getelementptr inbounds %struct.hrtimer, ptr %4, i32 0, i32 1, !dbg !2394
  %5 = load i64, ptr %_softexpires, align 8, !dbg !2394
  %6 = load i64, ptr %ns.addr, align 8, !dbg !2394
  %add3 = add i64 %5, %6, !dbg !2394
  %7 = load ptr, ptr %timer.addr, align 8, !dbg !2395
  %_softexpires4 = getelementptr inbounds %struct.hrtimer, ptr %7, i32 0, i32 1, !dbg !2396
  store i64 %add3, ptr %_softexpires4, align 8, !dbg !2397
  ret void, !dbg !2398
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2399 dso_local void @_raw_spin_lock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2404 dso_local void @_raw_spin_unlock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #10 align 16 !dbg !2405 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2407, metadata !DIExpression()), !dbg !2408
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2409
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2409
  call void @_raw_spin_lock_irq(ptr noundef %1) #15, !dbg !2409
  ret void, !dbg !2410
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #10 align 16 !dbg !2411 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2413, metadata !DIExpression()), !dbg !2414
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2415
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2415
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15, !dbg !2415
  ret void, !dbg !2416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2417 dso_local i32 @hrtimer_cancel(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2420 dso_local void @kfree(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2423 dso_local void @_raw_spin_lock_irq(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2424 dso_local void @_raw_spin_unlock_irq(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_start(ptr noundef %timer, i64 noundef %tim, i32 noundef %mode) #14 align 16 !dbg !2425 {
entry:
  %timer.addr = alloca ptr, align 8
  %tim.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !2430, metadata !DIExpression()), !dbg !2433
  store i64 %tim, ptr %tim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tim.addr, metadata !2431, metadata !DIExpression()), !dbg !2434
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !2432, metadata !DIExpression()), !dbg !2435
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !2436
  %1 = load i64, ptr %tim.addr, align 8, !dbg !2437
  %2 = load i32, ptr %mode.addr, align 4, !dbg !2438
  call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef 0, i32 noundef %2) #15, !dbg !2439
  ret void, !dbg !2440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ns_to_ktime(i64 noundef %ns) #14 align 16 !dbg !2441 {
entry:
  %ns.addr = alloca i64, align 8
  store i64 %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  %0 = load i64, ptr %ns.addr, align 8, !dbg !2447
  ret i64 %0, !dbg !2448
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2449 dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2452 dso_local i32 @hrtimer_try_to_cancel(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!llvm.ident = !{!1812}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author207", scope: !2, file: !3, line: 15, type: !1801, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.hrtimer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd-hrtimer\22 -D KBUILD_BASENAME=\22hrtimer\22 -D KBUILD_MODNAME=\22snd_hrtimer\22 -D __KBUILD_MODNAME=kmod_snd_hrtimer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/hrtimer.ll sound/core/hrtimer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !1749, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/hrtimer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "714919e073b6b7ae5c8a71778079ab06")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !95, !100}
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !33, line: 39, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!80 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!81 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!82 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!83 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!84 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!85 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!86 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!87 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!88 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!89 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!90 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!91 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!92 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!93 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!94 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 10, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "false", value: 0)
!99 = !DIEnumerator(name: "true", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !101, line: 364, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!105 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!106 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!107 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!108 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!109 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!110 = !{!111, !112, !1161, !267, !1162}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !114)
!114 = !{!115, !116, !123, !128, !809, !835, !836, !837, !838, !842, !845, !846, !847, !900, !901, !902, !903, !904, !905, !906, !907, !915, !919, !939, !957, !958, !959, !960, !969, !993, !994, !997, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1011, !1012, !1119, !1127, !1128, !1129, !1131, !1135, !1136, !1140, !1141, !1142, !1143, !1145, !1146, !1147, !1154, !1155, !1156, !1160}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !113, file: !6, line: 403, baseType: !5, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !113, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !118, line: 190, size: 128, elements: !119)
!118 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !118, line: 191, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !118, line: 191, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !6, line: 409, baseType: !124, size: 448, offset: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 448, elements: !126)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 56)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !113, file: !6, line: 417, baseType: !129, size: 768, offset: 640)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !130)
!130 = !{!131, !792, !793, !794, !797}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !129, file: !6, line: 46, baseType: !132, size: 512)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !133, line: 64, size: 512, elements: !134)
!133 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!134 = !{!135, !138, !139, !141, !230, !662, !777, !787, !788, !789, !790, !791}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !133, line: 65, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !132, file: !133, line: 66, baseType: !117, size: 128, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !133, line: 67, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !132, file: !133, line: 68, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !133, line: 168, size: 768, elements: !144)
!144 = !{!145, !146, !189, !190}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !133, line: 169, baseType: !117, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !143, file: !133, line: 170, baseType: !147, size: 32, offset: 128)
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
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !118, line: 174, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 172, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !168, file: !118, line: 173, baseType: !46, size: 32)
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
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !133, line: 171, baseType: !132, size: 512, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !143, file: !133, line: 172, baseType: !191, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !133, line: 133, size: 192, elements: !194)
!194 = !{!195, !202, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !193, file: !133, line: 134, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!46, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !133, line: 135, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!136, !200}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !193, file: !133, line: 136, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!46, !200, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !133, line: 125, size: 20736, elements: !214)
!214 = !{!215, !220, !224, !225, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !213, file: !133, line: 126, baseType: !216, size: 192)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !218)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !213, file: !133, line: 127, baseType: !221, size: 4096, offset: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 4096, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !213, file: !133, line: 128, baseType: !46, size: 32, offset: 4288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !213, file: !133, line: 129, baseType: !226, size: 16384, offset: 4320)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 16384, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !213, file: !133, line: 130, baseType: !46, size: 32, offset: 20704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !132, file: !133, line: 69, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !133, line: 116, size: 384, elements: !234)
!234 = !{!235, !239, !268, !608, !639, !643}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !133, line: 117, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !140}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !233, file: !133, line: 118, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !243, line: 254, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!244 = !{!245, !260}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !242, file: !243, line: 255, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !140, !254, !217}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !118, line: 66, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !251, line: 73, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !251, line: 15, baseType: !253)
!253 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !243, line: 30, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !243, line: 31, baseType: !136, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !255, file: !243, line: 32, baseType: !259, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !118, line: 24, baseType: !187)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !243, line: 256, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!249, !140, !254, !136, !264}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 61, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !251, line: 72, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !251, line: 16, baseType: !267)
!267 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !233, file: !133, line: 119, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !243, line: 84, size: 320, elements: !273)
!273 = !{!274, !275, !279, !604, !606}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !243, line: 85, baseType: !136, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !272, file: !243, line: 86, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!259, !140, !254, !46}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !272, file: !243, line: 88, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!259, !140, !283, !46}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !243, line: 175, size: 512, elements: !285)
!285 = !{!286, !287, !288, !289, !296, !306, !307}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !284, file: !243, line: 176, baseType: !255, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !284, file: !243, line: 177, baseType: !264, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !284, file: !243, line: 178, baseType: !111, size: 64, offset: 192)
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
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !118, line: 52, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !251, line: 88, baseType: !305)
!305 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !284, file: !243, line: 182, baseType: !297, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !284, file: !243, line: 184, baseType: !308, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!46, !300, !140, !283, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !295, line: 625, size: 1344, elements: !313)
!313 = !{!314, !331, !553, !559, !566, !567, !572, !575, !587, !588, !591, !595, !596, !597, !598, !599, !602}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !295, line: 628, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !295, line: 628, size: 128, elements: !316)
!316 = !{!317, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !295, line: 629, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !295, line: 629, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !318, file: !295, line: 631, baseType: !267, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !318, file: !295, line: 632, baseType: !267, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !315, file: !295, line: 635, baseType: !323, size: 128, align: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !118, line: 232, size: 128, align: 64, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !118, line: 233, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !323, file: !118, line: 234, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !326}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !312, file: !295, line: 639, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !295, line: 733, size: 10240, elements: !334)
!334 = !{!335, !549}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !295, line: 734, baseType: !336, size: 10240)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !295, line: 734, size: 10240, elements: !337)
!337 = !{!338, !342, !356, !360, !361, !362, !363, !364, !365, !373, !374, !375, !384, !385, !394, !395, !396, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !443, !457, !460, !515, !516, !517, !520, !523, !524, !527, !528, !529, !536, !537}
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
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !343, file: !344, line: 223, baseType: !7, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !343, file: !344, line: 224, baseType: !111, size: 64, offset: 64)
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
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !377, file: !295, line: 728, baseType: !46, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !336, file: !295, line: 801, baseType: !267, size: 64, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !336, file: !295, line: 804, baseType: !386, size: 64, offset: 1280)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !387, line: 13, baseType: !388)
!387 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !118, line: 181, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 179, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !389, file: !118, line: 180, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !176, line: 22, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !178, line: 30, baseType: !305)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !336, file: !295, line: 806, baseType: !46, size: 32, offset: 1344)
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
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !397, file: !398, line: 60, baseType: !117, size: 128, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !336, file: !295, line: 825, baseType: !117, size: 128, offset: 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !336, file: !295, line: 845, baseType: !46, size: 32, offset: 1856)
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
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !424, file: !423, line: 65, baseType: !7, size: 32)
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
!450 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !445, file: !446, line: 26, baseType: !117, size: 128, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !445, file: !446, line: 28, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !176, line: 20, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !178, line: 26, baseType: !46)
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
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !474, file: !475, line: 72, baseType: !117, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !463, file: !462, line: 60, baseType: !111, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !463, file: !462, line: 61, baseType: !483, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !486, line: 13, size: 1216, elements: !487)
!486 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !485, file: !486, line: 14, baseType: !111, size: 64)
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
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !295, line: 901, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !336, file: !295, line: 904, baseType: !300, size: 64, offset: 9280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !336, file: !295, line: 906, baseType: !525, size: 64, offset: 9344)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !295, line: 906, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !336, file: !295, line: 930, baseType: !167, size: 32, offset: 9408)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !336, file: !295, line: 933, baseType: !167, size: 32, offset: 9440)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !336, file: !295, line: 935, baseType: !530, size: 64, offset: 9472)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !531, line: 103, size: 64, elements: !532)
!531 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !530, file: !531, line: 104, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !531, line: 101, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !336, file: !295, line: 940, baseType: !386, size: 64, offset: 9536)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !336, file: !295, line: 942, baseType: !538, size: 256, offset: 9600)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !539, line: 98, size: 256, elements: !540)
!539 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !539, line: 99, baseType: !386, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !538, file: !539, line: 100, baseType: !117, size: 128, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !538, file: !539, line: 101, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !539, line: 21, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !333, file: !295, line: 986, baseType: !550, offset: 10240)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: -1)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !312, file: !295, line: 640, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !302, line: 297, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !302, line: 297, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !555, file: !302, line: 297, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !372, line: 19, baseType: !267)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !295, line: 646, baseType: !560, size: 64, offset: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !295, line: 646, size: 64, elements: !561)
!561 = !{!562, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !560, file: !295, line: 647, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !295, line: 542, baseType: !267)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !560, file: !295, line: 648, baseType: !564, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !312, file: !295, line: 666, baseType: !46, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !312, file: !295, line: 667, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !295, line: 579, size: 320, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !295, line: 580, baseType: !397, size: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !312, file: !295, line: 670, baseType: !573, size: 8, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !118, line: 35, baseType: !574)
!574 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !312, file: !295, line: 681, baseType: !576, size: 256, offset: 512)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !295, line: 678, size: 256, elements: !577)
!577 = !{!578, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !576, file: !295, line: 679, baseType: !579, size: 192, align: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !580, line: 5, size: 192, align: 64, elements: !581)
!580 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!581 = !{!582, !583, !585}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !579, file: !580, line: 6, baseType: !267, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !579, file: !580, line: 7, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !579, file: !580, line: 8, baseType: !584, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !576, file: !295, line: 680, baseType: !267, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !312, file: !295, line: 689, baseType: !117, size: 128, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !312, file: !295, line: 691, baseType: !589, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !295, line: 691, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !312, file: !295, line: 694, baseType: !592, size: 64, offset: 960)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !295, line: 694, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !312, file: !295, line: 697, baseType: !267, size: 64, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !312, file: !295, line: 699, baseType: !300, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !312, file: !295, line: 700, baseType: !111, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !312, file: !295, line: 711, baseType: !386, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !312, file: !295, line: 717, baseType: !600, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !295, line: 717, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !312, file: !295, line: 722, baseType: !603, offset: 1344)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !295, line: 570, elements: !353)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !272, file: !243, line: 90, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !272, file: !243, line: 91, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !233, file: !133, line: 120, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !200}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !615)
!615 = !{!616, !617, !621, !625, !631, !635}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !14, line: 40, baseType: !13, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !614, file: !14, line: 41, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!573}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !614, file: !14, line: 42, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!111}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !614, file: !14, line: 43, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!495, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !614, file: !14, line: 44, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!495}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !614, file: !14, line: 45, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !111}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !233, file: !133, line: 121, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!495, !200}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !233, file: !133, line: 122, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !200, !647, !655}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !649, line: 23, baseType: !650)
!649 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 21, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !649, line: 22, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !118, line: 37, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !251, line: 49, baseType: !7)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !649, line: 28, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 26, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !657, file: !649, line: 27, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !118, line: 38, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !251, line: 50, baseType: !7)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !132, file: !133, line: 70, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !665, line: 190, size: 1152, elements: !666)
!665 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !769, !770, !771, !772, !773, !776}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 191, baseType: !167, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !664, file: !665, line: 192, baseType: !167, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !664, file: !665, line: 202, baseType: !663, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !665, line: 203, baseType: !136, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !664, file: !665, line: 205, baseType: !579, size: 192, align: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !664, file: !665, line: 207, baseType: !495, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !664, file: !665, line: 208, baseType: !7, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 209, baseType: !675, size: 256, offset: 512)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 209, size: 256, elements: !676)
!676 = !{!677, !689, !693}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !675, file: !665, line: 210, baseType: !678, size: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !665, line: 153, size: 256, elements: !679)
!679 = !{!680, !681, !685, !688}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !678, file: !665, line: 154, baseType: !267, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !678, file: !665, line: 156, baseType: !682, size: 64, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !580, line: 12, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !682, file: !580, line: 13, baseType: !584, size: 64)
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
!704 = !{!46, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !665, line: 251, size: 1216, elements: !707)
!707 = !{!708, !709, !710, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !706, file: !665, line: 253, baseType: !663, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !706, file: !665, line: 254, baseType: !300, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !706, file: !665, line: 255, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !713, line: 66, flags: DIFlagFwdDecl)
!713 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!714 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !706, file: !665, line: 256, baseType: !111, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !706, file: !665, line: 259, baseType: !474, size: 256, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !706, file: !665, line: 260, baseType: !474, size: 256, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !706, file: !665, line: 261, baseType: !46, size: 32, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !706, file: !665, line: 262, baseType: !117, size: 128, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !706, file: !665, line: 263, baseType: !217, size: 64, offset: 960)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !706, file: !665, line: 265, baseType: !264, size: 64, offset: 1024)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !706, file: !665, line: 266, baseType: !573, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !706, file: !665, line: 267, baseType: !573, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !706, file: !665, line: 268, baseType: !592, size: 64, offset: 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !699, file: !665, line: 277, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !705}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !699, file: !665, line: 290, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!46, !711, !111}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !699, file: !665, line: 292, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!111, !711, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !699, file: !665, line: 293, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!111, !711, !111, !736}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !699, file: !665, line: 294, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !711, !111}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !699, file: !665, line: 296, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!249, !705, !217, !264, !303}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !699, file: !665, line: 306, baseType: !264, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !699, file: !665, line: 313, baseType: !573, size: 8, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !699, file: !665, line: 314, baseType: !746, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !699, file: !665, line: 317, baseType: !753, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!756, !705, !758}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !757, line: 59, baseType: !7)
!757 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !665, line: 31, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !699, file: !665, line: 320, baseType: !761, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!46, !705, !311}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !694, file: !665, line: 176, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !665, line: 35, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !694, file: !665, line: 177, baseType: !303, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !694, file: !665, line: 178, baseType: !663, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !664, file: !665, line: 215, baseType: !111, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !664, file: !665, line: 221, baseType: !380, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !665, line: 223, baseType: !187, size: 16, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !664, file: !665, line: 224, baseType: !259, size: 16, offset: 912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !664, file: !665, line: 225, baseType: !774, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !665, line: 36, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !664, file: !665, line: 227, baseType: !323, size: 128, align: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !132, file: !133, line: 71, baseType: !778, size: 32, offset: 448)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !779, line: 19, size: 32, elements: !780)
!779 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !778, file: !779, line: 20, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !783, line: 113, baseType: !784)
!783 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !783, line: 111, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !784, file: !783, line: 112, baseType: !167, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !132, file: !133, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !132, file: !133, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !132, file: !133, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !132, file: !133, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !132, file: !133, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !129, file: !6, line: 47, baseType: !112, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !129, file: !6, line: 48, baseType: !140, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !129, file: !6, line: 49, baseType: !795, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !129, file: !6, line: 50, baseType: !798, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !800, line: 26, size: 256, elements: !801)
!800 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !799, file: !800, line: 27, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !799, file: !800, line: 28, baseType: !804, size: 192, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !805, line: 43, size: 192, elements: !806)
!805 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !805, line: 44, baseType: !408, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !804, file: !805, line: 45, baseType: !117, size: 128, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !113, file: !6, line: 418, baseType: !810, size: 64, offset: 1408)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !812)
!812 = !{!813, !814, !819, !823, !827, !831}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !811, file: !6, line: 54, baseType: !255, size: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !811, file: !6, line: 55, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!249, !810, !818, !217}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !811, file: !6, line: 57, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!249, !810, !818, !136, !264}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !811, file: !6, line: 59, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !112, !136}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !811, file: !6, line: 60, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!46, !112}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !811, file: !6, line: 61, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !112}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !113, file: !6, line: 419, baseType: !136, size: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !113, file: !6, line: 420, baseType: !136, size: 64, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !113, file: !6, line: 421, baseType: !140, size: 64, offset: 1600)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !113, file: !6, line: 424, baseType: !839, size: 64, offset: 1664)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !113, file: !6, line: 425, baseType: !843, size: 64, offset: 1728)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !113, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !113, file: !6, line: 435, baseType: !474, size: 256, offset: 1856)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !113, file: !6, line: 437, baseType: !848, size: 64, offset: 2112)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !850, line: 69, size: 320, elements: !851)
!850 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!851 = !{!852, !853, !854, !871, !873, !877, !878}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !850, line: 70, baseType: !136, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !849, file: !850, line: 71, baseType: !112, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !849, file: !850, line: 72, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !850, line: 47, size: 256, elements: !858)
!858 = !{!859, !860, !866, !870}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !850, line: 49, baseType: !7, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !857, file: !850, line: 51, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!46, !136, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !857, file: !850, line: 53, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!46, !217, !864}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !857, file: !850, line: 55, baseType: !636, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !849, file: !850, line: 73, baseType: !872, size: 16, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !849, file: !850, line: 74, baseType: !874, size: 8, offset: 208)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !176, line: 16, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !178, line: 20, baseType: !876)
!876 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !850, line: 75, baseType: !175, size: 8, offset: 216)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !850, line: 76, baseType: !879, size: 64, offset: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !850, line: 76, size: 64, elements: !880)
!880 = !{!881, !882, !889}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !879, file: !850, line: 77, baseType: !111, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !879, file: !850, line: 78, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !850, line: 86, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !885, file: !850, line: 87, baseType: !7, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !885, file: !850, line: 88, baseType: !217, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !879, file: !850, line: 79, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !850, line: 92, size: 256, elements: !893)
!893 = !{!894, !895, !896, !898, !899}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !892, file: !850, line: 94, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !892, file: !850, line: 95, baseType: !7, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !892, file: !850, line: 96, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !892, file: !850, line: 97, baseType: !855, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !892, file: !850, line: 98, baseType: !111, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !113, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !113, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !113, file: !6, line: 442, baseType: !839, size: 64, offset: 2240)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !113, file: !6, line: 443, baseType: !843, size: 64, offset: 2304)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !113, file: !6, line: 444, baseType: !573, size: 8, offset: 2368)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !113, file: !6, line: 451, baseType: !573, size: 8, offset: 2376)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !113, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !113, file: !6, line: 455, baseType: !908, size: 64, offset: 2432)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !910, line: 23, size: 96, elements: !911)
!910 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !909, file: !910, line: 24, baseType: !46, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !909, file: !910, line: 24, baseType: !46, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !909, file: !910, line: 24, baseType: !46, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !113, file: !6, line: 458, baseType: !916, size: 64, offset: 2496)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!46}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !113, file: !6, line: 460, baseType: !920, size: 4032, align: 512, offset: 2560)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 4032, elements: !937)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !921, file: !6, line: 363, baseType: !111, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !921, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !921, file: !6, line: 367, baseType: !926, size: 448, offset: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !926, file: !6, line: 320, baseType: !112, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !926, file: !6, line: 321, baseType: !930, size: 384, offset: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !931, line: 40, size: 384, elements: !932)
!931 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !930, file: !931, line: 41, baseType: !934, size: 384, align: 64)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 384, align: 64, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 2)
!937 = !{!938}
!938 = !DISubrange(count: 7)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !113, file: !6, line: 463, baseType: !940, size: 192, offset: 6592)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !941, line: 8, size: 192, elements: !942)
!941 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!942 = !{!943, !944, !946}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !940, file: !941, line: 10, baseType: !7, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !940, file: !941, line: 11, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !940, file: !941, line: 12, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !949, line: 59, size: 48, elements: !950)
!949 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!950 = !{!951, !952, !953, !954, !955, !956}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !948, file: !949, line: 60, baseType: !512, size: 16)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !948, file: !949, line: 61, baseType: !512, size: 16, offset: 16)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !948, file: !949, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !948, file: !949, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !948, file: !949, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !948, file: !949, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !113, file: !6, line: 465, baseType: !267, size: 64, offset: 6784)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !113, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !113, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !113, file: !6, line: 471, baseType: !961, size: 64, offset: 7040)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !963, line: 33, size: 96, elements: !964)
!963 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!964 = !{!965, !966, !967, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !962, file: !963, line: 37, baseType: !46, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !962, file: !963, line: 43, baseType: !46, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !962, file: !963, line: 45, baseType: !187, size: 16, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !963, line: 47, baseType: !187, size: 16, offset: 80)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !113, file: !6, line: 476, baseType: !970, size: 64, offset: 7104)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !972)
!972 = !{!973, !990, !991, !992}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !971, file: !6, line: 379, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !976, line: 204, baseType: !977)
!976 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !976, line: 197, size: 192, elements: !978)
!978 = !{!979, !982, !983, !984, !986, !988}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !977, file: !976, line: 198, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !976, line: 21, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !178, line: 27, baseType: !7)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !977, file: !976, line: 199, baseType: !179, size: 8, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !977, file: !976, line: 200, baseType: !179, size: 8, offset: 40)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !977, file: !976, line: 201, baseType: !985, size: 16, offset: 48)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !976, line: 17, baseType: !186)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !977, file: !976, line: 202, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !976, line: 16, baseType: !381)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !977, file: !976, line: 203, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !976, line: 22, baseType: !381)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !971, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !971, file: !6, line: 381, baseType: !217, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !971, file: !6, line: 382, baseType: !217, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !113, file: !6, line: 477, baseType: !971, size: 256, offset: 7168)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !113, file: !6, line: 480, baseType: !995, size: 64, offset: 7424)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !113, file: !6, line: 483, baseType: !998, size: 64, offset: 7488)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !113, file: !6, line: 488, baseType: !217, size: 64, offset: 7552)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !113, file: !6, line: 492, baseType: !111, size: 64, offset: 7616)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !113, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !113, file: !6, line: 495, baseType: !111, size: 64, offset: 7744)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !113, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !113, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !113, file: !6, line: 500, baseType: !1007, size: 64, offset: 7872)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1009, line: 45, baseType: !1010)
!1009 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !113, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !113, file: !6, line: 504, baseType: !1013, size: 64, offset: 8000)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1016, line: 96, size: 192, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1017 = !{!1018, !1019, !1080, !1083}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1015, file: !1016, line: 97, baseType: !7, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1015, file: !1016, line: 98, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1016, line: 24, size: 3072, elements: !1022)
!1022 = !{!1023, !1025, !1026, !1027, !1028, !1042, !1043, !1044, !1045, !1064, !1065, !1066, !1077, !1078, !1079}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1021, file: !1016, line: 26, baseType: !1024, size: 128)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !935)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1021, file: !1016, line: 27, baseType: !1024, size: 128, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1021, file: !1016, line: 28, baseType: !46, size: 32, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !1016, line: 31, baseType: !147, size: 32, align: 512, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1021, file: !1016, line: 32, baseType: !1029, size: 960, offset: 576)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1030, line: 206, size: 960, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1031 = !{!1032, !1033, !1036, !1038, !1039, !1041}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1029, file: !1030, line: 207, baseType: !326, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1029, file: !1030, line: 208, baseType: !1034, size: 256, offset: 64)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !455)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1029, file: !1030, line: 209, baseType: !1037, size: 256, offset: 320)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !455)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1029, file: !1030, line: 213, baseType: !253, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1029, file: !1030, line: 215, baseType: !1040, size: 256, offset: 640)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !455)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1030, line: 216, baseType: !175, size: 8, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1021, file: !1016, line: 33, baseType: !267, size: 64, offset: 1536)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1021, file: !1016, line: 34, baseType: !267, size: 64, offset: 1600)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1021, file: !1016, line: 35, baseType: !573, size: 8, offset: 1664)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1021, file: !1016, line: 36, baseType: !1046, size: 320, offset: 1728)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1047, line: 11, size: 320, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1048 = !{!1049, !1056, !1057, !1062}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1046, file: !1047, line: 16, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !118, line: 198, size: 128, elements: !1051)
!1051 = !{!1052, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !118, line: 199, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1050, file: !118, line: 199, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1046, file: !1047, line: 17, baseType: !267, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1046, file: !1047, line: 18, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !1047, line: 19, baseType: !1063, size: 32, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !176, line: 21, baseType: !981)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1021, file: !1016, line: 37, baseType: !538, size: 256, offset: 2048)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1021, file: !1016, line: 38, baseType: !323, size: 128, align: 64, offset: 2304)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1021, file: !1016, line: 39, baseType: !1067, size: 64, offset: 2432)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1016, line: 49, size: 768, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1068, file: !1016, line: 50, baseType: !147, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1068, file: !1016, line: 51, baseType: !1037, size: 256, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1068, file: !1016, line: 53, baseType: !1037, size: 256, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1068, file: !1016, line: 54, baseType: !267, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1068, file: !1016, line: 55, baseType: !1067, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1068, file: !1016, line: 56, baseType: !46, size: 32, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1068, file: !1016, line: 57, baseType: !46, size: 32, offset: 736)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1021, file: !1016, line: 40, baseType: !267, size: 64, offset: 2496)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1021, file: !1016, line: 42, baseType: !46, size: 32, offset: 2560)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1021, file: !1016, line: 43, baseType: !1014, size: 64, offset: 2624)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1015, file: !1016, line: 99, baseType: !1081, offset: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1082, line: 211, elements: !353)
!1082 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1015, file: !1016, line: 100, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1016, line: 63, size: 3008, elements: !1086)
!1086 = !{!1087, !1088, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1118}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1085, file: !1016, line: 64, baseType: !1067, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1085, file: !1016, line: 65, baseType: !1089, size: 192, offset: 64)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 192, elements: !218)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1085, file: !1016, line: 67, baseType: !46, size: 32, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1085, file: !1016, line: 68, baseType: !474, size: 256, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1085, file: !1016, line: 69, baseType: !147, size: 32, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1085, file: !1016, line: 70, baseType: !474, size: 256, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1085, file: !1016, line: 71, baseType: !267, size: 64, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1085, file: !1016, line: 72, baseType: !267, size: 64, offset: 960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1085, file: !1016, line: 73, baseType: !267, size: 64, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1085, file: !1016, line: 74, baseType: !267, size: 64, offset: 1088)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1085, file: !1016, line: 75, baseType: !267, size: 64, offset: 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1085, file: !1016, line: 76, baseType: !267, size: 64, offset: 1216)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1085, file: !1016, line: 77, baseType: !267, size: 64, offset: 1280)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1085, file: !1016, line: 78, baseType: !267, size: 64, offset: 1344)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1085, file: !1016, line: 79, baseType: !573, size: 8, offset: 1408)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1085, file: !1016, line: 80, baseType: !267, size: 64, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1085, file: !1016, line: 81, baseType: !474, size: 256, offset: 1536)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1085, file: !1016, line: 82, baseType: !799, size: 256, offset: 1792)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1085, file: !1016, line: 84, baseType: !167, size: 32, offset: 2048)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1085, file: !1016, line: 87, baseType: !267, size: 64, offset: 2112)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1085, file: !1016, line: 88, baseType: !267, size: 64, offset: 2176)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1085, file: !1016, line: 89, baseType: !1110, size: 704, offset: 2240)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !539, line: 111, size: 704, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1117}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1110, file: !539, line: 112, baseType: !538, size: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1110, file: !539, line: 113, baseType: !1046, size: 320, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1110, file: !539, line: 116, baseType: !1115, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !539, line: 18, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1110, file: !539, line: 117, baseType: !46, size: 32, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1085, file: !1016, line: 90, baseType: !1014, size: 64, offset: 2944)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !113, file: !6, line: 515, baseType: !1120, size: 64, offset: 8064)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1122, line: 117, size: 128, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1121, file: !1122, line: 118, baseType: !453, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1121, file: !1122, line: 119, baseType: !453, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1121, file: !1122, line: 120, baseType: !253, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !113, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !113, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !113, file: !6, line: 520, baseType: !1130, size: 64, offset: 8192)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !113, file: !6, line: 523, baseType: !1132, size: 64, offset: 8256)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !113, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !113, file: !6, line: 525, baseType: !1137, size: 64, offset: 8384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !113, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !113, file: !6, line: 533, baseType: !111, size: 64, offset: 8512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !113, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !113, file: !6, line: 535, baseType: !1144, size: 64, offset: 8640)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !113, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !113, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !113, file: !6, line: 540, baseType: !1148, size: 64, offset: 8768)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1150, line: 32, size: 64, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1149, file: !1150, line: 33, baseType: !453, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1149, file: !1150, line: 34, baseType: !453, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !113, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !113, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !113, file: !6, line: 568, baseType: !1157, size: 64, offset: 9088)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !113, file: !6, line: 570, baseType: !167, size: 32, offset: 9152)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !118, line: 154, baseType: !7)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hrtimer", file: !3, line: 24, size: 640, elements: !1164)
!1164 = !{!1165, !1747, !1748}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1163, file: !3, line: 25, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer", file: !1168, line: 57, size: 3456, elements: !1169)
!1168 = !DIFile(filename: "./include/sound/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b2f56914e2e0d40353cf82d02171e82")
!1169 = !{!1170, !1171, !1697, !1698, !1699, !1700, !1702, !1703, !1704, !1705, !1706, !1707, !1711, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_class", scope: !1167, file: !1168, line: 58, baseType: !46, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1167, file: !1168, line: 59, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !1174, line: 80, size: 12288, elements: !1175)
!1174 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!1175 = !{!1176, !1177, !1181, !1182, !1186, !1190, !1191, !1192, !1196, !1197, !1198, !1202, !1203, !1633, !1634, !1635, !1656, !1657, !1658, !1659, !1660, !1667, !1668, !1669, !1672, !1675, !1676, !1679, !1680, !1681, !1682, !1683, !1684, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1173, file: !1174, line: 81, baseType: !46, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1173, file: !1174, line: 84, baseType: !1178, size: 128, offset: 32)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 16)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1173, file: !1174, line: 85, baseType: !1178, size: 128, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !1173, file: !1174, line: 86, baseType: !1183, size: 256, offset: 288)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !1173, file: !1174, line: 87, baseType: !1187, size: 640, offset: 544)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 80)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !1173, file: !1174, line: 88, baseType: !1183, size: 256, offset: 1184)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !1173, file: !1174, line: 89, baseType: !1187, size: 640, offset: 1440)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !1173, file: !1174, line: 90, baseType: !1193, size: 1024, offset: 2080)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1173, file: !1174, line: 92, baseType: !112, size: 64, offset: 3136)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1173, file: !1174, line: 94, baseType: !111, size: 64, offset: 3200)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !1173, file: !1174, line: 95, baseType: !1199, size: 64, offset: 3264)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1172}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1173, file: !1174, line: 97, baseType: !117, size: 128, offset: 3328)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !1173, file: !1174, line: 99, baseType: !1204, size: 64, offset: 3456)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1212, !1213, !1266, !1336, !1337, !1338, !1339, !1340, !1347, !1517, !1530, !1540, !1544, !1546, !1547, !1548, !1552, !1559, !1560, !1563, !1566, !1570, !1573, !1574, !1577, !1578, !1579, !1580, !1610, !1611, !1612, !1615, !1618, !1627, !1628, !1629, !1630, !1631, !1632}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1205, file: !26, line: 706, baseType: !132, size: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1205, file: !26, line: 707, baseType: !1204, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1205, file: !26, line: 709, baseType: !1210, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1205, file: !26, line: 711, baseType: !136, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1205, file: !26, line: 712, baseType: !1214, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1226, !1231, !1235}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1216, file: !26, line: 90, baseType: !136, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1216, file: !26, line: 91, baseType: !269, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1216, file: !26, line: 92, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!46, !1224, !212}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1216, file: !26, line: 93, baseType: !1227, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!217, !1224, !1230, !647, !655}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1216, file: !26, line: 95, baseType: !1232, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1204}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1216, file: !26, line: 97, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1239)
!1239 = !{!1240, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1238, file: !38, line: 287, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!46, !1204}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1238, file: !38, line: 288, baseType: !1232, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1238, file: !38, line: 289, baseType: !1241, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1238, file: !38, line: 290, baseType: !1241, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1238, file: !38, line: 291, baseType: !1241, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1238, file: !38, line: 292, baseType: !1241, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1238, file: !38, line: 293, baseType: !1241, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1238, file: !38, line: 294, baseType: !1241, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1238, file: !38, line: 295, baseType: !1241, size: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1238, file: !38, line: 296, baseType: !1241, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1238, file: !38, line: 297, baseType: !1241, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1238, file: !38, line: 298, baseType: !1241, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1238, file: !38, line: 299, baseType: !1241, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1238, file: !38, line: 300, baseType: !1241, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1238, file: !38, line: 301, baseType: !1241, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1238, file: !38, line: 302, baseType: !1241, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1238, file: !38, line: 303, baseType: !1241, size: 64, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1238, file: !38, line: 304, baseType: !1241, size: 64, offset: 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1238, file: !38, line: 305, baseType: !1241, size: 64, offset: 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1238, file: !38, line: 306, baseType: !1241, size: 64, offset: 1216)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1238, file: !38, line: 307, baseType: !1241, size: 64, offset: 1280)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1238, file: !38, line: 308, baseType: !1241, size: 64, offset: 1344)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1238, file: !38, line: 309, baseType: !1241, size: 64, offset: 1408)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1205, file: !26, line: 714, baseType: !1267, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1270, line: 80, size: 1344, elements: !1271)
!1270 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1335}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1269, file: !1270, line: 81, baseType: !136, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1269, file: !1270, line: 82, baseType: !136, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1269, file: !1270, line: 83, baseType: !269, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1269, file: !1270, line: 84, baseType: !269, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1269, file: !1270, line: 85, baseType: !269, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1269, file: !1270, line: 87, baseType: !1278, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!46, !1204, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1294, !1298, !1299, !1300, !1301, !1302, !1310, !1311, !1312, !1313, !1314, !1315}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1282, file: !20, line: 97, baseType: !136, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1282, file: !20, line: 98, baseType: !1267, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1282, file: !20, line: 100, baseType: !112, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1282, file: !20, line: 101, baseType: !136, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1282, file: !20, line: 103, baseType: !573, size: 8, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1282, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1282, file: !20, line: 106, baseType: !1291, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1282, file: !20, line: 107, baseType: !1295, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1282, file: !20, line: 109, baseType: !1241, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1282, file: !20, line: 110, baseType: !1232, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1282, file: !20, line: 111, baseType: !1241, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1282, file: !20, line: 112, baseType: !1232, size: 64, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1282, file: !20, line: 113, baseType: !1303, size: 64, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!46, !1204, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1307, file: !38, line: 59, baseType: !46, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1282, file: !20, line: 114, baseType: !1241, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1282, file: !20, line: 115, baseType: !269, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1282, file: !20, line: 116, baseType: !269, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1282, file: !20, line: 118, baseType: !1236, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1282, file: !20, line: 119, baseType: !1232, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1282, file: !20, line: 121, baseType: !1316, size: 64, offset: 1088)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1269, file: !1270, line: 88, baseType: !1221, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1269, file: !1270, line: 89, baseType: !1241, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1269, file: !1270, line: 90, baseType: !1232, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1269, file: !1270, line: 91, baseType: !1232, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1269, file: !1270, line: 92, baseType: !1232, size: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1269, file: !1270, line: 94, baseType: !1241, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1269, file: !1270, line: 95, baseType: !1241, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1269, file: !1270, line: 97, baseType: !1303, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1269, file: !1270, line: 98, baseType: !1241, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1269, file: !1270, line: 100, baseType: !1241, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1269, file: !1270, line: 102, baseType: !1241, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1269, file: !1270, line: 103, baseType: !1232, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1269, file: !1270, line: 105, baseType: !1236, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1269, file: !1270, line: 107, baseType: !1332, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1270, line: 107, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1269, file: !1270, line: 109, baseType: !573, size: 8, offset: 1280)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1205, file: !26, line: 715, baseType: !1281, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1205, file: !26, line: 717, baseType: !111, size: 64, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1205, file: !26, line: 719, baseType: !111, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1205, file: !26, line: 721, baseType: !474, size: 256, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1205, file: !26, line: 725, baseType: !1341, size: 448, offset: 1280)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1341, file: !26, line: 518, baseType: !117, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1341, file: !26, line: 519, baseType: !117, size: 128, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1341, file: !26, line: 520, baseType: !117, size: 128, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1341, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1205, file: !26, line: 726, baseType: !1348, size: 2496, offset: 1728)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1394, !1395, !1396, !1397, !1398, !1399, !1470, !1471, !1472, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1510, !1514}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1348, file: !38, line: 664, baseType: !1306, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1348, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1348, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1348, file: !38, line: 667, baseType: !573, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1348, file: !38, line: 668, baseType: !573, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1348, file: !38, line: 669, baseType: !573, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1348, file: !38, line: 670, baseType: !573, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1348, file: !38, line: 671, baseType: !573, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1348, file: !38, line: 672, baseType: !573, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1348, file: !38, line: 673, baseType: !573, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1348, file: !38, line: 674, baseType: !573, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1348, file: !38, line: 675, baseType: !1063, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !38, line: 676, baseType: !147, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1348, file: !38, line: 678, baseType: !117, size: 128, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1348, file: !38, line: 679, baseType: !799, size: 256, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1348, file: !38, line: 680, baseType: !1366, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1368, line: 43, size: 1536, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1377, !1378, !1379, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1367, file: !1368, line: 44, baseType: !136, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1367, file: !1368, line: 45, baseType: !46, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1367, file: !1368, line: 46, baseType: !117, size: 128, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1367, file: !1368, line: 47, baseType: !147, size: 32, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1367, file: !1368, line: 48, baseType: !1375, size: 64, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1367, file: !1368, line: 49, baseType: !1046, size: 320, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1367, file: !1368, line: 50, baseType: !267, size: 64, offset: 704)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1367, file: !1368, line: 51, baseType: !1380, size: 64, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1381, line: 29, baseType: !392)
!1381 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1367, file: !1368, line: 52, baseType: !1380, size: 64, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1367, file: !1368, line: 53, baseType: !1380, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1367, file: !1368, line: 54, baseType: !1380, size: 64, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1367, file: !1368, line: 55, baseType: !1380, size: 64, offset: 1024)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1367, file: !1368, line: 56, baseType: !267, size: 64, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1367, file: !1368, line: 57, baseType: !267, size: 64, offset: 1152)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1367, file: !1368, line: 58, baseType: !267, size: 64, offset: 1216)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1367, file: !1368, line: 59, baseType: !267, size: 64, offset: 1280)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1367, file: !1368, line: 60, baseType: !267, size: 64, offset: 1344)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1367, file: !1368, line: 61, baseType: !1204, size: 64, offset: 1408)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1367, file: !1368, line: 62, baseType: !573, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1367, file: !1368, line: 63, baseType: !573, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1348, file: !38, line: 681, baseType: !573, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1348, file: !38, line: 682, baseType: !573, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1348, file: !38, line: 683, baseType: !573, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1348, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1348, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1348, file: !38, line: 690, baseType: !1400, size: 512, offset: 640)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1401)
!1401 = !{!1402, !1408, !1409, !1414, !1466, !1467, !1468, !1469}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1400, file: !33, line: 119, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1404, line: 9, size: 256, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1403, file: !1404, line: 10, baseType: !579, size: 192, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1403, file: !1404, line: 11, baseType: !1380, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1400, file: !33, line: 120, baseType: !1380, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1400, file: !33, line: 121, baseType: !1410, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!32, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1400, file: !33, line: 122, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1417)
!1417 = !{!1418, !1443, !1444, !1447, !1452, !1453, !1461, !1465}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1416, file: !33, line: 160, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !33, line: 216, baseType: !408, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1420, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1420, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1420, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1420, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1420, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1420, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1420, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1420, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1420, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1420, file: !33, line: 227, baseType: !187, size: 16, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1420, file: !33, line: 228, baseType: !187, size: 16, offset: 208)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1420, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1420, file: !33, line: 235, baseType: !1380, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1420, file: !33, line: 236, baseType: !1413, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1420, file: !33, line: 237, baseType: !1380, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1420, file: !33, line: 238, baseType: !1413, size: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1420, file: !33, line: 239, baseType: !1440, size: 4096, align: 512, offset: 512)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 4096, align: 512, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 8)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1416, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1416, file: !33, line: 162, baseType: !1445, size: 32, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !118, line: 32, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !251, line: 96, baseType: !46)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1416, file: !33, line: 163, baseType: !1448, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !423, line: 274, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !423, line: 274, size: 32, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1449, file: !423, line: 274, baseType: !422, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1416, file: !33, line: 164, baseType: !1413, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1416, file: !33, line: 165, baseType: !1454, size: 128, offset: 256)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1404, line: 14, size: 128, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1454, file: !1404, line: 15, baseType: !1457, size: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !580, line: 26, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1457, file: !580, line: 27, baseType: !682, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1457, file: !580, line: 28, baseType: !584, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1416, file: !33, line: 166, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1380}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1416, file: !33, line: 167, baseType: !1380, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1400, file: !33, line: 123, baseType: !175, size: 8, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1400, file: !33, line: 124, baseType: !175, size: 8, offset: 456)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1400, file: !33, line: 125, baseType: !175, size: 8, offset: 464)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1400, file: !33, line: 126, baseType: !175, size: 8, offset: 472)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1348, file: !38, line: 691, baseType: !380, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1348, file: !38, line: 692, baseType: !538, size: 256, offset: 1216)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1348, file: !38, line: 693, baseType: !1473, size: 192, offset: 1472)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1474, line: 41, baseType: !1475)
!1474 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1474, line: 37, size: 192, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !1474, line: 38, baseType: !147, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1475, file: !1474, line: 39, baseType: !117, size: 128, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1348, file: !38, line: 694, baseType: !1375, size: 64, offset: 1664)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1348, file: !38, line: 695, baseType: !167, size: 32, offset: 1728)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1348, file: !38, line: 696, baseType: !167, size: 32, offset: 1760)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1348, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1348, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1348, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1348, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1348, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1348, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1348, file: !38, line: 703, baseType: !573, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1348, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1348, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1348, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1348, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1348, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1348, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1348, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1348, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1348, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1348, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1348, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1348, file: !38, line: 715, baseType: !380, size: 64, offset: 2048)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1348, file: !38, line: 716, baseType: !380, size: 64, offset: 2112)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1348, file: !38, line: 717, baseType: !380, size: 64, offset: 2176)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1348, file: !38, line: 718, baseType: !380, size: 64, offset: 2240)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1348, file: !38, line: 720, baseType: !1505, size: 64, offset: 2304)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !38, line: 633, baseType: !147, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1506, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1348, file: !38, line: 721, baseType: !1511, size: 64, offset: 2368)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1204, !453}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1348, file: !38, line: 722, baseType: !1515, size: 64, offset: 2432)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1205, file: !26, line: 727, baseType: !1518, size: 64, offset: 4224)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1527, !1528, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1519, file: !38, line: 743, baseType: !1238, size: 1472)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1519, file: !38, line: 744, baseType: !1241, size: 64, offset: 1472)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1519, file: !38, line: 745, baseType: !1524, size: 64, offset: 1536)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1204, !573}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1519, file: !38, line: 746, baseType: !1241, size: 64, offset: 1600)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1519, file: !38, line: 747, baseType: !1232, size: 64, offset: 1664)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1519, file: !38, line: 748, baseType: !1232, size: 64, offset: 1728)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1205, file: !26, line: 736, baseType: !1531, size: 128, offset: 4288)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1532)
!1532 = !{!1533, !1537}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1531, file: !26, line: 531, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1536, line: 13, flags: DIFlagFwdDecl)
!1536 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1531, file: !26, line: 532, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1205, file: !26, line: 738, baseType: !1541, size: 64, offset: 4416)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1205, file: !26, line: 740, baseType: !1545, size: 64, offset: 4480)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1205, file: !26, line: 741, baseType: !380, size: 64, offset: 4544)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1205, file: !26, line: 746, baseType: !380, size: 64, offset: 4608)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1205, file: !26, line: 747, baseType: !1549, size: 64, offset: 4672)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1205, file: !26, line: 749, baseType: !1553, size: 64, offset: 4736)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1554, file: !26, line: 433, baseType: !7, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1554, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1554, file: !26, line: 435, baseType: !267, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1205, file: !26, line: 751, baseType: !117, size: 128, offset: 4800)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1205, file: !26, line: 762, baseType: !1561, size: 64, offset: 4928)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1205, file: !26, line: 770, baseType: !1564, offset: 4992)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1565, line: 5, elements: !353)
!1565 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1205, file: !26, line: 772, baseType: !1567, size: 64, offset: 4992)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1569, line: 18, flags: DIFlagFwdDecl)
!1569 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1205, file: !26, line: 773, baseType: !1571, size: 64, offset: 5056)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1270, line: 22, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1205, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1205, file: !26, line: 778, baseType: !1575, size: 32, offset: 5152)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !118, line: 21, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !118, line: 18, baseType: !1063)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1205, file: !26, line: 779, baseType: !1063, size: 32, offset: 5184)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1205, file: !26, line: 781, baseType: !147, size: 32, offset: 5216)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1205, file: !26, line: 782, baseType: !117, size: 128, offset: 5248)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1205, file: !26, line: 784, baseType: !1581, size: 64, offset: 5376)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1584, line: 52, size: 768, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1594, !1598, !1599, !1600, !1601, !1605, !1609}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1583, file: !1584, line: 53, baseType: !136, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1583, file: !1584, line: 55, baseType: !269, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1583, file: !1584, line: 56, baseType: !269, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1583, file: !1584, line: 58, baseType: !1221, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1583, file: !1584, line: 59, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!217, !1224, !1230}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1583, file: !1584, line: 61, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1581}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1583, file: !1584, line: 62, baseType: !1232, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1583, file: !1584, line: 64, baseType: !1241, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1583, file: !1584, line: 66, baseType: !612, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1583, file: !1584, line: 67, baseType: !1602, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!495, !1224}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1583, file: !1584, line: 69, baseType: !1606, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1224, !647, !655}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1583, file: !1584, line: 71, baseType: !1236, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1205, file: !26, line: 785, baseType: !269, size: 64, offset: 5440)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1205, file: !26, line: 787, baseType: !1232, size: 64, offset: 5504)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1205, file: !26, line: 788, baseType: !1613, size: 64, offset: 5568)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1205, file: !26, line: 789, baseType: !1616, size: 64, offset: 5632)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1205, file: !26, line: 791, baseType: !1619, size: 64, offset: 5696)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1620, file: !26, line: 598, baseType: !53, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1620, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1620, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1620, file: !26, line: 601, baseType: !573, size: 8, offset: 96)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1620, file: !26, line: 602, baseType: !573, size: 8, offset: 104)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1205, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1205, file: !26, line: 795, baseType: !573, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1205, file: !26, line: 796, baseType: !573, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1205, file: !26, line: 797, baseType: !573, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1205, file: !26, line: 798, baseType: !573, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1205, file: !26, line: 799, baseType: !573, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !1173, file: !1174, line: 100, baseType: !7, size: 32, offset: 3520)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !1173, file: !1174, line: 101, baseType: !397, size: 320, offset: 3584)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !1173, file: !1174, line: 102, baseType: !1636, size: 64, offset: 3904)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1637, line: 34, baseType: !1638)
!1637 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1637, line: 25, size: 64, elements: !1639)
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1638, file: !1637, line: 26, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1642, line: 27, baseType: !1643)
!1642 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1642, line: 13, size: 64, elements: !1644)
!1644 = !{!1645, !1655}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1642, line: 14, baseType: !1646, size: 32)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1642, line: 14, size: 32, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1646, file: !1642, line: 15, baseType: !167, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1642, line: 16, baseType: !1650, size: 32)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1642, line: 16, size: 32, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1650, file: !1642, line: 18, baseType: !175, size: 8)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1650, file: !1642, line: 19, baseType: !1654, size: 24, offset: 8)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 24, elements: !218)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1643, file: !1642, line: 26, baseType: !159, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !1173, file: !1174, line: 103, baseType: !46, size: 32, offset: 3968)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !1173, file: !1174, line: 104, baseType: !264, size: 64, offset: 4032)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !1173, file: !1174, line: 105, baseType: !117, size: 128, offset: 4096)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !1173, file: !1174, line: 106, baseType: !117, size: 128, offset: 4224)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !1173, file: !1174, line: 108, baseType: !1661, size: 128, offset: 4352)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1662, line: 296, size: 128, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1661, file: !1662, line: 297, baseType: !147, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1661, file: !1662, line: 299, baseType: !1161, size: 32, offset: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1661, file: !1662, line: 300, baseType: !111, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !1173, file: !1174, line: 109, baseType: !1661, size: 128, offset: 4480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !1173, file: !1174, line: 110, baseType: !573, size: 8, offset: 4608)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !1173, file: !1174, line: 113, baseType: !1670, size: 64, offset: 4672)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !1174, line: 113, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !1173, file: !1174, line: 114, baseType: !1673, size: 64, offset: 4736)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1174, line: 114, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !1173, file: !1174, line: 116, baseType: !117, size: 128, offset: 4800)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !1173, file: !1174, line: 117, baseType: !1677, size: 64, offset: 4928)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !1174, line: 117, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1173, file: !1174, line: 119, baseType: !147, size: 32, offset: 4992)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1173, file: !1174, line: 120, baseType: !46, size: 32, offset: 5024)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !1173, file: !1174, line: 121, baseType: !798, size: 64, offset: 5056)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1173, file: !1174, line: 122, baseType: !1204, size: 64, offset: 5120)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !1173, file: !1174, line: 123, baseType: !1205, size: 5824, offset: 5184)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1173, file: !1174, line: 124, baseType: !1685, size: 256, offset: 11008)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !455)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1173, file: !1174, line: 125, baseType: !573, size: 8, offset: 11264)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !1173, file: !1174, line: 126, baseType: !573, size: 8, offset: 11272)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !1173, file: !1174, line: 127, baseType: !573, size: 8, offset: 11280)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !1173, file: !1174, line: 128, baseType: !46, size: 32, offset: 11296)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !1173, file: !1174, line: 129, baseType: !1473, size: 192, offset: 11328)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !1173, file: !1174, line: 131, baseType: !264, size: 64, offset: 11520)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !1173, file: !1174, line: 132, baseType: !474, size: 256, offset: 11584)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1173, file: !1174, line: 138, baseType: !7, size: 32, offset: 11840)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !1173, file: !1174, line: 139, baseType: !167, size: 32, offset: 11872)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !1173, file: !1174, line: 140, baseType: !1473, size: 192, offset: 11904)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !1173, file: !1174, line: 141, baseType: !1473, size: 192, offset: 12096)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1167, file: !1168, line: 60, baseType: !112, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_device", scope: !1167, file: !1168, line: 61, baseType: !46, size: 32, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_subdevice", scope: !1167, file: !1168, line: 62, baseType: !46, size: 32, offset: 224)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1167, file: !1168, line: 63, baseType: !1701, size: 512, offset: 256)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 512, elements: !222)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1167, file: !1168, line: 64, baseType: !1187, size: 640, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !1168, line: 65, baseType: !7, size: 32, offset: 1408)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1167, file: !1168, line: 66, baseType: !46, size: 32, offset: 1440)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sticks", scope: !1167, file: !1168, line: 67, baseType: !267, size: 64, offset: 1472)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1167, file: !1168, line: 68, baseType: !111, size: 64, offset: 1536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !1167, file: !1168, line: 69, baseType: !1708, size: 64, offset: 1600)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1166}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !1167, file: !1168, line: 70, baseType: !1712, size: 768, offset: 1664)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_hardware", file: !1168, line: 40, size: 768, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1723, !1724, !1728, !1729, !1730, !1734}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !1168, line: 42, baseType: !7, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !1712, file: !1168, line: 43, baseType: !267, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_min", scope: !1712, file: !1168, line: 44, baseType: !267, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_max", scope: !1712, file: !1168, line: 45, baseType: !267, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !1712, file: !1168, line: 46, baseType: !267, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1712, file: !1168, line: 48, baseType: !1720, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!46, !1166}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1712, file: !1168, line: 49, baseType: !1720, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "c_resolution", scope: !1712, file: !1168, line: 50, baseType: !1725, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!267, !1166}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1712, file: !1168, line: 51, baseType: !1720, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1712, file: !1168, line: 52, baseType: !1720, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "set_period", scope: !1712, file: !1168, line: 53, baseType: !1731, size: 64, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!46, !1166, !267, !267}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "precise_resolution", scope: !1712, file: !1168, line: 54, baseType: !1735, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!46, !1166, !1144, !1144}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1167, file: !1168, line: 71, baseType: !147, size: 32, offset: 2432)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !1167, file: !1168, line: 72, baseType: !117, size: 128, offset: 2496)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "open_list_head", scope: !1167, file: !1168, line: 73, baseType: !117, size: 128, offset: 2624)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "active_list_head", scope: !1167, file: !1168, line: 74, baseType: !117, size: 128, offset: 2752)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ack_list_head", scope: !1167, file: !1168, line: 75, baseType: !117, size: 128, offset: 2880)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sack_list_head", scope: !1167, file: !1168, line: 76, baseType: !117, size: 128, offset: 3008)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "task_work", scope: !1167, file: !1168, line: 77, baseType: !538, size: 256, offset: 3136)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "max_instances", scope: !1167, file: !1168, line: 78, baseType: !46, size: 32, offset: 3392)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "num_instances", scope: !1167, file: !1168, line: 79, baseType: !46, size: 32, offset: 3424)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "hrt", scope: !1163, file: !3, line: 26, baseType: !1400, size: 512, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "in_callback", scope: !1163, file: !3, line: 27, baseType: !573, size: 8, offset: 576)
!1749 = !{!0, !1750, !1755, !1760, !1765, !1770, !1772, !1776, !1778, !1781, !1786, !1788, !1791, !1796}
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description208", scope: !2, file: !3, line: 16, type: !1752, isLocal: true, isDefinition: true, align: 8)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 360, elements: !1753)
!1753 = !{!1754}
!1754 = !DISubrange(count: 45)
!1755 = !DIGlobalVariableExpression(var: !1756, expr: !DIExpression())
!1756 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file209", scope: !2, file: !3, line: 17, type: !1757, isLocal: true, isDefinition: true, align: 8)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 320, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 40)
!1760 = !DIGlobalVariableExpression(var: !1761, expr: !DIExpression())
!1761 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license210", scope: !2, file: !3, line: 17, type: !1762, isLocal: true, isDefinition: true, align: 8)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 24)
!1765 = !DIGlobalVariableExpression(var: !1766, expr: !DIExpression())
!1766 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias211", scope: !2, file: !3, line: 19, type: !1767, isLocal: true, isDefinition: true, align: 8)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 240, elements: !1768)
!1768 = !{!1769}
!1769 = !DISubrange(count: 30)
!1770 = !DIGlobalVariableExpression(var: !1771, expr: !DIExpression())
!1771 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6213", scope: !2, file: !3, line: 168, type: !111, isLocal: true, isDefinition: true)
!1772 = !DIGlobalVariableExpression(var: !1773, expr: !DIExpression())
!1773 = distinct !DIGlobalVariable(name: "__exitcall_snd_hrtimer_exit", scope: !2, file: !3, line: 169, type: !1774, isLocal: true, isDefinition: true)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1775, line: 120, baseType: !1157)
!1775 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1776 = !DIGlobalVariableExpression(var: !1777, expr: !DIExpression())
!1777 = distinct !DIGlobalVariable(name: "mytimer", scope: !2, file: !3, line: 128, type: !1166, isLocal: true, isDefinition: true)
!1778 = !DIGlobalVariableExpression(var: !1779, expr: !DIExpression())
!1779 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !1780, isLocal: true, isDefinition: true)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !1441)
!1781 = !DIGlobalVariableExpression(var: !1782, expr: !DIExpression())
!1782 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !1783, isLocal: true, isDefinition: true)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 72, elements: !1784)
!1784 = !{!1785}
!1785 = !DISubrange(count: 9)
!1786 = !DIGlobalVariableExpression(var: !1787, expr: !DIExpression())
!1787 = distinct !DIGlobalVariable(name: "resolution", scope: !2, file: !3, line: 22, type: !7, isLocal: true, isDefinition: true)
!1788 = !DIGlobalVariableExpression(var: !1789, expr: !DIExpression())
!1789 = distinct !DIGlobalVariable(name: "hrtimer_hw", scope: !2, file: !3, line: 116, type: !1790, isLocal: true, isDefinition: true)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1791 = !DIGlobalVariableExpression(var: !1792, expr: !DIExpression())
!1792 = distinct !DIGlobalVariable(scope: null, file: !101, line: 480, type: !1793, isLocal: true, isDefinition: true)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 168, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 21)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(scope: null, file: !1381, line: 154, type: !1798, isLocal: true, isDefinition: true)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 176, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 22)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 384, elements: !1802)
!1802 = !{!1803}
!1803 = !DISubrange(count: 48)
!1804 = !{i32 7, !"Dwarf Version", i32 5}
!1805 = !{i32 2, !"Debug Info Version", i32 3}
!1806 = !{i32 1, !"wchar_size", i32 2}
!1807 = !{i32 8, !"cf-protection-branch", i32 1}
!1808 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1809 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1810 = !{i32 1, !"Code Model", i32 2}
!1811 = !{i32 1, !"override-stack-alignment", i32 8}
!1812 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1813 = distinct !DISubprogram(name: "snd_hrtimer_exit", scope: !3, file: !3, line: 160, type: !1158, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1814 = !DILocation(line: 162, column: 6, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 162, column: 6)
!1816 = !DILocation(line: 162, column: 6, scope: !1813)
!1817 = !DILocation(line: 163, column: 25, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 162, column: 15)
!1819 = !DILocation(line: 163, column: 3, scope: !1818)
!1820 = !DILocation(line: 164, column: 11, scope: !1818)
!1821 = !DILocation(line: 165, column: 2, scope: !1818)
!1822 = !DILocation(line: 166, column: 1, scope: !1813)
!1823 = !DISubprogram(name: "snd_timer_global_free", scope: !1168, file: !1168, line: 118, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1824 = distinct !DISubprogram(name: "__initstub__kmod_snd_hrtimer__212_168_snd_hrtimer_init6", scope: !3, file: !3, line: 168, type: !917, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1825 = !DILocation(line: 168, column: 1, scope: !1824)
!1826 = distinct !DISubprogram(name: "snd_hrtimer_init", scope: !3, file: !3, line: 130, type: !917, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1828, !1829}
!1828 = !DILocalVariable(name: "timer", scope: !1826, file: !3, line: 132, type: !1166)
!1829 = !DILocalVariable(name: "err", scope: !1826, file: !3, line: 133, type: !46)
!1830 = !DILocation(line: 132, column: 2, scope: !1826)
!1831 = !DILocation(line: 132, column: 20, scope: !1826)
!1832 = !DILocation(line: 133, column: 2, scope: !1826)
!1833 = !DILocation(line: 133, column: 6, scope: !1826)
!1834 = !DILocation(line: 135, column: 15, scope: !1826)
!1835 = !DILocation(line: 135, column: 13, scope: !1826)
!1836 = !DILocation(line: 138, column: 8, scope: !1826)
!1837 = !DILocation(line: 138, column: 6, scope: !1826)
!1838 = !DILocation(line: 140, column: 6, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 140, column: 6)
!1840 = !DILocation(line: 140, column: 10, scope: !1839)
!1841 = !DILocation(line: 140, column: 6, scope: !1826)
!1842 = !DILocation(line: 141, column: 10, scope: !1839)
!1843 = !DILocation(line: 141, column: 3, scope: !1839)
!1844 = !DILocation(line: 143, column: 2, scope: !1826)
!1845 = !DILocation(line: 143, column: 9, scope: !1826)
!1846 = !DILocation(line: 143, column: 16, scope: !1826)
!1847 = !DILocation(line: 144, column: 9, scope: !1826)
!1848 = !DILocation(line: 144, column: 16, scope: !1826)
!1849 = !DILocation(line: 144, column: 2, scope: !1826)
!1850 = !DILocation(line: 145, column: 2, scope: !1826)
!1851 = !DILocation(line: 145, column: 9, scope: !1826)
!1852 = !DILocation(line: 145, column: 14, scope: !1826)
!1853 = !DILocation(line: 146, column: 25, scope: !1826)
!1854 = !DILocation(line: 146, column: 2, scope: !1826)
!1855 = !DILocation(line: 146, column: 9, scope: !1826)
!1856 = !DILocation(line: 146, column: 12, scope: !1826)
!1857 = !DILocation(line: 146, column: 23, scope: !1826)
!1858 = !DILocation(line: 147, column: 31, scope: !1826)
!1859 = !DILocation(line: 147, column: 29, scope: !1826)
!1860 = !DILocation(line: 147, column: 2, scope: !1826)
!1861 = !DILocation(line: 147, column: 9, scope: !1826)
!1862 = !DILocation(line: 147, column: 12, scope: !1826)
!1863 = !DILocation(line: 147, column: 18, scope: !1826)
!1864 = !DILocation(line: 148, column: 2, scope: !1826)
!1865 = !DILocation(line: 148, column: 9, scope: !1826)
!1866 = !DILocation(line: 148, column: 23, scope: !1826)
!1867 = !DILocation(line: 150, column: 34, scope: !1826)
!1868 = !DILocation(line: 150, column: 8, scope: !1826)
!1869 = !DILocation(line: 150, column: 6, scope: !1826)
!1870 = !DILocation(line: 151, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 151, column: 6)
!1872 = !DILocation(line: 151, column: 10, scope: !1871)
!1873 = !DILocation(line: 151, column: 6, scope: !1826)
!1874 = !DILocation(line: 152, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 151, column: 15)
!1876 = !DILocation(line: 152, column: 3, scope: !1875)
!1877 = !DILocation(line: 153, column: 10, scope: !1875)
!1878 = !DILocation(line: 153, column: 3, scope: !1875)
!1879 = !DILocation(line: 155, column: 12, scope: !1826)
!1880 = !DILocation(line: 155, column: 10, scope: !1826)
!1881 = !DILocation(line: 157, column: 2, scope: !1826)
!1882 = !DILocation(line: 158, column: 1, scope: !1826)
!1883 = !DISubprogram(name: "snd_timer_global_new", scope: !1168, file: !1168, line: 117, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!46, !217, !46, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1887 = !DISubprogram(name: "strcpy", scope: !1888, file: !1888, line: 63, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1888 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!217, !217, !136}
!1891 = !DISubprogram(name: "snd_timer_global_register", scope: !1168, file: !1168, line: 119, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1892 = distinct !DISubprogram(name: "snd_hrtimer_open", scope: !3, file: !3, line: 64, type: !1721, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1893)
!1893 = !{!1894, !1895}
!1894 = !DILocalVariable(name: "t", arg: 1, scope: !1892, file: !3, line: 64, type: !1166)
!1895 = !DILocalVariable(name: "stime", scope: !1892, file: !3, line: 66, type: !1162)
!1896 = !DILocation(line: 64, column: 47, scope: !1892)
!1897 = !DILocation(line: 66, column: 2, scope: !1892)
!1898 = !DILocation(line: 66, column: 22, scope: !1892)
!1899 = !DILocation(line: 68, column: 10, scope: !1892)
!1900 = !DILocation(line: 68, column: 8, scope: !1892)
!1901 = !DILocation(line: 69, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 69, column: 6)
!1903 = !DILocation(line: 69, column: 6, scope: !1892)
!1904 = !DILocation(line: 70, column: 3, scope: !1902)
!1905 = !DILocation(line: 71, column: 16, scope: !1892)
!1906 = !DILocation(line: 71, column: 23, scope: !1892)
!1907 = !DILocation(line: 71, column: 2, scope: !1892)
!1908 = !DILocation(line: 72, column: 17, scope: !1892)
!1909 = !DILocation(line: 72, column: 2, scope: !1892)
!1910 = !DILocation(line: 72, column: 9, scope: !1892)
!1911 = !DILocation(line: 72, column: 15, scope: !1892)
!1912 = !DILocation(line: 73, column: 2, scope: !1892)
!1913 = !DILocation(line: 73, column: 9, scope: !1892)
!1914 = !DILocation(line: 73, column: 13, scope: !1892)
!1915 = !DILocation(line: 73, column: 22, scope: !1892)
!1916 = !DILocation(line: 74, column: 20, scope: !1892)
!1917 = !DILocation(line: 74, column: 2, scope: !1892)
!1918 = !DILocation(line: 74, column: 5, scope: !1892)
!1919 = !DILocation(line: 74, column: 18, scope: !1892)
!1920 = !DILocation(line: 75, column: 2, scope: !1892)
!1921 = !DILocation(line: 76, column: 1, scope: !1892)
!1922 = distinct !DISubprogram(name: "snd_hrtimer_close", scope: !3, file: !3, line: 78, type: !1721, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1923)
!1923 = !{!1924, !1925}
!1924 = !DILocalVariable(name: "t", arg: 1, scope: !1922, file: !3, line: 78, type: !1166)
!1925 = !DILocalVariable(name: "stime", scope: !1922, file: !3, line: 80, type: !1162)
!1926 = !DILocation(line: 78, column: 48, scope: !1922)
!1927 = !DILocation(line: 80, column: 2, scope: !1922)
!1928 = !DILocation(line: 80, column: 22, scope: !1922)
!1929 = !DILocation(line: 80, column: 30, scope: !1922)
!1930 = !DILocation(line: 80, column: 33, scope: !1922)
!1931 = !DILocation(line: 82, column: 6, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 82, column: 6)
!1933 = !DILocation(line: 82, column: 6, scope: !1922)
!1934 = !DILocation(line: 83, column: 18, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 82, column: 13)
!1936 = !DILocation(line: 83, column: 21, scope: !1935)
!1937 = !DILocation(line: 83, column: 3, scope: !1935)
!1938 = !DILocation(line: 84, column: 3, scope: !1935)
!1939 = !DILocation(line: 84, column: 6, scope: !1935)
!1940 = !DILocation(line: 84, column: 14, scope: !1935)
!1941 = !DILocation(line: 85, column: 3, scope: !1935)
!1942 = !DILocation(line: 85, column: 10, scope: !1935)
!1943 = !DILocation(line: 85, column: 22, scope: !1935)
!1944 = !DILocation(line: 86, column: 20, scope: !1935)
!1945 = !DILocation(line: 86, column: 23, scope: !1935)
!1946 = !DILocation(line: 86, column: 3, scope: !1935)
!1947 = !DILocation(line: 88, column: 19, scope: !1935)
!1948 = !DILocation(line: 88, column: 26, scope: !1935)
!1949 = !DILocation(line: 88, column: 3, scope: !1935)
!1950 = !DILocation(line: 89, column: 9, scope: !1935)
!1951 = !DILocation(line: 89, column: 3, scope: !1935)
!1952 = !DILocation(line: 90, column: 3, scope: !1935)
!1953 = !DILocation(line: 90, column: 6, scope: !1935)
!1954 = !DILocation(line: 90, column: 19, scope: !1935)
!1955 = !DILocation(line: 91, column: 2, scope: !1935)
!1956 = !DILocation(line: 93, column: 1, scope: !1922)
!1957 = !DILocation(line: 92, column: 2, scope: !1922)
!1958 = distinct !DISubprogram(name: "snd_hrtimer_start", scope: !3, file: !3, line: 95, type: !1721, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1959)
!1959 = !{!1960, !1961}
!1960 = !DILocalVariable(name: "t", arg: 1, scope: !1958, file: !3, line: 95, type: !1166)
!1961 = !DILocalVariable(name: "stime", scope: !1958, file: !3, line: 97, type: !1162)
!1962 = !DILocation(line: 95, column: 48, scope: !1958)
!1963 = !DILocation(line: 97, column: 2, scope: !1958)
!1964 = !DILocation(line: 97, column: 22, scope: !1958)
!1965 = !DILocation(line: 97, column: 30, scope: !1958)
!1966 = !DILocation(line: 97, column: 33, scope: !1958)
!1967 = !DILocation(line: 99, column: 6, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 99, column: 6)
!1969 = !DILocation(line: 99, column: 13, scope: !1968)
!1970 = !{i8 0, i8 2}
!1971 = !DILocation(line: 99, column: 6, scope: !1958)
!1972 = !DILocation(line: 100, column: 3, scope: !1968)
!1973 = !DILocation(line: 101, column: 17, scope: !1958)
!1974 = !DILocation(line: 101, column: 24, scope: !1958)
!1975 = !DILocation(line: 101, column: 41, scope: !1958)
!1976 = !DILocation(line: 101, column: 44, scope: !1958)
!1977 = !DILocation(line: 101, column: 53, scope: !1958)
!1978 = !DILocation(line: 101, column: 51, scope: !1958)
!1979 = !DILocation(line: 101, column: 29, scope: !1958)
!1980 = !DILocation(line: 101, column: 2, scope: !1958)
!1981 = !DILocation(line: 103, column: 2, scope: !1958)
!1982 = !DILocation(line: 104, column: 1, scope: !1958)
!1983 = distinct !DISubprogram(name: "snd_hrtimer_stop", scope: !3, file: !3, line: 106, type: !1721, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!1984 = !{!1985, !1986}
!1985 = !DILocalVariable(name: "t", arg: 1, scope: !1983, file: !3, line: 106, type: !1166)
!1986 = !DILocalVariable(name: "stime", scope: !1983, file: !3, line: 108, type: !1162)
!1987 = !DILocation(line: 106, column: 47, scope: !1983)
!1988 = !DILocation(line: 108, column: 2, scope: !1983)
!1989 = !DILocation(line: 108, column: 22, scope: !1983)
!1990 = !DILocation(line: 108, column: 30, scope: !1983)
!1991 = !DILocation(line: 108, column: 33, scope: !1983)
!1992 = !DILocation(line: 110, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 110, column: 6)
!1994 = !DILocation(line: 110, column: 13, scope: !1993)
!1995 = !DILocation(line: 110, column: 6, scope: !1983)
!1996 = !DILocation(line: 111, column: 3, scope: !1993)
!1997 = !DILocation(line: 112, column: 25, scope: !1983)
!1998 = !DILocation(line: 112, column: 32, scope: !1983)
!1999 = !DILocation(line: 112, column: 2, scope: !1983)
!2000 = !DILocation(line: 113, column: 2, scope: !1983)
!2001 = !DILocation(line: 114, column: 1, scope: !1983)
!2002 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 719, type: !2003, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!111, !264, !1161}
!2005 = !{!2006, !2007}
!2006 = !DILocalVariable(name: "size", arg: 1, scope: !2002, file: !101, line: 719, type: !264)
!2007 = !DILocalVariable(name: "flags", arg: 2, scope: !2002, file: !101, line: 719, type: !1161)
!2008 = !DILocation(line: 719, column: 52, scope: !2002)
!2009 = !DILocation(line: 719, column: 64, scope: !2002)
!2010 = !DILocation(line: 721, column: 17, scope: !2002)
!2011 = !DILocation(line: 721, column: 23, scope: !2002)
!2012 = !DILocation(line: 721, column: 29, scope: !2002)
!2013 = !DILocation(line: 721, column: 9, scope: !2002)
!2014 = !DILocation(line: 721, column: 2, scope: !2002)
!2015 = !DISubprogram(name: "hrtimer_init", scope: !33, file: !33, line: 374, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1413, !1445, !78}
!2018 = distinct !DISubprogram(name: "snd_hrtimer_callback", scope: !3, file: !3, line: 30, type: !1411, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2019 = !{!2020, !2021, !2022, !2024, !2025, !2026, !2027, !2028}
!2020 = !DILocalVariable(name: "hrt", arg: 1, scope: !2018, file: !3, line: 30, type: !1413)
!2021 = !DILocalVariable(name: "stime", scope: !2018, file: !3, line: 32, type: !1162)
!2022 = !DILocalVariable(name: "__mptr", scope: !2023, file: !3, line: 32, type: !111)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 32, column: 30)
!2024 = !DILocalVariable(name: "t", scope: !2018, file: !3, line: 33, type: !1166)
!2025 = !DILocalVariable(name: "delta", scope: !2018, file: !3, line: 34, type: !1380)
!2026 = !DILocalVariable(name: "ticks", scope: !2018, file: !3, line: 35, type: !267)
!2027 = !DILocalVariable(name: "ret", scope: !2018, file: !3, line: 36, type: !32)
!2028 = !DILabel(scope: !2018, name: "out", file: !3, line: 59)
!2029 = !DILocation(line: 30, column: 66, scope: !2018)
!2030 = !DILocation(line: 32, column: 2, scope: !2018)
!2031 = !DILocation(line: 32, column: 22, scope: !2018)
!2032 = !DILocation(line: 32, column: 30, scope: !2023)
!2033 = !DILocation(line: 32, column: 30, scope: !2018)
!2034 = !DILocation(line: 33, column: 2, scope: !2018)
!2035 = !DILocation(line: 33, column: 20, scope: !2018)
!2036 = !DILocation(line: 33, column: 24, scope: !2018)
!2037 = !DILocation(line: 33, column: 31, scope: !2018)
!2038 = !DILocation(line: 34, column: 2, scope: !2018)
!2039 = !DILocation(line: 34, column: 10, scope: !2018)
!2040 = !DILocation(line: 35, column: 2, scope: !2018)
!2041 = !DILocation(line: 35, column: 16, scope: !2018)
!2042 = !DILocation(line: 36, column: 2, scope: !2018)
!2043 = !DILocation(line: 36, column: 23, scope: !2018)
!2044 = !DILocation(line: 38, column: 13, scope: !2018)
!2045 = !DILocation(line: 38, column: 16, scope: !2018)
!2046 = !DILocation(line: 38, column: 2, scope: !2018)
!2047 = !DILocation(line: 39, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 39, column: 6)
!2049 = !DILocation(line: 39, column: 10, scope: !2048)
!2050 = !DILocation(line: 39, column: 6, scope: !2018)
!2051 = !DILocation(line: 40, column: 3, scope: !2048)
!2052 = !DILocation(line: 41, column: 2, scope: !2018)
!2053 = !DILocation(line: 41, column: 9, scope: !2018)
!2054 = !DILocation(line: 41, column: 21, scope: !2018)
!2055 = !DILocation(line: 42, column: 10, scope: !2018)
!2056 = !DILocation(line: 42, column: 13, scope: !2018)
!2057 = !DILocation(line: 42, column: 8, scope: !2018)
!2058 = !DILocation(line: 43, column: 15, scope: !2018)
!2059 = !DILocation(line: 43, column: 18, scope: !2018)
!2060 = !DILocation(line: 43, column: 2, scope: !2018)
!2061 = !DILocation(line: 46, column: 10, scope: !2018)
!2062 = !DILocation(line: 46, column: 8, scope: !2018)
!2063 = !DILocation(line: 47, column: 6, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 47, column: 6)
!2065 = !DILocation(line: 47, column: 12, scope: !2064)
!2066 = !DILocation(line: 47, column: 6, scope: !2018)
!2067 = !DILocation(line: 48, column: 24, scope: !2064)
!2068 = !DILocation(line: 48, column: 31, scope: !2064)
!2069 = !DILocation(line: 48, column: 39, scope: !2064)
!2070 = !DILocation(line: 48, column: 37, scope: !2064)
!2071 = !DILocation(line: 48, column: 12, scope: !2064)
!2072 = !DILocation(line: 48, column: 9, scope: !2064)
!2073 = !DILocation(line: 48, column: 3, scope: !2064)
!2074 = !DILocation(line: 50, column: 22, scope: !2018)
!2075 = !DILocation(line: 50, column: 29, scope: !2018)
!2076 = !DILocation(line: 50, column: 36, scope: !2018)
!2077 = !DILocation(line: 50, column: 2, scope: !2018)
!2078 = !DILocation(line: 52, column: 13, scope: !2018)
!2079 = !DILocation(line: 52, column: 16, scope: !2018)
!2080 = !DILocation(line: 52, column: 2, scope: !2018)
!2081 = !DILocation(line: 53, column: 6, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 53, column: 6)
!2083 = !DILocation(line: 53, column: 9, scope: !2082)
!2084 = !DILocation(line: 53, column: 6, scope: !2018)
!2085 = !DILocation(line: 54, column: 26, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 53, column: 18)
!2087 = !DILocation(line: 54, column: 31, scope: !2086)
!2088 = !DILocation(line: 54, column: 34, scope: !2086)
!2089 = !DILocation(line: 54, column: 43, scope: !2086)
!2090 = !DILocation(line: 54, column: 41, scope: !2086)
!2091 = !DILocation(line: 54, column: 3, scope: !2086)
!2092 = !DILocation(line: 55, column: 7, scope: !2086)
!2093 = !DILocation(line: 56, column: 2, scope: !2086)
!2094 = !DILocation(line: 58, column: 2, scope: !2018)
!2095 = !DILocation(line: 58, column: 9, scope: !2018)
!2096 = !DILocation(line: 58, column: 21, scope: !2018)
!2097 = !DILocation(line: 59, column: 2, scope: !2018)
!2098 = !DILocation(line: 60, column: 15, scope: !2018)
!2099 = !DILocation(line: 60, column: 18, scope: !2018)
!2100 = !DILocation(line: 60, column: 2, scope: !2018)
!2101 = !DILocation(line: 61, column: 9, scope: !2018)
!2102 = !DILocation(line: 62, column: 1, scope: !2018)
!2103 = !DILocation(line: 61, column: 2, scope: !2018)
!2104 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 591, type: !2003, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "size", arg: 1, scope: !2104, file: !101, line: 591, type: !264)
!2107 = !DILocalVariable(name: "flags", arg: 2, scope: !2104, file: !101, line: 591, type: !1161)
!2108 = !DILocalVariable(name: "index", scope: !2109, file: !101, line: 594, type: !7)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !101, line: 593, column: 42)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !101, line: 593, column: 6)
!2111 = !DILocation(line: 591, column: 61, scope: !2104)
!2112 = !DILocation(line: 591, column: 73, scope: !2104)
!2113 = !DILocation(line: 593, column: 27, scope: !2110)
!2114 = !DILocation(line: 593, column: 6, scope: !2110)
!2115 = !DILocation(line: 593, column: 33, scope: !2110)
!2116 = !DILocation(line: 593, column: 36, scope: !2110)
!2117 = !DILocation(line: 593, column: 6, scope: !2104)
!2118 = !DILocation(line: 594, column: 3, scope: !2109)
!2119 = !DILocation(line: 594, column: 16, scope: !2109)
!2120 = !DILocation(line: 596, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2109, file: !101, line: 596, column: 7)
!2122 = !DILocation(line: 596, column: 12, scope: !2121)
!2123 = !DILocation(line: 596, column: 7, scope: !2109)
!2124 = !DILocation(line: 597, column: 25, scope: !2121)
!2125 = !DILocation(line: 597, column: 31, scope: !2121)
!2126 = !DILocation(line: 597, column: 11, scope: !2121)
!2127 = !DILocation(line: 597, column: 4, scope: !2121)
!2128 = !DILocation(line: 599, column: 11, scope: !2109)
!2129 = !DILocation(line: 599, column: 9, scope: !2109)
!2130 = !DILocation(line: 601, column: 33, scope: !2109)
!2131 = !DILocation(line: 601, column: 40, scope: !2109)
!2132 = !DILocation(line: 601, column: 20, scope: !2109)
!2133 = !DILocation(line: 601, column: 5, scope: !2109)
!2134 = !DILocation(line: 601, column: 51, scope: !2109)
!2135 = !DILocation(line: 602, column: 5, scope: !2109)
!2136 = !DILocation(line: 602, column: 12, scope: !2109)
!2137 = !DILocation(line: 600, column: 10, scope: !2109)
!2138 = !DILocation(line: 600, column: 3, scope: !2109)
!2139 = !DILocation(line: 603, column: 2, scope: !2110)
!2140 = !DILocation(line: 604, column: 19, scope: !2104)
!2141 = !DILocation(line: 604, column: 25, scope: !2104)
!2142 = !DILocation(line: 604, column: 9, scope: !2104)
!2143 = !DILocation(line: 604, column: 2, scope: !2104)
!2144 = !DILocation(line: 605, column: 1, scope: !2104)
!2145 = !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 531, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = distinct !DISubprogram(name: "__kmalloc_index", scope: !101, file: !101, line: 444, type: !2147, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!7, !264, !573}
!2149 = !{!2150, !2151}
!2150 = !DILocalVariable(name: "size", arg: 1, scope: !2146, file: !101, line: 444, type: !264)
!2151 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2146, file: !101, line: 445, type: !573)
!2152 = !DILocation(line: 444, column: 60, scope: !2146)
!2153 = !DILocation(line: 445, column: 16, scope: !2146)
!2154 = !DILocation(line: 447, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 447, column: 6)
!2156 = !DILocation(line: 447, column: 6, scope: !2146)
!2157 = !DILocation(line: 448, column: 3, scope: !2155)
!2158 = !DILocation(line: 450, column: 6, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 450, column: 6)
!2160 = !DILocation(line: 450, column: 11, scope: !2159)
!2161 = !DILocation(line: 450, column: 6, scope: !2146)
!2162 = !DILocation(line: 451, column: 3, scope: !2159)
!2163 = !DILocation(line: 453, column: 32, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 453, column: 6)
!2165 = !DILocation(line: 453, column: 37, scope: !2164)
!2166 = !DILocation(line: 453, column: 42, scope: !2164)
!2167 = !DILocation(line: 453, column: 45, scope: !2164)
!2168 = !DILocation(line: 453, column: 50, scope: !2164)
!2169 = !DILocation(line: 453, column: 6, scope: !2146)
!2170 = !DILocation(line: 454, column: 3, scope: !2164)
!2171 = !DILocation(line: 455, column: 32, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 455, column: 6)
!2173 = !DILocation(line: 455, column: 37, scope: !2172)
!2174 = !DILocation(line: 455, column: 43, scope: !2172)
!2175 = !DILocation(line: 455, column: 46, scope: !2172)
!2176 = !DILocation(line: 455, column: 51, scope: !2172)
!2177 = !DILocation(line: 455, column: 6, scope: !2146)
!2178 = !DILocation(line: 456, column: 3, scope: !2172)
!2179 = !DILocation(line: 457, column: 6, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 457, column: 6)
!2181 = !DILocation(line: 457, column: 11, scope: !2180)
!2182 = !DILocation(line: 457, column: 6, scope: !2146)
!2183 = !DILocation(line: 457, column: 26, scope: !2180)
!2184 = !DILocation(line: 458, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 458, column: 6)
!2186 = !DILocation(line: 458, column: 11, scope: !2185)
!2187 = !DILocation(line: 458, column: 6, scope: !2146)
!2188 = !DILocation(line: 458, column: 26, scope: !2185)
!2189 = !DILocation(line: 459, column: 6, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 459, column: 6)
!2191 = !DILocation(line: 459, column: 11, scope: !2190)
!2192 = !DILocation(line: 459, column: 6, scope: !2146)
!2193 = !DILocation(line: 459, column: 26, scope: !2190)
!2194 = !DILocation(line: 460, column: 6, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 460, column: 6)
!2196 = !DILocation(line: 460, column: 11, scope: !2195)
!2197 = !DILocation(line: 460, column: 6, scope: !2146)
!2198 = !DILocation(line: 460, column: 26, scope: !2195)
!2199 = !DILocation(line: 461, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 461, column: 6)
!2201 = !DILocation(line: 461, column: 11, scope: !2200)
!2202 = !DILocation(line: 461, column: 6, scope: !2146)
!2203 = !DILocation(line: 461, column: 26, scope: !2200)
!2204 = !DILocation(line: 462, column: 6, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 462, column: 6)
!2206 = !DILocation(line: 462, column: 11, scope: !2205)
!2207 = !DILocation(line: 462, column: 6, scope: !2146)
!2208 = !DILocation(line: 462, column: 26, scope: !2205)
!2209 = !DILocation(line: 463, column: 6, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 463, column: 6)
!2211 = !DILocation(line: 463, column: 11, scope: !2210)
!2212 = !DILocation(line: 463, column: 6, scope: !2146)
!2213 = !DILocation(line: 463, column: 26, scope: !2210)
!2214 = !DILocation(line: 464, column: 6, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 464, column: 6)
!2216 = !DILocation(line: 464, column: 11, scope: !2215)
!2217 = !DILocation(line: 464, column: 6, scope: !2146)
!2218 = !DILocation(line: 464, column: 26, scope: !2215)
!2219 = !DILocation(line: 465, column: 6, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 465, column: 6)
!2221 = !DILocation(line: 465, column: 11, scope: !2220)
!2222 = !DILocation(line: 465, column: 6, scope: !2146)
!2223 = !DILocation(line: 465, column: 26, scope: !2220)
!2224 = !DILocation(line: 466, column: 6, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 466, column: 6)
!2226 = !DILocation(line: 466, column: 11, scope: !2225)
!2227 = !DILocation(line: 466, column: 6, scope: !2146)
!2228 = !DILocation(line: 466, column: 26, scope: !2225)
!2229 = !DILocation(line: 467, column: 6, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 467, column: 6)
!2231 = !DILocation(line: 467, column: 11, scope: !2230)
!2232 = !DILocation(line: 467, column: 6, scope: !2146)
!2233 = !DILocation(line: 467, column: 26, scope: !2230)
!2234 = !DILocation(line: 468, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 468, column: 6)
!2236 = !DILocation(line: 468, column: 11, scope: !2235)
!2237 = !DILocation(line: 468, column: 6, scope: !2146)
!2238 = !DILocation(line: 468, column: 26, scope: !2235)
!2239 = !DILocation(line: 469, column: 6, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 469, column: 6)
!2241 = !DILocation(line: 469, column: 11, scope: !2240)
!2242 = !DILocation(line: 469, column: 6, scope: !2146)
!2243 = !DILocation(line: 469, column: 26, scope: !2240)
!2244 = !DILocation(line: 470, column: 6, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 470, column: 6)
!2246 = !DILocation(line: 470, column: 11, scope: !2245)
!2247 = !DILocation(line: 470, column: 6, scope: !2146)
!2248 = !DILocation(line: 470, column: 26, scope: !2245)
!2249 = !DILocation(line: 471, column: 6, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 471, column: 6)
!2251 = !DILocation(line: 471, column: 11, scope: !2250)
!2252 = !DILocation(line: 471, column: 6, scope: !2146)
!2253 = !DILocation(line: 471, column: 26, scope: !2250)
!2254 = !DILocation(line: 472, column: 6, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 472, column: 6)
!2256 = !DILocation(line: 472, column: 11, scope: !2255)
!2257 = !DILocation(line: 472, column: 6, scope: !2146)
!2258 = !DILocation(line: 472, column: 26, scope: !2255)
!2259 = !DILocation(line: 473, column: 6, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 473, column: 6)
!2261 = !DILocation(line: 473, column: 11, scope: !2260)
!2262 = !DILocation(line: 473, column: 6, scope: !2146)
!2263 = !DILocation(line: 473, column: 26, scope: !2260)
!2264 = !DILocation(line: 474, column: 6, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 474, column: 6)
!2266 = !DILocation(line: 474, column: 11, scope: !2265)
!2267 = !DILocation(line: 474, column: 6, scope: !2146)
!2268 = !DILocation(line: 474, column: 27, scope: !2265)
!2269 = !DILocation(line: 475, column: 6, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 475, column: 6)
!2271 = !DILocation(line: 475, column: 11, scope: !2270)
!2272 = !DILocation(line: 475, column: 6, scope: !2146)
!2273 = !DILocation(line: 475, column: 32, scope: !2270)
!2274 = !DILocation(line: 477, column: 50, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2146, file: !101, line: 477, column: 6)
!2276 = !DILocation(line: 477, column: 6, scope: !2146)
!2277 = !DILocation(line: 478, column: 3, scope: !2275)
!2278 = !DILocation(line: 478, column: 3, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !101, line: 478, column: 3)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !101, line: 478, column: 3)
!2281 = !{i32 -2143559517}
!2282 = !DILocation(line: 478, column: 3, scope: !2280)
!2283 = !DILocation(line: 480, column: 3, scope: !2275)
!2284 = !DILocation(line: 480, column: 3, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !101, line: 480, column: 3)
!2286 = !DILocation(line: 480, column: 3, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2285, file: !101, line: 480, column: 3)
!2288 = !DILocation(line: 480, column: 3, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !101, line: 480, column: 3)
!2290 = !{i64 2151407982, i64 2151408011, i64 2151408057, i64 2151408115, i64 2151408169, i64 2151408223, i64 2151408278, i64 2151408309}
!2291 = !DILocation(line: 483, column: 2, scope: !2146)
!2292 = !DILocation(line: 484, column: 1, scope: !2146)
!2293 = !DISubprogram(name: "kmalloc_trace", scope: !101, file: !101, line: 525, type: !2294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!111, !2296, !1161, !264}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2298, line: 11, flags: DIFlagFwdDecl)
!2298 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2299 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 401, type: !2300, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!100, !1161, !267}
!2302 = !{!2303, !2304}
!2303 = !DILocalVariable(name: "flags", arg: 1, scope: !2299, file: !101, line: 401, type: !1161)
!2304 = !DILocalVariable(name: "caller", arg: 2, scope: !2299, file: !101, line: 401, type: !267)
!2305 = !DILocation(line: 401, column: 67, scope: !2299)
!2306 = !DILocation(line: 401, column: 88, scope: !2299)
!2307 = !DILocation(line: 407, column: 6, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2299, file: !101, line: 407, column: 6)
!2309 = !DILocation(line: 407, column: 6, scope: !2299)
!2310 = !DILocation(line: 413, column: 3, scope: !2308)
!2311 = !DILocation(line: 423, column: 38, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2299, file: !101, line: 423, column: 6)
!2313 = !DILocation(line: 423, column: 44, scope: !2312)
!2314 = !DILocation(line: 423, column: 6, scope: !2299)
!2315 = !DILocation(line: 424, column: 3, scope: !2312)
!2316 = !DILocation(line: 426, column: 3, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2299, file: !101, line: 425, column: 6)
!2318 = !DILocation(line: 429, column: 1, scope: !2299)
!2319 = !DISubprogram(name: "__kmalloc", scope: !101, file: !101, line: 488, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2320 = !DISubprogram(name: "__compiletime_assert_117", scope: !101, file: !101, line: 478, type: !1158, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2321 = distinct !DISubprogram(name: "spin_lock", scope: !2322, file: !2322, line: 349, type: !2323, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2322 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2326 = !{!2327}
!2327 = !DILocalVariable(name: "lock", arg: 1, scope: !2321, file: !2322, line: 349, type: !2325)
!2328 = !DILocation(line: 349, column: 51, scope: !2321)
!2329 = !DILocation(line: 351, column: 2, scope: !2321)
!2330 = !DILocation(line: 352, column: 1, scope: !2321)
!2331 = distinct !DISubprogram(name: "spin_unlock", scope: !2322, file: !2322, line: 389, type: !2323, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2332)
!2332 = !{!2333}
!2333 = !DILocalVariable(name: "lock", arg: 1, scope: !2331, file: !2322, line: 389, type: !2325)
!2334 = !DILocation(line: 389, column: 53, scope: !2331)
!2335 = !DILocation(line: 391, column: 2, scope: !2331)
!2336 = !DILocation(line: 392, column: 1, scope: !2331)
!2337 = distinct !DISubprogram(name: "hrtimer_get_expires", scope: !33, file: !33, line: 278, type: !2338, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!1380, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!2342 = !{!2343}
!2343 = !DILocalVariable(name: "timer", arg: 1, scope: !2337, file: !33, line: 278, type: !2340)
!2344 = !DILocation(line: 278, column: 65, scope: !2337)
!2345 = !DILocation(line: 280, column: 9, scope: !2337)
!2346 = !DILocation(line: 280, column: 16, scope: !2337)
!2347 = !DILocation(line: 280, column: 21, scope: !2337)
!2348 = !DILocation(line: 280, column: 2, scope: !2337)
!2349 = distinct !DISubprogram(name: "ktime_divns", scope: !1381, file: !1381, line: 148, type: !2350, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!392, !2352, !392}
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!2353 = !{!2354, !2355, !2356, !2358}
!2354 = !DILocalVariable(name: "kt", arg: 1, scope: !2349, file: !1381, line: 148, type: !2352)
!2355 = !DILocalVariable(name: "div", arg: 2, scope: !2349, file: !1381, line: 148, type: !392)
!2356 = !DILocalVariable(name: "__ret_warn_on", scope: !2357, file: !1381, line: 154, type: !46)
!2357 = distinct !DILexicalBlock(scope: !2349, file: !1381, line: 154, column: 2)
!2358 = !DILocalVariable(name: "__flags", scope: !2359, file: !1381, line: 154, type: !46)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !1381, line: 154, column: 2)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !1381, line: 154, column: 2)
!2361 = !DILocation(line: 148, column: 45, scope: !2349)
!2362 = !DILocation(line: 148, column: 53, scope: !2349)
!2363 = !DILocation(line: 154, column: 2, scope: !2357)
!2364 = !DILocation(line: 154, column: 2, scope: !2360)
!2365 = !DILocation(line: 154, column: 2, scope: !2359)
!2366 = !DILocation(line: 154, column: 2, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2359, file: !1381, line: 154, column: 2)
!2368 = !DILocation(line: 154, column: 2, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2359, file: !1381, line: 154, column: 2)
!2370 = !{i64 2150557818, i64 2150557847, i64 2150557893, i64 2150557951, i64 2150558005, i64 2150558059, i64 2150558114, i64 2150558145, i64 2150558453, i64 2150558459, i64 2150558506, i64 2150558529, i64 2150558555}
!2371 = !DILocation(line: 154, column: 2, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2359, file: !1381, line: 154, column: 2)
!2373 = !DILocation(line: 154, column: 2, scope: !2349)
!2374 = !DILocation(line: 155, column: 9, scope: !2349)
!2375 = !DILocation(line: 155, column: 14, scope: !2349)
!2376 = !DILocation(line: 155, column: 12, scope: !2349)
!2377 = !DILocation(line: 155, column: 2, scope: !2349)
!2378 = !DISubprogram(name: "snd_timer_interrupt", scope: !1168, file: !1168, line: 131, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !1166, !267}
!2381 = distinct !DISubprogram(name: "hrtimer_add_expires_ns", scope: !33, file: !33, line: 272, type: !2382, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !1413, !380}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "timer", arg: 1, scope: !2381, file: !33, line: 272, type: !1413)
!2386 = !DILocalVariable(name: "ns", arg: 2, scope: !2381, file: !33, line: 272, type: !380)
!2387 = !DILocation(line: 272, column: 59, scope: !2381)
!2388 = !DILocation(line: 272, column: 70, scope: !2381)
!2389 = !DILocation(line: 274, column: 24, scope: !2381)
!2390 = !DILocation(line: 274, column: 2, scope: !2381)
!2391 = !DILocation(line: 274, column: 9, scope: !2381)
!2392 = !DILocation(line: 274, column: 14, scope: !2381)
!2393 = !DILocation(line: 274, column: 22, scope: !2381)
!2394 = !DILocation(line: 275, column: 24, scope: !2381)
!2395 = !DILocation(line: 275, column: 2, scope: !2381)
!2396 = !DILocation(line: 275, column: 9, scope: !2381)
!2397 = !DILocation(line: 275, column: 22, scope: !2381)
!2398 = !DILocation(line: 276, column: 1, scope: !2381)
!2399 = !DISubprogram(name: "_raw_spin_lock", scope: !2400, file: !2400, line: 22, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2400 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2404 = !DISubprogram(name: "_raw_spin_unlock", scope: !2400, file: !2400, line: 39, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2405 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2322, file: !2322, line: 374, type: !2323, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2406 = !{!2407}
!2407 = !DILocalVariable(name: "lock", arg: 1, scope: !2405, file: !2322, line: 374, type: !2325)
!2408 = !DILocation(line: 374, column: 55, scope: !2405)
!2409 = !DILocation(line: 376, column: 2, scope: !2405)
!2410 = !DILocation(line: 377, column: 1, scope: !2405)
!2411 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2322, file: !2322, line: 399, type: !2323, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2412 = !{!2413}
!2413 = !DILocalVariable(name: "lock", arg: 1, scope: !2411, file: !2322, line: 399, type: !2325)
!2414 = !DILocation(line: 399, column: 57, scope: !2411)
!2415 = !DILocation(line: 401, column: 2, scope: !2411)
!2416 = !DILocation(line: 402, column: 1, scope: !2411)
!2417 = !DISubprogram(name: "hrtimer_cancel", scope: !33, file: !33, line: 423, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!46, !1413}
!2420 = !DISubprogram(name: "kfree", scope: !101, file: !101, line: 227, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !495}
!2423 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2400, file: !2400, line: 29, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2424 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2400, file: !2400, line: 41, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2425 = distinct !DISubprogram(name: "hrtimer_start", scope: !33, file: !33, line: 417, type: !2426, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !1413, !1380, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "timer", arg: 1, scope: !2425, file: !33, line: 417, type: !1413)
!2431 = !DILocalVariable(name: "tim", arg: 2, scope: !2425, file: !33, line: 417, type: !1380)
!2432 = !DILocalVariable(name: "mode", arg: 3, scope: !2425, file: !33, line: 418, type: !2428)
!2433 = !DILocation(line: 417, column: 50, scope: !2425)
!2434 = !DILocation(line: 417, column: 65, scope: !2425)
!2435 = !DILocation(line: 418, column: 30, scope: !2425)
!2436 = !DILocation(line: 420, column: 25, scope: !2425)
!2437 = !DILocation(line: 420, column: 32, scope: !2425)
!2438 = !DILocation(line: 420, column: 40, scope: !2425)
!2439 = !DILocation(line: 420, column: 2, scope: !2425)
!2440 = !DILocation(line: 421, column: 1, scope: !2425)
!2441 = distinct !DISubprogram(name: "ns_to_ktime", scope: !1381, file: !1381, line: 222, type: !2442, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!1380, !380}
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "ns", arg: 1, scope: !2441, file: !1381, line: 222, type: !380)
!2446 = !DILocation(line: 222, column: 39, scope: !2441)
!2447 = !DILocation(line: 224, column: 9, scope: !2441)
!2448 = !DILocation(line: 224, column: 2, scope: !2441)
!2449 = !DISubprogram(name: "hrtimer_start_range_ns", scope: !33, file: !33, line: 406, type: !2450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !1413, !1380, !380, !2428}
!2452 = !DISubprogram(name: "hrtimer_try_to_cancel", scope: !33, file: !33, line: 424, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
