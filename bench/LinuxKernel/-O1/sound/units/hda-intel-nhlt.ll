; ModuleID = 'sound/hda/intel-nhlt.c'
source_filename = "sound/hda/intel-nhlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_get_dmic_geo: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_get_dmic_geo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_has_endpoint_type: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_has_endpoint_type ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_ssp_endpoint_mask: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_ssp_endpoint_mask ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_ssp_mclk_mask: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_ssp_mclk_mask ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_nhlt_get_endpoint_blob: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_nhlt_get_endpoint_blob ; .previous"

%struct.nhlt_acpi_table = type <{ %struct.acpi_table_header, i8, [0 x %struct.nhlt_endpoint] }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.nhlt_endpoint = type <{ i32, i8, i8, i16, i16, i16, i32, i8, i8, i8, %struct.nhlt_specific_cfg }>
%struct.nhlt_specific_cfg = type { i32, [0 x i8] }
%struct.nhlt_fmt = type <{ i8, [0 x %struct.nhlt_fmt_cfg] }>
%struct.nhlt_fmt_cfg = type { %struct.wav_fmt_ext, %struct.nhlt_specific_cfg }
%struct.wav_fmt_ext = type { %struct.wav_fmt, %union.samples, i32, [16 x i8] }
%struct.wav_fmt = type <{ i16, i16, i32, i32, i16, i16, i16 }>
%union.samples = type { i16 }
%struct.nhlt_dmic_array_config = type { %struct.nhlt_device_specific_config, i8 }
%struct.nhlt_device_specific_config = type { i8, i8 }
%struct.nhlt_vendor_dmic_array_config = type { %struct.nhlt_dmic_array_config, i8 }

@.str = private unnamed_addr constant [5 x i8] c"NHLT\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [22 x i8] c"NHLT table not found\0A\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_intel_nhlt_init206 = internal global ptr @intel_nhlt_init, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_intel_nhlt_free207 = internal global ptr @intel_nhlt_free, section ".discard.addressable", align 8, !dbg !235
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid DMIC description table\0A\00", align 1, !dbg !237
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: undefined DMIC array_type 0x%0x\0A\00", align 1, !dbg !242
@__func__.intel_nhlt_get_dmic_geo = private unnamed_addr constant [24 x i8] c"intel_nhlt_get_dmic_geo\00", align 1, !dbg !247
@__UNIQUE_ID___addressable_intel_nhlt_get_dmic_geo208 = internal global ptr @intel_nhlt_get_dmic_geo, section ".discard.addressable", align 8, !dbg !253
@__UNIQUE_ID___addressable_intel_nhlt_has_endpoint_type209 = internal global ptr @intel_nhlt_has_endpoint_type, section ".discard.addressable", align 8, !dbg !255
@__UNIQUE_ID___addressable_intel_nhlt_ssp_endpoint_mask210 = internal global ptr @intel_nhlt_ssp_endpoint_mask, section ".discard.addressable", align 8, !dbg !257
@__UNIQUE_ID___addressable_intel_nhlt_ssp_mclk_mask211 = internal global ptr @intel_nhlt_ssp_mclk_mask, section ".discard.addressable", align 8, !dbg !259
@__UNIQUE_ID___addressable_intel_nhlt_get_endpoint_blob212 = internal global ptr @intel_nhlt_get_endpoint_blob, section ".discard.addressable", align 8, !dbg !261
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_intel_nhlt_init206, ptr @__UNIQUE_ID___addressable_intel_nhlt_free207, ptr @__UNIQUE_ID___addressable_intel_nhlt_get_dmic_geo208, ptr @__UNIQUE_ID___addressable_intel_nhlt_has_endpoint_type209, ptr @__UNIQUE_ID___addressable_intel_nhlt_ssp_endpoint_mask210, ptr @__UNIQUE_ID___addressable_intel_nhlt_ssp_mclk_mask211, ptr @__UNIQUE_ID___addressable_intel_nhlt_get_endpoint_blob212], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @intel_nhlt_init(ptr noundef %dev) #0 align 16 !dbg !272 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %nhlt = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1853, metadata !DIExpression()), !dbg !1858
  call void @llvm.lifetime.start.p0(i64 8, ptr %nhlt) #7, !dbg !1859
  call void @llvm.dbg.declare(metadata ptr %nhlt, metadata !1854, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !1861
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1855, metadata !DIExpression()), !dbg !1862
  %call = call i32 @acpi_get_table(ptr noundef @.str, i32 noundef 0, ptr noundef %nhlt) #8, !dbg !1863
  store i32 %call, ptr %status, align 4, !dbg !1864
  %0 = load i32, ptr %status, align 4, !dbg !1865
  %tobool = icmp ne i32 %0, 0, !dbg !1865
  br i1 %tobool, label %if.then, label %if.end, !dbg !1867

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1868

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1871

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1871

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1868
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef @.str.1) #9, !dbg !1868
  store ptr null, ptr %retval, align 8, !dbg !1873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1873

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %nhlt, align 8, !dbg !1874
  store ptr %2, ptr %retval, align 8, !dbg !1875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1875

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !1876
  call void @llvm.lifetime.end.p0(i64 8, ptr %nhlt) #7, !dbg !1876
  %3 = load ptr, ptr %retval, align 8, !dbg !1876
  ret ptr %3, !dbg !1876
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1877 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1882 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @intel_nhlt_free(ptr noundef %nhlt) #0 align 16 !dbg !1886 {
entry:
  %nhlt.addr = alloca ptr, align 8
  store ptr %nhlt, ptr %nhlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhlt.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  %0 = load ptr, ptr %nhlt.addr, align 8, !dbg !1892
  call void @acpi_put_table(ptr noundef %0) #8, !dbg !1893
  ret void, !dbg !1894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1895 dso_local void @acpi_put_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_nhlt_get_dmic_geo(ptr noundef %dev, ptr noundef %nhlt) #0 align 16 !dbg !1898 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %nhlt.addr = alloca ptr, align 8
  %epnt = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %cfg_vendor = alloca ptr, align 8
  %fmt_configs = alloca ptr, align 8
  %dmic_geo = alloca i32, align 4
  %max_ch = alloca i16, align 2
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %fmt_cfg = alloca ptr, align 8
  %fmt_ext = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1902, metadata !DIExpression()), !dbg !1923
  store ptr %nhlt, ptr %nhlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhlt.addr, metadata !1903, metadata !DIExpression()), !dbg !1924
  call void @llvm.lifetime.start.p0(i64 8, ptr %epnt) #7, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %epnt, metadata !1904, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #7, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !1905, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg_vendor) #7, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %cfg_vendor, metadata !1906, metadata !DIExpression()), !dbg !1930
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt_configs) #7, !dbg !1931
  call void @llvm.dbg.declare(metadata ptr %fmt_configs, metadata !1907, metadata !DIExpression()), !dbg !1932
  call void @llvm.lifetime.start.p0(i64 4, ptr %dmic_geo) #7, !dbg !1933
  call void @llvm.dbg.declare(metadata ptr %dmic_geo, metadata !1908, metadata !DIExpression()), !dbg !1934
  store i32 0, ptr %dmic_geo, align 4, !dbg !1934
  call void @llvm.lifetime.start.p0(i64 2, ptr %max_ch) #7, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %max_ch, metadata !1909, metadata !DIExpression()), !dbg !1936
  store i16 0, ptr %max_ch, align 2, !dbg !1936
  call void @llvm.lifetime.start.p0(i64 1, ptr %i) #7, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1910, metadata !DIExpression()), !dbg !1938
  call void @llvm.lifetime.start.p0(i64 1, ptr %j) #7, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1911, metadata !DIExpression()), !dbg !1939
  %0 = load ptr, ptr %nhlt.addr, align 8, !dbg !1940
  %tobool = icmp ne ptr %0, null, !dbg !1940
  br i1 %tobool, label %if.end, label %if.then, !dbg !1942

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1943

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %nhlt.addr, align 8, !dbg !1944
  %header = getelementptr inbounds %struct.nhlt_acpi_table, ptr %1, i32 0, i32 0, !dbg !1946
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !1947
  %2 = load i32, ptr %length, align 1, !dbg !1947
  %conv = zext i32 %2 to i64, !dbg !1944
  %cmp = icmp ule i64 %conv, 36, !dbg !1948
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1949

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !1950

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !1953

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1953

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1950
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef @.str.2) #9, !dbg !1950
  store i32 0, ptr %retval, align 4, !dbg !1955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1955

if.end3:                                          ; preds = %if.end
  store i8 0, ptr %j, align 1, !dbg !1956
  %4 = load ptr, ptr %nhlt.addr, align 8, !dbg !1957
  %desc = getelementptr inbounds %struct.nhlt_acpi_table, ptr %4, i32 0, i32 2, !dbg !1958
  %arraydecay = getelementptr inbounds [0 x %struct.nhlt_endpoint], ptr %desc, i64 0, i64 0, !dbg !1957
  store ptr %arraydecay, ptr %epnt, align 8, !dbg !1959
  br label %for.cond, !dbg !1960

for.cond:                                         ; preds = %for.inc70, %if.end3
  %5 = load i8, ptr %j, align 1, !dbg !1961
  %conv4 = zext i8 %5 to i32, !dbg !1961
  %6 = load ptr, ptr %nhlt.addr, align 8, !dbg !1962
  %endpoint_count = getelementptr inbounds %struct.nhlt_acpi_table, ptr %6, i32 0, i32 1, !dbg !1963
  %7 = load i8, ptr %endpoint_count, align 1, !dbg !1963
  %conv5 = zext i8 %7 to i32, !dbg !1962
  %cmp6 = icmp slt i32 %conv4, %conv5, !dbg !1964
  br i1 %cmp6, label %for.body, label %for.end75, !dbg !1965

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %epnt, align 8, !dbg !1966
  %linktype = getelementptr inbounds %struct.nhlt_endpoint, ptr %8, i32 0, i32 1, !dbg !1968
  %9 = load i8, ptr %linktype, align 1, !dbg !1968
  %conv8 = zext i8 %9 to i32, !dbg !1966
  %cmp9 = icmp ne i32 %conv8, 2, !dbg !1969
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1970

if.then11:                                        ; preds = %for.body
  br label %for.inc70, !dbg !1971

if.end12:                                         ; preds = %for.body
  %10 = load ptr, ptr %epnt, align 8, !dbg !1972
  %config = getelementptr inbounds %struct.nhlt_endpoint, ptr %10, i32 0, i32 10, !dbg !1973
  %caps = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config, i32 0, i32 1, !dbg !1974
  %arraydecay13 = getelementptr inbounds [0 x i8], ptr %caps, i64 0, i64 0, !dbg !1975
  store ptr %arraydecay13, ptr %cfg, align 8, !dbg !1976
  %11 = load ptr, ptr %epnt, align 8, !dbg !1977
  %config14 = getelementptr inbounds %struct.nhlt_endpoint, ptr %11, i32 0, i32 10, !dbg !1978
  %caps15 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config14, i32 0, i32 1, !dbg !1979
  %arraydecay16 = getelementptr inbounds [0 x i8], ptr %caps15, i64 0, i64 0, !dbg !1977
  %12 = load ptr, ptr %epnt, align 8, !dbg !1980
  %config17 = getelementptr inbounds %struct.nhlt_endpoint, ptr %12, i32 0, i32 10, !dbg !1981
  %size = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config17, i32 0, i32 0, !dbg !1982
  %13 = load i32, ptr %size, align 1, !dbg !1982
  %idx.ext = zext i32 %13 to i64, !dbg !1983
  %add.ptr = getelementptr i8, ptr %arraydecay16, i64 %idx.ext, !dbg !1983
  store ptr %add.ptr, ptr %fmt_configs, align 8, !dbg !1984
  %14 = load ptr, ptr %fmt_configs, align 8, !dbg !1985
  %fmt_count = getelementptr inbounds %struct.nhlt_fmt, ptr %14, i32 0, i32 0, !dbg !1986
  %15 = load i8, ptr %fmt_count, align 1, !dbg !1986
  %tobool18 = icmp ne i8 %15, 0, !dbg !1985
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !1987

if.then19:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt_cfg) #7, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %fmt_cfg, metadata !1912, metadata !DIExpression()), !dbg !1989
  %16 = load ptr, ptr %fmt_configs, align 8, !dbg !1990
  %fmt_config = getelementptr inbounds %struct.nhlt_fmt, ptr %16, i32 0, i32 1, !dbg !1991
  %arraydecay20 = getelementptr inbounds [0 x %struct.nhlt_fmt_cfg], ptr %fmt_config, i64 0, i64 0, !dbg !1990
  store ptr %arraydecay20, ptr %fmt_cfg, align 8, !dbg !1989
  store i8 0, ptr %i, align 1, !dbg !1992
  br label %for.cond21, !dbg !1993

for.cond21:                                       ; preds = %for.inc, %if.then19
  %17 = load i8, ptr %i, align 1, !dbg !1994
  %conv22 = zext i8 %17 to i32, !dbg !1994
  %18 = load ptr, ptr %fmt_configs, align 8, !dbg !1995
  %fmt_count23 = getelementptr inbounds %struct.nhlt_fmt, ptr %18, i32 0, i32 0, !dbg !1996
  %19 = load i8, ptr %fmt_count23, align 1, !dbg !1996
  %conv24 = zext i8 %19 to i32, !dbg !1995
  %cmp25 = icmp slt i32 %conv22, %conv24, !dbg !1997
  br i1 %cmp25, label %for.body27, label %for.end, !dbg !1998

for.body27:                                       ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt_ext) #7, !dbg !1999
  call void @llvm.dbg.declare(metadata ptr %fmt_ext, metadata !1918, metadata !DIExpression()), !dbg !2000
  %20 = load ptr, ptr %fmt_cfg, align 8, !dbg !2001
  %fmt_ext28 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %20, i32 0, i32 0, !dbg !2002
  store ptr %fmt_ext28, ptr %fmt_ext, align 8, !dbg !2003
  %21 = load ptr, ptr %fmt_ext, align 8, !dbg !2004
  %fmt = getelementptr inbounds %struct.wav_fmt_ext, ptr %21, i32 0, i32 0, !dbg !2006
  %channels = getelementptr inbounds %struct.wav_fmt, ptr %fmt, i32 0, i32 1, !dbg !2007
  %22 = load i16, ptr %channels, align 1, !dbg !2007
  %conv29 = zext i16 %22 to i32, !dbg !2004
  %23 = load i16, ptr %max_ch, align 2, !dbg !2008
  %conv30 = zext i16 %23 to i32, !dbg !2008
  %cmp31 = icmp sgt i32 %conv29, %conv30, !dbg !2009
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !2010

if.then33:                                        ; preds = %for.body27
  %24 = load ptr, ptr %fmt_ext, align 8, !dbg !2011
  %fmt34 = getelementptr inbounds %struct.wav_fmt_ext, ptr %24, i32 0, i32 0, !dbg !2012
  %channels35 = getelementptr inbounds %struct.wav_fmt, ptr %fmt34, i32 0, i32 1, !dbg !2013
  %25 = load i16, ptr %channels35, align 1, !dbg !2013
  store i16 %25, ptr %max_ch, align 2, !dbg !2014
  br label %if.end36, !dbg !2015

if.end36:                                         ; preds = %if.then33, %for.body27
  %26 = load ptr, ptr %fmt_cfg, align 8, !dbg !2016
  %config37 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %26, i32 0, i32 1, !dbg !2017
  %caps38 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config37, i32 0, i32 1, !dbg !2018
  %arraydecay39 = getelementptr inbounds [0 x i8], ptr %caps38, i64 0, i64 0, !dbg !2016
  %27 = load ptr, ptr %fmt_cfg, align 8, !dbg !2019
  %config40 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %27, i32 0, i32 1, !dbg !2020
  %size41 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config40, i32 0, i32 0, !dbg !2021
  %28 = load i32, ptr %size41, align 1, !dbg !2021
  %idx.ext42 = zext i32 %28 to i64, !dbg !2022
  %add.ptr43 = getelementptr i8, ptr %arraydecay39, i64 %idx.ext42, !dbg !2022
  store ptr %add.ptr43, ptr %fmt_cfg, align 8, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt_ext) #7, !dbg !2024
  br label %for.inc, !dbg !2025

for.inc:                                          ; preds = %if.end36
  %29 = load i8, ptr %i, align 1, !dbg !2026
  %inc = add i8 %29, 1, !dbg !2026
  store i8 %inc, ptr %i, align 1, !dbg !2026
  br label %for.cond21, !dbg !2027, !llvm.loop !2028

for.end:                                          ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt_cfg) #7, !dbg !2032
  br label %if.end44, !dbg !2033

if.else:                                          ; preds = %if.end12
  br label %if.end44

if.end44:                                         ; preds = %if.else, %for.end
  %30 = load ptr, ptr %cfg, align 8, !dbg !2034
  %device_config = getelementptr inbounds %struct.nhlt_dmic_array_config, ptr %30, i32 0, i32 0, !dbg !2036
  %config_type = getelementptr inbounds %struct.nhlt_device_specific_config, ptr %device_config, i32 0, i32 1, !dbg !2037
  %31 = load i8, ptr %config_type, align 1, !dbg !2037
  %conv45 = zext i8 %31 to i32, !dbg !2034
  %cmp46 = icmp ne i32 %conv45, 1, !dbg !2038
  br i1 %cmp46, label %if.then48, label %if.else50, !dbg !2039

if.then48:                                        ; preds = %if.end44
  %32 = load i16, ptr %max_ch, align 2, !dbg !2040
  %conv49 = zext i16 %32 to i32, !dbg !2040
  store i32 %conv49, ptr %dmic_geo, align 4, !dbg !2042
  br label %if.end69, !dbg !2043

if.else50:                                        ; preds = %if.end44
  %33 = load ptr, ptr %cfg, align 8, !dbg !2044
  %array_type = getelementptr inbounds %struct.nhlt_dmic_array_config, ptr %33, i32 0, i32 1, !dbg !2046
  %34 = load i8, ptr %array_type, align 1, !dbg !2046
  %conv51 = zext i8 %34 to i32, !dbg !2044
  switch i32 %conv51, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb52
    i32 13, label %sw.bb52
    i32 14, label %sw.bb52
    i32 15, label %sw.bb53
  ], !dbg !2047

sw.bb:                                            ; preds = %if.else50, %if.else50
  store i32 2, ptr %dmic_geo, align 4, !dbg !2048
  br label %sw.epilog, !dbg !2050

sw.bb52:                                          ; preds = %if.else50, %if.else50, %if.else50
  store i32 4, ptr %dmic_geo, align 4, !dbg !2051
  br label %sw.epilog, !dbg !2052

sw.bb53:                                          ; preds = %if.else50
  %35 = load ptr, ptr %cfg, align 8, !dbg !2053
  store ptr %35, ptr %cfg_vendor, align 8, !dbg !2054
  %36 = load ptr, ptr %cfg_vendor, align 8, !dbg !2055
  %nb_mics = getelementptr inbounds %struct.nhlt_vendor_dmic_array_config, ptr %36, i32 0, i32 1, !dbg !2056
  %37 = load i8, ptr %nb_mics, align 1, !dbg !2056
  %conv54 = zext i8 %37 to i32, !dbg !2055
  store i32 %conv54, ptr %dmic_geo, align 4, !dbg !2057
  br label %sw.epilog, !dbg !2058

sw.default:                                       ; preds = %if.else50
  br label %do.body55, !dbg !2059

do.body55:                                        ; preds = %sw.default
  br label %do.cond56, !dbg !2061

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !2061

do.end57:                                         ; preds = %do.cond56
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !2059
  %39 = load ptr, ptr %cfg, align 8, !dbg !2059
  %array_type58 = getelementptr inbounds %struct.nhlt_dmic_array_config, ptr %39, i32 0, i32 1, !dbg !2059
  %40 = load i8, ptr %array_type58, align 1, !dbg !2059
  %conv59 = zext i8 %40 to i32, !dbg !2059
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef @.str.3, ptr noundef @__func__.intel_nhlt_get_dmic_geo, i32 noundef %conv59) #9, !dbg !2059
  br label %sw.epilog, !dbg !2063

sw.epilog:                                        ; preds = %do.end57, %sw.bb53, %sw.bb52, %sw.bb
  %41 = load i32, ptr %dmic_geo, align 4, !dbg !2064
  %cmp60 = icmp ugt i32 %41, 0, !dbg !2066
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !2067

if.then62:                                        ; preds = %sw.epilog
  br label %if.end63, !dbg !2068

if.end63:                                         ; preds = %if.then62, %sw.epilog
  %42 = load i16, ptr %max_ch, align 2, !dbg !2070
  %conv64 = zext i16 %42 to i32, !dbg !2070
  %43 = load i32, ptr %dmic_geo, align 4, !dbg !2072
  %cmp65 = icmp ugt i32 %conv64, %43, !dbg !2073
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2074

if.then67:                                        ; preds = %if.end63
  br label %if.end68, !dbg !2075

if.end68:                                         ; preds = %if.then67, %if.end63
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then48
  br label %for.inc70, !dbg !2077

for.inc70:                                        ; preds = %if.end69, %if.then11
  %44 = load i8, ptr %j, align 1, !dbg !2078
  %inc71 = add i8 %44, 1, !dbg !2078
  store i8 %inc71, ptr %j, align 1, !dbg !2078
  %45 = load ptr, ptr %epnt, align 8, !dbg !2079
  %46 = load ptr, ptr %epnt, align 8, !dbg !2080
  %length72 = getelementptr inbounds %struct.nhlt_endpoint, ptr %46, i32 0, i32 0, !dbg !2081
  %47 = load i32, ptr %length72, align 1, !dbg !2081
  %idx.ext73 = zext i32 %47 to i64, !dbg !2082
  %add.ptr74 = getelementptr i8, ptr %45, i64 %idx.ext73, !dbg !2082
  store ptr %add.ptr74, ptr %epnt, align 8, !dbg !2083
  br label %for.cond, !dbg !2084, !llvm.loop !2085

for.end75:                                        ; preds = %for.cond
  %48 = load i32, ptr %dmic_geo, align 4, !dbg !2087
  store i32 %48, ptr %retval, align 4, !dbg !2088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2088

cleanup:                                          ; preds = %for.end75, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %j) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 1, ptr %i) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 2, ptr %max_ch) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 4, ptr %dmic_geo) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt_configs) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg_vendor) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #7, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %epnt) #7, !dbg !2089
  %49 = load i32, ptr %retval, align 4, !dbg !2089
  ret i32 %49, !dbg !2089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @intel_nhlt_has_endpoint_type(ptr noundef %nhlt, i8 noundef zeroext %link_type) #0 align 16 !dbg !2090 {
entry:
  %retval = alloca i1, align 1
  %nhlt.addr = alloca ptr, align 8
  %link_type.addr = alloca i8, align 1
  %epnt = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nhlt, ptr %nhlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhlt.addr, metadata !2094, metadata !DIExpression()), !dbg !2098
  store i8 %link_type, ptr %link_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %link_type.addr, metadata !2095, metadata !DIExpression()), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 8, ptr %epnt) #7, !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %epnt, metadata !2096, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2097, metadata !DIExpression()), !dbg !2103
  %0 = load ptr, ptr %nhlt.addr, align 8, !dbg !2104
  %tobool = icmp ne ptr %0, null, !dbg !2104
  br i1 %tobool, label %if.end, label %if.then, !dbg !2106

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2107

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %nhlt.addr, align 8, !dbg !2108
  %desc = getelementptr inbounds %struct.nhlt_acpi_table, ptr %1, i32 0, i32 2, !dbg !2109
  %arraydecay = getelementptr inbounds [0 x %struct.nhlt_endpoint], ptr %desc, i64 0, i64 0, !dbg !2108
  store ptr %arraydecay, ptr %epnt, align 8, !dbg !2110
  store i32 0, ptr %i, align 4, !dbg !2111
  br label %for.cond, !dbg !2113

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2114
  %3 = load ptr, ptr %nhlt.addr, align 8, !dbg !2116
  %endpoint_count = getelementptr inbounds %struct.nhlt_acpi_table, ptr %3, i32 0, i32 1, !dbg !2117
  %4 = load i8, ptr %endpoint_count, align 1, !dbg !2117
  %conv = zext i8 %4 to i32, !dbg !2116
  %cmp = icmp slt i32 %2, %conv, !dbg !2118
  br i1 %cmp, label %for.body, label %for.end, !dbg !2119

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %epnt, align 8, !dbg !2120
  %linktype = getelementptr inbounds %struct.nhlt_endpoint, ptr %5, i32 0, i32 1, !dbg !2123
  %6 = load i8, ptr %linktype, align 1, !dbg !2123
  %conv2 = zext i8 %6 to i32, !dbg !2120
  %7 = load i8, ptr %link_type.addr, align 1, !dbg !2124
  %conv3 = zext i8 %7 to i32, !dbg !2124
  %cmp4 = icmp eq i32 %conv2, %conv3, !dbg !2125
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !2126

if.then6:                                         ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !2127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2127

if.end7:                                          ; preds = %for.body
  %8 = load ptr, ptr %epnt, align 8, !dbg !2128
  %9 = load ptr, ptr %epnt, align 8, !dbg !2129
  %length = getelementptr inbounds %struct.nhlt_endpoint, ptr %9, i32 0, i32 0, !dbg !2130
  %10 = load i32, ptr %length, align 1, !dbg !2130
  %idx.ext = zext i32 %10 to i64, !dbg !2131
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !2131
  store ptr %add.ptr, ptr %epnt, align 8, !dbg !2132
  br label %for.inc, !dbg !2133

for.inc:                                          ; preds = %if.end7
  %11 = load i32, ptr %i, align 4, !dbg !2134
  %inc = add i32 %11, 1, !dbg !2134
  store i32 %inc, ptr %i, align 4, !dbg !2134
  br label %for.cond, !dbg !2135, !llvm.loop !2136

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

cleanup:                                          ; preds = %for.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2139
  call void @llvm.lifetime.end.p0(i64 8, ptr %epnt) #7, !dbg !2139
  %12 = load i1, ptr %retval, align 1, !dbg !2139
  ret i1 %12, !dbg !2139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_nhlt_ssp_endpoint_mask(ptr noundef %nhlt, i8 noundef zeroext %device_type) #0 align 16 !dbg !2140 {
entry:
  %retval = alloca i32, align 4
  %nhlt.addr = alloca ptr, align 8
  %device_type.addr = alloca i8, align 1
  %epnt = alloca ptr, align 8
  %ssp_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nhlt, ptr %nhlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhlt.addr, metadata !2144, metadata !DIExpression()), !dbg !2149
  store i8 %device_type, ptr %device_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %device_type.addr, metadata !2145, metadata !DIExpression()), !dbg !2150
  call void @llvm.lifetime.start.p0(i64 8, ptr %epnt) #7, !dbg !2151
  call void @llvm.dbg.declare(metadata ptr %epnt, metadata !2146, metadata !DIExpression()), !dbg !2152
  call void @llvm.lifetime.start.p0(i64 4, ptr %ssp_mask) #7, !dbg !2153
  call void @llvm.dbg.declare(metadata ptr %ssp_mask, metadata !2147, metadata !DIExpression()), !dbg !2154
  store i32 0, ptr %ssp_mask, align 4, !dbg !2154
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2148, metadata !DIExpression()), !dbg !2156
  %0 = load ptr, ptr %nhlt.addr, align 8, !dbg !2157
  %tobool = icmp ne ptr %0, null, !dbg !2157
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2159

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %device_type.addr, align 1, !dbg !2160
  %conv = zext i8 %1 to i32, !dbg !2160
  %cmp = icmp ne i32 %conv, 0, !dbg !2161
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2162

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8, ptr %device_type.addr, align 1, !dbg !2163
  %conv2 = zext i8 %2 to i32, !dbg !2163
  %cmp3 = icmp ne i32 %conv2, 4, !dbg !2164
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2165

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !2166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2166

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load ptr, ptr %nhlt.addr, align 8, !dbg !2167
  %desc = getelementptr inbounds %struct.nhlt_acpi_table, ptr %3, i32 0, i32 2, !dbg !2168
  %arraydecay = getelementptr inbounds [0 x %struct.nhlt_endpoint], ptr %desc, i64 0, i64 0, !dbg !2167
  store ptr %arraydecay, ptr %epnt, align 8, !dbg !2169
  store i32 0, ptr %i, align 4, !dbg !2170
  br label %for.cond, !dbg !2172

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !2173
  %5 = load ptr, ptr %nhlt.addr, align 8, !dbg !2175
  %endpoint_count = getelementptr inbounds %struct.nhlt_acpi_table, ptr %5, i32 0, i32 1, !dbg !2176
  %6 = load i8, ptr %endpoint_count, align 1, !dbg !2176
  %conv5 = zext i8 %6 to i32, !dbg !2175
  %cmp6 = icmp slt i32 %4, %conv5, !dbg !2177
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2178

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %epnt, align 8, !dbg !2179
  %linktype = getelementptr inbounds %struct.nhlt_endpoint, ptr %7, i32 0, i32 1, !dbg !2182
  %8 = load i8, ptr %linktype, align 1, !dbg !2182
  %conv8 = zext i8 %8 to i32, !dbg !2179
  %cmp9 = icmp eq i32 %conv8, 3, !dbg !2183
  br i1 %cmp9, label %land.lhs.true11, label %if.end21, !dbg !2184

land.lhs.true11:                                  ; preds = %for.body
  %9 = load ptr, ptr %epnt, align 8, !dbg !2185
  %device_type12 = getelementptr inbounds %struct.nhlt_endpoint, ptr %9, i32 0, i32 7, !dbg !2186
  %10 = load i8, ptr %device_type12, align 1, !dbg !2186
  %conv13 = zext i8 %10 to i32, !dbg !2185
  %11 = load i8, ptr %device_type.addr, align 1, !dbg !2187
  %conv14 = zext i8 %11 to i32, !dbg !2187
  %cmp15 = icmp eq i32 %conv13, %conv14, !dbg !2188
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !2189

if.then17:                                        ; preds = %land.lhs.true11
  %12 = load ptr, ptr %epnt, align 8, !dbg !2190
  %virtual_bus_id = getelementptr inbounds %struct.nhlt_endpoint, ptr %12, i32 0, i32 9, !dbg !2190
  %13 = load i8, ptr %virtual_bus_id, align 1, !dbg !2190
  %conv18 = zext i8 %13 to i32, !dbg !2190
  %sh_prom = zext i32 %conv18 to i64, !dbg !2190
  %shl = shl i64 1, %sh_prom, !dbg !2190
  %14 = load i32, ptr %ssp_mask, align 4, !dbg !2192
  %conv19 = sext i32 %14 to i64, !dbg !2192
  %or = or i64 %conv19, %shl, !dbg !2192
  %conv20 = trunc i64 %or to i32, !dbg !2192
  store i32 %conv20, ptr %ssp_mask, align 4, !dbg !2192
  br label %if.end21, !dbg !2193

if.end21:                                         ; preds = %if.then17, %land.lhs.true11, %for.body
  %15 = load ptr, ptr %epnt, align 8, !dbg !2194
  %16 = load ptr, ptr %epnt, align 8, !dbg !2195
  %length = getelementptr inbounds %struct.nhlt_endpoint, ptr %16, i32 0, i32 0, !dbg !2196
  %17 = load i32, ptr %length, align 1, !dbg !2196
  %idx.ext = zext i32 %17 to i64, !dbg !2197
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.ext, !dbg !2197
  store ptr %add.ptr, ptr %epnt, align 8, !dbg !2198
  br label %for.inc, !dbg !2199

for.inc:                                          ; preds = %if.end21
  %18 = load i32, ptr %i, align 4, !dbg !2200
  %inc = add i32 %18, 1, !dbg !2200
  store i32 %inc, ptr %i, align 4, !dbg !2200
  br label %for.cond, !dbg !2201, !llvm.loop !2202

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %ssp_mask, align 4, !dbg !2204
  store i32 %19, ptr %retval, align 4, !dbg !2205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2205

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 4, ptr %ssp_mask) #7, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %epnt) #7, !dbg !2206
  %20 = load i32, ptr %retval, align 4, !dbg !2206
  ret i32 %20, !dbg !2206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_nhlt_ssp_mclk_mask(ptr noundef %nhlt, i32 noundef %ssp_num) #0 align 16 !dbg !2207 {
entry:
  %retval = alloca i32, align 4
  %nhlt.addr = alloca ptr, align 8
  %ssp_num.addr = alloca i32, align 4
  %epnt = alloca ptr, align 8
  %fmt = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %mclk_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %blob = alloca ptr, align 8
  %mdivc_offset = alloca i32, align 4
  %size21 = alloca i32, align 4
  store ptr %nhlt, ptr %nhlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhlt.addr, metadata !2211, metadata !DIExpression()), !dbg !2230
  store i32 %ssp_num, ptr %ssp_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ssp_num.addr, metadata !2212, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.start.p0(i64 8, ptr %epnt) #7, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %epnt, metadata !2213, metadata !DIExpression()), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt) #7, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !2214, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #7, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !2215, metadata !DIExpression()), !dbg !2237
  call void @llvm.lifetime.start.p0(i64 4, ptr %mclk_mask) #7, !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %mclk_mask, metadata !2216, metadata !DIExpression()), !dbg !2239
  store i32 0, ptr %mclk_mask, align 4, !dbg !2239
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2217, metadata !DIExpression()), !dbg !2241
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2218, metadata !DIExpression()), !dbg !2242
  %0 = load ptr, ptr %nhlt.addr, align 8, !dbg !2243
  %tobool = icmp ne ptr %0, null, !dbg !2243
  br i1 %tobool, label %if.end, label %if.then, !dbg !2245

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2246

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %nhlt.addr, align 8, !dbg !2247
  %desc = getelementptr inbounds %struct.nhlt_acpi_table, ptr %1, i32 0, i32 2, !dbg !2248
  %arraydecay = getelementptr inbounds [0 x %struct.nhlt_endpoint], ptr %desc, i64 0, i64 0, !dbg !2247
  store ptr %arraydecay, ptr %epnt, align 8, !dbg !2249
  store i32 0, ptr %i, align 4, !dbg !2250
  br label %for.cond, !dbg !2251

for.cond:                                         ; preds = %for.inc63, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2252
  %3 = load ptr, ptr %nhlt.addr, align 8, !dbg !2253
  %endpoint_count = getelementptr inbounds %struct.nhlt_acpi_table, ptr %3, i32 0, i32 1, !dbg !2254
  %4 = load i8, ptr %endpoint_count, align 1, !dbg !2254
  %conv = zext i8 %4 to i32, !dbg !2253
  %cmp = icmp slt i32 %2, %conv, !dbg !2255
  br i1 %cmp, label %for.body, label %for.end65, !dbg !2256

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %epnt, align 8, !dbg !2257
  %linktype = getelementptr inbounds %struct.nhlt_endpoint, ptr %5, i32 0, i32 1, !dbg !2258
  %6 = load i8, ptr %linktype, align 1, !dbg !2258
  %conv2 = zext i8 %6 to i32, !dbg !2257
  %cmp3 = icmp eq i32 %conv2, 3, !dbg !2259
  br i1 %cmp3, label %land.lhs.true, label %if.end60, !dbg !2260

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %epnt, align 8, !dbg !2261
  %device_type = getelementptr inbounds %struct.nhlt_endpoint, ptr %7, i32 0, i32 7, !dbg !2262
  %8 = load i8, ptr %device_type, align 1, !dbg !2262
  %conv5 = zext i8 %8 to i32, !dbg !2261
  %cmp6 = icmp eq i32 %conv5, 4, !dbg !2263
  br i1 %cmp6, label %land.lhs.true8, label %if.end60, !dbg !2264

land.lhs.true8:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %epnt, align 8, !dbg !2265
  %virtual_bus_id = getelementptr inbounds %struct.nhlt_endpoint, ptr %9, i32 0, i32 9, !dbg !2266
  %10 = load i8, ptr %virtual_bus_id, align 1, !dbg !2266
  %conv9 = zext i8 %10 to i32, !dbg !2265
  %11 = load i32, ptr %ssp_num.addr, align 4, !dbg !2267
  %cmp10 = icmp eq i32 %conv9, %11, !dbg !2268
  br i1 %cmp10, label %if.then12, label %if.end60, !dbg !2269

if.then12:                                        ; preds = %land.lhs.true8
  %12 = load ptr, ptr %epnt, align 8, !dbg !2270
  %config = getelementptr inbounds %struct.nhlt_endpoint, ptr %12, i32 0, i32 10, !dbg !2271
  %caps = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config, i32 0, i32 1, !dbg !2272
  %arraydecay13 = getelementptr inbounds [0 x i8], ptr %caps, i64 0, i64 0, !dbg !2270
  %13 = load ptr, ptr %epnt, align 8, !dbg !2273
  %config14 = getelementptr inbounds %struct.nhlt_endpoint, ptr %13, i32 0, i32 10, !dbg !2274
  %size = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config14, i32 0, i32 0, !dbg !2275
  %14 = load i32, ptr %size, align 1, !dbg !2275
  %idx.ext = zext i32 %14 to i64, !dbg !2276
  %add.ptr = getelementptr i8, ptr %arraydecay13, i64 %idx.ext, !dbg !2276
  store ptr %add.ptr, ptr %fmt, align 8, !dbg !2277
  %15 = load ptr, ptr %fmt, align 8, !dbg !2278
  %fmt_config = getelementptr inbounds %struct.nhlt_fmt, ptr %15, i32 0, i32 1, !dbg !2279
  %arraydecay15 = getelementptr inbounds [0 x %struct.nhlt_fmt_cfg], ptr %fmt_config, i64 0, i64 0, !dbg !2278
  store ptr %arraydecay15, ptr %cfg, align 8, !dbg !2280
  store i32 0, ptr %j, align 4, !dbg !2281
  br label %for.cond16, !dbg !2282

for.cond16:                                       ; preds = %for.inc, %if.then12
  %16 = load i32, ptr %j, align 4, !dbg !2283
  %17 = load ptr, ptr %fmt, align 8, !dbg !2284
  %fmt_count = getelementptr inbounds %struct.nhlt_fmt, ptr %17, i32 0, i32 0, !dbg !2285
  %18 = load i8, ptr %fmt_count, align 1, !dbg !2285
  %conv17 = zext i8 %18 to i32, !dbg !2284
  %cmp18 = icmp slt i32 %16, %conv17, !dbg !2286
  br i1 %cmp18, label %for.body20, label %for.end, !dbg !2287

for.body20:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %blob) #7, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %blob, metadata !2219, metadata !DIExpression()), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdivc_offset) #7, !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %mdivc_offset, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 4, ptr %size21) #7, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %size21, metadata !2229, metadata !DIExpression()), !dbg !2293
  %19 = load ptr, ptr %cfg, align 8, !dbg !2294
  %config22 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %19, i32 0, i32 1, !dbg !2296
  %size23 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config22, i32 0, i32 0, !dbg !2297
  %20 = load i32, ptr %size23, align 1, !dbg !2297
  %cmp24 = icmp ult i32 %20, 8, !dbg !2298
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2299

if.then26:                                        ; preds = %for.body20
  store i32 -22, ptr %retval, align 4, !dbg !2300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2300

if.end27:                                         ; preds = %for.body20
  %21 = load ptr, ptr %cfg, align 8, !dbg !2301
  %config28 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %21, i32 0, i32 1, !dbg !2302
  %caps29 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config28, i32 0, i32 1, !dbg !2303
  %arraydecay30 = getelementptr inbounds [0 x i8], ptr %caps29, i64 0, i64 0, !dbg !2301
  store ptr %arraydecay30, ptr %blob, align 8, !dbg !2304
  %22 = load ptr, ptr %blob, align 8, !dbg !2305
  %arrayidx = getelementptr i32, ptr %22, i64 1, !dbg !2305
  %23 = load i32, ptr %arrayidx, align 4, !dbg !2305
  %cmp31 = icmp eq i32 %23, -301989376, !dbg !2307
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !2308

if.then33:                                        ; preds = %if.end27
  store i32 20, ptr %mdivc_offset, align 4, !dbg !2309
  store i32 88, ptr %size21, align 4, !dbg !2311
  br label %if.end40, !dbg !2312

if.else:                                          ; preds = %if.end27
  %24 = load ptr, ptr %blob, align 8, !dbg !2313
  %arrayidx34 = getelementptr i32, ptr %24, i64 1, !dbg !2313
  %25 = load i32, ptr %arrayidx34, align 4, !dbg !2313
  %cmp35 = icmp eq i32 %25, -301989627, !dbg !2315
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !2316

if.then37:                                        ; preds = %if.else
  store i32 21, ptr %mdivc_offset, align 4, !dbg !2317
  store i32 96, ptr %size21, align 4, !dbg !2319
  br label %if.end39, !dbg !2320

if.else38:                                        ; preds = %if.else
  store i32 19, ptr %mdivc_offset, align 4, !dbg !2321
  store i32 84, ptr %size21, align 4, !dbg !2323
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then33
  %26 = load ptr, ptr %cfg, align 8, !dbg !2324
  %config41 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %26, i32 0, i32 1, !dbg !2326
  %size42 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config41, i32 0, i32 0, !dbg !2327
  %27 = load i32, ptr %size42, align 1, !dbg !2327
  %28 = load i32, ptr %size21, align 4, !dbg !2328
  %cmp43 = icmp ult i32 %27, %28, !dbg !2329
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !2330

if.then45:                                        ; preds = %if.end40
  store i32 -22, ptr %retval, align 4, !dbg !2331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2331

if.end46:                                         ; preds = %if.end40
  %29 = load ptr, ptr %blob, align 8, !dbg !2332
  %30 = load i32, ptr %mdivc_offset, align 4, !dbg !2333
  %idxprom = sext i32 %30 to i64, !dbg !2332
  %arrayidx47 = getelementptr i32, ptr %29, i64 %idxprom, !dbg !2332
  %31 = load i32, ptr %arrayidx47, align 4, !dbg !2332
  %conv48 = zext i32 %31 to i64, !dbg !2332
  %and = and i64 %conv48, 3, !dbg !2334
  %32 = load i32, ptr %mclk_mask, align 4, !dbg !2335
  %conv49 = sext i32 %32 to i64, !dbg !2335
  %or = or i64 %conv49, %and, !dbg !2335
  %conv50 = trunc i64 %or to i32, !dbg !2335
  store i32 %conv50, ptr %mclk_mask, align 4, !dbg !2335
  %33 = load ptr, ptr %cfg, align 8, !dbg !2336
  %config51 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %33, i32 0, i32 1, !dbg !2337
  %caps52 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config51, i32 0, i32 1, !dbg !2338
  %arraydecay53 = getelementptr inbounds [0 x i8], ptr %caps52, i64 0, i64 0, !dbg !2336
  %34 = load ptr, ptr %cfg, align 8, !dbg !2339
  %config54 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %34, i32 0, i32 1, !dbg !2340
  %size55 = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config54, i32 0, i32 0, !dbg !2341
  %35 = load i32, ptr %size55, align 1, !dbg !2341
  %idx.ext56 = zext i32 %35 to i64, !dbg !2342
  %add.ptr57 = getelementptr i8, ptr %arraydecay53, i64 %idx.ext56, !dbg !2342
  store ptr %add.ptr57, ptr %cfg, align 8, !dbg !2343
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2344
  br label %cleanup, !dbg !2344

cleanup:                                          ; preds = %if.end46, %if.then45, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %size21) #7, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdivc_offset) #7, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 8, ptr %blob) #7, !dbg !2344
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup71 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2345

for.inc:                                          ; preds = %cleanup.cont
  %36 = load i32, ptr %j, align 4, !dbg !2346
  %inc = add i32 %36, 1, !dbg !2346
  store i32 %inc, ptr %j, align 4, !dbg !2346
  br label %for.cond16, !dbg !2347, !llvm.loop !2348

for.end:                                          ; preds = %for.cond16
  br label %if.end60, !dbg !2350

if.end60:                                         ; preds = %for.end, %land.lhs.true8, %land.lhs.true, %for.body
  %37 = load ptr, ptr %epnt, align 8, !dbg !2351
  %38 = load ptr, ptr %epnt, align 8, !dbg !2352
  %length = getelementptr inbounds %struct.nhlt_endpoint, ptr %38, i32 0, i32 0, !dbg !2353
  %39 = load i32, ptr %length, align 1, !dbg !2353
  %idx.ext61 = zext i32 %39 to i64, !dbg !2354
  %add.ptr62 = getelementptr i8, ptr %37, i64 %idx.ext61, !dbg !2354
  store ptr %add.ptr62, ptr %epnt, align 8, !dbg !2355
  br label %for.inc63, !dbg !2356

for.inc63:                                        ; preds = %if.end60
  %40 = load i32, ptr %i, align 4, !dbg !2357
  %inc64 = add i32 %40, 1, !dbg !2357
  store i32 %inc64, ptr %i, align 4, !dbg !2357
  br label %for.cond, !dbg !2358, !llvm.loop !2359

for.end65:                                        ; preds = %for.cond
  %41 = load i32, ptr %mclk_mask, align 4, !dbg !2361
  %conv66 = sext i32 %41 to i64, !dbg !2361
  %call = call i64 @hweight_long(i64 noundef %conv66) #8, !dbg !2363
  %cmp67 = icmp ne i64 %call, 1, !dbg !2364
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !2365

if.then69:                                        ; preds = %for.end65
  store i32 -22, ptr %retval, align 4, !dbg !2366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2366

if.end70:                                         ; preds = %for.end65
  %42 = load i32, ptr %mclk_mask, align 4, !dbg !2367
  store i32 %42, ptr %retval, align 4, !dbg !2368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2368

cleanup71:                                        ; preds = %if.end70, %if.then69, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 4, ptr %mclk_mask) #7, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #7, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt) #7, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr %epnt) #7, !dbg !2369
  %43 = load i32, ptr %retval, align 4, !dbg !2369
  ret i32 %43, !dbg !2369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #5 align 16 !dbg !2370 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2375, metadata !DIExpression()), !dbg !2376
  %0 = load i64, ptr %w.addr, align 8, !dbg !2377
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2377
  br i1 %1, label %cond.true, label %cond.false, !dbg !2377

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and = and i64 %2, 1, !dbg !2377
  %tobool = icmp ne i64 %and, 0, !dbg !2377
  %lnot = xor i1 %tobool, true, !dbg !2377
  %lnot1 = xor i1 %lnot, true, !dbg !2377
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2377
  %3 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and2 = and i64 %3, 2, !dbg !2377
  %tobool3 = icmp ne i64 %and2, 0, !dbg !2377
  %lnot4 = xor i1 %tobool3, true, !dbg !2377
  %lnot6 = xor i1 %lnot4, true, !dbg !2377
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2377
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !2377
  %4 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and8 = and i64 %4, 4, !dbg !2377
  %tobool9 = icmp ne i64 %and8, 0, !dbg !2377
  %lnot10 = xor i1 %tobool9, true, !dbg !2377
  %lnot12 = xor i1 %lnot10, true, !dbg !2377
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2377
  %add14 = add i32 %add, %lnot.ext13, !dbg !2377
  %5 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and15 = and i64 %5, 8, !dbg !2377
  %tobool16 = icmp ne i64 %and15, 0, !dbg !2377
  %lnot17 = xor i1 %tobool16, true, !dbg !2377
  %lnot19 = xor i1 %lnot17, true, !dbg !2377
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2377
  %add21 = add i32 %add14, %lnot.ext20, !dbg !2377
  %6 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and22 = and i64 %6, 16, !dbg !2377
  %tobool23 = icmp ne i64 %and22, 0, !dbg !2377
  %lnot24 = xor i1 %tobool23, true, !dbg !2377
  %lnot26 = xor i1 %lnot24, true, !dbg !2377
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2377
  %add28 = add i32 %add21, %lnot.ext27, !dbg !2377
  %7 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and29 = and i64 %7, 32, !dbg !2377
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2377
  %lnot31 = xor i1 %tobool30, true, !dbg !2377
  %lnot33 = xor i1 %lnot31, true, !dbg !2377
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !2377
  %add35 = add i32 %add28, %lnot.ext34, !dbg !2377
  %8 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and36 = and i64 %8, 64, !dbg !2377
  %tobool37 = icmp ne i64 %and36, 0, !dbg !2377
  %lnot38 = xor i1 %tobool37, true, !dbg !2377
  %lnot40 = xor i1 %lnot38, true, !dbg !2377
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !2377
  %add42 = add i32 %add35, %lnot.ext41, !dbg !2377
  %9 = load i64, ptr %w.addr, align 8, !dbg !2377
  %and43 = and i64 %9, 128, !dbg !2377
  %tobool44 = icmp ne i64 %and43, 0, !dbg !2377
  %lnot45 = xor i1 %tobool44, true, !dbg !2377
  %lnot47 = xor i1 %lnot45, true, !dbg !2377
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !2377
  %add49 = add i32 %add42, %lnot.ext48, !dbg !2377
  %10 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr = lshr i64 %10, 8, !dbg !2377
  %and50 = and i64 %shr, 1, !dbg !2377
  %tobool51 = icmp ne i64 %and50, 0, !dbg !2377
  %lnot52 = xor i1 %tobool51, true, !dbg !2377
  %lnot54 = xor i1 %lnot52, true, !dbg !2377
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2377
  %11 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr56 = lshr i64 %11, 8, !dbg !2377
  %and57 = and i64 %shr56, 2, !dbg !2377
  %tobool58 = icmp ne i64 %and57, 0, !dbg !2377
  %lnot59 = xor i1 %tobool58, true, !dbg !2377
  %lnot61 = xor i1 %lnot59, true, !dbg !2377
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !2377
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !2377
  %12 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr64 = lshr i64 %12, 8, !dbg !2377
  %and65 = and i64 %shr64, 4, !dbg !2377
  %tobool66 = icmp ne i64 %and65, 0, !dbg !2377
  %lnot67 = xor i1 %tobool66, true, !dbg !2377
  %lnot69 = xor i1 %lnot67, true, !dbg !2377
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !2377
  %add71 = add i32 %add63, %lnot.ext70, !dbg !2377
  %13 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr72 = lshr i64 %13, 8, !dbg !2377
  %and73 = and i64 %shr72, 8, !dbg !2377
  %tobool74 = icmp ne i64 %and73, 0, !dbg !2377
  %lnot75 = xor i1 %tobool74, true, !dbg !2377
  %lnot77 = xor i1 %lnot75, true, !dbg !2377
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !2377
  %add79 = add i32 %add71, %lnot.ext78, !dbg !2377
  %14 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr80 = lshr i64 %14, 8, !dbg !2377
  %and81 = and i64 %shr80, 16, !dbg !2377
  %tobool82 = icmp ne i64 %and81, 0, !dbg !2377
  %lnot83 = xor i1 %tobool82, true, !dbg !2377
  %lnot85 = xor i1 %lnot83, true, !dbg !2377
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !2377
  %add87 = add i32 %add79, %lnot.ext86, !dbg !2377
  %15 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr88 = lshr i64 %15, 8, !dbg !2377
  %and89 = and i64 %shr88, 32, !dbg !2377
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2377
  %lnot91 = xor i1 %tobool90, true, !dbg !2377
  %lnot93 = xor i1 %lnot91, true, !dbg !2377
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !2377
  %add95 = add i32 %add87, %lnot.ext94, !dbg !2377
  %16 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr96 = lshr i64 %16, 8, !dbg !2377
  %and97 = and i64 %shr96, 64, !dbg !2377
  %tobool98 = icmp ne i64 %and97, 0, !dbg !2377
  %lnot99 = xor i1 %tobool98, true, !dbg !2377
  %lnot101 = xor i1 %lnot99, true, !dbg !2377
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !2377
  %add103 = add i32 %add95, %lnot.ext102, !dbg !2377
  %17 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr104 = lshr i64 %17, 8, !dbg !2377
  %and105 = and i64 %shr104, 128, !dbg !2377
  %tobool106 = icmp ne i64 %and105, 0, !dbg !2377
  %lnot107 = xor i1 %tobool106, true, !dbg !2377
  %lnot109 = xor i1 %lnot107, true, !dbg !2377
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !2377
  %add111 = add i32 %add103, %lnot.ext110, !dbg !2377
  %add112 = add i32 %add49, %add111, !dbg !2377
  %18 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr113 = lshr i64 %18, 16, !dbg !2377
  %and114 = and i64 %shr113, 1, !dbg !2377
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2377
  %lnot116 = xor i1 %tobool115, true, !dbg !2377
  %lnot118 = xor i1 %lnot116, true, !dbg !2377
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !2377
  %19 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr120 = lshr i64 %19, 16, !dbg !2377
  %and121 = and i64 %shr120, 2, !dbg !2377
  %tobool122 = icmp ne i64 %and121, 0, !dbg !2377
  %lnot123 = xor i1 %tobool122, true, !dbg !2377
  %lnot125 = xor i1 %lnot123, true, !dbg !2377
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !2377
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !2377
  %20 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr128 = lshr i64 %20, 16, !dbg !2377
  %and129 = and i64 %shr128, 4, !dbg !2377
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2377
  %lnot131 = xor i1 %tobool130, true, !dbg !2377
  %lnot133 = xor i1 %lnot131, true, !dbg !2377
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !2377
  %add135 = add i32 %add127, %lnot.ext134, !dbg !2377
  %21 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr136 = lshr i64 %21, 16, !dbg !2377
  %and137 = and i64 %shr136, 8, !dbg !2377
  %tobool138 = icmp ne i64 %and137, 0, !dbg !2377
  %lnot139 = xor i1 %tobool138, true, !dbg !2377
  %lnot141 = xor i1 %lnot139, true, !dbg !2377
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !2377
  %add143 = add i32 %add135, %lnot.ext142, !dbg !2377
  %22 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr144 = lshr i64 %22, 16, !dbg !2377
  %and145 = and i64 %shr144, 16, !dbg !2377
  %tobool146 = icmp ne i64 %and145, 0, !dbg !2377
  %lnot147 = xor i1 %tobool146, true, !dbg !2377
  %lnot149 = xor i1 %lnot147, true, !dbg !2377
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !2377
  %add151 = add i32 %add143, %lnot.ext150, !dbg !2377
  %23 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr152 = lshr i64 %23, 16, !dbg !2377
  %and153 = and i64 %shr152, 32, !dbg !2377
  %tobool154 = icmp ne i64 %and153, 0, !dbg !2377
  %lnot155 = xor i1 %tobool154, true, !dbg !2377
  %lnot157 = xor i1 %lnot155, true, !dbg !2377
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !2377
  %add159 = add i32 %add151, %lnot.ext158, !dbg !2377
  %24 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr160 = lshr i64 %24, 16, !dbg !2377
  %and161 = and i64 %shr160, 64, !dbg !2377
  %tobool162 = icmp ne i64 %and161, 0, !dbg !2377
  %lnot163 = xor i1 %tobool162, true, !dbg !2377
  %lnot165 = xor i1 %lnot163, true, !dbg !2377
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !2377
  %add167 = add i32 %add159, %lnot.ext166, !dbg !2377
  %25 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr168 = lshr i64 %25, 16, !dbg !2377
  %and169 = and i64 %shr168, 128, !dbg !2377
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2377
  %lnot171 = xor i1 %tobool170, true, !dbg !2377
  %lnot173 = xor i1 %lnot171, true, !dbg !2377
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !2377
  %add175 = add i32 %add167, %lnot.ext174, !dbg !2377
  %26 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr176 = lshr i64 %26, 16, !dbg !2377
  %shr177 = lshr i64 %shr176, 8, !dbg !2377
  %and178 = and i64 %shr177, 1, !dbg !2377
  %tobool179 = icmp ne i64 %and178, 0, !dbg !2377
  %lnot180 = xor i1 %tobool179, true, !dbg !2377
  %lnot182 = xor i1 %lnot180, true, !dbg !2377
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !2377
  %27 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr184 = lshr i64 %27, 16, !dbg !2377
  %shr185 = lshr i64 %shr184, 8, !dbg !2377
  %and186 = and i64 %shr185, 2, !dbg !2377
  %tobool187 = icmp ne i64 %and186, 0, !dbg !2377
  %lnot188 = xor i1 %tobool187, true, !dbg !2377
  %lnot190 = xor i1 %lnot188, true, !dbg !2377
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !2377
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !2377
  %28 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr193 = lshr i64 %28, 16, !dbg !2377
  %shr194 = lshr i64 %shr193, 8, !dbg !2377
  %and195 = and i64 %shr194, 4, !dbg !2377
  %tobool196 = icmp ne i64 %and195, 0, !dbg !2377
  %lnot197 = xor i1 %tobool196, true, !dbg !2377
  %lnot199 = xor i1 %lnot197, true, !dbg !2377
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !2377
  %add201 = add i32 %add192, %lnot.ext200, !dbg !2377
  %29 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr202 = lshr i64 %29, 16, !dbg !2377
  %shr203 = lshr i64 %shr202, 8, !dbg !2377
  %and204 = and i64 %shr203, 8, !dbg !2377
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2377
  %lnot206 = xor i1 %tobool205, true, !dbg !2377
  %lnot208 = xor i1 %lnot206, true, !dbg !2377
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !2377
  %add210 = add i32 %add201, %lnot.ext209, !dbg !2377
  %30 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr211 = lshr i64 %30, 16, !dbg !2377
  %shr212 = lshr i64 %shr211, 8, !dbg !2377
  %and213 = and i64 %shr212, 16, !dbg !2377
  %tobool214 = icmp ne i64 %and213, 0, !dbg !2377
  %lnot215 = xor i1 %tobool214, true, !dbg !2377
  %lnot217 = xor i1 %lnot215, true, !dbg !2377
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !2377
  %add219 = add i32 %add210, %lnot.ext218, !dbg !2377
  %31 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr220 = lshr i64 %31, 16, !dbg !2377
  %shr221 = lshr i64 %shr220, 8, !dbg !2377
  %and222 = and i64 %shr221, 32, !dbg !2377
  %tobool223 = icmp ne i64 %and222, 0, !dbg !2377
  %lnot224 = xor i1 %tobool223, true, !dbg !2377
  %lnot226 = xor i1 %lnot224, true, !dbg !2377
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !2377
  %add228 = add i32 %add219, %lnot.ext227, !dbg !2377
  %32 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr229 = lshr i64 %32, 16, !dbg !2377
  %shr230 = lshr i64 %shr229, 8, !dbg !2377
  %and231 = and i64 %shr230, 64, !dbg !2377
  %tobool232 = icmp ne i64 %and231, 0, !dbg !2377
  %lnot233 = xor i1 %tobool232, true, !dbg !2377
  %lnot235 = xor i1 %lnot233, true, !dbg !2377
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !2377
  %add237 = add i32 %add228, %lnot.ext236, !dbg !2377
  %33 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr238 = lshr i64 %33, 16, !dbg !2377
  %shr239 = lshr i64 %shr238, 8, !dbg !2377
  %and240 = and i64 %shr239, 128, !dbg !2377
  %tobool241 = icmp ne i64 %and240, 0, !dbg !2377
  %lnot242 = xor i1 %tobool241, true, !dbg !2377
  %lnot244 = xor i1 %lnot242, true, !dbg !2377
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !2377
  %add246 = add i32 %add237, %lnot.ext245, !dbg !2377
  %add247 = add i32 %add175, %add246, !dbg !2377
  %add248 = add i32 %add112, %add247, !dbg !2377
  %34 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr249 = lshr i64 %34, 32, !dbg !2377
  %and250 = and i64 %shr249, 1, !dbg !2377
  %tobool251 = icmp ne i64 %and250, 0, !dbg !2377
  %lnot252 = xor i1 %tobool251, true, !dbg !2377
  %lnot254 = xor i1 %lnot252, true, !dbg !2377
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !2377
  %35 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr256 = lshr i64 %35, 32, !dbg !2377
  %and257 = and i64 %shr256, 2, !dbg !2377
  %tobool258 = icmp ne i64 %and257, 0, !dbg !2377
  %lnot259 = xor i1 %tobool258, true, !dbg !2377
  %lnot261 = xor i1 %lnot259, true, !dbg !2377
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !2377
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !2377
  %36 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr264 = lshr i64 %36, 32, !dbg !2377
  %and265 = and i64 %shr264, 4, !dbg !2377
  %tobool266 = icmp ne i64 %and265, 0, !dbg !2377
  %lnot267 = xor i1 %tobool266, true, !dbg !2377
  %lnot269 = xor i1 %lnot267, true, !dbg !2377
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !2377
  %add271 = add i32 %add263, %lnot.ext270, !dbg !2377
  %37 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr272 = lshr i64 %37, 32, !dbg !2377
  %and273 = and i64 %shr272, 8, !dbg !2377
  %tobool274 = icmp ne i64 %and273, 0, !dbg !2377
  %lnot275 = xor i1 %tobool274, true, !dbg !2377
  %lnot277 = xor i1 %lnot275, true, !dbg !2377
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !2377
  %add279 = add i32 %add271, %lnot.ext278, !dbg !2377
  %38 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr280 = lshr i64 %38, 32, !dbg !2377
  %and281 = and i64 %shr280, 16, !dbg !2377
  %tobool282 = icmp ne i64 %and281, 0, !dbg !2377
  %lnot283 = xor i1 %tobool282, true, !dbg !2377
  %lnot285 = xor i1 %lnot283, true, !dbg !2377
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !2377
  %add287 = add i32 %add279, %lnot.ext286, !dbg !2377
  %39 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr288 = lshr i64 %39, 32, !dbg !2377
  %and289 = and i64 %shr288, 32, !dbg !2377
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2377
  %lnot291 = xor i1 %tobool290, true, !dbg !2377
  %lnot293 = xor i1 %lnot291, true, !dbg !2377
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !2377
  %add295 = add i32 %add287, %lnot.ext294, !dbg !2377
  %40 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr296 = lshr i64 %40, 32, !dbg !2377
  %and297 = and i64 %shr296, 64, !dbg !2377
  %tobool298 = icmp ne i64 %and297, 0, !dbg !2377
  %lnot299 = xor i1 %tobool298, true, !dbg !2377
  %lnot301 = xor i1 %lnot299, true, !dbg !2377
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !2377
  %add303 = add i32 %add295, %lnot.ext302, !dbg !2377
  %41 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr304 = lshr i64 %41, 32, !dbg !2377
  %and305 = and i64 %shr304, 128, !dbg !2377
  %tobool306 = icmp ne i64 %and305, 0, !dbg !2377
  %lnot307 = xor i1 %tobool306, true, !dbg !2377
  %lnot309 = xor i1 %lnot307, true, !dbg !2377
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !2377
  %add311 = add i32 %add303, %lnot.ext310, !dbg !2377
  %42 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr312 = lshr i64 %42, 32, !dbg !2377
  %shr313 = lshr i64 %shr312, 8, !dbg !2377
  %and314 = and i64 %shr313, 1, !dbg !2377
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2377
  %lnot316 = xor i1 %tobool315, true, !dbg !2377
  %lnot318 = xor i1 %lnot316, true, !dbg !2377
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !2377
  %43 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr320 = lshr i64 %43, 32, !dbg !2377
  %shr321 = lshr i64 %shr320, 8, !dbg !2377
  %and322 = and i64 %shr321, 2, !dbg !2377
  %tobool323 = icmp ne i64 %and322, 0, !dbg !2377
  %lnot324 = xor i1 %tobool323, true, !dbg !2377
  %lnot326 = xor i1 %lnot324, true, !dbg !2377
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !2377
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !2377
  %44 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr329 = lshr i64 %44, 32, !dbg !2377
  %shr330 = lshr i64 %shr329, 8, !dbg !2377
  %and331 = and i64 %shr330, 4, !dbg !2377
  %tobool332 = icmp ne i64 %and331, 0, !dbg !2377
  %lnot333 = xor i1 %tobool332, true, !dbg !2377
  %lnot335 = xor i1 %lnot333, true, !dbg !2377
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !2377
  %add337 = add i32 %add328, %lnot.ext336, !dbg !2377
  %45 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr338 = lshr i64 %45, 32, !dbg !2377
  %shr339 = lshr i64 %shr338, 8, !dbg !2377
  %and340 = and i64 %shr339, 8, !dbg !2377
  %tobool341 = icmp ne i64 %and340, 0, !dbg !2377
  %lnot342 = xor i1 %tobool341, true, !dbg !2377
  %lnot344 = xor i1 %lnot342, true, !dbg !2377
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !2377
  %add346 = add i32 %add337, %lnot.ext345, !dbg !2377
  %46 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr347 = lshr i64 %46, 32, !dbg !2377
  %shr348 = lshr i64 %shr347, 8, !dbg !2377
  %and349 = and i64 %shr348, 16, !dbg !2377
  %tobool350 = icmp ne i64 %and349, 0, !dbg !2377
  %lnot351 = xor i1 %tobool350, true, !dbg !2377
  %lnot353 = xor i1 %lnot351, true, !dbg !2377
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !2377
  %add355 = add i32 %add346, %lnot.ext354, !dbg !2377
  %47 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr356 = lshr i64 %47, 32, !dbg !2377
  %shr357 = lshr i64 %shr356, 8, !dbg !2377
  %and358 = and i64 %shr357, 32, !dbg !2377
  %tobool359 = icmp ne i64 %and358, 0, !dbg !2377
  %lnot360 = xor i1 %tobool359, true, !dbg !2377
  %lnot362 = xor i1 %lnot360, true, !dbg !2377
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !2377
  %add364 = add i32 %add355, %lnot.ext363, !dbg !2377
  %48 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr365 = lshr i64 %48, 32, !dbg !2377
  %shr366 = lshr i64 %shr365, 8, !dbg !2377
  %and367 = and i64 %shr366, 64, !dbg !2377
  %tobool368 = icmp ne i64 %and367, 0, !dbg !2377
  %lnot369 = xor i1 %tobool368, true, !dbg !2377
  %lnot371 = xor i1 %lnot369, true, !dbg !2377
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !2377
  %add373 = add i32 %add364, %lnot.ext372, !dbg !2377
  %49 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr374 = lshr i64 %49, 32, !dbg !2377
  %shr375 = lshr i64 %shr374, 8, !dbg !2377
  %and376 = and i64 %shr375, 128, !dbg !2377
  %tobool377 = icmp ne i64 %and376, 0, !dbg !2377
  %lnot378 = xor i1 %tobool377, true, !dbg !2377
  %lnot380 = xor i1 %lnot378, true, !dbg !2377
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !2377
  %add382 = add i32 %add373, %lnot.ext381, !dbg !2377
  %add383 = add i32 %add311, %add382, !dbg !2377
  %50 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr384 = lshr i64 %50, 32, !dbg !2377
  %shr385 = lshr i64 %shr384, 16, !dbg !2377
  %and386 = and i64 %shr385, 1, !dbg !2377
  %tobool387 = icmp ne i64 %and386, 0, !dbg !2377
  %lnot388 = xor i1 %tobool387, true, !dbg !2377
  %lnot390 = xor i1 %lnot388, true, !dbg !2377
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !2377
  %51 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr392 = lshr i64 %51, 32, !dbg !2377
  %shr393 = lshr i64 %shr392, 16, !dbg !2377
  %and394 = and i64 %shr393, 2, !dbg !2377
  %tobool395 = icmp ne i64 %and394, 0, !dbg !2377
  %lnot396 = xor i1 %tobool395, true, !dbg !2377
  %lnot398 = xor i1 %lnot396, true, !dbg !2377
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !2377
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !2377
  %52 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr401 = lshr i64 %52, 32, !dbg !2377
  %shr402 = lshr i64 %shr401, 16, !dbg !2377
  %and403 = and i64 %shr402, 4, !dbg !2377
  %tobool404 = icmp ne i64 %and403, 0, !dbg !2377
  %lnot405 = xor i1 %tobool404, true, !dbg !2377
  %lnot407 = xor i1 %lnot405, true, !dbg !2377
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !2377
  %add409 = add i32 %add400, %lnot.ext408, !dbg !2377
  %53 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr410 = lshr i64 %53, 32, !dbg !2377
  %shr411 = lshr i64 %shr410, 16, !dbg !2377
  %and412 = and i64 %shr411, 8, !dbg !2377
  %tobool413 = icmp ne i64 %and412, 0, !dbg !2377
  %lnot414 = xor i1 %tobool413, true, !dbg !2377
  %lnot416 = xor i1 %lnot414, true, !dbg !2377
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !2377
  %add418 = add i32 %add409, %lnot.ext417, !dbg !2377
  %54 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr419 = lshr i64 %54, 32, !dbg !2377
  %shr420 = lshr i64 %shr419, 16, !dbg !2377
  %and421 = and i64 %shr420, 16, !dbg !2377
  %tobool422 = icmp ne i64 %and421, 0, !dbg !2377
  %lnot423 = xor i1 %tobool422, true, !dbg !2377
  %lnot425 = xor i1 %lnot423, true, !dbg !2377
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !2377
  %add427 = add i32 %add418, %lnot.ext426, !dbg !2377
  %55 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr428 = lshr i64 %55, 32, !dbg !2377
  %shr429 = lshr i64 %shr428, 16, !dbg !2377
  %and430 = and i64 %shr429, 32, !dbg !2377
  %tobool431 = icmp ne i64 %and430, 0, !dbg !2377
  %lnot432 = xor i1 %tobool431, true, !dbg !2377
  %lnot434 = xor i1 %lnot432, true, !dbg !2377
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !2377
  %add436 = add i32 %add427, %lnot.ext435, !dbg !2377
  %56 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr437 = lshr i64 %56, 32, !dbg !2377
  %shr438 = lshr i64 %shr437, 16, !dbg !2377
  %and439 = and i64 %shr438, 64, !dbg !2377
  %tobool440 = icmp ne i64 %and439, 0, !dbg !2377
  %lnot441 = xor i1 %tobool440, true, !dbg !2377
  %lnot443 = xor i1 %lnot441, true, !dbg !2377
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !2377
  %add445 = add i32 %add436, %lnot.ext444, !dbg !2377
  %57 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr446 = lshr i64 %57, 32, !dbg !2377
  %shr447 = lshr i64 %shr446, 16, !dbg !2377
  %and448 = and i64 %shr447, 128, !dbg !2377
  %tobool449 = icmp ne i64 %and448, 0, !dbg !2377
  %lnot450 = xor i1 %tobool449, true, !dbg !2377
  %lnot452 = xor i1 %lnot450, true, !dbg !2377
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !2377
  %add454 = add i32 %add445, %lnot.ext453, !dbg !2377
  %58 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr455 = lshr i64 %58, 32, !dbg !2377
  %shr456 = lshr i64 %shr455, 16, !dbg !2377
  %shr457 = lshr i64 %shr456, 8, !dbg !2377
  %and458 = and i64 %shr457, 1, !dbg !2377
  %tobool459 = icmp ne i64 %and458, 0, !dbg !2377
  %lnot460 = xor i1 %tobool459, true, !dbg !2377
  %lnot462 = xor i1 %lnot460, true, !dbg !2377
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !2377
  %59 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr464 = lshr i64 %59, 32, !dbg !2377
  %shr465 = lshr i64 %shr464, 16, !dbg !2377
  %shr466 = lshr i64 %shr465, 8, !dbg !2377
  %and467 = and i64 %shr466, 2, !dbg !2377
  %tobool468 = icmp ne i64 %and467, 0, !dbg !2377
  %lnot469 = xor i1 %tobool468, true, !dbg !2377
  %lnot471 = xor i1 %lnot469, true, !dbg !2377
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !2377
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !2377
  %60 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr474 = lshr i64 %60, 32, !dbg !2377
  %shr475 = lshr i64 %shr474, 16, !dbg !2377
  %shr476 = lshr i64 %shr475, 8, !dbg !2377
  %and477 = and i64 %shr476, 4, !dbg !2377
  %tobool478 = icmp ne i64 %and477, 0, !dbg !2377
  %lnot479 = xor i1 %tobool478, true, !dbg !2377
  %lnot481 = xor i1 %lnot479, true, !dbg !2377
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !2377
  %add483 = add i32 %add473, %lnot.ext482, !dbg !2377
  %61 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr484 = lshr i64 %61, 32, !dbg !2377
  %shr485 = lshr i64 %shr484, 16, !dbg !2377
  %shr486 = lshr i64 %shr485, 8, !dbg !2377
  %and487 = and i64 %shr486, 8, !dbg !2377
  %tobool488 = icmp ne i64 %and487, 0, !dbg !2377
  %lnot489 = xor i1 %tobool488, true, !dbg !2377
  %lnot491 = xor i1 %lnot489, true, !dbg !2377
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !2377
  %add493 = add i32 %add483, %lnot.ext492, !dbg !2377
  %62 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr494 = lshr i64 %62, 32, !dbg !2377
  %shr495 = lshr i64 %shr494, 16, !dbg !2377
  %shr496 = lshr i64 %shr495, 8, !dbg !2377
  %and497 = and i64 %shr496, 16, !dbg !2377
  %tobool498 = icmp ne i64 %and497, 0, !dbg !2377
  %lnot499 = xor i1 %tobool498, true, !dbg !2377
  %lnot501 = xor i1 %lnot499, true, !dbg !2377
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !2377
  %add503 = add i32 %add493, %lnot.ext502, !dbg !2377
  %63 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr504 = lshr i64 %63, 32, !dbg !2377
  %shr505 = lshr i64 %shr504, 16, !dbg !2377
  %shr506 = lshr i64 %shr505, 8, !dbg !2377
  %and507 = and i64 %shr506, 32, !dbg !2377
  %tobool508 = icmp ne i64 %and507, 0, !dbg !2377
  %lnot509 = xor i1 %tobool508, true, !dbg !2377
  %lnot511 = xor i1 %lnot509, true, !dbg !2377
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !2377
  %add513 = add i32 %add503, %lnot.ext512, !dbg !2377
  %64 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr514 = lshr i64 %64, 32, !dbg !2377
  %shr515 = lshr i64 %shr514, 16, !dbg !2377
  %shr516 = lshr i64 %shr515, 8, !dbg !2377
  %and517 = and i64 %shr516, 64, !dbg !2377
  %tobool518 = icmp ne i64 %and517, 0, !dbg !2377
  %lnot519 = xor i1 %tobool518, true, !dbg !2377
  %lnot521 = xor i1 %lnot519, true, !dbg !2377
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !2377
  %add523 = add i32 %add513, %lnot.ext522, !dbg !2377
  %65 = load i64, ptr %w.addr, align 8, !dbg !2377
  %shr524 = lshr i64 %65, 32, !dbg !2377
  %shr525 = lshr i64 %shr524, 16, !dbg !2377
  %shr526 = lshr i64 %shr525, 8, !dbg !2377
  %and527 = and i64 %shr526, 128, !dbg !2377
  %tobool528 = icmp ne i64 %and527, 0, !dbg !2377
  %lnot529 = xor i1 %tobool528, true, !dbg !2377
  %lnot531 = xor i1 %lnot529, true, !dbg !2377
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !2377
  %add533 = add i32 %add523, %lnot.ext532, !dbg !2377
  %add534 = add i32 %add454, %add533, !dbg !2377
  %add535 = add i32 %add383, %add534, !dbg !2377
  %add536 = add i32 %add248, %add535, !dbg !2377
  %conv = zext i32 %add536 to i64, !dbg !2377
  br label %cond.end, !dbg !2377

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !2377
  %call = call i64 @__arch_hweight64(i64 noundef %66) #8, !dbg !2377
  br label %cond.end, !dbg !2377

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !2377
  ret i64 %cond, !dbg !2378
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @intel_nhlt_get_endpoint_blob(ptr noundef %dev, ptr noundef %nhlt, i32 noundef %bus_id, i8 noundef zeroext %link_type, i8 noundef zeroext %vbps, i8 noundef zeroext %bps, i8 noundef zeroext %num_ch, i32 noundef %rate, i8 noundef zeroext %dir, i8 noundef zeroext %dev_type) #0 align 16 !dbg !2379 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %nhlt.addr = alloca ptr, align 8
  %bus_id.addr = alloca i32, align 4
  %link_type.addr = alloca i8, align 1
  %vbps.addr = alloca i8, align 1
  %bps.addr = alloca i8, align 1
  %num_ch.addr = alloca i8, align 1
  %rate.addr = alloca i32, align 4
  %dir.addr = alloca i8, align 1
  %dev_type.addr = alloca i8, align 1
  %cfg = alloca ptr, align 8
  %epnt = alloca ptr, align 8
  %ignore_vbps = alloca i8, align 1
  %fmt = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2384, metadata !DIExpression()), !dbg !2399
  store ptr %nhlt, ptr %nhlt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nhlt.addr, metadata !2385, metadata !DIExpression()), !dbg !2400
  store i32 %bus_id, ptr %bus_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_id.addr, metadata !2386, metadata !DIExpression()), !dbg !2401
  store i8 %link_type, ptr %link_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %link_type.addr, metadata !2387, metadata !DIExpression()), !dbg !2402
  store i8 %vbps, ptr %vbps.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vbps.addr, metadata !2388, metadata !DIExpression()), !dbg !2403
  store i8 %bps, ptr %bps.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bps.addr, metadata !2389, metadata !DIExpression()), !dbg !2404
  store i8 %num_ch, ptr %num_ch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %num_ch.addr, metadata !2390, metadata !DIExpression()), !dbg !2405
  store i32 %rate, ptr %rate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate.addr, metadata !2391, metadata !DIExpression()), !dbg !2406
  store i8 %dir, ptr %dir.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !2392, metadata !DIExpression()), !dbg !2407
  store i8 %dev_type, ptr %dev_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %dev_type.addr, metadata !2393, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #7, !dbg !2409
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !2394, metadata !DIExpression()), !dbg !2410
  call void @llvm.lifetime.start.p0(i64 8, ptr %epnt) #7, !dbg !2411
  call void @llvm.dbg.declare(metadata ptr %epnt, metadata !2395, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 1, ptr %ignore_vbps) #7, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %ignore_vbps, metadata !2396, metadata !DIExpression()), !dbg !2414
  store i8 0, ptr %ignore_vbps, align 1, !dbg !2414
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt) #7, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !2397, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2417
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2398, metadata !DIExpression()), !dbg !2418
  %0 = load ptr, ptr %nhlt.addr, align 8, !dbg !2419
  %tobool = icmp ne ptr %0, null, !dbg !2419
  br i1 %tobool, label %if.end, label %if.then, !dbg !2421

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2422

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %link_type.addr, align 1, !dbg !2423
  %conv = zext i8 %1 to i32, !dbg !2423
  %cmp = icmp eq i32 %conv, 2, !dbg !2425
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2426

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr %bps.addr, align 1, !dbg !2427
  %conv2 = zext i8 %2 to i32, !dbg !2427
  %cmp3 = icmp eq i32 %conv2, 32, !dbg !2428
  br i1 %cmp3, label %land.lhs.true5, label %if.else, !dbg !2429

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = load i8, ptr %vbps.addr, align 1, !dbg !2430
  %conv6 = zext i8 %3 to i32, !dbg !2430
  %cmp7 = icmp eq i32 %conv6, 24, !dbg !2431
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !2432

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %4 = load i8, ptr %vbps.addr, align 1, !dbg !2433
  %conv9 = zext i8 %4 to i32, !dbg !2433
  %cmp10 = icmp eq i32 %conv9, 32, !dbg !2434
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !2435

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true5
  store i8 1, ptr %ignore_vbps, align 1, !dbg !2436
  br label %if.end13, !dbg !2438

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %5 = load ptr, ptr %nhlt.addr, align 8, !dbg !2439
  %desc = getelementptr inbounds %struct.nhlt_acpi_table, ptr %5, i32 0, i32 2, !dbg !2440
  %arraydecay = getelementptr inbounds [0 x %struct.nhlt_endpoint], ptr %desc, i64 0, i64 0, !dbg !2439
  store ptr %arraydecay, ptr %epnt, align 8, !dbg !2441
  store i32 0, ptr %i, align 4, !dbg !2442
  br label %for.cond, !dbg !2444

for.cond:                                         ; preds = %for.inc, %if.end13
  %6 = load i32, ptr %i, align 4, !dbg !2445
  %7 = load ptr, ptr %nhlt.addr, align 8, !dbg !2447
  %endpoint_count = getelementptr inbounds %struct.nhlt_acpi_table, ptr %7, i32 0, i32 1, !dbg !2448
  %8 = load i8, ptr %endpoint_count, align 1, !dbg !2448
  %conv14 = zext i8 %8 to i32, !dbg !2447
  %cmp15 = icmp slt i32 %6, %conv14, !dbg !2449
  br i1 %cmp15, label %for.body, label %for.end, !dbg !2450

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2451
  %10 = load ptr, ptr %epnt, align 8, !dbg !2454
  %11 = load i32, ptr %bus_id.addr, align 4, !dbg !2455
  %12 = load i8, ptr %link_type.addr, align 1, !dbg !2456
  %13 = load i8, ptr %dir.addr, align 1, !dbg !2457
  %14 = load i8, ptr %dev_type.addr, align 1, !dbg !2458
  %call = call zeroext i1 @nhlt_check_ep_match(ptr noundef %9, ptr noundef %10, i32 noundef %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext %14) #8, !dbg !2459
  br i1 %call, label %if.then17, label %if.end25, !dbg !2460

if.then17:                                        ; preds = %for.body
  %15 = load ptr, ptr %epnt, align 8, !dbg !2461
  %config = getelementptr inbounds %struct.nhlt_endpoint, ptr %15, i32 0, i32 10, !dbg !2463
  %caps = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config, i32 0, i32 1, !dbg !2464
  %arraydecay18 = getelementptr inbounds [0 x i8], ptr %caps, i64 0, i64 0, !dbg !2461
  %16 = load ptr, ptr %epnt, align 8, !dbg !2465
  %config19 = getelementptr inbounds %struct.nhlt_endpoint, ptr %16, i32 0, i32 10, !dbg !2466
  %size = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config19, i32 0, i32 0, !dbg !2467
  %17 = load i32, ptr %size, align 1, !dbg !2467
  %idx.ext = zext i32 %17 to i64, !dbg !2468
  %add.ptr = getelementptr i8, ptr %arraydecay18, i64 %idx.ext, !dbg !2468
  store ptr %add.ptr, ptr %fmt, align 8, !dbg !2469
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !2470
  %19 = load ptr, ptr %fmt, align 8, !dbg !2471
  %20 = load i8, ptr %num_ch.addr, align 1, !dbg !2472
  %21 = load i32, ptr %rate.addr, align 4, !dbg !2473
  %22 = load i8, ptr %vbps.addr, align 1, !dbg !2474
  %23 = load i8, ptr %bps.addr, align 1, !dbg !2475
  %24 = load i8, ptr %ignore_vbps, align 1, !dbg !2476, !range !2477, !noundef !505
  %tobool20 = trunc i8 %24 to i1, !dbg !2476
  %call21 = call ptr @nhlt_get_specific_cfg(ptr noundef %18, ptr noundef %19, i8 noundef zeroext %20, i32 noundef %21, i8 noundef zeroext %22, i8 noundef zeroext %23, i1 noundef zeroext %tobool20) #8, !dbg !2478
  store ptr %call21, ptr %cfg, align 8, !dbg !2479
  %25 = load ptr, ptr %cfg, align 8, !dbg !2480
  %tobool22 = icmp ne ptr %25, null, !dbg !2480
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2482

if.then23:                                        ; preds = %if.then17
  %26 = load ptr, ptr %cfg, align 8, !dbg !2483
  store ptr %26, ptr %retval, align 8, !dbg !2484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2484

if.end24:                                         ; preds = %if.then17
  br label %if.end25, !dbg !2485

if.end25:                                         ; preds = %if.end24, %for.body
  %27 = load ptr, ptr %epnt, align 8, !dbg !2486
  %28 = load ptr, ptr %epnt, align 8, !dbg !2487
  %length = getelementptr inbounds %struct.nhlt_endpoint, ptr %28, i32 0, i32 0, !dbg !2488
  %29 = load i32, ptr %length, align 1, !dbg !2488
  %idx.ext26 = zext i32 %29 to i64, !dbg !2489
  %add.ptr27 = getelementptr i8, ptr %27, i64 %idx.ext26, !dbg !2489
  store ptr %add.ptr27, ptr %epnt, align 8, !dbg !2490
  br label %for.inc, !dbg !2491

for.inc:                                          ; preds = %if.end25
  %30 = load i32, ptr %i, align 4, !dbg !2492
  %inc = add i32 %30, 1, !dbg !2492
  store i32 %inc, ptr %i, align 4, !dbg !2492
  br label %for.cond, !dbg !2493, !llvm.loop !2494

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2496

cleanup:                                          ; preds = %for.end, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt) #7, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 1, ptr %ignore_vbps) #7, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %epnt) #7, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #7, !dbg !2497
  %31 = load ptr, ptr %retval, align 8, !dbg !2497
  ret ptr %31, !dbg !2497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @nhlt_check_ep_match(ptr noundef %dev, ptr noundef %epnt, i32 noundef %bus_id, i8 noundef zeroext %link_type, i8 noundef zeroext %dir, i8 noundef zeroext %dev_type) #0 align 16 !dbg !2498 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %epnt.addr = alloca ptr, align 8
  %bus_id.addr = alloca i32, align 4
  %link_type.addr = alloca i8, align 1
  %dir.addr = alloca i8, align 1
  %dev_type.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2502, metadata !DIExpression()), !dbg !2508
  store ptr %epnt, ptr %epnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %epnt.addr, metadata !2503, metadata !DIExpression()), !dbg !2509
  store i32 %bus_id, ptr %bus_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_id.addr, metadata !2504, metadata !DIExpression()), !dbg !2510
  store i8 %link_type, ptr %link_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %link_type.addr, metadata !2505, metadata !DIExpression()), !dbg !2511
  store i8 %dir, ptr %dir.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !2506, metadata !DIExpression()), !dbg !2512
  store i8 %dev_type, ptr %dev_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %dev_type.addr, metadata !2507, metadata !DIExpression()), !dbg !2513
  %0 = load ptr, ptr %epnt.addr, align 8, !dbg !2514
  %virtual_bus_id = getelementptr inbounds %struct.nhlt_endpoint, ptr %0, i32 0, i32 9, !dbg !2516
  %1 = load i8, ptr %virtual_bus_id, align 1, !dbg !2516
  %conv = zext i8 %1 to i32, !dbg !2514
  %2 = load i32, ptr %bus_id.addr, align 4, !dbg !2517
  %cmp = icmp ne i32 %conv, %2, !dbg !2518
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2519

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %epnt.addr, align 8, !dbg !2520
  %linktype = getelementptr inbounds %struct.nhlt_endpoint, ptr %3, i32 0, i32 1, !dbg !2521
  %4 = load i8, ptr %linktype, align 1, !dbg !2521
  %conv2 = zext i8 %4 to i32, !dbg !2520
  %5 = load i8, ptr %link_type.addr, align 1, !dbg !2522
  %conv3 = zext i8 %5 to i32, !dbg !2522
  %cmp4 = icmp ne i32 %conv2, %conv3, !dbg !2523
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !2524

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %epnt.addr, align 8, !dbg !2525
  %direction = getelementptr inbounds %struct.nhlt_endpoint, ptr %6, i32 0, i32 8, !dbg !2526
  %7 = load i8, ptr %direction, align 1, !dbg !2526
  %conv7 = zext i8 %7 to i32, !dbg !2525
  %8 = load i8, ptr %dir.addr, align 1, !dbg !2527
  %conv8 = zext i8 %8 to i32, !dbg !2527
  %cmp9 = icmp ne i32 %conv7, %conv8, !dbg !2528
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2529

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !2530
  br label %return, !dbg !2530

if.end:                                           ; preds = %lor.lhs.false6
  %9 = load ptr, ptr %epnt.addr, align 8, !dbg !2531
  %linktype11 = getelementptr inbounds %struct.nhlt_endpoint, ptr %9, i32 0, i32 1, !dbg !2532
  %10 = load i8, ptr %linktype11, align 1, !dbg !2532
  %conv12 = zext i8 %10 to i32, !dbg !2531
  %cmp13 = icmp eq i32 %conv12, 2, !dbg !2533
  br i1 %cmp13, label %lor.end, label %lor.rhs, !dbg !2534

lor.rhs:                                          ; preds = %if.end
  %11 = load ptr, ptr %epnt.addr, align 8, !dbg !2535
  %device_type = getelementptr inbounds %struct.nhlt_endpoint, ptr %11, i32 0, i32 7, !dbg !2536
  %12 = load i8, ptr %device_type, align 1, !dbg !2536
  %conv15 = zext i8 %12 to i32, !dbg !2535
  %13 = load i8, ptr %dev_type.addr, align 1, !dbg !2537
  %conv16 = zext i8 %13 to i32, !dbg !2537
  %cmp17 = icmp eq i32 %conv15, %conv16, !dbg !2538
  br label %lor.end, !dbg !2534

lor.end:                                          ; preds = %lor.rhs, %if.end
  %14 = phi i1 [ true, %if.end ], [ %cmp17, %lor.rhs ]
  store i1 %14, ptr %retval, align 1, !dbg !2539
  br label %return, !dbg !2539

return:                                           ; preds = %lor.end, %if.then
  %15 = load i1, ptr %retval, align 1, !dbg !2540
  ret i1 %15, !dbg !2540
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nhlt_get_specific_cfg(ptr noundef %dev, ptr noundef %fmt, i8 noundef zeroext %num_ch, i32 noundef %rate, i8 noundef zeroext %vbps, i8 noundef zeroext %bps, i1 noundef zeroext %ignore_vbps) #0 align 16 !dbg !2541 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %num_ch.addr = alloca i8, align 1
  %rate.addr = alloca i32, align 4
  %vbps.addr = alloca i8, align 1
  %bps.addr = alloca i8, align 1
  %ignore_vbps.addr = alloca i8, align 1
  %cfg = alloca ptr, align 8
  %wfmt = alloca ptr, align 8
  %_bps = alloca i16, align 2
  %_vbps = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2545, metadata !DIExpression()), !dbg !2558
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !2546, metadata !DIExpression()), !dbg !2559
  store i8 %num_ch, ptr %num_ch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %num_ch.addr, metadata !2547, metadata !DIExpression()), !dbg !2560
  store i32 %rate, ptr %rate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate.addr, metadata !2548, metadata !DIExpression()), !dbg !2561
  store i8 %vbps, ptr %vbps.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %vbps.addr, metadata !2549, metadata !DIExpression()), !dbg !2562
  store i8 %bps, ptr %bps.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bps.addr, metadata !2550, metadata !DIExpression()), !dbg !2563
  %frombool = zext i1 %ignore_vbps to i8
  store i8 %frombool, ptr %ignore_vbps.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ignore_vbps.addr, metadata !2551, metadata !DIExpression()), !dbg !2564
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #7, !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !2552, metadata !DIExpression()), !dbg !2566
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !2567
  %fmt_config = getelementptr inbounds %struct.nhlt_fmt, ptr %0, i32 0, i32 1, !dbg !2568
  %arraydecay = getelementptr inbounds [0 x %struct.nhlt_fmt_cfg], ptr %fmt_config, i64 0, i64 0, !dbg !2567
  store ptr %arraydecay, ptr %cfg, align 8, !dbg !2566
  call void @llvm.lifetime.start.p0(i64 8, ptr %wfmt) #7, !dbg !2569
  call void @llvm.dbg.declare(metadata ptr %wfmt, metadata !2553, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 2, ptr %_bps) #7, !dbg !2571
  call void @llvm.dbg.declare(metadata ptr %_bps, metadata !2555, metadata !DIExpression()), !dbg !2572
  call void @llvm.lifetime.start.p0(i64 2, ptr %_vbps) #7, !dbg !2571
  call void @llvm.dbg.declare(metadata ptr %_vbps, metadata !2556, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2557, metadata !DIExpression()), !dbg !2575
  store i32 0, ptr %i, align 4, !dbg !2576
  br label %for.cond, !dbg !2578

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2579
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !2581
  %fmt_count = getelementptr inbounds %struct.nhlt_fmt, ptr %2, i32 0, i32 0, !dbg !2582
  %3 = load i8, ptr %fmt_count, align 1, !dbg !2582
  %conv = zext i8 %3 to i32, !dbg !2581
  %cmp = icmp slt i32 %1, %conv, !dbg !2583
  br i1 %cmp, label %for.body, label %for.end, !dbg !2584

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cfg, align 8, !dbg !2585
  %fmt_ext = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %4, i32 0, i32 0, !dbg !2587
  %fmt2 = getelementptr inbounds %struct.wav_fmt_ext, ptr %fmt_ext, i32 0, i32 0, !dbg !2588
  store ptr %fmt2, ptr %wfmt, align 8, !dbg !2589
  %5 = load ptr, ptr %wfmt, align 8, !dbg !2590
  %bits_per_sample = getelementptr inbounds %struct.wav_fmt, ptr %5, i32 0, i32 5, !dbg !2591
  %6 = load i16, ptr %bits_per_sample, align 1, !dbg !2591
  store i16 %6, ptr %_bps, align 2, !dbg !2592
  %7 = load ptr, ptr %cfg, align 8, !dbg !2593
  %fmt_ext3 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %7, i32 0, i32 0, !dbg !2594
  %sample = getelementptr inbounds %struct.wav_fmt_ext, ptr %fmt_ext3, i32 0, i32 1, !dbg !2595
  %8 = load i16, ptr %sample, align 1, !dbg !2596
  store i16 %8, ptr %_vbps, align 2, !dbg !2597
  %9 = load ptr, ptr %wfmt, align 8, !dbg !2598
  %channels = getelementptr inbounds %struct.wav_fmt, ptr %9, i32 0, i32 1, !dbg !2600
  %10 = load i16, ptr %channels, align 1, !dbg !2600
  %conv4 = zext i16 %10 to i32, !dbg !2598
  %11 = load i8, ptr %num_ch.addr, align 1, !dbg !2601
  %conv5 = zext i8 %11 to i32, !dbg !2601
  %cmp6 = icmp eq i32 %conv4, %conv5, !dbg !2602
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !2603

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %wfmt, align 8, !dbg !2604
  %samples_per_sec = getelementptr inbounds %struct.wav_fmt, ptr %12, i32 0, i32 2, !dbg !2605
  %13 = load i32, ptr %samples_per_sec, align 1, !dbg !2605
  %14 = load i32, ptr %rate.addr, align 4, !dbg !2606
  %cmp8 = icmp eq i32 %13, %14, !dbg !2607
  br i1 %cmp8, label %land.lhs.true10, label %if.end, !dbg !2608

land.lhs.true10:                                  ; preds = %land.lhs.true
  %15 = load i8, ptr %ignore_vbps.addr, align 1, !dbg !2609, !range !2477, !noundef !505
  %tobool = trunc i8 %15 to i1, !dbg !2609
  br i1 %tobool, label %land.lhs.true16, label %lor.lhs.false, !dbg !2610

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %16 = load i8, ptr %vbps.addr, align 1, !dbg !2611
  %conv12 = zext i8 %16 to i32, !dbg !2611
  %17 = load i16, ptr %_vbps, align 2, !dbg !2612
  %conv13 = zext i16 %17 to i32, !dbg !2612
  %cmp14 = icmp eq i32 %conv12, %conv13, !dbg !2613
  br i1 %cmp14, label %land.lhs.true16, label %if.end, !dbg !2614

land.lhs.true16:                                  ; preds = %lor.lhs.false, %land.lhs.true10
  %18 = load i8, ptr %bps.addr, align 1, !dbg !2615
  %conv17 = zext i8 %18 to i32, !dbg !2615
  %19 = load i16, ptr %_bps, align 2, !dbg !2616
  %conv18 = zext i16 %19 to i32, !dbg !2616
  %cmp19 = icmp eq i32 %conv17, %conv18, !dbg !2617
  br i1 %cmp19, label %if.then, label %if.end, !dbg !2618

if.then:                                          ; preds = %land.lhs.true16
  %20 = load ptr, ptr %cfg, align 8, !dbg !2619
  %config = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %20, i32 0, i32 1, !dbg !2620
  store ptr %config, ptr %retval, align 8, !dbg !2621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2621

if.end:                                           ; preds = %land.lhs.true16, %lor.lhs.false, %land.lhs.true, %for.body
  %21 = load ptr, ptr %cfg, align 8, !dbg !2622
  %config21 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %21, i32 0, i32 1, !dbg !2623
  %caps = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config21, i32 0, i32 1, !dbg !2624
  %arraydecay22 = getelementptr inbounds [0 x i8], ptr %caps, i64 0, i64 0, !dbg !2622
  %22 = load ptr, ptr %cfg, align 8, !dbg !2625
  %config23 = getelementptr inbounds %struct.nhlt_fmt_cfg, ptr %22, i32 0, i32 1, !dbg !2626
  %size = getelementptr inbounds %struct.nhlt_specific_cfg, ptr %config23, i32 0, i32 0, !dbg !2627
  %23 = load i32, ptr %size, align 1, !dbg !2627
  %idx.ext = zext i32 %23 to i64, !dbg !2628
  %add.ptr = getelementptr i8, ptr %arraydecay22, i64 %idx.ext, !dbg !2628
  store ptr %add.ptr, ptr %cfg, align 8, !dbg !2629
  br label %for.inc, !dbg !2630

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %i, align 4, !dbg !2631
  %inc = add i32 %24, 1, !dbg !2631
  store i32 %inc, ptr %i, align 4, !dbg !2631
  br label %for.cond, !dbg !2632, !llvm.loop !2633

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2635

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 2, ptr %_vbps) #7, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 2, ptr %_bps) #7, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 8, ptr %wfmt) #7, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #7, !dbg !2636
  %25 = load ptr, ptr %retval, align 8, !dbg !2636
  ret ptr %25, !dbg !2636
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #5 align 16 !dbg !2637 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2643, metadata !DIExpression()), !dbg !2646
  %0 = load i64, ptr %w.addr, align 8, !dbg !2647
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !2648, !srcloc !2649
  store i64 %1, ptr %res, align 8, !dbg !2648
  %2 = load i64, ptr %res, align 8, !dbg !2650
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !2651
  ret i64 %2, !dbg !2652
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268, !269, !270}
!llvm.ident = !{!271}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/hda/intel-nhlt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dee4b1a3a25389f8c52affe3e1308625")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 22)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_init206", scope: !14, file: !2, line: 21, type: !157, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.intel-nhlt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-intel-dspcfg\22 -D KBUILD_BASENAME=\22intel_nhlt\22 -D KBUILD_MODNAME=\22snd_intel_dspcfg\22 -D __KBUILD_MODNAME=kmod_snd_intel_dspcfg -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/intel-nhlt.ll sound/hda/intel-nhlt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !126, globals: !234, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !23, !30, !36, !43, !48, !56, !64, !70, !79, !84, !89, !95, !103, !107, !115, !120}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !17, line: 26, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !24, line: 312, baseType: !18, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!27 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!28 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!29 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !31, line: 45, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!34 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!35 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !37, line: 487, baseType: !18, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!40 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!41 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!42 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !44, line: 65, baseType: !18, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!47 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !49, line: 620, baseType: !18, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!52 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!53 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!54 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!55 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !49, line: 597, baseType: !57, size: 32, elements: !58)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!60 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!61 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!62 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!63 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !65, line: 30, baseType: !18, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!68 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!69 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !37, line: 547, baseType: !18, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!74 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!75 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!76 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!78 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !37, line: 564, baseType: !18, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !37, line: 577, baseType: !18, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !37, line: 503, baseType: !18, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!93 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nhlt_link_type", file: !96, line: 13, baseType: !18, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/sound/intel-nhlt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0635b93aeb31ca35b22ea2f52332e8df")
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "NHLT_LINK_HDA", value: 0)
!99 = !DIEnumerator(name: "NHLT_LINK_DSP", value: 1)
!100 = !DIEnumerator(name: "NHLT_LINK_DMIC", value: 2)
!101 = !DIEnumerator(name: "NHLT_LINK_SSP", value: 3)
!102 = !DIEnumerator(name: "NHLT_LINK_INVALID", value: 4)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 113, baseType: !18, size: 32, elements: !104)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "NHLT_CONFIG_TYPE_GENERIC", value: 0)
!106 = !DIEnumerator(name: "NHLT_CONFIG_TYPE_MIC_ARRAY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 118, baseType: !18, size: 32, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DIEnumerator(name: "NHLT_MIC_ARRAY_2CH_SMALL", value: 10)
!110 = !DIEnumerator(name: "NHLT_MIC_ARRAY_2CH_BIG", value: 11)
!111 = !DIEnumerator(name: "NHLT_MIC_ARRAY_4CH_1ST_GEOM", value: 12)
!112 = !DIEnumerator(name: "NHLT_MIC_ARRAY_4CH_L_SHAPED", value: 13)
!113 = !DIEnumerator(name: "NHLT_MIC_ARRAY_4CH_2ND_GEOM", value: 14)
!114 = !DIEnumerator(name: "NHLT_MIC_ARRAY_VENDOR_DEFINED", value: 15)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 10, baseType: !18, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "false", value: 0)
!119 = !DIEnumerator(name: "true", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nhlt_device_type", file: !96, line: 21, baseType: !18, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "NHLT_DEVICE_BT", value: 0)
!123 = !DIEnumerator(name: "NHLT_DEVICE_DMIC", value: 1)
!124 = !DIEnumerator(name: "NHLT_DEVICE_I2S", value: 4)
!125 = !DIEnumerator(name: "NHLT_DEVICE_INVALID", value: 5)
!126 = !{!127, !157, !128, !158, !167, !210, !211, !216, !230, !231, !57, !232, !18}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !130, line: 68, size: 288, elements: !131)
!130 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!131 = !{!132, !136, !141, !145, !146, !150, !154, !155, !156}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !129, file: !130, line: 69, baseType: !133, size: 32)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !130, line: 70, baseType: !137, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !138, line: 21, baseType: !139)
!138 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !140, line: 27, baseType: !18)
!140 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!141 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !129, file: !130, line: 71, baseType: !142, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !138, line: 17, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !140, line: 21, baseType: !144)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !129, file: !130, line: 72, baseType: !142, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !129, file: !130, line: 73, baseType: !147, size: 48, offset: 80)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 6)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !129, file: !130, line: 74, baseType: !151, size: 64, offset: 128)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !129, file: !130, line: 75, baseType: !137, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !129, file: !130, line: 76, baseType: !133, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !129, file: !130, line: 77, baseType: !137, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_dmic_array_config", file: !96, line: 102, size: 24, elements: !160)
!160 = !{!161, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !159, file: !96, line: 103, baseType: !162, size: 16)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_device_specific_config", file: !96, line: 97, size: 16, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_slot", scope: !162, file: !96, line: 98, baseType: !142, size: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "config_type", scope: !162, file: !96, line: 99, baseType: !142, size: 8, offset: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "array_type", scope: !159, file: !96, line: 104, baseType: !142, size: 8, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_fmt", file: !96, line: 59, size: 8, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_count", scope: !168, file: !96, line: 60, baseType: !142, size: 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_config", scope: !168, file: !96, line: 61, baseType: !172, offset: 8)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, elements: !208)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_fmt_cfg", file: !96, line: 54, size: 352, elements: !174)
!174 = !{!175, !202}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_ext", scope: !173, file: !96, line: 55, baseType: !176, size: 320)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wav_fmt_ext", file: !96, line: 38, size: 320, elements: !177)
!177 = !{!178, !191, !197, !198}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !176, file: !96, line: 39, baseType: !179, size: 144)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wav_fmt", file: !96, line: 28, size: 144, elements: !180)
!180 = !{!181, !185, !186, !187, !188, !189, !190}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_tag", scope: !179, file: !96, line: 29, baseType: !182, size: 16)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !138, line: 19, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !140, line: 24, baseType: !184)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !179, file: !96, line: 30, baseType: !182, size: 16, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "samples_per_sec", scope: !179, file: !96, line: 31, baseType: !137, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "avg_bytes_per_sec", scope: !179, file: !96, line: 32, baseType: !137, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "block_align", scope: !179, file: !96, line: 33, baseType: !182, size: 16, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_sample", scope: !179, file: !96, line: 34, baseType: !182, size: 16, offset: 112)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cb_size", scope: !179, file: !96, line: 35, baseType: !182, size: 16, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sample", scope: !176, file: !96, line: 44, baseType: !192, size: 16, offset: 144)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "samples", file: !96, line: 40, size: 16, elements: !193)
!193 = !{!194, !195, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "valid_bits_per_sample", scope: !192, file: !96, line: 41, baseType: !182, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "samples_per_block", scope: !192, file: !96, line: 42, baseType: !182, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !192, file: !96, line: 43, baseType: !182, size: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mask", scope: !176, file: !96, line: 45, baseType: !137, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sub_fmt", scope: !176, file: !96, line: 46, baseType: !199, size: 128, offset: 192)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 16)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !173, file: !96, line: 56, baseType: !203, size: 32, offset: 320)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_specific_cfg", file: !96, line: 49, size: 32, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !96, line: 50, baseType: !137, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !203, file: !96, line: 51, baseType: !207, offset: 32)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: -1)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_vendor_dmic_array_config", file: !96, line: 107, size: 32, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dmic_config", scope: !212, file: !96, line: 108, baseType: !159, size: 24)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "nb_mics", scope: !212, file: !96, line: 109, baseType: !142, size: 8, offset: 24)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_endpoint", file: !96, line: 64, size: 184, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !217, file: !96, line: 65, baseType: !137, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "linktype", scope: !217, file: !96, line: 66, baseType: !142, size: 8, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "instance_id", scope: !217, file: !96, line: 67, baseType: !142, size: 8, offset: 40)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !217, file: !96, line: 68, baseType: !182, size: 16, offset: 48)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !217, file: !96, line: 69, baseType: !182, size: 16, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !217, file: !96, line: 70, baseType: !182, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !217, file: !96, line: 71, baseType: !137, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !217, file: !96, line: 72, baseType: !142, size: 8, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !217, file: !96, line: 73, baseType: !142, size: 8, offset: 136)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_bus_id", scope: !217, file: !96, line: 74, baseType: !142, size: 8, offset: 144)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !217, file: !96, line: 75, baseType: !203, size: 32, offset: 152)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !140, line: 31, baseType: !233)
!233 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!0, !7, !12, !235, !237, !242, !247, !253, !255, !257, !259, !261}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_free207", scope: !14, file: !2, line: 27, type: !157, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 32)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 37)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!251 = !{!252}
!252 = !DISubrange(count: 24)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_get_dmic_geo208", scope: !14, file: !2, line: 117, type: !157, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_has_endpoint_type209", scope: !14, file: !2, line: 136, type: !157, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_ssp_endpoint_mask210", scope: !14, file: !2, line: 158, type: !157, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_ssp_mclk_mask211", scope: !14, file: !2, line: 237, type: !157, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_nhlt_get_endpoint_blob212", scope: !14, file: !2, line: 345, type: !157, isLocal: true, isDefinition: true)
!263 = !{i32 7, !"Dwarf Version", i32 5}
!264 = !{i32 2, !"Debug Info Version", i32 3}
!265 = !{i32 1, !"wchar_size", i32 2}
!266 = !{i32 8, !"cf-protection-branch", i32 1}
!267 = !{i32 4, !"function_return_thunk_extern", i32 1}
!268 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!269 = !{i32 1, !"Code Model", i32 2}
!270 = !{i32 1, !"override-stack-alignment", i32 8}
!271 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!272 = distinct !DISubprogram(name: "intel_nhlt_init", scope: !2, file: !2, line: 7, type: !273, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1852)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !282}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nhlt_acpi_table", file: !96, line: 78, size: 296, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !276, file: !96, line: 79, baseType: !129, size: 288)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_count", scope: !276, file: !96, line: 80, baseType: !142, size: 8, offset: 288)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !276, file: !96, line: 81, baseType: !281, offset: 296)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !208)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !37, line: 705, size: 5824, elements: !284)
!284 = !{!285, !938, !939, !942, !943, !996, !1457, !1458, !1459, !1460, !1461, !1468, !1636, !1649, !1659, !1663, !1665, !1666, !1667, !1671, !1678, !1679, !1682, !1685, !1689, !1792, !1793, !1796, !1797, !1798, !1799, !1829, !1830, !1831, !1834, !1837, !1846, !1847, !1848, !1849, !1850, !1851}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !37, line: 706, baseType: !286, size: 512)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !287, line: 64, size: 512, elements: !288)
!287 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!288 = !{!289, !291, !298, !300, !381, !808, !923, !933, !934, !935, !936, !937}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 65, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !286, file: !287, line: 66, baseType: !292, size: 128, offset: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !293, line: 190, size: 128, elements: !294)
!293 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!294 = !{!295, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !293, line: 191, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !292, file: !293, line: 191, baseType: !296, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !287, line: 67, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !286, file: !287, line: 68, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !287, line: 168, size: 768, elements: !303)
!303 = !{!304, !305, !340, !341}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !302, file: !287, line: 169, baseType: !292, size: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !302, file: !287, line: 170, baseType: !306, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !307, line: 29, baseType: !308)
!307 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !307, line: 17, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !307, line: 18, baseType: !311, size: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !307, line: 18, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !311, file: !307, line: 19, baseType: !314, size: 32)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !315, line: 14, size: 32, elements: !316)
!315 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !314, file: !315, line: 15, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !319, line: 44, baseType: !320)
!319 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !319, line: 14, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !319, line: 15, baseType: !323, size: 32)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !319, line: 15, size: 32, elements: !324)
!324 = !{!325, !330, !335}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !323, file: !319, line: 16, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !293, line: 174, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 172, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !327, file: !293, line: 173, baseType: !57, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !319, line: 24, baseType: !331, size: 16)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !319, line: 24, size: 16, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !331, file: !319, line: 25, baseType: !142, size: 8)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !331, file: !319, line: 26, baseType: !142, size: 8, offset: 8)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !319, line: 28, baseType: !336, size: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !319, line: 28, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !336, file: !319, line: 29, baseType: !182, size: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !336, file: !319, line: 30, baseType: !182, size: 16, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !302, file: !287, line: 171, baseType: !286, size: 512, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !302, file: !287, line: 172, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !287, line: 133, size: 192, elements: !345)
!345 = !{!346, !353, !358}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !344, file: !287, line: 134, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!57, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !287, line: 135, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!290, !351}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !344, file: !287, line: 136, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!57, !351, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !287, line: 125, size: 20736, elements: !365)
!365 = !{!366, !371, !375, !376, !380}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !364, file: !287, line: 126, baseType: !367, size: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !369)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!369 = !{!370}
!370 = !DISubrange(count: 3)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !364, file: !287, line: 127, baseType: !372, size: 4096, offset: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 4096, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !364, file: !287, line: 128, baseType: !57, size: 32, offset: 4288)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !364, file: !287, line: 129, baseType: !377, size: 16384, offset: 4320)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 2048)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !364, file: !287, line: 130, baseType: !57, size: 32, offset: 20704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !286, file: !287, line: 69, baseType: !382, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !287, line: 116, size: 384, elements: !385)
!385 = !{!386, !390, !419, !754, !785, !789}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !384, file: !287, line: 117, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !299}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !384, file: !287, line: 118, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !394, line: 254, size: 128, elements: !395)
!394 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!395 = !{!396, !411}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !393, file: !394, line: 255, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!400, !299, !405, !368}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !293, line: 66, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !402, line: 73, baseType: !403)
!402 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !402, line: 15, baseType: !404)
!404 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !394, line: 30, size: 128, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !394, line: 31, baseType: !290, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !406, file: !394, line: 32, baseType: !410, size: 16, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !293, line: 24, baseType: !184)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !393, file: !394, line: 256, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!400, !299, !405, !290, !415}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !293, line: 61, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !402, line: 72, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !402, line: 16, baseType: !418)
!418 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !384, file: !287, line: 119, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !394, line: 84, size: 320, elements: !424)
!424 = !{!425, !426, !430, !750, !752}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !423, file: !394, line: 85, baseType: !290, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !423, file: !394, line: 86, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!410, !299, !405, !57}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !423, file: !394, line: 88, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!410, !299, !434, !57}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !394, line: 175, size: 512, elements: !436)
!436 = !{!437, !438, !439, !440, !447, !457, !458}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !435, file: !394, line: 176, baseType: !406, size: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !435, file: !394, line: 177, baseType: !415, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !435, file: !394, line: 178, baseType: !157, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !435, file: !394, line: 179, baseType: !441, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !446, line: 351, flags: DIFlagFwdDecl)
!446 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !435, file: !394, line: 180, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!400, !451, !299, !434, !368, !454, !415}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !453, line: 537, flags: DIFlagFwdDecl)
!453 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !293, line: 52, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !402, line: 88, baseType: !456)
!456 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !435, file: !394, line: 182, baseType: !448, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !435, file: !394, line: 184, baseType: !459, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!57, !451, !299, !434, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !464, line: 625, size: 1344, elements: !465)
!464 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!465 = !{!466, !483, !699, !705, !712, !713, !718, !721, !733, !734, !737, !741, !742, !743, !744, !745, !748}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !464, line: 628, baseType: !467, size: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !464, line: 628, size: 128, elements: !468)
!468 = !{!469, !474}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !464, line: 629, baseType: !470, size: 128)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !464, line: 629, size: 128, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !470, file: !464, line: 631, baseType: !418, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !470, file: !464, line: 632, baseType: !418, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !467, file: !464, line: 635, baseType: !475, size: 128, align: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !293, line: 232, size: 128, align: 64, elements: !476)
!476 = !{!477, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !293, line: 233, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !475, file: !293, line: 234, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !478}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !463, file: !464, line: 639, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !464, line: 733, size: 10240, elements: !486)
!486 = !{!487, !697}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !464, line: 734, baseType: !488, size: 10240)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !464, line: 734, size: 10240, elements: !489)
!489 = !{!490, !494, !508, !512, !513, !514, !515, !516, !517, !525, !526, !527, !534, !535, !544, !545, !546, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !593, !605, !608, !663, !664, !665, !668, !671, !672, !675, !676, !677, !684, !685}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !464, line: 739, baseType: !491, size: 512, align: 512)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !464, line: 739, size: 512, align: 512, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !491, file: !464, line: 747, baseType: !326, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !488, file: !464, line: 750, baseType: !495, size: 128, offset: 512)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !496, line: 218, size: 128, elements: !497)
!496 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!497 = !{!498, !506, !507}
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !496, line: 219, baseType: !499, size: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !496, line: 219, size: 32, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !499, file: !496, line: 220, baseType: !306, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !499, file: !496, line: 221, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !496, line: 197, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 197, elements: !505)
!505 = !{}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !495, file: !496, line: 223, baseType: !18, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !495, file: !496, line: 224, baseType: !157, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !488, file: !464, line: 752, baseType: !509, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!418, !451, !418, !418, !418, !418}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !488, file: !464, line: 756, baseType: !418, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !488, file: !464, line: 757, baseType: !418, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !488, file: !464, line: 760, baseType: !418, size: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !488, file: !464, line: 761, baseType: !418, size: 64, offset: 896)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !488, file: !464, line: 763, baseType: !418, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !488, file: !464, line: 764, baseType: !518, size: 64, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !453, line: 299, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 299, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !520, file: !453, line: 299, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !524, line: 18, baseType: !418)
!524 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !488, file: !464, line: 773, baseType: !326, size: 32, offset: 1088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !488, file: !464, line: 785, baseType: !326, size: 32, offset: 1120)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !488, file: !464, line: 795, baseType: !528, size: 64, offset: 1152)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !464, line: 726, size: 128, elements: !530)
!530 = !{!531, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !529, file: !464, line: 727, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !138, line: 23, baseType: !232)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !529, file: !464, line: 728, baseType: !57, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !488, file: !464, line: 801, baseType: !418, size: 64, offset: 1216)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !488, file: !464, line: 804, baseType: !536, size: 64, offset: 1280)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !537, line: 13, baseType: !538)
!537 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !293, line: 181, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 179, size: 64, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !539, file: !293, line: 180, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !138, line: 22, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !140, line: 30, baseType: !456)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !488, file: !464, line: 806, baseType: !57, size: 32, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !488, file: !464, line: 808, baseType: !306, size: 32, offset: 1376)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !488, file: !464, line: 823, baseType: !547, size: 320, offset: 1408)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !548, line: 48, size: 320, elements: !549)
!548 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!549 = !{!550, !551, !552, !557, !559}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !548, line: 49, baseType: !536, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !547, file: !548, line: 55, baseType: !536, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !547, file: !548, line: 57, baseType: !553, size: 32, offset: 128)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !554, line: 15, size: 32, elements: !555)
!554 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !553, file: !554, line: 20, baseType: !326, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !547, file: !548, line: 59, baseType: !558, size: 32, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !315, line: 23, baseType: !314)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !547, file: !548, line: 60, baseType: !292, size: 128, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !488, file: !464, line: 825, baseType: !292, size: 128, offset: 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !488, file: !464, line: 845, baseType: !57, size: 32, offset: 1856)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !488, file: !464, line: 849, baseType: !418, size: 64, offset: 1920)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !488, file: !464, line: 850, baseType: !418, size: 64, offset: 1984)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !488, file: !464, line: 852, baseType: !418, size: 64, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !488, file: !464, line: 853, baseType: !418, size: 64, offset: 2112)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !488, file: !464, line: 854, baseType: !538, size: 64, offset: 2176)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !488, file: !464, line: 855, baseType: !418, size: 64, offset: 2240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !488, file: !464, line: 856, baseType: !418, size: 64, offset: 2304)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !488, file: !464, line: 857, baseType: !418, size: 64, offset: 2368)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !488, file: !464, line: 858, baseType: !418, size: 64, offset: 2432)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !488, file: !464, line: 865, baseType: !572, size: 32, offset: 2496)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !573, line: 69, baseType: !574)
!573 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !573, line: 64, size: 32, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !574, file: !573, line: 65, baseType: !18, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !488, file: !464, line: 867, baseType: !306, size: 32, offset: 2528)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !488, file: !464, line: 869, baseType: !418, size: 64, offset: 2560)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !488, file: !464, line: 869, baseType: !418, size: 64, offset: 2624)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !488, file: !464, line: 869, baseType: !418, size: 64, offset: 2688)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !488, file: !464, line: 869, baseType: !418, size: 64, offset: 2752)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !488, file: !464, line: 870, baseType: !418, size: 64, offset: 2816)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !488, file: !464, line: 870, baseType: !418, size: 64, offset: 2880)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !488, file: !464, line: 870, baseType: !418, size: 64, offset: 2944)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !488, file: !464, line: 871, baseType: !418, size: 64, offset: 3008)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !488, file: !464, line: 871, baseType: !418, size: 64, offset: 3072)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !488, file: !464, line: 871, baseType: !418, size: 64, offset: 3136)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !488, file: !464, line: 871, baseType: !418, size: 64, offset: 3200)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !488, file: !464, line: 873, baseType: !590, size: 3328, offset: 3264)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 3328, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 52)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !488, file: !464, line: 875, baseType: !594, size: 1280, offset: 6592)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 1280, elements: !134)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !596, line: 22, size: 320, elements: !597)
!596 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !595, file: !596, line: 23, baseType: !558, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !595, file: !596, line: 24, baseType: !542, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !595, file: !596, line: 26, baseType: !292, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !595, file: !596, line: 28, baseType: !602, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !138, line: 20, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !140, line: 26, baseType: !57)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !488, file: !464, line: 877, baseType: !606, size: 64, offset: 7872)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !464, line: 877, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !488, file: !464, line: 880, baseType: !609, size: 1088, offset: 7936)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !610, line: 72, baseType: !611)
!610 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 23, size: 1088, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !620, !621, !629, !630, !657, !658, !659}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !611, file: !610, line: 28, baseType: !532, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !611, file: !610, line: 38, baseType: !538, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !611, file: !610, line: 40, baseType: !418, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !611, file: !610, line: 43, baseType: !547, size: 320, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !611, file: !610, line: 44, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !610, line: 44, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !610, line: 48, baseType: !418, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !611, file: !610, line: 59, baseType: !622, size: 256, offset: 640)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !623, line: 66, size: 256, elements: !624)
!623 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!624 = !{!625, !626, !627, !628}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !622, file: !623, line: 67, baseType: !536, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !622, file: !623, line: 68, baseType: !558, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !622, file: !623, line: 70, baseType: !553, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !622, file: !623, line: 72, baseType: !292, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !611, file: !610, line: 60, baseType: !157, size: 64, offset: 896)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !611, file: !610, line: 61, baseType: !631, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !634, line: 13, size: 1216, elements: !635)
!634 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!635 = !{!636, !637, !638, !639, !640, !641, !642, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !633, file: !634, line: 14, baseType: !157, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !633, file: !634, line: 15, baseType: !418, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !633, file: !634, line: 17, baseType: !418, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !633, file: !634, line: 17, baseType: !418, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !633, file: !634, line: 18, baseType: !418, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !633, file: !634, line: 18, baseType: !418, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !633, file: !634, line: 19, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !633, file: !634, line: 21, baseType: !404, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !633, file: !634, line: 23, baseType: !404, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !633, file: !634, line: 24, baseType: !404, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !633, file: !634, line: 25, baseType: !404, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !633, file: !634, line: 26, baseType: !404, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !633, file: !634, line: 27, baseType: !404, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !633, file: !634, line: 28, baseType: !404, size: 64, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !633, file: !634, line: 29, baseType: !404, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !633, file: !634, line: 30, baseType: !404, size: 64, offset: 960)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !633, file: !634, line: 31, baseType: !404, size: 64, offset: 1024)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !633, file: !634, line: 32, baseType: !404, size: 64, offset: 1088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !633, file: !634, line: 33, baseType: !404, size: 64, offset: 1152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !611, file: !610, line: 63, baseType: !326, size: 32, offset: 1024)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !611, file: !610, line: 69, baseType: !182, size: 16, offset: 1056)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !611, file: !610, line: 70, baseType: !660, size: 16, offset: 1072)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !138, line: 18, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !140, line: 23, baseType: !662)
!662 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !464, line: 882, baseType: !418, size: 64, offset: 9024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !488, file: !464, line: 885, baseType: !306, size: 32, offset: 9088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !488, file: !464, line: 886, baseType: !666, size: 64, offset: 9152)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !464, line: 732, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !488, file: !464, line: 901, baseType: !669, size: 64, offset: 9216)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !464, line: 901, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !488, file: !464, line: 904, baseType: !451, size: 64, offset: 9280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !488, file: !464, line: 906, baseType: !673, size: 64, offset: 9344)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !464, line: 906, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !488, file: !464, line: 930, baseType: !326, size: 32, offset: 9408)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !488, file: !464, line: 933, baseType: !326, size: 32, offset: 9440)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !488, file: !464, line: 935, baseType: !678, size: 64, offset: 9472)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !679, line: 103, size: 64, elements: !680)
!679 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !678, file: !679, line: 104, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !679, line: 101, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !488, file: !464, line: 940, baseType: !536, size: 64, offset: 9536)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !488, file: !464, line: 942, baseType: !686, size: 256, offset: 9600)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !687, line: 98, size: 256, elements: !688)
!687 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!688 = !{!689, !690, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !686, file: !687, line: 99, baseType: !536, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !686, file: !687, line: 100, baseType: !292, size: 128, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !686, file: !687, line: 101, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !687, line: 21, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !485, file: !464, line: 986, baseType: !698, offset: 10240)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !208)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !463, file: !464, line: 640, baseType: !700, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !453, line: 297, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !453, line: 297, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !701, file: !453, line: 297, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !524, line: 19, baseType: !418)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !464, line: 646, baseType: !706, size: 64, offset: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !464, line: 646, size: 64, elements: !707)
!707 = !{!708, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !706, file: !464, line: 647, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !464, line: 542, baseType: !418)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !706, file: !464, line: 648, baseType: !710, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !463, file: !464, line: 666, baseType: !57, size: 32, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !463, file: !464, line: 667, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !464, line: 579, size: 320, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !464, line: 580, baseType: !547, size: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !463, file: !464, line: 670, baseType: !719, size: 8, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !293, line: 35, baseType: !720)
!720 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !463, file: !464, line: 681, baseType: !722, size: 256, offset: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !464, line: 678, size: 256, elements: !723)
!723 = !{!724, !732}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !722, file: !464, line: 679, baseType: !725, size: 192, align: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !726, line: 5, size: 192, align: 64, elements: !727)
!726 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!727 = !{!728, !729, !731}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !725, file: !726, line: 6, baseType: !418, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !725, file: !726, line: 7, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !725, file: !726, line: 8, baseType: !730, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !722, file: !464, line: 680, baseType: !418, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !463, file: !464, line: 689, baseType: !292, size: 128, offset: 768)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !463, file: !464, line: 691, baseType: !735, size: 64, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !464, line: 691, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !463, file: !464, line: 694, baseType: !738, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !464, line: 694, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !463, file: !464, line: 697, baseType: !418, size: 64, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !463, file: !464, line: 699, baseType: !451, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !463, file: !464, line: 700, baseType: !157, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !463, file: !464, line: 711, baseType: !536, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !463, file: !464, line: 717, baseType: !746, size: 64, offset: 1280)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !464, line: 717, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !463, file: !464, line: 722, baseType: !749, offset: 1344)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !464, line: 570, elements: !505)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !423, file: !394, line: 90, baseType: !751, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !423, file: !394, line: 91, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !384, file: !287, line: 120, baseType: !755, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !351}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !17, line: 39, size: 384, elements: !761)
!761 = !{!762, !763, !767, !771, !777, !781}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !17, line: 40, baseType: !16, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !760, file: !17, line: 41, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!719}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !760, file: !17, line: 42, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!157}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !760, file: !17, line: 43, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!643, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !17, line: 19, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !760, file: !17, line: 44, baseType: !778, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!643}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !760, file: !17, line: 45, baseType: !782, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !157}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !384, file: !287, line: 121, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!643, !351}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !384, file: !287, line: 122, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !351, !793, !801}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !795, line: 23, baseType: !796)
!795 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !795, line: 21, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !796, file: !795, line: 22, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !293, line: 37, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !402, line: 49, baseType: !18)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !795, line: 28, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !795, line: 26, size: 32, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !803, file: !795, line: 27, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !293, line: 38, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !402, line: 50, baseType: !18)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !286, file: !287, line: 70, baseType: !809, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !811, line: 190, size: 1152, elements: !812)
!811 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !915, !916, !917, !918, !919, !922}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !811, line: 191, baseType: !326, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !810, file: !811, line: 192, baseType: !326, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !810, file: !811, line: 202, baseType: !809, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !810, file: !811, line: 203, baseType: !290, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !810, file: !811, line: 205, baseType: !725, size: 192, align: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !810, file: !811, line: 207, baseType: !643, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !810, file: !811, line: 208, baseType: !18, size: 32, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !810, file: !811, line: 209, baseType: !821, size: 256, offset: 512)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !810, file: !811, line: 209, size: 256, elements: !822)
!822 = !{!823, !835, !839}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !821, file: !811, line: 210, baseType: !824, size: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !811, line: 153, size: 256, elements: !825)
!825 = !{!826, !827, !831, !834}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !824, file: !811, line: 154, baseType: !418, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !824, file: !811, line: 156, baseType: !828, size: 64, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !726, line: 12, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !828, file: !726, line: 13, baseType: !730, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !824, file: !811, line: 162, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !811, line: 162, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !824, file: !811, line: 167, baseType: !418, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !821, file: !811, line: 211, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !811, line: 170, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !836, file: !811, line: 171, baseType: !809, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !821, file: !811, line: 212, baseType: !840, size: 256)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !811, line: 174, size: 256, elements: !841)
!841 = !{!842, !910, !913, !914}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !840, file: !811, line: 175, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !811, line: 271, size: 768, elements: !846)
!846 = !{!847, !870, !874, !878, !883, !887, !891, !895, !896, !897, !898, !906}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !845, file: !811, line: 276, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!57, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !811, line: 251, size: 1216, elements: !853)
!853 = !{!854, !855, !856, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !852, file: !811, line: 253, baseType: !809, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !852, file: !811, line: 254, baseType: !451, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !852, file: !811, line: 255, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !859, line: 66, flags: DIFlagFwdDecl)
!859 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !852, file: !811, line: 256, baseType: !157, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !852, file: !811, line: 259, baseType: !622, size: 256, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !852, file: !811, line: 260, baseType: !622, size: 256, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !852, file: !811, line: 261, baseType: !57, size: 32, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !852, file: !811, line: 262, baseType: !292, size: 128, offset: 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !852, file: !811, line: 263, baseType: !368, size: 64, offset: 960)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !852, file: !811, line: 265, baseType: !415, size: 64, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !852, file: !811, line: 266, baseType: !719, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !852, file: !811, line: 267, baseType: !719, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !852, file: !811, line: 268, baseType: !738, size: 64, offset: 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !845, file: !811, line: 277, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !851}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !845, file: !811, line: 290, baseType: !875, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!57, !857, !157}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !845, file: !811, line: 292, baseType: !879, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!157, !857, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !845, file: !811, line: 293, baseType: !884, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!157, !857, !157, !882}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !845, file: !811, line: 294, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !857, !157}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !845, file: !811, line: 296, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!400, !851, !368, !415, !454}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !845, file: !811, line: 306, baseType: !415, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !845, file: !811, line: 313, baseType: !719, size: 8, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !845, file: !811, line: 314, baseType: !892, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !845, file: !811, line: 317, baseType: !899, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!902, !851, !904}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !903, line: 59, baseType: !18)
!903 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !811, line: 31, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !845, file: !811, line: 320, baseType: !907, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!57, !851, !462}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !840, file: !811, line: 176, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !811, line: 35, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !840, file: !811, line: 177, baseType: !454, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !840, file: !811, line: 178, baseType: !809, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !810, file: !811, line: 215, baseType: !157, size: 64, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !810, file: !811, line: 221, baseType: !532, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !810, file: !811, line: 223, baseType: !184, size: 16, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !810, file: !811, line: 224, baseType: !410, size: 16, offset: 912)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !810, file: !811, line: 225, baseType: !920, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !811, line: 36, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !810, file: !811, line: 227, baseType: !475, size: 128, align: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !286, file: !287, line: 71, baseType: !924, size: 32, offset: 448)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !925, line: 19, size: 32, elements: !926)
!925 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !924, file: !925, line: 20, baseType: !928, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !929, line: 113, baseType: !930)
!929 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !929, line: 111, size: 32, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !930, file: !929, line: 112, baseType: !326, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !286, file: !287, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !286, file: !287, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !286, file: !287, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !286, file: !287, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !286, file: !287, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !37, line: 707, baseType: !282, size: 64, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !283, file: !37, line: 709, baseType: !940, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !37, line: 37, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !283, file: !37, line: 711, baseType: !290, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !37, line: 712, baseType: !944, size: 64, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !37, line: 89, size: 384, elements: !947)
!947 = !{!948, !949, !950, !956, !961, !965}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !946, file: !37, line: 90, baseType: !290, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !946, file: !37, line: 91, baseType: !420, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !946, file: !37, line: 92, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!57, !954, !363}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !946, file: !37, line: 93, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!368, !954, !960, !793, !801}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !946, file: !37, line: 95, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !282}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !946, file: !37, line: 97, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !49, line: 286, size: 1472, elements: !969)
!969 = !{!970, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !968, file: !49, line: 287, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!57, !282}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !968, file: !49, line: 288, baseType: !962, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !968, file: !49, line: 289, baseType: !971, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !968, file: !49, line: 290, baseType: !971, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !968, file: !49, line: 291, baseType: !971, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !968, file: !49, line: 292, baseType: !971, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !968, file: !49, line: 293, baseType: !971, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !968, file: !49, line: 294, baseType: !971, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !968, file: !49, line: 295, baseType: !971, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !968, file: !49, line: 296, baseType: !971, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !968, file: !49, line: 297, baseType: !971, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !968, file: !49, line: 298, baseType: !971, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !968, file: !49, line: 299, baseType: !971, size: 64, offset: 768)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !968, file: !49, line: 300, baseType: !971, size: 64, offset: 832)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !968, file: !49, line: 301, baseType: !971, size: 64, offset: 896)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !968, file: !49, line: 302, baseType: !971, size: 64, offset: 960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !968, file: !49, line: 303, baseType: !971, size: 64, offset: 1024)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !968, file: !49, line: 304, baseType: !971, size: 64, offset: 1088)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !968, file: !49, line: 305, baseType: !971, size: 64, offset: 1152)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !968, file: !49, line: 306, baseType: !971, size: 64, offset: 1216)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !968, file: !49, line: 307, baseType: !971, size: 64, offset: 1280)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !968, file: !49, line: 308, baseType: !971, size: 64, offset: 1344)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !968, file: !49, line: 309, baseType: !971, size: 64, offset: 1408)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !283, file: !37, line: 714, baseType: !997, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1000, line: 80, size: 1344, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1456}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !999, file: !1000, line: 81, baseType: !290, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !999, file: !1000, line: 82, baseType: !290, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !999, file: !1000, line: 83, baseType: !420, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !999, file: !1000, line: 84, baseType: !420, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !999, file: !1000, line: 85, baseType: !420, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !999, file: !1000, line: 87, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!57, !282, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !31, line: 96, size: 1152, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1392, !1393, !1394, !1395, !1408, !1419, !1420, !1421, !1422, !1423, !1431, !1432, !1433, !1434, !1435, !1436}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1012, file: !31, line: 97, baseType: !290, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1012, file: !31, line: 98, baseType: !997, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1012, file: !31, line: 100, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !24, line: 402, size: 9216, align: 512, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1026, !1047, !1073, !1074, !1075, !1076, !1080, !1083, !1084, !1085, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1148, !1152, !1172, !1190, !1191, !1192, !1193, !1202, !1225, !1226, !1229, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1243, !1244, !1350, !1358, !1359, !1360, !1362, !1366, !1367, !1371, !1372, !1373, !1374, !1376, !1377, !1378, !1385, !1386, !1387, !1391}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1018, file: !24, line: 403, baseType: !23, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1018, file: !24, line: 406, baseType: !292, size: 128, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1018, file: !24, line: 409, baseType: !1023, size: 448, offset: 192)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 56)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1018, file: !24, line: 417, baseType: !1027, size: 768, offset: 640)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !24, line: 45, size: 768, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1027, file: !24, line: 46, baseType: !286, size: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1027, file: !24, line: 47, baseType: !1017, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1027, file: !24, line: 48, baseType: !299, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1027, file: !24, line: 49, baseType: !1033, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !24, line: 49, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1027, file: !24, line: 50, baseType: !1036, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1038, line: 26, size: 256, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1037, file: !1038, line: 27, baseType: !18, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1037, file: !1038, line: 28, baseType: !1042, size: 192, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1043, line: 43, size: 192, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1042, file: !1043, line: 44, baseType: !558, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1042, file: !1043, line: 45, baseType: !292, size: 128, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1018, file: !24, line: 418, baseType: !1048, size: 64, offset: 1408)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !24, line: 53, size: 448, elements: !1050)
!1050 = !{!1051, !1052, !1057, !1061, !1065, !1069}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1049, file: !24, line: 54, baseType: !406, size: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1049, file: !24, line: 55, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!400, !1048, !1056, !368}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1049, file: !24, line: 57, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!400, !1048, !1056, !290, !415}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1049, file: !24, line: 59, baseType: !1062, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1017, !290}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1049, file: !24, line: 60, baseType: !1066, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!57, !1017}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1049, file: !24, line: 61, baseType: !1070, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1017}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1018, file: !24, line: 419, baseType: !290, size: 64, offset: 1472)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1018, file: !24, line: 420, baseType: !290, size: 64, offset: 1536)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1018, file: !24, line: 421, baseType: !299, size: 64, offset: 1600)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1018, file: !24, line: 424, baseType: !1077, size: 64, offset: 1664)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !24, line: 424, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1018, file: !24, line: 425, baseType: !1081, size: 64, offset: 1728)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1018, file: !24, line: 426, baseType: !18, size: 32, offset: 1792)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1018, file: !24, line: 435, baseType: !622, size: 256, offset: 1856)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1018, file: !24, line: 437, baseType: !1086, size: 64, offset: 2112)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1088, line: 69, size: 320, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1089 = !{!1090, !1091, !1092, !1109, !1111, !1115, !1116}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1087, file: !1088, line: 70, baseType: !290, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1087, file: !1088, line: 71, baseType: !1017, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1087, file: !1088, line: 72, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1088, line: 47, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1104, !1108}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1088, line: 49, baseType: !18, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1095, file: !1088, line: 51, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!57, !290, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1095, file: !1088, line: 53, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!57, !368, !1102}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1095, file: !1088, line: 55, baseType: !782, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1087, file: !1088, line: 73, baseType: !1110, size: 16, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1087, file: !1088, line: 74, baseType: !1112, size: 8, offset: 208)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !138, line: 16, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !140, line: 20, baseType: !1114)
!1114 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1088, line: 75, baseType: !142, size: 8, offset: 216)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1088, line: 76, baseType: !1117, size: 64, offset: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1088, line: 76, size: 64, elements: !1118)
!1118 = !{!1119, !1120, !1127}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1117, file: !1088, line: 77, baseType: !157, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1117, file: !1088, line: 78, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1088, line: 86, size: 128, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1123, file: !1088, line: 87, baseType: !18, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1123, file: !1088, line: 88, baseType: !368, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1117, file: !1088, line: 79, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1088, line: 92, size: 256, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1136, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1130, file: !1088, line: 94, baseType: !18, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1130, file: !1088, line: 95, baseType: !18, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1130, file: !1088, line: 96, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1130, file: !1088, line: 97, baseType: !1093, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1130, file: !1088, line: 98, baseType: !157, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1018, file: !24, line: 438, baseType: !18, size: 32, offset: 2176)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1018, file: !24, line: 441, baseType: !18, size: 32, offset: 2208)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1018, file: !24, line: 442, baseType: !1077, size: 64, offset: 2240)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1018, file: !24, line: 443, baseType: !1081, size: 64, offset: 2304)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1018, file: !24, line: 444, baseType: !719, size: 8, offset: 2368)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1018, file: !24, line: 451, baseType: !719, size: 8, offset: 2376)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1018, file: !24, line: 454, baseType: !18, size: 32, offset: 2400)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1018, file: !24, line: 455, baseType: !1146, size: 64, offset: 2432)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !24, line: 43, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1018, file: !24, line: 458, baseType: !1149, size: 64, offset: 2496)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!57}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1018, file: !24, line: 460, baseType: !1153, size: 4032, align: 512, offset: 2560)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, size: 4032, elements: !1170)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !24, line: 362, size: 576, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1154, file: !24, line: 363, baseType: !157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1154, file: !24, line: 364, baseType: !18, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1154, file: !24, line: 367, baseType: !1159, size: 448, offset: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !24, line: 319, size: 448, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1159, file: !24, line: 320, baseType: !1017, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1159, file: !24, line: 321, baseType: !1163, size: 384, offset: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1164, line: 40, size: 384, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1163, file: !1164, line: 41, baseType: !1167, size: 384, align: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 384, align: 64, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 2)
!1170 = !{!1171}
!1171 = !DISubrange(count: 7)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1018, file: !24, line: 463, baseType: !1173, size: 192, offset: 6592)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1174, line: 8, size: 192, elements: !1175)
!1174 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1175 = !{!1176, !1177, !1179}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1173, file: !1174, line: 10, baseType: !18, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1173, file: !1174, line: 11, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1173, file: !1174, line: 12, baseType: !1180, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1182, line: 59, size: 48, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1181, file: !1182, line: 60, baseType: !660, size: 16)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1181, file: !1182, line: 61, baseType: !660, size: 16, offset: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1181, file: !1182, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1181, file: !1182, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1181, file: !1182, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1181, file: !1182, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1018, file: !24, line: 465, baseType: !418, size: 64, offset: 6784)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1018, file: !24, line: 469, baseType: !18, size: 32, offset: 6848)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1018, file: !24, line: 470, baseType: !292, size: 128, offset: 6912)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1018, file: !24, line: 471, baseType: !1194, size: 64, offset: 7040)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1196, line: 33, size: 96, elements: !1197)
!1196 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1197 = !{!1198, !1199, !1200, !1201}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1195, file: !1196, line: 37, baseType: !57, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1195, file: !1196, line: 43, baseType: !57, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1195, file: !1196, line: 45, baseType: !184, size: 16, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !1196, line: 47, baseType: !184, size: 16, offset: 80)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1018, file: !24, line: 476, baseType: !1203, size: 64, offset: 7104)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !24, line: 378, size: 256, elements: !1205)
!1205 = !{!1206, !1222, !1223, !1224}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1204, file: !24, line: 379, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1209, line: 204, baseType: !1210)
!1209 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1209, line: 197, size: 192, elements: !1211)
!1211 = !{!1212, !1214, !1215, !1216, !1218, !1220}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1210, file: !1209, line: 198, baseType: !1213, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1209, line: 21, baseType: !139)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1210, file: !1209, line: 199, baseType: !144, size: 8, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1210, file: !1209, line: 200, baseType: !144, size: 8, offset: 40)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1210, file: !1209, line: 201, baseType: !1217, size: 16, offset: 48)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1209, line: 17, baseType: !183)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1210, file: !1209, line: 202, baseType: !1219, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1209, line: 16, baseType: !232)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1210, file: !1209, line: 203, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1209, line: 22, baseType: !232)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1204, file: !24, line: 380, baseType: !18, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1204, file: !24, line: 381, baseType: !368, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1204, file: !24, line: 382, baseType: !368, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1018, file: !24, line: 477, baseType: !1204, size: 256, offset: 7168)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1018, file: !24, line: 480, baseType: !1227, size: 64, offset: 7424)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !24, line: 480, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1018, file: !24, line: 483, baseType: !1230, size: 64, offset: 7488)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !24, line: 483, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1018, file: !24, line: 488, baseType: !368, size: 64, offset: 7552)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1018, file: !24, line: 492, baseType: !157, size: 64, offset: 7616)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1018, file: !24, line: 493, baseType: !18, size: 32, offset: 7680)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1018, file: !24, line: 495, baseType: !157, size: 64, offset: 7744)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1018, file: !24, line: 496, baseType: !18, size: 32, offset: 7808)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1018, file: !24, line: 499, baseType: !18, size: 32, offset: 7840)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1018, file: !24, line: 500, baseType: !1239, size: 64, offset: 7872)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1241, line: 45, baseType: !1242)
!1241 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1018, file: !24, line: 503, baseType: !18, size: 32, offset: 7936)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1018, file: !24, line: 504, baseType: !1245, size: 64, offset: 8000)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1248, line: 96, size: 192, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1249 = !{!1250, !1251, !1311, !1314}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1247, file: !1248, line: 97, baseType: !18, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1247, file: !1248, line: 98, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1248, line: 24, size: 3072, elements: !1254)
!1254 = !{!1255, !1257, !1258, !1259, !1260, !1274, !1275, !1276, !1277, !1295, !1296, !1297, !1308, !1309, !1310}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1253, file: !1248, line: 26, baseType: !1256, size: 128)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 128, elements: !1168)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1253, file: !1248, line: 27, baseType: !1256, size: 128, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1253, file: !1248, line: 28, baseType: !57, size: 32, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1253, file: !1248, line: 31, baseType: !306, size: 32, align: 512, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1253, file: !1248, line: 32, baseType: !1261, size: 960, offset: 576)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1262, line: 206, size: 960, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1263 = !{!1264, !1265, !1268, !1270, !1271, !1273}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1261, file: !1262, line: 207, baseType: !478, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1261, file: !1262, line: 208, baseType: !1266, size: 256, offset: 64)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1267, size: 256, elements: !134)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1261, file: !1262, line: 209, baseType: !1269, size: 256, offset: 320)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 256, elements: !134)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1261, file: !1262, line: 213, baseType: !404, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1261, file: !1262, line: 215, baseType: !1272, size: 256, offset: 640)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !134)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !1262, line: 216, baseType: !142, size: 8, offset: 896)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1253, file: !1248, line: 33, baseType: !418, size: 64, offset: 1536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1253, file: !1248, line: 34, baseType: !418, size: 64, offset: 1600)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1253, file: !1248, line: 35, baseType: !719, size: 8, offset: 1664)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1253, file: !1248, line: 36, baseType: !1278, size: 320, offset: 1728)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1279, line: 11, size: 320, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1280 = !{!1281, !1288, !1289, !1294}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1278, file: !1279, line: 16, baseType: !1282, size: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !293, line: 198, size: 128, elements: !1283)
!1283 = !{!1284, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1282, file: !293, line: 199, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1282, file: !293, line: 199, baseType: !1287, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1278, file: !1279, line: 17, baseType: !418, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1278, file: !1279, line: 18, baseType: !1290, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1279, line: 19, baseType: !137, size: 32, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1253, file: !1248, line: 37, baseType: !686, size: 256, offset: 2048)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1253, file: !1248, line: 38, baseType: !475, size: 128, align: 64, offset: 2304)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1253, file: !1248, line: 39, baseType: !1298, size: 64, offset: 2432)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1248, line: 49, size: 768, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1299, file: !1248, line: 50, baseType: !306, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1299, file: !1248, line: 51, baseType: !1269, size: 256, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1299, file: !1248, line: 53, baseType: !1269, size: 256, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1299, file: !1248, line: 54, baseType: !418, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1299, file: !1248, line: 55, baseType: !1298, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1299, file: !1248, line: 56, baseType: !57, size: 32, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1299, file: !1248, line: 57, baseType: !57, size: 32, offset: 736)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1253, file: !1248, line: 40, baseType: !418, size: 64, offset: 2496)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1253, file: !1248, line: 42, baseType: !57, size: 32, offset: 2560)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1253, file: !1248, line: 43, baseType: !1246, size: 64, offset: 2624)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1247, file: !1248, line: 99, baseType: !1312, offset: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1313, line: 211, elements: !505)
!1313 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1247, file: !1248, line: 100, baseType: !1315, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1248, line: 63, size: 3008, elements: !1317)
!1317 = !{!1318, !1319, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1349}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1316, file: !1248, line: 64, baseType: !1298, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1316, file: !1248, line: 65, baseType: !1320, size: 192, offset: 64)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 192, elements: !369)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1316, file: !1248, line: 67, baseType: !57, size: 32, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1316, file: !1248, line: 68, baseType: !622, size: 256, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !1248, line: 69, baseType: !306, size: 32, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1316, file: !1248, line: 70, baseType: !622, size: 256, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1316, file: !1248, line: 71, baseType: !418, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1316, file: !1248, line: 72, baseType: !418, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1316, file: !1248, line: 73, baseType: !418, size: 64, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1316, file: !1248, line: 74, baseType: !418, size: 64, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1316, file: !1248, line: 75, baseType: !418, size: 64, offset: 1152)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1316, file: !1248, line: 76, baseType: !418, size: 64, offset: 1216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1316, file: !1248, line: 77, baseType: !418, size: 64, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1316, file: !1248, line: 78, baseType: !418, size: 64, offset: 1344)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1316, file: !1248, line: 79, baseType: !719, size: 8, offset: 1408)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1316, file: !1248, line: 80, baseType: !418, size: 64, offset: 1472)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1316, file: !1248, line: 81, baseType: !622, size: 256, offset: 1536)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1316, file: !1248, line: 82, baseType: !1037, size: 256, offset: 1792)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1316, file: !1248, line: 84, baseType: !326, size: 32, offset: 2048)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1316, file: !1248, line: 87, baseType: !418, size: 64, offset: 2112)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1316, file: !1248, line: 88, baseType: !418, size: 64, offset: 2176)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1316, file: !1248, line: 89, baseType: !1341, size: 704, offset: 2240)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !687, line: 111, size: 704, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1348}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1341, file: !687, line: 112, baseType: !686, size: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1341, file: !687, line: 113, baseType: !1278, size: 320, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1341, file: !687, line: 116, baseType: !1346, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !687, line: 18, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1341, file: !687, line: 117, baseType: !57, size: 32, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1316, file: !1248, line: 90, baseType: !1246, size: 64, offset: 2944)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1018, file: !24, line: 515, baseType: !1351, size: 64, offset: 8064)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1353, line: 117, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1352, file: !1353, line: 118, baseType: !603, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1352, file: !1353, line: 119, baseType: !603, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1352, file: !1353, line: 120, baseType: !404, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1018, file: !24, line: 516, baseType: !18, size: 32, offset: 8128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1018, file: !24, line: 519, baseType: !18, size: 32, offset: 8160)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1018, file: !24, line: 520, baseType: !1361, size: 64, offset: 8192)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1018, file: !24, line: 523, baseType: !1363, size: 64, offset: 8256)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !24, line: 523, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1018, file: !24, line: 524, baseType: !18, size: 32, offset: 8320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1018, file: !24, line: 525, baseType: !1368, size: 64, offset: 8384)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !24, line: 525, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1018, file: !24, line: 526, baseType: !18, size: 32, offset: 8448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1018, file: !24, line: 533, baseType: !157, size: 64, offset: 8512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1018, file: !24, line: 534, baseType: !18, size: 32, offset: 8576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1018, file: !24, line: 535, baseType: !1375, size: 64, offset: 8640)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1018, file: !24, line: 536, baseType: !18, size: 32, offset: 8704)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1018, file: !24, line: 539, baseType: !57, size: 32, offset: 8736)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1018, file: !24, line: 540, baseType: !1379, size: 64, offset: 8768)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1381, line: 32, size: 64, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1380, file: !1381, line: 33, baseType: !603, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1380, file: !1381, line: 34, baseType: !603, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1018, file: !24, line: 563, baseType: !292, size: 128, offset: 8832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1018, file: !24, line: 565, baseType: !292, size: 128, offset: 8960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1018, file: !24, line: 568, baseType: !1388, size: 64, offset: 9088)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1018, file: !24, line: 570, baseType: !326, size: 32, offset: 9152)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1012, file: !31, line: 101, baseType: !290, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1012, file: !31, line: 103, baseType: !719, size: 8, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1012, file: !31, line: 104, baseType: !30, size: 32, offset: 288)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1012, file: !31, line: 106, baseType: !1396, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1399, line: 282, size: 1600, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1400 = !{!1401, !1402, !1403, !1407}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1398, file: !1399, line: 283, baseType: !239, size: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1398, file: !1399, line: 284, baseType: !239, size: 256, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1398, file: !1399, line: 285, baseType: !1404, size: 1024, offset: 512)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1398, file: !1399, line: 286, baseType: !643, size: 64, offset: 1536)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1012, file: !31, line: 107, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1399, line: 217, size: 256, elements: !1412)
!1412 = !{!1413, !1415, !1417, !1418}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1411, file: !1399, line: 218, baseType: !1414, size: 128)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !200)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1411, file: !1399, line: 219, baseType: !1416, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1399, line: 15, baseType: !418)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1411, file: !1399, line: 220, baseType: !139, size: 32, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1411, file: !1399, line: 221, baseType: !139, size: 32, offset: 224)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1012, file: !31, line: 109, baseType: !971, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1012, file: !31, line: 110, baseType: !962, size: 64, offset: 512)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1012, file: !31, line: 111, baseType: !971, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1012, file: !31, line: 112, baseType: !962, size: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1012, file: !31, line: 113, baseType: !1424, size: 64, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!57, !282, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !49, line: 60, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !49, line: 58, size: 32, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1428, file: !49, line: 59, baseType: !57, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1012, file: !31, line: 114, baseType: !971, size: 64, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1012, file: !31, line: 115, baseType: !420, size: 64, offset: 832)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1012, file: !31, line: 116, baseType: !420, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1012, file: !31, line: 118, baseType: !966, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1012, file: !31, line: 119, baseType: !962, size: 64, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1012, file: !31, line: 121, baseType: !1437, size: 64, offset: 1088)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !31, line: 121, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !999, file: !1000, line: 88, baseType: !951, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !999, file: !1000, line: 89, baseType: !971, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !999, file: !1000, line: 90, baseType: !962, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !999, file: !1000, line: 91, baseType: !962, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !999, file: !1000, line: 92, baseType: !962, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !999, file: !1000, line: 94, baseType: !971, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !999, file: !1000, line: 95, baseType: !971, size: 64, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !999, file: !1000, line: 97, baseType: !1424, size: 64, offset: 832)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !999, file: !1000, line: 98, baseType: !971, size: 64, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !999, file: !1000, line: 100, baseType: !971, size: 64, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !999, file: !1000, line: 102, baseType: !971, size: 64, offset: 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !999, file: !1000, line: 103, baseType: !962, size: 64, offset: 1088)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !999, file: !1000, line: 105, baseType: !966, size: 64, offset: 1152)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !999, file: !1000, line: 107, baseType: !1453, size: 64, offset: 1216)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1000, line: 107, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !999, file: !1000, line: 109, baseType: !719, size: 8, offset: 1280)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !283, file: !37, line: 715, baseType: !1011, size: 64, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !283, file: !37, line: 717, baseType: !157, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !283, file: !37, line: 719, baseType: !157, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !283, file: !37, line: 721, baseType: !622, size: 256, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !283, file: !37, line: 725, baseType: !1462, size: 448, offset: 1280)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !37, line: 517, size: 448, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1462, file: !37, line: 518, baseType: !292, size: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1462, file: !37, line: 519, baseType: !292, size: 128, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1462, file: !37, line: 520, baseType: !292, size: 128, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1462, file: !37, line: 521, baseType: !36, size: 32, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !283, file: !37, line: 726, baseType: !1469, size: 2496, offset: 1728)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !49, line: 663, size: 2496, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1515, !1516, !1517, !1518, !1519, !1520, !1589, !1590, !1591, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1629, !1633}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1469, file: !49, line: 664, baseType: !1427, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1469, file: !49, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1469, file: !49, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1469, file: !49, line: 667, baseType: !719, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1469, file: !49, line: 668, baseType: !719, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1469, file: !49, line: 669, baseType: !719, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1469, file: !49, line: 670, baseType: !719, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1469, file: !49, line: 671, baseType: !719, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1469, file: !49, line: 672, baseType: !719, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1469, file: !49, line: 673, baseType: !719, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1469, file: !49, line: 674, baseType: !719, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1469, file: !49, line: 675, baseType: !137, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1469, file: !49, line: 676, baseType: !306, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1469, file: !49, line: 678, baseType: !292, size: 128, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1469, file: !49, line: 679, baseType: !1037, size: 256, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1469, file: !49, line: 680, baseType: !1487, size: 64, offset: 512)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1489, line: 43, size: 1536, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1498, !1499, !1500, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1488, file: !1489, line: 44, baseType: !290, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1488, file: !1489, line: 45, baseType: !57, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1488, file: !1489, line: 46, baseType: !292, size: 128, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !1489, line: 47, baseType: !306, size: 32, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1488, file: !1489, line: 48, baseType: !1496, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !49, line: 629, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1488, file: !1489, line: 49, baseType: !1278, size: 320, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1488, file: !1489, line: 50, baseType: !418, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1488, file: !1489, line: 51, baseType: !1501, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1502, line: 29, baseType: !542)
!1502 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1488, file: !1489, line: 52, baseType: !1501, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1488, file: !1489, line: 53, baseType: !1501, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1488, file: !1489, line: 54, baseType: !1501, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1488, file: !1489, line: 55, baseType: !1501, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1488, file: !1489, line: 56, baseType: !418, size: 64, offset: 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1488, file: !1489, line: 57, baseType: !418, size: 64, offset: 1152)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1488, file: !1489, line: 58, baseType: !418, size: 64, offset: 1216)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1488, file: !1489, line: 59, baseType: !418, size: 64, offset: 1280)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1488, file: !1489, line: 60, baseType: !418, size: 64, offset: 1344)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1488, file: !1489, line: 61, baseType: !282, size: 64, offset: 1408)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1488, file: !1489, line: 62, baseType: !719, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1488, file: !1489, line: 63, baseType: !719, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1469, file: !49, line: 681, baseType: !719, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1469, file: !49, line: 682, baseType: !719, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1469, file: !49, line: 683, baseType: !719, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1469, file: !49, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1469, file: !49, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1469, file: !49, line: 690, baseType: !1521, size: 512, offset: 640)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !44, line: 118, size: 512, elements: !1522)
!1522 = !{!1523, !1529, !1530, !1535, !1585, !1586, !1587, !1588}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1521, file: !44, line: 119, baseType: !1524, size: 256)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1525, line: 9, size: 256, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1524, file: !1525, line: 10, baseType: !725, size: 192, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1524, file: !1525, line: 11, baseType: !1501, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1521, file: !44, line: 120, baseType: !1501, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1521, file: !44, line: 121, baseType: !1531, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!43, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1521, file: !44, line: 122, baseType: !1536, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !44, line: 159, size: 512, align: 512, elements: !1538)
!1538 = !{!1539, !1562, !1563, !1566, !1571, !1572, !1580, !1584}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1537, file: !44, line: 160, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !44, line: 215, size: 4608, align: 512, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !44, line: 216, baseType: !558, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1541, file: !44, line: 217, baseType: !18, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1541, file: !44, line: 218, baseType: !18, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1541, file: !44, line: 219, baseType: !18, size: 32, offset: 96)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1541, file: !44, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1541, file: !44, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1541, file: !44, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1541, file: !44, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1541, file: !44, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1541, file: !44, line: 226, baseType: !18, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1541, file: !44, line: 227, baseType: !184, size: 16, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1541, file: !44, line: 228, baseType: !184, size: 16, offset: 208)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1541, file: !44, line: 229, baseType: !18, size: 32, offset: 224)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1541, file: !44, line: 235, baseType: !1501, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1541, file: !44, line: 236, baseType: !1534, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1541, file: !44, line: 237, baseType: !1501, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1541, file: !44, line: 238, baseType: !1534, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1541, file: !44, line: 239, baseType: !1561, size: 4096, align: 512, offset: 512)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 4096, align: 512, elements: !152)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1537, file: !44, line: 161, baseType: !18, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1537, file: !44, line: 162, baseType: !1564, size: 32, offset: 96)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !293, line: 32, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !402, line: 96, baseType: !57)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1537, file: !44, line: 163, baseType: !1567, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !573, line: 274, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !573, line: 274, size: 32, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1568, file: !573, line: 274, baseType: !572, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1537, file: !44, line: 164, baseType: !1534, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1537, file: !44, line: 165, baseType: !1573, size: 128, offset: 256)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1525, line: 14, size: 128, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1573, file: !1525, line: 15, baseType: !1576, size: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !726, line: 26, size: 128, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1576, file: !726, line: 27, baseType: !828, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1576, file: !726, line: 28, baseType: !730, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1537, file: !44, line: 166, baseType: !1581, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1501}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1537, file: !44, line: 167, baseType: !1501, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1521, file: !44, line: 123, baseType: !142, size: 8, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1521, file: !44, line: 124, baseType: !142, size: 8, offset: 456)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1521, file: !44, line: 125, baseType: !142, size: 8, offset: 464)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1521, file: !44, line: 126, baseType: !142, size: 8, offset: 472)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1469, file: !49, line: 691, baseType: !532, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1469, file: !49, line: 692, baseType: !686, size: 256, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1469, file: !49, line: 693, baseType: !1592, size: 192, offset: 1472)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1593, line: 41, baseType: !1594)
!1593 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1593, line: 37, size: 192, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !1593, line: 38, baseType: !306, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1594, file: !1593, line: 39, baseType: !292, size: 128, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1469, file: !49, line: 694, baseType: !1496, size: 64, offset: 1664)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1469, file: !49, line: 695, baseType: !326, size: 32, offset: 1728)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1469, file: !49, line: 696, baseType: !326, size: 32, offset: 1760)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1469, file: !49, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1469, file: !49, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1469, file: !49, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1469, file: !49, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1469, file: !49, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1469, file: !49, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1469, file: !49, line: 703, baseType: !719, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1469, file: !49, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1469, file: !49, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1469, file: !49, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1469, file: !49, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1469, file: !49, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1469, file: !49, line: 709, baseType: !18, size: 32, offset: 1824)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1469, file: !49, line: 710, baseType: !48, size: 32, offset: 1856)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1469, file: !49, line: 711, baseType: !56, size: 32, offset: 1888)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1469, file: !49, line: 712, baseType: !56, size: 32, offset: 1920)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1469, file: !49, line: 713, baseType: !57, size: 32, offset: 1952)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1469, file: !49, line: 714, baseType: !57, size: 32, offset: 1984)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1469, file: !49, line: 715, baseType: !532, size: 64, offset: 2048)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1469, file: !49, line: 716, baseType: !532, size: 64, offset: 2112)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1469, file: !49, line: 717, baseType: !532, size: 64, offset: 2176)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1469, file: !49, line: 718, baseType: !532, size: 64, offset: 2240)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1469, file: !49, line: 720, baseType: !1624, size: 64, offset: 2304)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !49, line: 632, size: 64, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1625, file: !49, line: 633, baseType: !306, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1625, file: !49, line: 634, baseType: !18, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1469, file: !49, line: 721, baseType: !1630, size: 64, offset: 2368)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !282, !603}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1469, file: !49, line: 722, baseType: !1634, size: 64, offset: 2432)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !49, line: 722, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !283, file: !37, line: 727, baseType: !1637, size: 64, offset: 4224)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !49, line: 742, size: 1792, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1647, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1638, file: !49, line: 743, baseType: !968, size: 1472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1638, file: !49, line: 744, baseType: !971, size: 64, offset: 1472)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1638, file: !49, line: 745, baseType: !1643, size: 64, offset: 1536)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !282, !719}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1638, file: !49, line: 746, baseType: !971, size: 64, offset: 1600)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1638, file: !49, line: 747, baseType: !962, size: 64, offset: 1664)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1638, file: !49, line: 748, baseType: !962, size: 64, offset: 1728)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !283, file: !37, line: 736, baseType: !1650, size: 128, offset: 4288)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !37, line: 529, size: 128, elements: !1651)
!1651 = !{!1652, !1656}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1650, file: !37, line: 531, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1655, line: 13, flags: DIFlagFwdDecl)
!1655 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !37, line: 532, baseType: !1657, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !37, line: 49, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !283, file: !37, line: 738, baseType: !1660, size: 64, offset: 4416)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !37, line: 738, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !283, file: !37, line: 740, baseType: !1664, size: 64, offset: 4480)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !283, file: !37, line: 741, baseType: !532, size: 64, offset: 4544)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !283, file: !37, line: 746, baseType: !532, size: 64, offset: 4608)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !283, file: !37, line: 747, baseType: !1668, size: 64, offset: 4672)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !37, line: 747, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !283, file: !37, line: 749, baseType: !1672, size: 64, offset: 4736)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !37, line: 428, size: 128, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1673, file: !37, line: 433, baseType: !18, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1673, file: !37, line: 434, baseType: !18, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1673, file: !37, line: 435, baseType: !418, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !283, file: !37, line: 751, baseType: !292, size: 128, offset: 4800)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !283, file: !37, line: 762, baseType: !1680, size: 64, offset: 4928)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !37, line: 762, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !283, file: !37, line: 770, baseType: !1683, offset: 4992)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1684, line: 5, elements: !505)
!1684 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !283, file: !37, line: 772, baseType: !1686, size: 64, offset: 4992)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1688, line: 18, flags: DIFlagFwdDecl)
!1688 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !283, file: !37, line: 773, baseType: !1690, size: 64, offset: 5056)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1692, line: 41, size: 512, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1693 = !{!1694, !1695, !1788, !1789, !1790, !1791}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1691, file: !1692, line: 42, baseType: !1690, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1691, file: !1692, line: 43, baseType: !1696, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1692, line: 125, size: 1408, elements: !1699)
!1699 = !{!1700, !1704, !1708, !1714, !1718, !1719, !1723, !1727, !1731, !1735, !1739, !1740, !1744, !1748, !1752, !1763, !1764, !1765, !1766, !1776, !1780, !1784}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1698, file: !1692, line: 126, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1690, !1690}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1698, file: !1692, line: 127, baseType: !1705, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1690}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1698, file: !1692, line: 128, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!719, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1698, file: !1692, line: 129, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!643, !1712, !954}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1698, file: !1692, line: 131, baseType: !1709, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1698, file: !1692, line: 133, baseType: !1720, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!64, !1712}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1698, file: !1692, line: 134, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!719, !1712, !290}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1698, file: !1692, line: 136, baseType: !1728, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!57, !1712, !290, !18, !157, !415}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1698, file: !1692, line: 141, baseType: !1732, size: 64, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!57, !1712, !290, !1361, !415}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1698, file: !1692, line: 144, baseType: !1736, size: 64, offset: 576)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!290, !1712}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1698, file: !1692, line: 145, baseType: !1736, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1698, file: !1692, line: 146, baseType: !1741, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1690, !1712}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1698, file: !1692, line: 148, baseType: !1745, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1690, !1712, !1690}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1698, file: !1692, line: 151, baseType: !1749, size: 64, offset: 832)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1690, !1712, !290}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1698, file: !1692, line: 153, baseType: !1753, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!57, !1712, !290, !290, !18, !18, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1692, line: 94, size: 640, elements: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1757, file: !1692, line: 95, baseType: !1690, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1757, file: !1692, line: 96, baseType: !18, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1757, file: !1692, line: 97, baseType: !1762, size: 512, offset: 128)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 512, elements: !152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1698, file: !1692, line: 158, baseType: !1745, size: 64, offset: 960)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1698, file: !1692, line: 161, baseType: !1741, size: 64, offset: 1024)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1698, file: !1692, line: 163, baseType: !1701, size: 64, offset: 1088)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1698, file: !1692, line: 164, baseType: !1767, size: 64, offset: 1152)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!57, !1712, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1692, line: 73, size: 128, elements: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1771, file: !1692, line: 74, baseType: !18, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1771, file: !1692, line: 75, baseType: !18, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1771, file: !1692, line: 76, baseType: !1712, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1698, file: !1692, line: 166, baseType: !1777, size: 64, offset: 1216)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!157, !1690, !57}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1698, file: !1692, line: 167, baseType: !1781, size: 64, offset: 1280)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!57, !1712, !18}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1698, file: !1692, line: 168, baseType: !1785, size: 64, offset: 1344)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!57, !1690}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1691, file: !1692, line: 44, baseType: !282, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1691, file: !1692, line: 45, baseType: !292, size: 128, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1691, file: !1692, line: 46, baseType: !292, size: 128, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1692, line: 47, baseType: !142, size: 8, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !283, file: !37, line: 776, baseType: !57, size: 32, offset: 5120)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !283, file: !37, line: 778, baseType: !1794, size: 32, offset: 5152)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !293, line: 21, baseType: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !293, line: 18, baseType: !137)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !283, file: !37, line: 779, baseType: !137, size: 32, offset: 5184)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !283, file: !37, line: 781, baseType: !306, size: 32, offset: 5216)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !283, file: !37, line: 782, baseType: !292, size: 128, offset: 5248)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !283, file: !37, line: 784, baseType: !1800, size: 64, offset: 5376)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1803, line: 52, size: 768, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1813, !1817, !1818, !1819, !1820, !1824, !1828}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1802, file: !1803, line: 53, baseType: !290, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1802, file: !1803, line: 55, baseType: !420, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1802, file: !1803, line: 56, baseType: !420, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1802, file: !1803, line: 58, baseType: !951, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1802, file: !1803, line: 59, baseType: !1810, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!368, !954, !960}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1802, file: !1803, line: 61, baseType: !1814, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1800}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1802, file: !1803, line: 62, baseType: !962, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1802, file: !1803, line: 64, baseType: !971, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1802, file: !1803, line: 66, baseType: !758, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1802, file: !1803, line: 67, baseType: !1821, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!643, !954}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1802, file: !1803, line: 69, baseType: !1825, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !954, !793, !801}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1802, file: !1803, line: 71, baseType: !966, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !283, file: !37, line: 785, baseType: !420, size: 64, offset: 5440)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !283, file: !37, line: 787, baseType: !962, size: 64, offset: 5504)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !283, file: !37, line: 788, baseType: !1832, size: 64, offset: 5568)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !37, line: 46, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !283, file: !37, line: 789, baseType: !1835, size: 64, offset: 5632)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !37, line: 48, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !283, file: !37, line: 791, baseType: !1838, size: 64, offset: 5696)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !37, line: 597, size: 128, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1839, file: !37, line: 598, baseType: !70, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1839, file: !37, line: 599, baseType: !79, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1839, file: !37, line: 600, baseType: !84, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1839, file: !37, line: 601, baseType: !719, size: 8, offset: 96)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1839, file: !37, line: 602, baseType: !719, size: 8, offset: 104)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !283, file: !37, line: 793, baseType: !89, size: 32, offset: 5760)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !283, file: !37, line: 795, baseType: !719, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !283, file: !37, line: 796, baseType: !719, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !283, file: !37, line: 797, baseType: !719, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !283, file: !37, line: 798, baseType: !719, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !283, file: !37, line: 799, baseType: !719, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1852 = !{!1853, !1854, !1855}
!1853 = !DILocalVariable(name: "dev", arg: 1, scope: !272, file: !2, line: 7, type: !282)
!1854 = !DILocalVariable(name: "nhlt", scope: !272, file: !2, line: 9, type: !275)
!1855 = !DILocalVariable(name: "status", scope: !272, file: !2, line: 10, type: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1857, line: 421, baseType: !137)
!1857 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1858 = !DILocation(line: 7, column: 56, scope: !272)
!1859 = !DILocation(line: 9, column: 2, scope: !272)
!1860 = !DILocation(line: 9, column: 26, scope: !272)
!1861 = !DILocation(line: 10, column: 2, scope: !272)
!1862 = !DILocation(line: 10, column: 14, scope: !272)
!1863 = !DILocation(line: 12, column: 11, scope: !272)
!1864 = !DILocation(line: 12, column: 9, scope: !272)
!1865 = !DILocation(line: 14, column: 6, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !272, file: !2, line: 14, column: 6)
!1867 = !DILocation(line: 14, column: 6, scope: !272)
!1868 = !DILocation(line: 15, column: 3, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 15, column: 3)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 14, column: 28)
!1871 = !DILocation(line: 15, column: 3, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 15, column: 3)
!1873 = !DILocation(line: 16, column: 3, scope: !1870)
!1874 = !DILocation(line: 19, column: 9, scope: !272)
!1875 = !DILocation(line: 19, column: 2, scope: !272)
!1876 = !DILocation(line: 20, column: 1, scope: !272)
!1877 = !DISubprogram(name: "acpi_get_table", scope: !1878, file: !1878, line: 489, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1878 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1856, !1881, !137, !127}
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1857, line: 423, baseType: !368)
!1882 = !DISubprogram(name: "_dev_warn", scope: !1883, file: !1883, line: 52, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1883 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !954, !290, null}
!1886 = distinct !DISubprogram(name: "intel_nhlt_free", scope: !2, file: !2, line: 23, type: !1887, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !275}
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "nhlt", arg: 1, scope: !1886, file: !2, line: 23, type: !275)
!1891 = !DILocation(line: 23, column: 46, scope: !1886)
!1892 = !DILocation(line: 25, column: 45, scope: !1886)
!1893 = !DILocation(line: 25, column: 2, scope: !1886)
!1894 = !DILocation(line: 26, column: 1, scope: !1886)
!1895 = !DISubprogram(name: "acpi_put_table", scope: !1878, file: !1878, line: 493, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !128}
!1898 = distinct !DISubprogram(name: "intel_nhlt_get_dmic_geo", scope: !2, file: !2, line: 29, type: !1899, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!57, !282, !275}
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1918}
!1902 = !DILocalVariable(name: "dev", arg: 1, scope: !1898, file: !2, line: 29, type: !282)
!1903 = !DILocalVariable(name: "nhlt", arg: 2, scope: !1898, file: !2, line: 29, type: !275)
!1904 = !DILocalVariable(name: "epnt", scope: !1898, file: !2, line: 31, type: !216)
!1905 = !DILocalVariable(name: "cfg", scope: !1898, file: !2, line: 32, type: !158)
!1906 = !DILocalVariable(name: "cfg_vendor", scope: !1898, file: !2, line: 33, type: !211)
!1907 = !DILocalVariable(name: "fmt_configs", scope: !1898, file: !2, line: 34, type: !167)
!1908 = !DILocalVariable(name: "dmic_geo", scope: !1898, file: !2, line: 35, type: !18)
!1909 = !DILocalVariable(name: "max_ch", scope: !1898, file: !2, line: 36, type: !182)
!1910 = !DILocalVariable(name: "i", scope: !1898, file: !2, line: 37, type: !142)
!1911 = !DILocalVariable(name: "j", scope: !1898, file: !2, line: 37, type: !142)
!1912 = !DILocalVariable(name: "fmt_cfg", scope: !1913, file: !2, line: 58, type: !210)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 57, column: 31)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 57, column: 7)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 48, column: 67)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 47, column: 2)
!1917 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 47, column: 2)
!1918 = !DILocalVariable(name: "fmt_ext", scope: !1919, file: !2, line: 64, type: !1922)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 63, column: 49)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 63, column: 4)
!1921 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 63, column: 4)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1923 = !DILocation(line: 29, column: 44, scope: !1898)
!1924 = !DILocation(line: 29, column: 73, scope: !1898)
!1925 = !DILocation(line: 31, column: 2, scope: !1898)
!1926 = !DILocation(line: 31, column: 24, scope: !1898)
!1927 = !DILocation(line: 32, column: 2, scope: !1898)
!1928 = !DILocation(line: 32, column: 33, scope: !1898)
!1929 = !DILocation(line: 33, column: 2, scope: !1898)
!1930 = !DILocation(line: 33, column: 40, scope: !1898)
!1931 = !DILocation(line: 34, column: 2, scope: !1898)
!1932 = !DILocation(line: 34, column: 19, scope: !1898)
!1933 = !DILocation(line: 35, column: 2, scope: !1898)
!1934 = !DILocation(line: 35, column: 15, scope: !1898)
!1935 = !DILocation(line: 36, column: 2, scope: !1898)
!1936 = !DILocation(line: 36, column: 6, scope: !1898)
!1937 = !DILocation(line: 37, column: 2, scope: !1898)
!1938 = !DILocation(line: 37, column: 5, scope: !1898)
!1939 = !DILocation(line: 37, column: 8, scope: !1898)
!1940 = !DILocation(line: 39, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 39, column: 6)
!1942 = !DILocation(line: 39, column: 6, scope: !1898)
!1943 = !DILocation(line: 40, column: 3, scope: !1941)
!1944 = !DILocation(line: 42, column: 6, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 42, column: 6)
!1946 = !DILocation(line: 42, column: 12, scope: !1945)
!1947 = !DILocation(line: 42, column: 19, scope: !1945)
!1948 = !DILocation(line: 42, column: 26, scope: !1945)
!1949 = !DILocation(line: 42, column: 6, scope: !1898)
!1950 = !DILocation(line: 43, column: 3, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 43, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 42, column: 63)
!1953 = !DILocation(line: 43, column: 3, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 43, column: 3)
!1955 = !DILocation(line: 44, column: 3, scope: !1952)
!1956 = !DILocation(line: 47, column: 9, scope: !1917)
!1957 = !DILocation(line: 47, column: 21, scope: !1917)
!1958 = !DILocation(line: 47, column: 27, scope: !1917)
!1959 = !DILocation(line: 47, column: 19, scope: !1917)
!1960 = !DILocation(line: 47, column: 7, scope: !1917)
!1961 = !DILocation(line: 47, column: 33, scope: !1916)
!1962 = !DILocation(line: 47, column: 37, scope: !1916)
!1963 = !DILocation(line: 47, column: 43, scope: !1916)
!1964 = !DILocation(line: 47, column: 35, scope: !1916)
!1965 = !DILocation(line: 47, column: 2, scope: !1917)
!1966 = !DILocation(line: 50, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 50, column: 7)
!1968 = !DILocation(line: 50, column: 13, scope: !1967)
!1969 = !DILocation(line: 50, column: 22, scope: !1967)
!1970 = !DILocation(line: 50, column: 7, scope: !1915)
!1971 = !DILocation(line: 51, column: 4, scope: !1967)
!1972 = !DILocation(line: 53, column: 44, scope: !1915)
!1973 = !DILocation(line: 53, column: 50, scope: !1915)
!1974 = !DILocation(line: 53, column: 57, scope: !1915)
!1975 = !DILocation(line: 53, column: 43, scope: !1915)
!1976 = !DILocation(line: 53, column: 7, scope: !1915)
!1977 = !DILocation(line: 54, column: 37, scope: !1915)
!1978 = !DILocation(line: 54, column: 43, scope: !1915)
!1979 = !DILocation(line: 54, column: 50, scope: !1915)
!1980 = !DILocation(line: 54, column: 57, scope: !1915)
!1981 = !DILocation(line: 54, column: 63, scope: !1915)
!1982 = !DILocation(line: 54, column: 70, scope: !1915)
!1983 = !DILocation(line: 54, column: 55, scope: !1915)
!1984 = !DILocation(line: 54, column: 15, scope: !1915)
!1985 = !DILocation(line: 57, column: 7, scope: !1914)
!1986 = !DILocation(line: 57, column: 20, scope: !1914)
!1987 = !DILocation(line: 57, column: 7, scope: !1915)
!1988 = !DILocation(line: 58, column: 4, scope: !1913)
!1989 = !DILocation(line: 58, column: 25, scope: !1913)
!1990 = !DILocation(line: 58, column: 35, scope: !1913)
!1991 = !DILocation(line: 58, column: 48, scope: !1913)
!1992 = !DILocation(line: 63, column: 11, scope: !1921)
!1993 = !DILocation(line: 63, column: 9, scope: !1921)
!1994 = !DILocation(line: 63, column: 16, scope: !1920)
!1995 = !DILocation(line: 63, column: 20, scope: !1920)
!1996 = !DILocation(line: 63, column: 33, scope: !1920)
!1997 = !DILocation(line: 63, column: 18, scope: !1920)
!1998 = !DILocation(line: 63, column: 4, scope: !1921)
!1999 = !DILocation(line: 64, column: 5, scope: !1919)
!2000 = !DILocation(line: 64, column: 25, scope: !1919)
!2001 = !DILocation(line: 66, column: 16, scope: !1919)
!2002 = !DILocation(line: 66, column: 25, scope: !1919)
!2003 = !DILocation(line: 66, column: 13, scope: !1919)
!2004 = !DILocation(line: 68, column: 9, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 68, column: 9)
!2006 = !DILocation(line: 68, column: 18, scope: !2005)
!2007 = !DILocation(line: 68, column: 22, scope: !2005)
!2008 = !DILocation(line: 68, column: 33, scope: !2005)
!2009 = !DILocation(line: 68, column: 31, scope: !2005)
!2010 = !DILocation(line: 68, column: 9, scope: !1919)
!2011 = !DILocation(line: 69, column: 15, scope: !2005)
!2012 = !DILocation(line: 69, column: 24, scope: !2005)
!2013 = !DILocation(line: 69, column: 28, scope: !2005)
!2014 = !DILocation(line: 69, column: 13, scope: !2005)
!2015 = !DILocation(line: 69, column: 6, scope: !2005)
!2016 = !DILocation(line: 72, column: 39, scope: !1919)
!2017 = !DILocation(line: 72, column: 48, scope: !1919)
!2018 = !DILocation(line: 72, column: 55, scope: !1919)
!2019 = !DILocation(line: 73, column: 11, scope: !1919)
!2020 = !DILocation(line: 73, column: 20, scope: !1919)
!2021 = !DILocation(line: 73, column: 27, scope: !1919)
!2022 = !DILocation(line: 72, column: 60, scope: !1919)
!2023 = !DILocation(line: 72, column: 13, scope: !1919)
!2024 = !DILocation(line: 74, column: 4, scope: !1920)
!2025 = !DILocation(line: 74, column: 4, scope: !1919)
!2026 = !DILocation(line: 63, column: 45, scope: !1920)
!2027 = !DILocation(line: 63, column: 4, scope: !1920)
!2028 = distinct !{!2028, !1998, !2029, !2030, !2031}
!2029 = !DILocation(line: 74, column: 4, scope: !1921)
!2030 = !{!"llvm.loop.mustprogress"}
!2031 = !{!"llvm.loop.unroll.disable"}
!2032 = !DILocation(line: 76, column: 3, scope: !1914)
!2033 = !DILocation(line: 76, column: 3, scope: !1913)
!2034 = !DILocation(line: 80, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 80, column: 7)
!2036 = !DILocation(line: 80, column: 12, scope: !2035)
!2037 = !DILocation(line: 80, column: 26, scope: !2035)
!2038 = !DILocation(line: 80, column: 38, scope: !2035)
!2039 = !DILocation(line: 80, column: 7, scope: !1915)
!2040 = !DILocation(line: 81, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 80, column: 69)
!2042 = !DILocation(line: 81, column: 13, scope: !2041)
!2043 = !DILocation(line: 82, column: 3, scope: !2041)
!2044 = !DILocation(line: 83, column: 12, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 82, column: 10)
!2046 = !DILocation(line: 83, column: 17, scope: !2045)
!2047 = !DILocation(line: 83, column: 4, scope: !2045)
!2048 = !DILocation(line: 86, column: 14, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 83, column: 29)
!2050 = !DILocation(line: 87, column: 5, scope: !2049)
!2051 = !DILocation(line: 92, column: 14, scope: !2049)
!2052 = !DILocation(line: 93, column: 5, scope: !2049)
!2053 = !DILocation(line: 95, column: 58, scope: !2049)
!2054 = !DILocation(line: 95, column: 16, scope: !2049)
!2055 = !DILocation(line: 96, column: 16, scope: !2049)
!2056 = !DILocation(line: 96, column: 28, scope: !2049)
!2057 = !DILocation(line: 96, column: 14, scope: !2049)
!2058 = !DILocation(line: 97, column: 5, scope: !2049)
!2059 = !DILocation(line: 99, column: 5, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 99, column: 5)
!2061 = !DILocation(line: 99, column: 5, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 99, column: 5)
!2063 = !DILocation(line: 101, column: 4, scope: !2049)
!2064 = !DILocation(line: 103, column: 8, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 103, column: 8)
!2066 = !DILocation(line: 103, column: 17, scope: !2065)
!2067 = !DILocation(line: 103, column: 8, scope: !2045)
!2068 = !DILocation(line: 105, column: 4, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 103, column: 22)
!2070 = !DILocation(line: 106, column: 8, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 106, column: 8)
!2072 = !DILocation(line: 106, column: 17, scope: !2071)
!2073 = !DILocation(line: 106, column: 15, scope: !2071)
!2074 = !DILocation(line: 106, column: 8, scope: !2045)
!2075 = !DILocation(line: 109, column: 4, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 106, column: 27)
!2077 = !DILocation(line: 111, column: 2, scope: !1915)
!2078 = !DILocation(line: 47, column: 60, scope: !1916)
!2079 = !DILocation(line: 48, column: 45, scope: !1916)
!2080 = !DILocation(line: 48, column: 52, scope: !1916)
!2081 = !DILocation(line: 48, column: 58, scope: !1916)
!2082 = !DILocation(line: 48, column: 50, scope: !1916)
!2083 = !DILocation(line: 48, column: 12, scope: !1916)
!2084 = !DILocation(line: 47, column: 2, scope: !1916)
!2085 = distinct !{!2085, !1965, !2086, !2030, !2031}
!2086 = !DILocation(line: 111, column: 2, scope: !1917)
!2087 = !DILocation(line: 115, column: 9, scope: !1898)
!2088 = !DILocation(line: 115, column: 2, scope: !1898)
!2089 = !DILocation(line: 116, column: 1, scope: !1898)
!2090 = distinct !DISubprogram(name: "intel_nhlt_has_endpoint_type", scope: !2, file: !2, line: 119, type: !2091, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!719, !275, !142}
!2093 = !{!2094, !2095, !2096, !2097}
!2094 = !DILocalVariable(name: "nhlt", arg: 1, scope: !2090, file: !2, line: 119, type: !275)
!2095 = !DILocalVariable(name: "link_type", arg: 2, scope: !2090, file: !2, line: 119, type: !142)
!2096 = !DILocalVariable(name: "epnt", scope: !2090, file: !2, line: 121, type: !216)
!2097 = !DILocalVariable(name: "i", scope: !2090, file: !2, line: 122, type: !57)
!2098 = !DILocation(line: 119, column: 59, scope: !2090)
!2099 = !DILocation(line: 119, column: 68, scope: !2090)
!2100 = !DILocation(line: 121, column: 2, scope: !2090)
!2101 = !DILocation(line: 121, column: 24, scope: !2090)
!2102 = !DILocation(line: 122, column: 2, scope: !2090)
!2103 = !DILocation(line: 122, column: 6, scope: !2090)
!2104 = !DILocation(line: 124, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 124, column: 6)
!2106 = !DILocation(line: 124, column: 6, scope: !2090)
!2107 = !DILocation(line: 125, column: 3, scope: !2105)
!2108 = !DILocation(line: 127, column: 33, scope: !2090)
!2109 = !DILocation(line: 127, column: 39, scope: !2090)
!2110 = !DILocation(line: 127, column: 7, scope: !2090)
!2111 = !DILocation(line: 128, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 128, column: 2)
!2113 = !DILocation(line: 128, column: 7, scope: !2112)
!2114 = !DILocation(line: 128, column: 14, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !2, line: 128, column: 2)
!2116 = !DILocation(line: 128, column: 18, scope: !2115)
!2117 = !DILocation(line: 128, column: 24, scope: !2115)
!2118 = !DILocation(line: 128, column: 16, scope: !2115)
!2119 = !DILocation(line: 128, column: 2, scope: !2112)
!2120 = !DILocation(line: 129, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 129, column: 7)
!2122 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 128, column: 45)
!2123 = !DILocation(line: 129, column: 13, scope: !2121)
!2124 = !DILocation(line: 129, column: 25, scope: !2121)
!2125 = !DILocation(line: 129, column: 22, scope: !2121)
!2126 = !DILocation(line: 129, column: 7, scope: !2122)
!2127 = !DILocation(line: 130, column: 4, scope: !2121)
!2128 = !DILocation(line: 132, column: 41, scope: !2122)
!2129 = !DILocation(line: 132, column: 48, scope: !2122)
!2130 = !DILocation(line: 132, column: 54, scope: !2122)
!2131 = !DILocation(line: 132, column: 46, scope: !2122)
!2132 = !DILocation(line: 132, column: 8, scope: !2122)
!2133 = !DILocation(line: 133, column: 2, scope: !2122)
!2134 = !DILocation(line: 128, column: 41, scope: !2115)
!2135 = !DILocation(line: 128, column: 2, scope: !2115)
!2136 = distinct !{!2136, !2119, !2137, !2030, !2031}
!2137 = !DILocation(line: 133, column: 2, scope: !2112)
!2138 = !DILocation(line: 134, column: 2, scope: !2090)
!2139 = !DILocation(line: 135, column: 1, scope: !2090)
!2140 = distinct !DISubprogram(name: "intel_nhlt_ssp_endpoint_mask", scope: !2, file: !2, line: 138, type: !2141, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!57, !275, !142}
!2143 = !{!2144, !2145, !2146, !2147, !2148}
!2144 = !DILocalVariable(name: "nhlt", arg: 1, scope: !2140, file: !2, line: 138, type: !275)
!2145 = !DILocalVariable(name: "device_type", arg: 2, scope: !2140, file: !2, line: 138, type: !142)
!2146 = !DILocalVariable(name: "epnt", scope: !2140, file: !2, line: 140, type: !216)
!2147 = !DILocalVariable(name: "ssp_mask", scope: !2140, file: !2, line: 141, type: !57)
!2148 = !DILocalVariable(name: "i", scope: !2140, file: !2, line: 142, type: !57)
!2149 = !DILocation(line: 138, column: 58, scope: !2140)
!2150 = !DILocation(line: 138, column: 67, scope: !2140)
!2151 = !DILocation(line: 140, column: 2, scope: !2140)
!2152 = !DILocation(line: 140, column: 24, scope: !2140)
!2153 = !DILocation(line: 141, column: 2, scope: !2140)
!2154 = !DILocation(line: 141, column: 6, scope: !2140)
!2155 = !DILocation(line: 142, column: 2, scope: !2140)
!2156 = !DILocation(line: 142, column: 6, scope: !2140)
!2157 = !DILocation(line: 144, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 144, column: 6)
!2159 = !DILocation(line: 144, column: 12, scope: !2158)
!2160 = !DILocation(line: 144, column: 16, scope: !2158)
!2161 = !DILocation(line: 144, column: 28, scope: !2158)
!2162 = !DILocation(line: 144, column: 46, scope: !2158)
!2163 = !DILocation(line: 144, column: 49, scope: !2158)
!2164 = !DILocation(line: 144, column: 61, scope: !2158)
!2165 = !DILocation(line: 144, column: 6, scope: !2140)
!2166 = !DILocation(line: 145, column: 3, scope: !2158)
!2167 = !DILocation(line: 147, column: 33, scope: !2140)
!2168 = !DILocation(line: 147, column: 39, scope: !2140)
!2169 = !DILocation(line: 147, column: 7, scope: !2140)
!2170 = !DILocation(line: 148, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 148, column: 2)
!2172 = !DILocation(line: 148, column: 7, scope: !2171)
!2173 = !DILocation(line: 148, column: 14, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 148, column: 2)
!2175 = !DILocation(line: 148, column: 18, scope: !2174)
!2176 = !DILocation(line: 148, column: 24, scope: !2174)
!2177 = !DILocation(line: 148, column: 16, scope: !2174)
!2178 = !DILocation(line: 148, column: 2, scope: !2171)
!2179 = !DILocation(line: 149, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !2, line: 149, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 148, column: 45)
!2182 = !DILocation(line: 149, column: 13, scope: !2180)
!2183 = !DILocation(line: 149, column: 22, scope: !2180)
!2184 = !DILocation(line: 149, column: 39, scope: !2180)
!2185 = !DILocation(line: 149, column: 42, scope: !2180)
!2186 = !DILocation(line: 149, column: 48, scope: !2180)
!2187 = !DILocation(line: 149, column: 63, scope: !2180)
!2188 = !DILocation(line: 149, column: 60, scope: !2180)
!2189 = !DILocation(line: 149, column: 7, scope: !2181)
!2190 = !DILocation(line: 151, column: 16, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2180, file: !2, line: 149, column: 76)
!2192 = !DILocation(line: 151, column: 13, scope: !2191)
!2193 = !DILocation(line: 152, column: 3, scope: !2191)
!2194 = !DILocation(line: 153, column: 41, scope: !2181)
!2195 = !DILocation(line: 153, column: 48, scope: !2181)
!2196 = !DILocation(line: 153, column: 54, scope: !2181)
!2197 = !DILocation(line: 153, column: 46, scope: !2181)
!2198 = !DILocation(line: 153, column: 8, scope: !2181)
!2199 = !DILocation(line: 154, column: 2, scope: !2181)
!2200 = !DILocation(line: 148, column: 41, scope: !2174)
!2201 = !DILocation(line: 148, column: 2, scope: !2174)
!2202 = distinct !{!2202, !2178, !2203, !2030, !2031}
!2203 = !DILocation(line: 154, column: 2, scope: !2171)
!2204 = !DILocation(line: 156, column: 9, scope: !2140)
!2205 = !DILocation(line: 156, column: 2, scope: !2140)
!2206 = !DILocation(line: 157, column: 1, scope: !2140)
!2207 = distinct !DISubprogram(name: "intel_nhlt_ssp_mclk_mask", scope: !2, file: !2, line: 171, type: !2208, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!57, !275, !57}
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2228, !2229}
!2211 = !DILocalVariable(name: "nhlt", arg: 1, scope: !2207, file: !2, line: 171, type: !275)
!2212 = !DILocalVariable(name: "ssp_num", arg: 2, scope: !2207, file: !2, line: 171, type: !57)
!2213 = !DILocalVariable(name: "epnt", scope: !2207, file: !2, line: 173, type: !216)
!2214 = !DILocalVariable(name: "fmt", scope: !2207, file: !2, line: 174, type: !167)
!2215 = !DILocalVariable(name: "cfg", scope: !2207, file: !2, line: 175, type: !210)
!2216 = !DILocalVariable(name: "mclk_mask", scope: !2207, file: !2, line: 176, type: !57)
!2217 = !DILocalVariable(name: "i", scope: !2207, file: !2, line: 177, type: !57)
!2218 = !DILocalVariable(name: "j", scope: !2207, file: !2, line: 177, type: !57)
!2219 = !DILocalVariable(name: "blob", scope: !2220, file: !2, line: 198, type: !231)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 197, column: 41)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 197, column: 4)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 197, column: 4)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 188, column: 40)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 186, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 183, column: 45)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 183, column: 2)
!2227 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 183, column: 2)
!2228 = !DILocalVariable(name: "mdivc_offset", scope: !2220, file: !2, line: 199, type: !57)
!2229 = !DILocalVariable(name: "size", scope: !2220, file: !2, line: 200, type: !57)
!2230 = !DILocation(line: 171, column: 54, scope: !2207)
!2231 = !DILocation(line: 171, column: 64, scope: !2207)
!2232 = !DILocation(line: 173, column: 2, scope: !2207)
!2233 = !DILocation(line: 173, column: 24, scope: !2207)
!2234 = !DILocation(line: 174, column: 2, scope: !2207)
!2235 = !DILocation(line: 174, column: 19, scope: !2207)
!2236 = !DILocation(line: 175, column: 2, scope: !2207)
!2237 = !DILocation(line: 175, column: 23, scope: !2207)
!2238 = !DILocation(line: 176, column: 2, scope: !2207)
!2239 = !DILocation(line: 176, column: 6, scope: !2207)
!2240 = !DILocation(line: 177, column: 2, scope: !2207)
!2241 = !DILocation(line: 177, column: 6, scope: !2207)
!2242 = !DILocation(line: 177, column: 9, scope: !2207)
!2243 = !DILocation(line: 179, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 179, column: 6)
!2245 = !DILocation(line: 179, column: 6, scope: !2207)
!2246 = !DILocation(line: 180, column: 3, scope: !2244)
!2247 = !DILocation(line: 182, column: 33, scope: !2207)
!2248 = !DILocation(line: 182, column: 39, scope: !2207)
!2249 = !DILocation(line: 182, column: 7, scope: !2207)
!2250 = !DILocation(line: 183, column: 9, scope: !2227)
!2251 = !DILocation(line: 183, column: 7, scope: !2227)
!2252 = !DILocation(line: 183, column: 14, scope: !2226)
!2253 = !DILocation(line: 183, column: 18, scope: !2226)
!2254 = !DILocation(line: 183, column: 24, scope: !2226)
!2255 = !DILocation(line: 183, column: 16, scope: !2226)
!2256 = !DILocation(line: 183, column: 2, scope: !2227)
!2257 = !DILocation(line: 186, column: 7, scope: !2224)
!2258 = !DILocation(line: 186, column: 13, scope: !2224)
!2259 = !DILocation(line: 186, column: 22, scope: !2224)
!2260 = !DILocation(line: 186, column: 39, scope: !2224)
!2261 = !DILocation(line: 187, column: 7, scope: !2224)
!2262 = !DILocation(line: 187, column: 13, scope: !2224)
!2263 = !DILocation(line: 187, column: 25, scope: !2224)
!2264 = !DILocation(line: 187, column: 44, scope: !2224)
!2265 = !DILocation(line: 188, column: 7, scope: !2224)
!2266 = !DILocation(line: 188, column: 13, scope: !2224)
!2267 = !DILocation(line: 188, column: 31, scope: !2224)
!2268 = !DILocation(line: 188, column: 28, scope: !2224)
!2269 = !DILocation(line: 186, column: 7, scope: !2225)
!2270 = !DILocation(line: 190, column: 30, scope: !2223)
!2271 = !DILocation(line: 190, column: 36, scope: !2223)
!2272 = !DILocation(line: 190, column: 43, scope: !2223)
!2273 = !DILocation(line: 190, column: 50, scope: !2223)
!2274 = !DILocation(line: 190, column: 56, scope: !2223)
!2275 = !DILocation(line: 190, column: 63, scope: !2223)
!2276 = !DILocation(line: 190, column: 48, scope: !2223)
!2277 = !DILocation(line: 190, column: 8, scope: !2223)
!2278 = !DILocation(line: 191, column: 10, scope: !2223)
!2279 = !DILocation(line: 191, column: 15, scope: !2223)
!2280 = !DILocation(line: 191, column: 8, scope: !2223)
!2281 = !DILocation(line: 197, column: 11, scope: !2222)
!2282 = !DILocation(line: 197, column: 9, scope: !2222)
!2283 = !DILocation(line: 197, column: 16, scope: !2221)
!2284 = !DILocation(line: 197, column: 20, scope: !2221)
!2285 = !DILocation(line: 197, column: 25, scope: !2221)
!2286 = !DILocation(line: 197, column: 18, scope: !2221)
!2287 = !DILocation(line: 197, column: 4, scope: !2222)
!2288 = !DILocation(line: 198, column: 5, scope: !2220)
!2289 = !DILocation(line: 198, column: 10, scope: !2220)
!2290 = !DILocation(line: 199, column: 5, scope: !2220)
!2291 = !DILocation(line: 199, column: 9, scope: !2220)
!2292 = !DILocation(line: 200, column: 5, scope: !2220)
!2293 = !DILocation(line: 200, column: 9, scope: !2220)
!2294 = !DILocation(line: 203, column: 9, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 203, column: 9)
!2296 = !DILocation(line: 203, column: 14, scope: !2295)
!2297 = !DILocation(line: 203, column: 21, scope: !2295)
!2298 = !DILocation(line: 203, column: 26, scope: !2295)
!2299 = !DILocation(line: 203, column: 9, scope: !2220)
!2300 = !DILocation(line: 204, column: 6, scope: !2295)
!2301 = !DILocation(line: 206, column: 19, scope: !2220)
!2302 = !DILocation(line: 206, column: 24, scope: !2220)
!2303 = !DILocation(line: 206, column: 31, scope: !2220)
!2304 = !DILocation(line: 206, column: 10, scope: !2220)
!2305 = !DILocation(line: 208, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 208, column: 9)
!2307 = !DILocation(line: 208, column: 17, scope: !2306)
!2308 = !DILocation(line: 208, column: 9, scope: !2220)
!2309 = !DILocation(line: 209, column: 19, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 208, column: 38)
!2311 = !DILocation(line: 210, column: 11, scope: !2310)
!2312 = !DILocation(line: 211, column: 5, scope: !2310)
!2313 = !DILocation(line: 211, column: 16, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 211, column: 16)
!2315 = !DILocation(line: 211, column: 24, scope: !2314)
!2316 = !DILocation(line: 211, column: 16, scope: !2306)
!2317 = !DILocation(line: 212, column: 19, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 211, column: 45)
!2319 = !DILocation(line: 213, column: 11, scope: !2318)
!2320 = !DILocation(line: 214, column: 5, scope: !2318)
!2321 = !DILocation(line: 215, column: 19, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 214, column: 12)
!2323 = !DILocation(line: 216, column: 11, scope: !2322)
!2324 = !DILocation(line: 220, column: 9, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 220, column: 9)
!2326 = !DILocation(line: 220, column: 14, scope: !2325)
!2327 = !DILocation(line: 220, column: 21, scope: !2325)
!2328 = !DILocation(line: 220, column: 28, scope: !2325)
!2329 = !DILocation(line: 220, column: 26, scope: !2325)
!2330 = !DILocation(line: 220, column: 9, scope: !2220)
!2331 = !DILocation(line: 221, column: 6, scope: !2325)
!2332 = !DILocation(line: 223, column: 19, scope: !2220)
!2333 = !DILocation(line: 223, column: 24, scope: !2220)
!2334 = !DILocation(line: 223, column: 38, scope: !2220)
!2335 = !DILocation(line: 223, column: 15, scope: !2220)
!2336 = !DILocation(line: 225, column: 35, scope: !2220)
!2337 = !DILocation(line: 225, column: 40, scope: !2220)
!2338 = !DILocation(line: 225, column: 47, scope: !2220)
!2339 = !DILocation(line: 225, column: 54, scope: !2220)
!2340 = !DILocation(line: 225, column: 59, scope: !2220)
!2341 = !DILocation(line: 225, column: 66, scope: !2220)
!2342 = !DILocation(line: 225, column: 52, scope: !2220)
!2343 = !DILocation(line: 225, column: 9, scope: !2220)
!2344 = !DILocation(line: 226, column: 4, scope: !2221)
!2345 = !DILocation(line: 226, column: 4, scope: !2220)
!2346 = !DILocation(line: 197, column: 37, scope: !2221)
!2347 = !DILocation(line: 197, column: 4, scope: !2221)
!2348 = distinct !{!2348, !2287, !2349, !2030, !2031}
!2349 = !DILocation(line: 226, column: 4, scope: !2222)
!2350 = !DILocation(line: 227, column: 3, scope: !2223)
!2351 = !DILocation(line: 228, column: 41, scope: !2225)
!2352 = !DILocation(line: 228, column: 48, scope: !2225)
!2353 = !DILocation(line: 228, column: 54, scope: !2225)
!2354 = !DILocation(line: 228, column: 46, scope: !2225)
!2355 = !DILocation(line: 228, column: 8, scope: !2225)
!2356 = !DILocation(line: 229, column: 2, scope: !2225)
!2357 = !DILocation(line: 183, column: 41, scope: !2226)
!2358 = !DILocation(line: 183, column: 2, scope: !2226)
!2359 = distinct !{!2359, !2256, !2360, !2030, !2031}
!2360 = !DILocation(line: 229, column: 2, scope: !2227)
!2361 = !DILocation(line: 232, column: 19, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 232, column: 6)
!2363 = !DILocation(line: 232, column: 6, scope: !2362)
!2364 = !DILocation(line: 232, column: 30, scope: !2362)
!2365 = !DILocation(line: 232, column: 6, scope: !2207)
!2366 = !DILocation(line: 233, column: 3, scope: !2362)
!2367 = !DILocation(line: 235, column: 9, scope: !2207)
!2368 = !DILocation(line: 235, column: 2, scope: !2207)
!2369 = !DILocation(line: 236, column: 1, scope: !2207)
!2370 = distinct !DISubprogram(name: "hweight_long", scope: !2371, file: !2371, line: 95, type: !2372, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2374)
!2371 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!418, !418}
!2374 = !{!2375}
!2375 = !DILocalVariable(name: "w", arg: 1, scope: !2370, file: !2371, line: 95, type: !418)
!2376 = !DILocation(line: 95, column: 65, scope: !2370)
!2377 = !DILocation(line: 97, column: 41, scope: !2370)
!2378 = !DILocation(line: 97, column: 2, scope: !2370)
!2379 = distinct !DISubprogram(name: "intel_nhlt_get_endpoint_blob", scope: !2, file: !2, line: 290, type: !2380, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2383)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!2382, !282, !275, !137, !142, !142, !142, !142, !137, !142, !142}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2384 = !DILocalVariable(name: "dev", arg: 1, scope: !2379, file: !2, line: 290, type: !282)
!2385 = !DILocalVariable(name: "nhlt", arg: 2, scope: !2379, file: !2, line: 290, type: !275)
!2386 = !DILocalVariable(name: "bus_id", arg: 3, scope: !2379, file: !2, line: 291, type: !137)
!2387 = !DILocalVariable(name: "link_type", arg: 4, scope: !2379, file: !2, line: 291, type: !142)
!2388 = !DILocalVariable(name: "vbps", arg: 5, scope: !2379, file: !2, line: 291, type: !142)
!2389 = !DILocalVariable(name: "bps", arg: 6, scope: !2379, file: !2, line: 291, type: !142)
!2390 = !DILocalVariable(name: "num_ch", arg: 7, scope: !2379, file: !2, line: 292, type: !142)
!2391 = !DILocalVariable(name: "rate", arg: 8, scope: !2379, file: !2, line: 292, type: !137)
!2392 = !DILocalVariable(name: "dir", arg: 9, scope: !2379, file: !2, line: 292, type: !142)
!2393 = !DILocalVariable(name: "dev_type", arg: 10, scope: !2379, file: !2, line: 292, type: !142)
!2394 = !DILocalVariable(name: "cfg", scope: !2379, file: !2, line: 294, type: !2382)
!2395 = !DILocalVariable(name: "epnt", scope: !2379, file: !2, line: 295, type: !216)
!2396 = !DILocalVariable(name: "ignore_vbps", scope: !2379, file: !2, line: 296, type: !719)
!2397 = !DILocalVariable(name: "fmt", scope: !2379, file: !2, line: 297, type: !167)
!2398 = !DILocalVariable(name: "i", scope: !2379, file: !2, line: 298, type: !57)
!2399 = !DILocation(line: 290, column: 45, scope: !2379)
!2400 = !DILocation(line: 290, column: 74, scope: !2379)
!2401 = !DILocation(line: 291, column: 13, scope: !2379)
!2402 = !DILocation(line: 291, column: 24, scope: !2379)
!2403 = !DILocation(line: 291, column: 38, scope: !2379)
!2404 = !DILocation(line: 291, column: 47, scope: !2379)
!2405 = !DILocation(line: 292, column: 12, scope: !2379)
!2406 = !DILocation(line: 292, column: 24, scope: !2379)
!2407 = !DILocation(line: 292, column: 33, scope: !2379)
!2408 = !DILocation(line: 292, column: 41, scope: !2379)
!2409 = !DILocation(line: 294, column: 2, scope: !2379)
!2410 = !DILocation(line: 294, column: 28, scope: !2379)
!2411 = !DILocation(line: 295, column: 2, scope: !2379)
!2412 = !DILocation(line: 295, column: 24, scope: !2379)
!2413 = !DILocation(line: 296, column: 2, scope: !2379)
!2414 = !DILocation(line: 296, column: 7, scope: !2379)
!2415 = !DILocation(line: 297, column: 2, scope: !2379)
!2416 = !DILocation(line: 297, column: 19, scope: !2379)
!2417 = !DILocation(line: 298, column: 2, scope: !2379)
!2418 = !DILocation(line: 298, column: 6, scope: !2379)
!2419 = !DILocation(line: 300, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 300, column: 6)
!2421 = !DILocation(line: 300, column: 6, scope: !2379)
!2422 = !DILocation(line: 301, column: 3, scope: !2420)
!2423 = !DILocation(line: 306, column: 6, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 306, column: 6)
!2425 = !DILocation(line: 306, column: 16, scope: !2424)
!2426 = !DILocation(line: 306, column: 34, scope: !2424)
!2427 = !DILocation(line: 306, column: 37, scope: !2424)
!2428 = !DILocation(line: 306, column: 41, scope: !2424)
!2429 = !DILocation(line: 306, column: 47, scope: !2424)
!2430 = !DILocation(line: 306, column: 51, scope: !2424)
!2431 = !DILocation(line: 306, column: 56, scope: !2424)
!2432 = !DILocation(line: 306, column: 62, scope: !2424)
!2433 = !DILocation(line: 306, column: 65, scope: !2424)
!2434 = !DILocation(line: 306, column: 70, scope: !2424)
!2435 = !DILocation(line: 306, column: 6, scope: !2379)
!2436 = !DILocation(line: 322, column: 15, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 306, column: 78)
!2438 = !DILocation(line: 323, column: 2, scope: !2437)
!2439 = !DILocation(line: 328, column: 33, scope: !2379)
!2440 = !DILocation(line: 328, column: 39, scope: !2379)
!2441 = !DILocation(line: 328, column: 7, scope: !2379)
!2442 = !DILocation(line: 330, column: 9, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 330, column: 2)
!2444 = !DILocation(line: 330, column: 7, scope: !2443)
!2445 = !DILocation(line: 330, column: 14, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 330, column: 2)
!2447 = !DILocation(line: 330, column: 18, scope: !2446)
!2448 = !DILocation(line: 330, column: 24, scope: !2446)
!2449 = !DILocation(line: 330, column: 16, scope: !2446)
!2450 = !DILocation(line: 330, column: 2, scope: !2443)
!2451 = !DILocation(line: 331, column: 27, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !2, line: 331, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 330, column: 45)
!2454 = !DILocation(line: 331, column: 32, scope: !2452)
!2455 = !DILocation(line: 331, column: 38, scope: !2452)
!2456 = !DILocation(line: 331, column: 46, scope: !2452)
!2457 = !DILocation(line: 331, column: 57, scope: !2452)
!2458 = !DILocation(line: 331, column: 62, scope: !2452)
!2459 = !DILocation(line: 331, column: 7, scope: !2452)
!2460 = !DILocation(line: 331, column: 7, scope: !2453)
!2461 = !DILocation(line: 332, column: 30, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 331, column: 73)
!2463 = !DILocation(line: 332, column: 36, scope: !2462)
!2464 = !DILocation(line: 332, column: 43, scope: !2462)
!2465 = !DILocation(line: 332, column: 50, scope: !2462)
!2466 = !DILocation(line: 332, column: 56, scope: !2462)
!2467 = !DILocation(line: 332, column: 63, scope: !2462)
!2468 = !DILocation(line: 332, column: 48, scope: !2462)
!2469 = !DILocation(line: 332, column: 8, scope: !2462)
!2470 = !DILocation(line: 334, column: 32, scope: !2462)
!2471 = !DILocation(line: 334, column: 37, scope: !2462)
!2472 = !DILocation(line: 334, column: 42, scope: !2462)
!2473 = !DILocation(line: 334, column: 50, scope: !2462)
!2474 = !DILocation(line: 335, column: 11, scope: !2462)
!2475 = !DILocation(line: 335, column: 17, scope: !2462)
!2476 = !DILocation(line: 335, column: 22, scope: !2462)
!2477 = !{i8 0, i8 2}
!2478 = !DILocation(line: 334, column: 10, scope: !2462)
!2479 = !DILocation(line: 334, column: 8, scope: !2462)
!2480 = !DILocation(line: 336, column: 8, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 336, column: 8)
!2482 = !DILocation(line: 336, column: 8, scope: !2462)
!2483 = !DILocation(line: 337, column: 12, scope: !2481)
!2484 = !DILocation(line: 337, column: 5, scope: !2481)
!2485 = !DILocation(line: 338, column: 3, scope: !2462)
!2486 = !DILocation(line: 340, column: 41, scope: !2453)
!2487 = !DILocation(line: 340, column: 48, scope: !2453)
!2488 = !DILocation(line: 340, column: 54, scope: !2453)
!2489 = !DILocation(line: 340, column: 46, scope: !2453)
!2490 = !DILocation(line: 340, column: 8, scope: !2453)
!2491 = !DILocation(line: 341, column: 2, scope: !2453)
!2492 = !DILocation(line: 330, column: 41, scope: !2446)
!2493 = !DILocation(line: 330, column: 2, scope: !2446)
!2494 = distinct !{!2494, !2450, !2495, !2030, !2031}
!2495 = !DILocation(line: 341, column: 2, scope: !2443)
!2496 = !DILocation(line: 343, column: 2, scope: !2379)
!2497 = !DILocation(line: 344, column: 1, scope: !2379)
!2498 = distinct !DISubprogram(name: "nhlt_check_ep_match", scope: !2, file: !2, line: 272, type: !2499, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!719, !282, !216, !137, !142, !142, !142}
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507}
!2502 = !DILocalVariable(name: "dev", arg: 1, scope: !2498, file: !2, line: 272, type: !282)
!2503 = !DILocalVariable(name: "epnt", arg: 2, scope: !2498, file: !2, line: 272, type: !216)
!2504 = !DILocalVariable(name: "bus_id", arg: 3, scope: !2498, file: !2, line: 273, type: !137)
!2505 = !DILocalVariable(name: "link_type", arg: 4, scope: !2498, file: !2, line: 273, type: !142)
!2506 = !DILocalVariable(name: "dir", arg: 5, scope: !2498, file: !2, line: 273, type: !142)
!2507 = !DILocalVariable(name: "dev_type", arg: 6, scope: !2498, file: !2, line: 273, type: !142)
!2508 = !DILocation(line: 272, column: 48, scope: !2498)
!2509 = !DILocation(line: 272, column: 75, scope: !2498)
!2510 = !DILocation(line: 273, column: 9, scope: !2498)
!2511 = !DILocation(line: 273, column: 20, scope: !2498)
!2512 = !DILocation(line: 273, column: 34, scope: !2498)
!2513 = !DILocation(line: 273, column: 42, scope: !2498)
!2514 = !DILocation(line: 279, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 279, column: 6)
!2516 = !DILocation(line: 279, column: 13, scope: !2515)
!2517 = !DILocation(line: 279, column: 31, scope: !2515)
!2518 = !DILocation(line: 279, column: 28, scope: !2515)
!2519 = !DILocation(line: 279, column: 39, scope: !2515)
!2520 = !DILocation(line: 280, column: 7, scope: !2515)
!2521 = !DILocation(line: 280, column: 13, scope: !2515)
!2522 = !DILocation(line: 280, column: 25, scope: !2515)
!2523 = !DILocation(line: 280, column: 22, scope: !2515)
!2524 = !DILocation(line: 280, column: 36, scope: !2515)
!2525 = !DILocation(line: 281, column: 7, scope: !2515)
!2526 = !DILocation(line: 281, column: 13, scope: !2515)
!2527 = !DILocation(line: 281, column: 26, scope: !2515)
!2528 = !DILocation(line: 281, column: 23, scope: !2515)
!2529 = !DILocation(line: 279, column: 6, scope: !2498)
!2530 = !DILocation(line: 282, column: 3, scope: !2515)
!2531 = !DILocation(line: 285, column: 9, scope: !2498)
!2532 = !DILocation(line: 285, column: 15, scope: !2498)
!2533 = !DILocation(line: 285, column: 24, scope: !2498)
!2534 = !DILocation(line: 285, column: 42, scope: !2498)
!2535 = !DILocation(line: 286, column: 9, scope: !2498)
!2536 = !DILocation(line: 286, column: 15, scope: !2498)
!2537 = !DILocation(line: 286, column: 30, scope: !2498)
!2538 = !DILocation(line: 286, column: 27, scope: !2498)
!2539 = !DILocation(line: 285, column: 2, scope: !2498)
!2540 = !DILocation(line: 287, column: 1, scope: !2498)
!2541 = distinct !DISubprogram(name: "nhlt_get_specific_cfg", scope: !2, file: !2, line: 240, type: !2542, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!2382, !282, !167, !142, !137, !142, !142, !719}
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2555, !2556, !2557}
!2545 = !DILocalVariable(name: "dev", arg: 1, scope: !2541, file: !2, line: 240, type: !282)
!2546 = !DILocalVariable(name: "fmt", arg: 2, scope: !2541, file: !2, line: 240, type: !167)
!2547 = !DILocalVariable(name: "num_ch", arg: 3, scope: !2541, file: !2, line: 240, type: !142)
!2548 = !DILocalVariable(name: "rate", arg: 4, scope: !2541, file: !2, line: 241, type: !137)
!2549 = !DILocalVariable(name: "vbps", arg: 5, scope: !2541, file: !2, line: 241, type: !142)
!2550 = !DILocalVariable(name: "bps", arg: 6, scope: !2541, file: !2, line: 241, type: !142)
!2551 = !DILocalVariable(name: "ignore_vbps", arg: 7, scope: !2541, file: !2, line: 241, type: !719)
!2552 = !DILocalVariable(name: "cfg", scope: !2541, file: !2, line: 243, type: !210)
!2553 = !DILocalVariable(name: "wfmt", scope: !2541, file: !2, line: 244, type: !2554)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2555 = !DILocalVariable(name: "_bps", scope: !2541, file: !2, line: 245, type: !182)
!2556 = !DILocalVariable(name: "_vbps", scope: !2541, file: !2, line: 245, type: !182)
!2557 = !DILocalVariable(name: "i", scope: !2541, file: !2, line: 246, type: !57)
!2558 = !DILocation(line: 240, column: 38, scope: !2541)
!2559 = !DILocation(line: 240, column: 60, scope: !2541)
!2560 = !DILocation(line: 240, column: 68, scope: !2541)
!2561 = !DILocation(line: 241, column: 13, scope: !2541)
!2562 = !DILocation(line: 241, column: 22, scope: !2541)
!2563 = !DILocation(line: 241, column: 31, scope: !2541)
!2564 = !DILocation(line: 241, column: 41, scope: !2541)
!2565 = !DILocation(line: 243, column: 2, scope: !2541)
!2566 = !DILocation(line: 243, column: 23, scope: !2541)
!2567 = !DILocation(line: 243, column: 29, scope: !2541)
!2568 = !DILocation(line: 243, column: 34, scope: !2541)
!2569 = !DILocation(line: 244, column: 2, scope: !2541)
!2570 = !DILocation(line: 244, column: 18, scope: !2541)
!2571 = !DILocation(line: 245, column: 2, scope: !2541)
!2572 = !DILocation(line: 245, column: 6, scope: !2541)
!2573 = !DILocation(line: 245, column: 12, scope: !2541)
!2574 = !DILocation(line: 246, column: 2, scope: !2541)
!2575 = !DILocation(line: 246, column: 6, scope: !2541)
!2576 = !DILocation(line: 250, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 250, column: 2)
!2578 = !DILocation(line: 250, column: 7, scope: !2577)
!2579 = !DILocation(line: 250, column: 14, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !2, line: 250, column: 2)
!2581 = !DILocation(line: 250, column: 18, scope: !2580)
!2582 = !DILocation(line: 250, column: 23, scope: !2580)
!2583 = !DILocation(line: 250, column: 16, scope: !2580)
!2584 = !DILocation(line: 250, column: 2, scope: !2577)
!2585 = !DILocation(line: 251, column: 11, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2580, file: !2, line: 250, column: 39)
!2587 = !DILocation(line: 251, column: 16, scope: !2586)
!2588 = !DILocation(line: 251, column: 24, scope: !2586)
!2589 = !DILocation(line: 251, column: 8, scope: !2586)
!2590 = !DILocation(line: 252, column: 10, scope: !2586)
!2591 = !DILocation(line: 252, column: 16, scope: !2586)
!2592 = !DILocation(line: 252, column: 8, scope: !2586)
!2593 = !DILocation(line: 253, column: 11, scope: !2586)
!2594 = !DILocation(line: 253, column: 16, scope: !2586)
!2595 = !DILocation(line: 253, column: 24, scope: !2586)
!2596 = !DILocation(line: 253, column: 31, scope: !2586)
!2597 = !DILocation(line: 253, column: 9, scope: !2586)
!2598 = !DILocation(line: 262, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 262, column: 7)
!2600 = !DILocation(line: 262, column: 13, scope: !2599)
!2601 = !DILocation(line: 262, column: 25, scope: !2599)
!2602 = !DILocation(line: 262, column: 22, scope: !2599)
!2603 = !DILocation(line: 262, column: 32, scope: !2599)
!2604 = !DILocation(line: 262, column: 35, scope: !2599)
!2605 = !DILocation(line: 262, column: 41, scope: !2599)
!2606 = !DILocation(line: 262, column: 60, scope: !2599)
!2607 = !DILocation(line: 262, column: 57, scope: !2599)
!2608 = !DILocation(line: 262, column: 65, scope: !2599)
!2609 = !DILocation(line: 263, column: 8, scope: !2599)
!2610 = !DILocation(line: 263, column: 20, scope: !2599)
!2611 = !DILocation(line: 263, column: 23, scope: !2599)
!2612 = !DILocation(line: 263, column: 31, scope: !2599)
!2613 = !DILocation(line: 263, column: 28, scope: !2599)
!2614 = !DILocation(line: 263, column: 38, scope: !2599)
!2615 = !DILocation(line: 263, column: 41, scope: !2599)
!2616 = !DILocation(line: 263, column: 48, scope: !2599)
!2617 = !DILocation(line: 263, column: 45, scope: !2599)
!2618 = !DILocation(line: 262, column: 7, scope: !2586)
!2619 = !DILocation(line: 264, column: 12, scope: !2599)
!2620 = !DILocation(line: 264, column: 17, scope: !2599)
!2621 = !DILocation(line: 264, column: 4, scope: !2599)
!2622 = !DILocation(line: 266, column: 33, scope: !2586)
!2623 = !DILocation(line: 266, column: 38, scope: !2586)
!2624 = !DILocation(line: 266, column: 45, scope: !2586)
!2625 = !DILocation(line: 266, column: 52, scope: !2586)
!2626 = !DILocation(line: 266, column: 57, scope: !2586)
!2627 = !DILocation(line: 266, column: 64, scope: !2586)
!2628 = !DILocation(line: 266, column: 50, scope: !2586)
!2629 = !DILocation(line: 266, column: 7, scope: !2586)
!2630 = !DILocation(line: 267, column: 2, scope: !2586)
!2631 = !DILocation(line: 250, column: 35, scope: !2580)
!2632 = !DILocation(line: 250, column: 2, scope: !2580)
!2633 = distinct !{!2633, !2584, !2634, !2030, !2031}
!2634 = !DILocation(line: 267, column: 2, scope: !2577)
!2635 = !DILocation(line: 269, column: 2, scope: !2541)
!2636 = !DILocation(line: 270, column: 1, scope: !2541)
!2637 = distinct !DISubprogram(name: "__arch_hweight64", scope: !2638, file: !2638, line: 43, type: !2639, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2641)
!2638 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!418, !232}
!2641 = !{!2642, !2643}
!2642 = !DILocalVariable(name: "w", arg: 1, scope: !2637, file: !2638, line: 43, type: !232)
!2643 = !DILocalVariable(name: "res", scope: !2637, file: !2638, line: 45, type: !418)
!2644 = !DILocation(line: 43, column: 61, scope: !2637)
!2645 = !DILocation(line: 45, column: 2, scope: !2637)
!2646 = !DILocation(line: 45, column: 16, scope: !2637)
!2647 = !DILocation(line: 49, column: 15, scope: !2637)
!2648 = !DILocation(line: 47, column: 2, scope: !2637)
!2649 = !{i64 2148254850, i64 2148254878, i64 2148254884, i64 2148254900, i64 2148254916, i64 2148254943, i64 2148255276, i64 2148254576, i64 2148255282, i64 2148255330, i64 2148255394, i64 2148255458, i64 2148255515, i64 2148254657, i64 2148254682, i64 2148255722, i64 2148255852, i64 2148255783, i64 2148255866, i64 2148254774}
!2650 = !DILocation(line: 51, column: 9, scope: !2637)
!2651 = !DILocation(line: 52, column: 1, scope: !2637)
!2652 = !DILocation(line: 51, column: 2, scope: !2637)
