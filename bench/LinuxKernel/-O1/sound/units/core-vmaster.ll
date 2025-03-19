; ModuleID = 'sound/core/vmaster.c'
source_filename = "sound/core/vmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__snd_ctl_add_follower: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _snd_ctl_add_follower ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_ctl_add_followers: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_ctl_add_followers ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_ctl_make_virtual_master: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_ctl_make_virtual_master ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_ctl_add_vmaster_hook: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_ctl_add_vmaster_hook ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_ctl_sync_vmaster: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_ctl_sync_vmaster ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_ctl_apply_vmaster_followers: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_ctl_apply_vmaster_followers ; .previous"

%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.7, i64, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.7 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.link_follower = type { %struct.list_head, ptr, %struct.link_ctl_info, [2 x i32], i32, ptr, %struct.snd_kcontrol }
%struct.link_ctl_info = type { i32, i32, i32, i32 }
%struct.link_master = type { %struct.list_head, %struct.link_ctl_info, i32, [4 x i32], ptr, ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon, [128 x i8] }
%union.anon = type { %union.anon.0 }
%union.anon.0 = type { [128 x i64] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.8, i64 }
%union.anon.8 = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.9, [64 x i8] }
%union.anon.9 = type { %struct.anon.12, [40 x i8] }
%struct.anon.12 = type { i32, i32, [64 x i8], i64, i32 }
%struct.anon.10 = type { i64, i64, i64 }

@__UNIQUE_ID___addressable__snd_ctl_add_follower211 = internal global ptr @_snd_ctl_add_follower, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_ctl_add_followers212 = internal global ptr @snd_ctl_add_followers, section ".discard.addressable", align 8, !dbg !1881
@__UNIQUE_ID___addressable_snd_ctl_make_virtual_master213 = internal global ptr @snd_ctl_make_virtual_master, section ".discard.addressable", align 8, !dbg !1883
@__UNIQUE_ID___addressable_snd_ctl_add_vmaster_hook214 = internal global ptr @snd_ctl_add_vmaster_hook, section ".discard.addressable", align 8, !dbg !1885
@__UNIQUE_ID___addressable_snd_ctl_sync_vmaster215 = internal global ptr @snd_ctl_sync_vmaster, section ".discard.addressable", align 8, !dbg !1887
@__UNIQUE_ID___addressable_snd_ctl_apply_vmaster_followers216 = internal global ptr @snd_ctl_apply_vmaster_followers, section ".discard.addressable", align 8, !dbg !1889
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1891
@.str.1 = private unnamed_addr constant [43 x i8] c"\013ALSA: vmaster: invalid follower element\0A\00", align 1, !dbg !1896
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable__snd_ctl_add_follower211, ptr @__UNIQUE_ID___addressable_snd_ctl_add_followers212, ptr @__UNIQUE_ID___addressable_snd_ctl_make_virtual_master213, ptr @__UNIQUE_ID___addressable_snd_ctl_add_vmaster_hook214, ptr @__UNIQUE_ID___addressable_snd_ctl_sync_vmaster215, ptr @__UNIQUE_ID___addressable_snd_ctl_apply_vmaster_followers216], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_snd_ctl_add_follower(ptr noundef %master, ptr noundef %follower, i32 noundef %flags) #0 align 16 !dbg !1910 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca ptr, align 8
  %follower.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %master_link = alloca ptr, align 8
  %srec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !1914, metadata !DIExpression()), !dbg !1919
  store ptr %follower, ptr %follower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %follower.addr, metadata !1915, metadata !DIExpression()), !dbg !1920
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1916, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.start.p0(i64 8, ptr %master_link) #16, !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %master_link, metadata !1917, metadata !DIExpression()), !dbg !1923
  %0 = load ptr, ptr %master.addr, align 8, !dbg !1924
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !1924
  %1 = load ptr, ptr %private_data, align 8, !dbg !1924
  store ptr %1, ptr %master_link, align 8, !dbg !1923
  call void @llvm.lifetime.start.p0(i64 8, ptr %srec) #16, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %srec, metadata !1918, metadata !DIExpression()), !dbg !1926
  %2 = load ptr, ptr %follower.addr, align 8, !dbg !1927
  %count = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 2, !dbg !1927
  %3 = load i32, ptr %count, align 8, !dbg !1927
  %conv = zext i32 %3 to i64, !dbg !1927
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 16) #17, !dbg !1927
  %call1 = call i64 @size_add(i64 noundef 208, i64 noundef %call) #17, !dbg !1927
  %call2 = call noalias ptr @kzalloc(i64 noundef %call1, i32 noundef 3264) #18, !dbg !1928
  store ptr %call2, ptr %srec, align 8, !dbg !1929
  %4 = load ptr, ptr %srec, align 8, !dbg !1930
  %tobool = icmp ne ptr %4, null, !dbg !1930
  br i1 %tobool, label %if.end, label %if.then, !dbg !1932

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1933

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %follower.addr, align 8, !dbg !1934
  %6 = load ptr, ptr %srec, align 8, !dbg !1935
  %kctl = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 5, !dbg !1936
  store ptr %5, ptr %kctl, align 8, !dbg !1937
  %7 = load ptr, ptr %srec, align 8, !dbg !1938
  %follower3 = getelementptr inbounds %struct.link_follower, ptr %7, i32 0, i32 6, !dbg !1939
  %8 = load ptr, ptr %follower.addr, align 8, !dbg !1940
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %follower3, ptr align 8 %8, i64 144, i1 false), !dbg !1941
  %9 = load ptr, ptr %srec, align 8, !dbg !1942
  %follower4 = getelementptr inbounds %struct.link_follower, ptr %9, i32 0, i32 6, !dbg !1943
  %vd = getelementptr inbounds %struct.snd_kcontrol, ptr %follower4, i32 0, i32 10, !dbg !1944
  %arraydecay = getelementptr inbounds [0 x %struct.snd_kcontrol_volatile], ptr %vd, i64 0, i64 0, !dbg !1945
  %10 = load ptr, ptr %follower.addr, align 8, !dbg !1946
  %vd5 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 10, !dbg !1947
  %arraydecay6 = getelementptr inbounds [0 x %struct.snd_kcontrol_volatile], ptr %vd5, i64 0, i64 0, !dbg !1945
  %11 = load ptr, ptr %follower.addr, align 8, !dbg !1948
  %count7 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 2, !dbg !1949
  %12 = load i32, ptr %count7, align 8, !dbg !1949
  %conv8 = zext i32 %12 to i64, !dbg !1948
  %mul = mul i64 %conv8, 16, !dbg !1950
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay6, i64 %mul, i1 false), !dbg !1945
  %13 = load ptr, ptr %master_link, align 8, !dbg !1951
  %14 = load ptr, ptr %srec, align 8, !dbg !1952
  %master9 = getelementptr inbounds %struct.link_follower, ptr %14, i32 0, i32 1, !dbg !1953
  store ptr %13, ptr %master9, align 8, !dbg !1954
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1955
  %16 = load ptr, ptr %srec, align 8, !dbg !1956
  %flags10 = getelementptr inbounds %struct.link_follower, ptr %16, i32 0, i32 4, !dbg !1957
  store i32 %15, ptr %flags10, align 8, !dbg !1958
  %17 = load ptr, ptr %follower.addr, align 8, !dbg !1959
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %17, i32 0, i32 3, !dbg !1960
  store ptr @follower_info, ptr %info, align 8, !dbg !1961
  %18 = load ptr, ptr %follower.addr, align 8, !dbg !1962
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %18, i32 0, i32 4, !dbg !1963
  store ptr @follower_get, ptr %get, align 8, !dbg !1964
  %19 = load ptr, ptr %follower.addr, align 8, !dbg !1965
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 5, !dbg !1966
  store ptr @follower_put, ptr %put, align 8, !dbg !1967
  %20 = load ptr, ptr %follower.addr, align 8, !dbg !1968
  %vd11 = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 10, !dbg !1970
  %arrayidx = getelementptr [0 x %struct.snd_kcontrol_volatile], ptr %vd11, i64 0, i64 0, !dbg !1968
  %access = getelementptr inbounds %struct.snd_kcontrol_volatile, ptr %arrayidx, i32 0, i32 1, !dbg !1971
  %21 = load i32, ptr %access, align 8, !dbg !1971
  %and = and i32 %21, 268435456, !dbg !1972
  %tobool12 = icmp ne i32 %and, 0, !dbg !1972
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1973

if.then13:                                        ; preds = %if.end
  %22 = load ptr, ptr %follower.addr, align 8, !dbg !1974
  %tlv = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 6, !dbg !1975
  store ptr @follower_tlv_cmd, ptr %tlv, align 8, !dbg !1976
  br label %if.end14, !dbg !1974

if.end14:                                         ; preds = %if.then13, %if.end
  %23 = load ptr, ptr %srec, align 8, !dbg !1977
  %24 = load ptr, ptr %follower.addr, align 8, !dbg !1978
  %private_data15 = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 0, i32 8, !dbg !1979
  store ptr %23, ptr %private_data15, align 8, !dbg !1980
  %25 = load ptr, ptr %follower.addr, align 8, !dbg !1981
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %25, i32 0, i32 9, !dbg !1982
  store ptr @follower_free, ptr %private_free, align 8, !dbg !1983
  %26 = load ptr, ptr %srec, align 8, !dbg !1984
  %list = getelementptr inbounds %struct.link_follower, ptr %26, i32 0, i32 0, !dbg !1985
  %27 = load ptr, ptr %master_link, align 8, !dbg !1986
  %followers = getelementptr inbounds %struct.link_master, ptr %27, i32 0, i32 0, !dbg !1987
  call void @list_add_tail(ptr noundef %list, ptr noundef %followers) #17, !dbg !1988
  store i32 0, ptr %retval, align 4, !dbg !1989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1989

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %srec) #16, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 8, ptr %master_link) #16, !dbg !1990
  %28 = load i32, ptr %retval, align 4, !dbg !1990
  ret i32 %28, !dbg !1990
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !1991 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1995, metadata !DIExpression()), !dbg !1997
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1996, metadata !DIExpression()), !dbg !1998
  %0 = load i64, ptr %size.addr, align 8, !dbg !1999
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2000
  %or = or i32 %1, 256, !dbg !2001
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !2002
  ret ptr %call, !dbg !2003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !2004 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !2009, metadata !DIExpression()), !dbg !2012
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !2010, metadata !DIExpression()), !dbg !2013
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2011, metadata !DIExpression()), !dbg !2015
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !2016
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !2016
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !2016
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2016
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2016
  store i64 %4, ptr %bytes, align 8, !dbg !2016
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !2016
  br i1 %call, label %if.then, label %if.end, !dbg !2018

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2019

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !2020
  store i64 %5, ptr %retval, align 8, !dbg !2021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2021

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !2022
  %6 = load i64, ptr %retval, align 8, !dbg !2022
  ret i64 %6, !dbg !2022
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !2023 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !2025, metadata !DIExpression()), !dbg !2028
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2027, metadata !DIExpression()), !dbg !2031
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !2032
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !2032
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2032
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2032
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2032
  store i64 %4, ptr %bytes, align 8, !dbg !2032
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !2032
  br i1 %call, label %if.then, label %if.end, !dbg !2034

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2035

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !2036
  store i64 %5, ptr %retval, align 8, !dbg !2037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2037

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !2038
  %6 = load i64, ptr %retval, align 8, !dbg !2038
  ret i64 %6, !dbg !2038
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_info(ptr noundef %kcontrol, ptr noundef %uinfo) #0 align 16 !dbg !2039 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %uinfo.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2041, metadata !DIExpression()), !dbg !2044
  store ptr %uinfo, ptr %uinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uinfo.addr, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2043, metadata !DIExpression()), !dbg !2047
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2048
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2048
  %1 = load ptr, ptr %private_data, align 8, !dbg !2048
  store ptr %1, ptr %follower, align 8, !dbg !2047
  %2 = load ptr, ptr %follower, align 8, !dbg !2049
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %2, i32 0, i32 6, !dbg !2050
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %follower1, i32 0, i32 3, !dbg !2051
  %3 = load ptr, ptr %info, align 8, !dbg !2051
  %4 = load ptr, ptr %follower, align 8, !dbg !2052
  %follower2 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 6, !dbg !2053
  %5 = load ptr, ptr %uinfo.addr, align 8, !dbg !2054
  %call = call i32 %3(ptr noundef %follower2, ptr noundef %5) #17, !dbg !2049
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2055
  ret i32 %call, !dbg !2056
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 16 !dbg !2057 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %ucontrol.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2059, metadata !DIExpression()), !dbg !2062
  store ptr %ucontrol, ptr %ucontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucontrol.addr, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2064
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2061, metadata !DIExpression()), !dbg !2065
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2066
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2066
  %1 = load ptr, ptr %private_data, align 8, !dbg !2066
  store ptr %1, ptr %follower, align 8, !dbg !2065
  %2 = load ptr, ptr %follower, align 8, !dbg !2067
  %3 = load ptr, ptr %ucontrol.addr, align 8, !dbg !2068
  %call = call i32 @follower_get_val(ptr noundef %2, ptr noundef %3) #17, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2070
  ret i32 %call, !dbg !2071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 16 !dbg !2072 {
entry:
  %retval = alloca i32, align 4
  %kcontrol.addr = alloca ptr, align 8
  %ucontrol.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  %err = alloca i32, align 4
  %ch = alloca i32, align 4
  %changed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2074, metadata !DIExpression()), !dbg !2080
  store ptr %ucontrol, ptr %ucontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucontrol.addr, metadata !2075, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2076, metadata !DIExpression()), !dbg !2083
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2084
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2084
  %1 = load ptr, ptr %private_data, align 8, !dbg !2084
  store ptr %1, ptr %follower, align 8, !dbg !2083
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2077, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #16, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !2078, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.start.p0(i64 4, ptr %changed) #16, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !2079, metadata !DIExpression()), !dbg !2088
  store i32 0, ptr %changed, align 4, !dbg !2088
  %2 = load ptr, ptr %follower, align 8, !dbg !2089
  %call = call i32 @follower_init(ptr noundef %2) #17, !dbg !2090
  store i32 %call, ptr %err, align 4, !dbg !2091
  %3 = load i32, ptr %err, align 4, !dbg !2092
  %cmp = icmp slt i32 %3, 0, !dbg !2094
  br i1 %cmp, label %if.then, label %if.end, !dbg !2095

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !2096
  store i32 %4, ptr %retval, align 4, !dbg !2097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2097

if.end:                                           ; preds = %entry
  store i32 0, ptr %ch, align 4, !dbg !2098
  br label %for.cond, !dbg !2100

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %ch, align 4, !dbg !2101
  %6 = load ptr, ptr %follower, align 8, !dbg !2103
  %info = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 2, !dbg !2104
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 1, !dbg !2105
  %7 = load i32, ptr %count, align 4, !dbg !2105
  %cmp1 = icmp slt i32 %5, %7, !dbg !2106
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2107

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %follower, align 8, !dbg !2108
  %vals = getelementptr inbounds %struct.link_follower, ptr %8, i32 0, i32 3, !dbg !2111
  %9 = load i32, ptr %ch, align 4, !dbg !2112
  %idxprom = sext i32 %9 to i64, !dbg !2108
  %arrayidx = getelementptr [2 x i32], ptr %vals, i64 0, i64 %idxprom, !dbg !2108
  %10 = load i32, ptr %arrayidx, align 4, !dbg !2108
  %conv = sext i32 %10 to i64, !dbg !2108
  %11 = load ptr, ptr %ucontrol.addr, align 8, !dbg !2113
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %11, i32 0, i32 2, !dbg !2114
  %12 = load i32, ptr %ch, align 4, !dbg !2115
  %idxprom2 = sext i32 %12 to i64, !dbg !2113
  %arrayidx3 = getelementptr [128 x i64], ptr %value, i64 0, i64 %idxprom2, !dbg !2113
  %13 = load i64, ptr %arrayidx3, align 8, !dbg !2113
  %cmp4 = icmp ne i64 %conv, %13, !dbg !2116
  br i1 %cmp4, label %if.then6, label %if.end14, !dbg !2117

if.then6:                                         ; preds = %for.body
  store i32 1, ptr %changed, align 4, !dbg !2118
  %14 = load ptr, ptr %ucontrol.addr, align 8, !dbg !2120
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %14, i32 0, i32 2, !dbg !2121
  %15 = load i32, ptr %ch, align 4, !dbg !2122
  %idxprom8 = sext i32 %15 to i64, !dbg !2120
  %arrayidx9 = getelementptr [128 x i64], ptr %value7, i64 0, i64 %idxprom8, !dbg !2120
  %16 = load i64, ptr %arrayidx9, align 8, !dbg !2120
  %conv10 = trunc i64 %16 to i32, !dbg !2120
  %17 = load ptr, ptr %follower, align 8, !dbg !2123
  %vals11 = getelementptr inbounds %struct.link_follower, ptr %17, i32 0, i32 3, !dbg !2124
  %18 = load i32, ptr %ch, align 4, !dbg !2125
  %idxprom12 = sext i32 %18 to i64, !dbg !2123
  %arrayidx13 = getelementptr [2 x i32], ptr %vals11, i64 0, i64 %idxprom12, !dbg !2123
  store i32 %conv10, ptr %arrayidx13, align 4, !dbg !2126
  br label %if.end14, !dbg !2127

if.end14:                                         ; preds = %if.then6, %for.body
  br label %for.inc, !dbg !2128

for.inc:                                          ; preds = %if.end14
  %19 = load i32, ptr %ch, align 4, !dbg !2129
  %inc = add i32 %19, 1, !dbg !2129
  store i32 %inc, ptr %ch, align 4, !dbg !2129
  br label %for.cond, !dbg !2130, !llvm.loop !2131

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %changed, align 4, !dbg !2135
  %tobool = icmp ne i32 %20, 0, !dbg !2135
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !2137

if.then15:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

if.end16:                                         ; preds = %for.end
  %21 = load ptr, ptr %follower, align 8, !dbg !2139
  %22 = load ptr, ptr %ucontrol.addr, align 8, !dbg !2140
  %call17 = call i32 @follower_put_val(ptr noundef %21, ptr noundef %22) #17, !dbg !2141
  store i32 %call17, ptr %err, align 4, !dbg !2142
  %23 = load i32, ptr %err, align 4, !dbg !2143
  %cmp18 = icmp slt i32 %23, 0, !dbg !2145
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !2146

if.then20:                                        ; preds = %if.end16
  %24 = load i32, ptr %err, align 4, !dbg !2147
  store i32 %24, ptr %retval, align 4, !dbg !2148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2148

if.end21:                                         ; preds = %if.end16
  store i32 1, ptr %retval, align 4, !dbg !2149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2149

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %changed) #16, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #16, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2150
  %25 = load i32, ptr %retval, align 4, !dbg !2150
  ret i32 %25, !dbg !2150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_tlv_cmd(ptr noundef %kcontrol, i32 noundef %op_flag, i32 noundef %size, ptr noundef %tlv) #0 align 16 !dbg !2151 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %op_flag.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %tlv.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2153, metadata !DIExpression()), !dbg !2158
  store i32 %op_flag, ptr %op_flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op_flag.addr, metadata !2154, metadata !DIExpression()), !dbg !2159
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2155, metadata !DIExpression()), !dbg !2160
  store ptr %tlv, ptr %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlv.addr, metadata !2156, metadata !DIExpression()), !dbg !2161
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2162
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2157, metadata !DIExpression()), !dbg !2163
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2164
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2164
  %1 = load ptr, ptr %private_data, align 8, !dbg !2164
  store ptr %1, ptr %follower, align 8, !dbg !2163
  %2 = load ptr, ptr %follower, align 8, !dbg !2165
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %2, i32 0, i32 6, !dbg !2166
  %tlv2 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower1, i32 0, i32 6, !dbg !2167
  %3 = load ptr, ptr %tlv2, align 8, !dbg !2168
  %4 = load ptr, ptr %follower, align 8, !dbg !2169
  %follower3 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 6, !dbg !2170
  %5 = load i32, ptr %op_flag.addr, align 4, !dbg !2171
  %6 = load i32, ptr %size.addr, align 4, !dbg !2172
  %7 = load ptr, ptr %tlv.addr, align 8, !dbg !2173
  %call = call i32 %3(ptr noundef %follower3, i32 noundef %5, i32 noundef %6, ptr noundef %7) #17, !dbg !2165
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2174
  ret i32 %call, !dbg !2175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @follower_free(ptr noundef %kcontrol) #0 align 16 !dbg !2176 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2181
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2179, metadata !DIExpression()), !dbg !2182
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2183
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2183
  %1 = load ptr, ptr %private_data, align 8, !dbg !2183
  store ptr %1, ptr %follower, align 8, !dbg !2182
  %2 = load ptr, ptr %follower, align 8, !dbg !2184
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %2, i32 0, i32 6, !dbg !2186
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %follower1, i32 0, i32 9, !dbg !2187
  %3 = load ptr, ptr %private_free, align 8, !dbg !2187
  %tobool = icmp ne ptr %3, null, !dbg !2184
  br i1 %tobool, label %if.then, label %if.end, !dbg !2188

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %follower, align 8, !dbg !2189
  %follower2 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 6, !dbg !2190
  %private_free3 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower2, i32 0, i32 9, !dbg !2191
  %5 = load ptr, ptr %private_free3, align 8, !dbg !2191
  %6 = load ptr, ptr %follower, align 8, !dbg !2192
  %follower4 = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 6, !dbg !2193
  call void %5(ptr noundef %follower4) #17, !dbg !2189
  br label %if.end, !dbg !2189

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %follower, align 8, !dbg !2194
  %master = getelementptr inbounds %struct.link_follower, ptr %7, i32 0, i32 1, !dbg !2196
  %8 = load ptr, ptr %master, align 8, !dbg !2196
  %tobool5 = icmp ne ptr %8, null, !dbg !2194
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2197

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %follower, align 8, !dbg !2198
  %list = getelementptr inbounds %struct.link_follower, ptr %9, i32 0, i32 0, !dbg !2199
  call void @list_del(ptr noundef %list) #17, !dbg !2200
  br label %if.end7, !dbg !2200

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load ptr, ptr %follower, align 8, !dbg !2201
  call void @kfree(ptr noundef %10) #17, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2203
  ret void, !dbg !2203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !2204 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2209, metadata !DIExpression()), !dbg !2211
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2210, metadata !DIExpression()), !dbg !2212
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2213
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2214
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2215
  %2 = load ptr, ptr %prev, align 8, !dbg !2215
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2216
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !2217
  ret void, !dbg !2218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_ctl_add_followers(ptr noundef %card, ptr noundef %master, ptr noundef %list) #0 align 16 !dbg !2219 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %master.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2225, metadata !DIExpression()), !dbg !2230
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !2226, metadata !DIExpression()), !dbg !2231
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2227, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2228, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2229, metadata !DIExpression()), !dbg !2236
  br label %for.cond, !dbg !2237

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2238
  %1 = load ptr, ptr %0, align 8, !dbg !2241
  %tobool = icmp ne ptr %1, null, !dbg !2242
  br i1 %tobool, label %for.body, label %for.end, !dbg !2242

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %card.addr, align 8, !dbg !2243
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2245
  %4 = load ptr, ptr %3, align 8, !dbg !2246
  %call = call ptr @snd_ctl_find_id_mixer(ptr noundef %2, ptr noundef %4) #17, !dbg !2247
  store ptr %call, ptr %follower, align 8, !dbg !2248
  %5 = load ptr, ptr %follower, align 8, !dbg !2249
  %tobool1 = icmp ne ptr %5, null, !dbg !2249
  br i1 %tobool1, label %if.then, label %if.end4, !dbg !2251

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %master.addr, align 8, !dbg !2252
  %7 = load ptr, ptr %follower, align 8, !dbg !2254
  %call2 = call i32 @snd_ctl_add_follower(ptr noundef %6, ptr noundef %7) #17, !dbg !2255
  store i32 %call2, ptr %err, align 4, !dbg !2256
  %8 = load i32, ptr %err, align 4, !dbg !2257
  %cmp = icmp slt i32 %8, 0, !dbg !2259
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2260

if.then3:                                         ; preds = %if.then
  %9 = load i32, ptr %err, align 4, !dbg !2261
  store i32 %9, ptr %retval, align 4, !dbg !2262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2262

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2263

if.end4:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !2264

for.inc:                                          ; preds = %if.end4
  %10 = load ptr, ptr %list.addr, align 8, !dbg !2265
  %incdec.ptr = getelementptr ptr, ptr %10, i32 1, !dbg !2265
  store ptr %incdec.ptr, ptr %list.addr, align 8, !dbg !2265
  br label %for.cond, !dbg !2266, !llvm.loop !2267

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2269

cleanup:                                          ; preds = %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2270
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2270
  %11 = load i32, ptr %retval, align 4, !dbg !2270
  ret i32 %11, !dbg !2270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_ctl_find_id_mixer(ptr noundef %card, ptr noundef %name) #4 align 16 !dbg !2271 {
entry:
  %card.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %id = alloca %struct.snd_ctl_elem_id, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !2275, metadata !DIExpression()), !dbg !2278
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2276, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 64, ptr %id) #16, !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.memset.p0.i64(ptr align 4 %id, i8 0, i64 64, i1 false), !dbg !2281
  %iface = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 1, !dbg !2282
  store i32 2, ptr %iface, align 4, !dbg !2283
  %name1 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 4, !dbg !2284
  %arraydecay = getelementptr inbounds [44 x i8], ptr %name1, i64 0, i64 0, !dbg !2285
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2286
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 44) #17, !dbg !2287
  %1 = load ptr, ptr %card.addr, align 8, !dbg !2288
  %call2 = call ptr @snd_ctl_find_id(ptr noundef %1, ptr noundef %id) #17, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 64, ptr %id) #16, !dbg !2290
  ret ptr %call2, !dbg !2291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_ctl_add_follower(ptr noundef %master, ptr noundef %follower) #4 align 16 !dbg !2292 {
entry:
  %master.addr = alloca ptr, align 8
  %follower.addr = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !2296, metadata !DIExpression()), !dbg !2298
  store ptr %follower, ptr %follower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %follower.addr, metadata !2297, metadata !DIExpression()), !dbg !2299
  %0 = load ptr, ptr %master.addr, align 8, !dbg !2300
  %1 = load ptr, ptr %follower.addr, align 8, !dbg !2301
  %call = call i32 @_snd_ctl_add_follower(ptr noundef %0, ptr noundef %1, i32 noundef 0) #17, !dbg !2302
  ret i32 %call, !dbg !2303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_ctl_make_virtual_master(ptr noundef %name, ptr noundef %tlv) #0 align 16 !dbg !2304 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tlv.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %kctl = alloca ptr, align 8
  %knew = alloca %struct.snd_kcontrol_new, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %type = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2308, metadata !DIExpression()), !dbg !2334
  store ptr %tlv, ptr %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tlv.addr, metadata !2309, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2336
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2310, metadata !DIExpression()), !dbg !2337
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctl) #16, !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %kctl, metadata !2311, metadata !DIExpression()), !dbg !2339
  call void @llvm.lifetime.start.p0(i64 80, ptr %knew) #16, !dbg !2340
  call void @llvm.dbg.declare(metadata ptr %knew, metadata !2312, metadata !DIExpression()), !dbg !2341
  call void @llvm.memset.p0.i64(ptr align 8 %knew, i8 0, i64 80, i1 false), !dbg !2342
  %iface = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 0, !dbg !2343
  store i32 2, ptr %iface, align 8, !dbg !2344
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2345
  %name1 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 3, !dbg !2346
  store ptr %0, ptr %name1, align 8, !dbg !2347
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 7, !dbg !2348
  store ptr @master_info, ptr %info, align 8, !dbg !2349
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !2350
  store ptr %call, ptr %master, align 8, !dbg !2351
  %1 = load ptr, ptr %master, align 8, !dbg !2352
  %tobool = icmp ne ptr %1, null, !dbg !2352
  br i1 %tobool, label %if.end, label %if.then, !dbg !2354

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2355

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %master, align 8, !dbg !2356
  %followers = getelementptr inbounds %struct.link_master, ptr %2, i32 0, i32 0, !dbg !2357
  call void @INIT_LIST_HEAD(ptr noundef %followers) #17, !dbg !2358
  %3 = load ptr, ptr %master, align 8, !dbg !2359
  %call2 = call ptr @snd_ctl_new1(ptr noundef %knew, ptr noundef %3) #17, !dbg !2360
  store ptr %call2, ptr %kctl, align 8, !dbg !2361
  %4 = load ptr, ptr %kctl, align 8, !dbg !2362
  %tobool3 = icmp ne ptr %4, null, !dbg !2362
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2364

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %master, align 8, !dbg !2365
  call void @kfree(ptr noundef %5) #17, !dbg !2367
  store ptr null, ptr %retval, align 8, !dbg !2368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2368

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %kctl, align 8, !dbg !2369
  %info6 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 3, !dbg !2370
  store ptr @master_info, ptr %info6, align 8, !dbg !2371
  %7 = load ptr, ptr %kctl, align 8, !dbg !2372
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 4, !dbg !2373
  store ptr @master_get, ptr %get, align 8, !dbg !2374
  %8 = load ptr, ptr %kctl, align 8, !dbg !2375
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 5, !dbg !2376
  store ptr @master_put, ptr %put, align 8, !dbg !2377
  %9 = load ptr, ptr %kctl, align 8, !dbg !2378
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %9, i32 0, i32 9, !dbg !2379
  store ptr @master_free, ptr %private_free, align 8, !dbg !2380
  %10 = load ptr, ptr %tlv.addr, align 8, !dbg !2381
  %tobool7 = icmp ne ptr %10, null, !dbg !2381
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !2382

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #16, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %type, metadata !2331, metadata !DIExpression()), !dbg !2384
  %11 = load ptr, ptr %tlv.addr, align 8, !dbg !2385
  %arrayidx = getelementptr i32, ptr %11, i64 0, !dbg !2385
  %12 = load i32, ptr %arrayidx, align 4, !dbg !2385
  store i32 %12, ptr %type, align 4, !dbg !2384
  %13 = load i32, ptr %type, align 4, !dbg !2386
  %cmp = icmp eq i32 %13, 1, !dbg !2388
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !2389

lor.lhs.false:                                    ; preds = %if.then8
  %14 = load i32, ptr %type, align 4, !dbg !2390
  %cmp9 = icmp eq i32 %14, 4, !dbg !2391
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10, !dbg !2392

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %15 = load i32, ptr %type, align 4, !dbg !2393
  %cmp11 = icmp eq i32 %15, 5, !dbg !2394
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !2395

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.then8
  %16 = load ptr, ptr %kctl, align 8, !dbg !2396
  %vd = getelementptr inbounds %struct.snd_kcontrol, ptr %16, i32 0, i32 10, !dbg !2398
  %arrayidx13 = getelementptr [0 x %struct.snd_kcontrol_volatile], ptr %vd, i64 0, i64 0, !dbg !2396
  %access = getelementptr inbounds %struct.snd_kcontrol_volatile, ptr %arrayidx13, i32 0, i32 1, !dbg !2399
  %17 = load i32, ptr %access, align 8, !dbg !2400
  %or = or i32 %17, 16, !dbg !2400
  store i32 %or, ptr %access, align 8, !dbg !2400
  %18 = load ptr, ptr %master, align 8, !dbg !2401
  %tlv14 = getelementptr inbounds %struct.link_master, ptr %18, i32 0, i32 3, !dbg !2402
  %arraydecay = getelementptr inbounds [4 x i32], ptr %tlv14, i64 0, i64 0, !dbg !2403
  %19 = load ptr, ptr %tlv.addr, align 8, !dbg !2404
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 4 %19, i64 16, i1 false), !dbg !2403
  %20 = load ptr, ptr %master, align 8, !dbg !2405
  %tlv15 = getelementptr inbounds %struct.link_master, ptr %20, i32 0, i32 3, !dbg !2406
  %arraydecay16 = getelementptr inbounds [4 x i32], ptr %tlv15, i64 0, i64 0, !dbg !2405
  %21 = load ptr, ptr %kctl, align 8, !dbg !2407
  %tlv17 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 6, !dbg !2408
  store ptr %arraydecay16, ptr %tlv17, align 8, !dbg !2409
  br label %if.end18, !dbg !2410

if.end18:                                         ; preds = %if.then12, %lor.lhs.false10
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #16, !dbg !2411
  br label %if.end19, !dbg !2412

if.end19:                                         ; preds = %if.end18, %if.end5
  %22 = load ptr, ptr %kctl, align 8, !dbg !2413
  store ptr %22, ptr %retval, align 8, !dbg !2414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2414

cleanup:                                          ; preds = %if.end19, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr %knew) #16, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctl) #16, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2415
  %23 = load ptr, ptr %retval, align 8, !dbg !2415
  ret ptr %23, !dbg !2415
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @master_info(ptr noundef %kcontrol, ptr noundef %uinfo) #0 align 16 !dbg !2416 {
entry:
  %retval = alloca i32, align 4
  %kcontrol.addr = alloca ptr, align 8
  %uinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2418, metadata !DIExpression()), !dbg !2422
  store ptr %uinfo, ptr %uinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uinfo.addr, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2420, metadata !DIExpression()), !dbg !2425
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2426
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2426
  %1 = load ptr, ptr %private_data, align 8, !dbg !2426
  store ptr %1, ptr %master, align 8, !dbg !2425
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2421, metadata !DIExpression()), !dbg !2428
  %2 = load ptr, ptr %master, align 8, !dbg !2429
  %call = call i32 @master_init(ptr noundef %2) #17, !dbg !2430
  store i32 %call, ptr %ret, align 4, !dbg !2431
  %3 = load i32, ptr %ret, align 4, !dbg !2432
  %cmp = icmp slt i32 %3, 0, !dbg !2434
  br i1 %cmp, label %if.then, label %if.end, !dbg !2435

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !2436
  store i32 %4, ptr %retval, align 4, !dbg !2437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2437

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %master, align 8, !dbg !2438
  %info = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 1, !dbg !2439
  %type = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 0, !dbg !2440
  %6 = load i32, ptr %type, align 8, !dbg !2440
  %7 = load ptr, ptr %uinfo.addr, align 8, !dbg !2441
  %type1 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %7, i32 0, i32 1, !dbg !2442
  store i32 %6, ptr %type1, align 8, !dbg !2443
  %8 = load ptr, ptr %master, align 8, !dbg !2444
  %info2 = getelementptr inbounds %struct.link_master, ptr %8, i32 0, i32 1, !dbg !2445
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info2, i32 0, i32 1, !dbg !2446
  %9 = load i32, ptr %count, align 4, !dbg !2446
  %10 = load ptr, ptr %uinfo.addr, align 8, !dbg !2447
  %count3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %10, i32 0, i32 3, !dbg !2448
  store i32 %9, ptr %count3, align 8, !dbg !2449
  %11 = load ptr, ptr %master, align 8, !dbg !2450
  %info4 = getelementptr inbounds %struct.link_master, ptr %11, i32 0, i32 1, !dbg !2451
  %min_val = getelementptr inbounds %struct.link_ctl_info, ptr %info4, i32 0, i32 2, !dbg !2452
  %12 = load i32, ptr %min_val, align 8, !dbg !2452
  %conv = sext i32 %12 to i64, !dbg !2450
  %13 = load ptr, ptr %uinfo.addr, align 8, !dbg !2453
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %13, i32 0, i32 5, !dbg !2454
  %min = getelementptr inbounds %struct.anon.10, ptr %value, i32 0, i32 0, !dbg !2455
  store i64 %conv, ptr %min, align 8, !dbg !2456
  %14 = load ptr, ptr %master, align 8, !dbg !2457
  %info5 = getelementptr inbounds %struct.link_master, ptr %14, i32 0, i32 1, !dbg !2458
  %max_val = getelementptr inbounds %struct.link_ctl_info, ptr %info5, i32 0, i32 3, !dbg !2459
  %15 = load i32, ptr %max_val, align 4, !dbg !2459
  %conv6 = sext i32 %15 to i64, !dbg !2457
  %16 = load ptr, ptr %uinfo.addr, align 8, !dbg !2460
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %16, i32 0, i32 5, !dbg !2461
  %max = getelementptr inbounds %struct.anon.10, ptr %value7, i32 0, i32 1, !dbg !2462
  store i64 %conv6, ptr %max, align 8, !dbg !2463
  store i32 0, ptr %retval, align 4, !dbg !2464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2464

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2465
  %17 = load i32, ptr %retval, align 4, !dbg !2465
  ret i32 %17, !dbg !2465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !2466 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2470, metadata !DIExpression()), !dbg !2471
  br label %do.body, !dbg !2472

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2473

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2475

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2473

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2477
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2477
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2477
  store volatile ptr %0, ptr %next, align 8, !dbg !2477
  br label %do.end3, !dbg !2477

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2473

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2479

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2480

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2482

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2480

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2484
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2484
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2484
  store volatile ptr %2, ptr %prev, align 8, !dbg !2484
  br label %do.end9, !dbg !2484

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2480

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2487 dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2492 dso_local void @kfree(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @master_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 16 !dbg !2495 {
entry:
  %retval = alloca i32, align 4
  %kcontrol.addr = alloca ptr, align 8
  %ucontrol.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2497, metadata !DIExpression()), !dbg !2501
  store ptr %ucontrol, ptr %ucontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucontrol.addr, metadata !2498, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2499, metadata !DIExpression()), !dbg !2504
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2505
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2505
  %1 = load ptr, ptr %private_data, align 8, !dbg !2505
  store ptr %1, ptr %master, align 8, !dbg !2504
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2500, metadata !DIExpression()), !dbg !2507
  %2 = load ptr, ptr %master, align 8, !dbg !2508
  %call = call i32 @master_init(ptr noundef %2) #17, !dbg !2509
  store i32 %call, ptr %err, align 4, !dbg !2507
  %3 = load i32, ptr %err, align 4, !dbg !2510
  %cmp = icmp slt i32 %3, 0, !dbg !2512
  br i1 %cmp, label %if.then, label %if.end, !dbg !2513

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !2514
  store i32 %4, ptr %retval, align 4, !dbg !2515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2515

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %master, align 8, !dbg !2516
  %val = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 2, !dbg !2517
  %6 = load i32, ptr %val, align 8, !dbg !2517
  %conv = sext i32 %6 to i64, !dbg !2516
  %7 = load ptr, ptr %ucontrol.addr, align 8, !dbg !2518
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %7, i32 0, i32 2, !dbg !2519
  %arrayidx = getelementptr [128 x i64], ptr %value, i64 0, i64 0, !dbg !2518
  store i64 %conv, ptr %arrayidx, align 8, !dbg !2520
  store i32 0, ptr %retval, align 4, !dbg !2521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2521

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2522
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2522
  %8 = load i32, ptr %retval, align 4, !dbg !2522
  ret i32 %8, !dbg !2522
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @master_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 16 !dbg !2523 {
entry:
  %retval = alloca i32, align 4
  %kcontrol.addr = alloca ptr, align 8
  %ucontrol.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %err = alloca i32, align 4
  %new_val = alloca i32, align 4
  %old_val = alloca i32, align 4
  %first_init = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2525, metadata !DIExpression()), !dbg !2532
  store ptr %ucontrol, ptr %ucontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucontrol.addr, metadata !2526, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2534
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2527, metadata !DIExpression()), !dbg !2535
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2536
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2536
  %1 = load ptr, ptr %private_data, align 8, !dbg !2536
  store ptr %1, ptr %master, align 8, !dbg !2535
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2528, metadata !DIExpression()), !dbg !2538
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_val) #16, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %new_val, metadata !2529, metadata !DIExpression()), !dbg !2539
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_val) #16, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %old_val, metadata !2530, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 1, ptr %first_init) #16, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %first_init, metadata !2531, metadata !DIExpression()), !dbg !2542
  %2 = load ptr, ptr %master, align 8, !dbg !2543
  %call = call i32 @master_init(ptr noundef %2) #17, !dbg !2544
  store i32 %call, ptr %err, align 4, !dbg !2545
  %3 = load i32, ptr %err, align 4, !dbg !2546
  %cmp = icmp slt i32 %3, 0, !dbg !2548
  br i1 %cmp, label %if.then, label %if.end, !dbg !2549

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !2550
  store i32 %4, ptr %retval, align 4, !dbg !2551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2551

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !2552
  %tobool = icmp ne i32 %5, 0, !dbg !2552
  %frombool = zext i1 %tobool to i8, !dbg !2553
  store i8 %frombool, ptr %first_init, align 1, !dbg !2553
  %6 = load ptr, ptr %master, align 8, !dbg !2554
  %val = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 2, !dbg !2555
  %7 = load i32, ptr %val, align 8, !dbg !2555
  store i32 %7, ptr %old_val, align 4, !dbg !2556
  %8 = load ptr, ptr %ucontrol.addr, align 8, !dbg !2557
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %8, i32 0, i32 2, !dbg !2558
  %arrayidx = getelementptr [128 x i64], ptr %value, i64 0, i64 0, !dbg !2557
  %9 = load i64, ptr %arrayidx, align 8, !dbg !2557
  %conv = trunc i64 %9 to i32, !dbg !2557
  store i32 %conv, ptr %new_val, align 4, !dbg !2559
  %10 = load i32, ptr %new_val, align 4, !dbg !2560
  %11 = load i32, ptr %old_val, align 4, !dbg !2562
  %cmp1 = icmp eq i32 %10, %11, !dbg !2563
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !2564

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2565

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %master, align 8, !dbg !2566
  %13 = load i32, ptr %old_val, align 4, !dbg !2567
  %14 = load i32, ptr %new_val, align 4, !dbg !2568
  %call5 = call i32 @sync_followers(ptr noundef %12, i32 noundef %13, i32 noundef %14) #17, !dbg !2569
  store i32 %call5, ptr %err, align 4, !dbg !2570
  %15 = load i32, ptr %err, align 4, !dbg !2571
  %cmp6 = icmp slt i32 %15, 0, !dbg !2573
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2574

if.then8:                                         ; preds = %if.end4
  %16 = load i32, ptr %err, align 4, !dbg !2575
  store i32 %16, ptr %retval, align 4, !dbg !2576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2576

if.end9:                                          ; preds = %if.end4
  %17 = load ptr, ptr %master, align 8, !dbg !2577
  %hook = getelementptr inbounds %struct.link_master, ptr %17, i32 0, i32 4, !dbg !2579
  %18 = load ptr, ptr %hook, align 8, !dbg !2579
  %tobool10 = icmp ne ptr %18, null, !dbg !2577
  br i1 %tobool10, label %land.lhs.true, label %if.end15, !dbg !2580

land.lhs.true:                                    ; preds = %if.end9
  %19 = load i8, ptr %first_init, align 1, !dbg !2581, !range !2582, !noundef !548
  %tobool11 = trunc i8 %19 to i1, !dbg !2581
  br i1 %tobool11, label %if.end15, label %if.then12, !dbg !2583

if.then12:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %master, align 8, !dbg !2584
  %hook13 = getelementptr inbounds %struct.link_master, ptr %20, i32 0, i32 4, !dbg !2585
  %21 = load ptr, ptr %hook13, align 8, !dbg !2585
  %22 = load ptr, ptr %master, align 8, !dbg !2586
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %22, i32 0, i32 5, !dbg !2587
  %23 = load ptr, ptr %hook_private_data, align 8, !dbg !2587
  %24 = load ptr, ptr %master, align 8, !dbg !2588
  %val14 = getelementptr inbounds %struct.link_master, ptr %24, i32 0, i32 2, !dbg !2589
  %25 = load i32, ptr %val14, align 8, !dbg !2589
  call void %21(ptr noundef %23, i32 noundef %25) #17, !dbg !2584
  br label %if.end15, !dbg !2584

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end9
  store i32 1, ptr %retval, align 4, !dbg !2590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2590

cleanup:                                          ; preds = %if.end15, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %first_init) #16, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_val) #16, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_val) #16, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2591
  %26 = load i32, ptr %retval, align 4, !dbg !2591
  ret i32 %26, !dbg !2591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @master_free(ptr noundef %kcontrol) #0 align 16 !dbg !2592 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %follower = alloca ptr, align 8
  %n = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %sctl = alloca ptr, align 8
  %olist = alloca %struct.list_head, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2594, metadata !DIExpression()), !dbg !2609
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2610
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2595, metadata !DIExpression()), !dbg !2611
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2612
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2612
  %1 = load ptr, ptr %private_data, align 8, !dbg !2612
  store ptr %1, ptr %master, align 8, !dbg !2611
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2596, metadata !DIExpression()), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #16, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2597, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2616
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2598, metadata !DIExpression()), !dbg !2616
  %2 = load ptr, ptr %master, align 8, !dbg !2616
  %followers = getelementptr inbounds %struct.link_master, ptr %2, i32 0, i32 0, !dbg !2616
  %next = getelementptr inbounds %struct.list_head, ptr %followers, i32 0, i32 0, !dbg !2616
  %3 = load ptr, ptr %next, align 8, !dbg !2616
  store ptr %3, ptr %__mptr, align 8, !dbg !2616
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2616
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !2616
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2617
  %5 = load ptr, ptr %tmp, align 8, !dbg !2616
  store ptr %5, ptr %follower, align 8, !dbg !2617
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !2618
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2601, metadata !DIExpression()), !dbg !2618
  %6 = load ptr, ptr %follower, align 8, !dbg !2618
  %list = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 0, !dbg !2618
  %next2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !2618
  %7 = load ptr, ptr %next2, align 8, !dbg !2618
  store ptr %7, ptr %__mptr1, align 8, !dbg !2618
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !2618
  %add.ptr4 = getelementptr i8, ptr %8, i64 0, !dbg !2618
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !2617
  %9 = load ptr, ptr %tmp3, align 8, !dbg !2618
  store ptr %9, ptr %n, align 8, !dbg !2617
  br label %for.cond, !dbg !2617

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load ptr, ptr %follower, align 8, !dbg !2619
  %list5 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 0, !dbg !2619
  %11 = load ptr, ptr %master, align 8, !dbg !2619
  %followers6 = getelementptr inbounds %struct.link_master, ptr %11, i32 0, i32 0, !dbg !2619
  %cmp = icmp eq ptr %list5, %followers6, !dbg !2619
  %lnot = xor i1 %cmp, true, !dbg !2619
  br i1 %lnot, label %for.body, label %for.end, !dbg !2617

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sctl) #16, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %sctl, metadata !2603, metadata !DIExpression()), !dbg !2621
  %12 = load ptr, ptr %follower, align 8, !dbg !2622
  %kctl = getelementptr inbounds %struct.link_follower, ptr %12, i32 0, i32 5, !dbg !2623
  %13 = load ptr, ptr %kctl, align 8, !dbg !2623
  store ptr %13, ptr %sctl, align 8, !dbg !2621
  call void @llvm.lifetime.start.p0(i64 16, ptr %olist) #16, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %olist, metadata !2606, metadata !DIExpression()), !dbg !2625
  %14 = load ptr, ptr %sctl, align 8, !dbg !2626
  %list7 = getelementptr inbounds %struct.snd_kcontrol, ptr %14, i32 0, i32 0, !dbg !2627
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %olist, ptr align 8 %list7, i64 16, i1 false), !dbg !2627
  %15 = load ptr, ptr %sctl, align 8, !dbg !2628
  %16 = load ptr, ptr %follower, align 8, !dbg !2629
  %follower8 = getelementptr inbounds %struct.link_follower, ptr %16, i32 0, i32 6, !dbg !2630
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %follower8, i64 144, i1 false), !dbg !2631
  %17 = load ptr, ptr %sctl, align 8, !dbg !2632
  %vd = getelementptr inbounds %struct.snd_kcontrol, ptr %17, i32 0, i32 10, !dbg !2633
  %arraydecay = getelementptr inbounds [0 x %struct.snd_kcontrol_volatile], ptr %vd, i64 0, i64 0, !dbg !2634
  %18 = load ptr, ptr %follower, align 8, !dbg !2635
  %follower9 = getelementptr inbounds %struct.link_follower, ptr %18, i32 0, i32 6, !dbg !2636
  %vd10 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower9, i32 0, i32 10, !dbg !2637
  %arraydecay11 = getelementptr inbounds [0 x %struct.snd_kcontrol_volatile], ptr %vd10, i64 0, i64 0, !dbg !2634
  %19 = load ptr, ptr %sctl, align 8, !dbg !2638
  %count = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 2, !dbg !2639
  %20 = load i32, ptr %count, align 8, !dbg !2639
  %conv = zext i32 %20 to i64, !dbg !2638
  %mul = mul i64 %conv, 16, !dbg !2640
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay11, i64 %mul, i1 false), !dbg !2634
  %21 = load ptr, ptr %sctl, align 8, !dbg !2641
  %list12 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 0, !dbg !2642
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %list12, ptr align 8 %olist, i64 16, i1 false), !dbg !2643
  %22 = load ptr, ptr %follower, align 8, !dbg !2644
  call void @kfree(ptr noundef %22) #17, !dbg !2645
  call void @llvm.lifetime.end.p0(i64 16, ptr %olist) #16, !dbg !2646
  call void @llvm.lifetime.end.p0(i64 8, ptr %sctl) #16, !dbg !2646
  br label %for.inc, !dbg !2647

for.inc:                                          ; preds = %for.body
  %23 = load ptr, ptr %n, align 8, !dbg !2619
  store ptr %23, ptr %follower, align 8, !dbg !2619
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #16, !dbg !2648
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !2607, metadata !DIExpression()), !dbg !2648
  %24 = load ptr, ptr %n, align 8, !dbg !2648
  %list14 = getelementptr inbounds %struct.link_follower, ptr %24, i32 0, i32 0, !dbg !2648
  %next15 = getelementptr inbounds %struct.list_head, ptr %list14, i32 0, i32 0, !dbg !2648
  %25 = load ptr, ptr %next15, align 8, !dbg !2648
  store ptr %25, ptr %__mptr13, align 8, !dbg !2648
  %26 = load ptr, ptr %__mptr13, align 8, !dbg !2648
  %add.ptr17 = getelementptr i8, ptr %26, i64 0, !dbg !2648
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #16, !dbg !2619
  %27 = load ptr, ptr %tmp16, align 8, !dbg !2648
  store ptr %27, ptr %n, align 8, !dbg !2619
  br label %for.cond, !dbg !2619, !llvm.loop !2649

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %master, align 8, !dbg !2651
  call void @kfree(ptr noundef %28) #17, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #16, !dbg !2653
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2653
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2653
  ret void, !dbg !2653
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_ctl_add_vmaster_hook(ptr noundef %kcontrol, ptr noundef %hook, ptr noundef %private_data) #0 align 16 !dbg !2654 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %hook.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2658, metadata !DIExpression()), !dbg !2662
  store ptr %hook, ptr %hook.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hook.addr, metadata !2659, metadata !DIExpression()), !dbg !2663
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !2660, metadata !DIExpression()), !dbg !2664
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2665
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2661, metadata !DIExpression()), !dbg !2666
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2667
  %private_data1 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2667
  %1 = load ptr, ptr %private_data1, align 8, !dbg !2667
  store ptr %1, ptr %master, align 8, !dbg !2666
  %2 = load ptr, ptr %hook.addr, align 8, !dbg !2668
  %3 = load ptr, ptr %master, align 8, !dbg !2669
  %hook2 = getelementptr inbounds %struct.link_master, ptr %3, i32 0, i32 4, !dbg !2670
  store ptr %2, ptr %hook2, align 8, !dbg !2671
  %4 = load ptr, ptr %private_data.addr, align 8, !dbg !2672
  %5 = load ptr, ptr %master, align 8, !dbg !2673
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 5, !dbg !2674
  store ptr %4, ptr %hook_private_data, align 8, !dbg !2675
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2676
  ret i32 0, !dbg !2677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_ctl_sync_vmaster(ptr noundef %kcontrol, i1 noundef zeroext %hook_only) #0 align 16 !dbg !2678 {
entry:
  %kcontrol.addr = alloca ptr, align 8
  %hook_only.addr = alloca i8, align 1
  %master = alloca ptr, align 8
  %first_init = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %kcontrol, ptr %kcontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcontrol.addr, metadata !2682, metadata !DIExpression()), !dbg !2689
  %frombool = zext i1 %hook_only to i8
  store i8 %frombool, ptr %hook_only.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %hook_only.addr, metadata !2683, metadata !DIExpression()), !dbg !2690
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2684, metadata !DIExpression()), !dbg !2692
  call void @llvm.lifetime.start.p0(i64 1, ptr %first_init) #16, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %first_init, metadata !2685, metadata !DIExpression()), !dbg !2694
  store i8 0, ptr %first_init, align 1, !dbg !2694
  %0 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2695
  %tobool = icmp ne ptr %0, null, !dbg !2695
  br i1 %tobool, label %if.end, label %if.then, !dbg !2697

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !2698

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kcontrol.addr, align 8, !dbg !2699
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 8, !dbg !2699
  %2 = load ptr, ptr %private_data, align 8, !dbg !2699
  store ptr %2, ptr %master, align 8, !dbg !2700
  %3 = load i8, ptr %hook_only.addr, align 1, !dbg !2701, !range !2582, !noundef !548
  %tobool1 = trunc i8 %3 to i1, !dbg !2701
  br i1 %tobool1, label %if.end12, label %if.then2, !dbg !2702

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2703
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2686, metadata !DIExpression()), !dbg !2704
  %4 = load ptr, ptr %master, align 8, !dbg !2705
  %call = call i32 @master_init(ptr noundef %4) #17, !dbg !2706
  store i32 %call, ptr %err, align 4, !dbg !2704
  %5 = load i32, ptr %err, align 4, !dbg !2707
  %cmp = icmp slt i32 %5, 0, !dbg !2709
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2710

if.then3:                                         ; preds = %if.then2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2711

if.end4:                                          ; preds = %if.then2
  %6 = load i32, ptr %err, align 4, !dbg !2712
  %tobool5 = icmp ne i32 %6, 0, !dbg !2712
  %frombool6 = zext i1 %tobool5 to i8, !dbg !2713
  store i8 %frombool6, ptr %first_init, align 1, !dbg !2713
  %7 = load ptr, ptr %master, align 8, !dbg !2714
  %8 = load ptr, ptr %master, align 8, !dbg !2715
  %val = getelementptr inbounds %struct.link_master, ptr %8, i32 0, i32 2, !dbg !2716
  %9 = load i32, ptr %val, align 8, !dbg !2716
  %10 = load ptr, ptr %master, align 8, !dbg !2717
  %val7 = getelementptr inbounds %struct.link_master, ptr %10, i32 0, i32 2, !dbg !2718
  %11 = load i32, ptr %val7, align 8, !dbg !2718
  %call8 = call i32 @sync_followers(ptr noundef %7, i32 noundef %9, i32 noundef %11) #17, !dbg !2719
  store i32 %call8, ptr %err, align 4, !dbg !2720
  %12 = load i32, ptr %err, align 4, !dbg !2721
  %cmp9 = icmp slt i32 %12, 0, !dbg !2723
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2724

if.then10:                                        ; preds = %if.end4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2725

if.end11:                                         ; preds = %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2726
  br label %cleanup, !dbg !2726

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2726
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12, !dbg !2727

if.end12:                                         ; preds = %cleanup.cont, %if.end
  %13 = load ptr, ptr %master, align 8, !dbg !2728
  %hook = getelementptr inbounds %struct.link_master, ptr %13, i32 0, i32 4, !dbg !2730
  %14 = load ptr, ptr %hook, align 8, !dbg !2730
  %tobool13 = icmp ne ptr %14, null, !dbg !2728
  br i1 %tobool13, label %land.lhs.true, label %if.end18, !dbg !2731

land.lhs.true:                                    ; preds = %if.end12
  %15 = load i8, ptr %first_init, align 1, !dbg !2732, !range !2582, !noundef !548
  %tobool14 = trunc i8 %15 to i1, !dbg !2732
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !2733

if.then15:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %master, align 8, !dbg !2734
  %hook16 = getelementptr inbounds %struct.link_master, ptr %16, i32 0, i32 4, !dbg !2735
  %17 = load ptr, ptr %hook16, align 8, !dbg !2735
  %18 = load ptr, ptr %master, align 8, !dbg !2736
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %18, i32 0, i32 5, !dbg !2737
  %19 = load ptr, ptr %hook_private_data, align 8, !dbg !2737
  %20 = load ptr, ptr %master, align 8, !dbg !2738
  %val17 = getelementptr inbounds %struct.link_master, ptr %20, i32 0, i32 2, !dbg !2739
  %21 = load i32, ptr %val17, align 8, !dbg !2739
  call void %17(ptr noundef %19, i32 noundef %21) #17, !dbg !2734
  br label %if.end18, !dbg !2734

if.end18:                                         ; preds = %if.then15, %land.lhs.true, %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2740
  br label %cleanup19, !dbg !2740

cleanup19:                                        ; preds = %if.end18, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %first_init) #16, !dbg !2740
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2740
  %cleanup.dest21 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest21, label %unreachable [
    i32 0, label %cleanup.cont22
    i32 1, label %cleanup.cont22
  ]

cleanup.cont22:                                   ; preds = %cleanup19, %cleanup19
  ret void, !dbg !2740

unreachable:                                      ; preds = %cleanup19
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @master_init(ptr noundef %master) #0 align 16 !dbg !2741 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca ptr, align 8
  %follower = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %err = alloca i32, align 4
  %__mptr15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !2745, metadata !DIExpression()), !dbg !2755
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2746, metadata !DIExpression()), !dbg !2757
  %0 = load ptr, ptr %master.addr, align 8, !dbg !2758
  %info = getelementptr inbounds %struct.link_master, ptr %0, i32 0, i32 1, !dbg !2760
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 1, !dbg !2761
  %1 = load i32, ptr %count, align 4, !dbg !2761
  %tobool = icmp ne i32 %1, 0, !dbg !2758
  br i1 %tobool, label %if.then, label %if.end, !dbg !2762

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !2763

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2747, metadata !DIExpression()), !dbg !2764
  %2 = load ptr, ptr %master.addr, align 8, !dbg !2764
  %followers = getelementptr inbounds %struct.link_master, ptr %2, i32 0, i32 0, !dbg !2764
  %next = getelementptr inbounds %struct.list_head, ptr %followers, i32 0, i32 0, !dbg !2764
  %3 = load ptr, ptr %next, align 8, !dbg !2764
  store ptr %3, ptr %__mptr, align 8, !dbg !2764
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2764
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !2764
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2764
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2765
  %5 = load ptr, ptr %tmp, align 8, !dbg !2764
  store ptr %5, ptr %follower, align 8, !dbg !2765
  br label %for.cond, !dbg !2765

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %follower, align 8, !dbg !2766
  %list = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 0, !dbg !2766
  %7 = load ptr, ptr %master.addr, align 8, !dbg !2766
  %followers1 = getelementptr inbounds %struct.link_master, ptr %7, i32 0, i32 0, !dbg !2766
  %cmp = icmp eq ptr %list, %followers1, !dbg !2766
  %lnot = xor i1 %cmp, true, !dbg !2766
  br i1 %lnot, label %for.body, label %for.end, !dbg !2765

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2750, metadata !DIExpression()), !dbg !2768
  %8 = load ptr, ptr %follower, align 8, !dbg !2769
  %call = call i32 @follower_init(ptr noundef %8) #17, !dbg !2770
  store i32 %call, ptr %err, align 4, !dbg !2768
  %9 = load i32, ptr %err, align 4, !dbg !2771
  %cmp2 = icmp slt i32 %9, 0, !dbg !2773
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2774

if.then3:                                         ; preds = %for.body
  %10 = load i32, ptr %err, align 4, !dbg !2775
  store i32 %10, ptr %retval, align 4, !dbg !2776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2776

if.end4:                                          ; preds = %for.body
  %11 = load ptr, ptr %master.addr, align 8, !dbg !2777
  %info5 = getelementptr inbounds %struct.link_master, ptr %11, i32 0, i32 1, !dbg !2778
  %12 = load ptr, ptr %follower, align 8, !dbg !2779
  %info6 = getelementptr inbounds %struct.link_follower, ptr %12, i32 0, i32 2, !dbg !2780
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %info5, ptr align 8 %info6, i64 16, i1 false), !dbg !2780
  %13 = load ptr, ptr %master.addr, align 8, !dbg !2781
  %info7 = getelementptr inbounds %struct.link_master, ptr %13, i32 0, i32 1, !dbg !2782
  %count8 = getelementptr inbounds %struct.link_ctl_info, ptr %info7, i32 0, i32 1, !dbg !2783
  store i32 1, ptr %count8, align 4, !dbg !2784
  %14 = load ptr, ptr %master.addr, align 8, !dbg !2785
  %info9 = getelementptr inbounds %struct.link_master, ptr %14, i32 0, i32 1, !dbg !2786
  %max_val = getelementptr inbounds %struct.link_ctl_info, ptr %info9, i32 0, i32 3, !dbg !2787
  %15 = load i32, ptr %max_val, align 4, !dbg !2787
  %16 = load ptr, ptr %master.addr, align 8, !dbg !2788
  %val = getelementptr inbounds %struct.link_master, ptr %16, i32 0, i32 2, !dbg !2789
  store i32 %15, ptr %val, align 8, !dbg !2790
  %17 = load ptr, ptr %master.addr, align 8, !dbg !2791
  %hook = getelementptr inbounds %struct.link_master, ptr %17, i32 0, i32 4, !dbg !2793
  %18 = load ptr, ptr %hook, align 8, !dbg !2793
  %tobool10 = icmp ne ptr %18, null, !dbg !2791
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !2794

if.then11:                                        ; preds = %if.end4
  %19 = load ptr, ptr %master.addr, align 8, !dbg !2795
  %hook12 = getelementptr inbounds %struct.link_master, ptr %19, i32 0, i32 4, !dbg !2796
  %20 = load ptr, ptr %hook12, align 8, !dbg !2796
  %21 = load ptr, ptr %master.addr, align 8, !dbg !2797
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %21, i32 0, i32 5, !dbg !2798
  %22 = load ptr, ptr %hook_private_data, align 8, !dbg !2798
  %23 = load ptr, ptr %master.addr, align 8, !dbg !2799
  %val13 = getelementptr inbounds %struct.link_master, ptr %23, i32 0, i32 2, !dbg !2800
  %24 = load i32, ptr %val13, align 8, !dbg !2800
  call void %20(ptr noundef %22, i32 noundef %24) #17, !dbg !2795
  br label %if.end14, !dbg !2795

if.end14:                                         ; preds = %if.then11, %if.end4
  store i32 1, ptr %retval, align 4, !dbg !2801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2801

cleanup:                                          ; preds = %if.end14, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2802
  br label %cleanup20

for.inc:                                          ; No predecessors!
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #16, !dbg !2803
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !2753, metadata !DIExpression()), !dbg !2803
  %25 = load ptr, ptr %follower, align 8, !dbg !2803
  %list16 = getelementptr inbounds %struct.link_follower, ptr %25, i32 0, i32 0, !dbg !2803
  %next17 = getelementptr inbounds %struct.list_head, ptr %list16, i32 0, i32 0, !dbg !2803
  %26 = load ptr, ptr %next17, align 8, !dbg !2803
  store ptr %26, ptr %__mptr15, align 8, !dbg !2803
  %27 = load ptr, ptr %__mptr15, align 8, !dbg !2803
  %add.ptr19 = getelementptr i8, ptr %27, i64 0, !dbg !2803
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #16, !dbg !2766
  %28 = load ptr, ptr %tmp18, align 8, !dbg !2803
  store ptr %28, ptr %follower, align 8, !dbg !2766
  br label %for.cond, !dbg !2766, !llvm.loop !2804

for.end:                                          ; preds = %for.cond
  store i32 -2, ptr %retval, align 4, !dbg !2806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !2806

cleanup20:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2807
  %29 = load i32, ptr %retval, align 4, !dbg !2807
  ret i32 %29, !dbg !2807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sync_followers(ptr noundef %master, i32 noundef %old_val, i32 noundef %new_val) #0 align 16 !dbg !2808 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca ptr, align 8
  %old_val.addr = alloca i32, align 4
  %new_val.addr = alloca i32, align 4
  %follower = alloca ptr, align 8
  %uval = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %master, ptr %master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %master.addr, metadata !2812, metadata !DIExpression()), !dbg !2823
  store i32 %old_val, ptr %old_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_val.addr, metadata !2813, metadata !DIExpression()), !dbg !2824
  store i32 %new_val, ptr %new_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_val.addr, metadata !2814, metadata !DIExpression()), !dbg !2825
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2815, metadata !DIExpression()), !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr %uval) #16, !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %uval, metadata !2816, metadata !DIExpression()), !dbg !2829
  %call = call noalias ptr @kmalloc(i64 noundef 1224, i32 noundef 3264) #18, !dbg !2830
  store ptr %call, ptr %uval, align 8, !dbg !2831
  %0 = load ptr, ptr %uval, align 8, !dbg !2832
  %tobool = icmp ne ptr %0, null, !dbg !2832
  br i1 %tobool, label %if.end, label %if.then, !dbg !2834

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2835

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2836
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2817, metadata !DIExpression()), !dbg !2836
  %1 = load ptr, ptr %master.addr, align 8, !dbg !2836
  %followers = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 0, !dbg !2836
  %next = getelementptr inbounds %struct.list_head, ptr %followers, i32 0, i32 0, !dbg !2836
  %2 = load ptr, ptr %next, align 8, !dbg !2836
  store ptr %2, ptr %__mptr, align 8, !dbg !2836
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2836
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2836
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2837
  %4 = load ptr, ptr %tmp, align 8, !dbg !2836
  store ptr %4, ptr %follower, align 8, !dbg !2837
  br label %for.cond, !dbg !2837

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %follower, align 8, !dbg !2838
  %list = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 0, !dbg !2838
  %6 = load ptr, ptr %master.addr, align 8, !dbg !2838
  %followers1 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 0, !dbg !2838
  %cmp = icmp eq ptr %list, %followers1, !dbg !2838
  %lnot = xor i1 %cmp, true, !dbg !2838
  br i1 %lnot, label %for.body, label %for.end, !dbg !2837

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %old_val.addr, align 4, !dbg !2839
  %8 = load ptr, ptr %master.addr, align 8, !dbg !2841
  %val = getelementptr inbounds %struct.link_master, ptr %8, i32 0, i32 2, !dbg !2842
  store i32 %7, ptr %val, align 8, !dbg !2843
  %9 = load ptr, ptr %uval, align 8, !dbg !2844
  %id = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %9, i32 0, i32 0, !dbg !2845
  %10 = load ptr, ptr %follower, align 8, !dbg !2846
  %follower2 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 6, !dbg !2847
  %id3 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower2, i32 0, i32 1, !dbg !2848
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %id, ptr align 8 %id3, i64 64, i1 false), !dbg !2848
  %11 = load ptr, ptr %follower, align 8, !dbg !2849
  %12 = load ptr, ptr %uval, align 8, !dbg !2850
  %call4 = call i32 @follower_get_val(ptr noundef %11, ptr noundef %12) #17, !dbg !2851
  %13 = load i32, ptr %new_val.addr, align 4, !dbg !2852
  %14 = load ptr, ptr %master.addr, align 8, !dbg !2853
  %val5 = getelementptr inbounds %struct.link_master, ptr %14, i32 0, i32 2, !dbg !2854
  store i32 %13, ptr %val5, align 8, !dbg !2855
  %15 = load ptr, ptr %follower, align 8, !dbg !2856
  %16 = load ptr, ptr %uval, align 8, !dbg !2857
  %call6 = call i32 @follower_put_val(ptr noundef %15, ptr noundef %16) #17, !dbg !2858
  br label %for.inc, !dbg !2859

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #16, !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2820, metadata !DIExpression()), !dbg !2860
  %17 = load ptr, ptr %follower, align 8, !dbg !2860
  %list8 = getelementptr inbounds %struct.link_follower, ptr %17, i32 0, i32 0, !dbg !2860
  %next9 = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !2860
  %18 = load ptr, ptr %next9, align 8, !dbg !2860
  store ptr %18, ptr %__mptr7, align 8, !dbg !2860
  %19 = load ptr, ptr %__mptr7, align 8, !dbg !2860
  %add.ptr11 = getelementptr i8, ptr %19, i64 0, !dbg !2860
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2860
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #16, !dbg !2838
  %20 = load ptr, ptr %tmp10, align 8, !dbg !2860
  store ptr %20, ptr %follower, align 8, !dbg !2838
  br label %for.cond, !dbg !2838, !llvm.loop !2861

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %uval, align 8, !dbg !2863
  call void @kfree(ptr noundef %21) #17, !dbg !2864
  store i32 0, ptr %retval, align 4, !dbg !2865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2865

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %uval) #16, !dbg !2866
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2866
  %22 = load i32, ptr %retval, align 4, !dbg !2866
  ret i32 %22, !dbg !2866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_ctl_apply_vmaster_followers(ptr noundef %kctl, ptr noundef %func, ptr noundef %arg) #0 align 16 !dbg !2867 {
entry:
  %retval = alloca i32, align 4
  %kctl.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %follower = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %kctl, ptr %kctl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kctl.addr, metadata !2874, metadata !DIExpression()), !dbg !2886
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2875, metadata !DIExpression()), !dbg !2887
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2876, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0(i64 8, ptr %master) #16, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %master, metadata !2877, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 8, ptr %follower) #16, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %follower, metadata !2878, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2879, metadata !DIExpression()), !dbg !2894
  %0 = load ptr, ptr %kctl.addr, align 8, !dbg !2895
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !2895
  %1 = load ptr, ptr %private_data, align 8, !dbg !2895
  store ptr %1, ptr %master, align 8, !dbg !2896
  %2 = load ptr, ptr %master, align 8, !dbg !2897
  %call = call i32 @master_init(ptr noundef %2) #17, !dbg !2898
  store i32 %call, ptr %err, align 4, !dbg !2899
  %3 = load i32, ptr %err, align 4, !dbg !2900
  %cmp = icmp slt i32 %3, 0, !dbg !2902
  br i1 %cmp, label %if.then, label %if.end, !dbg !2903

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !2904
  store i32 %4, ptr %retval, align 4, !dbg !2905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2905

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2906
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2880, metadata !DIExpression()), !dbg !2906
  %5 = load ptr, ptr %master, align 8, !dbg !2906
  %followers = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 0, !dbg !2906
  %next = getelementptr inbounds %struct.list_head, ptr %followers, i32 0, i32 0, !dbg !2906
  %6 = load ptr, ptr %next, align 8, !dbg !2906
  store ptr %6, ptr %__mptr, align 8, !dbg !2906
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2906
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !2906
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2907
  %8 = load ptr, ptr %tmp, align 8, !dbg !2906
  store ptr %8, ptr %follower, align 8, !dbg !2907
  br label %for.cond, !dbg !2907

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %follower, align 8, !dbg !2908
  %list = getelementptr inbounds %struct.link_follower, ptr %9, i32 0, i32 0, !dbg !2908
  %10 = load ptr, ptr %master, align 8, !dbg !2908
  %followers1 = getelementptr inbounds %struct.link_master, ptr %10, i32 0, i32 0, !dbg !2908
  %cmp2 = icmp eq ptr %list, %followers1, !dbg !2908
  %lnot = xor i1 %cmp2, true, !dbg !2908
  br i1 %lnot, label %for.body, label %for.end, !dbg !2907

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %func.addr, align 8, !dbg !2909
  %12 = load ptr, ptr %follower, align 8, !dbg !2911
  %kctl3 = getelementptr inbounds %struct.link_follower, ptr %12, i32 0, i32 5, !dbg !2912
  %13 = load ptr, ptr %kctl3, align 8, !dbg !2912
  %14 = load ptr, ptr %follower, align 8, !dbg !2913
  %follower4 = getelementptr inbounds %struct.link_follower, ptr %14, i32 0, i32 6, !dbg !2914
  %15 = load ptr, ptr %arg.addr, align 8, !dbg !2915
  %call5 = call i32 %11(ptr noundef %13, ptr noundef %follower4, ptr noundef %15) #17, !dbg !2909
  store i32 %call5, ptr %err, align 4, !dbg !2916
  %16 = load i32, ptr %err, align 4, !dbg !2917
  %cmp6 = icmp slt i32 %16, 0, !dbg !2919
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2920

if.then7:                                         ; preds = %for.body
  %17 = load i32, ptr %err, align 4, !dbg !2921
  store i32 %17, ptr %retval, align 4, !dbg !2922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2922

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !2923

for.inc:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #16, !dbg !2924
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2883, metadata !DIExpression()), !dbg !2924
  %18 = load ptr, ptr %follower, align 8, !dbg !2924
  %list10 = getelementptr inbounds %struct.link_follower, ptr %18, i32 0, i32 0, !dbg !2924
  %next11 = getelementptr inbounds %struct.list_head, ptr %list10, i32 0, i32 0, !dbg !2924
  %19 = load ptr, ptr %next11, align 8, !dbg !2924
  store ptr %19, ptr %__mptr9, align 8, !dbg !2924
  %20 = load ptr, ptr %__mptr9, align 8, !dbg !2924
  %add.ptr13 = getelementptr i8, ptr %20, i64 0, !dbg !2924
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #16, !dbg !2908
  %21 = load ptr, ptr %tmp12, align 8, !dbg !2924
  store ptr %21, ptr %follower, align 8, !dbg !2908
  br label %for.cond, !dbg !2908, !llvm.loop !2925

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2927

cleanup:                                          ; preds = %for.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2928
  call void @llvm.lifetime.end.p0(i64 8, ptr %follower) #16, !dbg !2928
  call void @llvm.lifetime.end.p0(i64 8, ptr %master) #16, !dbg !2928
  %22 = load i32, ptr %retval, align 4, !dbg !2928
  ret i32 %22, !dbg !2928
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2929 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2931, metadata !DIExpression()), !dbg !2936
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2932, metadata !DIExpression()), !dbg !2937
  %0 = load i64, ptr %size.addr, align 8, !dbg !2938
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2939
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2940

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2941
  %tobool = icmp ne i64 %2, 0, !dbg !2941
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2942

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2943
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2933, metadata !DIExpression()), !dbg !2944
  %3 = load i64, ptr %size.addr, align 8, !dbg !2945
  %cmp = icmp ugt i64 %3, 8192, !dbg !2947
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2948

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2949
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2950
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !2951
  store ptr %call, ptr %retval, align 8, !dbg !2952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2952

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2953
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !2953
  store i32 %call2, ptr %index, align 4, !dbg !2954
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2955
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2956
  %9 = ptrtoint ptr %8 to i64, !dbg !2956
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !2957
  %idxprom = zext i32 %call3 to i64, !dbg !2958
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2958
  %10 = load i32, ptr %index, align 4, !dbg !2959
  %idxprom4 = zext i32 %10 to i64, !dbg !2958
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2958
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2958
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2960
  %13 = load i64, ptr %size.addr, align 8, !dbg !2961
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !2962
  store ptr %call6, ptr %retval, align 8, !dbg !2963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2963

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2964
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2965
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2966
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !2967
  store ptr %call8, ptr %retval, align 8, !dbg !2968
  br label %return, !dbg !2968

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2969
  ret ptr %16, !dbg !2969
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2970 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !2971 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2975, metadata !DIExpression()), !dbg !2977
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2976, metadata !DIExpression()), !dbg !2978
  %0 = load i64, ptr %size.addr, align 8, !dbg !2979
  %tobool = icmp ne i64 %0, 0, !dbg !2979
  br i1 %tobool, label %if.end, label %if.then, !dbg !2981

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2982
  br label %return, !dbg !2982

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2983
  %cmp = icmp ule i64 %1, 8, !dbg !2985
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2986

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2987
  br label %return, !dbg !2987

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2988
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2990
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2991

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2992
  %cmp4 = icmp ule i64 %3, 96, !dbg !2993
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2994

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2995
  br label %return, !dbg !2995

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2996
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2998
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2999

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3000
  %cmp9 = icmp ule i64 %5, 192, !dbg !3001
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3002

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3003
  br label %return, !dbg !3003

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3004
  %cmp12 = icmp ule i64 %6, 8, !dbg !3006
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3007

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3008
  br label %return, !dbg !3008

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3009
  %cmp15 = icmp ule i64 %7, 16, !dbg !3011
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3012

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3013
  br label %return, !dbg !3013

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3014
  %cmp18 = icmp ule i64 %8, 32, !dbg !3016
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3017

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3018
  br label %return, !dbg !3018

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3019
  %cmp21 = icmp ule i64 %9, 64, !dbg !3021
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3022

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3023
  br label %return, !dbg !3023

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3024
  %cmp24 = icmp ule i64 %10, 128, !dbg !3026
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3027

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3028
  br label %return, !dbg !3028

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3029
  %cmp27 = icmp ule i64 %11, 256, !dbg !3031
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3032

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3033
  br label %return, !dbg !3033

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3034
  %cmp30 = icmp ule i64 %12, 512, !dbg !3036
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3037

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3038
  br label %return, !dbg !3038

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3039
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3041
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3042

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3043
  br label %return, !dbg !3043

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3044
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3046
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3047

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3048
  br label %return, !dbg !3048

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3049
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3051
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3052

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3053
  br label %return, !dbg !3053

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3054
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3056
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3057

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3058
  br label %return, !dbg !3058

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3059
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3061
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3062

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3063
  br label %return, !dbg !3063

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3064
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3066
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3067

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3068
  br label %return, !dbg !3068

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3069
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3071
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3072

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3073
  br label %return, !dbg !3073

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3074
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3076
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3077

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3078
  br label %return, !dbg !3078

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3079
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3081
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3082

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3083
  br label %return, !dbg !3083

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3084
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3086
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3087

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3088
  br label %return, !dbg !3088

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3089
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3091
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3092

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3093
  br label %return, !dbg !3093

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3094
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3096
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3097

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3098
  br label %return, !dbg !3098

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3099, !range !2582, !noundef !548
  %tobool69 = trunc i8 %25 to i1, !dbg !3099
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3101

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3102

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !3103, !srcloc !3106
  unreachable, !dbg !3103

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3107

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3108

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3109

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3111

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3109

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !3113, !srcloc !3115
  br label %do.end75, !dbg !3113

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3109

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3116
  br label %return, !dbg !3116

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3117
  ret i32 %26, !dbg !3117
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3118 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !3124 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3128, metadata !DIExpression()), !dbg !3130
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3129, metadata !DIExpression()), !dbg !3131
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3132
  %and = and i32 %0, 17, !dbg !3132
  %cmp = icmp eq i32 %and, 0, !dbg !3132
  %lnot = xor i1 %cmp, true, !dbg !3132
  %lnot1 = xor i1 %lnot, true, !dbg !3132
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3132
  %conv = sext i32 %lnot.ext to i64, !dbg !3132
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3132
  %tobool = icmp ne i64 %expval, 0, !dbg !3132
  br i1 %tobool, label %if.then, label %if.end, !dbg !3134

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3135
  br label %return, !dbg !3135

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3136
  %and2 = and i32 %1, 1, !dbg !3138
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3138
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3139

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3140
  br label %return, !dbg !3140

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3141
  br label %return, !dbg !3141

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3143
  ret i32 %2, !dbg !3143
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3144 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3145 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !3146 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !3150, metadata !DIExpression()), !dbg !3151
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !3152, !range !2582, !noundef !548
  %tobool = trunc i8 %0 to i1, !dbg !3152
  %lnot = xor i1 %tobool, true, !dbg !3152
  %lnot1 = xor i1 %lnot, true, !dbg !3152
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3152
  %conv = sext i32 %lnot.ext to i64, !dbg !3152
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3152
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3152
  ret i1 %tobool2, !dbg !3153
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_get_val(ptr noundef %follower, ptr noundef %ucontrol) #0 align 16 !dbg !3154 {
entry:
  %retval = alloca i32, align 4
  %follower.addr = alloca ptr, align 8
  %ucontrol.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %follower, ptr %follower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %follower.addr, metadata !3158, metadata !DIExpression()), !dbg !3162
  store ptr %ucontrol, ptr %ucontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucontrol.addr, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #16, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !3161, metadata !DIExpression()), !dbg !3166
  %0 = load ptr, ptr %follower.addr, align 8, !dbg !3167
  %call = call i32 @follower_init(ptr noundef %0) #17, !dbg !3168
  store i32 %call, ptr %err, align 4, !dbg !3169
  %1 = load i32, ptr %err, align 4, !dbg !3170
  %cmp = icmp slt i32 %1, 0, !dbg !3172
  br i1 %cmp, label %if.then, label %if.end, !dbg !3173

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !3174
  store i32 %2, ptr %retval, align 4, !dbg !3175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3175

if.end:                                           ; preds = %entry
  store i32 0, ptr %ch, align 4, !dbg !3176
  br label %for.cond, !dbg !3178

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %ch, align 4, !dbg !3179
  %4 = load ptr, ptr %follower.addr, align 8, !dbg !3181
  %info = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 2, !dbg !3182
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 1, !dbg !3183
  %5 = load i32, ptr %count, align 4, !dbg !3183
  %cmp1 = icmp slt i32 %3, %5, !dbg !3184
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3185

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %follower.addr, align 8, !dbg !3186
  %vals = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 3, !dbg !3187
  %7 = load i32, ptr %ch, align 4, !dbg !3188
  %idxprom = sext i32 %7 to i64, !dbg !3186
  %arrayidx = getelementptr [2 x i32], ptr %vals, i64 0, i64 %idxprom, !dbg !3186
  %8 = load i32, ptr %arrayidx, align 4, !dbg !3186
  %conv = sext i32 %8 to i64, !dbg !3186
  %9 = load ptr, ptr %ucontrol.addr, align 8, !dbg !3189
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %9, i32 0, i32 2, !dbg !3190
  %10 = load i32, ptr %ch, align 4, !dbg !3191
  %idxprom2 = sext i32 %10 to i64, !dbg !3189
  %arrayidx3 = getelementptr [128 x i64], ptr %value, i64 0, i64 %idxprom2, !dbg !3189
  store i64 %conv, ptr %arrayidx3, align 8, !dbg !3192
  br label %for.inc, !dbg !3189

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %ch, align 4, !dbg !3193
  %inc = add i32 %11, 1, !dbg !3193
  store i32 %inc, ptr %ch, align 4, !dbg !3193
  br label %for.cond, !dbg !3194, !llvm.loop !3195

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3197

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #16, !dbg !3198
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !3198
  %12 = load i32, ptr %retval, align 4, !dbg !3198
  ret i32 %12, !dbg !3198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_init(ptr noundef %follower) #0 align 16 !dbg !3199 {
entry:
  %retval = alloca i32, align 4
  %follower.addr = alloca ptr, align 8
  %uinfo = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %follower, ptr %follower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %follower.addr, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 8, ptr %uinfo) #16, !dbg !3207
  call void @llvm.dbg.declare(metadata ptr %uinfo, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !3209
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3205, metadata !DIExpression()), !dbg !3210
  %0 = load ptr, ptr %follower.addr, align 8, !dbg !3211
  %info = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, !dbg !3213
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 1, !dbg !3214
  %1 = load i32, ptr %count, align 4, !dbg !3214
  %tobool = icmp ne i32 %1, 0, !dbg !3211
  br i1 %tobool, label %if.then, label %if.end3, !dbg !3215

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %follower.addr, align 8, !dbg !3216
  %flags = getelementptr inbounds %struct.link_follower, ptr %2, i32 0, i32 4, !dbg !3219
  %3 = load i32, ptr %flags, align 8, !dbg !3219
  %and = and i32 %3, 1, !dbg !3220
  %tobool1 = icmp ne i32 %and, 0, !dbg !3220
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !3221

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %follower.addr, align 8, !dbg !3222
  %call = call i32 @follower_update(ptr noundef %4) #17, !dbg !3223
  store i32 %call, ptr %retval, align 4, !dbg !3224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3224

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !3225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3225

if.end3:                                          ; preds = %entry
  %call4 = call noalias ptr @kmalloc(i64 noundef 272, i32 noundef 3264) #18, !dbg !3226
  store ptr %call4, ptr %uinfo, align 8, !dbg !3227
  %5 = load ptr, ptr %uinfo, align 8, !dbg !3228
  %tobool5 = icmp ne ptr %5, null, !dbg !3228
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3230

if.then6:                                         ; preds = %if.end3
  store i32 -12, ptr %retval, align 4, !dbg !3231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3231

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %uinfo, align 8, !dbg !3232
  %id = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %6, i32 0, i32 0, !dbg !3233
  %7 = load ptr, ptr %follower.addr, align 8, !dbg !3234
  %follower8 = getelementptr inbounds %struct.link_follower, ptr %7, i32 0, i32 6, !dbg !3235
  %id9 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower8, i32 0, i32 1, !dbg !3236
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %id, ptr align 8 %id9, i64 64, i1 false), !dbg !3236
  %8 = load ptr, ptr %follower.addr, align 8, !dbg !3237
  %follower10 = getelementptr inbounds %struct.link_follower, ptr %8, i32 0, i32 6, !dbg !3238
  %info11 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower10, i32 0, i32 3, !dbg !3239
  %9 = load ptr, ptr %info11, align 8, !dbg !3239
  %10 = load ptr, ptr %follower.addr, align 8, !dbg !3240
  %follower12 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 6, !dbg !3241
  %11 = load ptr, ptr %uinfo, align 8, !dbg !3242
  %call13 = call i32 %9(ptr noundef %follower12, ptr noundef %11) #17, !dbg !3237
  store i32 %call13, ptr %err, align 4, !dbg !3243
  %12 = load i32, ptr %err, align 4, !dbg !3244
  %cmp = icmp slt i32 %12, 0, !dbg !3246
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !3247

if.then14:                                        ; preds = %if.end7
  %13 = load ptr, ptr %uinfo, align 8, !dbg !3248
  call void @kfree(ptr noundef %13) #17, !dbg !3250
  %14 = load i32, ptr %err, align 4, !dbg !3251
  store i32 %14, ptr %retval, align 4, !dbg !3252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3252

if.end15:                                         ; preds = %if.end7
  %15 = load ptr, ptr %uinfo, align 8, !dbg !3253
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %15, i32 0, i32 1, !dbg !3254
  %16 = load i32, ptr %type, align 8, !dbg !3254
  %17 = load ptr, ptr %follower.addr, align 8, !dbg !3255
  %info16 = getelementptr inbounds %struct.link_follower, ptr %17, i32 0, i32 2, !dbg !3256
  %type17 = getelementptr inbounds %struct.link_ctl_info, ptr %info16, i32 0, i32 0, !dbg !3257
  store i32 %16, ptr %type17, align 8, !dbg !3258
  %18 = load ptr, ptr %uinfo, align 8, !dbg !3259
  %count18 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %18, i32 0, i32 3, !dbg !3260
  %19 = load i32, ptr %count18, align 8, !dbg !3260
  %20 = load ptr, ptr %follower.addr, align 8, !dbg !3261
  %info19 = getelementptr inbounds %struct.link_follower, ptr %20, i32 0, i32 2, !dbg !3262
  %count20 = getelementptr inbounds %struct.link_ctl_info, ptr %info19, i32 0, i32 1, !dbg !3263
  store i32 %19, ptr %count20, align 4, !dbg !3264
  %21 = load ptr, ptr %follower.addr, align 8, !dbg !3265
  %info21 = getelementptr inbounds %struct.link_follower, ptr %21, i32 0, i32 2, !dbg !3267
  %count22 = getelementptr inbounds %struct.link_ctl_info, ptr %info21, i32 0, i32 1, !dbg !3268
  %22 = load i32, ptr %count22, align 4, !dbg !3268
  %cmp23 = icmp sgt i32 %22, 2, !dbg !3269
  br i1 %cmp23, label %if.then30, label %lor.lhs.false, !dbg !3270

lor.lhs.false:                                    ; preds = %if.end15
  %23 = load ptr, ptr %follower.addr, align 8, !dbg !3271
  %info24 = getelementptr inbounds %struct.link_follower, ptr %23, i32 0, i32 2, !dbg !3272
  %type25 = getelementptr inbounds %struct.link_ctl_info, ptr %info24, i32 0, i32 0, !dbg !3273
  %24 = load i32, ptr %type25, align 8, !dbg !3273
  %cmp26 = icmp ne i32 %24, 2, !dbg !3274
  br i1 %cmp26, label %land.lhs.true, label %if.end32, !dbg !3275

land.lhs.true:                                    ; preds = %lor.lhs.false
  %25 = load ptr, ptr %follower.addr, align 8, !dbg !3276
  %info27 = getelementptr inbounds %struct.link_follower, ptr %25, i32 0, i32 2, !dbg !3277
  %type28 = getelementptr inbounds %struct.link_ctl_info, ptr %info27, i32 0, i32 0, !dbg !3278
  %26 = load i32, ptr %type28, align 8, !dbg !3278
  %cmp29 = icmp ne i32 %26, 1, !dbg !3279
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !3280

if.then30:                                        ; preds = %land.lhs.true, %if.end15
  br label %do.body, !dbg !3281

do.body:                                          ; preds = %if.then30
  br label %do.cond, !dbg !3284

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3284

do.end:                                           ; preds = %do.cond
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #21, !dbg !3281
  store i32 %call31, ptr %tmp, align 4, !dbg !3284
  %27 = load i32, ptr %tmp, align 4, !dbg !3281
  %28 = load ptr, ptr %uinfo, align 8, !dbg !3286
  call void @kfree(ptr noundef %28) #17, !dbg !3287
  store i32 -22, ptr %retval, align 4, !dbg !3288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3288

if.end32:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %29 = load ptr, ptr %uinfo, align 8, !dbg !3289
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %29, i32 0, i32 5, !dbg !3290
  %min = getelementptr inbounds %struct.anon.10, ptr %value, i32 0, i32 0, !dbg !3291
  %30 = load i64, ptr %min, align 8, !dbg !3291
  %conv = trunc i64 %30 to i32, !dbg !3289
  %31 = load ptr, ptr %follower.addr, align 8, !dbg !3292
  %info33 = getelementptr inbounds %struct.link_follower, ptr %31, i32 0, i32 2, !dbg !3293
  %min_val = getelementptr inbounds %struct.link_ctl_info, ptr %info33, i32 0, i32 2, !dbg !3294
  store i32 %conv, ptr %min_val, align 8, !dbg !3295
  %32 = load ptr, ptr %uinfo, align 8, !dbg !3296
  %value34 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %32, i32 0, i32 5, !dbg !3297
  %max = getelementptr inbounds %struct.anon.10, ptr %value34, i32 0, i32 1, !dbg !3298
  %33 = load i64, ptr %max, align 8, !dbg !3298
  %conv35 = trunc i64 %33 to i32, !dbg !3296
  %34 = load ptr, ptr %follower.addr, align 8, !dbg !3299
  %info36 = getelementptr inbounds %struct.link_follower, ptr %34, i32 0, i32 2, !dbg !3300
  %max_val = getelementptr inbounds %struct.link_ctl_info, ptr %info36, i32 0, i32 3, !dbg !3301
  store i32 %conv35, ptr %max_val, align 4, !dbg !3302
  %35 = load ptr, ptr %uinfo, align 8, !dbg !3303
  call void @kfree(ptr noundef %35) #17, !dbg !3304
  %36 = load ptr, ptr %follower.addr, align 8, !dbg !3305
  %call37 = call i32 @follower_update(ptr noundef %36) #17, !dbg !3306
  store i32 %call37, ptr %retval, align 4, !dbg !3307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3307

cleanup:                                          ; preds = %if.end32, %do.end, %if.then14, %if.then6, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !3308
  call void @llvm.lifetime.end.p0(i64 8, ptr %uinfo) #16, !dbg !3308
  %37 = load i32, ptr %retval, align 4, !dbg !3308
  ret i32 %37, !dbg !3308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_update(ptr noundef %follower) #0 align 16 !dbg !3309 {
entry:
  %retval = alloca i32, align 4
  %follower.addr = alloca ptr, align 8
  %uctl = alloca ptr, align 8
  %err = alloca i32, align 4
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %follower, ptr %follower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %follower.addr, metadata !3311, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 8, ptr %uctl) #16, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %uctl, metadata !3312, metadata !DIExpression()), !dbg !3318
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !3319
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3313, metadata !DIExpression()), !dbg !3320
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #16, !dbg !3319
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !3314, metadata !DIExpression()), !dbg !3321
  %call = call noalias ptr @kzalloc(i64 noundef 1224, i32 noundef 3264) #18, !dbg !3322
  store ptr %call, ptr %uctl, align 8, !dbg !3323
  %0 = load ptr, ptr %uctl, align 8, !dbg !3324
  %tobool = icmp ne ptr %0, null, !dbg !3324
  br i1 %tobool, label %if.end, label %if.then, !dbg !3326

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3327

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %uctl, align 8, !dbg !3328
  %id = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 0, !dbg !3329
  %2 = load ptr, ptr %follower.addr, align 8, !dbg !3330
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %2, i32 0, i32 6, !dbg !3331
  %id2 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower1, i32 0, i32 1, !dbg !3332
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %id, ptr align 8 %id2, i64 64, i1 false), !dbg !3332
  %3 = load ptr, ptr %follower.addr, align 8, !dbg !3333
  %follower3 = getelementptr inbounds %struct.link_follower, ptr %3, i32 0, i32 6, !dbg !3334
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %follower3, i32 0, i32 4, !dbg !3335
  %4 = load ptr, ptr %get, align 8, !dbg !3335
  %5 = load ptr, ptr %follower.addr, align 8, !dbg !3336
  %follower4 = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 6, !dbg !3337
  %6 = load ptr, ptr %uctl, align 8, !dbg !3338
  %call5 = call i32 %4(ptr noundef %follower4, ptr noundef %6) #17, !dbg !3333
  store i32 %call5, ptr %err, align 4, !dbg !3339
  %7 = load i32, ptr %err, align 4, !dbg !3340
  %cmp = icmp slt i32 %7, 0, !dbg !3342
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !3343

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !3344

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %ch, align 4, !dbg !3345
  br label %for.cond, !dbg !3347

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, ptr %ch, align 4, !dbg !3348
  %9 = load ptr, ptr %follower.addr, align 8, !dbg !3350
  %info = getelementptr inbounds %struct.link_follower, ptr %9, i32 0, i32 2, !dbg !3351
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 1, !dbg !3352
  %10 = load i32, ptr %count, align 4, !dbg !3352
  %cmp8 = icmp slt i32 %8, %10, !dbg !3353
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3354

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %uctl, align 8, !dbg !3355
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %11, i32 0, i32 2, !dbg !3356
  %12 = load i32, ptr %ch, align 4, !dbg !3357
  %idxprom = sext i32 %12 to i64, !dbg !3355
  %arrayidx = getelementptr [128 x i64], ptr %value, i64 0, i64 %idxprom, !dbg !3355
  %13 = load i64, ptr %arrayidx, align 8, !dbg !3355
  %conv = trunc i64 %13 to i32, !dbg !3355
  %14 = load ptr, ptr %follower.addr, align 8, !dbg !3358
  %vals = getelementptr inbounds %struct.link_follower, ptr %14, i32 0, i32 3, !dbg !3359
  %15 = load i32, ptr %ch, align 4, !dbg !3360
  %idxprom9 = sext i32 %15 to i64, !dbg !3358
  %arrayidx10 = getelementptr [2 x i32], ptr %vals, i64 0, i64 %idxprom9, !dbg !3358
  store i32 %conv, ptr %arrayidx10, align 4, !dbg !3361
  br label %for.inc, !dbg !3358

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %ch, align 4, !dbg !3362
  %inc = add i32 %16, 1, !dbg !3362
  store i32 %inc, ptr %ch, align 4, !dbg !3362
  br label %for.cond, !dbg !3363, !llvm.loop !3364

for.end:                                          ; preds = %for.cond
  br label %error, !dbg !3365

error:                                            ; preds = %for.end, %if.then6
  call void @llvm.dbg.label(metadata !3315), !dbg !3366
  %17 = load ptr, ptr %uctl, align 8, !dbg !3367
  call void @kfree(ptr noundef %17) #17, !dbg !3368
  %18 = load i32, ptr %err, align 4, !dbg !3369
  %cmp11 = icmp slt i32 %18, 0, !dbg !3370
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !3369

cond.true:                                        ; preds = %error
  %19 = load i32, ptr %err, align 4, !dbg !3371
  br label %cond.end, !dbg !3369

cond.false:                                       ; preds = %error
  br label %cond.end, !dbg !3369

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ], !dbg !3369
  store i32 %cond, ptr %retval, align 4, !dbg !3372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3372

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #16, !dbg !3373
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !3373
  call void @llvm.lifetime.end.p0(i64 8, ptr %uctl) #16, !dbg !3373
  %20 = load i32, ptr %retval, align 4, !dbg !3373
  ret i32 %20, !dbg !3373
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3374 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @follower_put_val(ptr noundef %follower, ptr noundef %ucontrol) #0 align 16 !dbg !3378 {
entry:
  %retval = alloca i32, align 4
  %follower.addr = alloca ptr, align 8
  %ucontrol.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %ch = alloca i32, align 4
  %vol = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %follower, ptr %follower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %follower.addr, metadata !3380, metadata !DIExpression()), !dbg !3385
  store ptr %ucontrol, ptr %ucontrol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucontrol.addr, metadata !3381, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3382, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #16, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !3383, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 4, ptr %vol) #16, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %vol, metadata !3384, metadata !DIExpression()), !dbg !3390
  %0 = load ptr, ptr %follower.addr, align 8, !dbg !3391
  %master = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 1, !dbg !3392
  %1 = load ptr, ptr %master, align 8, !dbg !3392
  %call = call i32 @master_init(ptr noundef %1) #17, !dbg !3393
  store i32 %call, ptr %err, align 4, !dbg !3394
  %2 = load i32, ptr %err, align 4, !dbg !3395
  %cmp = icmp slt i32 %2, 0, !dbg !3397
  br i1 %cmp, label %if.then, label %if.end, !dbg !3398

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !3399
  store i32 %3, ptr %retval, align 4, !dbg !3400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3400

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %follower.addr, align 8, !dbg !3401
  %info = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 2, !dbg !3402
  %type = getelementptr inbounds %struct.link_ctl_info, ptr %info, i32 0, i32 0, !dbg !3403
  %5 = load i32, ptr %type, align 8, !dbg !3403
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ], !dbg !3404

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %ch, align 4, !dbg !3405
  br label %for.cond, !dbg !3408

for.cond:                                         ; preds = %for.inc, %sw.bb
  %6 = load i32, ptr %ch, align 4, !dbg !3409
  %7 = load ptr, ptr %follower.addr, align 8, !dbg !3411
  %info1 = getelementptr inbounds %struct.link_follower, ptr %7, i32 0, i32 2, !dbg !3412
  %count = getelementptr inbounds %struct.link_ctl_info, ptr %info1, i32 0, i32 1, !dbg !3413
  %8 = load i32, ptr %count, align 4, !dbg !3413
  %cmp2 = icmp slt i32 %6, %8, !dbg !3414
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3415

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %follower.addr, align 8, !dbg !3416
  %master3 = getelementptr inbounds %struct.link_follower, ptr %9, i32 0, i32 1, !dbg !3417
  %10 = load ptr, ptr %master3, align 8, !dbg !3417
  %val = getelementptr inbounds %struct.link_master, ptr %10, i32 0, i32 2, !dbg !3418
  %11 = load i32, ptr %val, align 8, !dbg !3418
  %tobool = icmp ne i32 %11, 0, !dbg !3419
  %lnot = xor i1 %tobool, true, !dbg !3419
  %lnot4 = xor i1 %lnot, true, !dbg !3420
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3420
  %conv = sext i32 %lnot.ext to i64, !dbg !3420
  %12 = load ptr, ptr %ucontrol.addr, align 8, !dbg !3421
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %12, i32 0, i32 2, !dbg !3422
  %13 = load i32, ptr %ch, align 4, !dbg !3423
  %idxprom = sext i32 %13 to i64, !dbg !3421
  %arrayidx = getelementptr [128 x i64], ptr %value, i64 0, i64 %idxprom, !dbg !3421
  %14 = load i64, ptr %arrayidx, align 8, !dbg !3424
  %and = and i64 %14, %conv, !dbg !3424
  store i64 %and, ptr %arrayidx, align 8, !dbg !3424
  br label %for.inc, !dbg !3421

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %ch, align 4, !dbg !3425
  %inc = add i32 %15, 1, !dbg !3425
  store i32 %inc, ptr %ch, align 4, !dbg !3425
  br label %for.cond, !dbg !3426, !llvm.loop !3427

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !3429

sw.bb5:                                           ; preds = %if.end
  store i32 0, ptr %ch, align 4, !dbg !3430
  br label %for.cond6, !dbg !3432

for.cond6:                                        ; preds = %for.inc39, %sw.bb5
  %16 = load i32, ptr %ch, align 4, !dbg !3433
  %17 = load ptr, ptr %follower.addr, align 8, !dbg !3435
  %info7 = getelementptr inbounds %struct.link_follower, ptr %17, i32 0, i32 2, !dbg !3436
  %count8 = getelementptr inbounds %struct.link_ctl_info, ptr %info7, i32 0, i32 1, !dbg !3437
  %18 = load i32, ptr %count8, align 4, !dbg !3437
  %cmp9 = icmp slt i32 %16, %18, !dbg !3438
  br i1 %cmp9, label %for.body11, label %for.end41, !dbg !3439

for.body11:                                       ; preds = %for.cond6
  %19 = load ptr, ptr %ucontrol.addr, align 8, !dbg !3440
  %value12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %19, i32 0, i32 2, !dbg !3442
  %20 = load i32, ptr %ch, align 4, !dbg !3443
  %idxprom13 = sext i32 %20 to i64, !dbg !3440
  %arrayidx14 = getelementptr [128 x i64], ptr %value12, i64 0, i64 %idxprom13, !dbg !3440
  %21 = load i64, ptr %arrayidx14, align 8, !dbg !3440
  %conv15 = trunc i64 %21 to i32, !dbg !3440
  store i32 %conv15, ptr %vol, align 4, !dbg !3444
  %22 = load ptr, ptr %follower.addr, align 8, !dbg !3445
  %master16 = getelementptr inbounds %struct.link_follower, ptr %22, i32 0, i32 1, !dbg !3446
  %23 = load ptr, ptr %master16, align 8, !dbg !3446
  %val17 = getelementptr inbounds %struct.link_master, ptr %23, i32 0, i32 2, !dbg !3447
  %24 = load i32, ptr %val17, align 8, !dbg !3447
  %25 = load ptr, ptr %follower.addr, align 8, !dbg !3448
  %master18 = getelementptr inbounds %struct.link_follower, ptr %25, i32 0, i32 1, !dbg !3449
  %26 = load ptr, ptr %master18, align 8, !dbg !3449
  %info19 = getelementptr inbounds %struct.link_master, ptr %26, i32 0, i32 1, !dbg !3450
  %max_val = getelementptr inbounds %struct.link_ctl_info, ptr %info19, i32 0, i32 3, !dbg !3451
  %27 = load i32, ptr %max_val, align 4, !dbg !3451
  %sub = sub i32 %24, %27, !dbg !3452
  %28 = load i32, ptr %vol, align 4, !dbg !3453
  %add = add i32 %28, %sub, !dbg !3453
  store i32 %add, ptr %vol, align 4, !dbg !3453
  %29 = load i32, ptr %vol, align 4, !dbg !3454
  %30 = load ptr, ptr %follower.addr, align 8, !dbg !3456
  %info20 = getelementptr inbounds %struct.link_follower, ptr %30, i32 0, i32 2, !dbg !3457
  %min_val = getelementptr inbounds %struct.link_ctl_info, ptr %info20, i32 0, i32 2, !dbg !3458
  %31 = load i32, ptr %min_val, align 8, !dbg !3458
  %cmp21 = icmp slt i32 %29, %31, !dbg !3459
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !3460

if.then23:                                        ; preds = %for.body11
  %32 = load ptr, ptr %follower.addr, align 8, !dbg !3461
  %info24 = getelementptr inbounds %struct.link_follower, ptr %32, i32 0, i32 2, !dbg !3462
  %min_val25 = getelementptr inbounds %struct.link_ctl_info, ptr %info24, i32 0, i32 2, !dbg !3463
  %33 = load i32, ptr %min_val25, align 8, !dbg !3463
  store i32 %33, ptr %vol, align 4, !dbg !3464
  br label %if.end34, !dbg !3465

if.else:                                          ; preds = %for.body11
  %34 = load i32, ptr %vol, align 4, !dbg !3466
  %35 = load ptr, ptr %follower.addr, align 8, !dbg !3468
  %info26 = getelementptr inbounds %struct.link_follower, ptr %35, i32 0, i32 2, !dbg !3469
  %max_val27 = getelementptr inbounds %struct.link_ctl_info, ptr %info26, i32 0, i32 3, !dbg !3470
  %36 = load i32, ptr %max_val27, align 4, !dbg !3470
  %cmp28 = icmp sgt i32 %34, %36, !dbg !3471
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !3472

if.then30:                                        ; preds = %if.else
  %37 = load ptr, ptr %follower.addr, align 8, !dbg !3473
  %info31 = getelementptr inbounds %struct.link_follower, ptr %37, i32 0, i32 2, !dbg !3474
  %max_val32 = getelementptr inbounds %struct.link_ctl_info, ptr %info31, i32 0, i32 3, !dbg !3475
  %38 = load i32, ptr %max_val32, align 4, !dbg !3475
  store i32 %38, ptr %vol, align 4, !dbg !3476
  br label %if.end33, !dbg !3477

if.end33:                                         ; preds = %if.then30, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then23
  %39 = load i32, ptr %vol, align 4, !dbg !3478
  %conv35 = sext i32 %39 to i64, !dbg !3478
  %40 = load ptr, ptr %ucontrol.addr, align 8, !dbg !3479
  %value36 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %40, i32 0, i32 2, !dbg !3480
  %41 = load i32, ptr %ch, align 4, !dbg !3481
  %idxprom37 = sext i32 %41 to i64, !dbg !3479
  %arrayidx38 = getelementptr [128 x i64], ptr %value36, i64 0, i64 %idxprom37, !dbg !3479
  store i64 %conv35, ptr %arrayidx38, align 8, !dbg !3482
  br label %for.inc39, !dbg !3483

for.inc39:                                        ; preds = %if.end34
  %42 = load i32, ptr %ch, align 4, !dbg !3484
  %inc40 = add i32 %42, 1, !dbg !3484
  store i32 %inc40, ptr %ch, align 4, !dbg !3484
  br label %for.cond6, !dbg !3485, !llvm.loop !3486

for.end41:                                        ; preds = %for.cond6
  br label %sw.epilog, !dbg !3488

sw.epilog:                                        ; preds = %if.end, %for.end41, %for.end
  %43 = load ptr, ptr %follower.addr, align 8, !dbg !3489
  %follower42 = getelementptr inbounds %struct.link_follower, ptr %43, i32 0, i32 6, !dbg !3490
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %follower42, i32 0, i32 5, !dbg !3491
  %44 = load ptr, ptr %put, align 8, !dbg !3491
  %45 = load ptr, ptr %follower.addr, align 8, !dbg !3492
  %follower43 = getelementptr inbounds %struct.link_follower, ptr %45, i32 0, i32 6, !dbg !3493
  %46 = load ptr, ptr %ucontrol.addr, align 8, !dbg !3494
  %call44 = call i32 %44(ptr noundef %follower43, ptr noundef %46) #17, !dbg !3489
  store i32 %call44, ptr %retval, align 4, !dbg !3495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3495

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %vol) #16, !dbg !3496
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #16, !dbg !3496
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !3496
  %47 = load i32, ptr %retval, align 4, !dbg !3496
  ret i32 %47, !dbg !3496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !3497 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3501
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !3502
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3503
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3504
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !3505
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3506
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3507
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !3508
  ret void, !dbg !3509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !3510 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3514
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !3516
  br i1 %call, label %if.end, label %if.then, !dbg !3517

if.then:                                          ; preds = %entry
  br label %return, !dbg !3518

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3519
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3520
  %2 = load ptr, ptr %prev, align 8, !dbg !3520
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3521
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3522
  %4 = load ptr, ptr %next, align 8, !dbg !3522
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !3523
  br label %return, !dbg !3524

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !3525 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  ret i1 true, !dbg !3531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3532 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3534, metadata !DIExpression()), !dbg !3536
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3535, metadata !DIExpression()), !dbg !3537
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3538
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3539
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3540
  store ptr %0, ptr %prev1, align 8, !dbg !3541
  br label %do.body, !dbg !3542

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3543

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3545

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3543

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3547
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3547
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3547
  store volatile ptr %2, ptr %next4, align 8, !dbg !3547
  br label %do.end5, !dbg !3547

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3543

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3550 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3554, metadata !DIExpression()), !dbg !3557
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3555, metadata !DIExpression()), !dbg !3558
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3556, metadata !DIExpression()), !dbg !3559
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3560
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3562
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3563
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !3564
  br i1 %call, label %if.end, label %if.then, !dbg !3565

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3566

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3567
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3568
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3569
  store ptr %3, ptr %prev1, align 8, !dbg !3570
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3571
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3572
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3573
  store ptr %5, ptr %next2, align 8, !dbg !3574
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3575
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3576
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3577
  store ptr %7, ptr %prev3, align 8, !dbg !3578
  br label %do.body, !dbg !3579

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3580

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3582

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3580

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3584
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3584
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3584
  store volatile ptr %9, ptr %next6, align 8, !dbg !3584
  br label %do.end7, !dbg !3584

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3580

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3587 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3591, metadata !DIExpression()), !dbg !3594
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3592, metadata !DIExpression()), !dbg !3595
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3593, metadata !DIExpression()), !dbg !3596
  ret i1 true, !dbg !3597
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3598 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3602 dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }
attributes #21 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!llvm.ident = !{!1909}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__snd_ctl_add_follower211", scope: !2, file: !3, line: 281, type: !96, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.vmaster.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22vmaster\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/vmaster.ll sound/core/vmaster.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !1880, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/vmaster.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28ad640449c06869ce29be929f3be21f")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !83}
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 10, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "false", value: 0)
!82 = !DIEnumerator(name: "true", value: 1)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !84, line: 364, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!87 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!88 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!89 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!90 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!91 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!92 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!93 = !{!46, !94, !96, !97, !99, !283, !461, !117, !1878}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !95, line: 154, baseType: !7)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_ctl_elem_iface_t", file: !98, line: 1062, baseType: !46)
!98 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link_follower", file: !3, line: 47, size: 1664, elements: !101)
!101 = !{!102, !108, !131, !132, !136, !137, !1877}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !100, file: !3, line: 48, baseType: !103, size: 128)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !95, line: 190, size: 128, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !95, line: 191, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !95, line: 191, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !100, file: !3, line: 49, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link_master", file: !3, line: 31, size: 576, elements: !111)
!111 = !{!112, !113, !121, !122, !126, !130}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "followers", scope: !110, file: !3, line: 32, baseType: !103, size: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !110, file: !3, line: 33, baseType: !114, size: 128, offset: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link_ctl_info", file: !3, line: 17, size: 128, elements: !115)
!115 = !{!116, !118, !119, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !3, line: 18, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_ctl_elem_type_t", file: !98, line: 1052, baseType: !46)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !114, file: !3, line: 19, baseType: !46, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "min_val", scope: !114, file: !3, line: 20, baseType: !46, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "max_val", scope: !114, file: !3, line: 20, baseType: !46, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !3, line: 34, baseType: !46, size: 32, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tlv", scope: !110, file: !3, line: 35, baseType: !123, size: 128, offset: 288)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !110, file: !3, line: 36, baseType: !127, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !96, !46}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "hook_private_data", scope: !110, file: !3, line: 37, baseType: !96, size: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !100, file: !3, line: 50, baseType: !114, size: 128, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !100, file: !3, line: 51, baseType: !133, size: 64, offset: 320)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !3, line: 52, baseType: !7, size: 32, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "kctl", scope: !100, file: !3, line: 53, baseType: !138, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol", file: !140, line: 70, size: 1152, elements: !141)
!140 = !DIFile(filename: "./include/sound/control.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f703a7092b118ff56838453fb210fcb6")
!141 = !{!142, !143, !156, !157, !210, !268, !271, !282, !284, !285, !289}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !139, file: !140, line: 71, baseType: !103, size: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !139, file: !140, line: 72, baseType: !144, size: 512, offset: 128)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_elem_id", file: !98, line: 1098, size: 512, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !155}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "numid", scope: !144, file: !98, line: 1099, baseType: !7, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !144, file: !98, line: 1100, baseType: !97, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !144, file: !98, line: 1101, baseType: !7, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !144, file: !98, line: 1102, baseType: !7, size: 32, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !98, line: 1103, baseType: !151, size: 352, offset: 128)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 352, elements: !153)
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !{!154}
!154 = !DISubrange(count: 44)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !144, file: !98, line: 1104, baseType: !7, size: 32, offset: 480)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !140, line: 73, baseType: !7, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !139, file: !140, line: 74, baseType: !158, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_info_t", file: !140, line: 17, baseType: !160)
!160 = !DISubroutineType(types: !161)
!161 = !{!46, !138, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_elem_info", file: !98, line: 1116, size: 2176, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !172, !208}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !163, file: !98, line: 1117, baseType: !144, size: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !98, line: 1118, baseType: !117, size: 32, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !163, file: !98, line: 1119, baseType: !7, size: 32, offset: 544)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !163, file: !98, line: 1120, baseType: !7, size: 32, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !163, file: !98, line: 1121, baseType: !170, size: 32, offset: 608)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !171, line: 28, baseType: !46)
!171 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !163, file: !98, line: 1141, baseType: !173, size: 1024, offset: 640)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !98, line: 1122, size: 1024, elements: !174)
!174 = !{!175, !182, !189, !204}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !173, file: !98, line: 1127, baseType: !176, size: 192)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !98, line: 1123, size: 192, elements: !177)
!177 = !{!178, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !176, file: !98, line: 1124, baseType: !179, size: 64)
!179 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !176, file: !98, line: 1125, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !176, file: !98, line: 1126, baseType: !179, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "integer64", scope: !173, file: !98, line: 1132, baseType: !183, size: 192)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !98, line: 1128, size: 192, elements: !184)
!184 = !{!185, !187, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !183, file: !98, line: 1129, baseType: !186, size: 64)
!186 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !183, file: !98, line: 1130, baseType: !186, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !183, file: !98, line: 1131, baseType: !186, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !173, file: !98, line: 1139, baseType: !190, size: 704)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !98, line: 1133, size: 704, elements: !191)
!191 = !{!192, !193, !194, !199, !203}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !190, file: !98, line: 1134, baseType: !7, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !190, file: !98, line: 1135, baseType: !7, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !98, line: 1136, baseType: !195, size: 512, offset: 64)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, elements: !197)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !{!198}
!198 = !DISubrange(count: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "names_ptr", scope: !190, file: !98, line: 1137, baseType: !200, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !201, line: 31, baseType: !202)
!201 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!202 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "names_length", scope: !190, file: !98, line: 1138, baseType: !7, size: 32, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !173, file: !98, line: 1140, baseType: !205, size: 1024)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !163, file: !98, line: 1142, baseType: !209, size: 512, offset: 1664)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 512, elements: !197)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !139, file: !140, line: 75, baseType: !211, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_get_t", file: !140, line: 18, baseType: !213)
!213 = !DISubroutineType(types: !214)
!214 = !{!46, !138, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_elem_value", file: !98, line: 1145, size: 9792, elements: !217)
!217 = !{!218, !219, !220, !267}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !98, line: 1146, baseType: !144, size: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "indirect", scope: !216, file: !98, line: 1147, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !98, line: 1166, baseType: !221, size: 8192, offset: 576)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !98, line: 1148, size: 8192, elements: !222)
!222 = !{!223, !230, !237, !244, !253}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !221, file: !98, line: 1152, baseType: !224, size: 8192)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !98, line: 1149, size: 8192, elements: !225)
!225 = !{!226, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !98, line: 1150, baseType: !227, size: 8192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 8192, elements: !206)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value_ptr", scope: !224, file: !98, line: 1151, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "integer64", scope: !221, file: !98, line: 1156, baseType: !231, size: 4096)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !98, line: 1153, size: 4096, elements: !232)
!232 = !{!233, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !231, file: !98, line: 1154, baseType: !234, size: 4096)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 4096, elements: !197)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value_ptr", scope: !231, file: !98, line: 1155, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !221, file: !98, line: 1160, baseType: !238, size: 4096)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !98, line: 1157, size: 4096, elements: !239)
!239 = !{!240, !242}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !238, file: !98, line: 1158, baseType: !241, size: 4096)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4096, elements: !206)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "item_ptr", scope: !238, file: !98, line: 1159, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !221, file: !98, line: 1164, baseType: !245, size: 4096)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !98, line: 1161, size: 4096, elements: !246)
!246 = !{!247, !251}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !245, file: !98, line: 1162, baseType: !248, size: 4096)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 4096, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !245, file: !98, line: 1163, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "iec958", scope: !221, file: !98, line: 1165, baseType: !254, size: 1408)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_aes_iec958", file: !98, line: 45, size: 1408, elements: !255)
!255 = !{!256, !260, !264, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !254, file: !98, line: 46, baseType: !257, size: 192)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 24)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !254, file: !98, line: 47, baseType: !261, size: 1176, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1176, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 147)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !254, file: !98, line: 48, baseType: !152, size: 8, offset: 1368)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dig_subframe", scope: !254, file: !98, line: 49, baseType: !266, size: 32, offset: 1376)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 32, elements: !124)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !216, file: !98, line: 1167, baseType: !205, size: 1024, offset: 8768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !139, file: !140, line: 76, baseType: !269, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_put_t", file: !140, line: 19, baseType: !213)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tlv", scope: !139, file: !140, line: 80, baseType: !272, size: 64, offset: 896)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !140, line: 77, size: 64, elements: !273)
!273 = !{!274, !279}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !272, file: !140, line: 78, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_tlv_rw_t", file: !140, line: 20, baseType: !277)
!277 = !DISubroutineType(types: !278)
!278 = !{!46, !138, !46, !7, !243}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !272, file: !140, line: 79, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "private_value", scope: !139, file: !140, line: 81, baseType: !283, size: 64, offset: 960)
!283 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !139, file: !140, line: 82, baseType: !96, size: 64, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !139, file: !140, line: 83, baseType: !286, size: 64, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !138}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vd", scope: !139, file: !140, line: 84, baseType: !290, offset: 1152)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, elements: !742)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol_volatile", file: !140, line: 65, size: 128, elements: !292)
!292 = !{!293, !1876}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !291, file: !140, line: 66, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_file", file: !140, line: 105, size: 832, elements: !296)
!296 = !{!297, !298, !1844, !1868, !1869, !1870, !1871, !1874, !1875}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !295, file: !140, line: 106, baseType: !103, size: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !295, file: !140, line: 107, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !301, line: 80, size: 12288, elements: !302)
!301 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!302 = !{!303, !304, !308, !309, !313, !317, !318, !319, !321, !1344, !1345, !1349, !1350, !1780, !1781, !1782, !1803, !1804, !1805, !1806, !1807, !1814, !1815, !1816, !1819, !1822, !1823, !1826, !1827, !1828, !1829, !1830, !1831, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !300, file: !301, line: 81, baseType: !46, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !300, file: !301, line: 84, baseType: !305, size: 128, offset: 32)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !300, file: !301, line: 85, baseType: !305, size: 128, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !300, file: !301, line: 86, baseType: !310, size: 256, offset: 288)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !300, file: !301, line: 87, baseType: !314, size: 640, offset: 544)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 640, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !300, file: !301, line: 88, baseType: !310, size: 256, offset: 1184)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !300, file: !301, line: 89, baseType: !314, size: 640, offset: 1440)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !300, file: !301, line: 90, baseType: !320, size: 1024, offset: 2080)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !206)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !300, file: !301, line: 92, baseType: !322, size: 64, offset: 3136)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !324)
!324 = !{!325, !326, !327, !331, !1000, !1026, !1027, !1028, !1029, !1033, !1036, !1037, !1038, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1100, !1104, !1122, !1140, !1141, !1142, !1143, !1152, !1176, !1177, !1180, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1194, !1195, !1302, !1310, !1311, !1312, !1314, !1318, !1319, !1323, !1324, !1325, !1326, !1328, !1329, !1330, !1337, !1338, !1339, !1343}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !6, line: 403, baseType: !5, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !323, file: !6, line: 406, baseType: !103, size: 128, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !6, line: 409, baseType: !328, size: 448, offset: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 448, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 56)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !323, file: !6, line: 417, baseType: !332, size: 768, offset: 640)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !333)
!333 = !{!334, !983, !984, !985, !988}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !332, file: !6, line: 46, baseType: !335, size: 512)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !336, line: 64, size: 512, elements: !337)
!336 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!337 = !{!338, !341, !342, !344, !429, !853, !968, !978, !979, !980, !981, !982}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !336, line: 65, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !335, file: !336, line: 66, baseType: !103, size: 128, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !335, file: !336, line: 67, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !335, file: !336, line: 68, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !336, line: 168, size: 768, elements: !347)
!347 = !{!348, !349, !390, !391}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !346, file: !336, line: 169, baseType: !103, size: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !346, file: !336, line: 170, baseType: !350, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !351, line: 29, baseType: !352)
!351 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !351, line: 17, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !351, line: 18, baseType: !355, size: 32)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !351, line: 18, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !355, file: !351, line: 19, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !359, line: 14, size: 32, elements: !360)
!359 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !358, file: !359, line: 15, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !363, line: 44, baseType: !364)
!363 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !363, line: 14, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !363, line: 15, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !363, line: 15, size: 32, elements: !368)
!368 = !{!369, !374, !382}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !367, file: !363, line: 16, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !95, line: 174, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 172, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !371, file: !95, line: 173, baseType: !46, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !363, line: 24, baseType: !375, size: 16)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !363, line: 24, size: 16, elements: !376)
!376 = !{!377, !381}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !375, file: !363, line: 25, baseType: !378, size: 8)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !379, line: 17, baseType: !380)
!379 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !201, line: 21, baseType: !152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !375, file: !363, line: 26, baseType: !378, size: 8, offset: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !363, line: 28, baseType: !383, size: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !363, line: 28, size: 32, elements: !384)
!384 = !{!385, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !383, file: !363, line: 29, baseType: !386, size: 16)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !379, line: 19, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !201, line: 24, baseType: !388)
!388 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !383, file: !363, line: 30, baseType: !386, size: 16, offset: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !346, file: !336, line: 171, baseType: !335, size: 512, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !346, file: !336, line: 172, baseType: !392, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !336, line: 133, size: 192, elements: !395)
!395 = !{!396, !403, !408}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !394, file: !336, line: 134, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!46, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !336, line: 135, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!339, !401}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !394, file: !336, line: 136, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!46, !401, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !336, line: 125, size: 20736, elements: !415)
!415 = !{!416, !421, !423, !424, !428}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !414, file: !336, line: 126, baseType: !417, size: 192)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 192, elements: !419)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!419 = !{!420}
!420 = !DISubrange(count: 3)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !414, file: !336, line: 127, baseType: !422, size: 4096, offset: 192)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 4096, elements: !197)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !414, file: !336, line: 128, baseType: !46, size: 32, offset: 4288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !414, file: !336, line: 129, baseType: !425, size: 16384, offset: 4320)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 16384, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 2048)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !414, file: !336, line: 130, baseType: !46, size: 32, offset: 20704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !335, file: !336, line: 69, baseType: !430, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !336, line: 116, size: 384, elements: !433)
!433 = !{!434, !438, !464, !799, !830, !834}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !432, file: !336, line: 117, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !343}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !432, file: !336, line: 118, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !442, line: 254, size: 128, elements: !443)
!442 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!443 = !{!444, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !441, file: !442, line: 255, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !343, !451, !418}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 66, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !171, line: 73, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !171, line: 15, baseType: !179)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !442, line: 30, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !442, line: 31, baseType: !339, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !452, file: !442, line: 32, baseType: !456, size: 16, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !95, line: 24, baseType: !388)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !441, file: !442, line: 256, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!448, !343, !451, !339, !461}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 61, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !171, line: 72, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !171, line: 16, baseType: !283)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !432, file: !336, line: 119, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !442, line: 84, size: 320, elements: !469)
!469 = !{!470, !471, !475, !795, !797}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !442, line: 85, baseType: !339, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !468, file: !442, line: 86, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!456, !343, !451, !46}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !468, file: !442, line: 88, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!456, !343, !479, !46}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !442, line: 175, size: 512, elements: !481)
!481 = !{!482, !483, !484, !485, !492, !501, !502}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !480, file: !442, line: 176, baseType: !452, size: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !480, file: !442, line: 177, baseType: !461, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !480, file: !442, line: 178, baseType: !96, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !480, file: !442, line: 179, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !491, line: 32, flags: DIFlagFwdDecl)
!491 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !480, file: !442, line: 180, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!448, !496, !343, !479, !418, !499, !461}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !498, line: 537, flags: DIFlagFwdDecl)
!498 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !95, line: 52, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !171, line: 88, baseType: !186)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !480, file: !442, line: 182, baseType: !493, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !480, file: !442, line: 184, baseType: !503, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!46, !496, !343, !479, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !491, line: 625, size: 1344, elements: !508)
!508 = !{!509, !526, !744, !750, !757, !758, !763, !766, !778, !779, !782, !786, !787, !788, !789, !790, !793}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !491, line: 628, baseType: !510, size: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !491, line: 628, size: 128, elements: !511)
!511 = !{!512, !517}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !491, line: 629, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !491, line: 629, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !513, file: !491, line: 631, baseType: !283, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !513, file: !491, line: 632, baseType: !283, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !510, file: !491, line: 635, baseType: !518, size: 128, align: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !95, line: 232, size: 128, align: 64, elements: !519)
!519 = !{!520, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !95, line: 233, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !518, file: !95, line: 234, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !521}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !507, file: !491, line: 639, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !491, line: 733, size: 10240, elements: !529)
!529 = !{!530, !740}
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !491, line: 734, baseType: !531, size: 10240)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !491, line: 734, size: 10240, elements: !532)
!532 = !{!533, !537, !551, !555, !556, !557, !558, !559, !560, !568, !569, !570, !577, !578, !587, !588, !589, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !636, !648, !651, !706, !707, !708, !711, !714, !715, !718, !719, !720, !727, !728}
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !491, line: 739, baseType: !534, size: 512, align: 512)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !491, line: 739, size: 512, align: 512, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !534, file: !491, line: 747, baseType: !370, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !531, file: !491, line: 750, baseType: !538, size: 128, offset: 512)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !539, line: 218, size: 128, elements: !540)
!539 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!540 = !{!541, !549, !550}
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !539, line: 219, baseType: !542, size: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 219, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !542, file: !539, line: 220, baseType: !350, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !542, file: !539, line: 221, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !539, line: 197, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 197, elements: !548)
!548 = !{}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !538, file: !539, line: 223, baseType: !7, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !538, file: !539, line: 224, baseType: !96, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !531, file: !491, line: 752, baseType: !552, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!283, !496, !283, !283, !283, !283}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !531, file: !491, line: 756, baseType: !283, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !531, file: !491, line: 757, baseType: !283, size: 64, offset: 768)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !531, file: !491, line: 760, baseType: !283, size: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !531, file: !491, line: 761, baseType: !283, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !531, file: !491, line: 763, baseType: !283, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !531, file: !491, line: 764, baseType: !561, size: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !498, line: 299, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 299, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !563, file: !498, line: 299, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !567, line: 18, baseType: !283)
!567 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !531, file: !491, line: 773, baseType: !370, size: 32, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !531, file: !491, line: 785, baseType: !370, size: 32, offset: 1120)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !531, file: !491, line: 795, baseType: !571, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !491, line: 726, size: 128, elements: !573)
!573 = !{!574, !576}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !572, file: !491, line: 727, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !379, line: 23, baseType: !200)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !572, file: !491, line: 728, baseType: !46, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !531, file: !491, line: 801, baseType: !283, size: 64, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !531, file: !491, line: 804, baseType: !579, size: 64, offset: 1280)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !580, line: 13, baseType: !581)
!580 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !95, line: 181, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 179, size: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !582, file: !95, line: 180, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !379, line: 22, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !201, line: 30, baseType: !186)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !531, file: !491, line: 806, baseType: !46, size: 32, offset: 1344)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !531, file: !491, line: 808, baseType: !350, size: 32, offset: 1376)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !531, file: !491, line: 823, baseType: !590, size: 320, offset: 1408)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !591, line: 48, size: 320, elements: !592)
!591 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!592 = !{!593, !594, !595, !600, !602}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !590, file: !591, line: 49, baseType: !579, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !590, file: !591, line: 55, baseType: !579, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !590, file: !591, line: 57, baseType: !596, size: 32, offset: 128)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !597, line: 15, size: 32, elements: !598)
!597 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !596, file: !597, line: 20, baseType: !370, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !590, file: !591, line: 59, baseType: !601, size: 32, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !359, line: 23, baseType: !358)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !590, file: !591, line: 60, baseType: !103, size: 128, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !531, file: !491, line: 825, baseType: !103, size: 128, offset: 1728)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !531, file: !491, line: 845, baseType: !46, size: 32, offset: 1856)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !531, file: !491, line: 849, baseType: !283, size: 64, offset: 1920)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !531, file: !491, line: 850, baseType: !283, size: 64, offset: 1984)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !531, file: !491, line: 852, baseType: !283, size: 64, offset: 2048)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !531, file: !491, line: 853, baseType: !283, size: 64, offset: 2112)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !531, file: !491, line: 854, baseType: !581, size: 64, offset: 2176)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !531, file: !491, line: 855, baseType: !283, size: 64, offset: 2240)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !531, file: !491, line: 856, baseType: !283, size: 64, offset: 2304)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !531, file: !491, line: 857, baseType: !283, size: 64, offset: 2368)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !531, file: !491, line: 858, baseType: !283, size: 64, offset: 2432)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !531, file: !491, line: 865, baseType: !615, size: 32, offset: 2496)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !616, line: 69, baseType: !617)
!616 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !616, line: 64, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !617, file: !616, line: 65, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !531, file: !491, line: 867, baseType: !350, size: 32, offset: 2528)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !531, file: !491, line: 869, baseType: !283, size: 64, offset: 2560)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !531, file: !491, line: 869, baseType: !283, size: 64, offset: 2624)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !531, file: !491, line: 869, baseType: !283, size: 64, offset: 2688)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !531, file: !491, line: 869, baseType: !283, size: 64, offset: 2752)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !531, file: !491, line: 870, baseType: !283, size: 64, offset: 2816)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !531, file: !491, line: 870, baseType: !283, size: 64, offset: 2880)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !531, file: !491, line: 870, baseType: !283, size: 64, offset: 2944)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !531, file: !491, line: 871, baseType: !283, size: 64, offset: 3008)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !531, file: !491, line: 871, baseType: !283, size: 64, offset: 3072)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !531, file: !491, line: 871, baseType: !283, size: 64, offset: 3136)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !531, file: !491, line: 871, baseType: !283, size: 64, offset: 3200)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !531, file: !491, line: 873, baseType: !633, size: 3328, offset: 3264)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 3328, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 52)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !531, file: !491, line: 875, baseType: !637, size: 1280, offset: 6592)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 1280, elements: !124)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !639, line: 22, size: 320, elements: !640)
!639 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!640 = !{!641, !642, !643, !644}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !638, file: !639, line: 23, baseType: !601, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !638, file: !639, line: 24, baseType: !585, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !638, file: !639, line: 26, baseType: !103, size: 128, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !638, file: !639, line: 28, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !379, line: 20, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !201, line: 26, baseType: !46)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !531, file: !491, line: 877, baseType: !649, size: 64, offset: 7872)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !491, line: 877, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !491, line: 880, baseType: !652, size: 1088, offset: 7936)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !653, line: 72, baseType: !654)
!653 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 23, size: 1088, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !663, !664, !672, !673, !700, !701, !702}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !654, file: !653, line: 28, baseType: !575, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !654, file: !653, line: 38, baseType: !581, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !654, file: !653, line: 40, baseType: !283, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !654, file: !653, line: 43, baseType: !590, size: 320, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !654, file: !653, line: 44, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !653, line: 44, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !653, line: 48, baseType: !283, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !653, line: 59, baseType: !665, size: 256, offset: 640)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !666, line: 66, size: 256, elements: !667)
!666 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!667 = !{!668, !669, !670, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !665, file: !666, line: 67, baseType: !579, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !665, file: !666, line: 68, baseType: !601, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !665, file: !666, line: 70, baseType: !596, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !665, file: !666, line: 72, baseType: !103, size: 128, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !654, file: !653, line: 60, baseType: !96, size: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !654, file: !653, line: 61, baseType: !674, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !677, line: 13, size: 1216, elements: !678)
!677 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !676, file: !677, line: 14, baseType: !96, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !676, file: !677, line: 15, baseType: !283, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !676, file: !677, line: 17, baseType: !283, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !676, file: !677, line: 17, baseType: !283, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !676, file: !677, line: 18, baseType: !283, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !676, file: !677, line: 18, baseType: !283, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !676, file: !677, line: 19, baseType: !686, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !676, file: !677, line: 21, baseType: !179, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !676, file: !677, line: 23, baseType: !179, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !676, file: !677, line: 24, baseType: !179, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !676, file: !677, line: 25, baseType: !179, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !676, file: !677, line: 26, baseType: !179, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !676, file: !677, line: 27, baseType: !179, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !676, file: !677, line: 28, baseType: !179, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !676, file: !677, line: 29, baseType: !179, size: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !676, file: !677, line: 30, baseType: !179, size: 64, offset: 960)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !676, file: !677, line: 31, baseType: !179, size: 64, offset: 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !676, file: !677, line: 32, baseType: !179, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !676, file: !677, line: 33, baseType: !179, size: 64, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !654, file: !653, line: 63, baseType: !370, size: 32, offset: 1024)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !654, file: !653, line: 69, baseType: !386, size: 16, offset: 1056)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !654, file: !653, line: 70, baseType: !703, size: 16, offset: 1072)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !379, line: 18, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !201, line: 23, baseType: !705)
!705 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !491, line: 882, baseType: !283, size: 64, offset: 9024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !531, file: !491, line: 885, baseType: !350, size: 32, offset: 9088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !531, file: !491, line: 886, baseType: !709, size: 64, offset: 9152)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !491, line: 732, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !531, file: !491, line: 901, baseType: !712, size: 64, offset: 9216)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !491, line: 901, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !531, file: !491, line: 904, baseType: !496, size: 64, offset: 9280)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !531, file: !491, line: 906, baseType: !716, size: 64, offset: 9344)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !491, line: 906, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !531, file: !491, line: 930, baseType: !370, size: 32, offset: 9408)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !531, file: !491, line: 933, baseType: !370, size: 32, offset: 9440)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !531, file: !491, line: 935, baseType: !721, size: 64, offset: 9472)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !722, line: 103, size: 64, elements: !723)
!722 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !721, file: !722, line: 104, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !722, line: 101, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !531, file: !491, line: 940, baseType: !579, size: 64, offset: 9536)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !531, file: !491, line: 942, baseType: !729, size: 256, offset: 9600)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !730, line: 98, size: 256, elements: !731)
!730 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !729, file: !730, line: 99, baseType: !579, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !729, file: !730, line: 100, baseType: !103, size: 128, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !729, file: !730, line: 101, baseType: !735, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !730, line: 21, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !528, file: !491, line: 986, baseType: !741, offset: 10240)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: -1)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !507, file: !491, line: 640, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !498, line: 297, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !498, line: 297, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !746, file: !498, line: 297, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !567, line: 19, baseType: !283)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !491, line: 646, baseType: !751, size: 64, offset: 256)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !491, line: 646, size: 64, elements: !752)
!752 = !{!753, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !751, file: !491, line: 647, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !491, line: 542, baseType: !283)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !751, file: !491, line: 648, baseType: !755, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !507, file: !491, line: 666, baseType: !46, size: 32, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !507, file: !491, line: 667, baseType: !759, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !491, line: 579, size: 320, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !760, file: !491, line: 580, baseType: !590, size: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !507, file: !491, line: 670, baseType: !764, size: 8, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 35, baseType: !765)
!765 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !507, file: !491, line: 681, baseType: !767, size: 256, offset: 512)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !491, line: 678, size: 256, elements: !768)
!768 = !{!769, !777}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !767, file: !491, line: 679, baseType: !770, size: 192, align: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !771, line: 5, size: 192, align: 64, elements: !772)
!771 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!772 = !{!773, !774, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !770, file: !771, line: 6, baseType: !283, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !770, file: !771, line: 7, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !770, file: !771, line: 8, baseType: !775, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !767, file: !491, line: 680, baseType: !283, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !507, file: !491, line: 689, baseType: !103, size: 128, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !507, file: !491, line: 691, baseType: !780, size: 64, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !491, line: 691, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !507, file: !491, line: 694, baseType: !783, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !491, line: 694, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !507, file: !491, line: 697, baseType: !283, size: 64, offset: 1024)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !507, file: !491, line: 699, baseType: !496, size: 64, offset: 1088)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !507, file: !491, line: 700, baseType: !96, size: 64, offset: 1152)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !507, file: !491, line: 711, baseType: !579, size: 64, offset: 1216)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !507, file: !491, line: 717, baseType: !791, size: 64, offset: 1280)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !491, line: 717, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !507, file: !491, line: 722, baseType: !794, offset: 1344)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !491, line: 570, elements: !548)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !468, file: !442, line: 90, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !468, file: !442, line: 91, baseType: !798, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !432, file: !336, line: 120, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!803, !401}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !806)
!806 = !{!807, !808, !812, !816, !822, !826}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !14, line: 40, baseType: !13, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !805, file: !14, line: 41, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!764}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !805, file: !14, line: 42, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!96}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !805, file: !14, line: 43, baseType: !817, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!686, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !805, file: !14, line: 44, baseType: !823, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!686}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !805, file: !14, line: 45, baseType: !827, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !96}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !432, file: !336, line: 121, baseType: !831, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!686, !401}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !432, file: !336, line: 122, baseType: !835, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !401, !838, !846}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !840, line: 23, baseType: !841)
!840 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !840, line: 21, size: 32, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !841, file: !840, line: 22, baseType: !844, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 37, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !171, line: 49, baseType: !7)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !840, line: 28, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !840, line: 26, size: 32, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !848, file: !840, line: 27, baseType: !851, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !95, line: 38, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !171, line: 50, baseType: !7)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !335, file: !336, line: 70, baseType: !854, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !856, line: 190, size: 1152, elements: !857)
!856 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !960, !961, !962, !963, !964, !967}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !855, file: !856, line: 191, baseType: !370, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !855, file: !856, line: 192, baseType: !370, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !855, file: !856, line: 202, baseType: !854, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !855, file: !856, line: 203, baseType: !339, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !855, file: !856, line: 205, baseType: !770, size: 192, align: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !855, file: !856, line: 207, baseType: !686, size: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !855, file: !856, line: 208, baseType: !7, size: 32, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 209, baseType: !866, size: 256, offset: 512)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 209, size: 256, elements: !867)
!867 = !{!868, !880, !884}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !866, file: !856, line: 210, baseType: !869, size: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !856, line: 153, size: 256, elements: !870)
!870 = !{!871, !872, !876, !879}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !869, file: !856, line: 154, baseType: !283, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !869, file: !856, line: 156, baseType: !873, size: 64, offset: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !771, line: 12, size: 64, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !873, file: !771, line: 13, baseType: !775, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !869, file: !856, line: 162, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !856, line: 162, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !869, file: !856, line: 167, baseType: !283, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !866, file: !856, line: 211, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !856, line: 170, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !881, file: !856, line: 171, baseType: !854, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !866, file: !856, line: 212, baseType: !885, size: 256)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !856, line: 174, size: 256, elements: !886)
!886 = !{!887, !955, !958, !959}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !885, file: !856, line: 175, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !856, line: 271, size: 768, elements: !891)
!891 = !{!892, !915, !919, !923, !928, !932, !936, !940, !941, !942, !943, !951}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !890, file: !856, line: 276, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!46, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !856, line: 251, size: 1216, elements: !898)
!898 = !{!899, !900, !901, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !897, file: !856, line: 253, baseType: !854, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !897, file: !856, line: 254, baseType: !496, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !897, file: !856, line: 255, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !904, line: 66, flags: DIFlagFwdDecl)
!904 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!905 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !897, file: !856, line: 256, baseType: !96, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !897, file: !856, line: 259, baseType: !665, size: 256, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !897, file: !856, line: 260, baseType: !665, size: 256, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !897, file: !856, line: 261, baseType: !46, size: 32, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !897, file: !856, line: 262, baseType: !103, size: 128, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !897, file: !856, line: 263, baseType: !418, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !897, file: !856, line: 265, baseType: !461, size: 64, offset: 1024)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !897, file: !856, line: 266, baseType: !764, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !897, file: !856, line: 267, baseType: !764, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !897, file: !856, line: 268, baseType: !783, size: 64, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !890, file: !856, line: 277, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !896}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !890, file: !856, line: 290, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!46, !902, !96}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !890, file: !856, line: 292, baseType: !924, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!96, !902, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !890, file: !856, line: 293, baseType: !929, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!96, !902, !96, !927}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !890, file: !856, line: 294, baseType: !933, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !902, !96}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !890, file: !856, line: 296, baseType: !937, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!448, !896, !418, !461, !499}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !890, file: !856, line: 306, baseType: !461, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !890, file: !856, line: 313, baseType: !764, size: 8, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !890, file: !856, line: 314, baseType: !937, size: 64, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !890, file: !856, line: 317, baseType: !944, size: 64, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!947, !896, !949}
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !948, line: 59, baseType: !7)
!948 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !856, line: 31, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !890, file: !856, line: 320, baseType: !952, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!46, !896, !506}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !885, file: !856, line: 176, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !856, line: 35, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !885, file: !856, line: 177, baseType: !499, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !885, file: !856, line: 178, baseType: !854, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !855, file: !856, line: 215, baseType: !96, size: 64, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !855, file: !856, line: 221, baseType: !575, size: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !856, line: 223, baseType: !388, size: 16, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !855, file: !856, line: 224, baseType: !456, size: 16, offset: 912)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !855, file: !856, line: 225, baseType: !965, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !856, line: 36, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !855, file: !856, line: 227, baseType: !518, size: 128, align: 64, offset: 1024)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !335, file: !336, line: 71, baseType: !969, size: 32, offset: 448)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !970, line: 19, size: 32, elements: !971)
!970 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !969, file: !970, line: 20, baseType: !973, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !974, line: 113, baseType: !975)
!974 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !974, line: 111, size: 32, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !975, file: !974, line: 112, baseType: !370, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !335, file: !336, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !335, file: !336, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !335, file: !336, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !335, file: !336, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !335, file: !336, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !332, file: !6, line: 47, baseType: !322, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !332, file: !6, line: 48, baseType: !343, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !332, file: !6, line: 49, baseType: !986, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !332, file: !6, line: 50, baseType: !989, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !991, line: 26, size: 256, elements: !992)
!991 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !990, file: !991, line: 27, baseType: !7, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !990, file: !991, line: 28, baseType: !995, size: 192, offset: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !996, line: 43, size: 192, elements: !997)
!996 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !996, line: 44, baseType: !601, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !995, file: !996, line: 45, baseType: !103, size: 128, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !323, file: !6, line: 418, baseType: !1001, size: 64, offset: 1408)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1003)
!1003 = !{!1004, !1005, !1010, !1014, !1018, !1022}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1002, file: !6, line: 54, baseType: !452, size: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1002, file: !6, line: 55, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!448, !1001, !1009, !418}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1002, file: !6, line: 57, baseType: !1011, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!448, !1001, !1009, !339, !461}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1002, file: !6, line: 59, baseType: !1015, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !322, !339}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1002, file: !6, line: 60, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!46, !322}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1002, file: !6, line: 61, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !322}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !323, file: !6, line: 419, baseType: !339, size: 64, offset: 1472)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !323, file: !6, line: 420, baseType: !339, size: 64, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !323, file: !6, line: 421, baseType: !343, size: 64, offset: 1600)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !323, file: !6, line: 424, baseType: !1030, size: 64, offset: 1664)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !323, file: !6, line: 425, baseType: !1034, size: 64, offset: 1728)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !323, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !323, file: !6, line: 435, baseType: !665, size: 256, offset: 1856)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !323, file: !6, line: 437, baseType: !1039, size: 64, offset: 2112)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1041, line: 69, size: 320, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1042 = !{!1043, !1044, !1045, !1062, !1064, !1068, !1069}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1040, file: !1041, line: 70, baseType: !339, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1040, file: !1041, line: 71, baseType: !322, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1040, file: !1041, line: 72, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1041, line: 47, size: 256, elements: !1049)
!1049 = !{!1050, !1051, !1057, !1061}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1041, line: 49, baseType: !7, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1048, file: !1041, line: 51, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!46, !339, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1048, file: !1041, line: 53, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!46, !418, !1055}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1048, file: !1041, line: 55, baseType: !827, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1040, file: !1041, line: 73, baseType: !1063, size: 16, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1040, file: !1041, line: 74, baseType: !1065, size: 8, offset: 208)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !379, line: 16, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !201, line: 20, baseType: !1067)
!1067 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !1041, line: 75, baseType: !378, size: 8, offset: 216)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !1041, line: 76, baseType: !1070, size: 64, offset: 256)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !1041, line: 76, size: 64, elements: !1071)
!1071 = !{!1072, !1073, !1080}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1070, file: !1041, line: 77, baseType: !96, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1070, file: !1041, line: 78, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1041, line: 86, size: 128, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1076, file: !1041, line: 87, baseType: !7, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1076, file: !1041, line: 88, baseType: !418, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1070, file: !1041, line: 79, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1041, line: 92, size: 256, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1083, file: !1041, line: 94, baseType: !7, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1083, file: !1041, line: 95, baseType: !7, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1083, file: !1041, line: 96, baseType: !243, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1083, file: !1041, line: 97, baseType: !1046, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1083, file: !1041, line: 98, baseType: !96, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !323, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !323, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !323, file: !6, line: 442, baseType: !1030, size: 64, offset: 2240)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !323, file: !6, line: 443, baseType: !1034, size: 64, offset: 2304)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !323, file: !6, line: 444, baseType: !764, size: 8, offset: 2368)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !323, file: !6, line: 451, baseType: !764, size: 8, offset: 2376)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !323, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !323, file: !6, line: 455, baseType: !1098, size: 64, offset: 2432)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !323, file: !6, line: 458, baseType: !1101, size: 64, offset: 2496)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!46}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !323, file: !6, line: 460, baseType: !1105, size: 4032, align: 512, offset: 2560)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1106, size: 4032, elements: !1120)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1106, file: !6, line: 363, baseType: !96, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1106, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1106, file: !6, line: 367, baseType: !1111, size: 448, offset: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1111, file: !6, line: 320, baseType: !322, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1111, file: !6, line: 321, baseType: !1115, size: 384, offset: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1116, line: 40, size: 384, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1115, file: !1116, line: 41, baseType: !1119, size: 384, align: 64)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 384, align: 64, elements: !134)
!1120 = !{!1121}
!1121 = !DISubrange(count: 7)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !323, file: !6, line: 463, baseType: !1123, size: 192, offset: 6592)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1124, line: 8, size: 192, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1125 = !{!1126, !1127, !1129}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1123, file: !1124, line: 10, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1123, file: !1124, line: 11, baseType: !1128, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1123, file: !1124, line: 12, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1132, line: 59, size: 48, elements: !1133)
!1132 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1131, file: !1132, line: 60, baseType: !703, size: 16)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1131, file: !1132, line: 61, baseType: !703, size: 16, offset: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1131, file: !1132, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1131, file: !1132, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1131, file: !1132, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1131, file: !1132, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !323, file: !6, line: 465, baseType: !283, size: 64, offset: 6784)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !323, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !323, file: !6, line: 470, baseType: !103, size: 128, offset: 6912)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !323, file: !6, line: 471, baseType: !1144, size: 64, offset: 7040)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1146, line: 33, size: 96, elements: !1147)
!1146 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1145, file: !1146, line: 37, baseType: !46, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1145, file: !1146, line: 43, baseType: !46, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1145, file: !1146, line: 45, baseType: !388, size: 16, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1145, file: !1146, line: 47, baseType: !388, size: 16, offset: 80)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !323, file: !6, line: 476, baseType: !1153, size: 64, offset: 7104)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1155)
!1155 = !{!1156, !1173, !1174, !1175}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1154, file: !6, line: 379, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1159, line: 204, baseType: !1160)
!1159 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1159, line: 197, size: 192, elements: !1161)
!1161 = !{!1162, !1165, !1166, !1167, !1169, !1171}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1160, file: !1159, line: 198, baseType: !1163, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1159, line: 21, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !201, line: 27, baseType: !7)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1160, file: !1159, line: 199, baseType: !152, size: 8, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1160, file: !1159, line: 200, baseType: !152, size: 8, offset: 40)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1160, file: !1159, line: 201, baseType: !1168, size: 16, offset: 48)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1159, line: 17, baseType: !387)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1160, file: !1159, line: 202, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1159, line: 16, baseType: !200)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1160, file: !1159, line: 203, baseType: !1172, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1159, line: 22, baseType: !200)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1154, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1154, file: !6, line: 381, baseType: !418, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1154, file: !6, line: 382, baseType: !418, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !323, file: !6, line: 477, baseType: !1154, size: 256, offset: 7168)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !323, file: !6, line: 480, baseType: !1178, size: 64, offset: 7424)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !323, file: !6, line: 483, baseType: !1181, size: 64, offset: 7488)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !323, file: !6, line: 488, baseType: !418, size: 64, offset: 7552)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !323, file: !6, line: 492, baseType: !96, size: 64, offset: 7616)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !323, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !323, file: !6, line: 495, baseType: !96, size: 64, offset: 7744)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !323, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !323, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !323, file: !6, line: 500, baseType: !1190, size: 64, offset: 7872)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1192, line: 45, baseType: !1193)
!1192 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !323, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !323, file: !6, line: 504, baseType: !1196, size: 64, offset: 8000)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1199, line: 96, size: 192, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1200 = !{!1201, !1202, !1263, !1266}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1198, file: !1199, line: 97, baseType: !7, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1198, file: !1199, line: 98, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1199, line: 24, size: 3072, elements: !1205)
!1205 = !{!1206, !1208, !1209, !1210, !1211, !1225, !1226, !1227, !1228, !1247, !1248, !1249, !1260, !1261, !1262}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1204, file: !1199, line: 26, baseType: !1207, size: 128)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 128, elements: !134)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1204, file: !1199, line: 27, baseType: !1207, size: 128, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1204, file: !1199, line: 28, baseType: !46, size: 32, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1204, file: !1199, line: 31, baseType: !350, size: 32, align: 512, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1204, file: !1199, line: 32, baseType: !1212, size: 960, offset: 576)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1213, line: 206, size: 960, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1214 = !{!1215, !1216, !1219, !1221, !1222, !1224}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1212, file: !1213, line: 207, baseType: !521, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1212, file: !1213, line: 208, baseType: !1217, size: 256, offset: 64)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1218, size: 256, elements: !124)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1212, file: !1213, line: 209, baseType: !1220, size: 256, offset: 320)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !124)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1212, file: !1213, line: 213, baseType: !179, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1212, file: !1213, line: 215, baseType: !1223, size: 256, offset: 640)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !124)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 216, baseType: !378, size: 8, offset: 896)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1204, file: !1199, line: 33, baseType: !283, size: 64, offset: 1536)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1204, file: !1199, line: 34, baseType: !283, size: 64, offset: 1600)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1204, file: !1199, line: 35, baseType: !764, size: 8, offset: 1664)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1204, file: !1199, line: 36, baseType: !1229, size: 320, offset: 1728)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1230, line: 11, size: 320, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1231 = !{!1232, !1239, !1240, !1245}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1229, file: !1230, line: 16, baseType: !1233, size: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !95, line: 198, size: 128, elements: !1234)
!1234 = !{!1235, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1233, file: !95, line: 199, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1233, file: !95, line: 199, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1229, file: !1230, line: 17, baseType: !283, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1229, file: !1230, line: 18, baseType: !1241, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !1230, line: 19, baseType: !1246, size: 32, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !379, line: 21, baseType: !1164)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1204, file: !1199, line: 37, baseType: !729, size: 256, offset: 2048)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1204, file: !1199, line: 38, baseType: !518, size: 128, align: 64, offset: 2304)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1204, file: !1199, line: 39, baseType: !1250, size: 64, offset: 2432)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1199, line: 49, size: 768, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1251, file: !1199, line: 50, baseType: !350, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1251, file: !1199, line: 51, baseType: !1220, size: 256, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1251, file: !1199, line: 53, baseType: !1220, size: 256, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1251, file: !1199, line: 54, baseType: !283, size: 64, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1251, file: !1199, line: 55, baseType: !1250, size: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1251, file: !1199, line: 56, baseType: !46, size: 32, offset: 704)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1251, file: !1199, line: 57, baseType: !46, size: 32, offset: 736)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1204, file: !1199, line: 40, baseType: !283, size: 64, offset: 2496)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1204, file: !1199, line: 42, baseType: !46, size: 32, offset: 2560)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1204, file: !1199, line: 43, baseType: !1197, size: 64, offset: 2624)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1198, file: !1199, line: 99, baseType: !1264, offset: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1265, line: 211, elements: !548)
!1265 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1198, file: !1199, line: 100, baseType: !1267, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1199, line: 63, size: 3008, elements: !1269)
!1269 = !{!1270, !1271, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1301}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1268, file: !1199, line: 64, baseType: !1250, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1268, file: !1199, line: 65, baseType: !1272, size: 192, offset: 64)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, size: 192, elements: !419)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1268, file: !1199, line: 67, baseType: !46, size: 32, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1268, file: !1199, line: 68, baseType: !665, size: 256, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1268, file: !1199, line: 69, baseType: !350, size: 32, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1268, file: !1199, line: 70, baseType: !665, size: 256, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1268, file: !1199, line: 71, baseType: !283, size: 64, offset: 896)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1268, file: !1199, line: 72, baseType: !283, size: 64, offset: 960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1268, file: !1199, line: 73, baseType: !283, size: 64, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1268, file: !1199, line: 74, baseType: !283, size: 64, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1268, file: !1199, line: 75, baseType: !283, size: 64, offset: 1152)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1268, file: !1199, line: 76, baseType: !283, size: 64, offset: 1216)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1268, file: !1199, line: 77, baseType: !283, size: 64, offset: 1280)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1268, file: !1199, line: 78, baseType: !283, size: 64, offset: 1344)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1268, file: !1199, line: 79, baseType: !764, size: 8, offset: 1408)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1268, file: !1199, line: 80, baseType: !283, size: 64, offset: 1472)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1268, file: !1199, line: 81, baseType: !665, size: 256, offset: 1536)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1268, file: !1199, line: 82, baseType: !990, size: 256, offset: 1792)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1268, file: !1199, line: 84, baseType: !370, size: 32, offset: 2048)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1268, file: !1199, line: 87, baseType: !283, size: 64, offset: 2112)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1268, file: !1199, line: 88, baseType: !283, size: 64, offset: 2176)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1268, file: !1199, line: 89, baseType: !1293, size: 704, offset: 2240)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !730, line: 111, size: 704, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1300}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1293, file: !730, line: 112, baseType: !729, size: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1293, file: !730, line: 113, baseType: !1229, size: 320, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1293, file: !730, line: 116, baseType: !1298, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !730, line: 18, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1293, file: !730, line: 117, baseType: !46, size: 32, offset: 640)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1268, file: !1199, line: 90, baseType: !1197, size: 64, offset: 2944)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !323, file: !6, line: 515, baseType: !1303, size: 64, offset: 8064)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1305, line: 117, size: 128, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1304, file: !1305, line: 118, baseType: !646, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1304, file: !1305, line: 119, baseType: !646, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1304, file: !1305, line: 120, baseType: !179, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !323, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !323, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !323, file: !6, line: 520, baseType: !1313, size: 64, offset: 8192)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !323, file: !6, line: 523, baseType: !1315, size: 64, offset: 8256)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !323, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !323, file: !6, line: 525, baseType: !1320, size: 64, offset: 8384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !323, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !323, file: !6, line: 533, baseType: !96, size: 64, offset: 8512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !323, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !323, file: !6, line: 535, baseType: !1327, size: 64, offset: 8640)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !323, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !323, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !323, file: !6, line: 540, baseType: !1331, size: 64, offset: 8768)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1333, line: 32, size: 64, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1332, file: !1333, line: 33, baseType: !646, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1332, file: !1333, line: 34, baseType: !646, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !323, file: !6, line: 563, baseType: !103, size: 128, offset: 8832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !323, file: !6, line: 565, baseType: !103, size: 128, offset: 8960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !323, file: !6, line: 568, baseType: !1340, size: 64, offset: 9088)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !323, file: !6, line: 570, baseType: !370, size: 32, offset: 9152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !300, file: !301, line: 94, baseType: !96, size: 64, offset: 3200)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !300, file: !301, line: 95, baseType: !1346, size: 64, offset: 3264)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !299}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !300, file: !301, line: 97, baseType: !103, size: 128, offset: 3328)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !300, file: !301, line: 99, baseType: !1351, size: 64, offset: 3456)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1359, !1360, !1413, !1483, !1484, !1485, !1486, !1487, !1494, !1664, !1677, !1687, !1691, !1693, !1694, !1695, !1699, !1706, !1707, !1710, !1713, !1717, !1720, !1721, !1724, !1725, !1726, !1727, !1757, !1758, !1759, !1762, !1765, !1774, !1775, !1776, !1777, !1778, !1779}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1352, file: !26, line: 706, baseType: !335, size: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1352, file: !26, line: 707, baseType: !1351, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1352, file: !26, line: 709, baseType: !1357, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1352, file: !26, line: 711, baseType: !339, size: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1352, file: !26, line: 712, baseType: !1361, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1373, !1378, !1382}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1363, file: !26, line: 90, baseType: !339, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1363, file: !26, line: 91, baseType: !465, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1363, file: !26, line: 92, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!46, !1371, !413}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1363, file: !26, line: 93, baseType: !1374, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!418, !1371, !1377, !838, !846}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1363, file: !26, line: 95, baseType: !1379, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1351}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1363, file: !26, line: 97, baseType: !1383, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1386)
!1386 = !{!1387, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1385, file: !38, line: 287, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!46, !1351}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1385, file: !38, line: 288, baseType: !1379, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1385, file: !38, line: 289, baseType: !1388, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1385, file: !38, line: 290, baseType: !1388, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1385, file: !38, line: 291, baseType: !1388, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1385, file: !38, line: 292, baseType: !1388, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1385, file: !38, line: 293, baseType: !1388, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1385, file: !38, line: 294, baseType: !1388, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1385, file: !38, line: 295, baseType: !1388, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1385, file: !38, line: 296, baseType: !1388, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1385, file: !38, line: 297, baseType: !1388, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1385, file: !38, line: 298, baseType: !1388, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1385, file: !38, line: 299, baseType: !1388, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1385, file: !38, line: 300, baseType: !1388, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1385, file: !38, line: 301, baseType: !1388, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1385, file: !38, line: 302, baseType: !1388, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1385, file: !38, line: 303, baseType: !1388, size: 64, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1385, file: !38, line: 304, baseType: !1388, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1385, file: !38, line: 305, baseType: !1388, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1385, file: !38, line: 306, baseType: !1388, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1385, file: !38, line: 307, baseType: !1388, size: 64, offset: 1280)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1385, file: !38, line: 308, baseType: !1388, size: 64, offset: 1344)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1385, file: !38, line: 309, baseType: !1388, size: 64, offset: 1408)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1352, file: !26, line: 714, baseType: !1414, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1417, line: 80, size: 1344, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1482}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1416, file: !1417, line: 81, baseType: !339, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1416, file: !1417, line: 82, baseType: !339, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1416, file: !1417, line: 83, baseType: !465, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1416, file: !1417, line: 84, baseType: !465, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1416, file: !1417, line: 85, baseType: !465, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1416, file: !1417, line: 87, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!46, !1351, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1441, !1445, !1446, !1447, !1448, !1449, !1457, !1458, !1459, !1460, !1461, !1462}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1429, file: !20, line: 97, baseType: !339, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1429, file: !20, line: 98, baseType: !1414, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1429, file: !20, line: 100, baseType: !322, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1429, file: !20, line: 101, baseType: !339, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1429, file: !20, line: 103, baseType: !764, size: 8, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1429, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1429, file: !20, line: 106, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1429, file: !20, line: 107, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1429, file: !20, line: 109, baseType: !1388, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1429, file: !20, line: 110, baseType: !1379, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1429, file: !20, line: 111, baseType: !1388, size: 64, offset: 576)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1429, file: !20, line: 112, baseType: !1379, size: 64, offset: 640)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1429, file: !20, line: 113, baseType: !1450, size: 64, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!46, !1351, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1454, file: !38, line: 59, baseType: !46, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1429, file: !20, line: 114, baseType: !1388, size: 64, offset: 768)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1429, file: !20, line: 115, baseType: !465, size: 64, offset: 832)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1429, file: !20, line: 116, baseType: !465, size: 64, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1429, file: !20, line: 118, baseType: !1383, size: 64, offset: 960)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1429, file: !20, line: 119, baseType: !1379, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1429, file: !20, line: 121, baseType: !1463, size: 64, offset: 1088)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1416, file: !1417, line: 88, baseType: !1368, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1416, file: !1417, line: 89, baseType: !1388, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1416, file: !1417, line: 90, baseType: !1379, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1416, file: !1417, line: 91, baseType: !1379, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1416, file: !1417, line: 92, baseType: !1379, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1416, file: !1417, line: 94, baseType: !1388, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1416, file: !1417, line: 95, baseType: !1388, size: 64, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1416, file: !1417, line: 97, baseType: !1450, size: 64, offset: 832)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1416, file: !1417, line: 98, baseType: !1388, size: 64, offset: 896)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1416, file: !1417, line: 100, baseType: !1388, size: 64, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1416, file: !1417, line: 102, baseType: !1388, size: 64, offset: 1024)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1416, file: !1417, line: 103, baseType: !1379, size: 64, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1416, file: !1417, line: 105, baseType: !1383, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1416, file: !1417, line: 107, baseType: !1479, size: 64, offset: 1216)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1417, line: 107, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1416, file: !1417, line: 109, baseType: !764, size: 8, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1352, file: !26, line: 715, baseType: !1428, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1352, file: !26, line: 717, baseType: !96, size: 64, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1352, file: !26, line: 719, baseType: !96, size: 64, offset: 960)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1352, file: !26, line: 721, baseType: !665, size: 256, offset: 1024)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1352, file: !26, line: 725, baseType: !1488, size: 448, offset: 1280)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1488, file: !26, line: 518, baseType: !103, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1488, file: !26, line: 519, baseType: !103, size: 128, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1488, file: !26, line: 520, baseType: !103, size: 128, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1488, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1352, file: !26, line: 726, baseType: !1495, size: 2496, offset: 1728)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1541, !1542, !1543, !1544, !1545, !1546, !1617, !1618, !1619, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1657, !1661}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1495, file: !38, line: 664, baseType: !1453, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1495, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1495, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1495, file: !38, line: 667, baseType: !764, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1495, file: !38, line: 668, baseType: !764, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1495, file: !38, line: 669, baseType: !764, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1495, file: !38, line: 670, baseType: !764, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1495, file: !38, line: 671, baseType: !764, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1495, file: !38, line: 672, baseType: !764, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1495, file: !38, line: 673, baseType: !764, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1495, file: !38, line: 674, baseType: !764, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1495, file: !38, line: 675, baseType: !1246, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !38, line: 676, baseType: !350, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1495, file: !38, line: 678, baseType: !103, size: 128, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1495, file: !38, line: 679, baseType: !990, size: 256, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1495, file: !38, line: 680, baseType: !1513, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1515, line: 43, size: 1536, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1524, !1525, !1526, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1514, file: !1515, line: 44, baseType: !339, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1514, file: !1515, line: 45, baseType: !46, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1514, file: !1515, line: 46, baseType: !103, size: 128, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1515, line: 47, baseType: !350, size: 32, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1514, file: !1515, line: 48, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1514, file: !1515, line: 49, baseType: !1229, size: 320, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1514, file: !1515, line: 50, baseType: !283, size: 64, offset: 704)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1514, file: !1515, line: 51, baseType: !1527, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1528, line: 29, baseType: !585)
!1528 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1514, file: !1515, line: 52, baseType: !1527, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1514, file: !1515, line: 53, baseType: !1527, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1514, file: !1515, line: 54, baseType: !1527, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1514, file: !1515, line: 55, baseType: !1527, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1514, file: !1515, line: 56, baseType: !283, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1514, file: !1515, line: 57, baseType: !283, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1514, file: !1515, line: 58, baseType: !283, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1514, file: !1515, line: 59, baseType: !283, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1514, file: !1515, line: 60, baseType: !283, size: 64, offset: 1344)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1514, file: !1515, line: 61, baseType: !1351, size: 64, offset: 1408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1514, file: !1515, line: 62, baseType: !764, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1514, file: !1515, line: 63, baseType: !764, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1495, file: !38, line: 681, baseType: !764, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1495, file: !38, line: 682, baseType: !764, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1495, file: !38, line: 683, baseType: !764, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1495, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1495, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1495, file: !38, line: 690, baseType: !1547, size: 512, offset: 640)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1548)
!1548 = !{!1549, !1555, !1556, !1561, !1613, !1614, !1615, !1616}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1547, file: !33, line: 119, baseType: !1550, size: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1551, line: 9, size: 256, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1550, file: !1551, line: 10, baseType: !770, size: 192, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1550, file: !1551, line: 11, baseType: !1527, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1547, file: !33, line: 120, baseType: !1527, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1547, file: !33, line: 121, baseType: !1557, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!32, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1547, file: !33, line: 122, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1564)
!1564 = !{!1565, !1590, !1591, !1594, !1599, !1600, !1608, !1612}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1563, file: !33, line: 160, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1567, file: !33, line: 216, baseType: !601, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1567, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1567, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1567, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1567, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1567, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1567, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1567, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1567, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1567, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1567, file: !33, line: 227, baseType: !388, size: 16, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1567, file: !33, line: 228, baseType: !388, size: 16, offset: 208)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1567, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1567, file: !33, line: 235, baseType: !1527, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1567, file: !33, line: 236, baseType: !1560, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1567, file: !33, line: 237, baseType: !1527, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1567, file: !33, line: 238, baseType: !1560, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1567, file: !33, line: 239, baseType: !1587, size: 4096, align: 512, offset: 512)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 4096, align: 512, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 8)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1563, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1563, file: !33, line: 162, baseType: !1592, size: 32, offset: 96)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !95, line: 32, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !171, line: 96, baseType: !46)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1563, file: !33, line: 163, baseType: !1595, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !616, line: 274, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !616, line: 274, size: 32, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1596, file: !616, line: 274, baseType: !615, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1563, file: !33, line: 164, baseType: !1560, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1563, file: !33, line: 165, baseType: !1601, size: 128, offset: 256)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1551, line: 14, size: 128, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1601, file: !1551, line: 15, baseType: !1604, size: 128)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !771, line: 26, size: 128, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1604, file: !771, line: 27, baseType: !873, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1604, file: !771, line: 28, baseType: !775, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1563, file: !33, line: 166, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1527}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1563, file: !33, line: 167, baseType: !1527, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1547, file: !33, line: 123, baseType: !378, size: 8, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1547, file: !33, line: 124, baseType: !378, size: 8, offset: 456)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1547, file: !33, line: 125, baseType: !378, size: 8, offset: 464)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1547, file: !33, line: 126, baseType: !378, size: 8, offset: 472)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1495, file: !38, line: 691, baseType: !575, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1495, file: !38, line: 692, baseType: !729, size: 256, offset: 1216)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1495, file: !38, line: 693, baseType: !1620, size: 192, offset: 1472)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1621, line: 41, baseType: !1622)
!1621 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1621, line: 37, size: 192, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1622, file: !1621, line: 38, baseType: !350, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1622, file: !1621, line: 39, baseType: !103, size: 128, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1495, file: !38, line: 694, baseType: !1522, size: 64, offset: 1664)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1495, file: !38, line: 695, baseType: !370, size: 32, offset: 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1495, file: !38, line: 696, baseType: !370, size: 32, offset: 1760)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1495, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1495, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1495, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1495, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1495, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1495, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1495, file: !38, line: 703, baseType: !764, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1495, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1495, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1495, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1495, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1495, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1495, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1495, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1495, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1495, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1495, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1495, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1495, file: !38, line: 715, baseType: !575, size: 64, offset: 2048)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1495, file: !38, line: 716, baseType: !575, size: 64, offset: 2112)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1495, file: !38, line: 717, baseType: !575, size: 64, offset: 2176)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1495, file: !38, line: 718, baseType: !575, size: 64, offset: 2240)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1495, file: !38, line: 720, baseType: !1652, size: 64, offset: 2304)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1653, file: !38, line: 633, baseType: !350, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1653, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1495, file: !38, line: 721, baseType: !1658, size: 64, offset: 2368)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1351, !646}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1495, file: !38, line: 722, baseType: !1662, size: 64, offset: 2432)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1352, file: !26, line: 727, baseType: !1665, size: 64, offset: 4224)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1674, !1675, !1676}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1666, file: !38, line: 743, baseType: !1385, size: 1472)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1666, file: !38, line: 744, baseType: !1388, size: 64, offset: 1472)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1666, file: !38, line: 745, baseType: !1671, size: 64, offset: 1536)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1351, !764}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1666, file: !38, line: 746, baseType: !1388, size: 64, offset: 1600)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1666, file: !38, line: 747, baseType: !1379, size: 64, offset: 1664)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1666, file: !38, line: 748, baseType: !1379, size: 64, offset: 1728)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1352, file: !26, line: 736, baseType: !1678, size: 128, offset: 4288)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1679)
!1679 = !{!1680, !1684}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1678, file: !26, line: 531, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1683, line: 13, flags: DIFlagFwdDecl)
!1683 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1678, file: !26, line: 532, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1352, file: !26, line: 738, baseType: !1688, size: 64, offset: 4416)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1352, file: !26, line: 740, baseType: !1692, size: 64, offset: 4480)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1352, file: !26, line: 741, baseType: !575, size: 64, offset: 4544)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1352, file: !26, line: 746, baseType: !575, size: 64, offset: 4608)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1352, file: !26, line: 747, baseType: !1696, size: 64, offset: 4672)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1352, file: !26, line: 749, baseType: !1700, size: 64, offset: 4736)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1701, file: !26, line: 433, baseType: !7, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1701, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1701, file: !26, line: 435, baseType: !283, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1352, file: !26, line: 751, baseType: !103, size: 128, offset: 4800)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1352, file: !26, line: 762, baseType: !1708, size: 64, offset: 4928)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1352, file: !26, line: 770, baseType: !1711, offset: 4992)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1712, line: 5, elements: !548)
!1712 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1352, file: !26, line: 772, baseType: !1714, size: 64, offset: 4992)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1716, line: 18, flags: DIFlagFwdDecl)
!1716 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1352, file: !26, line: 773, baseType: !1718, size: 64, offset: 5056)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1417, line: 22, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1352, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1352, file: !26, line: 778, baseType: !1722, size: 32, offset: 5152)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !95, line: 21, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !95, line: 18, baseType: !1246)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1352, file: !26, line: 779, baseType: !1246, size: 32, offset: 5184)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1352, file: !26, line: 781, baseType: !350, size: 32, offset: 5216)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1352, file: !26, line: 782, baseType: !103, size: 128, offset: 5248)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1352, file: !26, line: 784, baseType: !1728, size: 64, offset: 5376)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1731, line: 52, size: 768, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1741, !1745, !1746, !1747, !1748, !1752, !1756}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1730, file: !1731, line: 53, baseType: !339, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1730, file: !1731, line: 55, baseType: !465, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1730, file: !1731, line: 56, baseType: !465, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1730, file: !1731, line: 58, baseType: !1368, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1730, file: !1731, line: 59, baseType: !1738, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!418, !1371, !1377}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1730, file: !1731, line: 61, baseType: !1742, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1728}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1730, file: !1731, line: 62, baseType: !1379, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1730, file: !1731, line: 64, baseType: !1388, size: 64, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1730, file: !1731, line: 66, baseType: !803, size: 64, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1730, file: !1731, line: 67, baseType: !1749, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!686, !1371}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1730, file: !1731, line: 69, baseType: !1753, size: 64, offset: 640)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1371, !838, !846}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1730, file: !1731, line: 71, baseType: !1383, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1352, file: !26, line: 785, baseType: !465, size: 64, offset: 5440)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1352, file: !26, line: 787, baseType: !1379, size: 64, offset: 5504)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1352, file: !26, line: 788, baseType: !1760, size: 64, offset: 5568)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1352, file: !26, line: 789, baseType: !1763, size: 64, offset: 5632)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1352, file: !26, line: 791, baseType: !1766, size: 64, offset: 5696)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1767, file: !26, line: 598, baseType: !53, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1767, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1767, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1767, file: !26, line: 601, baseType: !764, size: 8, offset: 96)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1767, file: !26, line: 602, baseType: !764, size: 8, offset: 104)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1352, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1352, file: !26, line: 795, baseType: !764, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1352, file: !26, line: 796, baseType: !764, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1352, file: !26, line: 797, baseType: !764, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1352, file: !26, line: 798, baseType: !764, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1352, file: !26, line: 799, baseType: !764, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !300, file: !301, line: 100, baseType: !7, size: 32, offset: 3520)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !300, file: !301, line: 101, baseType: !590, size: 320, offset: 3584)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !300, file: !301, line: 102, baseType: !1783, size: 64, offset: 3904)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1784, line: 34, baseType: !1785)
!1784 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1784, line: 25, size: 64, elements: !1786)
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1785, file: !1784, line: 26, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1789, line: 27, baseType: !1790)
!1789 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1789, line: 13, size: 64, elements: !1791)
!1791 = !{!1792, !1802}
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1789, line: 14, baseType: !1793, size: 32)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !1789, line: 14, size: 32, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1793, file: !1789, line: 15, baseType: !370, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !1789, line: 16, baseType: !1797, size: 32)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1793, file: !1789, line: 16, size: 32, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1797, file: !1789, line: 18, baseType: !378, size: 8)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1797, file: !1789, line: 19, baseType: !1801, size: 24, offset: 8)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 24, elements: !419)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1790, file: !1789, line: 26, baseType: !362, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !300, file: !301, line: 103, baseType: !46, size: 32, offset: 3968)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !300, file: !301, line: 104, baseType: !461, size: 64, offset: 4032)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !300, file: !301, line: 105, baseType: !103, size: 128, offset: 4096)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !300, file: !301, line: 106, baseType: !103, size: 128, offset: 4224)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !300, file: !301, line: 108, baseType: !1808, size: 128, offset: 4352)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1809, line: 296, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1808, file: !1809, line: 297, baseType: !350, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1808, file: !1809, line: 299, baseType: !94, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1808, file: !1809, line: 300, baseType: !96, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !300, file: !301, line: 109, baseType: !1808, size: 128, offset: 4480)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !300, file: !301, line: 110, baseType: !764, size: 8, offset: 4608)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !300, file: !301, line: 113, baseType: !1817, size: 64, offset: 4672)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !301, line: 113, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !300, file: !301, line: 114, baseType: !1820, size: 64, offset: 4736)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !301, line: 114, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !300, file: !301, line: 116, baseType: !103, size: 128, offset: 4800)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !300, file: !301, line: 117, baseType: !1824, size: 64, offset: 4928)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !301, line: 117, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !300, file: !301, line: 119, baseType: !350, size: 32, offset: 4992)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !300, file: !301, line: 120, baseType: !46, size: 32, offset: 5024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !300, file: !301, line: 121, baseType: !989, size: 64, offset: 5056)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !300, file: !301, line: 122, baseType: !1351, size: 64, offset: 5120)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !300, file: !301, line: 123, baseType: !1352, size: 5824, offset: 5184)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !300, file: !301, line: 124, baseType: !1832, size: 256, offset: 11008)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 256, elements: !124)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !300, file: !301, line: 125, baseType: !764, size: 8, offset: 11264)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !300, file: !301, line: 126, baseType: !764, size: 8, offset: 11272)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !300, file: !301, line: 127, baseType: !764, size: 8, offset: 11280)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !300, file: !301, line: 128, baseType: !46, size: 32, offset: 11296)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !300, file: !301, line: 129, baseType: !1620, size: 192, offset: 11328)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !300, file: !301, line: 131, baseType: !461, size: 64, offset: 11520)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !300, file: !301, line: 132, baseType: !665, size: 256, offset: 11584)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !300, file: !301, line: 138, baseType: !7, size: 32, offset: 11840)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !300, file: !301, line: 139, baseType: !370, size: 32, offset: 11872)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !300, file: !301, line: 140, baseType: !1620, size: 192, offset: 11904)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !300, file: !301, line: 141, baseType: !1620, size: 192, offset: 12096)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !295, file: !140, line: 108, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1847, line: 59, size: 768, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1848 = !{!1849, !1850, !1851, !1852, !1857, !1858, !1859, !1860}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1846, file: !1847, line: 61, baseType: !973, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1846, file: !1847, line: 62, baseType: !7, size: 32, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1846, file: !1847, line: 63, baseType: !350, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1846, file: !1847, line: 65, baseType: !1853, size: 256, offset: 128)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 256, elements: !124)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !95, line: 194, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1854, file: !95, line: 195, baseType: !1236, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1846, file: !1847, line: 66, baseType: !1854, size: 64, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1846, file: !1847, line: 68, baseType: !1620, size: 192, offset: 448)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1846, file: !1847, line: 69, baseType: !518, size: 128, align: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1846, file: !1847, line: 70, baseType: !1861, offset: 768)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1862, elements: !742)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1847, line: 54, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1862, file: !1847, line: 55, baseType: !46, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1862, file: !1847, line: 56, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1847, line: 56, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_subdevice", scope: !295, file: !140, line: 109, baseType: !133, size: 64, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "change_sleep", scope: !295, file: !140, line: 110, baseType: !1620, size: 192, offset: 320)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "read_lock", scope: !295, file: !140, line: 111, baseType: !350, size: 32, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !295, file: !140, line: 112, baseType: !1872, size: 64, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_fasync", file: !301, line: 511, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !295, file: !140, line: 113, baseType: !46, size: 32, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !295, file: !140, line: 114, baseType: !103, size: 128, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !291, file: !140, line: 67, baseType: !7, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "follower", scope: !100, file: !3, line: 54, baseType: !139, size: 1152, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!1880 = !{!0, !1881, !1883, !1885, !1887, !1889, !1891, !1896}
!1881 = !DIGlobalVariableExpression(var: !1882, expr: !DIExpression())
!1882 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_ctl_add_followers212", scope: !2, file: !3, line: 309, type: !96, isLocal: true, isDefinition: true)
!1883 = !DIGlobalVariableExpression(var: !1884, expr: !DIExpression())
!1884 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_ctl_make_virtual_master213", scope: !2, file: !3, line: 462, type: !96, isLocal: true, isDefinition: true)
!1885 = !DIGlobalVariableExpression(var: !1886, expr: !DIExpression())
!1886 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_ctl_add_vmaster_hook214", scope: !2, file: !3, line: 484, type: !96, isLocal: true, isDefinition: true)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_ctl_sync_vmaster215", scope: !2, file: !3, line: 516, type: !96, isLocal: true, isDefinition: true)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_ctl_apply_vmaster_followers216", scope: !2, file: !3, line: 550, type: !96, isLocal: true, isDefinition: true)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !84, line: 480, type: !1893, isLocal: true, isDefinition: true)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 168, elements: !1894)
!1894 = !{!1895}
!1895 = !DISubrange(count: 21)
!1896 = !DIGlobalVariableExpression(var: !1897, expr: !DIExpression())
!1897 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !1898, isLocal: true, isDefinition: true)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 344, elements: !1899)
!1899 = !{!1900}
!1900 = !DISubrange(count: 43)
!1901 = !{i32 7, !"Dwarf Version", i32 5}
!1902 = !{i32 2, !"Debug Info Version", i32 3}
!1903 = !{i32 1, !"wchar_size", i32 2}
!1904 = !{i32 8, !"cf-protection-branch", i32 1}
!1905 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1906 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1907 = !{i32 1, !"Code Model", i32 2}
!1908 = !{i32 1, !"override-stack-alignment", i32 8}
!1909 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1910 = distinct !DISubprogram(name: "_snd_ctl_add_follower", scope: !3, file: !3, line: 252, type: !1911, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!46, !138, !138, !7}
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DILocalVariable(name: "master", arg: 1, scope: !1910, file: !3, line: 252, type: !138)
!1915 = !DILocalVariable(name: "follower", arg: 2, scope: !1910, file: !3, line: 253, type: !138)
!1916 = !DILocalVariable(name: "flags", arg: 3, scope: !1910, file: !3, line: 254, type: !7)
!1917 = !DILocalVariable(name: "master_link", scope: !1910, file: !3, line: 256, type: !109)
!1918 = !DILocalVariable(name: "srec", scope: !1910, file: !3, line: 257, type: !99)
!1919 = !DILocation(line: 252, column: 48, scope: !1910)
!1920 = !DILocation(line: 253, column: 27, scope: !1910)
!1921 = !DILocation(line: 254, column: 19, scope: !1910)
!1922 = !DILocation(line: 256, column: 2, scope: !1910)
!1923 = !DILocation(line: 256, column: 22, scope: !1910)
!1924 = !DILocation(line: 256, column: 36, scope: !1910)
!1925 = !DILocation(line: 257, column: 2, scope: !1910)
!1926 = !DILocation(line: 257, column: 24, scope: !1910)
!1927 = !DILocation(line: 259, column: 17, scope: !1910)
!1928 = !DILocation(line: 259, column: 9, scope: !1910)
!1929 = !DILocation(line: 259, column: 7, scope: !1910)
!1930 = !DILocation(line: 261, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 261, column: 6)
!1932 = !DILocation(line: 261, column: 6, scope: !1910)
!1933 = !DILocation(line: 262, column: 3, scope: !1931)
!1934 = !DILocation(line: 263, column: 15, scope: !1910)
!1935 = !DILocation(line: 263, column: 2, scope: !1910)
!1936 = !DILocation(line: 263, column: 8, scope: !1910)
!1937 = !DILocation(line: 263, column: 13, scope: !1910)
!1938 = !DILocation(line: 264, column: 2, scope: !1910)
!1939 = !DILocation(line: 264, column: 8, scope: !1910)
!1940 = !DILocation(line: 264, column: 20, scope: !1910)
!1941 = !DILocation(line: 264, column: 19, scope: !1910)
!1942 = !DILocation(line: 265, column: 9, scope: !1910)
!1943 = !DILocation(line: 265, column: 15, scope: !1910)
!1944 = !DILocation(line: 265, column: 24, scope: !1910)
!1945 = !DILocation(line: 265, column: 2, scope: !1910)
!1946 = !DILocation(line: 265, column: 28, scope: !1910)
!1947 = !DILocation(line: 265, column: 38, scope: !1910)
!1948 = !DILocation(line: 265, column: 42, scope: !1910)
!1949 = !DILocation(line: 265, column: 52, scope: !1910)
!1950 = !DILocation(line: 265, column: 58, scope: !1910)
!1951 = !DILocation(line: 266, column: 17, scope: !1910)
!1952 = !DILocation(line: 266, column: 2, scope: !1910)
!1953 = !DILocation(line: 266, column: 8, scope: !1910)
!1954 = !DILocation(line: 266, column: 15, scope: !1910)
!1955 = !DILocation(line: 267, column: 16, scope: !1910)
!1956 = !DILocation(line: 267, column: 2, scope: !1910)
!1957 = !DILocation(line: 267, column: 8, scope: !1910)
!1958 = !DILocation(line: 267, column: 14, scope: !1910)
!1959 = !DILocation(line: 270, column: 2, scope: !1910)
!1960 = !DILocation(line: 270, column: 12, scope: !1910)
!1961 = !DILocation(line: 270, column: 17, scope: !1910)
!1962 = !DILocation(line: 271, column: 2, scope: !1910)
!1963 = !DILocation(line: 271, column: 12, scope: !1910)
!1964 = !DILocation(line: 271, column: 16, scope: !1910)
!1965 = !DILocation(line: 272, column: 2, scope: !1910)
!1966 = !DILocation(line: 272, column: 12, scope: !1910)
!1967 = !DILocation(line: 272, column: 16, scope: !1910)
!1968 = !DILocation(line: 273, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 273, column: 6)
!1970 = !DILocation(line: 273, column: 16, scope: !1969)
!1971 = !DILocation(line: 273, column: 22, scope: !1969)
!1972 = !DILocation(line: 273, column: 29, scope: !1969)
!1973 = !DILocation(line: 273, column: 6, scope: !1910)
!1974 = !DILocation(line: 274, column: 3, scope: !1969)
!1975 = !DILocation(line: 274, column: 13, scope: !1969)
!1976 = !DILocation(line: 274, column: 19, scope: !1969)
!1977 = !DILocation(line: 275, column: 27, scope: !1910)
!1978 = !DILocation(line: 275, column: 2, scope: !1910)
!1979 = !DILocation(line: 275, column: 12, scope: !1910)
!1980 = !DILocation(line: 275, column: 25, scope: !1910)
!1981 = !DILocation(line: 276, column: 2, scope: !1910)
!1982 = !DILocation(line: 276, column: 12, scope: !1910)
!1983 = !DILocation(line: 276, column: 25, scope: !1910)
!1984 = !DILocation(line: 278, column: 17, scope: !1910)
!1985 = !DILocation(line: 278, column: 23, scope: !1910)
!1986 = !DILocation(line: 278, column: 30, scope: !1910)
!1987 = !DILocation(line: 278, column: 43, scope: !1910)
!1988 = !DILocation(line: 278, column: 2, scope: !1910)
!1989 = !DILocation(line: 279, column: 2, scope: !1910)
!1990 = !DILocation(line: 280, column: 1, scope: !1910)
!1991 = distinct !DISubprogram(name: "kzalloc", scope: !84, file: !84, line: 719, type: !1992, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!96, !461, !94}
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "size", arg: 1, scope: !1991, file: !84, line: 719, type: !461)
!1996 = !DILocalVariable(name: "flags", arg: 2, scope: !1991, file: !84, line: 719, type: !94)
!1997 = !DILocation(line: 719, column: 52, scope: !1991)
!1998 = !DILocation(line: 719, column: 64, scope: !1991)
!1999 = !DILocation(line: 721, column: 17, scope: !1991)
!2000 = !DILocation(line: 721, column: 23, scope: !1991)
!2001 = !DILocation(line: 721, column: 29, scope: !1991)
!2002 = !DILocation(line: 721, column: 9, scope: !1991)
!2003 = !DILocation(line: 721, column: 2, scope: !1991)
!2004 = distinct !DISubprogram(name: "size_add", scope: !2005, file: !2005, line: 208, type: !2006, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2005 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!461, !461, !461}
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "addend1", arg: 1, scope: !2004, file: !2005, line: 208, type: !461)
!2010 = !DILocalVariable(name: "addend2", arg: 2, scope: !2004, file: !2005, line: 208, type: !461)
!2011 = !DILocalVariable(name: "bytes", scope: !2004, file: !2005, line: 210, type: !461)
!2012 = !DILocation(line: 208, column: 51, scope: !2004)
!2013 = !DILocation(line: 208, column: 67, scope: !2004)
!2014 = !DILocation(line: 210, column: 2, scope: !2004)
!2015 = !DILocation(line: 210, column: 9, scope: !2004)
!2016 = !DILocation(line: 212, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2004, file: !2005, line: 212, column: 6)
!2018 = !DILocation(line: 212, column: 6, scope: !2004)
!2019 = !DILocation(line: 213, column: 3, scope: !2017)
!2020 = !DILocation(line: 215, column: 9, scope: !2004)
!2021 = !DILocation(line: 215, column: 2, scope: !2004)
!2022 = !DILocation(line: 216, column: 1, scope: !2004)
!2023 = distinct !DISubprogram(name: "size_mul", scope: !2005, file: !2005, line: 189, type: !2006, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2024 = !{!2025, !2026, !2027}
!2025 = !DILocalVariable(name: "factor1", arg: 1, scope: !2023, file: !2005, line: 189, type: !461)
!2026 = !DILocalVariable(name: "factor2", arg: 2, scope: !2023, file: !2005, line: 189, type: !461)
!2027 = !DILocalVariable(name: "bytes", scope: !2023, file: !2005, line: 191, type: !461)
!2028 = !DILocation(line: 189, column: 51, scope: !2023)
!2029 = !DILocation(line: 189, column: 67, scope: !2023)
!2030 = !DILocation(line: 191, column: 2, scope: !2023)
!2031 = !DILocation(line: 191, column: 9, scope: !2023)
!2032 = !DILocation(line: 193, column: 6, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2023, file: !2005, line: 193, column: 6)
!2034 = !DILocation(line: 193, column: 6, scope: !2023)
!2035 = !DILocation(line: 194, column: 3, scope: !2033)
!2036 = !DILocation(line: 196, column: 9, scope: !2023)
!2037 = !DILocation(line: 196, column: 2, scope: !2023)
!2038 = !DILocation(line: 197, column: 1, scope: !2023)
!2039 = distinct !DISubprogram(name: "follower_info", scope: !3, file: !3, line: 184, type: !160, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2040)
!2040 = !{!2041, !2042, !2043}
!2041 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2039, file: !3, line: 184, type: !138)
!2042 = !DILocalVariable(name: "uinfo", arg: 2, scope: !2039, file: !3, line: 185, type: !162)
!2043 = !DILocalVariable(name: "follower", scope: !2039, file: !3, line: 187, type: !99)
!2044 = !DILocation(line: 184, column: 47, scope: !2039)
!2045 = !DILocation(line: 185, column: 31, scope: !2039)
!2046 = !DILocation(line: 187, column: 2, scope: !2039)
!2047 = !DILocation(line: 187, column: 24, scope: !2039)
!2048 = !DILocation(line: 187, column: 35, scope: !2039)
!2049 = !DILocation(line: 188, column: 9, scope: !2039)
!2050 = !DILocation(line: 188, column: 19, scope: !2039)
!2051 = !DILocation(line: 188, column: 28, scope: !2039)
!2052 = !DILocation(line: 188, column: 34, scope: !2039)
!2053 = !DILocation(line: 188, column: 44, scope: !2039)
!2054 = !DILocation(line: 188, column: 54, scope: !2039)
!2055 = !DILocation(line: 189, column: 1, scope: !2039)
!2056 = !DILocation(line: 188, column: 2, scope: !2039)
!2057 = distinct !DISubprogram(name: "follower_get", scope: !3, file: !3, line: 191, type: !213, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2057, file: !3, line: 191, type: !138)
!2060 = !DILocalVariable(name: "ucontrol", arg: 2, scope: !2057, file: !3, line: 192, type: !215)
!2061 = !DILocalVariable(name: "follower", scope: !2057, file: !3, line: 194, type: !99)
!2062 = !DILocation(line: 191, column: 46, scope: !2057)
!2063 = !DILocation(line: 192, column: 31, scope: !2057)
!2064 = !DILocation(line: 194, column: 2, scope: !2057)
!2065 = !DILocation(line: 194, column: 24, scope: !2057)
!2066 = !DILocation(line: 194, column: 35, scope: !2057)
!2067 = !DILocation(line: 195, column: 26, scope: !2057)
!2068 = !DILocation(line: 195, column: 36, scope: !2057)
!2069 = !DILocation(line: 195, column: 9, scope: !2057)
!2070 = !DILocation(line: 196, column: 1, scope: !2057)
!2071 = !DILocation(line: 195, column: 2, scope: !2057)
!2072 = distinct !DISubprogram(name: "follower_put", scope: !3, file: !3, line: 198, type: !213, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079}
!2074 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2072, file: !3, line: 198, type: !138)
!2075 = !DILocalVariable(name: "ucontrol", arg: 2, scope: !2072, file: !3, line: 199, type: !215)
!2076 = !DILocalVariable(name: "follower", scope: !2072, file: !3, line: 201, type: !99)
!2077 = !DILocalVariable(name: "err", scope: !2072, file: !3, line: 202, type: !46)
!2078 = !DILocalVariable(name: "ch", scope: !2072, file: !3, line: 202, type: !46)
!2079 = !DILocalVariable(name: "changed", scope: !2072, file: !3, line: 202, type: !46)
!2080 = !DILocation(line: 198, column: 46, scope: !2072)
!2081 = !DILocation(line: 199, column: 31, scope: !2072)
!2082 = !DILocation(line: 201, column: 2, scope: !2072)
!2083 = !DILocation(line: 201, column: 24, scope: !2072)
!2084 = !DILocation(line: 201, column: 35, scope: !2072)
!2085 = !DILocation(line: 202, column: 2, scope: !2072)
!2086 = !DILocation(line: 202, column: 6, scope: !2072)
!2087 = !DILocation(line: 202, column: 11, scope: !2072)
!2088 = !DILocation(line: 202, column: 15, scope: !2072)
!2089 = !DILocation(line: 204, column: 22, scope: !2072)
!2090 = !DILocation(line: 204, column: 8, scope: !2072)
!2091 = !DILocation(line: 204, column: 6, scope: !2072)
!2092 = !DILocation(line: 205, column: 6, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 205, column: 6)
!2094 = !DILocation(line: 205, column: 10, scope: !2093)
!2095 = !DILocation(line: 205, column: 6, scope: !2072)
!2096 = !DILocation(line: 206, column: 10, scope: !2093)
!2097 = !DILocation(line: 206, column: 3, scope: !2093)
!2098 = !DILocation(line: 207, column: 10, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 207, column: 2)
!2100 = !DILocation(line: 207, column: 7, scope: !2099)
!2101 = !DILocation(line: 207, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 207, column: 2)
!2103 = !DILocation(line: 207, column: 20, scope: !2102)
!2104 = !DILocation(line: 207, column: 30, scope: !2102)
!2105 = !DILocation(line: 207, column: 35, scope: !2102)
!2106 = !DILocation(line: 207, column: 18, scope: !2102)
!2107 = !DILocation(line: 207, column: 2, scope: !2099)
!2108 = !DILocation(line: 208, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 208, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 207, column: 48)
!2111 = !DILocation(line: 208, column: 17, scope: !2109)
!2112 = !DILocation(line: 208, column: 22, scope: !2109)
!2113 = !DILocation(line: 208, column: 29, scope: !2109)
!2114 = !DILocation(line: 208, column: 39, scope: !2109)
!2115 = !DILocation(line: 208, column: 59, scope: !2109)
!2116 = !DILocation(line: 208, column: 26, scope: !2109)
!2117 = !DILocation(line: 208, column: 7, scope: !2110)
!2118 = !DILocation(line: 209, column: 12, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 208, column: 64)
!2120 = !DILocation(line: 210, column: 25, scope: !2119)
!2121 = !DILocation(line: 210, column: 35, scope: !2119)
!2122 = !DILocation(line: 210, column: 55, scope: !2119)
!2123 = !DILocation(line: 210, column: 4, scope: !2119)
!2124 = !DILocation(line: 210, column: 14, scope: !2119)
!2125 = !DILocation(line: 210, column: 19, scope: !2119)
!2126 = !DILocation(line: 210, column: 23, scope: !2119)
!2127 = !DILocation(line: 211, column: 3, scope: !2119)
!2128 = !DILocation(line: 212, column: 2, scope: !2110)
!2129 = !DILocation(line: 207, column: 44, scope: !2102)
!2130 = !DILocation(line: 207, column: 2, scope: !2102)
!2131 = distinct !{!2131, !2107, !2132, !2133, !2134}
!2132 = !DILocation(line: 212, column: 2, scope: !2099)
!2133 = !{!"llvm.loop.mustprogress"}
!2134 = !{!"llvm.loop.unroll.disable"}
!2135 = !DILocation(line: 213, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 213, column: 6)
!2137 = !DILocation(line: 213, column: 6, scope: !2072)
!2138 = !DILocation(line: 214, column: 3, scope: !2136)
!2139 = !DILocation(line: 215, column: 25, scope: !2072)
!2140 = !DILocation(line: 215, column: 35, scope: !2072)
!2141 = !DILocation(line: 215, column: 8, scope: !2072)
!2142 = !DILocation(line: 215, column: 6, scope: !2072)
!2143 = !DILocation(line: 216, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 216, column: 6)
!2145 = !DILocation(line: 216, column: 10, scope: !2144)
!2146 = !DILocation(line: 216, column: 6, scope: !2072)
!2147 = !DILocation(line: 217, column: 10, scope: !2144)
!2148 = !DILocation(line: 217, column: 3, scope: !2144)
!2149 = !DILocation(line: 218, column: 2, scope: !2072)
!2150 = !DILocation(line: 219, column: 1, scope: !2072)
!2151 = distinct !DISubprogram(name: "follower_tlv_cmd", scope: !3, file: !3, line: 221, type: !277, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2152 = !{!2153, !2154, !2155, !2156, !2157}
!2153 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2151, file: !3, line: 221, type: !138)
!2154 = !DILocalVariable(name: "op_flag", arg: 2, scope: !2151, file: !3, line: 222, type: !46)
!2155 = !DILocalVariable(name: "size", arg: 3, scope: !2151, file: !3, line: 222, type: !7)
!2156 = !DILocalVariable(name: "tlv", arg: 4, scope: !2151, file: !3, line: 223, type: !243)
!2157 = !DILocalVariable(name: "follower", scope: !2151, file: !3, line: 225, type: !99)
!2158 = !DILocation(line: 221, column: 50, scope: !2151)
!2159 = !DILocation(line: 222, column: 12, scope: !2151)
!2160 = !DILocation(line: 222, column: 34, scope: !2151)
!2161 = !DILocation(line: 223, column: 29, scope: !2151)
!2162 = !DILocation(line: 225, column: 2, scope: !2151)
!2163 = !DILocation(line: 225, column: 24, scope: !2151)
!2164 = !DILocation(line: 225, column: 35, scope: !2151)
!2165 = !DILocation(line: 227, column: 9, scope: !2151)
!2166 = !DILocation(line: 227, column: 19, scope: !2151)
!2167 = !DILocation(line: 227, column: 28, scope: !2151)
!2168 = !DILocation(line: 227, column: 32, scope: !2151)
!2169 = !DILocation(line: 227, column: 35, scope: !2151)
!2170 = !DILocation(line: 227, column: 45, scope: !2151)
!2171 = !DILocation(line: 227, column: 55, scope: !2151)
!2172 = !DILocation(line: 227, column: 64, scope: !2151)
!2173 = !DILocation(line: 227, column: 70, scope: !2151)
!2174 = !DILocation(line: 228, column: 1, scope: !2151)
!2175 = !DILocation(line: 227, column: 2, scope: !2151)
!2176 = distinct !DISubprogram(name: "follower_free", scope: !3, file: !3, line: 230, type: !287, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2177)
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2176, file: !3, line: 230, type: !138)
!2179 = !DILocalVariable(name: "follower", scope: !2176, file: !3, line: 232, type: !99)
!2180 = !DILocation(line: 230, column: 48, scope: !2176)
!2181 = !DILocation(line: 232, column: 2, scope: !2176)
!2182 = !DILocation(line: 232, column: 24, scope: !2176)
!2183 = !DILocation(line: 232, column: 35, scope: !2176)
!2184 = !DILocation(line: 233, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 233, column: 6)
!2186 = !DILocation(line: 233, column: 16, scope: !2185)
!2187 = !DILocation(line: 233, column: 25, scope: !2185)
!2188 = !DILocation(line: 233, column: 6, scope: !2176)
!2189 = !DILocation(line: 234, column: 3, scope: !2185)
!2190 = !DILocation(line: 234, column: 13, scope: !2185)
!2191 = !DILocation(line: 234, column: 22, scope: !2185)
!2192 = !DILocation(line: 234, column: 36, scope: !2185)
!2193 = !DILocation(line: 234, column: 46, scope: !2185)
!2194 = !DILocation(line: 235, column: 6, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 235, column: 6)
!2196 = !DILocation(line: 235, column: 16, scope: !2195)
!2197 = !DILocation(line: 235, column: 6, scope: !2176)
!2198 = !DILocation(line: 236, column: 13, scope: !2195)
!2199 = !DILocation(line: 236, column: 23, scope: !2195)
!2200 = !DILocation(line: 236, column: 3, scope: !2195)
!2201 = !DILocation(line: 237, column: 8, scope: !2176)
!2202 = !DILocation(line: 237, column: 2, scope: !2176)
!2203 = !DILocation(line: 238, column: 1, scope: !2176)
!2204 = distinct !DISubprogram(name: "list_add_tail", scope: !2205, file: !2205, line: 181, type: !2206, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2205 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !106, !106}
!2208 = !{!2209, !2210}
!2209 = !DILocalVariable(name: "new", arg: 1, scope: !2204, file: !2205, line: 181, type: !106)
!2210 = !DILocalVariable(name: "head", arg: 2, scope: !2204, file: !2205, line: 181, type: !106)
!2211 = !DILocation(line: 181, column: 52, scope: !2204)
!2212 = !DILocation(line: 181, column: 75, scope: !2204)
!2213 = !DILocation(line: 183, column: 13, scope: !2204)
!2214 = !DILocation(line: 183, column: 18, scope: !2204)
!2215 = !DILocation(line: 183, column: 24, scope: !2204)
!2216 = !DILocation(line: 183, column: 30, scope: !2204)
!2217 = !DILocation(line: 183, column: 2, scope: !2204)
!2218 = !DILocation(line: 184, column: 1, scope: !2204)
!2219 = distinct !DISubprogram(name: "snd_ctl_add_followers", scope: !3, file: !3, line: 292, type: !2220, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!46, !299, !138, !2222}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!2224 = !{!2225, !2226, !2227, !2228, !2229}
!2225 = !DILocalVariable(name: "card", arg: 1, scope: !2219, file: !3, line: 292, type: !299)
!2226 = !DILocalVariable(name: "master", arg: 2, scope: !2219, file: !3, line: 292, type: !138)
!2227 = !DILocalVariable(name: "list", arg: 3, scope: !2219, file: !3, line: 293, type: !2222)
!2228 = !DILocalVariable(name: "follower", scope: !2219, file: !3, line: 295, type: !138)
!2229 = !DILocalVariable(name: "err", scope: !2219, file: !3, line: 296, type: !46)
!2230 = !DILocation(line: 292, column: 44, scope: !2219)
!2231 = !DILocation(line: 292, column: 71, scope: !2219)
!2232 = !DILocation(line: 293, column: 26, scope: !2219)
!2233 = !DILocation(line: 295, column: 2, scope: !2219)
!2234 = !DILocation(line: 295, column: 23, scope: !2219)
!2235 = !DILocation(line: 296, column: 2, scope: !2219)
!2236 = !DILocation(line: 296, column: 6, scope: !2219)
!2237 = !DILocation(line: 298, column: 2, scope: !2219)
!2238 = !DILocation(line: 298, column: 10, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 298, column: 2)
!2240 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 298, column: 2)
!2241 = !DILocation(line: 298, column: 9, scope: !2239)
!2242 = !DILocation(line: 298, column: 2, scope: !2240)
!2243 = !DILocation(line: 299, column: 36, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 298, column: 24)
!2245 = !DILocation(line: 299, column: 43, scope: !2244)
!2246 = !DILocation(line: 299, column: 42, scope: !2244)
!2247 = !DILocation(line: 299, column: 14, scope: !2244)
!2248 = !DILocation(line: 299, column: 12, scope: !2244)
!2249 = !DILocation(line: 300, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 300, column: 7)
!2251 = !DILocation(line: 300, column: 7, scope: !2244)
!2252 = !DILocation(line: 301, column: 31, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 300, column: 17)
!2254 = !DILocation(line: 301, column: 39, scope: !2253)
!2255 = !DILocation(line: 301, column: 10, scope: !2253)
!2256 = !DILocation(line: 301, column: 8, scope: !2253)
!2257 = !DILocation(line: 302, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 302, column: 8)
!2259 = !DILocation(line: 302, column: 12, scope: !2258)
!2260 = !DILocation(line: 302, column: 8, scope: !2253)
!2261 = !DILocation(line: 303, column: 12, scope: !2258)
!2262 = !DILocation(line: 303, column: 5, scope: !2258)
!2263 = !DILocation(line: 304, column: 3, scope: !2253)
!2264 = !DILocation(line: 305, column: 2, scope: !2244)
!2265 = !DILocation(line: 298, column: 20, scope: !2239)
!2266 = !DILocation(line: 298, column: 2, scope: !2239)
!2267 = distinct !{!2267, !2242, !2268, !2133, !2134}
!2268 = !DILocation(line: 305, column: 2, scope: !2240)
!2269 = !DILocation(line: 307, column: 2, scope: !2219)
!2270 = !DILocation(line: 308, column: 1, scope: !2219)
!2271 = distinct !DISubprogram(name: "snd_ctl_find_id_mixer", scope: !140, file: !140, line: 161, type: !2272, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!138, !299, !339}
!2274 = !{!2275, !2276, !2277}
!2275 = !DILocalVariable(name: "card", arg: 1, scope: !2271, file: !140, line: 161, type: !299)
!2276 = !DILocalVariable(name: "name", arg: 2, scope: !2271, file: !140, line: 161, type: !339)
!2277 = !DILocalVariable(name: "id", scope: !2271, file: !140, line: 163, type: !144)
!2278 = !DILocation(line: 161, column: 40, scope: !2271)
!2279 = !DILocation(line: 161, column: 58, scope: !2271)
!2280 = !DILocation(line: 163, column: 2, scope: !2271)
!2281 = !DILocation(line: 163, column: 25, scope: !2271)
!2282 = !DILocation(line: 165, column: 5, scope: !2271)
!2283 = !DILocation(line: 165, column: 11, scope: !2271)
!2284 = !DILocation(line: 166, column: 13, scope: !2271)
!2285 = !DILocation(line: 166, column: 10, scope: !2271)
!2286 = !DILocation(line: 166, column: 19, scope: !2271)
!2287 = !DILocation(line: 166, column: 2, scope: !2271)
!2288 = !DILocation(line: 167, column: 25, scope: !2271)
!2289 = !DILocation(line: 167, column: 9, scope: !2271)
!2290 = !DILocation(line: 168, column: 1, scope: !2271)
!2291 = !DILocation(line: 167, column: 2, scope: !2271)
!2292 = distinct !DISubprogram(name: "snd_ctl_add_follower", scope: !140, file: !140, line: 260, type: !2293, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!46, !138, !138}
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "master", arg: 1, scope: !2292, file: !140, line: 260, type: !138)
!2297 = !DILocalVariable(name: "follower", arg: 2, scope: !2292, file: !140, line: 260, type: !138)
!2298 = !DILocation(line: 260, column: 43, scope: !2292)
!2299 = !DILocation(line: 260, column: 72, scope: !2292)
!2300 = !DILocation(line: 262, column: 31, scope: !2292)
!2301 = !DILocation(line: 262, column: 39, scope: !2292)
!2302 = !DILocation(line: 262, column: 9, scope: !2292)
!2303 = !DILocation(line: 262, column: 2, scope: !2292)
!2304 = distinct !DISubprogram(name: "snd_ctl_make_virtual_master", scope: !3, file: !3, line: 420, type: !2305, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!138, !418, !280}
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2331}
!2308 = !DILocalVariable(name: "name", arg: 1, scope: !2304, file: !3, line: 420, type: !418)
!2309 = !DILocalVariable(name: "tlv", arg: 2, scope: !2304, file: !3, line: 421, type: !280)
!2310 = !DILocalVariable(name: "master", scope: !2304, file: !3, line: 423, type: !109)
!2311 = !DILocalVariable(name: "kctl", scope: !2304, file: !3, line: 424, type: !138)
!2312 = !DILocalVariable(name: "knew", scope: !2304, file: !3, line: 425, type: !2313)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol_new", file: !140, line: 47, size: 640, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2330}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !2313, file: !140, line: 48, baseType: !97, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2313, file: !140, line: 49, baseType: !7, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !2313, file: !140, line: 50, baseType: !7, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2313, file: !140, line: 51, baseType: !339, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2313, file: !140, line: 52, baseType: !7, size: 32, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2313, file: !140, line: 53, baseType: !7, size: 32, offset: 224)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2313, file: !140, line: 54, baseType: !7, size: 32, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2313, file: !140, line: 55, baseType: !158, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2313, file: !140, line: 56, baseType: !211, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2313, file: !140, line: 57, baseType: !269, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tlv", scope: !2313, file: !140, line: 61, baseType: !2326, size: 64, offset: 512)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2313, file: !140, line: 58, size: 64, elements: !2327)
!2327 = !{!2328, !2329}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !2326, file: !140, line: 59, baseType: !275, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2326, file: !140, line: 60, baseType: !280, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "private_value", scope: !2313, file: !140, line: 62, baseType: !283, size: 64, offset: 576)
!2331 = !DILocalVariable(name: "type", scope: !2332, file: !3, line: 450, type: !7)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 449, column: 11)
!2333 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 449, column: 6)
!2334 = !DILocation(line: 420, column: 56, scope: !2304)
!2335 = !DILocation(line: 421, column: 28, scope: !2304)
!2336 = !DILocation(line: 423, column: 2, scope: !2304)
!2337 = !DILocation(line: 423, column: 22, scope: !2304)
!2338 = !DILocation(line: 424, column: 2, scope: !2304)
!2339 = !DILocation(line: 424, column: 23, scope: !2304)
!2340 = !DILocation(line: 425, column: 2, scope: !2304)
!2341 = !DILocation(line: 425, column: 26, scope: !2304)
!2342 = !DILocation(line: 427, column: 2, scope: !2304)
!2343 = !DILocation(line: 428, column: 7, scope: !2304)
!2344 = !DILocation(line: 428, column: 13, scope: !2304)
!2345 = !DILocation(line: 429, column: 14, scope: !2304)
!2346 = !DILocation(line: 429, column: 7, scope: !2304)
!2347 = !DILocation(line: 429, column: 12, scope: !2304)
!2348 = !DILocation(line: 430, column: 7, scope: !2304)
!2349 = !DILocation(line: 430, column: 12, scope: !2304)
!2350 = !DILocation(line: 432, column: 11, scope: !2304)
!2351 = !DILocation(line: 432, column: 9, scope: !2304)
!2352 = !DILocation(line: 433, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 433, column: 6)
!2354 = !DILocation(line: 433, column: 6, scope: !2304)
!2355 = !DILocation(line: 434, column: 3, scope: !2353)
!2356 = !DILocation(line: 435, column: 18, scope: !2304)
!2357 = !DILocation(line: 435, column: 26, scope: !2304)
!2358 = !DILocation(line: 435, column: 2, scope: !2304)
!2359 = !DILocation(line: 437, column: 29, scope: !2304)
!2360 = !DILocation(line: 437, column: 9, scope: !2304)
!2361 = !DILocation(line: 437, column: 7, scope: !2304)
!2362 = !DILocation(line: 438, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 438, column: 6)
!2364 = !DILocation(line: 438, column: 6, scope: !2304)
!2365 = !DILocation(line: 439, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 438, column: 13)
!2367 = !DILocation(line: 439, column: 3, scope: !2366)
!2368 = !DILocation(line: 440, column: 3, scope: !2366)
!2369 = !DILocation(line: 443, column: 2, scope: !2304)
!2370 = !DILocation(line: 443, column: 8, scope: !2304)
!2371 = !DILocation(line: 443, column: 13, scope: !2304)
!2372 = !DILocation(line: 444, column: 2, scope: !2304)
!2373 = !DILocation(line: 444, column: 8, scope: !2304)
!2374 = !DILocation(line: 444, column: 12, scope: !2304)
!2375 = !DILocation(line: 445, column: 2, scope: !2304)
!2376 = !DILocation(line: 445, column: 8, scope: !2304)
!2377 = !DILocation(line: 445, column: 12, scope: !2304)
!2378 = !DILocation(line: 446, column: 2, scope: !2304)
!2379 = !DILocation(line: 446, column: 8, scope: !2304)
!2380 = !DILocation(line: 446, column: 21, scope: !2304)
!2381 = !DILocation(line: 449, column: 6, scope: !2333)
!2382 = !DILocation(line: 449, column: 6, scope: !2304)
!2383 = !DILocation(line: 450, column: 3, scope: !2332)
!2384 = !DILocation(line: 450, column: 16, scope: !2332)
!2385 = !DILocation(line: 450, column: 23, scope: !2332)
!2386 = !DILocation(line: 451, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 451, column: 7)
!2388 = !DILocation(line: 451, column: 12, scope: !2387)
!2389 = !DILocation(line: 451, column: 39, scope: !2387)
!2390 = !DILocation(line: 452, column: 7, scope: !2387)
!2391 = !DILocation(line: 452, column: 12, scope: !2387)
!2392 = !DILocation(line: 452, column: 40, scope: !2387)
!2393 = !DILocation(line: 453, column: 7, scope: !2387)
!2394 = !DILocation(line: 453, column: 12, scope: !2387)
!2395 = !DILocation(line: 451, column: 7, scope: !2332)
!2396 = !DILocation(line: 454, column: 4, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 453, column: 46)
!2398 = !DILocation(line: 454, column: 10, scope: !2397)
!2399 = !DILocation(line: 454, column: 16, scope: !2397)
!2400 = !DILocation(line: 454, column: 23, scope: !2397)
!2401 = !DILocation(line: 455, column: 11, scope: !2397)
!2402 = !DILocation(line: 455, column: 19, scope: !2397)
!2403 = !DILocation(line: 455, column: 4, scope: !2397)
!2404 = !DILocation(line: 455, column: 24, scope: !2397)
!2405 = !DILocation(line: 456, column: 18, scope: !2397)
!2406 = !DILocation(line: 456, column: 26, scope: !2397)
!2407 = !DILocation(line: 456, column: 4, scope: !2397)
!2408 = !DILocation(line: 456, column: 10, scope: !2397)
!2409 = !DILocation(line: 456, column: 16, scope: !2397)
!2410 = !DILocation(line: 457, column: 3, scope: !2397)
!2411 = !DILocation(line: 458, column: 2, scope: !2333)
!2412 = !DILocation(line: 458, column: 2, scope: !2332)
!2413 = !DILocation(line: 460, column: 9, scope: !2304)
!2414 = !DILocation(line: 460, column: 2, scope: !2304)
!2415 = !DILocation(line: 461, column: 1, scope: !2304)
!2416 = distinct !DISubprogram(name: "master_info", scope: !3, file: !3, line: 314, type: !160, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2416, file: !3, line: 314, type: !138)
!2419 = !DILocalVariable(name: "uinfo", arg: 2, scope: !2416, file: !3, line: 315, type: !162)
!2420 = !DILocalVariable(name: "master", scope: !2416, file: !3, line: 317, type: !109)
!2421 = !DILocalVariable(name: "ret", scope: !2416, file: !3, line: 318, type: !46)
!2422 = !DILocation(line: 314, column: 45, scope: !2416)
!2423 = !DILocation(line: 315, column: 35, scope: !2416)
!2424 = !DILocation(line: 317, column: 2, scope: !2416)
!2425 = !DILocation(line: 317, column: 22, scope: !2416)
!2426 = !DILocation(line: 317, column: 31, scope: !2416)
!2427 = !DILocation(line: 318, column: 2, scope: !2416)
!2428 = !DILocation(line: 318, column: 6, scope: !2416)
!2429 = !DILocation(line: 320, column: 20, scope: !2416)
!2430 = !DILocation(line: 320, column: 8, scope: !2416)
!2431 = !DILocation(line: 320, column: 6, scope: !2416)
!2432 = !DILocation(line: 321, column: 6, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 321, column: 6)
!2434 = !DILocation(line: 321, column: 10, scope: !2433)
!2435 = !DILocation(line: 321, column: 6, scope: !2416)
!2436 = !DILocation(line: 322, column: 10, scope: !2433)
!2437 = !DILocation(line: 322, column: 3, scope: !2433)
!2438 = !DILocation(line: 323, column: 16, scope: !2416)
!2439 = !DILocation(line: 323, column: 24, scope: !2416)
!2440 = !DILocation(line: 323, column: 29, scope: !2416)
!2441 = !DILocation(line: 323, column: 2, scope: !2416)
!2442 = !DILocation(line: 323, column: 9, scope: !2416)
!2443 = !DILocation(line: 323, column: 14, scope: !2416)
!2444 = !DILocation(line: 324, column: 17, scope: !2416)
!2445 = !DILocation(line: 324, column: 25, scope: !2416)
!2446 = !DILocation(line: 324, column: 30, scope: !2416)
!2447 = !DILocation(line: 324, column: 2, scope: !2416)
!2448 = !DILocation(line: 324, column: 9, scope: !2416)
!2449 = !DILocation(line: 324, column: 15, scope: !2416)
!2450 = !DILocation(line: 325, column: 29, scope: !2416)
!2451 = !DILocation(line: 325, column: 37, scope: !2416)
!2452 = !DILocation(line: 325, column: 42, scope: !2416)
!2453 = !DILocation(line: 325, column: 2, scope: !2416)
!2454 = !DILocation(line: 325, column: 9, scope: !2416)
!2455 = !DILocation(line: 325, column: 23, scope: !2416)
!2456 = !DILocation(line: 325, column: 27, scope: !2416)
!2457 = !DILocation(line: 326, column: 29, scope: !2416)
!2458 = !DILocation(line: 326, column: 37, scope: !2416)
!2459 = !DILocation(line: 326, column: 42, scope: !2416)
!2460 = !DILocation(line: 326, column: 2, scope: !2416)
!2461 = !DILocation(line: 326, column: 9, scope: !2416)
!2462 = !DILocation(line: 326, column: 23, scope: !2416)
!2463 = !DILocation(line: 326, column: 27, scope: !2416)
!2464 = !DILocation(line: 327, column: 2, scope: !2416)
!2465 = !DILocation(line: 328, column: 1, scope: !2416)
!2466 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2205, file: !2205, line: 35, type: !2467, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !106}
!2469 = !{!2470}
!2470 = !DILocalVariable(name: "list", arg: 1, scope: !2466, file: !2205, line: 35, type: !106)
!2471 = !DILocation(line: 35, column: 53, scope: !2466)
!2472 = !DILocation(line: 37, column: 2, scope: !2466)
!2473 = !DILocation(line: 37, column: 2, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2466, file: !2205, line: 37, column: 2)
!2475 = !DILocation(line: 37, column: 2, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2474, file: !2205, line: 37, column: 2)
!2477 = !DILocation(line: 37, column: 2, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !2205, line: 37, column: 2)
!2479 = !DILocation(line: 38, column: 2, scope: !2466)
!2480 = !DILocation(line: 38, column: 2, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2466, file: !2205, line: 38, column: 2)
!2482 = !DILocation(line: 38, column: 2, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !2205, line: 38, column: 2)
!2484 = !DILocation(line: 38, column: 2, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !2205, line: 38, column: 2)
!2486 = !DILocation(line: 39, column: 1, scope: !2466)
!2487 = !DISubprogram(name: "snd_ctl_new1", scope: !140, file: !140, line: 134, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!138, !2490, !96}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2492 = !DISubprogram(name: "kfree", scope: !84, file: !84, line: 227, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !686}
!2495 = distinct !DISubprogram(name: "master_get", scope: !3, file: !3, line: 330, type: !213, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2495, file: !3, line: 330, type: !138)
!2498 = !DILocalVariable(name: "ucontrol", arg: 2, scope: !2495, file: !3, line: 331, type: !215)
!2499 = !DILocalVariable(name: "master", scope: !2495, file: !3, line: 333, type: !109)
!2500 = !DILocalVariable(name: "err", scope: !2495, file: !3, line: 334, type: !46)
!2501 = !DILocation(line: 330, column: 44, scope: !2495)
!2502 = !DILocation(line: 331, column: 36, scope: !2495)
!2503 = !DILocation(line: 333, column: 2, scope: !2495)
!2504 = !DILocation(line: 333, column: 22, scope: !2495)
!2505 = !DILocation(line: 333, column: 31, scope: !2495)
!2506 = !DILocation(line: 334, column: 2, scope: !2495)
!2507 = !DILocation(line: 334, column: 6, scope: !2495)
!2508 = !DILocation(line: 334, column: 24, scope: !2495)
!2509 = !DILocation(line: 334, column: 12, scope: !2495)
!2510 = !DILocation(line: 335, column: 6, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 335, column: 6)
!2512 = !DILocation(line: 335, column: 10, scope: !2511)
!2513 = !DILocation(line: 335, column: 6, scope: !2495)
!2514 = !DILocation(line: 336, column: 10, scope: !2511)
!2515 = !DILocation(line: 336, column: 3, scope: !2511)
!2516 = !DILocation(line: 337, column: 37, scope: !2495)
!2517 = !DILocation(line: 337, column: 45, scope: !2495)
!2518 = !DILocation(line: 337, column: 2, scope: !2495)
!2519 = !DILocation(line: 337, column: 12, scope: !2495)
!2520 = !DILocation(line: 337, column: 35, scope: !2495)
!2521 = !DILocation(line: 338, column: 2, scope: !2495)
!2522 = !DILocation(line: 339, column: 1, scope: !2495)
!2523 = distinct !DISubprogram(name: "master_put", scope: !3, file: !3, line: 360, type: !213, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2525 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2523, file: !3, line: 360, type: !138)
!2526 = !DILocalVariable(name: "ucontrol", arg: 2, scope: !2523, file: !3, line: 361, type: !215)
!2527 = !DILocalVariable(name: "master", scope: !2523, file: !3, line: 363, type: !109)
!2528 = !DILocalVariable(name: "err", scope: !2523, file: !3, line: 364, type: !46)
!2529 = !DILocalVariable(name: "new_val", scope: !2523, file: !3, line: 364, type: !46)
!2530 = !DILocalVariable(name: "old_val", scope: !2523, file: !3, line: 364, type: !46)
!2531 = !DILocalVariable(name: "first_init", scope: !2523, file: !3, line: 365, type: !764)
!2532 = !DILocation(line: 360, column: 44, scope: !2523)
!2533 = !DILocation(line: 361, column: 36, scope: !2523)
!2534 = !DILocation(line: 363, column: 2, scope: !2523)
!2535 = !DILocation(line: 363, column: 22, scope: !2523)
!2536 = !DILocation(line: 363, column: 31, scope: !2523)
!2537 = !DILocation(line: 364, column: 2, scope: !2523)
!2538 = !DILocation(line: 364, column: 6, scope: !2523)
!2539 = !DILocation(line: 364, column: 11, scope: !2523)
!2540 = !DILocation(line: 364, column: 20, scope: !2523)
!2541 = !DILocation(line: 365, column: 2, scope: !2523)
!2542 = !DILocation(line: 365, column: 7, scope: !2523)
!2543 = !DILocation(line: 367, column: 20, scope: !2523)
!2544 = !DILocation(line: 367, column: 8, scope: !2523)
!2545 = !DILocation(line: 367, column: 6, scope: !2523)
!2546 = !DILocation(line: 368, column: 6, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 368, column: 6)
!2548 = !DILocation(line: 368, column: 10, scope: !2547)
!2549 = !DILocation(line: 368, column: 6, scope: !2523)
!2550 = !DILocation(line: 369, column: 10, scope: !2547)
!2551 = !DILocation(line: 369, column: 3, scope: !2547)
!2552 = !DILocation(line: 370, column: 15, scope: !2523)
!2553 = !DILocation(line: 370, column: 13, scope: !2523)
!2554 = !DILocation(line: 371, column: 12, scope: !2523)
!2555 = !DILocation(line: 371, column: 20, scope: !2523)
!2556 = !DILocation(line: 371, column: 10, scope: !2523)
!2557 = !DILocation(line: 372, column: 12, scope: !2523)
!2558 = !DILocation(line: 372, column: 22, scope: !2523)
!2559 = !DILocation(line: 372, column: 10, scope: !2523)
!2560 = !DILocation(line: 373, column: 6, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 373, column: 6)
!2562 = !DILocation(line: 373, column: 17, scope: !2561)
!2563 = !DILocation(line: 373, column: 14, scope: !2561)
!2564 = !DILocation(line: 373, column: 6, scope: !2523)
!2565 = !DILocation(line: 374, column: 3, scope: !2561)
!2566 = !DILocation(line: 376, column: 23, scope: !2523)
!2567 = !DILocation(line: 376, column: 31, scope: !2523)
!2568 = !DILocation(line: 376, column: 40, scope: !2523)
!2569 = !DILocation(line: 376, column: 8, scope: !2523)
!2570 = !DILocation(line: 376, column: 6, scope: !2523)
!2571 = !DILocation(line: 377, column: 6, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 377, column: 6)
!2573 = !DILocation(line: 377, column: 10, scope: !2572)
!2574 = !DILocation(line: 377, column: 6, scope: !2523)
!2575 = !DILocation(line: 378, column: 10, scope: !2572)
!2576 = !DILocation(line: 378, column: 3, scope: !2572)
!2577 = !DILocation(line: 379, column: 6, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 379, column: 6)
!2579 = !DILocation(line: 379, column: 14, scope: !2578)
!2580 = !DILocation(line: 379, column: 19, scope: !2578)
!2581 = !DILocation(line: 379, column: 23, scope: !2578)
!2582 = !{i8 0, i8 2}
!2583 = !DILocation(line: 379, column: 6, scope: !2523)
!2584 = !DILocation(line: 380, column: 3, scope: !2578)
!2585 = !DILocation(line: 380, column: 11, scope: !2578)
!2586 = !DILocation(line: 380, column: 16, scope: !2578)
!2587 = !DILocation(line: 380, column: 24, scope: !2578)
!2588 = !DILocation(line: 380, column: 43, scope: !2578)
!2589 = !DILocation(line: 380, column: 51, scope: !2578)
!2590 = !DILocation(line: 381, column: 2, scope: !2523)
!2591 = !DILocation(line: 382, column: 1, scope: !2523)
!2592 = distinct !DISubprogram(name: "master_free", scope: !3, file: !3, line: 384, type: !287, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2601, !2603, !2606, !2607}
!2594 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2592, file: !3, line: 384, type: !138)
!2595 = !DILocalVariable(name: "master", scope: !2592, file: !3, line: 386, type: !109)
!2596 = !DILocalVariable(name: "follower", scope: !2592, file: !3, line: 387, type: !99)
!2597 = !DILocalVariable(name: "n", scope: !2592, file: !3, line: 387, type: !99)
!2598 = !DILocalVariable(name: "__mptr", scope: !2599, file: !3, line: 390, type: !96)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 390, column: 2)
!2600 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 390, column: 2)
!2601 = !DILocalVariable(name: "__mptr", scope: !2602, file: !3, line: 390, type: !96)
!2602 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 390, column: 2)
!2603 = !DILocalVariable(name: "sctl", scope: !2604, file: !3, line: 391, type: !138)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 390, column: 66)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 390, column: 2)
!2606 = !DILocalVariable(name: "olist", scope: !2604, file: !3, line: 392, type: !103)
!2607 = !DILocalVariable(name: "__mptr", scope: !2608, file: !3, line: 390, type: !96)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 390, column: 2)
!2609 = !DILocation(line: 384, column: 46, scope: !2592)
!2610 = !DILocation(line: 386, column: 2, scope: !2592)
!2611 = !DILocation(line: 386, column: 22, scope: !2592)
!2612 = !DILocation(line: 386, column: 31, scope: !2592)
!2613 = !DILocation(line: 387, column: 2, scope: !2592)
!2614 = !DILocation(line: 387, column: 24, scope: !2592)
!2615 = !DILocation(line: 387, column: 35, scope: !2592)
!2616 = !DILocation(line: 390, column: 2, scope: !2599)
!2617 = !DILocation(line: 390, column: 2, scope: !2600)
!2618 = !DILocation(line: 390, column: 2, scope: !2602)
!2619 = !DILocation(line: 390, column: 2, scope: !2605)
!2620 = !DILocation(line: 391, column: 3, scope: !2604)
!2621 = !DILocation(line: 391, column: 24, scope: !2604)
!2622 = !DILocation(line: 391, column: 31, scope: !2604)
!2623 = !DILocation(line: 391, column: 41, scope: !2604)
!2624 = !DILocation(line: 392, column: 3, scope: !2604)
!2625 = !DILocation(line: 392, column: 20, scope: !2604)
!2626 = !DILocation(line: 392, column: 28, scope: !2604)
!2627 = !DILocation(line: 392, column: 34, scope: !2604)
!2628 = !DILocation(line: 393, column: 10, scope: !2604)
!2629 = !DILocation(line: 393, column: 17, scope: !2604)
!2630 = !DILocation(line: 393, column: 27, scope: !2604)
!2631 = !DILocation(line: 393, column: 3, scope: !2604)
!2632 = !DILocation(line: 394, column: 10, scope: !2604)
!2633 = !DILocation(line: 394, column: 16, scope: !2604)
!2634 = !DILocation(line: 394, column: 3, scope: !2604)
!2635 = !DILocation(line: 394, column: 20, scope: !2604)
!2636 = !DILocation(line: 394, column: 30, scope: !2604)
!2637 = !DILocation(line: 394, column: 39, scope: !2604)
!2638 = !DILocation(line: 395, column: 10, scope: !2604)
!2639 = !DILocation(line: 395, column: 16, scope: !2604)
!2640 = !DILocation(line: 395, column: 22, scope: !2604)
!2641 = !DILocation(line: 396, column: 3, scope: !2604)
!2642 = !DILocation(line: 396, column: 9, scope: !2604)
!2643 = !DILocation(line: 396, column: 16, scope: !2604)
!2644 = !DILocation(line: 397, column: 9, scope: !2604)
!2645 = !DILocation(line: 397, column: 3, scope: !2604)
!2646 = !DILocation(line: 398, column: 2, scope: !2605)
!2647 = !DILocation(line: 398, column: 2, scope: !2604)
!2648 = !DILocation(line: 390, column: 2, scope: !2608)
!2649 = distinct !{!2649, !2617, !2650, !2133, !2134}
!2650 = !DILocation(line: 398, column: 2, scope: !2600)
!2651 = !DILocation(line: 399, column: 8, scope: !2592)
!2652 = !DILocation(line: 399, column: 2, scope: !2592)
!2653 = !DILocation(line: 400, column: 1, scope: !2592)
!2654 = distinct !DISubprogram(name: "snd_ctl_add_vmaster_hook", scope: !3, file: !3, line: 475, type: !2655, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!46, !138, !127, !96}
!2657 = !{!2658, !2659, !2660, !2661}
!2658 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2654, file: !3, line: 475, type: !138)
!2659 = !DILocalVariable(name: "hook", arg: 2, scope: !2654, file: !3, line: 476, type: !127)
!2660 = !DILocalVariable(name: "private_data", arg: 3, scope: !2654, file: !3, line: 477, type: !96)
!2661 = !DILocalVariable(name: "master", scope: !2654, file: !3, line: 479, type: !109)
!2662 = !DILocation(line: 475, column: 51, scope: !2654)
!2663 = !DILocation(line: 476, column: 16, scope: !2654)
!2664 = !DILocation(line: 477, column: 15, scope: !2654)
!2665 = !DILocation(line: 479, column: 2, scope: !2654)
!2666 = !DILocation(line: 479, column: 22, scope: !2654)
!2667 = !DILocation(line: 479, column: 31, scope: !2654)
!2668 = !DILocation(line: 480, column: 17, scope: !2654)
!2669 = !DILocation(line: 480, column: 2, scope: !2654)
!2670 = !DILocation(line: 480, column: 10, scope: !2654)
!2671 = !DILocation(line: 480, column: 15, scope: !2654)
!2672 = !DILocation(line: 481, column: 30, scope: !2654)
!2673 = !DILocation(line: 481, column: 2, scope: !2654)
!2674 = !DILocation(line: 481, column: 10, scope: !2654)
!2675 = !DILocation(line: 481, column: 28, scope: !2654)
!2676 = !DILocation(line: 483, column: 1, scope: !2654)
!2677 = !DILocation(line: 482, column: 2, scope: !2654)
!2678 = distinct !DISubprogram(name: "snd_ctl_sync_vmaster", scope: !3, file: !3, line: 495, type: !2679, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !138, !764}
!2681 = !{!2682, !2683, !2684, !2685, !2686}
!2682 = !DILocalVariable(name: "kcontrol", arg: 1, scope: !2678, file: !3, line: 495, type: !138)
!2683 = !DILocalVariable(name: "hook_only", arg: 2, scope: !2678, file: !3, line: 495, type: !764)
!2684 = !DILocalVariable(name: "master", scope: !2678, file: !3, line: 497, type: !109)
!2685 = !DILocalVariable(name: "first_init", scope: !2678, file: !3, line: 498, type: !764)
!2686 = !DILocalVariable(name: "err", scope: !2687, file: !3, line: 504, type: !46)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 503, column: 18)
!2688 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 503, column: 6)
!2689 = !DILocation(line: 495, column: 48, scope: !2678)
!2690 = !DILocation(line: 495, column: 63, scope: !2678)
!2691 = !DILocation(line: 497, column: 2, scope: !2678)
!2692 = !DILocation(line: 497, column: 22, scope: !2678)
!2693 = !DILocation(line: 498, column: 2, scope: !2678)
!2694 = !DILocation(line: 498, column: 7, scope: !2678)
!2695 = !DILocation(line: 500, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 500, column: 6)
!2697 = !DILocation(line: 500, column: 6, scope: !2678)
!2698 = !DILocation(line: 501, column: 3, scope: !2696)
!2699 = !DILocation(line: 502, column: 11, scope: !2678)
!2700 = !DILocation(line: 502, column: 9, scope: !2678)
!2701 = !DILocation(line: 503, column: 7, scope: !2688)
!2702 = !DILocation(line: 503, column: 6, scope: !2678)
!2703 = !DILocation(line: 504, column: 3, scope: !2687)
!2704 = !DILocation(line: 504, column: 7, scope: !2687)
!2705 = !DILocation(line: 504, column: 25, scope: !2687)
!2706 = !DILocation(line: 504, column: 13, scope: !2687)
!2707 = !DILocation(line: 505, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 505, column: 7)
!2709 = !DILocation(line: 505, column: 11, scope: !2708)
!2710 = !DILocation(line: 505, column: 7, scope: !2687)
!2711 = !DILocation(line: 506, column: 4, scope: !2708)
!2712 = !DILocation(line: 507, column: 16, scope: !2687)
!2713 = !DILocation(line: 507, column: 14, scope: !2687)
!2714 = !DILocation(line: 508, column: 24, scope: !2687)
!2715 = !DILocation(line: 508, column: 32, scope: !2687)
!2716 = !DILocation(line: 508, column: 40, scope: !2687)
!2717 = !DILocation(line: 508, column: 45, scope: !2687)
!2718 = !DILocation(line: 508, column: 53, scope: !2687)
!2719 = !DILocation(line: 508, column: 9, scope: !2687)
!2720 = !DILocation(line: 508, column: 7, scope: !2687)
!2721 = !DILocation(line: 509, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 509, column: 7)
!2723 = !DILocation(line: 509, column: 11, scope: !2722)
!2724 = !DILocation(line: 509, column: 7, scope: !2687)
!2725 = !DILocation(line: 510, column: 4, scope: !2722)
!2726 = !DILocation(line: 511, column: 2, scope: !2688)
!2727 = !DILocation(line: 511, column: 2, scope: !2687)
!2728 = !DILocation(line: 513, column: 6, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 513, column: 6)
!2730 = !DILocation(line: 513, column: 14, scope: !2729)
!2731 = !DILocation(line: 513, column: 19, scope: !2729)
!2732 = !DILocation(line: 513, column: 23, scope: !2729)
!2733 = !DILocation(line: 513, column: 6, scope: !2678)
!2734 = !DILocation(line: 514, column: 3, scope: !2729)
!2735 = !DILocation(line: 514, column: 11, scope: !2729)
!2736 = !DILocation(line: 514, column: 16, scope: !2729)
!2737 = !DILocation(line: 514, column: 24, scope: !2729)
!2738 = !DILocation(line: 514, column: 43, scope: !2729)
!2739 = !DILocation(line: 514, column: 51, scope: !2729)
!2740 = !DILocation(line: 515, column: 1, scope: !2678)
!2741 = distinct !DISubprogram(name: "master_init", scope: !3, file: !3, line: 115, type: !2742, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!46, !109}
!2744 = !{!2745, !2746, !2747, !2750, !2753}
!2745 = !DILocalVariable(name: "master", arg: 1, scope: !2741, file: !3, line: 115, type: !109)
!2746 = !DILocalVariable(name: "follower", scope: !2741, file: !3, line: 117, type: !99)
!2747 = !DILocalVariable(name: "__mptr", scope: !2748, file: !3, line: 122, type: !96)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 122, column: 2)
!2749 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 122, column: 2)
!2750 = !DILocalVariable(name: "err", scope: !2751, file: !3, line: 123, type: !46)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 122, column: 58)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 122, column: 2)
!2753 = !DILocalVariable(name: "__mptr", scope: !2754, file: !3, line: 122, type: !96)
!2754 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 122, column: 2)
!2755 = !DILocation(line: 115, column: 44, scope: !2741)
!2756 = !DILocation(line: 117, column: 2, scope: !2741)
!2757 = !DILocation(line: 117, column: 24, scope: !2741)
!2758 = !DILocation(line: 119, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 119, column: 6)
!2760 = !DILocation(line: 119, column: 14, scope: !2759)
!2761 = !DILocation(line: 119, column: 19, scope: !2759)
!2762 = !DILocation(line: 119, column: 6, scope: !2741)
!2763 = !DILocation(line: 120, column: 3, scope: !2759)
!2764 = !DILocation(line: 122, column: 2, scope: !2748)
!2765 = !DILocation(line: 122, column: 2, scope: !2749)
!2766 = !DILocation(line: 122, column: 2, scope: !2752)
!2767 = !DILocation(line: 123, column: 3, scope: !2751)
!2768 = !DILocation(line: 123, column: 7, scope: !2751)
!2769 = !DILocation(line: 123, column: 27, scope: !2751)
!2770 = !DILocation(line: 123, column: 13, scope: !2751)
!2771 = !DILocation(line: 124, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 124, column: 7)
!2773 = !DILocation(line: 124, column: 11, scope: !2772)
!2774 = !DILocation(line: 124, column: 7, scope: !2751)
!2775 = !DILocation(line: 125, column: 11, scope: !2772)
!2776 = !DILocation(line: 125, column: 4, scope: !2772)
!2777 = !DILocation(line: 126, column: 3, scope: !2751)
!2778 = !DILocation(line: 126, column: 11, scope: !2751)
!2779 = !DILocation(line: 126, column: 18, scope: !2751)
!2780 = !DILocation(line: 126, column: 28, scope: !2751)
!2781 = !DILocation(line: 127, column: 3, scope: !2751)
!2782 = !DILocation(line: 127, column: 11, scope: !2751)
!2783 = !DILocation(line: 127, column: 16, scope: !2751)
!2784 = !DILocation(line: 127, column: 22, scope: !2751)
!2785 = !DILocation(line: 129, column: 17, scope: !2751)
!2786 = !DILocation(line: 129, column: 25, scope: !2751)
!2787 = !DILocation(line: 129, column: 30, scope: !2751)
!2788 = !DILocation(line: 129, column: 3, scope: !2751)
!2789 = !DILocation(line: 129, column: 11, scope: !2751)
!2790 = !DILocation(line: 129, column: 15, scope: !2751)
!2791 = !DILocation(line: 130, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 130, column: 7)
!2793 = !DILocation(line: 130, column: 15, scope: !2792)
!2794 = !DILocation(line: 130, column: 7, scope: !2751)
!2795 = !DILocation(line: 131, column: 4, scope: !2792)
!2796 = !DILocation(line: 131, column: 12, scope: !2792)
!2797 = !DILocation(line: 131, column: 17, scope: !2792)
!2798 = !DILocation(line: 131, column: 25, scope: !2792)
!2799 = !DILocation(line: 131, column: 44, scope: !2792)
!2800 = !DILocation(line: 131, column: 52, scope: !2792)
!2801 = !DILocation(line: 132, column: 3, scope: !2751)
!2802 = !DILocation(line: 133, column: 2, scope: !2752)
!2803 = !DILocation(line: 122, column: 2, scope: !2754)
!2804 = distinct !{!2804, !2765, !2805, !2133, !2134}
!2805 = !DILocation(line: 133, column: 2, scope: !2749)
!2806 = !DILocation(line: 134, column: 2, scope: !2741)
!2807 = !DILocation(line: 135, column: 1, scope: !2741)
!2808 = distinct !DISubprogram(name: "sync_followers", scope: !3, file: !3, line: 341, type: !2809, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!46, !109, !46, !46}
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2820}
!2812 = !DILocalVariable(name: "master", arg: 1, scope: !2808, file: !3, line: 341, type: !109)
!2813 = !DILocalVariable(name: "old_val", arg: 2, scope: !2808, file: !3, line: 341, type: !46)
!2814 = !DILocalVariable(name: "new_val", arg: 3, scope: !2808, file: !3, line: 341, type: !46)
!2815 = !DILocalVariable(name: "follower", scope: !2808, file: !3, line: 343, type: !99)
!2816 = !DILocalVariable(name: "uval", scope: !2808, file: !3, line: 344, type: !215)
!2817 = !DILocalVariable(name: "__mptr", scope: !2818, file: !3, line: 349, type: !96)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 349, column: 2)
!2819 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 349, column: 2)
!2820 = !DILocalVariable(name: "__mptr", scope: !2821, file: !3, line: 349, type: !96)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 349, column: 2)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 349, column: 2)
!2823 = !DILocation(line: 341, column: 47, scope: !2808)
!2824 = !DILocation(line: 341, column: 59, scope: !2808)
!2825 = !DILocation(line: 341, column: 72, scope: !2808)
!2826 = !DILocation(line: 343, column: 2, scope: !2808)
!2827 = !DILocation(line: 343, column: 24, scope: !2808)
!2828 = !DILocation(line: 344, column: 2, scope: !2808)
!2829 = !DILocation(line: 344, column: 29, scope: !2808)
!2830 = !DILocation(line: 346, column: 9, scope: !2808)
!2831 = !DILocation(line: 346, column: 7, scope: !2808)
!2832 = !DILocation(line: 347, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 347, column: 6)
!2834 = !DILocation(line: 347, column: 6, scope: !2808)
!2835 = !DILocation(line: 348, column: 3, scope: !2833)
!2836 = !DILocation(line: 349, column: 2, scope: !2818)
!2837 = !DILocation(line: 349, column: 2, scope: !2819)
!2838 = !DILocation(line: 349, column: 2, scope: !2822)
!2839 = !DILocation(line: 350, column: 17, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 349, column: 58)
!2841 = !DILocation(line: 350, column: 3, scope: !2840)
!2842 = !DILocation(line: 350, column: 11, scope: !2840)
!2843 = !DILocation(line: 350, column: 15, scope: !2840)
!2844 = !DILocation(line: 351, column: 3, scope: !2840)
!2845 = !DILocation(line: 351, column: 9, scope: !2840)
!2846 = !DILocation(line: 351, column: 14, scope: !2840)
!2847 = !DILocation(line: 351, column: 24, scope: !2840)
!2848 = !DILocation(line: 351, column: 33, scope: !2840)
!2849 = !DILocation(line: 352, column: 20, scope: !2840)
!2850 = !DILocation(line: 352, column: 30, scope: !2840)
!2851 = !DILocation(line: 352, column: 3, scope: !2840)
!2852 = !DILocation(line: 353, column: 17, scope: !2840)
!2853 = !DILocation(line: 353, column: 3, scope: !2840)
!2854 = !DILocation(line: 353, column: 11, scope: !2840)
!2855 = !DILocation(line: 353, column: 15, scope: !2840)
!2856 = !DILocation(line: 354, column: 20, scope: !2840)
!2857 = !DILocation(line: 354, column: 30, scope: !2840)
!2858 = !DILocation(line: 354, column: 3, scope: !2840)
!2859 = !DILocation(line: 355, column: 2, scope: !2840)
!2860 = !DILocation(line: 349, column: 2, scope: !2821)
!2861 = distinct !{!2861, !2837, !2862, !2133, !2134}
!2862 = !DILocation(line: 355, column: 2, scope: !2819)
!2863 = !DILocation(line: 356, column: 8, scope: !2808)
!2864 = !DILocation(line: 356, column: 2, scope: !2808)
!2865 = !DILocation(line: 357, column: 2, scope: !2808)
!2866 = !DILocation(line: 358, column: 1, scope: !2808)
!2867 = distinct !DISubprogram(name: "snd_ctl_apply_vmaster_followers", scope: !3, file: !3, line: 528, type: !2868, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!46, !138, !2870, !96}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!46, !138, !138, !96}
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2883}
!2874 = !DILocalVariable(name: "kctl", arg: 1, scope: !2867, file: !3, line: 528, type: !138)
!2875 = !DILocalVariable(name: "func", arg: 2, scope: !2867, file: !3, line: 529, type: !2870)
!2876 = !DILocalVariable(name: "arg", arg: 3, scope: !2867, file: !3, line: 532, type: !96)
!2877 = !DILocalVariable(name: "master", scope: !2867, file: !3, line: 534, type: !109)
!2878 = !DILocalVariable(name: "follower", scope: !2867, file: !3, line: 535, type: !99)
!2879 = !DILocalVariable(name: "err", scope: !2867, file: !3, line: 536, type: !46)
!2880 = !DILocalVariable(name: "__mptr", scope: !2881, file: !3, line: 542, type: !96)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 542, column: 2)
!2882 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 542, column: 2)
!2883 = !DILocalVariable(name: "__mptr", scope: !2884, file: !3, line: 542, type: !96)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 542, column: 2)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 542, column: 2)
!2886 = !DILocation(line: 528, column: 58, scope: !2867)
!2887 = !DILocation(line: 529, column: 15, scope: !2867)
!2888 = !DILocation(line: 532, column: 15, scope: !2867)
!2889 = !DILocation(line: 534, column: 2, scope: !2867)
!2890 = !DILocation(line: 534, column: 22, scope: !2867)
!2891 = !DILocation(line: 535, column: 2, scope: !2867)
!2892 = !DILocation(line: 535, column: 24, scope: !2867)
!2893 = !DILocation(line: 536, column: 2, scope: !2867)
!2894 = !DILocation(line: 536, column: 6, scope: !2867)
!2895 = !DILocation(line: 538, column: 11, scope: !2867)
!2896 = !DILocation(line: 538, column: 9, scope: !2867)
!2897 = !DILocation(line: 539, column: 20, scope: !2867)
!2898 = !DILocation(line: 539, column: 8, scope: !2867)
!2899 = !DILocation(line: 539, column: 6, scope: !2867)
!2900 = !DILocation(line: 540, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 540, column: 6)
!2902 = !DILocation(line: 540, column: 10, scope: !2901)
!2903 = !DILocation(line: 540, column: 6, scope: !2867)
!2904 = !DILocation(line: 541, column: 10, scope: !2901)
!2905 = !DILocation(line: 541, column: 3, scope: !2901)
!2906 = !DILocation(line: 542, column: 2, scope: !2881)
!2907 = !DILocation(line: 542, column: 2, scope: !2882)
!2908 = !DILocation(line: 542, column: 2, scope: !2885)
!2909 = !DILocation(line: 543, column: 9, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 542, column: 58)
!2911 = !DILocation(line: 543, column: 14, scope: !2910)
!2912 = !DILocation(line: 543, column: 24, scope: !2910)
!2913 = !DILocation(line: 543, column: 31, scope: !2910)
!2914 = !DILocation(line: 543, column: 41, scope: !2910)
!2915 = !DILocation(line: 543, column: 51, scope: !2910)
!2916 = !DILocation(line: 543, column: 7, scope: !2910)
!2917 = !DILocation(line: 544, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 544, column: 7)
!2919 = !DILocation(line: 544, column: 11, scope: !2918)
!2920 = !DILocation(line: 544, column: 7, scope: !2910)
!2921 = !DILocation(line: 545, column: 11, scope: !2918)
!2922 = !DILocation(line: 545, column: 4, scope: !2918)
!2923 = !DILocation(line: 546, column: 2, scope: !2910)
!2924 = !DILocation(line: 542, column: 2, scope: !2884)
!2925 = distinct !{!2925, !2907, !2926, !2133, !2134}
!2926 = !DILocation(line: 546, column: 2, scope: !2882)
!2927 = !DILocation(line: 548, column: 2, scope: !2867)
!2928 = !DILocation(line: 549, column: 1, scope: !2867)
!2929 = distinct !DISubprogram(name: "kmalloc", scope: !84, file: !84, line: 591, type: !1992, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DILocalVariable(name: "size", arg: 1, scope: !2929, file: !84, line: 591, type: !461)
!2932 = !DILocalVariable(name: "flags", arg: 2, scope: !2929, file: !84, line: 591, type: !94)
!2933 = !DILocalVariable(name: "index", scope: !2934, file: !84, line: 594, type: !7)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !84, line: 593, column: 42)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !84, line: 593, column: 6)
!2936 = !DILocation(line: 591, column: 61, scope: !2929)
!2937 = !DILocation(line: 591, column: 73, scope: !2929)
!2938 = !DILocation(line: 593, column: 27, scope: !2935)
!2939 = !DILocation(line: 593, column: 6, scope: !2935)
!2940 = !DILocation(line: 593, column: 33, scope: !2935)
!2941 = !DILocation(line: 593, column: 36, scope: !2935)
!2942 = !DILocation(line: 593, column: 6, scope: !2929)
!2943 = !DILocation(line: 594, column: 3, scope: !2934)
!2944 = !DILocation(line: 594, column: 16, scope: !2934)
!2945 = !DILocation(line: 596, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2934, file: !84, line: 596, column: 7)
!2947 = !DILocation(line: 596, column: 12, scope: !2946)
!2948 = !DILocation(line: 596, column: 7, scope: !2934)
!2949 = !DILocation(line: 597, column: 25, scope: !2946)
!2950 = !DILocation(line: 597, column: 31, scope: !2946)
!2951 = !DILocation(line: 597, column: 11, scope: !2946)
!2952 = !DILocation(line: 597, column: 4, scope: !2946)
!2953 = !DILocation(line: 599, column: 11, scope: !2934)
!2954 = !DILocation(line: 599, column: 9, scope: !2934)
!2955 = !DILocation(line: 601, column: 33, scope: !2934)
!2956 = !DILocation(line: 601, column: 40, scope: !2934)
!2957 = !DILocation(line: 601, column: 20, scope: !2934)
!2958 = !DILocation(line: 601, column: 5, scope: !2934)
!2959 = !DILocation(line: 601, column: 51, scope: !2934)
!2960 = !DILocation(line: 602, column: 5, scope: !2934)
!2961 = !DILocation(line: 602, column: 12, scope: !2934)
!2962 = !DILocation(line: 600, column: 10, scope: !2934)
!2963 = !DILocation(line: 600, column: 3, scope: !2934)
!2964 = !DILocation(line: 603, column: 2, scope: !2935)
!2965 = !DILocation(line: 604, column: 19, scope: !2929)
!2966 = !DILocation(line: 604, column: 25, scope: !2929)
!2967 = !DILocation(line: 604, column: 9, scope: !2929)
!2968 = !DILocation(line: 604, column: 2, scope: !2929)
!2969 = !DILocation(line: 605, column: 1, scope: !2929)
!2970 = !DISubprogram(name: "kmalloc_large", scope: !84, file: !84, line: 531, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2971 = distinct !DISubprogram(name: "__kmalloc_index", scope: !84, file: !84, line: 444, type: !2972, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!7, !461, !764}
!2974 = !{!2975, !2976}
!2975 = !DILocalVariable(name: "size", arg: 1, scope: !2971, file: !84, line: 444, type: !461)
!2976 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2971, file: !84, line: 445, type: !764)
!2977 = !DILocation(line: 444, column: 60, scope: !2971)
!2978 = !DILocation(line: 445, column: 16, scope: !2971)
!2979 = !DILocation(line: 447, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 447, column: 6)
!2981 = !DILocation(line: 447, column: 6, scope: !2971)
!2982 = !DILocation(line: 448, column: 3, scope: !2980)
!2983 = !DILocation(line: 450, column: 6, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 450, column: 6)
!2985 = !DILocation(line: 450, column: 11, scope: !2984)
!2986 = !DILocation(line: 450, column: 6, scope: !2971)
!2987 = !DILocation(line: 451, column: 3, scope: !2984)
!2988 = !DILocation(line: 453, column: 32, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 453, column: 6)
!2990 = !DILocation(line: 453, column: 37, scope: !2989)
!2991 = !DILocation(line: 453, column: 42, scope: !2989)
!2992 = !DILocation(line: 453, column: 45, scope: !2989)
!2993 = !DILocation(line: 453, column: 50, scope: !2989)
!2994 = !DILocation(line: 453, column: 6, scope: !2971)
!2995 = !DILocation(line: 454, column: 3, scope: !2989)
!2996 = !DILocation(line: 455, column: 32, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 455, column: 6)
!2998 = !DILocation(line: 455, column: 37, scope: !2997)
!2999 = !DILocation(line: 455, column: 43, scope: !2997)
!3000 = !DILocation(line: 455, column: 46, scope: !2997)
!3001 = !DILocation(line: 455, column: 51, scope: !2997)
!3002 = !DILocation(line: 455, column: 6, scope: !2971)
!3003 = !DILocation(line: 456, column: 3, scope: !2997)
!3004 = !DILocation(line: 457, column: 6, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 457, column: 6)
!3006 = !DILocation(line: 457, column: 11, scope: !3005)
!3007 = !DILocation(line: 457, column: 6, scope: !2971)
!3008 = !DILocation(line: 457, column: 26, scope: !3005)
!3009 = !DILocation(line: 458, column: 6, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 458, column: 6)
!3011 = !DILocation(line: 458, column: 11, scope: !3010)
!3012 = !DILocation(line: 458, column: 6, scope: !2971)
!3013 = !DILocation(line: 458, column: 26, scope: !3010)
!3014 = !DILocation(line: 459, column: 6, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 459, column: 6)
!3016 = !DILocation(line: 459, column: 11, scope: !3015)
!3017 = !DILocation(line: 459, column: 6, scope: !2971)
!3018 = !DILocation(line: 459, column: 26, scope: !3015)
!3019 = !DILocation(line: 460, column: 6, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 460, column: 6)
!3021 = !DILocation(line: 460, column: 11, scope: !3020)
!3022 = !DILocation(line: 460, column: 6, scope: !2971)
!3023 = !DILocation(line: 460, column: 26, scope: !3020)
!3024 = !DILocation(line: 461, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 461, column: 6)
!3026 = !DILocation(line: 461, column: 11, scope: !3025)
!3027 = !DILocation(line: 461, column: 6, scope: !2971)
!3028 = !DILocation(line: 461, column: 26, scope: !3025)
!3029 = !DILocation(line: 462, column: 6, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 462, column: 6)
!3031 = !DILocation(line: 462, column: 11, scope: !3030)
!3032 = !DILocation(line: 462, column: 6, scope: !2971)
!3033 = !DILocation(line: 462, column: 26, scope: !3030)
!3034 = !DILocation(line: 463, column: 6, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 463, column: 6)
!3036 = !DILocation(line: 463, column: 11, scope: !3035)
!3037 = !DILocation(line: 463, column: 6, scope: !2971)
!3038 = !DILocation(line: 463, column: 26, scope: !3035)
!3039 = !DILocation(line: 464, column: 6, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 464, column: 6)
!3041 = !DILocation(line: 464, column: 11, scope: !3040)
!3042 = !DILocation(line: 464, column: 6, scope: !2971)
!3043 = !DILocation(line: 464, column: 26, scope: !3040)
!3044 = !DILocation(line: 465, column: 6, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 465, column: 6)
!3046 = !DILocation(line: 465, column: 11, scope: !3045)
!3047 = !DILocation(line: 465, column: 6, scope: !2971)
!3048 = !DILocation(line: 465, column: 26, scope: !3045)
!3049 = !DILocation(line: 466, column: 6, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 466, column: 6)
!3051 = !DILocation(line: 466, column: 11, scope: !3050)
!3052 = !DILocation(line: 466, column: 6, scope: !2971)
!3053 = !DILocation(line: 466, column: 26, scope: !3050)
!3054 = !DILocation(line: 467, column: 6, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 467, column: 6)
!3056 = !DILocation(line: 467, column: 11, scope: !3055)
!3057 = !DILocation(line: 467, column: 6, scope: !2971)
!3058 = !DILocation(line: 467, column: 26, scope: !3055)
!3059 = !DILocation(line: 468, column: 6, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 468, column: 6)
!3061 = !DILocation(line: 468, column: 11, scope: !3060)
!3062 = !DILocation(line: 468, column: 6, scope: !2971)
!3063 = !DILocation(line: 468, column: 26, scope: !3060)
!3064 = !DILocation(line: 469, column: 6, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 469, column: 6)
!3066 = !DILocation(line: 469, column: 11, scope: !3065)
!3067 = !DILocation(line: 469, column: 6, scope: !2971)
!3068 = !DILocation(line: 469, column: 26, scope: !3065)
!3069 = !DILocation(line: 470, column: 6, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 470, column: 6)
!3071 = !DILocation(line: 470, column: 11, scope: !3070)
!3072 = !DILocation(line: 470, column: 6, scope: !2971)
!3073 = !DILocation(line: 470, column: 26, scope: !3070)
!3074 = !DILocation(line: 471, column: 6, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 471, column: 6)
!3076 = !DILocation(line: 471, column: 11, scope: !3075)
!3077 = !DILocation(line: 471, column: 6, scope: !2971)
!3078 = !DILocation(line: 471, column: 26, scope: !3075)
!3079 = !DILocation(line: 472, column: 6, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 472, column: 6)
!3081 = !DILocation(line: 472, column: 11, scope: !3080)
!3082 = !DILocation(line: 472, column: 6, scope: !2971)
!3083 = !DILocation(line: 472, column: 26, scope: !3080)
!3084 = !DILocation(line: 473, column: 6, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 473, column: 6)
!3086 = !DILocation(line: 473, column: 11, scope: !3085)
!3087 = !DILocation(line: 473, column: 6, scope: !2971)
!3088 = !DILocation(line: 473, column: 26, scope: !3085)
!3089 = !DILocation(line: 474, column: 6, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 474, column: 6)
!3091 = !DILocation(line: 474, column: 11, scope: !3090)
!3092 = !DILocation(line: 474, column: 6, scope: !2971)
!3093 = !DILocation(line: 474, column: 27, scope: !3090)
!3094 = !DILocation(line: 475, column: 6, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 475, column: 6)
!3096 = !DILocation(line: 475, column: 11, scope: !3095)
!3097 = !DILocation(line: 475, column: 6, scope: !2971)
!3098 = !DILocation(line: 475, column: 32, scope: !3095)
!3099 = !DILocation(line: 477, column: 50, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2971, file: !84, line: 477, column: 6)
!3101 = !DILocation(line: 477, column: 6, scope: !2971)
!3102 = !DILocation(line: 478, column: 3, scope: !3100)
!3103 = !DILocation(line: 478, column: 3, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !84, line: 478, column: 3)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !84, line: 478, column: 3)
!3106 = !{i32 -2143548178}
!3107 = !DILocation(line: 478, column: 3, scope: !3105)
!3108 = !DILocation(line: 480, column: 3, scope: !3100)
!3109 = !DILocation(line: 480, column: 3, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3100, file: !84, line: 480, column: 3)
!3111 = !DILocation(line: 480, column: 3, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3110, file: !84, line: 480, column: 3)
!3113 = !DILocation(line: 480, column: 3, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !84, line: 480, column: 3)
!3115 = !{i64 2151419321, i64 2151419350, i64 2151419396, i64 2151419454, i64 2151419508, i64 2151419562, i64 2151419617, i64 2151419648}
!3116 = !DILocation(line: 483, column: 2, scope: !2971)
!3117 = !DILocation(line: 484, column: 1, scope: !2971)
!3118 = !DISubprogram(name: "kmalloc_trace", scope: !84, file: !84, line: 525, type: !3119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!96, !3121, !94, !461}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3123, line: 11, flags: DIFlagFwdDecl)
!3123 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3124 = distinct !DISubprogram(name: "kmalloc_type", scope: !84, file: !84, line: 401, type: !3125, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!83, !94, !283}
!3127 = !{!3128, !3129}
!3128 = !DILocalVariable(name: "flags", arg: 1, scope: !3124, file: !84, line: 401, type: !94)
!3129 = !DILocalVariable(name: "caller", arg: 2, scope: !3124, file: !84, line: 401, type: !283)
!3130 = !DILocation(line: 401, column: 67, scope: !3124)
!3131 = !DILocation(line: 401, column: 88, scope: !3124)
!3132 = !DILocation(line: 407, column: 6, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3124, file: !84, line: 407, column: 6)
!3134 = !DILocation(line: 407, column: 6, scope: !3124)
!3135 = !DILocation(line: 413, column: 3, scope: !3133)
!3136 = !DILocation(line: 423, column: 38, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3124, file: !84, line: 423, column: 6)
!3138 = !DILocation(line: 423, column: 44, scope: !3137)
!3139 = !DILocation(line: 423, column: 6, scope: !3124)
!3140 = !DILocation(line: 424, column: 3, scope: !3137)
!3141 = !DILocation(line: 426, column: 3, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3124, file: !84, line: 425, column: 6)
!3143 = !DILocation(line: 429, column: 1, scope: !3124)
!3144 = !DISubprogram(name: "__kmalloc", scope: !84, file: !84, line: 488, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3145 = !DISubprogram(name: "__compiletime_assert_117", scope: !84, file: !84, line: 478, type: !1341, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3146 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2005, file: !2005, line: 51, type: !3147, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!764, !764}
!3149 = !{!3150}
!3150 = !DILocalVariable(name: "overflow", arg: 1, scope: !3146, file: !2005, line: 51, type: !764)
!3151 = !DILocation(line: 51, column: 60, scope: !3146)
!3152 = !DILocation(line: 53, column: 9, scope: !3146)
!3153 = !DILocation(line: 53, column: 2, scope: !3146)
!3154 = distinct !DISubprogram(name: "follower_get_val", scope: !3, file: !3, line: 137, type: !3155, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!46, !99, !215}
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DILocalVariable(name: "follower", arg: 1, scope: !3154, file: !3, line: 137, type: !99)
!3159 = !DILocalVariable(name: "ucontrol", arg: 2, scope: !3154, file: !3, line: 138, type: !215)
!3160 = !DILocalVariable(name: "err", scope: !3154, file: !3, line: 140, type: !46)
!3161 = !DILocalVariable(name: "ch", scope: !3154, file: !3, line: 140, type: !46)
!3162 = !DILocation(line: 137, column: 51, scope: !3154)
!3163 = !DILocation(line: 138, column: 35, scope: !3154)
!3164 = !DILocation(line: 140, column: 2, scope: !3154)
!3165 = !DILocation(line: 140, column: 6, scope: !3154)
!3166 = !DILocation(line: 140, column: 11, scope: !3154)
!3167 = !DILocation(line: 142, column: 22, scope: !3154)
!3168 = !DILocation(line: 142, column: 8, scope: !3154)
!3169 = !DILocation(line: 142, column: 6, scope: !3154)
!3170 = !DILocation(line: 143, column: 6, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 143, column: 6)
!3172 = !DILocation(line: 143, column: 10, scope: !3171)
!3173 = !DILocation(line: 143, column: 6, scope: !3154)
!3174 = !DILocation(line: 144, column: 10, scope: !3171)
!3175 = !DILocation(line: 144, column: 3, scope: !3171)
!3176 = !DILocation(line: 145, column: 10, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 145, column: 2)
!3178 = !DILocation(line: 145, column: 7, scope: !3177)
!3179 = !DILocation(line: 145, column: 15, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 145, column: 2)
!3181 = !DILocation(line: 145, column: 20, scope: !3180)
!3182 = !DILocation(line: 145, column: 30, scope: !3180)
!3183 = !DILocation(line: 145, column: 35, scope: !3180)
!3184 = !DILocation(line: 145, column: 18, scope: !3180)
!3185 = !DILocation(line: 145, column: 2, scope: !3177)
!3186 = !DILocation(line: 146, column: 39, scope: !3180)
!3187 = !DILocation(line: 146, column: 49, scope: !3180)
!3188 = !DILocation(line: 146, column: 54, scope: !3180)
!3189 = !DILocation(line: 146, column: 3, scope: !3180)
!3190 = !DILocation(line: 146, column: 13, scope: !3180)
!3191 = !DILocation(line: 146, column: 33, scope: !3180)
!3192 = !DILocation(line: 146, column: 37, scope: !3180)
!3193 = !DILocation(line: 145, column: 44, scope: !3180)
!3194 = !DILocation(line: 145, column: 2, scope: !3180)
!3195 = distinct !{!3195, !3185, !3196, !2133, !2134}
!3196 = !DILocation(line: 146, column: 56, scope: !3177)
!3197 = !DILocation(line: 147, column: 2, scope: !3154)
!3198 = !DILocation(line: 148, column: 1, scope: !3154)
!3199 = distinct !DISubprogram(name: "follower_init", scope: !3, file: !3, line: 77, type: !3200, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!46, !99}
!3202 = !{!3203, !3204, !3205}
!3203 = !DILocalVariable(name: "follower", arg: 1, scope: !3199, file: !3, line: 77, type: !99)
!3204 = !DILocalVariable(name: "uinfo", scope: !3199, file: !3, line: 79, type: !162)
!3205 = !DILocalVariable(name: "err", scope: !3199, file: !3, line: 80, type: !46)
!3206 = !DILocation(line: 77, column: 48, scope: !3199)
!3207 = !DILocation(line: 79, column: 2, scope: !3199)
!3208 = !DILocation(line: 79, column: 28, scope: !3199)
!3209 = !DILocation(line: 80, column: 2, scope: !3199)
!3210 = !DILocation(line: 80, column: 6, scope: !3199)
!3211 = !DILocation(line: 82, column: 6, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 82, column: 6)
!3213 = !DILocation(line: 82, column: 16, scope: !3212)
!3214 = !DILocation(line: 82, column: 21, scope: !3212)
!3215 = !DILocation(line: 82, column: 6, scope: !3199)
!3216 = !DILocation(line: 84, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 84, column: 7)
!3218 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 82, column: 28)
!3219 = !DILocation(line: 84, column: 17, scope: !3217)
!3220 = !DILocation(line: 84, column: 23, scope: !3217)
!3221 = !DILocation(line: 84, column: 7, scope: !3218)
!3222 = !DILocation(line: 85, column: 27, scope: !3217)
!3223 = !DILocation(line: 85, column: 11, scope: !3217)
!3224 = !DILocation(line: 85, column: 4, scope: !3217)
!3225 = !DILocation(line: 86, column: 3, scope: !3218)
!3226 = !DILocation(line: 89, column: 10, scope: !3199)
!3227 = !DILocation(line: 89, column: 8, scope: !3199)
!3228 = !DILocation(line: 90, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 90, column: 6)
!3230 = !DILocation(line: 90, column: 6, scope: !3199)
!3231 = !DILocation(line: 91, column: 3, scope: !3229)
!3232 = !DILocation(line: 92, column: 2, scope: !3199)
!3233 = !DILocation(line: 92, column: 9, scope: !3199)
!3234 = !DILocation(line: 92, column: 14, scope: !3199)
!3235 = !DILocation(line: 92, column: 24, scope: !3199)
!3236 = !DILocation(line: 92, column: 33, scope: !3199)
!3237 = !DILocation(line: 93, column: 8, scope: !3199)
!3238 = !DILocation(line: 93, column: 18, scope: !3199)
!3239 = !DILocation(line: 93, column: 27, scope: !3199)
!3240 = !DILocation(line: 93, column: 33, scope: !3199)
!3241 = !DILocation(line: 93, column: 43, scope: !3199)
!3242 = !DILocation(line: 93, column: 53, scope: !3199)
!3243 = !DILocation(line: 93, column: 6, scope: !3199)
!3244 = !DILocation(line: 94, column: 6, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 94, column: 6)
!3246 = !DILocation(line: 94, column: 10, scope: !3245)
!3247 = !DILocation(line: 94, column: 6, scope: !3199)
!3248 = !DILocation(line: 95, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 94, column: 15)
!3250 = !DILocation(line: 95, column: 3, scope: !3249)
!3251 = !DILocation(line: 96, column: 10, scope: !3249)
!3252 = !DILocation(line: 96, column: 3, scope: !3249)
!3253 = !DILocation(line: 98, column: 24, scope: !3199)
!3254 = !DILocation(line: 98, column: 31, scope: !3199)
!3255 = !DILocation(line: 98, column: 2, scope: !3199)
!3256 = !DILocation(line: 98, column: 12, scope: !3199)
!3257 = !DILocation(line: 98, column: 17, scope: !3199)
!3258 = !DILocation(line: 98, column: 22, scope: !3199)
!3259 = !DILocation(line: 99, column: 25, scope: !3199)
!3260 = !DILocation(line: 99, column: 32, scope: !3199)
!3261 = !DILocation(line: 99, column: 2, scope: !3199)
!3262 = !DILocation(line: 99, column: 12, scope: !3199)
!3263 = !DILocation(line: 99, column: 17, scope: !3199)
!3264 = !DILocation(line: 99, column: 23, scope: !3199)
!3265 = !DILocation(line: 100, column: 6, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 100, column: 6)
!3267 = !DILocation(line: 100, column: 16, scope: !3266)
!3268 = !DILocation(line: 100, column: 21, scope: !3266)
!3269 = !DILocation(line: 100, column: 27, scope: !3266)
!3270 = !DILocation(line: 100, column: 32, scope: !3266)
!3271 = !DILocation(line: 101, column: 7, scope: !3266)
!3272 = !DILocation(line: 101, column: 17, scope: !3266)
!3273 = !DILocation(line: 101, column: 22, scope: !3266)
!3274 = !DILocation(line: 101, column: 27, scope: !3266)
!3275 = !DILocation(line: 101, column: 58, scope: !3266)
!3276 = !DILocation(line: 102, column: 7, scope: !3266)
!3277 = !DILocation(line: 102, column: 17, scope: !3266)
!3278 = !DILocation(line: 102, column: 22, scope: !3266)
!3279 = !DILocation(line: 102, column: 27, scope: !3266)
!3280 = !DILocation(line: 100, column: 6, scope: !3199)
!3281 = !DILocation(line: 103, column: 3, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 103, column: 3)
!3283 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 102, column: 60)
!3284 = !DILocation(line: 103, column: 3, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 103, column: 3)
!3286 = !DILocation(line: 104, column: 9, scope: !3283)
!3287 = !DILocation(line: 104, column: 3, scope: !3283)
!3288 = !DILocation(line: 105, column: 3, scope: !3283)
!3289 = !DILocation(line: 107, column: 27, scope: !3199)
!3290 = !DILocation(line: 107, column: 34, scope: !3199)
!3291 = !DILocation(line: 107, column: 48, scope: !3199)
!3292 = !DILocation(line: 107, column: 2, scope: !3199)
!3293 = !DILocation(line: 107, column: 12, scope: !3199)
!3294 = !DILocation(line: 107, column: 17, scope: !3199)
!3295 = !DILocation(line: 107, column: 25, scope: !3199)
!3296 = !DILocation(line: 108, column: 27, scope: !3199)
!3297 = !DILocation(line: 108, column: 34, scope: !3199)
!3298 = !DILocation(line: 108, column: 48, scope: !3199)
!3299 = !DILocation(line: 108, column: 2, scope: !3199)
!3300 = !DILocation(line: 108, column: 12, scope: !3199)
!3301 = !DILocation(line: 108, column: 17, scope: !3199)
!3302 = !DILocation(line: 108, column: 25, scope: !3199)
!3303 = !DILocation(line: 109, column: 8, scope: !3199)
!3304 = !DILocation(line: 109, column: 2, scope: !3199)
!3305 = !DILocation(line: 111, column: 25, scope: !3199)
!3306 = !DILocation(line: 111, column: 9, scope: !3199)
!3307 = !DILocation(line: 111, column: 2, scope: !3199)
!3308 = !DILocation(line: 112, column: 1, scope: !3199)
!3309 = distinct !DISubprogram(name: "follower_update", scope: !3, file: !3, line: 57, type: !3200, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3310)
!3310 = !{!3311, !3312, !3313, !3314, !3315}
!3311 = !DILocalVariable(name: "follower", arg: 1, scope: !3309, file: !3, line: 57, type: !99)
!3312 = !DILocalVariable(name: "uctl", scope: !3309, file: !3, line: 59, type: !215)
!3313 = !DILocalVariable(name: "err", scope: !3309, file: !3, line: 60, type: !46)
!3314 = !DILocalVariable(name: "ch", scope: !3309, file: !3, line: 60, type: !46)
!3315 = !DILabel(scope: !3309, name: "error", file: !3, line: 71)
!3316 = !DILocation(line: 57, column: 50, scope: !3309)
!3317 = !DILocation(line: 59, column: 2, scope: !3309)
!3318 = !DILocation(line: 59, column: 29, scope: !3309)
!3319 = !DILocation(line: 60, column: 2, scope: !3309)
!3320 = !DILocation(line: 60, column: 6, scope: !3309)
!3321 = !DILocation(line: 60, column: 11, scope: !3309)
!3322 = !DILocation(line: 62, column: 9, scope: !3309)
!3323 = !DILocation(line: 62, column: 7, scope: !3309)
!3324 = !DILocation(line: 63, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 63, column: 6)
!3326 = !DILocation(line: 63, column: 6, scope: !3309)
!3327 = !DILocation(line: 64, column: 3, scope: !3325)
!3328 = !DILocation(line: 65, column: 2, scope: !3309)
!3329 = !DILocation(line: 65, column: 8, scope: !3309)
!3330 = !DILocation(line: 65, column: 13, scope: !3309)
!3331 = !DILocation(line: 65, column: 23, scope: !3309)
!3332 = !DILocation(line: 65, column: 32, scope: !3309)
!3333 = !DILocation(line: 66, column: 8, scope: !3309)
!3334 = !DILocation(line: 66, column: 18, scope: !3309)
!3335 = !DILocation(line: 66, column: 27, scope: !3309)
!3336 = !DILocation(line: 66, column: 32, scope: !3309)
!3337 = !DILocation(line: 66, column: 42, scope: !3309)
!3338 = !DILocation(line: 66, column: 52, scope: !3309)
!3339 = !DILocation(line: 66, column: 6, scope: !3309)
!3340 = !DILocation(line: 67, column: 6, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 67, column: 6)
!3342 = !DILocation(line: 67, column: 10, scope: !3341)
!3343 = !DILocation(line: 67, column: 6, scope: !3309)
!3344 = !DILocation(line: 68, column: 3, scope: !3341)
!3345 = !DILocation(line: 69, column: 10, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 69, column: 2)
!3347 = !DILocation(line: 69, column: 7, scope: !3346)
!3348 = !DILocation(line: 69, column: 15, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 69, column: 2)
!3350 = !DILocation(line: 69, column: 20, scope: !3349)
!3351 = !DILocation(line: 69, column: 30, scope: !3349)
!3352 = !DILocation(line: 69, column: 35, scope: !3349)
!3353 = !DILocation(line: 69, column: 18, scope: !3349)
!3354 = !DILocation(line: 69, column: 2, scope: !3346)
!3355 = !DILocation(line: 70, column: 24, scope: !3349)
!3356 = !DILocation(line: 70, column: 30, scope: !3349)
!3357 = !DILocation(line: 70, column: 50, scope: !3349)
!3358 = !DILocation(line: 70, column: 3, scope: !3349)
!3359 = !DILocation(line: 70, column: 13, scope: !3349)
!3360 = !DILocation(line: 70, column: 18, scope: !3349)
!3361 = !DILocation(line: 70, column: 22, scope: !3349)
!3362 = !DILocation(line: 69, column: 44, scope: !3349)
!3363 = !DILocation(line: 69, column: 2, scope: !3349)
!3364 = distinct !{!3364, !3354, !3365, !2133, !2134}
!3365 = !DILocation(line: 70, column: 52, scope: !3346)
!3366 = !DILocation(line: 71, column: 2, scope: !3309)
!3367 = !DILocation(line: 72, column: 8, scope: !3309)
!3368 = !DILocation(line: 72, column: 2, scope: !3309)
!3369 = !DILocation(line: 73, column: 9, scope: !3309)
!3370 = !DILocation(line: 73, column: 13, scope: !3309)
!3371 = !DILocation(line: 73, column: 19, scope: !3309)
!3372 = !DILocation(line: 73, column: 2, scope: !3309)
!3373 = !DILocation(line: 74, column: 1, scope: !3309)
!3374 = !DISubprogram(name: "_printk", scope: !3375, file: !3375, line: 153, type: !3376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3375 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!46, !339, null}
!3378 = distinct !DISubprogram(name: "follower_put_val", scope: !3, file: !3, line: 150, type: !3155, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3379)
!3379 = !{!3380, !3381, !3382, !3383, !3384}
!3380 = !DILocalVariable(name: "follower", arg: 1, scope: !3378, file: !3, line: 150, type: !99)
!3381 = !DILocalVariable(name: "ucontrol", arg: 2, scope: !3378, file: !3, line: 151, type: !215)
!3382 = !DILocalVariable(name: "err", scope: !3378, file: !3, line: 153, type: !46)
!3383 = !DILocalVariable(name: "ch", scope: !3378, file: !3, line: 153, type: !46)
!3384 = !DILocalVariable(name: "vol", scope: !3378, file: !3, line: 153, type: !46)
!3385 = !DILocation(line: 150, column: 51, scope: !3378)
!3386 = !DILocation(line: 151, column: 35, scope: !3378)
!3387 = !DILocation(line: 153, column: 2, scope: !3378)
!3388 = !DILocation(line: 153, column: 6, scope: !3378)
!3389 = !DILocation(line: 153, column: 11, scope: !3378)
!3390 = !DILocation(line: 153, column: 15, scope: !3378)
!3391 = !DILocation(line: 155, column: 20, scope: !3378)
!3392 = !DILocation(line: 155, column: 30, scope: !3378)
!3393 = !DILocation(line: 155, column: 8, scope: !3378)
!3394 = !DILocation(line: 155, column: 6, scope: !3378)
!3395 = !DILocation(line: 156, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 156, column: 6)
!3397 = !DILocation(line: 156, column: 10, scope: !3396)
!3398 = !DILocation(line: 156, column: 6, scope: !3378)
!3399 = !DILocation(line: 157, column: 10, scope: !3396)
!3400 = !DILocation(line: 157, column: 3, scope: !3396)
!3401 = !DILocation(line: 159, column: 10, scope: !3378)
!3402 = !DILocation(line: 159, column: 20, scope: !3378)
!3403 = !DILocation(line: 159, column: 25, scope: !3378)
!3404 = !DILocation(line: 159, column: 2, scope: !3378)
!3405 = !DILocation(line: 161, column: 11, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 161, column: 3)
!3407 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 159, column: 31)
!3408 = !DILocation(line: 161, column: 8, scope: !3406)
!3409 = !DILocation(line: 161, column: 16, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 161, column: 3)
!3411 = !DILocation(line: 161, column: 21, scope: !3410)
!3412 = !DILocation(line: 161, column: 31, scope: !3410)
!3413 = !DILocation(line: 161, column: 36, scope: !3410)
!3414 = !DILocation(line: 161, column: 19, scope: !3410)
!3415 = !DILocation(line: 161, column: 3, scope: !3406)
!3416 = !DILocation(line: 163, column: 7, scope: !3410)
!3417 = !DILocation(line: 163, column: 17, scope: !3410)
!3418 = !DILocation(line: 163, column: 25, scope: !3410)
!3419 = !DILocation(line: 163, column: 6, scope: !3410)
!3420 = !DILocation(line: 163, column: 5, scope: !3410)
!3421 = !DILocation(line: 162, column: 4, scope: !3410)
!3422 = !DILocation(line: 162, column: 14, scope: !3410)
!3423 = !DILocation(line: 162, column: 34, scope: !3410)
!3424 = !DILocation(line: 162, column: 38, scope: !3410)
!3425 = !DILocation(line: 161, column: 45, scope: !3410)
!3426 = !DILocation(line: 161, column: 3, scope: !3410)
!3427 = distinct !{!3427, !3415, !3428, !2133, !2134}
!3428 = !DILocation(line: 163, column: 25, scope: !3406)
!3429 = !DILocation(line: 164, column: 3, scope: !3407)
!3430 = !DILocation(line: 166, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 166, column: 3)
!3432 = !DILocation(line: 166, column: 8, scope: !3431)
!3433 = !DILocation(line: 166, column: 16, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 166, column: 3)
!3435 = !DILocation(line: 166, column: 21, scope: !3434)
!3436 = !DILocation(line: 166, column: 31, scope: !3434)
!3437 = !DILocation(line: 166, column: 36, scope: !3434)
!3438 = !DILocation(line: 166, column: 19, scope: !3434)
!3439 = !DILocation(line: 166, column: 3, scope: !3431)
!3440 = !DILocation(line: 168, column: 10, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 166, column: 49)
!3442 = !DILocation(line: 168, column: 20, scope: !3441)
!3443 = !DILocation(line: 168, column: 40, scope: !3441)
!3444 = !DILocation(line: 168, column: 8, scope: !3441)
!3445 = !DILocation(line: 169, column: 11, scope: !3441)
!3446 = !DILocation(line: 169, column: 21, scope: !3441)
!3447 = !DILocation(line: 169, column: 29, scope: !3441)
!3448 = !DILocation(line: 169, column: 35, scope: !3441)
!3449 = !DILocation(line: 169, column: 45, scope: !3441)
!3450 = !DILocation(line: 169, column: 53, scope: !3441)
!3451 = !DILocation(line: 169, column: 58, scope: !3441)
!3452 = !DILocation(line: 169, column: 33, scope: !3441)
!3453 = !DILocation(line: 169, column: 8, scope: !3441)
!3454 = !DILocation(line: 170, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 170, column: 8)
!3456 = !DILocation(line: 170, column: 14, scope: !3455)
!3457 = !DILocation(line: 170, column: 24, scope: !3455)
!3458 = !DILocation(line: 170, column: 29, scope: !3455)
!3459 = !DILocation(line: 170, column: 12, scope: !3455)
!3460 = !DILocation(line: 170, column: 8, scope: !3441)
!3461 = !DILocation(line: 171, column: 11, scope: !3455)
!3462 = !DILocation(line: 171, column: 21, scope: !3455)
!3463 = !DILocation(line: 171, column: 26, scope: !3455)
!3464 = !DILocation(line: 171, column: 9, scope: !3455)
!3465 = !DILocation(line: 171, column: 5, scope: !3455)
!3466 = !DILocation(line: 172, column: 13, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 172, column: 13)
!3468 = !DILocation(line: 172, column: 19, scope: !3467)
!3469 = !DILocation(line: 172, column: 29, scope: !3467)
!3470 = !DILocation(line: 172, column: 34, scope: !3467)
!3471 = !DILocation(line: 172, column: 17, scope: !3467)
!3472 = !DILocation(line: 172, column: 13, scope: !3455)
!3473 = !DILocation(line: 173, column: 11, scope: !3467)
!3474 = !DILocation(line: 173, column: 21, scope: !3467)
!3475 = !DILocation(line: 173, column: 26, scope: !3467)
!3476 = !DILocation(line: 173, column: 9, scope: !3467)
!3477 = !DILocation(line: 173, column: 5, scope: !3467)
!3478 = !DILocation(line: 174, column: 40, scope: !3441)
!3479 = !DILocation(line: 174, column: 4, scope: !3441)
!3480 = !DILocation(line: 174, column: 14, scope: !3441)
!3481 = !DILocation(line: 174, column: 34, scope: !3441)
!3482 = !DILocation(line: 174, column: 38, scope: !3441)
!3483 = !DILocation(line: 175, column: 3, scope: !3441)
!3484 = !DILocation(line: 166, column: 45, scope: !3434)
!3485 = !DILocation(line: 166, column: 3, scope: !3434)
!3486 = distinct !{!3486, !3439, !3487, !2133, !2134}
!3487 = !DILocation(line: 175, column: 3, scope: !3431)
!3488 = !DILocation(line: 176, column: 3, scope: !3407)
!3489 = !DILocation(line: 178, column: 9, scope: !3378)
!3490 = !DILocation(line: 178, column: 19, scope: !3378)
!3491 = !DILocation(line: 178, column: 28, scope: !3378)
!3492 = !DILocation(line: 178, column: 33, scope: !3378)
!3493 = !DILocation(line: 178, column: 43, scope: !3378)
!3494 = !DILocation(line: 178, column: 53, scope: !3378)
!3495 = !DILocation(line: 178, column: 2, scope: !3378)
!3496 = !DILocation(line: 179, column: 1, scope: !3378)
!3497 = distinct !DISubprogram(name: "list_del", scope: !2205, file: !2205, line: 227, type: !2467, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3498)
!3498 = !{!3499}
!3499 = !DILocalVariable(name: "entry", arg: 1, scope: !3497, file: !2205, line: 227, type: !106)
!3500 = !DILocation(line: 227, column: 47, scope: !3497)
!3501 = !DILocation(line: 229, column: 19, scope: !3497)
!3502 = !DILocation(line: 229, column: 2, scope: !3497)
!3503 = !DILocation(line: 230, column: 2, scope: !3497)
!3504 = !DILocation(line: 230, column: 9, scope: !3497)
!3505 = !DILocation(line: 230, column: 14, scope: !3497)
!3506 = !DILocation(line: 231, column: 2, scope: !3497)
!3507 = !DILocation(line: 231, column: 9, scope: !3497)
!3508 = !DILocation(line: 231, column: 14, scope: !3497)
!3509 = !DILocation(line: 232, column: 1, scope: !3497)
!3510 = distinct !DISubprogram(name: "__list_del_entry", scope: !2205, file: !2205, line: 213, type: !2467, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3511)
!3511 = !{!3512}
!3512 = !DILocalVariable(name: "entry", arg: 1, scope: !3510, file: !2205, line: 213, type: !106)
!3513 = !DILocation(line: 213, column: 55, scope: !3510)
!3514 = !DILocation(line: 215, column: 30, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !2205, line: 215, column: 6)
!3516 = !DILocation(line: 215, column: 7, scope: !3515)
!3517 = !DILocation(line: 215, column: 6, scope: !3510)
!3518 = !DILocation(line: 216, column: 3, scope: !3515)
!3519 = !DILocation(line: 218, column: 13, scope: !3510)
!3520 = !DILocation(line: 218, column: 20, scope: !3510)
!3521 = !DILocation(line: 218, column: 26, scope: !3510)
!3522 = !DILocation(line: 218, column: 33, scope: !3510)
!3523 = !DILocation(line: 218, column: 2, scope: !3510)
!3524 = !DILocation(line: 219, column: 1, scope: !3510)
!3525 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2205, file: !2205, line: 134, type: !3526, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!764, !106}
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "entry", arg: 1, scope: !3525, file: !2205, line: 134, type: !106)
!3530 = !DILocation(line: 134, column: 61, scope: !3525)
!3531 = !DILocation(line: 136, column: 2, scope: !3525)
!3532 = distinct !DISubprogram(name: "__list_del", scope: !2205, file: !2205, line: 193, type: !2206, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3533)
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "prev", arg: 1, scope: !3532, file: !2205, line: 193, type: !106)
!3535 = !DILocalVariable(name: "next", arg: 2, scope: !3532, file: !2205, line: 193, type: !106)
!3536 = !DILocation(line: 193, column: 50, scope: !3532)
!3537 = !DILocation(line: 193, column: 75, scope: !3532)
!3538 = !DILocation(line: 195, column: 15, scope: !3532)
!3539 = !DILocation(line: 195, column: 2, scope: !3532)
!3540 = !DILocation(line: 195, column: 8, scope: !3532)
!3541 = !DILocation(line: 195, column: 13, scope: !3532)
!3542 = !DILocation(line: 196, column: 2, scope: !3532)
!3543 = !DILocation(line: 196, column: 2, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3532, file: !2205, line: 196, column: 2)
!3545 = !DILocation(line: 196, column: 2, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3544, file: !2205, line: 196, column: 2)
!3547 = !DILocation(line: 196, column: 2, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !2205, line: 196, column: 2)
!3549 = !DILocation(line: 197, column: 1, scope: !3532)
!3550 = distinct !DISubprogram(name: "__list_add", scope: !2205, file: !2205, line: 146, type: !3551, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !106, !106, !106}
!3553 = !{!3554, !3555, !3556}
!3554 = !DILocalVariable(name: "new", arg: 1, scope: !3550, file: !2205, line: 146, type: !106)
!3555 = !DILocalVariable(name: "prev", arg: 2, scope: !3550, file: !2205, line: 147, type: !106)
!3556 = !DILocalVariable(name: "next", arg: 3, scope: !3550, file: !2205, line: 148, type: !106)
!3557 = !DILocation(line: 146, column: 49, scope: !3550)
!3558 = !DILocation(line: 147, column: 28, scope: !3550)
!3559 = !DILocation(line: 148, column: 28, scope: !3550)
!3560 = !DILocation(line: 150, column: 24, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3550, file: !2205, line: 150, column: 6)
!3562 = !DILocation(line: 150, column: 29, scope: !3561)
!3563 = !DILocation(line: 150, column: 35, scope: !3561)
!3564 = !DILocation(line: 150, column: 7, scope: !3561)
!3565 = !DILocation(line: 150, column: 6, scope: !3550)
!3566 = !DILocation(line: 151, column: 3, scope: !3561)
!3567 = !DILocation(line: 153, column: 15, scope: !3550)
!3568 = !DILocation(line: 153, column: 2, scope: !3550)
!3569 = !DILocation(line: 153, column: 8, scope: !3550)
!3570 = !DILocation(line: 153, column: 13, scope: !3550)
!3571 = !DILocation(line: 154, column: 14, scope: !3550)
!3572 = !DILocation(line: 154, column: 2, scope: !3550)
!3573 = !DILocation(line: 154, column: 7, scope: !3550)
!3574 = !DILocation(line: 154, column: 12, scope: !3550)
!3575 = !DILocation(line: 155, column: 14, scope: !3550)
!3576 = !DILocation(line: 155, column: 2, scope: !3550)
!3577 = !DILocation(line: 155, column: 7, scope: !3550)
!3578 = !DILocation(line: 155, column: 12, scope: !3550)
!3579 = !DILocation(line: 156, column: 2, scope: !3550)
!3580 = !DILocation(line: 156, column: 2, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3550, file: !2205, line: 156, column: 2)
!3582 = !DILocation(line: 156, column: 2, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3581, file: !2205, line: 156, column: 2)
!3584 = !DILocation(line: 156, column: 2, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3581, file: !2205, line: 156, column: 2)
!3586 = !DILocation(line: 157, column: 1, scope: !3550)
!3587 = distinct !DISubprogram(name: "__list_add_valid", scope: !2205, file: !2205, line: 128, type: !3588, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!764, !106, !106, !106}
!3590 = !{!3591, !3592, !3593}
!3591 = !DILocalVariable(name: "new", arg: 1, scope: !3587, file: !2205, line: 128, type: !106)
!3592 = !DILocalVariable(name: "prev", arg: 2, scope: !3587, file: !2205, line: 129, type: !106)
!3593 = !DILocalVariable(name: "next", arg: 3, scope: !3587, file: !2205, line: 130, type: !106)
!3594 = !DILocation(line: 128, column: 55, scope: !3587)
!3595 = !DILocation(line: 129, column: 23, scope: !3587)
!3596 = !DILocation(line: 130, column: 23, scope: !3587)
!3597 = !DILocation(line: 132, column: 2, scope: !3587)
!3598 = !DISubprogram(name: "strscpy", scope: !3599, file: !3599, line: 72, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3599 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!448, !418, !339, !461}
!3602 = !DISubprogram(name: "snd_ctl_find_id", scope: !140, file: !140, line: 146, type: !3603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!138, !299, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
