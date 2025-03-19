; ModuleID = 'drivers/acpi/sysfs.c'
source_filename = "drivers/acpi/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.sysfs_ops = type { ptr, ptr }
%struct.acpi_data_obj = type { ptr, ptr }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_table_attr = type { %struct.bin_attribute, [4 x i8], i32, [8 x i8], %struct.list_head }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.event_counter = type { i32, i32 }
%struct.acpi_hotplug_profile = type { %struct.kobject, ptr, ptr, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.acpi_data_attr = type { %struct.bin_attribute, i64 }
%struct.acpi_table_bert = type { %struct.acpi_table_header, i32, i64 }
%struct.acpi_table_ccel = type { %struct.acpi_table_header, i8, i8, i16, i64, i64 }

@__param_str_aml_debug_output = internal constant [22 x i8] c"acpi.aml_debug_output\00", align 16, !dbg !0
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 8
@acpi_gbl_enable_aml_debug_object = external dso_local global i8, align 1
@__param_aml_debug_output = internal constant %struct.kernel_param { ptr @__param_str_aml_debug_output, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @acpi_gbl_enable_aml_debug_object } }, section "__param", align 8, !dbg !1999
@__UNIQUE_ID_aml_debug_outputtype206 = internal constant [36 x i8] c"acpi.parmtype=aml_debug_output:byte\00", section ".modinfo", align 1, !dbg !2001
@__UNIQUE_ID_aml_debug_output207 = internal constant [75 x i8] c"acpi.parm=aml_debug_output:To enable/disable the ACPI Debug Object output.\00", section ".modinfo", align 1, !dbg !2006
@__param_str_acpica_version = internal constant [20 x i8] c"acpi.acpica_version\00", align 16, !dbg !2110
@__param_ops_acpica_version = internal constant %struct.kernel_param_ops { i32 0, ptr null, ptr @param_get_acpica_version, ptr null }, align 8, !dbg !2113
@__param_acpica_version = internal constant %struct.kernel_param { ptr @__param_str_acpica_version, ptr null, ptr @__param_ops_acpica_version, i16 292, i8 -1, i8 0, %union.anon.1 zeroinitializer }, section "__param", align 8, !dbg !2011
@dynamic_tables_kobj = internal global ptr null, align 8, !dbg !2073
@acpi_table_attr_list = internal global %struct.list_head { ptr @acpi_table_attr_list, ptr @acpi_table_attr_list }, align 8, !dbg !2129
@__setup_str_acpi_gpe_set_masked_gpes = internal constant [15 x i8] c"acpi_mask_gpe=\00", section ".init.rodata", align 1, !dbg !2131
@__setup_acpi_gpe_set_masked_gpes = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_gpe_set_masked_gpes, ptr @acpi_gpe_set_masked_gpes, i32 0 }, section ".init.setup", align 8, !dbg !2013
@acpi_masked_gpes_map = internal global [4 x i64] zeroinitializer, section ".init.data", align 16, !dbg !2108
@.str = private unnamed_addr constant [27 x i8] c"\016ACPI: Masking GPE 0x%x.\0A\00", align 1, !dbg !2024
@all_counters = internal global ptr null, align 8, !dbg !2081
@acpi_current_gpe_count = external dso_local global i32, align 4
@num_gpes = internal global i32 0, align 4, !dbg !2088
@num_counters = internal global i32 0, align 4, !dbg !2090
@all_attrs = internal global ptr null, align 8, !dbg !2092
@counter_attrs = internal global ptr null, align 8, !dbg !2094
@.str.1 = private unnamed_addr constant [8 x i8] c"gpe%02X\00", align 1, !dbg !2029
@.str.2 = private unnamed_addr constant [11 x i8] c"ff_pmtimer\00", align 1, !dbg !2031
@.str.3 = private unnamed_addr constant [12 x i8] c"ff_gbl_lock\00", align 1, !dbg !2036
@.str.4 = private unnamed_addr constant [11 x i8] c"ff_pwr_btn\00", align 1, !dbg !2041
@.str.5 = private unnamed_addr constant [11 x i8] c"ff_slp_btn\00", align 1, !dbg !2043
@.str.6 = private unnamed_addr constant [10 x i8] c"ff_rt_clk\00", align 1, !dbg !2045
@.str.7 = private unnamed_addr constant [8 x i8] c"gpe_all\00", align 1, !dbg !2050
@.str.8 = private unnamed_addr constant [4 x i8] c"sci\00", align 1, !dbg !2052
@.str.9 = private unnamed_addr constant [8 x i8] c"sci_not\00", align 1, !dbg !2054
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !2056
@.str.11 = private unnamed_addr constant [8 x i8] c"bug%02X\00", align 1, !dbg !2061
@interrupt_stats_attr_group = internal global %struct.attribute_group { ptr @.str.37, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !2191
@acpi_kobj = external dso_local global ptr, align 8
@hotplug_kobj = internal global ptr null, align 8, !dbg !2075
@acpi_hotplug_profile_ktype = internal constant %struct.kobj_type { ptr null, ptr @kobj_sysfs_ops, ptr @hotplug_profile_groups, ptr null, ptr null, ptr null }, align 8, !dbg !2193
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !2063
@.str.13 = private unnamed_addr constant [44 x i8] c"\013ACPI: Unable to add hotplug profile '%s'\0A\00", align 1, !dbg !2066
@.str.14 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1, !dbg !2071
@force_remove_attr = internal constant %struct.kobj_attribute { %struct.attribute { ptr @.str.45, i16 420 }, ptr @force_remove_show, ptr @force_remove_store }, align 8, !dbg !2238
@pm_profile_attr = internal constant %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @pm_profile_show, ptr null }, align 8, !dbg !2248
@acpi_irq_handled = hidden global i32 0, align 4, !dbg !2077
@acpi_irq_not_handled = hidden global i32 0, align 4, !dbg !2079
@.str.15 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1, !dbg !2115
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2117
@.str.17 = private unnamed_addr constant [41 x i8] c"\014ACPI: %4.4s: too many table instances\0A\00", align 1, !dbg !2122
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !2127
@acpi_gpe_count = internal global i32 0, align 4, !dbg !2136
@.str.19 = private unnamed_addr constant [4 x i8] c"%8u\00", align 1, !dbg !2138
@.str.20 = private unnamed_addr constant [5 x i8] c"  EN\00", align 1, !dbg !2140
@.str.21 = private unnamed_addr constant [5 x i8] c"    \00", align 1, !dbg !2143
@.str.22 = private unnamed_addr constant [5 x i8] c" STS\00", align 1, !dbg !2145
@.str.23 = private unnamed_addr constant [14 x i8] c" invalid     \00", align 1, !dbg !2147
@.str.24 = private unnamed_addr constant [14 x i8] c" enabled     \00", align 1, !dbg !2152
@.str.25 = private unnamed_addr constant [14 x i8] c" wake_enabled\00", align 1, !dbg !2154
@.str.26 = private unnamed_addr constant [14 x i8] c" disabled    \00", align 1, !dbg !2156
@.str.27 = private unnamed_addr constant [10 x i8] c" masked  \00", align 1, !dbg !2158
@.str.28 = private unnamed_addr constant [10 x i8] c" unmasked\00", align 1, !dbg !2160
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !2162
@.str.30 = private unnamed_addr constant [25 x i8] c"\014ACPI: Invalid GPE 0x%x\00", align 1, !dbg !2165
@.str.31 = private unnamed_addr constant [55 x i8] c"\014ACPI: Can not change Invalid GPE/Fixed Event status\0A\00", align 1, !dbg !2170
@.str.32 = private unnamed_addr constant [9 x i8] c"disable\0A\00", align 1, !dbg !2175
@.str.33 = private unnamed_addr constant [8 x i8] c"enable\0A\00", align 1, !dbg !2180
@.str.34 = private unnamed_addr constant [7 x i8] c"clear\0A\00", align 1, !dbg !2182
@.str.35 = private unnamed_addr constant [6 x i8] c"mask\0A\00", align 1, !dbg !2185
@.str.36 = private unnamed_addr constant [8 x i8] c"unmask\0A\00", align 1, !dbg !2187
@.str.37 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1, !dbg !2189
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@hotplug_profile_groups = internal global [2 x ptr] [ptr @hotplug_profile_group, ptr null], align 16, !dbg !2195
@hotplug_profile_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hotplug_profile_attrs, ptr null }, align 8, !dbg !2198
@hotplug_profile_attrs = internal global [2 x ptr] [ptr @hotplug_enabled_attr, ptr null], align 16, !dbg !2200
@hotplug_enabled_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 420 }, ptr @enabled_show, ptr @enabled_store }, align 8, !dbg !2205
@.str.38 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1, !dbg !2203
@.str.39 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !2207
@.str.40 = private unnamed_addr constant [7 x i8] c"tables\00", align 1, !dbg !2209
@tables_kobj = internal global ptr null, align 8, !dbg !2215
@.str.41 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !2211
@tables_data_kobj = internal global ptr null, align 8, !dbg !2217
@.str.42 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1, !dbg !2213
@acpi_data_objs = internal global [2 x %struct.acpi_data_obj] [%struct.acpi_data_obj { ptr @.str.43, ptr @acpi_bert_data_init }, %struct.acpi_data_obj { ptr @.str.44, ptr @acpi_ccel_data_init }], align 16, !dbg !2223
@.str.43 = private unnamed_addr constant [5 x i8] c"BERT\00", align 1, !dbg !2219
@.str.44 = private unnamed_addr constant [5 x i8] c"CCEL\00", align 1, !dbg !2221
@.str.45 = private unnamed_addr constant [13 x i8] c"force_remove\00", align 1, !dbg !2233
@.str.46 = private unnamed_addr constant [137 x i8] c"\013ACPI: Enabling force_remove is not supported anymore. Please report to linux-acpi@vger.kernel.org if you depend on this functionality\0A\00", align 1, !dbg !2241
@.str.47 = private unnamed_addr constant [11 x i8] c"pm_profile\00", align 1, !dbg !2246
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__param_aml_debug_output, ptr @__UNIQUE_ID_aml_debug_outputtype206, ptr @__UNIQUE_ID_aml_debug_output207, ptr @__param_acpica_version, ptr @__setup_acpi_gpe_set_masked_gpes, ptr @interrupt_stats_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_sysfs_table_handler(i32 noundef %event, ptr noundef %table, ptr noundef %context) #0 align 16 !dbg !2262 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %table_attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2266, metadata !DIExpression()), !dbg !2270
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !2267, metadata !DIExpression()), !dbg !2271
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2268, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_attr) #16, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %table_attr, metadata !2269, metadata !DIExpression()), !dbg !2274
  %0 = load i32, ptr %event.addr, align 4, !dbg !2275
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
    i32 3, label %sw.bb5
  ], !dbg !2276

sw.bb:                                            ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #17, !dbg !2277
  store ptr %call, ptr %table_attr, align 8, !dbg !2279
  %1 = load ptr, ptr %table_attr, align 8, !dbg !2280
  %tobool = icmp ne ptr %1, null, !dbg !2280
  br i1 %tobool, label %if.end, label %if.then, !dbg !2282

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %retval, align 4, !dbg !2283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2283

if.end:                                           ; preds = %sw.bb
  %2 = load ptr, ptr @dynamic_tables_kobj, align 8, !dbg !2284
  %3 = load ptr, ptr %table_attr, align 8, !dbg !2286
  %4 = load ptr, ptr %table.addr, align 8, !dbg !2287
  %call1 = call i32 @acpi_table_attr_init(ptr noundef %2, ptr noundef %3, ptr noundef %4) #18, !dbg !2288
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2288
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2289

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %table_attr, align 8, !dbg !2290
  call void @kfree(ptr noundef %5) #18, !dbg !2292
  store i32 1, ptr %retval, align 4, !dbg !2293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2293

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %table_attr, align 8, !dbg !2294
  %node = getelementptr inbounds %struct.acpi_table_attr, ptr %6, i32 0, i32 4, !dbg !2295
  call void @list_add_tail(ptr noundef %node, ptr noundef @acpi_table_attr_list) #18, !dbg !2296
  br label %sw.epilog, !dbg !2297

sw.bb5:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !2298

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !2299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2299

sw.epilog:                                        ; preds = %sw.bb5, %if.end4
  store i32 0, ptr %retval, align 4, !dbg !2300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2300

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_attr) #16, !dbg !2301
  %7 = load i32, ptr %retval, align 4, !dbg !2301
  ret i32 %7, !dbg !2301
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2302 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2306, metadata !DIExpression()), !dbg !2308
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2307, metadata !DIExpression()), !dbg !2309
  %0 = load i64, ptr %size.addr, align 8, !dbg !2310
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2311
  %or = or i32 %1, 256, !dbg !2312
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !2313
  ret ptr %call, !dbg !2314
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_table_attr_init(ptr noundef %tables_obj, ptr noundef %table_attr, ptr noundef %table_header) #0 align 16 !dbg !2315 {
entry:
  %retval = alloca i32, align 4
  %tables_obj.addr = alloca ptr, align 8
  %table_attr.addr = alloca ptr, align 8
  %table_header.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %instance_str = alloca [4 x i8], align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %tmp24 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tables_obj, ptr %tables_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tables_obj.addr, metadata !2332, metadata !DIExpression()), !dbg !2344
  store ptr %table_attr, ptr %table_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_attr.addr, metadata !2333, metadata !DIExpression()), !dbg !2345
  store ptr %table_header, ptr %table_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_header.addr, metadata !2334, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #16, !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %header, metadata !2335, metadata !DIExpression()), !dbg !2348
  store ptr null, ptr %header, align 8, !dbg !2348
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #16, !dbg !2349
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !2336, metadata !DIExpression()), !dbg !2350
  store ptr null, ptr %attr, align 8, !dbg !2350
  call void @llvm.lifetime.start.p0(i64 4, ptr %instance_str) #16, !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %instance_str, metadata !2337, metadata !DIExpression()), !dbg !2352
  br label %do.body, !dbg !2353

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2354

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2354

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %table_header.addr, align 8, !dbg !2356
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %0, i32 0, i32 0, !dbg !2356
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !2356
  %1 = ptrtoint ptr %arraydecay to i64, !dbg !2356
  %2 = inttoptr i64 %1 to ptr, !dbg !2356
  %3 = load i32, ptr %2, align 4, !dbg !2356
  %4 = load ptr, ptr %table_attr.addr, align 8, !dbg !2356
  %name = getelementptr inbounds %struct.acpi_table_attr, ptr %4, i32 0, i32 1, !dbg !2356
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !2356
  %5 = ptrtoint ptr %arraydecay1 to i64, !dbg !2356
  %6 = inttoptr i64 %5 to ptr, !dbg !2356
  store i32 %3, ptr %6, align 4, !dbg !2356
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2338, metadata !DIExpression()), !dbg !2357
  %7 = load ptr, ptr @acpi_table_attr_list, align 8, !dbg !2357
  store ptr %7, ptr %__mptr, align 8, !dbg !2357
  %8 = load ptr, ptr %__mptr, align 8, !dbg !2357
  %add.ptr = getelementptr i8, ptr %8, i64 -80, !dbg !2357
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2358
  %9 = load ptr, ptr %tmp, align 8, !dbg !2357
  store ptr %9, ptr %attr, align 8, !dbg !2358
  br label %for.cond, !dbg !2358

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load ptr, ptr %attr, align 8, !dbg !2359
  %node = getelementptr inbounds %struct.acpi_table_attr, ptr %10, i32 0, i32 4, !dbg !2359
  %cmp = icmp eq ptr %node, @acpi_table_attr_list, !dbg !2359
  %lnot = xor i1 %cmp, true, !dbg !2359
  br i1 %lnot, label %for.body, label %for.end, !dbg !2358

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %table_attr.addr, align 8, !dbg !2360
  %name2 = getelementptr inbounds %struct.acpi_table_attr, ptr %11, i32 0, i32 1, !dbg !2360
  %arraydecay3 = getelementptr inbounds [4 x i8], ptr %name2, i64 0, i64 0, !dbg !2360
  %12 = ptrtoint ptr %arraydecay3 to i64, !dbg !2360
  %13 = inttoptr i64 %12 to ptr, !dbg !2360
  %14 = load i32, ptr %13, align 4, !dbg !2360
  %15 = load ptr, ptr %attr, align 8, !dbg !2360
  %name4 = getelementptr inbounds %struct.acpi_table_attr, ptr %15, i32 0, i32 1, !dbg !2360
  %arraydecay5 = getelementptr inbounds [4 x i8], ptr %name4, i64 0, i64 0, !dbg !2360
  %16 = ptrtoint ptr %arraydecay5 to i64, !dbg !2360
  %17 = inttoptr i64 %16 to ptr, !dbg !2360
  %18 = load i32, ptr %17, align 4, !dbg !2360
  %cmp6 = icmp eq i32 %14, %18, !dbg !2360
  br i1 %cmp6, label %if.then, label %if.end12, !dbg !2363

if.then:                                          ; preds = %for.body
  %19 = load ptr, ptr %table_attr.addr, align 8, !dbg !2364
  %instance = getelementptr inbounds %struct.acpi_table_attr, ptr %19, i32 0, i32 2, !dbg !2366
  %20 = load i32, ptr %instance, align 4, !dbg !2366
  %21 = load ptr, ptr %attr, align 8, !dbg !2367
  %instance7 = getelementptr inbounds %struct.acpi_table_attr, ptr %21, i32 0, i32 2, !dbg !2368
  %22 = load i32, ptr %instance7, align 4, !dbg !2368
  %cmp8 = icmp slt i32 %20, %22, !dbg !2369
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !2370

if.then9:                                         ; preds = %if.then
  %23 = load ptr, ptr %attr, align 8, !dbg !2371
  %instance10 = getelementptr inbounds %struct.acpi_table_attr, ptr %23, i32 0, i32 2, !dbg !2372
  %24 = load i32, ptr %instance10, align 4, !dbg !2372
  %25 = load ptr, ptr %table_attr.addr, align 8, !dbg !2373
  %instance11 = getelementptr inbounds %struct.acpi_table_attr, ptr %25, i32 0, i32 2, !dbg !2374
  store i32 %24, ptr %instance11, align 4, !dbg !2375
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end12, !dbg !2368

if.end12:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !2376

for.inc:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #16, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !2341, metadata !DIExpression()), !dbg !2377
  %26 = load ptr, ptr %attr, align 8, !dbg !2377
  %node14 = getelementptr inbounds %struct.acpi_table_attr, ptr %26, i32 0, i32 4, !dbg !2377
  %next = getelementptr inbounds %struct.list_head, ptr %node14, i32 0, i32 0, !dbg !2377
  %27 = load ptr, ptr %next, align 8, !dbg !2377
  store ptr %27, ptr %__mptr13, align 8, !dbg !2377
  %28 = load ptr, ptr %__mptr13, align 8, !dbg !2377
  %add.ptr16 = getelementptr i8, ptr %28, i64 -80, !dbg !2377
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #16, !dbg !2359
  %29 = load ptr, ptr %tmp15, align 8, !dbg !2377
  store ptr %29, ptr %attr, align 8, !dbg !2359
  br label %for.cond, !dbg !2359, !llvm.loop !2378

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %table_attr.addr, align 8, !dbg !2382
  %instance17 = getelementptr inbounds %struct.acpi_table_attr, ptr %30, i32 0, i32 2, !dbg !2383
  %31 = load i32, ptr %instance17, align 4, !dbg !2384
  %inc = add i32 %31, 1, !dbg !2384
  store i32 %inc, ptr %instance17, align 4, !dbg !2384
  %32 = load ptr, ptr %table_attr.addr, align 8, !dbg !2385
  %instance18 = getelementptr inbounds %struct.acpi_table_attr, ptr %32, i32 0, i32 2, !dbg !2387
  %33 = load i32, ptr %instance18, align 4, !dbg !2387
  %cmp19 = icmp sgt i32 %33, 999, !dbg !2388
  br i1 %cmp19, label %if.then20, label %if.end27, !dbg !2389

if.then20:                                        ; preds = %for.end
  br label %do.body21, !dbg !2390

do.body21:                                        ; preds = %if.then20
  br label %do.cond22, !dbg !2393

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2393

do.end23:                                         ; preds = %do.cond22
  %34 = load ptr, ptr %table_attr.addr, align 8, !dbg !2390
  %name25 = getelementptr inbounds %struct.acpi_table_attr, ptr %34, i32 0, i32 1, !dbg !2390
  %arraydecay26 = getelementptr inbounds [4 x i8], ptr %name25, i64 0, i64 0, !dbg !2390
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, ptr noundef %arraydecay26) #19, !dbg !2390
  store i32 %call, ptr %tmp24, align 4, !dbg !2393
  %35 = load i32, ptr %tmp24, align 4, !dbg !2390
  store i32 -34, ptr %retval, align 4, !dbg !2395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2395

if.end27:                                         ; preds = %for.end
  %36 = load ptr, ptr %table_header.addr, align 8, !dbg !2396
  %signature28 = getelementptr inbounds %struct.acpi_table_header, ptr %36, i32 0, i32 0, !dbg !2396
  %arraydecay29 = getelementptr inbounds [4 x i8], ptr %signature28, i64 0, i64 0, !dbg !2396
  %37 = ptrtoint ptr %arraydecay29 to i64, !dbg !2396
  %38 = inttoptr i64 %37 to ptr, !dbg !2396
  %39 = load i32, ptr %38, align 4, !dbg !2396
  %40 = load ptr, ptr %table_attr.addr, align 8, !dbg !2396
  %filename = getelementptr inbounds %struct.acpi_table_attr, ptr %40, i32 0, i32 3, !dbg !2396
  %arraydecay30 = getelementptr inbounds [8 x i8], ptr %filename, i64 0, i64 0, !dbg !2396
  %41 = ptrtoint ptr %arraydecay30 to i64, !dbg !2396
  %42 = inttoptr i64 %41 to ptr, !dbg !2396
  store i32 %39, ptr %42, align 4, !dbg !2396
  %43 = load ptr, ptr %table_attr.addr, align 8, !dbg !2397
  %filename31 = getelementptr inbounds %struct.acpi_table_attr, ptr %43, i32 0, i32 3, !dbg !2398
  %arrayidx = getelementptr [8 x i8], ptr %filename31, i64 0, i64 4, !dbg !2397
  store i8 0, ptr %arrayidx, align 4, !dbg !2399
  %44 = load ptr, ptr %table_attr.addr, align 8, !dbg !2400
  %instance32 = getelementptr inbounds %struct.acpi_table_attr, ptr %44, i32 0, i32 2, !dbg !2402
  %45 = load i32, ptr %instance32, align 4, !dbg !2402
  %cmp33 = icmp sgt i32 %45, 1, !dbg !2403
  br i1 %cmp33, label %if.then39, label %lor.lhs.false, !dbg !2404

lor.lhs.false:                                    ; preds = %if.end27
  %46 = load ptr, ptr %table_attr.addr, align 8, !dbg !2405
  %instance34 = getelementptr inbounds %struct.acpi_table_attr, ptr %46, i32 0, i32 2, !dbg !2406
  %47 = load i32, ptr %instance34, align 4, !dbg !2406
  %cmp35 = icmp eq i32 %47, 1, !dbg !2407
  br i1 %cmp35, label %land.lhs.true, label %if.end47, !dbg !2408

land.lhs.true:                                    ; preds = %lor.lhs.false
  %48 = load ptr, ptr %table_header.addr, align 8, !dbg !2409
  %signature36 = getelementptr inbounds %struct.acpi_table_header, ptr %48, i32 0, i32 0, !dbg !2410
  %arraydecay37 = getelementptr inbounds [4 x i8], ptr %signature36, i64 0, i64 0, !dbg !2409
  %call38 = call i32 @acpi_get_table(ptr noundef %arraydecay37, i32 noundef 2, ptr noundef %header) #18, !dbg !2411
  %tobool = icmp ne i32 %call38, 0, !dbg !2411
  br i1 %tobool, label %if.end47, label %if.then39, !dbg !2412

if.then39:                                        ; preds = %land.lhs.true, %if.end27
  %arraydecay40 = getelementptr inbounds [4 x i8], ptr %instance_str, i64 0, i64 0, !dbg !2413
  %49 = load ptr, ptr %table_attr.addr, align 8, !dbg !2415
  %instance41 = getelementptr inbounds %struct.acpi_table_attr, ptr %49, i32 0, i32 2, !dbg !2416
  %50 = load i32, ptr %instance41, align 4, !dbg !2416
  %call42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay40, i64 noundef 4, ptr noundef @.str.18, i32 noundef %50) #18, !dbg !2417
  %51 = load ptr, ptr %table_attr.addr, align 8, !dbg !2418
  %filename43 = getelementptr inbounds %struct.acpi_table_attr, ptr %51, i32 0, i32 3, !dbg !2419
  %arraydecay44 = getelementptr inbounds [8 x i8], ptr %filename43, i64 0, i64 0, !dbg !2418
  %arraydecay45 = getelementptr inbounds [4 x i8], ptr %instance_str, i64 0, i64 0, !dbg !2420
  %call46 = call ptr @strcat(ptr noundef %arraydecay44, ptr noundef %arraydecay45) #18, !dbg !2421
  br label %if.end47, !dbg !2422

if.end47:                                         ; preds = %if.then39, %land.lhs.true, %lor.lhs.false
  %52 = load ptr, ptr %table_header.addr, align 8, !dbg !2423
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %52, i32 0, i32 1, !dbg !2424
  %53 = load i32, ptr %length, align 1, !dbg !2424
  %conv = zext i32 %53 to i64, !dbg !2423
  %54 = load ptr, ptr %table_attr.addr, align 8, !dbg !2425
  %attr48 = getelementptr inbounds %struct.acpi_table_attr, ptr %54, i32 0, i32 0, !dbg !2426
  %size = getelementptr inbounds %struct.bin_attribute, ptr %attr48, i32 0, i32 1, !dbg !2427
  store i64 %conv, ptr %size, align 8, !dbg !2428
  %55 = load ptr, ptr %table_attr.addr, align 8, !dbg !2429
  %attr49 = getelementptr inbounds %struct.acpi_table_attr, ptr %55, i32 0, i32 0, !dbg !2430
  %read = getelementptr inbounds %struct.bin_attribute, ptr %attr49, i32 0, i32 4, !dbg !2431
  store ptr @acpi_table_show, ptr %read, align 8, !dbg !2432
  %56 = load ptr, ptr %table_attr.addr, align 8, !dbg !2433
  %filename50 = getelementptr inbounds %struct.acpi_table_attr, ptr %56, i32 0, i32 3, !dbg !2434
  %arraydecay51 = getelementptr inbounds [8 x i8], ptr %filename50, i64 0, i64 0, !dbg !2433
  %57 = load ptr, ptr %table_attr.addr, align 8, !dbg !2435
  %attr52 = getelementptr inbounds %struct.acpi_table_attr, ptr %57, i32 0, i32 0, !dbg !2436
  %attr53 = getelementptr inbounds %struct.bin_attribute, ptr %attr52, i32 0, i32 0, !dbg !2437
  %name54 = getelementptr inbounds %struct.attribute, ptr %attr53, i32 0, i32 0, !dbg !2438
  store ptr %arraydecay51, ptr %name54, align 8, !dbg !2439
  %58 = load ptr, ptr %table_attr.addr, align 8, !dbg !2440
  %attr55 = getelementptr inbounds %struct.acpi_table_attr, ptr %58, i32 0, i32 0, !dbg !2441
  %attr56 = getelementptr inbounds %struct.bin_attribute, ptr %attr55, i32 0, i32 0, !dbg !2442
  %mode = getelementptr inbounds %struct.attribute, ptr %attr56, i32 0, i32 1, !dbg !2443
  store i16 256, ptr %mode, align 8, !dbg !2444
  %59 = load ptr, ptr %tables_obj.addr, align 8, !dbg !2445
  %60 = load ptr, ptr %table_attr.addr, align 8, !dbg !2446
  %attr57 = getelementptr inbounds %struct.acpi_table_attr, ptr %60, i32 0, i32 0, !dbg !2447
  %call58 = call i32 @sysfs_create_bin_file(ptr noundef %59, ptr noundef %attr57) #18, !dbg !2448
  store i32 %call58, ptr %retval, align 4, !dbg !2449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2449

cleanup:                                          ; preds = %if.end47, %do.end23
  call void @llvm.lifetime.end.p0(i64 4, ptr %instance_str) #16, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #16, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #16, !dbg !2450
  %61 = load i32, ptr %retval, align 4, !dbg !2450
  ret i32 %61, !dbg !2450
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2451 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !2454 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2459, metadata !DIExpression()), !dbg !2461
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2460, metadata !DIExpression()), !dbg !2462
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2463
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2464
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2465
  %2 = load ptr, ptr %prev, align 8, !dbg !2465
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2466
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !2467
  ret void, !dbg !2468
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_gpe_set_masked_gpes(ptr noundef %val) #6 section ".init.text" align 16 !dbg !2469 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %gpe = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 1, ptr %gpe) #16, !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %gpe, metadata !2473, metadata !DIExpression()), !dbg !2478
  %0 = load ptr, ptr %val.addr, align 8, !dbg !2479
  %call = call i32 @kstrtou8(ptr noundef %0, i32 noundef 0, ptr noundef %gpe) #18, !dbg !2480
  store i32 %call, ptr %ret, align 4, !dbg !2481
  %1 = load i32, ptr %ret, align 4, !dbg !2482
  %tobool = icmp ne i32 %1, 0, !dbg !2482
  br i1 %tobool, label %if.then, label %if.else, !dbg !2484

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !dbg !2485
  %call1 = call i32 @bitmap_parselist(ptr noundef %2, ptr noundef @acpi_masked_gpes_map, i32 noundef 256) #18, !dbg !2487
  store i32 %call1, ptr %ret, align 4, !dbg !2488
  %3 = load i32, ptr %ret, align 4, !dbg !2489
  %tobool2 = icmp ne i32 %3, 0, !dbg !2489
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2491

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %ret, align 4, !dbg !2492
  store i32 %4, ptr %retval, align 4, !dbg !2493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2493

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2494

if.else:                                          ; preds = %entry
  %5 = load i8, ptr %gpe, align 1, !dbg !2495
  %conv = zext i8 %5 to i64, !dbg !2495
  call void @set_bit(i64 noundef %conv, ptr noundef @acpi_masked_gpes_map) #18, !dbg !2496
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  store i32 1, ptr %retval, align 4, !dbg !2497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2497

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %gpe) #16, !dbg !2498
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2498
  %6 = load i32, ptr %retval, align 4, !dbg !2498
  ret i32 %6, !dbg !2498
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_gpe_apply_masked_gpes() #6 section ".init.text" align 16 !dbg !2499 {
entry:
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %gpe = alloca i16, align 2
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.lifetime.start.p0(i64 2, ptr %gpe) #16, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %gpe, metadata !2503, metadata !DIExpression()), !dbg !2509
  store i16 0, ptr %gpe, align 2, !dbg !2510
  br label %for.cond, !dbg !2510

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %gpe, align 2, !dbg !2512
  %conv = zext i16 %0 to i64, !dbg !2512
  %call = call i64 @find_next_bit(ptr noundef @acpi_masked_gpes_map, i64 noundef 256, i64 noundef %conv) #18, !dbg !2512
  %conv1 = trunc i64 %call to i16, !dbg !2512
  store i16 %conv1, ptr %gpe, align 2, !dbg !2512
  %1 = load i16, ptr %gpe, align 2, !dbg !2512
  %conv2 = zext i16 %1 to i32, !dbg !2512
  %cmp = icmp slt i32 %conv2, 256, !dbg !2512
  br i1 %cmp, label %for.body, label %for.end, !dbg !2510

for.body:                                         ; preds = %for.cond
  %2 = load i16, ptr %gpe, align 2, !dbg !2514
  %conv4 = zext i16 %2 to i32, !dbg !2514
  %call5 = call i32 @acpi_get_gpe_device(i32 noundef %conv4, ptr noundef %handle) #18, !dbg !2516
  store i32 %call5, ptr %status, align 4, !dbg !2517
  %3 = load i32, ptr %status, align 4, !dbg !2518
  %tobool = icmp ne i32 %3, 0, !dbg !2518
  br i1 %tobool, label %if.end, label %if.then, !dbg !2520

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !2521

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2524

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2524

do.end:                                           ; preds = %do.cond
  %4 = load i16, ptr %gpe, align 2, !dbg !2521
  %conv6 = zext i16 %4 to i32, !dbg !2521
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %conv6) #19, !dbg !2521
  store i32 %call7, ptr %tmp, align 4, !dbg !2524
  %5 = load i32, ptr %tmp, align 4, !dbg !2521
  %6 = load ptr, ptr %handle, align 8, !dbg !2526
  %7 = load i16, ptr %gpe, align 2, !dbg !2527
  %conv8 = zext i16 %7 to i32, !dbg !2527
  %call9 = call i32 @acpi_mask_gpe(ptr noundef %6, i32 noundef %conv8, i8 noundef zeroext 1) #18, !dbg !2528
  br label %if.end, !dbg !2529

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc, !dbg !2530

for.inc:                                          ; preds = %if.end
  %8 = load i16, ptr %gpe, align 2, !dbg !2512
  %inc = add i16 %8, 1, !dbg !2512
  store i16 %inc, ptr %gpe, align 2, !dbg !2512
  br label %for.cond, !dbg !2512, !llvm.loop !2531

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 2, ptr %gpe) #16, !dbg !2533
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !2533
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !2533
  ret void, !dbg !2533
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !2534 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2541, metadata !DIExpression()), !dbg !2547
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2542, metadata !DIExpression()), !dbg !2548
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2543, metadata !DIExpression()), !dbg !2549
  %0 = load i64, ptr %size.addr, align 8, !dbg !2550
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2550
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2550

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2550
  %cmp = icmp ule i64 %2, 64, !dbg !2550
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2550

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2550
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2550
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2551

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2544, metadata !DIExpression()), !dbg !2553
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2554
  %5 = load i64, ptr %size.addr, align 8, !dbg !2554
  %cmp3 = icmp uge i64 %4, %5, !dbg !2554
  %lnot = xor i1 %cmp3, true, !dbg !2554
  %lnot4 = xor i1 %lnot, true, !dbg !2554
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2554
  %conv = sext i32 %lnot.ext to i64, !dbg !2554
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2554
  %tobool = icmp ne i64 %expval, 0, !dbg !2554
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2556

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2557
  store i64 %6, ptr %retval, align 8, !dbg !2558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2558

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2559
  %8 = load i64, ptr %7, align 8, !dbg !2560
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2561
  %shl = shl i64 1, %9, !dbg !2561
  %sub = sub i64 -1, %shl, !dbg !2561
  %add = add i64 %sub, 1, !dbg !2561
  %10 = load i64, ptr %size.addr, align 8, !dbg !2561
  %sub6 = sub i64 %10, 1, !dbg !2561
  %sub7 = sub i64 63, %sub6, !dbg !2561
  %shr = lshr i64 -1, %sub7, !dbg !2561
  %and = and i64 %add, %shr, !dbg !2561
  %add8 = add i64 0, %and, !dbg !2561
  %and9 = and i64 %8, %add8, !dbg !2562
  store i64 %and9, ptr %val, align 8, !dbg !2563
  %11 = load i64, ptr %val, align 8, !dbg !2564
  %tobool10 = icmp ne i64 %11, 0, !dbg !2564
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2564

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2565
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2565
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2565

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2565
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2565
  %cast = trunc i64 %15 to i32, !dbg !2565
  %conv12 = sext i32 %cast to i64, !dbg !2565
  br label %cond.end, !dbg !2565

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2565
  %call = call i64 @variable__ffs(i64 noundef %16) #18, !dbg !2565
  br label %cond.end, !dbg !2565

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2565
  br label %cond.end14, !dbg !2564

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2566
  br label %cond.end14, !dbg !2564

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2564
  store i64 %cond15, ptr %retval, align 8, !dbg !2567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2567

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !2568
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2569
  %19 = load i64, ptr %size.addr, align 8, !dbg !2570
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2571
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #18, !dbg !2572
  store i64 %call17, ptr %retval, align 8, !dbg !2573
  br label %return, !dbg !2573

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2574
  ret i64 %21, !dbg !2574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2575 dso_local i32 @acpi_get_gpe_device(i32 noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2580 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2584 dso_local i32 @acpi_mask_gpe(ptr noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_irq_stats_init() #0 align 16 !dbg !2587 {
entry:
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %buffer = alloca [12 x i8], align 1
  %name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2589, metadata !DIExpression()), !dbg !2598
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2599
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2590, metadata !DIExpression()), !dbg !2600
  %0 = load ptr, ptr @all_counters, align 8, !dbg !2601
  %tobool = icmp ne ptr %0, null, !dbg !2601
  br i1 %tobool, label %if.then, label %if.end, !dbg !2603

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !2604

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @acpi_current_gpe_count, align 4, !dbg !2605
  store i32 %1, ptr @num_gpes, align 4, !dbg !2606
  %2 = load i32, ptr @num_gpes, align 4, !dbg !2607
  %add = add i32 %2, 4, !dbg !2608
  %add1 = add i32 %add, 1, !dbg !2609
  %add2 = add i32 %add1, 4, !dbg !2610
  store i32 %add2, ptr @num_counters, align 4, !dbg !2611
  %3 = load i32, ptr @num_counters, align 4, !dbg !2612
  %add3 = add i32 %3, 1, !dbg !2613
  %conv = zext i32 %add3 to i64, !dbg !2612
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #20, !dbg !2614
  store ptr %call, ptr @all_attrs, align 8, !dbg !2615
  %4 = load ptr, ptr @all_attrs, align 8, !dbg !2616
  %cmp = icmp eq ptr %4, null, !dbg !2618
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2619

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !2620

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr @num_counters, align 4, !dbg !2621
  %conv7 = zext i32 %5 to i64, !dbg !2621
  %call8 = call noalias ptr @kcalloc(i64 noundef %conv7, i64 noundef 8, i32 noundef 3264) #20, !dbg !2622
  store ptr %call8, ptr @all_counters, align 8, !dbg !2623
  %6 = load ptr, ptr @all_counters, align 8, !dbg !2624
  %cmp9 = icmp eq ptr %6, null, !dbg !2626
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2627

if.then11:                                        ; preds = %if.end6
  br label %fail, !dbg !2628

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @acpi_install_global_event_handler(ptr noundef @acpi_global_event_handler, ptr noundef null) #18, !dbg !2629
  store i32 %call13, ptr %status, align 4, !dbg !2630
  %7 = load i32, ptr %status, align 4, !dbg !2631
  %tobool14 = icmp ne i32 %7, 0, !dbg !2631
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2633

if.then15:                                        ; preds = %if.end12
  br label %fail, !dbg !2634

if.end16:                                         ; preds = %if.end12
  %8 = load i32, ptr @num_counters, align 4, !dbg !2635
  %conv17 = zext i32 %8 to i64, !dbg !2635
  %call18 = call noalias ptr @kcalloc(i64 noundef %conv17, i64 noundef 32, i32 noundef 3264) #20, !dbg !2636
  store ptr %call18, ptr @counter_attrs, align 8, !dbg !2637
  %9 = load ptr, ptr @counter_attrs, align 8, !dbg !2638
  %cmp19 = icmp eq ptr %9, null, !dbg !2640
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2641

if.then21:                                        ; preds = %if.end16
  br label %fail, !dbg !2642

if.end22:                                         ; preds = %if.end16
  store i32 0, ptr %i, align 4, !dbg !2643
  br label %for.cond, !dbg !2644

for.cond:                                         ; preds = %for.inc, %if.end22
  %10 = load i32, ptr %i, align 4, !dbg !2645
  %11 = load i32, ptr @num_counters, align 4, !dbg !2646
  %cmp23 = icmp ult i32 %10, %11, !dbg !2647
  br i1 %cmp23, label %for.body, label %for.end, !dbg !2648

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 12, ptr %buffer) #16, !dbg !2649
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2591, metadata !DIExpression()), !dbg !2650
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !2651
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2595, metadata !DIExpression()), !dbg !2652
  %12 = load i32, ptr %i, align 4, !dbg !2653
  %13 = load i32, ptr @num_gpes, align 4, !dbg !2655
  %cmp25 = icmp ult i32 %12, %13, !dbg !2656
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !2657

if.then27:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2658
  %14 = load i32, ptr %i, align 4, !dbg !2659
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %14) #18, !dbg !2660
  br label %if.end111, !dbg !2660

if.else:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !2661
  %16 = load i32, ptr @num_gpes, align 4, !dbg !2663
  %add29 = add i32 %16, 0, !dbg !2664
  %cmp30 = icmp eq i32 %15, %add29, !dbg !2665
  br i1 %cmp30, label %if.then32, label %if.else35, !dbg !2666

if.then32:                                        ; preds = %if.else
  %arraydecay33 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2667
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay33, ptr noundef @.str.2) #18, !dbg !2668
  br label %if.end110, !dbg !2668

if.else35:                                        ; preds = %if.else
  %17 = load i32, ptr %i, align 4, !dbg !2669
  %18 = load i32, ptr @num_gpes, align 4, !dbg !2671
  %add36 = add i32 %18, 1, !dbg !2672
  %cmp37 = icmp eq i32 %17, %add36, !dbg !2673
  br i1 %cmp37, label %if.then39, label %if.else42, !dbg !2674

if.then39:                                        ; preds = %if.else35
  %arraydecay40 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2675
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay40, ptr noundef @.str.3) #18, !dbg !2676
  br label %if.end109, !dbg !2676

if.else42:                                        ; preds = %if.else35
  %19 = load i32, ptr %i, align 4, !dbg !2677
  %20 = load i32, ptr @num_gpes, align 4, !dbg !2679
  %add43 = add i32 %20, 2, !dbg !2680
  %cmp44 = icmp eq i32 %19, %add43, !dbg !2681
  br i1 %cmp44, label %if.then46, label %if.else49, !dbg !2682

if.then46:                                        ; preds = %if.else42
  %arraydecay47 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2683
  %call48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay47, ptr noundef @.str.4) #18, !dbg !2684
  br label %if.end108, !dbg !2684

if.else49:                                        ; preds = %if.else42
  %21 = load i32, ptr %i, align 4, !dbg !2685
  %22 = load i32, ptr @num_gpes, align 4, !dbg !2687
  %add50 = add i32 %22, 3, !dbg !2688
  %cmp51 = icmp eq i32 %21, %add50, !dbg !2689
  br i1 %cmp51, label %if.then53, label %if.else56, !dbg !2690

if.then53:                                        ; preds = %if.else49
  %arraydecay54 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2691
  %call55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay54, ptr noundef @.str.5) #18, !dbg !2692
  br label %if.end107, !dbg !2692

if.else56:                                        ; preds = %if.else49
  %23 = load i32, ptr %i, align 4, !dbg !2693
  %24 = load i32, ptr @num_gpes, align 4, !dbg !2695
  %add57 = add i32 %24, 4, !dbg !2696
  %cmp58 = icmp eq i32 %23, %add57, !dbg !2697
  br i1 %cmp58, label %if.then60, label %if.else63, !dbg !2698

if.then60:                                        ; preds = %if.else56
  %arraydecay61 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2699
  %call62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay61, ptr noundef @.str.6) #18, !dbg !2700
  br label %if.end106, !dbg !2700

if.else63:                                        ; preds = %if.else56
  %25 = load i32, ptr %i, align 4, !dbg !2701
  %26 = load i32, ptr @num_gpes, align 4, !dbg !2703
  %add64 = add i32 %26, 4, !dbg !2704
  %add65 = add i32 %add64, 1, !dbg !2705
  %add66 = add i32 %add65, 0, !dbg !2706
  %cmp67 = icmp eq i32 %25, %add66, !dbg !2707
  br i1 %cmp67, label %if.then69, label %if.else72, !dbg !2708

if.then69:                                        ; preds = %if.else63
  %arraydecay70 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2709
  %call71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay70, ptr noundef @.str.7) #18, !dbg !2710
  br label %if.end105, !dbg !2710

if.else72:                                        ; preds = %if.else63
  %27 = load i32, ptr %i, align 4, !dbg !2711
  %28 = load i32, ptr @num_gpes, align 4, !dbg !2713
  %add73 = add i32 %28, 4, !dbg !2714
  %add74 = add i32 %add73, 1, !dbg !2715
  %add75 = add i32 %add74, 1, !dbg !2716
  %cmp76 = icmp eq i32 %27, %add75, !dbg !2717
  br i1 %cmp76, label %if.then78, label %if.else81, !dbg !2718

if.then78:                                        ; preds = %if.else72
  %arraydecay79 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2719
  %call80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay79, ptr noundef @.str.8) #18, !dbg !2720
  br label %if.end104, !dbg !2720

if.else81:                                        ; preds = %if.else72
  %29 = load i32, ptr %i, align 4, !dbg !2721
  %30 = load i32, ptr @num_gpes, align 4, !dbg !2723
  %add82 = add i32 %30, 4, !dbg !2724
  %add83 = add i32 %add82, 1, !dbg !2725
  %add84 = add i32 %add83, 2, !dbg !2726
  %cmp85 = icmp eq i32 %29, %add84, !dbg !2727
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !2728

if.then87:                                        ; preds = %if.else81
  %arraydecay88 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2729
  %call89 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay88, ptr noundef @.str.9) #18, !dbg !2730
  br label %if.end103, !dbg !2730

if.else90:                                        ; preds = %if.else81
  %31 = load i32, ptr %i, align 4, !dbg !2731
  %32 = load i32, ptr @num_gpes, align 4, !dbg !2733
  %add91 = add i32 %32, 4, !dbg !2734
  %add92 = add i32 %add91, 1, !dbg !2735
  %add93 = add i32 %add92, 3, !dbg !2736
  %cmp94 = icmp eq i32 %31, %add93, !dbg !2737
  br i1 %cmp94, label %if.then96, label %if.else99, !dbg !2738

if.then96:                                        ; preds = %if.else90
  %arraydecay97 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2739
  %call98 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay97, ptr noundef @.str.10) #18, !dbg !2740
  br label %if.end102, !dbg !2740

if.else99:                                        ; preds = %if.else90
  %arraydecay100 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2741
  %33 = load i32, ptr %i, align 4, !dbg !2742
  %call101 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay100, ptr noundef @.str.11, i32 noundef %33) #18, !dbg !2743
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %if.then96
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then87
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then78
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then69
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then60
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then53
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then46
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then39
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then32
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then27
  %arraydecay112 = getelementptr inbounds [12 x i8], ptr %buffer, i64 0, i64 0, !dbg !2744
  %call113 = call noalias ptr @kstrdup(ptr noundef %arraydecay112, i32 noundef 3264) #18, !dbg !2745
  store ptr %call113, ptr %name, align 8, !dbg !2746
  %34 = load ptr, ptr %name, align 8, !dbg !2747
  %cmp114 = icmp eq ptr %34, null, !dbg !2749
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !2750

if.then116:                                       ; preds = %if.end111
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2751

if.end117:                                        ; preds = %if.end111
  br label %do.body, !dbg !2752

do.body:                                          ; preds = %if.end117
  br label %do.cond, !dbg !2753

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2753

do.end:                                           ; preds = %do.cond
  %35 = load ptr, ptr %name, align 8, !dbg !2755
  %36 = load ptr, ptr @counter_attrs, align 8, !dbg !2756
  %37 = load i32, ptr %i, align 4, !dbg !2757
  %idxprom = sext i32 %37 to i64, !dbg !2756
  %arrayidx = getelementptr %struct.kobj_attribute, ptr %36, i64 %idxprom, !dbg !2756
  %attr = getelementptr inbounds %struct.kobj_attribute, ptr %arrayidx, i32 0, i32 0, !dbg !2758
  %name118 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !2759
  store ptr %35, ptr %name118, align 8, !dbg !2760
  %38 = load ptr, ptr @counter_attrs, align 8, !dbg !2761
  %39 = load i32, ptr %i, align 4, !dbg !2762
  %idxprom119 = sext i32 %39 to i64, !dbg !2761
  %arrayidx120 = getelementptr %struct.kobj_attribute, ptr %38, i64 %idxprom119, !dbg !2761
  %attr121 = getelementptr inbounds %struct.kobj_attribute, ptr %arrayidx120, i32 0, i32 0, !dbg !2763
  %mode = getelementptr inbounds %struct.attribute, ptr %attr121, i32 0, i32 1, !dbg !2764
  store i16 420, ptr %mode, align 8, !dbg !2765
  %40 = load ptr, ptr @counter_attrs, align 8, !dbg !2766
  %41 = load i32, ptr %i, align 4, !dbg !2767
  %idxprom122 = sext i32 %41 to i64, !dbg !2766
  %arrayidx123 = getelementptr %struct.kobj_attribute, ptr %40, i64 %idxprom122, !dbg !2766
  %show = getelementptr inbounds %struct.kobj_attribute, ptr %arrayidx123, i32 0, i32 1, !dbg !2768
  store ptr @counter_show, ptr %show, align 8, !dbg !2769
  %42 = load ptr, ptr @counter_attrs, align 8, !dbg !2770
  %43 = load i32, ptr %i, align 4, !dbg !2771
  %idxprom124 = sext i32 %43 to i64, !dbg !2770
  %arrayidx125 = getelementptr %struct.kobj_attribute, ptr %42, i64 %idxprom124, !dbg !2770
  %store = getelementptr inbounds %struct.kobj_attribute, ptr %arrayidx125, i32 0, i32 2, !dbg !2772
  store ptr @counter_set, ptr %store, align 8, !dbg !2773
  %44 = load ptr, ptr @counter_attrs, align 8, !dbg !2774
  %45 = load i32, ptr %i, align 4, !dbg !2775
  %idxprom126 = sext i32 %45 to i64, !dbg !2774
  %arrayidx127 = getelementptr %struct.kobj_attribute, ptr %44, i64 %idxprom126, !dbg !2774
  %attr128 = getelementptr inbounds %struct.kobj_attribute, ptr %arrayidx127, i32 0, i32 0, !dbg !2776
  %46 = load ptr, ptr @all_attrs, align 8, !dbg !2777
  %47 = load i32, ptr %i, align 4, !dbg !2778
  %idxprom129 = sext i32 %47 to i64, !dbg !2777
  %arrayidx130 = getelementptr ptr, ptr %46, i64 %idxprom129, !dbg !2777
  store ptr %attr128, ptr %arrayidx130, align 8, !dbg !2779
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2780
  br label %cleanup, !dbg !2780

cleanup:                                          ; preds = %if.then116, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 12, ptr %buffer) #16, !dbg !2780
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup136 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2781

for.inc:                                          ; preds = %cleanup.cont
  %48 = load i32, ptr %i, align 4, !dbg !2782
  %inc = add i32 %48, 1, !dbg !2782
  store i32 %inc, ptr %i, align 4, !dbg !2782
  br label %for.cond, !dbg !2783, !llvm.loop !2784

for.end:                                          ; preds = %for.cond
  %49 = load ptr, ptr @all_attrs, align 8, !dbg !2786
  store ptr %49, ptr getelementptr inbounds (%struct.attribute_group, ptr @interrupt_stats_attr_group, i32 0, i32 3), align 8, !dbg !2787
  %50 = load ptr, ptr @acpi_kobj, align 8, !dbg !2788
  %call132 = call i32 @sysfs_create_group(ptr noundef %50, ptr noundef @interrupt_stats_attr_group) #18, !dbg !2790
  %tobool133 = icmp ne i32 %call132, 0, !dbg !2790
  br i1 %tobool133, label %if.end135, label %if.then134, !dbg !2791

if.then134:                                       ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !2792

if.end135:                                        ; preds = %for.end
  br label %fail, !dbg !2793

fail:                                             ; preds = %if.end135, %cleanup, %if.then21, %if.then15, %if.then11
  call void @llvm.dbg.label(metadata !2596), !dbg !2794
  call void @delete_gpe_attr_array() #18, !dbg !2795
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2796
  br label %cleanup136, !dbg !2796

cleanup136:                                       ; preds = %fail, %if.then134, %cleanup, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !2796
  %cleanup.dest138 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest138, label %unreachable [
    i32 0, label %cleanup.cont139
    i32 1, label %cleanup.cont139
  ]

cleanup.cont139:                                  ; preds = %cleanup136, %cleanup136
  ret void, !dbg !2796

unreachable:                                      ; preds = %cleanup136
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2797 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2801, metadata !DIExpression()), !dbg !2804
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2802, metadata !DIExpression()), !dbg !2805
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2803, metadata !DIExpression()), !dbg !2806
  %0 = load i64, ptr %n.addr, align 8, !dbg !2807
  %1 = load i64, ptr %size.addr, align 8, !dbg !2808
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2809
  %or = or i32 %2, 256, !dbg !2810
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #20, !dbg !2811
  ret ptr %call, !dbg !2812
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2813 dso_local i32 @acpi_install_global_event_handler(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_global_event_handler(i32 noundef %event_type, ptr noundef %device, i32 noundef %event_number, ptr noundef %context) #0 align 16 !dbg !2820 {
entry:
  %event_type.addr = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %event_number.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store i32 %event_type, ptr %event_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_type.addr, metadata !2822, metadata !DIExpression()), !dbg !2826
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2823, metadata !DIExpression()), !dbg !2827
  store i32 %event_number, ptr %event_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_number.addr, metadata !2824, metadata !DIExpression()), !dbg !2828
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2825, metadata !DIExpression()), !dbg !2829
  %0 = load i32, ptr %event_type.addr, align 4, !dbg !2830
  %cmp = icmp eq i32 %0, 0, !dbg !2832
  br i1 %cmp, label %if.then, label %if.else, !dbg !2833

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %event_number.addr, align 4, !dbg !2834
  call void @gpe_count(i32 noundef %1) #18, !dbg !2836
  store i32 0, ptr %tmp, align 4, !dbg !2837
  %2 = load i32, ptr %tmp, align 4, !dbg !2840
  br label %if.end6, !dbg !2841

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %event_type.addr, align 4, !dbg !2842
  %cmp1 = icmp eq i32 %3, 1, !dbg !2844
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2845

if.then2:                                         ; preds = %if.else
  %4 = load i32, ptr %event_number.addr, align 4, !dbg !2846
  call void @fixed_event_count(i32 noundef %4) #18, !dbg !2848
  store i32 0, ptr %tmp3, align 4, !dbg !2849
  %5 = load i32, ptr %tmp3, align 4, !dbg !2852
  br label %if.end, !dbg !2853

if.else4:                                         ; preds = %if.else
  store i32 0, ptr %tmp5, align 4, !dbg !2854
  %6 = load i32, ptr %tmp5, align 4, !dbg !2858
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !2859
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2860 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2864 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @counter_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2868 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %size = alloca i32, align 4
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2870, metadata !DIExpression()), !dbg !2879
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2871, metadata !DIExpression()), !dbg !2880
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2872, metadata !DIExpression()), !dbg !2881
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2873, metadata !DIExpression()), !dbg !2883
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2884
  %1 = load ptr, ptr @counter_attrs, align 8, !dbg !2885
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2886
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !2886
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2886
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32, !dbg !2886
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !2884
  store i32 %conv, ptr %index, align 4, !dbg !2883
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #16, !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2874, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2875, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2876, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2877, metadata !DIExpression()), !dbg !2894
  store i32 0, ptr %result, align 4, !dbg !2894
  %2 = load i32, ptr @acpi_irq_handled, align 4, !dbg !2895
  %3 = load ptr, ptr @all_counters, align 8, !dbg !2896
  %4 = load i32, ptr @num_gpes, align 4, !dbg !2897
  %add = add i32 %4, 4, !dbg !2898
  %add1 = add i32 %add, 1, !dbg !2899
  %add2 = add i32 %add1, 1, !dbg !2900
  %idxprom = zext i32 %add2 to i64, !dbg !2896
  %arrayidx = getelementptr %struct.event_counter, ptr %3, i64 %idxprom, !dbg !2896
  %count = getelementptr inbounds %struct.event_counter, ptr %arrayidx, i32 0, i32 0, !dbg !2901
  store i32 %2, ptr %count, align 4, !dbg !2902
  %5 = load i32, ptr @acpi_irq_not_handled, align 4, !dbg !2903
  %6 = load ptr, ptr @all_counters, align 8, !dbg !2904
  %7 = load i32, ptr @num_gpes, align 4, !dbg !2905
  %add3 = add i32 %7, 4, !dbg !2906
  %add4 = add i32 %add3, 1, !dbg !2907
  %add5 = add i32 %add4, 2, !dbg !2908
  %idxprom6 = zext i32 %add5 to i64, !dbg !2904
  %arrayidx7 = getelementptr %struct.event_counter, ptr %6, i64 %idxprom6, !dbg !2904
  %count8 = getelementptr inbounds %struct.event_counter, ptr %arrayidx7, i32 0, i32 0, !dbg !2909
  store i32 %5, ptr %count8, align 4, !dbg !2910
  %8 = load i32, ptr @acpi_gpe_count, align 4, !dbg !2911
  %9 = load ptr, ptr @all_counters, align 8, !dbg !2912
  %10 = load i32, ptr @num_gpes, align 4, !dbg !2913
  %add9 = add i32 %10, 4, !dbg !2914
  %add10 = add i32 %add9, 1, !dbg !2915
  %add11 = add i32 %add10, 0, !dbg !2916
  %idxprom12 = zext i32 %add11 to i64, !dbg !2912
  %arrayidx13 = getelementptr %struct.event_counter, ptr %9, i64 %idxprom12, !dbg !2912
  %count14 = getelementptr inbounds %struct.event_counter, ptr %arrayidx13, i32 0, i32 0, !dbg !2917
  store i32 %8, ptr %count14, align 4, !dbg !2918
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !2919
  %12 = load ptr, ptr @all_counters, align 8, !dbg !2920
  %13 = load i32, ptr %index, align 4, !dbg !2921
  %idxprom15 = sext i32 %13 to i64, !dbg !2920
  %arrayidx16 = getelementptr %struct.event_counter, ptr %12, i64 %idxprom15, !dbg !2920
  %count17 = getelementptr inbounds %struct.event_counter, ptr %arrayidx16, i32 0, i32 0, !dbg !2922
  %14 = load i32, ptr %count17, align 4, !dbg !2922
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef @.str.19, i32 noundef %14) #18, !dbg !2923
  store i32 %call, ptr %size, align 4, !dbg !2924
  %15 = load i32, ptr %index, align 4, !dbg !2925
  %16 = load i32, ptr @num_gpes, align 4, !dbg !2927
  %add18 = add i32 %16, 4, !dbg !2928
  %add19 = add i32 %add18, 1, !dbg !2929
  %cmp = icmp uge i32 %15, %add19, !dbg !2930
  br i1 %cmp, label %if.then, label %if.end, !dbg !2931

if.then:                                          ; preds = %entry
  br label %end, !dbg !2932

if.end:                                           ; preds = %entry
  %17 = load i32, ptr %index, align 4, !dbg !2933
  %call21 = call i32 @get_status(i32 noundef %17, ptr noundef %status, ptr noundef %handle) #18, !dbg !2934
  store i32 %call21, ptr %result, align 4, !dbg !2935
  %18 = load i32, ptr %result, align 4, !dbg !2936
  %tobool = icmp ne i32 %18, 0, !dbg !2936
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !2938

if.then22:                                        ; preds = %if.end
  br label %end, !dbg !2939

if.end23:                                         ; preds = %if.end
  %19 = load i32, ptr %status, align 4, !dbg !2940
  %and = and i32 %19, 8, !dbg !2942
  %tobool24 = icmp ne i32 %and, 0, !dbg !2942
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !2943

if.then25:                                        ; preds = %if.end23
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !2944
  %21 = load i32, ptr %size, align 4, !dbg !2945
  %idx.ext = sext i32 %21 to i64, !dbg !2946
  %add.ptr = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !2946
  %call26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef @.str.20) #18, !dbg !2947
  %22 = load i32, ptr %size, align 4, !dbg !2948
  %add27 = add i32 %22, %call26, !dbg !2948
  store i32 %add27, ptr %size, align 4, !dbg !2948
  br label %if.end32, !dbg !2949

if.else:                                          ; preds = %if.end23
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !2950
  %24 = load i32, ptr %size, align 4, !dbg !2951
  %idx.ext28 = sext i32 %24 to i64, !dbg !2952
  %add.ptr29 = getelementptr i8, ptr %23, i64 %idx.ext28, !dbg !2952
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr29, ptr noundef @.str.21) #18, !dbg !2953
  %25 = load i32, ptr %size, align 4, !dbg !2954
  %add31 = add i32 %25, %call30, !dbg !2954
  store i32 %add31, ptr %size, align 4, !dbg !2954
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  %26 = load i32, ptr %status, align 4, !dbg !2955
  %and33 = and i32 %26, 4, !dbg !2957
  %tobool34 = icmp ne i32 %and33, 0, !dbg !2957
  br i1 %tobool34, label %if.then35, label %if.else40, !dbg !2958

if.then35:                                        ; preds = %if.end32
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !2959
  %28 = load i32, ptr %size, align 4, !dbg !2960
  %idx.ext36 = sext i32 %28 to i64, !dbg !2961
  %add.ptr37 = getelementptr i8, ptr %27, i64 %idx.ext36, !dbg !2961
  %call38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr37, ptr noundef @.str.22) #18, !dbg !2962
  %29 = load i32, ptr %size, align 4, !dbg !2963
  %add39 = add i32 %29, %call38, !dbg !2963
  store i32 %add39, ptr %size, align 4, !dbg !2963
  br label %if.end45, !dbg !2964

if.else40:                                        ; preds = %if.end32
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !2965
  %31 = load i32, ptr %size, align 4, !dbg !2966
  %idx.ext41 = sext i32 %31 to i64, !dbg !2967
  %add.ptr42 = getelementptr i8, ptr %30, i64 %idx.ext41, !dbg !2967
  %call43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr42, ptr noundef @.str.21) #18, !dbg !2968
  %32 = load i32, ptr %size, align 4, !dbg !2969
  %add44 = add i32 %32, %call43, !dbg !2969
  store i32 %add44, ptr %size, align 4, !dbg !2969
  br label %if.end45

if.end45:                                         ; preds = %if.else40, %if.then35
  %33 = load i32, ptr %status, align 4, !dbg !2970
  %and46 = and i32 %33, 16, !dbg !2972
  %tobool47 = icmp ne i32 %and46, 0, !dbg !2972
  br i1 %tobool47, label %if.else53, label %if.then48, !dbg !2973

if.then48:                                        ; preds = %if.end45
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !2974
  %35 = load i32, ptr %size, align 4, !dbg !2975
  %idx.ext49 = sext i32 %35 to i64, !dbg !2976
  %add.ptr50 = getelementptr i8, ptr %34, i64 %idx.ext49, !dbg !2976
  %call51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr50, ptr noundef @.str.23) #18, !dbg !2977
  %36 = load i32, ptr %size, align 4, !dbg !2978
  %add52 = add i32 %36, %call51, !dbg !2978
  store i32 %add52, ptr %size, align 4, !dbg !2978
  br label %if.end76, !dbg !2979

if.else53:                                        ; preds = %if.end45
  %37 = load i32, ptr %status, align 4, !dbg !2980
  %and54 = and i32 %37, 1, !dbg !2982
  %tobool55 = icmp ne i32 %and54, 0, !dbg !2982
  br i1 %tobool55, label %if.then56, label %if.else61, !dbg !2983

if.then56:                                        ; preds = %if.else53
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !2984
  %39 = load i32, ptr %size, align 4, !dbg !2985
  %idx.ext57 = sext i32 %39 to i64, !dbg !2986
  %add.ptr58 = getelementptr i8, ptr %38, i64 %idx.ext57, !dbg !2986
  %call59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr58, ptr noundef @.str.24) #18, !dbg !2987
  %40 = load i32, ptr %size, align 4, !dbg !2988
  %add60 = add i32 %40, %call59, !dbg !2988
  store i32 %add60, ptr %size, align 4, !dbg !2988
  br label %if.end75, !dbg !2989

if.else61:                                        ; preds = %if.else53
  %41 = load i32, ptr %status, align 4, !dbg !2990
  %and62 = and i32 %41, 2, !dbg !2992
  %tobool63 = icmp ne i32 %and62, 0, !dbg !2992
  br i1 %tobool63, label %if.then64, label %if.else69, !dbg !2993

if.then64:                                        ; preds = %if.else61
  %42 = load ptr, ptr %buf.addr, align 8, !dbg !2994
  %43 = load i32, ptr %size, align 4, !dbg !2995
  %idx.ext65 = sext i32 %43 to i64, !dbg !2996
  %add.ptr66 = getelementptr i8, ptr %42, i64 %idx.ext65, !dbg !2996
  %call67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr66, ptr noundef @.str.25) #18, !dbg !2997
  %44 = load i32, ptr %size, align 4, !dbg !2998
  %add68 = add i32 %44, %call67, !dbg !2998
  store i32 %add68, ptr %size, align 4, !dbg !2998
  br label %if.end74, !dbg !2999

if.else69:                                        ; preds = %if.else61
  %45 = load ptr, ptr %buf.addr, align 8, !dbg !3000
  %46 = load i32, ptr %size, align 4, !dbg !3001
  %idx.ext70 = sext i32 %46 to i64, !dbg !3002
  %add.ptr71 = getelementptr i8, ptr %45, i64 %idx.ext70, !dbg !3002
  %call72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr71, ptr noundef @.str.26) #18, !dbg !3003
  %47 = load i32, ptr %size, align 4, !dbg !3004
  %add73 = add i32 %47, %call72, !dbg !3004
  store i32 %add73, ptr %size, align 4, !dbg !3004
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.then64
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then56
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then48
  %48 = load i32, ptr %status, align 4, !dbg !3005
  %and77 = and i32 %48, 32, !dbg !3007
  %tobool78 = icmp ne i32 %and77, 0, !dbg !3007
  br i1 %tobool78, label %if.then79, label %if.else84, !dbg !3008

if.then79:                                        ; preds = %if.end76
  %49 = load ptr, ptr %buf.addr, align 8, !dbg !3009
  %50 = load i32, ptr %size, align 4, !dbg !3010
  %idx.ext80 = sext i32 %50 to i64, !dbg !3011
  %add.ptr81 = getelementptr i8, ptr %49, i64 %idx.ext80, !dbg !3011
  %call82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr81, ptr noundef @.str.27) #18, !dbg !3012
  %51 = load i32, ptr %size, align 4, !dbg !3013
  %add83 = add i32 %51, %call82, !dbg !3013
  store i32 %add83, ptr %size, align 4, !dbg !3013
  br label %if.end89, !dbg !3014

if.else84:                                        ; preds = %if.end76
  %52 = load ptr, ptr %buf.addr, align 8, !dbg !3015
  %53 = load i32, ptr %size, align 4, !dbg !3016
  %idx.ext85 = sext i32 %53 to i64, !dbg !3017
  %add.ptr86 = getelementptr i8, ptr %52, i64 %idx.ext85, !dbg !3017
  %call87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr86, ptr noundef @.str.28) #18, !dbg !3018
  %54 = load i32, ptr %size, align 4, !dbg !3019
  %add88 = add i32 %54, %call87, !dbg !3019
  store i32 %add88, ptr %size, align 4, !dbg !3019
  br label %if.end89

if.end89:                                         ; preds = %if.else84, %if.then79
  br label %end, !dbg !3020

end:                                              ; preds = %if.end89, %if.then22, %if.then
  call void @llvm.dbg.label(metadata !2878), !dbg !3021
  %55 = load ptr, ptr %buf.addr, align 8, !dbg !3022
  %56 = load i32, ptr %size, align 4, !dbg !3023
  %idx.ext90 = sext i32 %56 to i64, !dbg !3024
  %add.ptr91 = getelementptr i8, ptr %55, i64 %idx.ext90, !dbg !3024
  %call92 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr91, ptr noundef @.str.29) #18, !dbg !3025
  %57 = load i32, ptr %size, align 4, !dbg !3026
  %add93 = add i32 %57, %call92, !dbg !3026
  store i32 %add93, ptr %size, align 4, !dbg !3026
  %58 = load i32, ptr %result, align 4, !dbg !3027
  %tobool94 = icmp ne i32 %58, 0, !dbg !3027
  br i1 %tobool94, label %cond.true, label %cond.false, !dbg !3027

cond.true:                                        ; preds = %end
  %59 = load i32, ptr %result, align 4, !dbg !3028
  br label %cond.end, !dbg !3027

cond.false:                                       ; preds = %end
  %60 = load i32, ptr %size, align 4, !dbg !3029
  br label %cond.end, !dbg !3027

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %60, %cond.false ], !dbg !3027
  %conv95 = sext i32 %cond to i64, !dbg !3027
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !3030
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !3030
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !3030
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #16, !dbg !3030
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3030
  ret i64 %conv95, !dbg !3031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @counter_set(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !3032 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %index = alloca i32, align 4
  %status = alloca i32, align 4
  %handle = alloca ptr, align 8
  %result = alloca i32, align 4
  %tmp = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %event = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3034, metadata !DIExpression()), !dbg !3051
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3035, metadata !DIExpression()), !dbg !3052
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3036, metadata !DIExpression()), !dbg !3053
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3037, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3038, metadata !DIExpression()), !dbg !3056
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !3057
  %1 = load ptr, ptr @counter_attrs, align 8, !dbg !3058
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !3059
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !3059
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3059
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32, !dbg !3059
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !3057
  store i32 %conv, ptr %index, align 4, !dbg !3056
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !3060
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3039, metadata !DIExpression()), !dbg !3061
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #16, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !3040, metadata !DIExpression()), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !3064
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3041, metadata !DIExpression()), !dbg !3065
  store i32 0, ptr %result, align 4, !dbg !3065
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !3066
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3042, metadata !DIExpression()), !dbg !3067
  %2 = load i32, ptr %index, align 4, !dbg !3068
  %3 = load i32, ptr @num_gpes, align 4, !dbg !3069
  %add = add i32 %3, 4, !dbg !3070
  %add1 = add i32 %add, 1, !dbg !3071
  %add2 = add i32 %add1, 1, !dbg !3072
  %cmp = icmp eq i32 %2, %add2, !dbg !3073
  br i1 %cmp, label %if.then, label %if.end, !dbg !3074

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3075
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3043, metadata !DIExpression()), !dbg !3076
  store i32 0, ptr %i, align 4, !dbg !3077
  br label %for.cond, !dbg !3079

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4, !dbg !3080
  %5 = load i32, ptr @num_counters, align 4, !dbg !3082
  %cmp4 = icmp ult i32 %4, %5, !dbg !3083
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3084

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr @all_counters, align 8, !dbg !3085
  %7 = load i32, ptr %i, align 4, !dbg !3086
  %idxprom = sext i32 %7 to i64, !dbg !3085
  %arrayidx = getelementptr %struct.event_counter, ptr %6, i64 %idxprom, !dbg !3085
  %count = getelementptr inbounds %struct.event_counter, ptr %arrayidx, i32 0, i32 0, !dbg !3087
  store i32 0, ptr %count, align 4, !dbg !3088
  br label %for.inc, !dbg !3085

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !3089
  %inc = add i32 %8, 1, !dbg !3089
  store i32 %inc, ptr %i, align 4, !dbg !3089
  br label %for.cond, !dbg !3090, !llvm.loop !3091

for.end:                                          ; preds = %for.cond
  store i32 0, ptr @acpi_gpe_count, align 4, !dbg !3093
  store i32 0, ptr @acpi_irq_handled, align 4, !dbg !3094
  store i32 0, ptr @acpi_irq_not_handled, align 4, !dbg !3095
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3096
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup [
    i32 5, label %end
  ]

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %index, align 4, !dbg !3097
  %call = call i32 @get_status(i32 noundef %9, ptr noundef %status, ptr noundef %handle) #18, !dbg !3098
  store i32 %call, ptr %result, align 4, !dbg !3099
  %10 = load i32, ptr %result, align 4, !dbg !3100
  %tobool = icmp ne i32 %10, 0, !dbg !3100
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !3102

if.then6:                                         ; preds = %if.end
  br label %end, !dbg !3103

if.end7:                                          ; preds = %if.end
  %11 = load i32, ptr %status, align 4, !dbg !3104
  %and = and i32 %11, 16, !dbg !3106
  %tobool8 = icmp ne i32 %and, 0, !dbg !3106
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !3107

if.then9:                                         ; preds = %if.end7
  br label %do.body, !dbg !3108

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !3111

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3111

do.end:                                           ; preds = %do.cond
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.31) #19, !dbg !3108
  store i32 %call11, ptr %tmp10, align 4, !dbg !3111
  %12 = load i32, ptr %tmp10, align 4, !dbg !3108
  store i64 -22, ptr %retval, align 8, !dbg !3113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3113

if.end12:                                         ; preds = %if.end7
  %13 = load i32, ptr %index, align 4, !dbg !3114
  %14 = load i32, ptr @num_gpes, align 4, !dbg !3115
  %cmp13 = icmp ult i32 %13, %14, !dbg !3116
  br i1 %cmp13, label %if.then15, label %if.else62, !dbg !3117

if.then15:                                        ; preds = %if.end12
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !3118
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.32) #18, !dbg !3121
  %tobool17 = icmp ne i32 %call16, 0, !dbg !3121
  br i1 %tobool17, label %if.else, label %land.lhs.true, !dbg !3122

land.lhs.true:                                    ; preds = %if.then15
  %16 = load i32, ptr %status, align 4, !dbg !3123
  %and18 = and i32 %16, 1, !dbg !3124
  %tobool19 = icmp ne i32 %and18, 0, !dbg !3124
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !3125

if.then20:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %handle, align 8, !dbg !3126
  %18 = load i32, ptr %index, align 4, !dbg !3127
  %call21 = call i32 @acpi_disable_gpe(ptr noundef %17, i32 noundef %18) #18, !dbg !3128
  store i32 %call21, ptr %result, align 4, !dbg !3129
  br label %if.end61, !dbg !3130

if.else:                                          ; preds = %land.lhs.true, %if.then15
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !3131
  %call22 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.33) #18, !dbg !3133
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3133
  br i1 %tobool23, label %if.else29, label %land.lhs.true24, !dbg !3134

land.lhs.true24:                                  ; preds = %if.else
  %20 = load i32, ptr %status, align 4, !dbg !3135
  %and25 = and i32 %20, 1, !dbg !3136
  %tobool26 = icmp ne i32 %and25, 0, !dbg !3136
  br i1 %tobool26, label %if.else29, label %if.then27, !dbg !3137

if.then27:                                        ; preds = %land.lhs.true24
  %21 = load ptr, ptr %handle, align 8, !dbg !3138
  %22 = load i32, ptr %index, align 4, !dbg !3139
  %call28 = call i32 @acpi_enable_gpe(ptr noundef %21, i32 noundef %22) #18, !dbg !3140
  store i32 %call28, ptr %result, align 4, !dbg !3141
  br label %if.end60, !dbg !3142

if.else29:                                        ; preds = %land.lhs.true24, %if.else
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !3143
  %call30 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.34) #18, !dbg !3145
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3145
  br i1 %tobool31, label %if.else37, label %land.lhs.true32, !dbg !3146

land.lhs.true32:                                  ; preds = %if.else29
  %24 = load i32, ptr %status, align 4, !dbg !3147
  %and33 = and i32 %24, 4, !dbg !3148
  %tobool34 = icmp ne i32 %and33, 0, !dbg !3148
  br i1 %tobool34, label %if.then35, label %if.else37, !dbg !3149

if.then35:                                        ; preds = %land.lhs.true32
  %25 = load ptr, ptr %handle, align 8, !dbg !3150
  %26 = load i32, ptr %index, align 4, !dbg !3151
  %call36 = call i32 @acpi_clear_gpe(ptr noundef %25, i32 noundef %26) #18, !dbg !3152
  store i32 %call36, ptr %result, align 4, !dbg !3153
  br label %if.end59, !dbg !3154

if.else37:                                        ; preds = %land.lhs.true32, %if.else29
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !3155
  %call38 = call i32 @strcmp(ptr noundef %27, ptr noundef @.str.35) #18, !dbg !3157
  %tobool39 = icmp ne i32 %call38, 0, !dbg !3157
  br i1 %tobool39, label %if.else42, label %if.then40, !dbg !3158

if.then40:                                        ; preds = %if.else37
  %28 = load ptr, ptr %handle, align 8, !dbg !3159
  %29 = load i32, ptr %index, align 4, !dbg !3160
  %call41 = call i32 @acpi_mask_gpe(ptr noundef %28, i32 noundef %29, i8 noundef zeroext 1) #18, !dbg !3161
  store i32 %call41, ptr %result, align 4, !dbg !3162
  br label %if.end58, !dbg !3163

if.else42:                                        ; preds = %if.else37
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !3164
  %call43 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.36) #18, !dbg !3166
  %tobool44 = icmp ne i32 %call43, 0, !dbg !3166
  br i1 %tobool44, label %if.else47, label %if.then45, !dbg !3167

if.then45:                                        ; preds = %if.else42
  %31 = load ptr, ptr %handle, align 8, !dbg !3168
  %32 = load i32, ptr %index, align 4, !dbg !3169
  %call46 = call i32 @acpi_mask_gpe(ptr noundef %31, i32 noundef %32, i8 noundef zeroext 0) #18, !dbg !3170
  store i32 %call46, ptr %result, align 4, !dbg !3171
  br label %if.end57, !dbg !3172

if.else47:                                        ; preds = %if.else42
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !3173
  %call48 = call i32 @kstrtoul(ptr noundef %33, i32 noundef 0, ptr noundef %tmp) #18, !dbg !3175
  %tobool49 = icmp ne i32 %call48, 0, !dbg !3175
  br i1 %tobool49, label %if.else55, label %if.then50, !dbg !3176

if.then50:                                        ; preds = %if.else47
  %34 = load i64, ptr %tmp, align 8, !dbg !3177
  %conv51 = trunc i64 %34 to i32, !dbg !3177
  %35 = load ptr, ptr @all_counters, align 8, !dbg !3178
  %36 = load i32, ptr %index, align 4, !dbg !3179
  %idxprom52 = sext i32 %36 to i64, !dbg !3178
  %arrayidx53 = getelementptr %struct.event_counter, ptr %35, i64 %idxprom52, !dbg !3178
  %count54 = getelementptr inbounds %struct.event_counter, ptr %arrayidx53, i32 0, i32 0, !dbg !3180
  store i32 %conv51, ptr %count54, align 4, !dbg !3181
  br label %if.end56, !dbg !3178

if.else55:                                        ; preds = %if.else47
  store i32 -22, ptr %result, align 4, !dbg !3182
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then50
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then45
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then40
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then35
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then27
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then20
  br label %if.end111, !dbg !3183

if.else62:                                        ; preds = %if.end12
  %37 = load i32, ptr %index, align 4, !dbg !3184
  %38 = load i32, ptr @num_gpes, align 4, !dbg !3185
  %add63 = add i32 %38, 4, !dbg !3186
  %add64 = add i32 %add63, 1, !dbg !3187
  %cmp65 = icmp ult i32 %37, %add64, !dbg !3188
  br i1 %cmp65, label %if.then67, label %if.else104, !dbg !3189

if.then67:                                        ; preds = %if.else62
  call void @llvm.lifetime.start.p0(i64 4, ptr %event) #16, !dbg !3190
  call void @llvm.dbg.declare(metadata ptr %event, metadata !3046, metadata !DIExpression()), !dbg !3191
  %39 = load i32, ptr %index, align 4, !dbg !3192
  %40 = load i32, ptr @num_gpes, align 4, !dbg !3193
  %sub = sub i32 %39, %40, !dbg !3194
  store i32 %sub, ptr %event, align 4, !dbg !3191
  %41 = load ptr, ptr %buf.addr, align 8, !dbg !3195
  %call68 = call i32 @strcmp(ptr noundef %41, ptr noundef @.str.32) #18, !dbg !3197
  %tobool69 = icmp ne i32 %call68, 0, !dbg !3197
  br i1 %tobool69, label %if.else75, label %land.lhs.true70, !dbg !3198

land.lhs.true70:                                  ; preds = %if.then67
  %42 = load i32, ptr %status, align 4, !dbg !3199
  %and71 = and i32 %42, 8, !dbg !3200
  %tobool72 = icmp ne i32 %and71, 0, !dbg !3200
  br i1 %tobool72, label %if.then73, label %if.else75, !dbg !3201

if.then73:                                        ; preds = %land.lhs.true70
  %43 = load i32, ptr %event, align 4, !dbg !3202
  %call74 = call i32 @acpi_disable_event(i32 noundef %43, i32 noundef 1) #18, !dbg !3203
  store i32 %call74, ptr %result, align 4, !dbg !3204
  br label %if.end103, !dbg !3205

if.else75:                                        ; preds = %land.lhs.true70, %if.then67
  %44 = load ptr, ptr %buf.addr, align 8, !dbg !3206
  %call76 = call i32 @strcmp(ptr noundef %44, ptr noundef @.str.33) #18, !dbg !3208
  %tobool77 = icmp ne i32 %call76, 0, !dbg !3208
  br i1 %tobool77, label %if.else83, label %land.lhs.true78, !dbg !3209

land.lhs.true78:                                  ; preds = %if.else75
  %45 = load i32, ptr %status, align 4, !dbg !3210
  %and79 = and i32 %45, 8, !dbg !3211
  %tobool80 = icmp ne i32 %and79, 0, !dbg !3211
  br i1 %tobool80, label %if.else83, label %if.then81, !dbg !3212

if.then81:                                        ; preds = %land.lhs.true78
  %46 = load i32, ptr %event, align 4, !dbg !3213
  %call82 = call i32 @acpi_enable_event(i32 noundef %46, i32 noundef 1) #18, !dbg !3214
  store i32 %call82, ptr %result, align 4, !dbg !3215
  br label %if.end102, !dbg !3216

if.else83:                                        ; preds = %land.lhs.true78, %if.else75
  %47 = load ptr, ptr %buf.addr, align 8, !dbg !3217
  %call84 = call i32 @strcmp(ptr noundef %47, ptr noundef @.str.34) #18, !dbg !3219
  %tobool85 = icmp ne i32 %call84, 0, !dbg !3219
  br i1 %tobool85, label %if.else91, label %land.lhs.true86, !dbg !3220

land.lhs.true86:                                  ; preds = %if.else83
  %48 = load i32, ptr %status, align 4, !dbg !3221
  %and87 = and i32 %48, 4, !dbg !3222
  %tobool88 = icmp ne i32 %and87, 0, !dbg !3222
  br i1 %tobool88, label %if.then89, label %if.else91, !dbg !3223

if.then89:                                        ; preds = %land.lhs.true86
  %49 = load i32, ptr %event, align 4, !dbg !3224
  %call90 = call i32 @acpi_clear_event(i32 noundef %49) #18, !dbg !3225
  store i32 %call90, ptr %result, align 4, !dbg !3226
  br label %if.end101, !dbg !3227

if.else91:                                        ; preds = %land.lhs.true86, %if.else83
  %50 = load ptr, ptr %buf.addr, align 8, !dbg !3228
  %call92 = call i32 @kstrtoul(ptr noundef %50, i32 noundef 0, ptr noundef %tmp) #18, !dbg !3230
  %tobool93 = icmp ne i32 %call92, 0, !dbg !3230
  br i1 %tobool93, label %if.else99, label %if.then94, !dbg !3231

if.then94:                                        ; preds = %if.else91
  %51 = load i64, ptr %tmp, align 8, !dbg !3232
  %conv95 = trunc i64 %51 to i32, !dbg !3232
  %52 = load ptr, ptr @all_counters, align 8, !dbg !3233
  %53 = load i32, ptr %index, align 4, !dbg !3234
  %idxprom96 = sext i32 %53 to i64, !dbg !3233
  %arrayidx97 = getelementptr %struct.event_counter, ptr %52, i64 %idxprom96, !dbg !3233
  %count98 = getelementptr inbounds %struct.event_counter, ptr %arrayidx97, i32 0, i32 0, !dbg !3235
  store i32 %conv95, ptr %count98, align 4, !dbg !3236
  br label %if.end100, !dbg !3233

if.else99:                                        ; preds = %if.else91
  store i32 -22, ptr %result, align 4, !dbg !3237
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then94
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then89
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then81
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then73
  call void @llvm.lifetime.end.p0(i64 4, ptr %event) #16, !dbg !3238
  br label %if.end110, !dbg !3239

if.else104:                                       ; preds = %if.else62
  %54 = load ptr, ptr %buf.addr, align 8, !dbg !3240
  %call105 = call i64 @simple_strtoul(ptr noundef %54, ptr noundef null, i32 noundef 0) #18, !dbg !3241
  %conv106 = trunc i64 %call105 to i32, !dbg !3241
  %55 = load ptr, ptr @all_counters, align 8, !dbg !3242
  %56 = load i32, ptr %index, align 4, !dbg !3243
  %idxprom107 = sext i32 %56 to i64, !dbg !3242
  %arrayidx108 = getelementptr %struct.event_counter, ptr %55, i64 %idxprom107, !dbg !3242
  %count109 = getelementptr inbounds %struct.event_counter, ptr %arrayidx108, i32 0, i32 0, !dbg !3244
  store i32 %conv106, ptr %count109, align 4, !dbg !3245
  br label %if.end110

if.end110:                                        ; preds = %if.else104, %if.end103
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end61
  %57 = load i32, ptr %result, align 4, !dbg !3246
  %tobool112 = icmp ne i32 %57, 0, !dbg !3246
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !3248

if.then113:                                       ; preds = %if.end111
  store i32 -22, ptr %result, align 4, !dbg !3249
  br label %if.end114, !dbg !3250

if.end114:                                        ; preds = %if.then113, %if.end111
  br label %end, !dbg !3246

end:                                              ; preds = %if.end114, %for.end, %if.then6
  call void @llvm.dbg.label(metadata !3050), !dbg !3251
  %58 = load i32, ptr %result, align 4, !dbg !3252
  %tobool115 = icmp ne i32 %58, 0, !dbg !3252
  br i1 %tobool115, label %cond.true, label %cond.false, !dbg !3252

cond.true:                                        ; preds = %end
  %59 = load i32, ptr %result, align 4, !dbg !3253
  %conv116 = sext i32 %59 to i64, !dbg !3253
  br label %cond.end, !dbg !3252

cond.false:                                       ; preds = %end
  %60 = load i64, ptr %size.addr, align 8, !dbg !3254
  br label %cond.end, !dbg !3252

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv116, %cond.true ], [ %60, %cond.false ], !dbg !3252
  store i64 %cond, ptr %retval, align 8, !dbg !3255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3255

cleanup:                                          ; preds = %cond.end, %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #16, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3256
  %61 = load i64, ptr %retval, align 8, !dbg !3256
  ret i64 %61, !dbg !3256
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3257 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delete_gpe_attr_array() #0 align 16 !dbg !3260 {
entry:
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !3266
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3262, metadata !DIExpression()), !dbg !3267
  %0 = load ptr, ptr @all_counters, align 8, !dbg !3268
  store ptr %0, ptr %tmp, align 8, !dbg !3267
  store ptr null, ptr @all_counters, align 8, !dbg !3269
  %1 = load ptr, ptr %tmp, align 8, !dbg !3270
  call void @kfree(ptr noundef %1) #18, !dbg !3271
  %2 = load ptr, ptr @counter_attrs, align 8, !dbg !3272
  %tobool = icmp ne ptr %2, null, !dbg !3272
  br i1 %tobool, label %if.then, label %if.end, !dbg !3273

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3263, metadata !DIExpression()), !dbg !3275
  store i32 0, ptr %i, align 4, !dbg !3276
  br label %for.cond, !dbg !3278

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !dbg !3279
  %4 = load i32, ptr @num_gpes, align 4, !dbg !3281
  %cmp = icmp ult i32 %3, %4, !dbg !3282
  br i1 %cmp, label %for.body, label %for.end, !dbg !3283

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr @counter_attrs, align 8, !dbg !3284
  %6 = load i32, ptr %i, align 4, !dbg !3285
  %idxprom = sext i32 %6 to i64, !dbg !3284
  %arrayidx = getelementptr %struct.kobj_attribute, ptr %5, i64 %idxprom, !dbg !3284
  %attr = getelementptr inbounds %struct.kobj_attribute, ptr %arrayidx, i32 0, i32 0, !dbg !3286
  %name = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !3287
  %7 = load ptr, ptr %name, align 8, !dbg !3287
  call void @kfree(ptr noundef %7) #18, !dbg !3288
  br label %for.inc, !dbg !3288

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !3289
  %inc = add i32 %8, 1, !dbg !3289
  store i32 %inc, ptr %i, align 4, !dbg !3289
  br label %for.cond, !dbg !3290, !llvm.loop !3291

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr @counter_attrs, align 8, !dbg !3293
  call void @kfree(ptr noundef %9) #18, !dbg !3294
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3295
  br label %if.end, !dbg !3296

if.end:                                           ; preds = %for.end, %entry
  %10 = load ptr, ptr @all_attrs, align 8, !dbg !3297
  call void @kfree(ptr noundef %10) #18, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !3299
  ret void, !dbg !3299
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @interrupt_stats_exit() #6 section ".exit.text" align 16 !dbg !3300 {
entry:
  %0 = load ptr, ptr @acpi_kobj, align 8, !dbg !3301
  call void @sysfs_remove_group(ptr noundef %0, ptr noundef @interrupt_stats_attr_group) #18, !dbg !3302
  call void @delete_gpe_attr_array() #18, !dbg !3303
  ret void, !dbg !3304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3305 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_sysfs_add_hotplug_profile(ptr noundef %hotplug, ptr noundef %name) #0 align 16 !dbg !3308 {
entry:
  %hotplug.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %hotplug, ptr %hotplug.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hotplug.addr, metadata !3312, metadata !DIExpression()), !dbg !3316
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3313, metadata !DIExpression()), !dbg !3317
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3318
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3314, metadata !DIExpression()), !dbg !3319
  %0 = load ptr, ptr @hotplug_kobj, align 8, !dbg !3320
  %tobool = icmp ne ptr %0, null, !dbg !3320
  br i1 %tobool, label %if.end, label %if.then, !dbg !3322

if.then:                                          ; preds = %entry
  br label %err_out, !dbg !3323

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %hotplug.addr, align 8, !dbg !3324
  %kobj = getelementptr inbounds %struct.acpi_hotplug_profile, ptr %1, i32 0, i32 0, !dbg !3325
  %2 = load ptr, ptr @hotplug_kobj, align 8, !dbg !3326
  %3 = load ptr, ptr %name.addr, align 8, !dbg !3327
  %call = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef @acpi_hotplug_profile_ktype, ptr noundef %2, ptr noundef @.str.12, ptr noundef %3) #18, !dbg !3328
  store i32 %call, ptr %error, align 4, !dbg !3329
  %4 = load i32, ptr %error, align 4, !dbg !3330
  %tobool1 = icmp ne i32 %4, 0, !dbg !3330
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3332

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %hotplug.addr, align 8, !dbg !3333
  %kobj3 = getelementptr inbounds %struct.acpi_hotplug_profile, ptr %5, i32 0, i32 0, !dbg !3335
  call void @kobject_put(ptr noundef %kobj3) #18, !dbg !3336
  br label %err_out, !dbg !3337

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %hotplug.addr, align 8, !dbg !3338
  %kobj5 = getelementptr inbounds %struct.acpi_hotplug_profile, ptr %6, i32 0, i32 0, !dbg !3339
  %call6 = call i32 @kobject_uevent(ptr noundef %kobj5, i32 noundef 0) #18, !dbg !3340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3341

err_out:                                          ; preds = %if.then2, %if.then
  call void @llvm.dbg.label(metadata !3315), !dbg !3342
  br label %do.body, !dbg !3343

do.body:                                          ; preds = %err_out
  br label %do.cond, !dbg !3345

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3345

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %name.addr, align 8, !dbg !3343
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %7) #19, !dbg !3343
  store i32 %call7, ptr %tmp, align 4, !dbg !3345
  %8 = load i32, ptr %tmp, align 4, !dbg !3343
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3347
  br label %cleanup, !dbg !3347

cleanup:                                          ; preds = %do.end, %if.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3347
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3347

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3348 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3351 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3352 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_sysfs_init() #6 section ".init.text" align 16 !dbg !3355 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !3358
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3357, metadata !DIExpression()), !dbg !3359
  %call = call i32 @acpi_tables_sysfs_init() #18, !dbg !3360
  store i32 %call, ptr %result, align 4, !dbg !3361
  %0 = load i32, ptr %result, align 4, !dbg !3362
  %tobool = icmp ne i32 %0, 0, !dbg !3362
  br i1 %tobool, label %if.then, label %if.end, !dbg !3364

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4, !dbg !3365
  store i32 %1, ptr %retval, align 4, !dbg !3366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3366

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_kobj, align 8, !dbg !3367
  %call1 = call ptr @kobject_create_and_add(ptr noundef @.str.14, ptr noundef %2) #18, !dbg !3368
  store ptr %call1, ptr @hotplug_kobj, align 8, !dbg !3369
  %3 = load ptr, ptr @hotplug_kobj, align 8, !dbg !3370
  %tobool2 = icmp ne ptr %3, null, !dbg !3370
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3372

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !3373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3373

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr @hotplug_kobj, align 8, !dbg !3374
  %call5 = call i32 @sysfs_create_file(ptr noundef %4, ptr noundef @force_remove_attr) #18, !dbg !3375
  store i32 %call5, ptr %result, align 4, !dbg !3376
  %5 = load i32, ptr %result, align 4, !dbg !3377
  %tobool6 = icmp ne i32 %5, 0, !dbg !3377
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3379

if.then7:                                         ; preds = %if.end4
  %6 = load i32, ptr %result, align 4, !dbg !3380
  store i32 %6, ptr %retval, align 4, !dbg !3381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3381

if.end8:                                          ; preds = %if.end4
  %7 = load ptr, ptr @acpi_kobj, align 8, !dbg !3382
  %call9 = call i32 @sysfs_create_file(ptr noundef %7, ptr noundef @pm_profile_attr) #18, !dbg !3383
  store i32 %call9, ptr %result, align 4, !dbg !3384
  %8 = load i32, ptr %result, align 4, !dbg !3385
  store i32 %8, ptr %retval, align 4, !dbg !3386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3386

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !3387
  %9 = load i32, ptr %retval, align 4, !dbg !3387
  ret i32 %9, !dbg !3387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_tables_sysfs_init() #0 align 16 !dbg !3388 {
entry:
  %retval = alloca i32, align 4
  %table_attr = alloca ptr, align 8
  %table_header = alloca ptr, align 8
  %table_index = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_attr) #16, !dbg !3398
  call void @llvm.dbg.declare(metadata ptr %table_attr, metadata !3390, metadata !DIExpression()), !dbg !3399
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_header) #16, !dbg !3400
  call void @llvm.dbg.declare(metadata ptr %table_header, metadata !3391, metadata !DIExpression()), !dbg !3401
  store ptr null, ptr %table_header, align 8, !dbg !3401
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #16, !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !3392, metadata !DIExpression()), !dbg !3403
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !3404
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3393, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3394, metadata !DIExpression()), !dbg !3407
  %0 = load ptr, ptr @acpi_kobj, align 8, !dbg !3408
  %call = call ptr @kobject_create_and_add(ptr noundef @.str.40, ptr noundef %0) #18, !dbg !3409
  store ptr %call, ptr @tables_kobj, align 8, !dbg !3410
  %1 = load ptr, ptr @tables_kobj, align 8, !dbg !3411
  %tobool = icmp ne ptr %1, null, !dbg !3411
  br i1 %tobool, label %if.end, label %if.then, !dbg !3413

if.then:                                          ; preds = %entry
  br label %err, !dbg !3414

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @tables_kobj, align 8, !dbg !3415
  %call1 = call ptr @kobject_create_and_add(ptr noundef @.str.41, ptr noundef %2) #18, !dbg !3416
  store ptr %call1, ptr @tables_data_kobj, align 8, !dbg !3417
  %3 = load ptr, ptr @tables_data_kobj, align 8, !dbg !3418
  %tobool2 = icmp ne ptr %3, null, !dbg !3418
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3420

if.then3:                                         ; preds = %if.end
  br label %err_tables_data, !dbg !3421

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr @tables_kobj, align 8, !dbg !3422
  %call5 = call ptr @kobject_create_and_add(ptr noundef @.str.42, ptr noundef %4) #18, !dbg !3423
  store ptr %call5, ptr @dynamic_tables_kobj, align 8, !dbg !3424
  %5 = load ptr, ptr @dynamic_tables_kobj, align 8, !dbg !3425
  %tobool6 = icmp ne ptr %5, null, !dbg !3425
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3427

if.then7:                                         ; preds = %if.end4
  br label %err_dynamic_tables, !dbg !3428

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %table_index, align 4, !dbg !3429
  br label %for.cond, !dbg !3431

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, ptr %table_index, align 4, !dbg !3432
  %call9 = call i32 @acpi_get_table_by_index(i32 noundef %6, ptr noundef %table_header) #18, !dbg !3435
  store i32 %call9, ptr %status, align 4, !dbg !3436
  %7 = load i32, ptr %status, align 4, !dbg !3437
  %cmp = icmp eq i32 %7, 4097, !dbg !3439
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !3440

if.then10:                                        ; preds = %for.cond
  br label %for.end, !dbg !3441

if.end11:                                         ; preds = %for.cond
  %8 = load i32, ptr %status, align 4, !dbg !3442
  %tobool12 = icmp ne i32 %8, 0, !dbg !3442
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3444

if.then13:                                        ; preds = %if.end11
  br label %for.inc, !dbg !3445

if.end14:                                         ; preds = %if.end11
  %call15 = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #17, !dbg !3446
  store ptr %call15, ptr %table_attr, align 8, !dbg !3447
  %9 = load ptr, ptr %table_attr, align 8, !dbg !3448
  %tobool16 = icmp ne ptr %9, null, !dbg !3448
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !3450

if.then17:                                        ; preds = %if.end14
  store i32 -12, ptr %retval, align 4, !dbg !3451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3451

if.end18:                                         ; preds = %if.end14
  %10 = load ptr, ptr @tables_kobj, align 8, !dbg !3452
  %11 = load ptr, ptr %table_attr, align 8, !dbg !3453
  %12 = load ptr, ptr %table_header, align 8, !dbg !3454
  %call19 = call i32 @acpi_table_attr_init(ptr noundef %10, ptr noundef %11, ptr noundef %12) #18, !dbg !3455
  store i32 %call19, ptr %ret, align 4, !dbg !3456
  %13 = load i32, ptr %ret, align 4, !dbg !3457
  %tobool20 = icmp ne i32 %13, 0, !dbg !3457
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3459

if.then21:                                        ; preds = %if.end18
  %14 = load ptr, ptr %table_attr, align 8, !dbg !3460
  call void @kfree(ptr noundef %14) #18, !dbg !3462
  %15 = load i32, ptr %ret, align 4, !dbg !3463
  store i32 %15, ptr %retval, align 4, !dbg !3464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3464

if.end22:                                         ; preds = %if.end18
  %16 = load ptr, ptr %table_attr, align 8, !dbg !3465
  %node = getelementptr inbounds %struct.acpi_table_attr, ptr %16, i32 0, i32 4, !dbg !3466
  call void @list_add_tail(ptr noundef %node, ptr noundef @acpi_table_attr_list) #18, !dbg !3467
  %17 = load ptr, ptr %table_header, align 8, !dbg !3468
  %call23 = call i32 @acpi_table_data_init(ptr noundef %17) #18, !dbg !3469
  br label %for.inc, !dbg !3470

for.inc:                                          ; preds = %if.end22, %if.then13
  %18 = load i32, ptr %table_index, align 4, !dbg !3471
  %inc = add i32 %18, 1, !dbg !3471
  store i32 %inc, ptr %table_index, align 4, !dbg !3471
  br label %for.cond, !dbg !3472, !llvm.loop !3473

for.end:                                          ; preds = %if.then10
  %19 = load ptr, ptr @tables_kobj, align 8, !dbg !3476
  %call24 = call i32 @kobject_uevent(ptr noundef %19, i32 noundef 0) #18, !dbg !3477
  %20 = load ptr, ptr @tables_data_kobj, align 8, !dbg !3478
  %call25 = call i32 @kobject_uevent(ptr noundef %20, i32 noundef 0) #18, !dbg !3479
  %21 = load ptr, ptr @dynamic_tables_kobj, align 8, !dbg !3480
  %call26 = call i32 @kobject_uevent(ptr noundef %21, i32 noundef 0) #18, !dbg !3481
  store i32 0, ptr %retval, align 4, !dbg !3482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3482

err_dynamic_tables:                               ; preds = %if.then7
  call void @llvm.dbg.label(metadata !3395), !dbg !3483
  %22 = load ptr, ptr @tables_data_kobj, align 8, !dbg !3484
  call void @kobject_put(ptr noundef %22) #18, !dbg !3485
  br label %err_tables_data, !dbg !3485

err_tables_data:                                  ; preds = %err_dynamic_tables, %if.then3
  call void @llvm.dbg.label(metadata !3396), !dbg !3486
  %23 = load ptr, ptr @tables_kobj, align 8, !dbg !3487
  call void @kobject_put(ptr noundef %23) #18, !dbg !3488
  br label %err, !dbg !3488

err:                                              ; preds = %err_tables_data, %if.then
  call void @llvm.dbg.label(metadata !3397), !dbg !3489
  store i32 -12, ptr %retval, align 4, !dbg !3490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3490

cleanup:                                          ; preds = %err, %for.end, %if.then21, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3491
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !3491
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #16, !dbg !3491
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_header) #16, !dbg !3491
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_attr) #16, !dbg !3491
  %24 = load i32, ptr %retval, align 4, !dbg !3491
  ret i32 %24, !dbg !3491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3492 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #5 align 16 !dbg !3495 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3501, metadata !DIExpression()), !dbg !3503
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3502, metadata !DIExpression()), !dbg !3504
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3505
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !3506
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #18, !dbg !3507
  ret i32 %call, !dbg !3508
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_get_acpica_version(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !3509 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3511, metadata !DIExpression()), !dbg !3514
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3513, metadata !DIExpression()), !dbg !3517
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !3518
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef 539166248) #18, !dbg !3519
  store i32 %call, ptr %result, align 4, !dbg !3520
  %1 = load i32, ptr %result, align 4, !dbg !3521
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !3522
  ret i32 %1, !dbg !3523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !3524 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3526, metadata !DIExpression()), !dbg !3531
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3527, metadata !DIExpression()), !dbg !3532
  %0 = load i64, ptr %size.addr, align 8, !dbg !3533
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3534
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3535

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3536
  %tobool = icmp ne i64 %2, 0, !dbg !3536
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3537

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3538
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3528, metadata !DIExpression()), !dbg !3539
  %3 = load i64, ptr %size.addr, align 8, !dbg !3540
  %cmp = icmp ugt i64 %3, 8192, !dbg !3542
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3543

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3544
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3545
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !3546
  store ptr %call, ptr %retval, align 8, !dbg !3547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3547

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3548
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !3548
  store i32 %call2, ptr %index, align 4, !dbg !3549
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3550
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3551
  %9 = ptrtoint ptr %8 to i64, !dbg !3551
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !3552
  %idxprom = zext i32 %call3 to i64, !dbg !3553
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3553
  %10 = load i32, ptr %index, align 4, !dbg !3554
  %idxprom4 = zext i32 %10 to i64, !dbg !3553
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3553
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3553
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3555
  %13 = load i64, ptr %size.addr, align 8, !dbg !3556
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !3557
  store ptr %call6, ptr %retval, align 8, !dbg !3558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3558

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3559
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3560
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3561
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !3562
  store ptr %call8, ptr %retval, align 8, !dbg !3563
  br label %return, !dbg !3563

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3564
  ret ptr %16, !dbg !3564
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3565 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !3566 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3570, metadata !DIExpression()), !dbg !3572
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3571, metadata !DIExpression()), !dbg !3573
  %0 = load i64, ptr %size.addr, align 8, !dbg !3574
  %tobool = icmp ne i64 %0, 0, !dbg !3574
  br i1 %tobool, label %if.end, label %if.then, !dbg !3576

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3577
  br label %return, !dbg !3577

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3578
  %cmp = icmp ule i64 %1, 8, !dbg !3580
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3581

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3582
  br label %return, !dbg !3582

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3583
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3585
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3586

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3587
  %cmp4 = icmp ule i64 %3, 96, !dbg !3588
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3589

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3590
  br label %return, !dbg !3590

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3591
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3593
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3594

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3595
  %cmp9 = icmp ule i64 %5, 192, !dbg !3596
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3597

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3598
  br label %return, !dbg !3598

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3599
  %cmp12 = icmp ule i64 %6, 8, !dbg !3601
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3602

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3603
  br label %return, !dbg !3603

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3604
  %cmp15 = icmp ule i64 %7, 16, !dbg !3606
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3607

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3608
  br label %return, !dbg !3608

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3609
  %cmp18 = icmp ule i64 %8, 32, !dbg !3611
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3612

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3613
  br label %return, !dbg !3613

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3614
  %cmp21 = icmp ule i64 %9, 64, !dbg !3616
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3617

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3618
  br label %return, !dbg !3618

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3619
  %cmp24 = icmp ule i64 %10, 128, !dbg !3621
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3622

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3623
  br label %return, !dbg !3623

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3624
  %cmp27 = icmp ule i64 %11, 256, !dbg !3626
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3627

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3628
  br label %return, !dbg !3628

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3629
  %cmp30 = icmp ule i64 %12, 512, !dbg !3631
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3632

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3633
  br label %return, !dbg !3633

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3634
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3636
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3637

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3638
  br label %return, !dbg !3638

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3639
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3641
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3642

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3643
  br label %return, !dbg !3643

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3644
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3646
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3647

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3648
  br label %return, !dbg !3648

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3649
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3651
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3652

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3653
  br label %return, !dbg !3653

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3654
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3656
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3657

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3658
  br label %return, !dbg !3658

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3659
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3661
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3662

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3663
  br label %return, !dbg !3663

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3664
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3666
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3667

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3668
  br label %return, !dbg !3668

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3669
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3671
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3672

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3673
  br label %return, !dbg !3673

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3674
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3676
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3677

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3678
  br label %return, !dbg !3678

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3679
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3681
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3682

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3683
  br label %return, !dbg !3683

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3684
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3686
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3687

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3688
  br label %return, !dbg !3688

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3689
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3691
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3692

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3693
  br label %return, !dbg !3693

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3694, !range !3696, !noundef !353
  %tobool69 = trunc i8 %25 to i1, !dbg !3694
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3697

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3698

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #22, !dbg !3699, !srcloc !3702
  unreachable, !dbg !3699

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3703

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3704

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3705

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3707

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3705

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 480, i32 0, i64 12) #16, !dbg !3709, !srcloc !3711
  br label %do.end75, !dbg !3709

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3705

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3712
  br label %return, !dbg !3712

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3713
  ret i32 %26, !dbg !3713
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3714 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !3720 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3724, metadata !DIExpression()), !dbg !3726
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3725, metadata !DIExpression()), !dbg !3727
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3728
  %and = and i32 %0, 17, !dbg !3728
  %cmp = icmp eq i32 %and, 0, !dbg !3728
  %lnot = xor i1 %cmp, true, !dbg !3728
  %lnot1 = xor i1 %lnot, true, !dbg !3728
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3728
  %conv = sext i32 %lnot.ext to i64, !dbg !3728
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3728
  %tobool = icmp ne i64 %expval, 0, !dbg !3728
  br i1 %tobool, label %if.then, label %if.end, !dbg !3730

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3731
  br label %return, !dbg !3731

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3732
  %and2 = and i32 %1, 1, !dbg !3734
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3734
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3735

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3736
  br label %return, !dbg !3736

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3737
  br label %return, !dbg !3737

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3739
  ret i32 %2, !dbg !3739
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3740 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3741 dso_local void @__compiletime_assert_125() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3742 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3747 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3750 dso_local ptr @strcat(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_table_show(ptr noundef %filp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %offset, i64 noundef %count) #0 align 16 !dbg !3753 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %table_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %table_header = alloca ptr, align 8
  %status = alloca i32, align 4
  %rc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !3755, metadata !DIExpression()), !dbg !3767
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3756, metadata !DIExpression()), !dbg !3768
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !3757, metadata !DIExpression()), !dbg !3769
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3758, metadata !DIExpression()), !dbg !3770
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3759, metadata !DIExpression()), !dbg !3771
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3760, metadata !DIExpression()), !dbg !3772
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_attr) #16, !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %table_attr, metadata !3761, metadata !DIExpression()), !dbg !3774
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3775
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3762, metadata !DIExpression()), !dbg !3775
  %0 = load ptr, ptr %bin_attr.addr, align 8, !dbg !3775
  store ptr %0, ptr %__mptr, align 8, !dbg !3775
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3775
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3775
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3776
  %2 = load ptr, ptr %tmp, align 8, !dbg !3775
  store ptr %2, ptr %table_attr, align 8, !dbg !3774
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_header) #16, !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %table_header, metadata !3764, metadata !DIExpression()), !dbg !3778
  store ptr null, ptr %table_header, align 8, !dbg !3778
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !3779
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3765, metadata !DIExpression()), !dbg !3780
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #16, !dbg !3781
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !3766, metadata !DIExpression()), !dbg !3782
  %3 = load ptr, ptr %table_attr, align 8, !dbg !3783
  %name = getelementptr inbounds %struct.acpi_table_attr, ptr %3, i32 0, i32 1, !dbg !3784
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !3783
  %4 = load ptr, ptr %table_attr, align 8, !dbg !3785
  %instance = getelementptr inbounds %struct.acpi_table_attr, ptr %4, i32 0, i32 2, !dbg !3786
  %5 = load i32, ptr %instance, align 4, !dbg !3786
  %call = call i32 @acpi_get_table(ptr noundef %arraydecay, i32 noundef %5, ptr noundef %table_header) #18, !dbg !3787
  store i32 %call, ptr %status, align 4, !dbg !3788
  %6 = load i32, ptr %status, align 4, !dbg !3789
  %tobool = icmp ne i32 %6, 0, !dbg !3789
  br i1 %tobool, label %if.then, label %if.end, !dbg !3791

if.then:                                          ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !3792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3792

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !3793
  %8 = load i64, ptr %count.addr, align 8, !dbg !3794
  %9 = load ptr, ptr %table_header, align 8, !dbg !3795
  %10 = load ptr, ptr %table_header, align 8, !dbg !3796
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %10, i32 0, i32 1, !dbg !3797
  %11 = load i32, ptr %length, align 1, !dbg !3797
  %conv = zext i32 %11 to i64, !dbg !3796
  %call1 = call i64 @memory_read_from_buffer(ptr noundef %7, i64 noundef %8, ptr noundef %offset.addr, ptr noundef %9, i64 noundef %conv) #18, !dbg !3798
  store i64 %call1, ptr %rc, align 8, !dbg !3799
  %12 = load ptr, ptr %table_header, align 8, !dbg !3800
  call void @acpi_put_table(ptr noundef %12) #18, !dbg !3801
  %13 = load i64, ptr %rc, align 8, !dbg !3802
  store i64 %13, ptr %retval, align 8, !dbg !3803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3803

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_header) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_attr) #16, !dbg !3804
  %14 = load i64, ptr %retval, align 8, !dbg !3804
  ret i64 %14, !dbg !3804
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3805 dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3810 dso_local i64 @memory_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3813 dso_local void @acpi_put_table(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !3816 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3820, metadata !DIExpression()), !dbg !3823
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3821, metadata !DIExpression()), !dbg !3824
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3822, metadata !DIExpression()), !dbg !3825
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3826
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3828
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3829
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !3830
  br i1 %call, label %if.end, label %if.then, !dbg !3831

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3832

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3833
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3834
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3835
  store ptr %3, ptr %prev1, align 8, !dbg !3836
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3837
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3838
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3839
  store ptr %5, ptr %next2, align 8, !dbg !3840
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3841
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3842
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3843
  store ptr %7, ptr %prev3, align 8, !dbg !3844
  br label %do.body, !dbg !3845

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3846

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3848

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3846

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3850
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3850
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3850
  store volatile ptr %9, ptr %next6, align 8, !dbg !3850
  br label %do.end7, !dbg !3850

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3846

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !3853 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3857, metadata !DIExpression()), !dbg !3860
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3858, metadata !DIExpression()), !dbg !3861
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3859, metadata !DIExpression()), !dbg !3862
  ret i1 true, !dbg !3863
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3864 dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3868 dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !3872 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3879, metadata !DIExpression()), !dbg !3881
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3880, metadata !DIExpression()), !dbg !3882
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3883
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3884
  %div = sdiv i64 %1, 64, !dbg !3884
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3885
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !3886
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3887
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3888
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !3889
  ret void, !dbg !3890
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !3891 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3899, metadata !DIExpression()), !dbg !3901
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3900, metadata !DIExpression()), !dbg !3902
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3903
  %1 = load i64, ptr %size.addr, align 8, !dbg !3904
  %conv = trunc i64 %1 to i32, !dbg !3904
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !3905
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3906
  %3 = load i64, ptr %size.addr, align 8, !dbg !3906
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !3906
  ret void, !dbg !3907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !3908 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3911, metadata !DIExpression()), !dbg !3913
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3912, metadata !DIExpression()), !dbg !3914
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3915
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3917
  br i1 %1, label %if.then, label %if.else, !dbg !3918

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3919
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3919
  %shr = ashr i64 %3, 3, !dbg !3919
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3919
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3921
  %and = and i64 %4, 7, !dbg !3921
  %sh_prom = trunc i64 %and to i32, !dbg !3921
  %shl = shl i32 1, %sh_prom, !dbg !3921
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !3922, !srcloc !3923
  br label %if.end, !dbg !3924

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3925
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3927
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !3928, !srcloc !3929
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3931 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3936, metadata !DIExpression()), !dbg !3938
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3937, metadata !DIExpression()), !dbg !3939
  ret i1 true, !dbg !3940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !3941 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3946, metadata !DIExpression()), !dbg !3949
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3947, metadata !DIExpression()), !dbg !3950
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3948, metadata !DIExpression()), !dbg !3951
  ret void, !dbg !3952
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #12 align 16 !dbg !3953 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3957, metadata !DIExpression()), !dbg !3958
  %0 = load i64, ptr %word.addr, align 8, !dbg !3959
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #23, !dbg !3960, !srcloc !3961
  store i64 %1, ptr %word.addr, align 8, !dbg !3960
  %2 = load i64, ptr %word.addr, align 8, !dbg !3962
  ret i64 %2, !dbg !3963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3964 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !3965 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3967, metadata !DIExpression()), !dbg !3971
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3968, metadata !DIExpression()), !dbg !3972
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3969, metadata !DIExpression()), !dbg !3973
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !3974
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !3970, metadata !DIExpression()), !dbg !3975
  %0 = load i64, ptr %n.addr, align 8, !dbg !3976
  %1 = load i64, ptr %size.addr, align 8, !dbg !3976
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !3976
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !3976
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !3976
  store i64 %4, ptr %bytes, align 8, !dbg !3976
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !3976
  %lnot = xor i1 %call, true, !dbg !3976
  %lnot1 = xor i1 %lnot, true, !dbg !3976
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3976
  %conv = sext i32 %lnot.ext to i64, !dbg !3976
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3976
  %tobool = icmp ne i64 %expval, 0, !dbg !3976
  br i1 %tobool, label %if.then, label %if.end, !dbg !3978

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3979

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3980
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !3982
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !3983

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !3984
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3985
  br i1 %8, label %if.then2, label %if.end4, !dbg !3986

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !3987
  %10 = load i32, ptr %flags.addr, align 4, !dbg !3988
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !3989
  store ptr %call3, ptr %retval, align 8, !dbg !3990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3990

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !3991
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3992
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !3993
  store ptr %call5, ptr %retval, align 8, !dbg !3994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3994

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !3995
  %13 = load ptr, ptr %retval, align 8, !dbg !3995
  ret ptr %13, !dbg !3995
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !3996 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4001, metadata !DIExpression()), !dbg !4002
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4003, !range !3696, !noundef !353
  %tobool = trunc i8 %0 to i1, !dbg !4003
  %lnot = xor i1 %tobool, true, !dbg !4003
  %lnot1 = xor i1 %lnot, true, !dbg !4003
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4003
  %conv = sext i32 %lnot.ext to i64, !dbg !4003
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4003
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4003
  ret i1 %tobool2, !dbg !4004
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gpe_count(i32 noundef %gpe_number) #0 align 16 !dbg !4005 {
entry:
  %gpe_number.addr = alloca i32, align 4
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !4009, metadata !DIExpression()), !dbg !4010
  %0 = load i32, ptr @acpi_gpe_count, align 4, !dbg !4011
  %inc = add i32 %0, 1, !dbg !4011
  store i32 %inc, ptr @acpi_gpe_count, align 4, !dbg !4011
  %1 = load ptr, ptr @all_counters, align 8, !dbg !4012
  %tobool = icmp ne ptr %1, null, !dbg !4012
  br i1 %tobool, label %if.end, label %if.then, !dbg !4014

if.then:                                          ; preds = %entry
  br label %if.end9, !dbg !4015

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !4016
  %3 = load i32, ptr @num_gpes, align 4, !dbg !4018
  %cmp = icmp ult i32 %2, %3, !dbg !4019
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4020

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr @all_counters, align 8, !dbg !4021
  %5 = load i32, ptr %gpe_number.addr, align 4, !dbg !4022
  %idxprom = zext i32 %5 to i64, !dbg !4021
  %arrayidx = getelementptr %struct.event_counter, ptr %4, i64 %idxprom, !dbg !4021
  %count = getelementptr inbounds %struct.event_counter, ptr %arrayidx, i32 0, i32 0, !dbg !4023
  %6 = load i32, ptr %count, align 4, !dbg !4024
  %inc2 = add i32 %6, 1, !dbg !4024
  store i32 %inc2, ptr %count, align 4, !dbg !4024
  br label %if.end9, !dbg !4021

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr @all_counters, align 8, !dbg !4025
  %8 = load i32, ptr @num_gpes, align 4, !dbg !4026
  %add = add i32 %8, 4, !dbg !4027
  %add3 = add i32 %add, 1, !dbg !4028
  %add4 = add i32 %add3, 3, !dbg !4029
  %idxprom5 = zext i32 %add4 to i64, !dbg !4025
  %arrayidx6 = getelementptr %struct.event_counter, ptr %7, i64 %idxprom5, !dbg !4025
  %count7 = getelementptr inbounds %struct.event_counter, ptr %arrayidx6, i32 0, i32 0, !dbg !4030
  %9 = load i32, ptr %count7, align 4, !dbg !4031
  %inc8 = add i32 %9, 1, !dbg !4031
  store i32 %inc8, ptr %count7, align 4, !dbg !4031
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.else, %if.then1
  ret void, !dbg !4032
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fixed_event_count(i32 noundef %event_number) #0 align 16 !dbg !4033 {
entry:
  %event_number.addr = alloca i32, align 4
  store i32 %event_number, ptr %event_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_number.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  %0 = load ptr, ptr @all_counters, align 8, !dbg !4037
  %tobool = icmp ne ptr %0, null, !dbg !4037
  br i1 %tobool, label %if.end, label %if.then, !dbg !4039

if.then:                                          ; preds = %entry
  br label %if.end9, !dbg !4040

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %event_number.addr, align 4, !dbg !4041
  %cmp = icmp ult i32 %1, 5, !dbg !4043
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4044

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr @all_counters, align 8, !dbg !4045
  %3 = load i32, ptr @num_gpes, align 4, !dbg !4046
  %4 = load i32, ptr %event_number.addr, align 4, !dbg !4047
  %add = add i32 %3, %4, !dbg !4048
  %idxprom = zext i32 %add to i64, !dbg !4045
  %arrayidx = getelementptr %struct.event_counter, ptr %2, i64 %idxprom, !dbg !4045
  %count = getelementptr inbounds %struct.event_counter, ptr %arrayidx, i32 0, i32 0, !dbg !4049
  %5 = load i32, ptr %count, align 4, !dbg !4050
  %inc = add i32 %5, 1, !dbg !4050
  store i32 %inc, ptr %count, align 4, !dbg !4050
  br label %if.end9, !dbg !4045

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr @all_counters, align 8, !dbg !4051
  %7 = load i32, ptr @num_gpes, align 4, !dbg !4052
  %add2 = add i32 %7, 4, !dbg !4053
  %add3 = add i32 %add2, 1, !dbg !4054
  %add4 = add i32 %add3, 3, !dbg !4055
  %idxprom5 = zext i32 %add4 to i64, !dbg !4051
  %arrayidx6 = getelementptr %struct.event_counter, ptr %6, i64 %idxprom5, !dbg !4051
  %count7 = getelementptr inbounds %struct.event_counter, ptr %arrayidx6, i32 0, i32 0, !dbg !4056
  %8 = load i32, ptr %count7, align 4, !dbg !4057
  %inc8 = add i32 %8, 1, !dbg !4057
  store i32 %inc8, ptr %count7, align 4, !dbg !4057
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.else, %if.then1
  ret void, !dbg !4058
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_status(i32 noundef %index, ptr noundef %ret, ptr noundef %handle) #0 align 16 !dbg !4059 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %ret.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4064, metadata !DIExpression()), !dbg !4068
  store ptr %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !4065, metadata !DIExpression()), !dbg !4069
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4066, metadata !DIExpression()), !dbg !4070
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !4071
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4067, metadata !DIExpression()), !dbg !4072
  %0 = load i32, ptr %index.addr, align 4, !dbg !4073
  %1 = load i32, ptr @num_gpes, align 4, !dbg !4075
  %add = add i32 %1, 4, !dbg !4076
  %add1 = add i32 %add, 1, !dbg !4077
  %cmp = icmp uge i32 %0, %add1, !dbg !4078
  br i1 %cmp, label %if.then, label %if.end, !dbg !4079

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4080

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %index.addr, align 4, !dbg !4081
  %3 = load i32, ptr @num_gpes, align 4, !dbg !4083
  %cmp2 = icmp ult i32 %2, %3, !dbg !4084
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4085

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %index.addr, align 4, !dbg !4086
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !4088
  %call = call i32 @acpi_get_gpe_device(i32 noundef %4, ptr noundef %5) #18, !dbg !4089
  store i32 %call, ptr %status, align 4, !dbg !4090
  %6 = load i32, ptr %status, align 4, !dbg !4091
  %tobool = icmp ne i32 %6, 0, !dbg !4091
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !4093

if.then4:                                         ; preds = %if.then3
  br label %do.body, !dbg !4094

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !4097

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4097

do.end:                                           ; preds = %do.cond
  %7 = load i32, ptr %index.addr, align 4, !dbg !4094
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, i32 noundef %7) #19, !dbg !4094
  store i32 %call5, ptr %tmp, align 4, !dbg !4097
  %8 = load i32, ptr %tmp, align 4, !dbg !4094
  store i32 -6, ptr %retval, align 4, !dbg !4099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4099

if.end6:                                          ; preds = %if.then3
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !4100
  %10 = load ptr, ptr %9, align 8, !dbg !4101
  %11 = load i32, ptr %index.addr, align 4, !dbg !4102
  %12 = load ptr, ptr %ret.addr, align 8, !dbg !4103
  %call7 = call i32 @acpi_get_gpe_status(ptr noundef %10, i32 noundef %11, ptr noundef %12) #18, !dbg !4104
  store i32 %call7, ptr %status, align 4, !dbg !4105
  br label %if.end9, !dbg !4106

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %index.addr, align 4, !dbg !4107
  %14 = load i32, ptr @num_gpes, align 4, !dbg !4109
  %sub = sub i32 %13, %14, !dbg !4110
  %15 = load ptr, ptr %ret.addr, align 8, !dbg !4111
  %call8 = call i32 @acpi_get_event_status(i32 noundef %sub, ptr noundef %15) #18, !dbg !4112
  store i32 %call8, ptr %status, align 4, !dbg !4113
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end6
  %16 = load i32, ptr %status, align 4, !dbg !4114
  %tobool10 = icmp ne i32 %16, 0, !dbg !4114
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4116

if.then11:                                        ; preds = %if.end9
  store i32 -5, ptr %retval, align 4, !dbg !4117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4117

if.end12:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !4118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4118

cleanup:                                          ; preds = %if.end12, %if.then11, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !4119
  %17 = load i32, ptr %retval, align 4, !dbg !4119
  ret i32 %17, !dbg !4119
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4120 dso_local i32 @acpi_get_gpe_status(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4123 dso_local i32 @acpi_get_event_status(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4126 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4129 dso_local i32 @acpi_disable_gpe(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4132 dso_local i32 @acpi_enable_gpe(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4133 dso_local i32 @acpi_clear_gpe(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !4134 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4138, metadata !DIExpression()), !dbg !4141
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4139, metadata !DIExpression()), !dbg !4142
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4140, metadata !DIExpression()), !dbg !4143
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4144
  %1 = load i32, ptr %base.addr, align 4, !dbg !4146
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4147
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #18, !dbg !4148
  ret i32 %call, !dbg !4149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4150 dso_local i32 @acpi_disable_event(i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4153 dso_local i32 @acpi_enable_event(i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4154 dso_local i32 @acpi_clear_event(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4157 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4161 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @enabled_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4164 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %hotplug = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4166, metadata !DIExpression()), !dbg !4170
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4167, metadata !DIExpression()), !dbg !4171
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4168, metadata !DIExpression()), !dbg !4172
  call void @llvm.lifetime.start.p0(i64 8, ptr %hotplug) #16, !dbg !4173
  call void @llvm.dbg.declare(metadata ptr %hotplug, metadata !4169, metadata !DIExpression()), !dbg !4174
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4175
  %call = call ptr @to_acpi_hotplug_profile(ptr noundef %0) #18, !dbg !4176
  store ptr %call, ptr %hotplug, align 8, !dbg !4174
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4177
  %2 = load ptr, ptr %hotplug, align 8, !dbg !4178
  %enabled = getelementptr inbounds %struct.acpi_hotplug_profile, ptr %2, i32 0, i32 3, !dbg !4179
  %bf.load = load i8, ptr %enabled, align 8, !dbg !4179
  %bf.clear = and i8 %bf.load, 1, !dbg !4179
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !4179
  %conv = zext i1 %bf.cast to i32, !dbg !4178
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.39, i32 noundef %conv) #18, !dbg !4180
  %conv2 = sext i32 %call1 to i64, !dbg !4180
  call void @llvm.lifetime.end.p0(i64 8, ptr %hotplug) #16, !dbg !4181
  ret i64 %conv2, !dbg !4182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @enabled_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !4183 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %hotplug = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4185, metadata !DIExpression()), !dbg !4191
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4186, metadata !DIExpression()), !dbg !4192
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4187, metadata !DIExpression()), !dbg !4193
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4188, metadata !DIExpression()), !dbg !4194
  call void @llvm.lifetime.start.p0(i64 8, ptr %hotplug) #16, !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %hotplug, metadata !4189, metadata !DIExpression()), !dbg !4196
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4197
  %call = call ptr @to_acpi_hotplug_profile(ptr noundef %0) #18, !dbg !4198
  store ptr %call, ptr %hotplug, align 8, !dbg !4196
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #16, !dbg !4199
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4190, metadata !DIExpression()), !dbg !4200
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4201
  %call1 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef %val) #18, !dbg !4203
  %tobool = icmp ne i32 %call1, 0, !dbg !4203
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4204

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %val, align 4, !dbg !4205
  %cmp = icmp ugt i32 %2, 1, !dbg !4206
  br i1 %cmp, label %if.then, label %if.end, !dbg !4207

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !4208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4208

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %hotplug, align 8, !dbg !4209
  %4 = load i32, ptr %val, align 4, !dbg !4210
  %tobool2 = icmp ne i32 %4, 0, !dbg !4210
  call void @acpi_scan_hotplug_enabled(ptr noundef %3, i1 noundef zeroext %tobool2) #18, !dbg !4211
  %5 = load i64, ptr %size.addr, align 8, !dbg !4212
  store i64 %5, ptr %retval, align 8, !dbg !4213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4213

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #16, !dbg !4214
  call void @llvm.lifetime.end.p0(i64 8, ptr %hotplug) #16, !dbg !4214
  %6 = load i64, ptr %retval, align 8, !dbg !4214
  ret i64 %6, !dbg !4214
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_acpi_hotplug_profile(ptr noundef %kobj) #5 align 16 !dbg !4215 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4219, metadata !DIExpression()), !dbg !4222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4220, metadata !DIExpression()), !dbg !4223
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4223
  store ptr %0, ptr %__mptr, align 8, !dbg !4223
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4223
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4223
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4224
  %2 = load ptr, ptr %tmp, align 8, !dbg !4223
  ret ptr %2, !dbg !4225
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4226 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4229 dso_local void @acpi_scan_hotplug_enabled(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4233 dso_local i32 @acpi_get_table_by_index(i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_table_data_init(ptr noundef %th) #0 align 16 !dbg !4236 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca ptr, align 8
  %data_attr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %th, ptr %th.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %th.addr, metadata !4240, metadata !DIExpression()), !dbg !4243
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_attr) #16, !dbg !4244
  call void @llvm.dbg.declare(metadata ptr %data_attr, metadata !4241, metadata !DIExpression()), !dbg !4245
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4246
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4242, metadata !DIExpression()), !dbg !4247
  store i32 0, ptr %i, align 4, !dbg !4248
  br label %for.cond, !dbg !4250

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4251
  %conv = sext i32 %0 to i64, !dbg !4251
  %cmp = icmp ult i64 %conv, 2, !dbg !4253
  br i1 %cmp, label %for.body, label %for.end, !dbg !4254

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %th.addr, align 8, !dbg !4255
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %1, i32 0, i32 0, !dbg !4255
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !4255
  %2 = ptrtoint ptr %arraydecay to i64, !dbg !4255
  %3 = inttoptr i64 %2 to ptr, !dbg !4255
  %4 = load i32, ptr %3, align 4, !dbg !4255
  %5 = load i32, ptr %i, align 4, !dbg !4255
  %idxprom = sext i32 %5 to i64, !dbg !4255
  %arrayidx = getelementptr [2 x %struct.acpi_data_obj], ptr @acpi_data_objs, i64 0, i64 %idxprom, !dbg !4255
  %name = getelementptr inbounds %struct.acpi_data_obj, ptr %arrayidx, i32 0, i32 0, !dbg !4255
  %6 = load ptr, ptr %name, align 16, !dbg !4255
  %7 = ptrtoint ptr %6 to i64, !dbg !4255
  %8 = inttoptr i64 %7 to ptr, !dbg !4255
  %9 = load i32, ptr %8, align 4, !dbg !4255
  %cmp2 = icmp eq i32 %4, %9, !dbg !4255
  br i1 %cmp2, label %if.then, label %if.end10, !dbg !4258

if.then:                                          ; preds = %for.body
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #17, !dbg !4259
  store ptr %call, ptr %data_attr, align 8, !dbg !4261
  %10 = load ptr, ptr %data_attr, align 8, !dbg !4262
  %tobool = icmp ne ptr %10, null, !dbg !4262
  br i1 %tobool, label %if.end, label %if.then4, !dbg !4264

if.then4:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !4265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4265

if.end:                                           ; preds = %if.then
  br label %do.body, !dbg !4266

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !4267

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4267

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %data_attr, align 8, !dbg !4269
  %attr = getelementptr inbounds %struct.acpi_data_attr, ptr %11, i32 0, i32 0, !dbg !4270
  %read = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 4, !dbg !4271
  store ptr @acpi_data_show, ptr %read, align 8, !dbg !4272
  %12 = load ptr, ptr %data_attr, align 8, !dbg !4273
  %attr5 = getelementptr inbounds %struct.acpi_data_attr, ptr %12, i32 0, i32 0, !dbg !4274
  %attr6 = getelementptr inbounds %struct.bin_attribute, ptr %attr5, i32 0, i32 0, !dbg !4275
  %mode = getelementptr inbounds %struct.attribute, ptr %attr6, i32 0, i32 1, !dbg !4276
  store i16 256, ptr %mode, align 8, !dbg !4277
  %13 = load i32, ptr %i, align 4, !dbg !4278
  %idxprom7 = sext i32 %13 to i64, !dbg !4279
  %arrayidx8 = getelementptr [2 x %struct.acpi_data_obj], ptr @acpi_data_objs, i64 0, i64 %idxprom7, !dbg !4279
  %fn = getelementptr inbounds %struct.acpi_data_obj, ptr %arrayidx8, i32 0, i32 1, !dbg !4280
  %14 = load ptr, ptr %fn, align 8, !dbg !4280
  %15 = load ptr, ptr %th.addr, align 8, !dbg !4281
  %16 = load ptr, ptr %data_attr, align 8, !dbg !4282
  %call9 = call i32 %14(ptr noundef %15, ptr noundef %16) #18, !dbg !4279
  store i32 %call9, ptr %retval, align 4, !dbg !4283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4283

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !4284

for.inc:                                          ; preds = %if.end10
  %17 = load i32, ptr %i, align 4, !dbg !4285
  %inc = add i32 %17, 1, !dbg !4285
  store i32 %inc, ptr %i, align 4, !dbg !4285
  br label %for.cond, !dbg !4286, !llvm.loop !4287

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4289

cleanup:                                          ; preds = %for.end, %do.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4290
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_attr) #16, !dbg !4290
  %18 = load i32, ptr %retval, align 4, !dbg !4290
  ret i32 %18, !dbg !4290
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_data_show(ptr noundef %filp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %offset, i64 noundef %count) #0 align 16 !dbg !4291 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %data_attr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %size = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4293, metadata !DIExpression()), !dbg !4304
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4294, metadata !DIExpression()), !dbg !4305
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !4295, metadata !DIExpression()), !dbg !4306
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4296, metadata !DIExpression()), !dbg !4307
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4297, metadata !DIExpression()), !dbg !4308
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4298, metadata !DIExpression()), !dbg !4309
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_attr) #16, !dbg !4310
  call void @llvm.dbg.declare(metadata ptr %data_attr, metadata !4299, metadata !DIExpression()), !dbg !4311
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #16, !dbg !4312
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4300, metadata !DIExpression()), !dbg !4313
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4301, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4302, metadata !DIExpression()), !dbg !4316
  %0 = load ptr, ptr %bin_attr.addr, align 8, !dbg !4316
  store ptr %0, ptr %__mptr, align 8, !dbg !4316
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4316
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4316
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4317
  %2 = load ptr, ptr %tmp, align 8, !dbg !4316
  store ptr %2, ptr %data_attr, align 8, !dbg !4318
  %3 = load ptr, ptr %data_attr, align 8, !dbg !4319
  %attr = getelementptr inbounds %struct.acpi_data_attr, ptr %3, i32 0, i32 0, !dbg !4320
  %size1 = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 1, !dbg !4321
  %4 = load i64, ptr %size1, align 8, !dbg !4321
  store i64 %4, ptr %size, align 8, !dbg !4322
  %5 = load i64, ptr %offset.addr, align 8, !dbg !4323
  %cmp = icmp slt i64 %5, 0, !dbg !4325
  br i1 %cmp, label %if.then, label %if.end, !dbg !4326

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4327

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %offset.addr, align 8, !dbg !4328
  %7 = load i64, ptr %size, align 8, !dbg !4330
  %cmp2 = icmp sge i64 %6, %7, !dbg !4331
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4332

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !4333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4333

if.end4:                                          ; preds = %if.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !4334
  %9 = load i64, ptr %size, align 8, !dbg !4336
  %10 = load i64, ptr %offset.addr, align 8, !dbg !4337
  %sub = sub i64 %9, %10, !dbg !4338
  %cmp5 = icmp ugt i64 %8, %sub, !dbg !4339
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !4340

if.then6:                                         ; preds = %if.end4
  %11 = load i64, ptr %size, align 8, !dbg !4341
  %12 = load i64, ptr %offset.addr, align 8, !dbg !4342
  %sub7 = sub i64 %11, %12, !dbg !4343
  store i64 %sub7, ptr %count.addr, align 8, !dbg !4344
  br label %if.end8, !dbg !4345

if.end8:                                          ; preds = %if.then6, %if.end4
  %13 = load ptr, ptr %data_attr, align 8, !dbg !4346
  %addr = getelementptr inbounds %struct.acpi_data_attr, ptr %13, i32 0, i32 1, !dbg !4347
  %14 = load i64, ptr %addr, align 8, !dbg !4347
  %15 = load i64, ptr %size, align 8, !dbg !4348
  %call = call ptr @acpi_os_map_iomem(i64 noundef %14, i64 noundef %15) #18, !dbg !4349
  store ptr %call, ptr %base, align 8, !dbg !4350
  %16 = load ptr, ptr %base, align 8, !dbg !4351
  %tobool = icmp ne ptr %16, null, !dbg !4351
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !4353

if.then9:                                         ; preds = %if.end8
  store i64 -12, ptr %retval, align 8, !dbg !4354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4354

if.end10:                                         ; preds = %if.end8
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !4355
  %18 = load ptr, ptr %base, align 8, !dbg !4356
  %19 = load i64, ptr %offset.addr, align 8, !dbg !4357
  %add.ptr11 = getelementptr i8, ptr %18, i64 %19, !dbg !4358
  %20 = load i64, ptr %count.addr, align 8, !dbg !4359
  call void @memcpy_fromio(ptr noundef %17, ptr noundef %add.ptr11, i64 noundef %20) #18, !dbg !4360
  %21 = load ptr, ptr %base, align 8, !dbg !4361
  %22 = load i64, ptr %size, align 8, !dbg !4362
  call void @acpi_os_unmap_iomem(ptr noundef %21, i64 noundef %22) #18, !dbg !4363
  %23 = load i64, ptr %count.addr, align 8, !dbg !4364
  store i64 %23, ptr %retval, align 8, !dbg !4365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4365

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !4366
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #16, !dbg !4366
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_attr) #16, !dbg !4366
  %24 = load i64, ptr %retval, align 8, !dbg !4366
  ret i64 %24, !dbg !4366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_bert_data_init(ptr noundef %th, ptr noundef %data_attr) #0 align 16 !dbg !4367 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca ptr, align 8
  %data_attr.addr = alloca ptr, align 8
  %bert = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %th, ptr %th.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %th.addr, metadata !4369, metadata !DIExpression()), !dbg !4379
  store ptr %data_attr, ptr %data_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_attr.addr, metadata !4370, metadata !DIExpression()), !dbg !4380
  call void @llvm.lifetime.start.p0(i64 8, ptr %bert) #16, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %bert, metadata !4371, metadata !DIExpression()), !dbg !4382
  %0 = load ptr, ptr %th.addr, align 8, !dbg !4383
  store ptr %0, ptr %bert, align 8, !dbg !4382
  %1 = load ptr, ptr %bert, align 8, !dbg !4384
  %header = getelementptr inbounds %struct.acpi_table_bert, ptr %1, i32 0, i32 0, !dbg !4386
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !4387
  %2 = load i32, ptr %length, align 1, !dbg !4387
  %conv = zext i32 %2 to i64, !dbg !4384
  %cmp = icmp ult i64 %conv, 48, !dbg !4388
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4389

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %bert, align 8, !dbg !4390
  %region_length = getelementptr inbounds %struct.acpi_table_bert, ptr %3, i32 0, i32 1, !dbg !4391
  %4 = load i32, ptr %region_length, align 1, !dbg !4391
  %conv2 = zext i32 %4 to i64, !dbg !4390
  %cmp3 = icmp ult i64 %conv2, 20, !dbg !4392
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4393

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %data_attr.addr, align 8, !dbg !4394
  call void @kfree(ptr noundef %5) #18, !dbg !4396
  store i32 -22, ptr %retval, align 4, !dbg !4397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4397

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %bert, align 8, !dbg !4398
  %address = getelementptr inbounds %struct.acpi_table_bert, ptr %6, i32 0, i32 2, !dbg !4399
  %7 = load i64, ptr %address, align 1, !dbg !4399
  %8 = load ptr, ptr %data_attr.addr, align 8, !dbg !4400
  %addr = getelementptr inbounds %struct.acpi_data_attr, ptr %8, i32 0, i32 1, !dbg !4401
  store i64 %7, ptr %addr, align 8, !dbg !4402
  %9 = load ptr, ptr %bert, align 8, !dbg !4403
  %region_length5 = getelementptr inbounds %struct.acpi_table_bert, ptr %9, i32 0, i32 1, !dbg !4404
  %10 = load i32, ptr %region_length5, align 1, !dbg !4404
  %conv6 = zext i32 %10 to i64, !dbg !4403
  %11 = load ptr, ptr %data_attr.addr, align 8, !dbg !4405
  %attr = getelementptr inbounds %struct.acpi_data_attr, ptr %11, i32 0, i32 0, !dbg !4406
  %size = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 1, !dbg !4407
  store i64 %conv6, ptr %size, align 8, !dbg !4408
  %12 = load ptr, ptr %data_attr.addr, align 8, !dbg !4409
  %attr7 = getelementptr inbounds %struct.acpi_data_attr, ptr %12, i32 0, i32 0, !dbg !4410
  %attr8 = getelementptr inbounds %struct.bin_attribute, ptr %attr7, i32 0, i32 0, !dbg !4411
  %name = getelementptr inbounds %struct.attribute, ptr %attr8, i32 0, i32 0, !dbg !4412
  store ptr @.str.43, ptr %name, align 8, !dbg !4413
  %13 = load ptr, ptr @tables_data_kobj, align 8, !dbg !4414
  %14 = load ptr, ptr %data_attr.addr, align 8, !dbg !4415
  %attr9 = getelementptr inbounds %struct.acpi_data_attr, ptr %14, i32 0, i32 0, !dbg !4416
  %call = call i32 @sysfs_create_bin_file(ptr noundef %13, ptr noundef %attr9) #18, !dbg !4417
  store i32 %call, ptr %retval, align 4, !dbg !4418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4418

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bert) #16, !dbg !4419
  %15 = load i32, ptr %retval, align 4, !dbg !4419
  ret i32 %15, !dbg !4419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ccel_data_init(ptr noundef %th, ptr noundef %data_attr) #0 align 16 !dbg !4420 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca ptr, align 8
  %data_attr.addr = alloca ptr, align 8
  %ccel = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %th, ptr %th.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %th.addr, metadata !4422, metadata !DIExpression()), !dbg !4435
  store ptr %data_attr, ptr %data_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_attr.addr, metadata !4423, metadata !DIExpression()), !dbg !4436
  call void @llvm.lifetime.start.p0(i64 8, ptr %ccel) #16, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %ccel, metadata !4424, metadata !DIExpression()), !dbg !4438
  %0 = load ptr, ptr %th.addr, align 8, !dbg !4439
  store ptr %0, ptr %ccel, align 8, !dbg !4438
  %1 = load ptr, ptr %ccel, align 8, !dbg !4440
  %header = getelementptr inbounds %struct.acpi_table_ccel, ptr %1, i32 0, i32 0, !dbg !4442
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !4443
  %2 = load i32, ptr %length, align 1, !dbg !4443
  %conv = zext i32 %2 to i64, !dbg !4440
  %cmp = icmp ult i64 %conv, 56, !dbg !4444
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4445

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %ccel, align 8, !dbg !4446
  %log_area_start_address = getelementptr inbounds %struct.acpi_table_ccel, ptr %3, i32 0, i32 5, !dbg !4447
  %4 = load i64, ptr %log_area_start_address, align 1, !dbg !4447
  %tobool = icmp ne i64 %4, 0, !dbg !4446
  br i1 %tobool, label %lor.lhs.false2, label %if.then, !dbg !4448

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %ccel, align 8, !dbg !4449
  %log_area_minimum_length = getelementptr inbounds %struct.acpi_table_ccel, ptr %5, i32 0, i32 4, !dbg !4450
  %6 = load i64, ptr %log_area_minimum_length, align 1, !dbg !4450
  %tobool3 = icmp ne i64 %6, 0, !dbg !4449
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4451

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %7 = load ptr, ptr %data_attr.addr, align 8, !dbg !4452
  call void @kfree(ptr noundef %7) #18, !dbg !4454
  store i32 -22, ptr %retval, align 4, !dbg !4455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4455

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %ccel, align 8, !dbg !4456
  %log_area_start_address4 = getelementptr inbounds %struct.acpi_table_ccel, ptr %8, i32 0, i32 5, !dbg !4457
  %9 = load i64, ptr %log_area_start_address4, align 1, !dbg !4457
  %10 = load ptr, ptr %data_attr.addr, align 8, !dbg !4458
  %addr = getelementptr inbounds %struct.acpi_data_attr, ptr %10, i32 0, i32 1, !dbg !4459
  store i64 %9, ptr %addr, align 8, !dbg !4460
  %11 = load ptr, ptr %ccel, align 8, !dbg !4461
  %log_area_minimum_length5 = getelementptr inbounds %struct.acpi_table_ccel, ptr %11, i32 0, i32 4, !dbg !4462
  %12 = load i64, ptr %log_area_minimum_length5, align 1, !dbg !4462
  %13 = load ptr, ptr %data_attr.addr, align 8, !dbg !4463
  %attr = getelementptr inbounds %struct.acpi_data_attr, ptr %13, i32 0, i32 0, !dbg !4464
  %size = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 1, !dbg !4465
  store i64 %12, ptr %size, align 8, !dbg !4466
  %14 = load ptr, ptr %data_attr.addr, align 8, !dbg !4467
  %attr6 = getelementptr inbounds %struct.acpi_data_attr, ptr %14, i32 0, i32 0, !dbg !4468
  %attr7 = getelementptr inbounds %struct.bin_attribute, ptr %attr6, i32 0, i32 0, !dbg !4469
  %name = getelementptr inbounds %struct.attribute, ptr %attr7, i32 0, i32 0, !dbg !4470
  store ptr @.str.44, ptr %name, align 8, !dbg !4471
  %15 = load ptr, ptr @tables_data_kobj, align 8, !dbg !4472
  %16 = load ptr, ptr %data_attr.addr, align 8, !dbg !4473
  %attr8 = getelementptr inbounds %struct.acpi_data_attr, ptr %16, i32 0, i32 0, !dbg !4474
  %call = call i32 @sysfs_create_bin_file(ptr noundef %15, ptr noundef %attr8) #18, !dbg !4475
  store i32 %call, ptr %retval, align 4, !dbg !4476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4476

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ccel) #16, !dbg !4477
  %17 = load i32, ptr %retval, align 4, !dbg !4477
  ret i32 %17, !dbg !4477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4478 dso_local ptr @acpi_os_map_iomem(i64 noundef, i64 noundef) #4 section ".ref.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4484 dso_local void @memcpy_fromio(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4488 dso_local void @acpi_os_unmap_iomem(ptr noundef, i64 noundef) #4 section ".ref.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4491 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @force_remove_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4494 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4496, metadata !DIExpression()), !dbg !4499
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4497, metadata !DIExpression()), !dbg !4500
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4498, metadata !DIExpression()), !dbg !4501
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4502
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.39, i32 noundef 0) #18, !dbg !4503
  %conv = sext i32 %call to i64, !dbg !4503
  ret i64 %conv, !dbg !4504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @force_remove_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !4505 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4507, metadata !DIExpression()), !dbg !4513
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4508, metadata !DIExpression()), !dbg !4514
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4509, metadata !DIExpression()), !dbg !4515
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4510, metadata !DIExpression()), !dbg !4516
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #16, !dbg !4517
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4511, metadata !DIExpression()), !dbg !4518
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4519
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4512, metadata !DIExpression()), !dbg !4520
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4521
  %call = call i32 @kstrtobool(ptr noundef %0, ptr noundef %val) #18, !dbg !4522
  store i32 %call, ptr %ret, align 4, !dbg !4523
  %1 = load i32, ptr %ret, align 4, !dbg !4524
  %cmp = icmp slt i32 %1, 0, !dbg !4526
  br i1 %cmp, label %if.then, label %if.end, !dbg !4527

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !4528
  %conv = sext i32 %2 to i64, !dbg !4528
  store i64 %conv, ptr %retval, align 8, !dbg !4529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4529

if.end:                                           ; preds = %entry
  %3 = load i8, ptr %val, align 1, !dbg !4530, !range !3696, !noundef !353
  %tobool = trunc i8 %3 to i1, !dbg !4530
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4532

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4533

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !4536

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4536

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.46) #19, !dbg !4533
  store i32 %call2, ptr %tmp, align 4, !dbg !4536
  %4 = load i32, ptr %tmp, align 4, !dbg !4533
  store i64 -22, ptr %retval, align 8, !dbg !4538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4538

if.end3:                                          ; preds = %if.end
  %5 = load i64, ptr %size.addr, align 8, !dbg !4539
  store i64 %5, ptr %retval, align 8, !dbg !4540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4540

cleanup:                                          ; preds = %if.end3, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #16, !dbg !4541
  %6 = load i64, ptr %retval, align 8, !dbg !4541
  ret i64 %6, !dbg !4541
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4542 dso_local i32 @kstrtobool(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_profile_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4546 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4548, metadata !DIExpression()), !dbg !4551
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4549, metadata !DIExpression()), !dbg !4552
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4550, metadata !DIExpression()), !dbg !4553
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4554
  %1 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 4), align 1, !dbg !4555
  %conv = zext i8 %1 to i32, !dbg !4556
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.39, i32 noundef %conv) #18, !dbg !4557
  %conv1 = sext i32 %call to i64, !dbg !4557
  ret i64 %conv1, !dbg !4558
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0,1) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!llvm.ident = !{!2261}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_aml_debug_output", scope: !2, file: !3, line: 274, type: !2250, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22sysfs\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/sysfs.ll drivers/acpi/sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !1998, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8b02c7bb1d341198e13da317ad23779")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !95, !100}
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !79, line: 30, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!83 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !85, line: 53, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94}
!87 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!88 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!89 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!90 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!91 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!92 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!93 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!94 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
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
!110 = !{!111, !287, !1156, !1157, !265, !1159, !1160, !1161, !1173, !1175, !1177, !46, !1179, !1180, !1181, !1993}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !113)
!113 = !{!114, !115, !122, !127, !809, !835, !836, !837, !838, !842, !845, !846, !847, !900, !901, !902, !903, !904, !905, !906, !907, !910, !914, !934, !952, !953, !954, !955, !964, !988, !989, !992, !995, !996, !997, !998, !999, !1000, !1001, !1006, !1007, !1114, !1122, !1123, !1124, !1126, !1130, !1131, !1135, !1136, !1137, !1138, !1140, !1141, !1142, !1149, !1150, !1151, !1155}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !112, file: !6, line: 403, baseType: !5, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !112, file: !6, line: 406, baseType: !116, size: 128, offset: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 190, size: 128, elements: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !117, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !117, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !6, line: 409, baseType: !123, size: 448, offset: 192)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 448, elements: !125)
!124 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!126}
!126 = !DISubrange(count: 56)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !112, file: !6, line: 417, baseType: !128, size: 768, offset: 640)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !129)
!129 = !{!130, !792, !793, !794, !797}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !6, line: 46, baseType: !131, size: 512)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !85, line: 64, size: 512, elements: !132)
!132 = !{!133, !136, !137, !139, !228, !662, !777, !787, !788, !789, !790, !791}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !85, line: 65, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !131, file: !85, line: 66, baseType: !116, size: 128, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !131, file: !85, line: 67, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !131, file: !85, line: 68, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !85, line: 168, size: 768, elements: !142)
!142 = !{!143, !144, !187, !188}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !141, file: !85, line: 169, baseType: !116, size: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !141, file: !85, line: 170, baseType: !145, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !146, line: 29, baseType: !147)
!146 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !146, line: 17, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !146, line: 18, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !146, line: 18, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !150, file: !146, line: 19, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !154, line: 14, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !153, file: !154, line: 15, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !158, line: 44, baseType: !159)
!158 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !158, line: 14, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 15, baseType: !162, size: 32)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 15, size: 32, elements: !163)
!163 = !{!164, !169, !179}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !162, file: !158, line: 16, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !166, file: !117, line: 173, baseType: !46, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !158, line: 24, baseType: !170, size: 16)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !158, line: 24, size: 16, elements: !171)
!171 = !{!172, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !170, file: !158, line: 25, baseType: !173, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !174, line: 17, baseType: !175)
!174 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !176, line: 21, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!177 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !170, file: !158, line: 26, baseType: !173, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !158, line: 28, baseType: !180, size: 32)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !158, line: 28, size: 32, elements: !181)
!181 = !{!182, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !180, file: !158, line: 29, baseType: !183, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !174, line: 19, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !176, line: 24, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !180, file: !158, line: 30, baseType: !183, size: 16, offset: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !141, file: !85, line: 171, baseType: !131, size: 512, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !141, file: !85, line: 172, baseType: !189, size: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !85, line: 133, size: 192, elements: !192)
!192 = !{!193, !200, !205}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !191, file: !85, line: 134, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!46, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !85, line: 135, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!134, !198}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !191, file: !85, line: 136, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!46, !198, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !85, line: 125, size: 20736, elements: !212)
!212 = !{!213, !218, !222, !223, !227}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !211, file: !85, line: 126, baseType: !214, size: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!216 = !{!217}
!217 = !DISubrange(count: 3)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !211, file: !85, line: 127, baseType: !219, size: 4096, offset: 192)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 4096, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !211, file: !85, line: 128, baseType: !46, size: 32, offset: 4288)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !211, file: !85, line: 129, baseType: !224, size: 16384, offset: 4320)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16384, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 2048)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !211, file: !85, line: 130, baseType: !46, size: 32, offset: 20704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !131, file: !85, line: 69, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !85, line: 116, size: 384, elements: !232)
!232 = !{!233, !237, !266, !608, !639, !643}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !231, file: !85, line: 117, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !138}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !231, file: !85, line: 118, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !241, line: 254, size: 128, elements: !242)
!241 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!242 = !{!243, !258}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !240, file: !241, line: 255, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !138, !252, !215}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 66, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !249, line: 73, baseType: !250)
!249 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !249, line: 15, baseType: !251)
!251 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !241, line: 30, size: 128, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !241, line: 31, baseType: !134, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !253, file: !241, line: 32, baseType: !257, size: 16, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 24, baseType: !185)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !240, file: !241, line: 256, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!247, !138, !252, !134, !262}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 61, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !249, line: 72, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !249, line: 16, baseType: !265)
!265 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !231, file: !85, line: 119, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !241, line: 84, size: 320, elements: !271)
!271 = !{!272, !273, !277, !604, !606}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !241, line: 85, baseType: !134, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !270, file: !241, line: 86, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!257, !138, !252, !46}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !270, file: !241, line: 88, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!257, !138, !281, !46}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !241, line: 175, size: 512, elements: !283)
!283 = !{!284, !285, !286, !288, !295, !305, !306}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !282, file: !241, line: 176, baseType: !253, size: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !282, file: !241, line: 177, baseType: !262, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !282, file: !241, line: 178, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !282, file: !241, line: 179, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !294, line: 351, flags: DIFlagFwdDecl)
!294 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !282, file: !241, line: 180, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!247, !299, !138, !281, !215, !302, !262}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !301, line: 537, flags: DIFlagFwdDecl)
!301 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 52, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !249, line: 88, baseType: !304)
!304 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !282, file: !241, line: 182, baseType: !296, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !282, file: !241, line: 184, baseType: !307, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!46, !299, !138, !281, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !312, line: 625, size: 1344, elements: !313)
!312 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!313 = !{!314, !331, !553, !559, !566, !567, !572, !575, !587, !588, !591, !595, !596, !597, !598, !599, !602}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 628, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 628, size: 128, elements: !316)
!316 = !{!317, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !312, line: 629, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !312, line: 629, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !318, file: !312, line: 631, baseType: !265, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !318, file: !312, line: 632, baseType: !265, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !315, file: !312, line: 635, baseType: !323, size: 128, align: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 232, size: 128, align: 64, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !117, line: 233, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !323, file: !117, line: 234, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !326}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !311, file: !312, line: 639, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !312, line: 733, size: 10240, elements: !334)
!334 = !{!335, !549}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !312, line: 734, baseType: !336, size: 10240)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !312, line: 734, size: 10240, elements: !337)
!337 = !{!338, !342, !356, !360, !361, !362, !363, !364, !365, !373, !374, !375, !384, !385, !394, !395, !396, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !443, !457, !460, !515, !516, !517, !520, !523, !524, !527, !528, !529, !536, !537}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !312, line: 739, baseType: !339, size: 512, align: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !312, line: 739, size: 512, align: 512, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !339, file: !312, line: 747, baseType: !165, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !336, file: !312, line: 750, baseType: !343, size: 128, offset: 512)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !344, line: 218, size: 128, elements: !345)
!344 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!345 = !{!346, !354, !355}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !344, line: 219, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !344, line: 219, size: 32, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !347, file: !344, line: 220, baseType: !145, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !347, file: !344, line: 221, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !344, line: 197, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 197, elements: !353)
!353 = !{}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !343, file: !344, line: 223, baseType: !7, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !343, file: !344, line: 224, baseType: !287, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !336, file: !312, line: 752, baseType: !357, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!265, !299, !265, !265, !265, !265}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !336, file: !312, line: 756, baseType: !265, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !336, file: !312, line: 757, baseType: !265, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !336, file: !312, line: 760, baseType: !265, size: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !336, file: !312, line: 761, baseType: !265, size: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !336, file: !312, line: 763, baseType: !265, size: 64, offset: 960)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !336, file: !312, line: 764, baseType: !366, size: 64, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !301, line: 299, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 299, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !368, file: !301, line: 299, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !372, line: 18, baseType: !265)
!372 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !336, file: !312, line: 773, baseType: !165, size: 32, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !336, file: !312, line: 785, baseType: !165, size: 32, offset: 1120)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !336, file: !312, line: 795, baseType: !376, size: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !312, line: 726, size: 128, elements: !378)
!378 = !{!379, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !377, file: !312, line: 727, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !174, line: 23, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !176, line: 31, baseType: !382)
!382 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !377, file: !312, line: 728, baseType: !46, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !336, file: !312, line: 801, baseType: !265, size: 64, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !336, file: !312, line: 804, baseType: !386, size: 64, offset: 1280)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !387, line: 13, baseType: !388)
!387 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 181, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 179, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !389, file: !117, line: 180, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !174, line: 22, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !176, line: 30, baseType: !304)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !336, file: !312, line: 806, baseType: !46, size: 32, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !336, file: !312, line: 808, baseType: !145, size: 32, offset: 1376)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !336, file: !312, line: 823, baseType: !397, size: 320, offset: 1408)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !398, line: 48, size: 320, elements: !399)
!398 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!399 = !{!400, !401, !402, !407, !409}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !397, file: !398, line: 49, baseType: !386, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !397, file: !398, line: 55, baseType: !386, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !397, file: !398, line: 57, baseType: !403, size: 32, offset: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !404, line: 15, size: 32, elements: !405)
!404 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !403, file: !404, line: 20, baseType: !165, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !397, file: !398, line: 59, baseType: !408, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !154, line: 23, baseType: !153)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !397, file: !398, line: 60, baseType: !116, size: 128, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !336, file: !312, line: 825, baseType: !116, size: 128, offset: 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !336, file: !312, line: 845, baseType: !46, size: 32, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !336, file: !312, line: 849, baseType: !265, size: 64, offset: 1920)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !336, file: !312, line: 850, baseType: !265, size: 64, offset: 1984)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !336, file: !312, line: 852, baseType: !265, size: 64, offset: 2048)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !336, file: !312, line: 853, baseType: !265, size: 64, offset: 2112)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !336, file: !312, line: 854, baseType: !388, size: 64, offset: 2176)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !336, file: !312, line: 855, baseType: !265, size: 64, offset: 2240)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !336, file: !312, line: 856, baseType: !265, size: 64, offset: 2304)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !336, file: !312, line: 857, baseType: !265, size: 64, offset: 2368)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !336, file: !312, line: 858, baseType: !265, size: 64, offset: 2432)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !336, file: !312, line: 865, baseType: !422, size: 32, offset: 2496)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !423, line: 69, baseType: !424)
!423 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !423, line: 64, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !424, file: !423, line: 65, baseType: !7, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !336, file: !312, line: 867, baseType: !145, size: 32, offset: 2528)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !336, file: !312, line: 869, baseType: !265, size: 64, offset: 2560)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !336, file: !312, line: 869, baseType: !265, size: 64, offset: 2624)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !336, file: !312, line: 869, baseType: !265, size: 64, offset: 2688)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !336, file: !312, line: 869, baseType: !265, size: 64, offset: 2752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !336, file: !312, line: 870, baseType: !265, size: 64, offset: 2816)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !336, file: !312, line: 870, baseType: !265, size: 64, offset: 2880)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !336, file: !312, line: 870, baseType: !265, size: 64, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !336, file: !312, line: 871, baseType: !265, size: 64, offset: 3008)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !336, file: !312, line: 871, baseType: !265, size: 64, offset: 3072)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !336, file: !312, line: 871, baseType: !265, size: 64, offset: 3136)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !336, file: !312, line: 871, baseType: !265, size: 64, offset: 3200)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !336, file: !312, line: 873, baseType: !440, size: 3328, offset: 3264)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 3328, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 52)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !336, file: !312, line: 875, baseType: !444, size: 1280, offset: 6592)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1280, elements: !455)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !446, line: 22, size: 320, elements: !447)
!446 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!447 = !{!448, !449, !450, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !445, file: !446, line: 23, baseType: !408, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !445, file: !446, line: 24, baseType: !392, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !445, file: !446, line: 26, baseType: !116, size: 128, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !445, file: !446, line: 28, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !174, line: 20, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !176, line: 26, baseType: !46)
!455 = !{!456}
!456 = !DISubrange(count: 4)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !336, file: !312, line: 877, baseType: !458, size: 64, offset: 7872)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !312, line: 877, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !336, file: !312, line: 880, baseType: !461, size: 1088, offset: 7936)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !462, line: 72, baseType: !463)
!462 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 23, size: 1088, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !472, !473, !481, !482, !509, !510, !511}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !463, file: !462, line: 28, baseType: !380, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !463, file: !462, line: 38, baseType: !388, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !463, file: !462, line: 40, baseType: !265, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !463, file: !462, line: 43, baseType: !397, size: 320, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !463, file: !462, line: 44, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !462, line: 44, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !462, line: 48, baseType: !265, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !463, file: !462, line: 59, baseType: !474, size: 256, offset: 640)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !475, line: 66, size: 256, elements: !476)
!475 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!476 = !{!477, !478, !479, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !474, file: !475, line: 67, baseType: !386, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !474, file: !475, line: 68, baseType: !408, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !474, file: !475, line: 70, baseType: !403, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !474, file: !475, line: 72, baseType: !116, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !463, file: !462, line: 60, baseType: !287, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !463, file: !462, line: 61, baseType: !483, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !486, line: 13, size: 1216, elements: !487)
!486 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !485, file: !486, line: 14, baseType: !287, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !485, file: !486, line: 15, baseType: !265, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !485, file: !486, line: 17, baseType: !265, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !485, file: !486, line: 17, baseType: !265, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !485, file: !486, line: 18, baseType: !265, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !485, file: !486, line: 18, baseType: !265, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !485, file: !486, line: 19, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !485, file: !486, line: 21, baseType: !251, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !485, file: !486, line: 23, baseType: !251, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !485, file: !486, line: 24, baseType: !251, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !485, file: !486, line: 25, baseType: !251, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !485, file: !486, line: 26, baseType: !251, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !485, file: !486, line: 27, baseType: !251, size: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !485, file: !486, line: 28, baseType: !251, size: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !485, file: !486, line: 29, baseType: !251, size: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !485, file: !486, line: 30, baseType: !251, size: 64, offset: 960)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !485, file: !486, line: 31, baseType: !251, size: 64, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !485, file: !486, line: 32, baseType: !251, size: 64, offset: 1088)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !485, file: !486, line: 33, baseType: !251, size: 64, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !463, file: !462, line: 63, baseType: !165, size: 32, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !463, file: !462, line: 69, baseType: !183, size: 16, offset: 1056)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !463, file: !462, line: 70, baseType: !512, size: 16, offset: 1072)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !174, line: 18, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !176, line: 23, baseType: !514)
!514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !312, line: 882, baseType: !265, size: 64, offset: 9024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !336, file: !312, line: 885, baseType: !145, size: 32, offset: 9088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !336, file: !312, line: 886, baseType: !518, size: 64, offset: 9152)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !312, line: 732, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !336, file: !312, line: 901, baseType: !521, size: 64, offset: 9216)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !312, line: 901, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !336, file: !312, line: 904, baseType: !299, size: 64, offset: 9280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !336, file: !312, line: 906, baseType: !525, size: 64, offset: 9344)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !312, line: 906, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !336, file: !312, line: 930, baseType: !165, size: 32, offset: 9408)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !336, file: !312, line: 933, baseType: !165, size: 32, offset: 9440)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !336, file: !312, line: 935, baseType: !530, size: 64, offset: 9472)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !531, line: 103, size: 64, elements: !532)
!531 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !530, file: !531, line: 104, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !531, line: 101, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !336, file: !312, line: 940, baseType: !386, size: 64, offset: 9536)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !336, file: !312, line: 942, baseType: !538, size: 256, offset: 9600)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !539, line: 98, size: 256, elements: !540)
!539 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !539, line: 99, baseType: !386, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !538, file: !539, line: 100, baseType: !116, size: 128, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !538, file: !539, line: 101, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !539, line: 21, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !333, file: !312, line: 986, baseType: !550, offset: 10240)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: -1)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !311, file: !312, line: 640, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !301, line: 297, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !301, line: 297, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !555, file: !301, line: 297, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !372, line: 19, baseType: !265)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 646, baseType: !560, size: 64, offset: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 646, size: 64, elements: !561)
!561 = !{!562, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !560, file: !312, line: 647, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !312, line: 542, baseType: !265)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !560, file: !312, line: 648, baseType: !564, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !311, file: !312, line: 666, baseType: !46, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !311, file: !312, line: 667, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !312, line: 579, size: 320, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !312, line: 580, baseType: !397, size: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !311, file: !312, line: 670, baseType: !573, size: 8, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 35, baseType: !574)
!574 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !311, file: !312, line: 681, baseType: !576, size: 256, offset: 512)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !312, line: 678, size: 256, elements: !577)
!577 = !{!578, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !576, file: !312, line: 679, baseType: !579, size: 192, align: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !580, line: 5, size: 192, align: 64, elements: !581)
!580 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!581 = !{!582, !583, !585}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !579, file: !580, line: 6, baseType: !265, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !579, file: !580, line: 7, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !579, file: !580, line: 8, baseType: !584, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !576, file: !312, line: 680, baseType: !265, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !311, file: !312, line: 689, baseType: !116, size: 128, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !311, file: !312, line: 691, baseType: !589, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !312, line: 691, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !311, file: !312, line: 694, baseType: !592, size: 64, offset: 960)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !312, line: 694, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !311, file: !312, line: 697, baseType: !265, size: 64, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !311, file: !312, line: 699, baseType: !299, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !311, file: !312, line: 700, baseType: !287, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !311, file: !312, line: 711, baseType: !386, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !311, file: !312, line: 717, baseType: !600, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !312, line: 717, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !311, file: !312, line: 722, baseType: !603, offset: 1344)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !312, line: 570, elements: !353)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !270, file: !241, line: 90, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !270, file: !241, line: 91, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !231, file: !85, line: 120, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !198}
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
!624 = !{!287}
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
!638 = !{null, !287}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !231, file: !85, line: 121, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!495, !198}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !231, file: !85, line: 122, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !198, !647, !655}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !649, line: 23, baseType: !650)
!649 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 21, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !649, line: 22, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 37, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !249, line: 49, baseType: !7)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !649, line: 28, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 26, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !657, file: !649, line: 27, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 38, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !249, line: 50, baseType: !7)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !131, file: !85, line: 70, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !665, line: 190, size: 1152, elements: !666)
!665 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !769, !770, !771, !772, !773, !776}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 191, baseType: !165, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !664, file: !665, line: 192, baseType: !165, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !664, file: !665, line: 202, baseType: !663, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !665, line: 203, baseType: !134, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !664, file: !665, line: 205, baseType: !579, size: 192, align: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !664, file: !665, line: 207, baseType: !495, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !664, file: !665, line: 208, baseType: !7, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 209, baseType: !675, size: 256, offset: 512)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 209, size: 256, elements: !676)
!676 = !{!677, !689, !693}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !675, file: !665, line: 210, baseType: !678, size: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !665, line: 153, size: 256, elements: !679)
!679 = !{!680, !681, !685, !688}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !678, file: !665, line: 154, baseType: !265, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !678, file: !665, line: 156, baseType: !682, size: 64, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !580, line: 12, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !682, file: !580, line: 13, baseType: !584, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !678, file: !665, line: 162, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !665, line: 162, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !678, file: !665, line: 167, baseType: !265, size: 64, offset: 192)
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
!709 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !706, file: !665, line: 254, baseType: !299, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !706, file: !665, line: 255, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !713, line: 66, flags: DIFlagFwdDecl)
!713 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!714 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !706, file: !665, line: 256, baseType: !287, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !706, file: !665, line: 259, baseType: !474, size: 256, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !706, file: !665, line: 260, baseType: !474, size: 256, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !706, file: !665, line: 261, baseType: !46, size: 32, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !706, file: !665, line: 262, baseType: !116, size: 128, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !706, file: !665, line: 263, baseType: !215, size: 64, offset: 960)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !706, file: !665, line: 265, baseType: !262, size: 64, offset: 1024)
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
!731 = !{!46, !711, !287}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !699, file: !665, line: 292, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!287, !711, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !699, file: !665, line: 293, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!287, !711, !287, !736}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !699, file: !665, line: 294, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !711, !287}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !699, file: !665, line: 296, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!247, !705, !215, !262, !302}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !699, file: !665, line: 306, baseType: !262, size: 64, offset: 448)
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
!763 = !{!46, !705, !310}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !694, file: !665, line: 176, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !665, line: 35, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !694, file: !665, line: 177, baseType: !302, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !694, file: !665, line: 178, baseType: !663, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !664, file: !665, line: 215, baseType: !287, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !664, file: !665, line: 221, baseType: !380, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !665, line: 223, baseType: !185, size: 16, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !664, file: !665, line: 224, baseType: !257, size: 16, offset: 912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !664, file: !665, line: 225, baseType: !774, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !665, line: 36, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !664, file: !665, line: 227, baseType: !323, size: 128, align: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !131, file: !85, line: 71, baseType: !778, size: 32, offset: 448)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !779, line: 19, size: 32, elements: !780)
!779 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !778, file: !779, line: 20, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !783, line: 113, baseType: !784)
!783 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !783, line: 111, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !784, file: !783, line: 112, baseType: !165, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !131, file: !85, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !131, file: !85, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !131, file: !85, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !131, file: !85, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !131, file: !85, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !128, file: !6, line: 47, baseType: !111, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !128, file: !6, line: 48, baseType: !138, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !128, file: !6, line: 49, baseType: !795, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !128, file: !6, line: 50, baseType: !798, size: 64, offset: 704)
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
!808 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !804, file: !805, line: 45, baseType: !116, size: 128, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !112, file: !6, line: 418, baseType: !810, size: 64, offset: 1408)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !812)
!812 = !{!813, !814, !819, !823, !827, !831}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !811, file: !6, line: 54, baseType: !253, size: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !811, file: !6, line: 55, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!247, !810, !818, !215}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !811, file: !6, line: 57, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!247, !810, !818, !134, !262}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !811, file: !6, line: 59, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !111, !134}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !811, file: !6, line: 60, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!46, !111}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !811, file: !6, line: 61, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !111}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !112, file: !6, line: 419, baseType: !134, size: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !112, file: !6, line: 420, baseType: !134, size: 64, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !112, file: !6, line: 421, baseType: !138, size: 64, offset: 1600)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !112, file: !6, line: 424, baseType: !839, size: 64, offset: 1664)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !112, file: !6, line: 425, baseType: !843, size: 64, offset: 1728)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !112, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !112, file: !6, line: 435, baseType: !474, size: 256, offset: 1856)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !112, file: !6, line: 437, baseType: !848, size: 64, offset: 2112)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !850, line: 69, size: 320, elements: !851)
!850 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!851 = !{!852, !853, !854, !871, !873, !877, !878}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !850, line: 70, baseType: !134, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !849, file: !850, line: 71, baseType: !111, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !849, file: !850, line: 72, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !850, line: 47, size: 256, elements: !858)
!858 = !{!859, !860, !866, !870}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !850, line: 49, baseType: !7, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !857, file: !850, line: 51, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!46, !134, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !857, file: !850, line: 53, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!46, !215, !864}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !857, file: !850, line: 55, baseType: !636, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !849, file: !850, line: 73, baseType: !872, size: 16, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !849, file: !850, line: 74, baseType: !874, size: 8, offset: 208)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !174, line: 16, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !176, line: 20, baseType: !876)
!876 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !850, line: 75, baseType: !173, size: 8, offset: 216)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !850, line: 76, baseType: !879, size: 64, offset: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !850, line: 76, size: 64, elements: !880)
!880 = !{!881, !882, !889}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !879, file: !850, line: 77, baseType: !287, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !879, file: !850, line: 78, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !850, line: 86, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !885, file: !850, line: 87, baseType: !7, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !885, file: !850, line: 88, baseType: !215, size: 64, offset: 64)
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
!899 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !892, file: !850, line: 98, baseType: !287, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !112, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !112, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !112, file: !6, line: 442, baseType: !839, size: 64, offset: 2240)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !112, file: !6, line: 443, baseType: !843, size: 64, offset: 2304)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !112, file: !6, line: 444, baseType: !573, size: 8, offset: 2368)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !112, file: !6, line: 451, baseType: !573, size: 8, offset: 2376)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !112, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !112, file: !6, line: 455, baseType: !908, size: 64, offset: 2432)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !112, file: !6, line: 458, baseType: !911, size: 64, offset: 2496)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!46}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !112, file: !6, line: 460, baseType: !915, size: 4032, align: 512, offset: 2560)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 4032, elements: !932)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !916, file: !6, line: 363, baseType: !287, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !916, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !916, file: !6, line: 367, baseType: !921, size: 448, offset: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !921, file: !6, line: 320, baseType: !111, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !921, file: !6, line: 321, baseType: !925, size: 384, offset: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !926, line: 40, size: 384, elements: !927)
!926 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !925, file: !926, line: 41, baseType: !929, size: 384, align: 64)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 384, align: 64, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 2)
!932 = !{!933}
!933 = !DISubrange(count: 7)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !112, file: !6, line: 463, baseType: !935, size: 192, offset: 6592)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !936, line: 8, size: 192, elements: !937)
!936 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!937 = !{!938, !939, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !935, file: !936, line: 10, baseType: !7, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !935, file: !936, line: 11, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !935, file: !936, line: 12, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !944, line: 59, size: 48, elements: !945)
!944 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!945 = !{!946, !947, !948, !949, !950, !951}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !943, file: !944, line: 60, baseType: !512, size: 16)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !943, file: !944, line: 61, baseType: !512, size: 16, offset: 16)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !943, file: !944, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !943, file: !944, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !943, file: !944, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !943, file: !944, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !112, file: !6, line: 465, baseType: !265, size: 64, offset: 6784)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !112, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !112, file: !6, line: 470, baseType: !116, size: 128, offset: 6912)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !112, file: !6, line: 471, baseType: !956, size: 64, offset: 7040)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !958, line: 33, size: 96, elements: !959)
!958 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !957, file: !958, line: 37, baseType: !46, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !957, file: !958, line: 43, baseType: !46, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !957, file: !958, line: 45, baseType: !185, size: 16, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !958, line: 47, baseType: !185, size: 16, offset: 80)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !112, file: !6, line: 476, baseType: !965, size: 64, offset: 7104)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !967)
!967 = !{!968, !985, !986, !987}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !966, file: !6, line: 379, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !971, line: 204, baseType: !972)
!971 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !971, line: 197, size: 192, elements: !973)
!973 = !{!974, !977, !978, !979, !981, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !972, file: !971, line: 198, baseType: !975, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !971, line: 21, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !176, line: 27, baseType: !7)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !972, file: !971, line: 199, baseType: !177, size: 8, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !972, file: !971, line: 200, baseType: !177, size: 8, offset: 40)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !972, file: !971, line: 201, baseType: !980, size: 16, offset: 48)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !971, line: 17, baseType: !184)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !972, file: !971, line: 202, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !971, line: 16, baseType: !381)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !972, file: !971, line: 203, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !971, line: 22, baseType: !381)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !966, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !966, file: !6, line: 381, baseType: !215, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !966, file: !6, line: 382, baseType: !215, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !112, file: !6, line: 477, baseType: !966, size: 256, offset: 7168)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !112, file: !6, line: 480, baseType: !990, size: 64, offset: 7424)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !112, file: !6, line: 483, baseType: !993, size: 64, offset: 7488)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !112, file: !6, line: 488, baseType: !215, size: 64, offset: 7552)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !112, file: !6, line: 492, baseType: !287, size: 64, offset: 7616)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !112, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !112, file: !6, line: 495, baseType: !287, size: 64, offset: 7744)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !112, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !112, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !112, file: !6, line: 500, baseType: !1002, size: 64, offset: 7872)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1004, line: 45, baseType: !1005)
!1004 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !112, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !112, file: !6, line: 504, baseType: !1008, size: 64, offset: 8000)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1011, line: 96, size: 192, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1012 = !{!1013, !1014, !1075, !1078}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1010, file: !1011, line: 97, baseType: !7, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1010, file: !1011, line: 98, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1011, line: 24, size: 3072, elements: !1017)
!1017 = !{!1018, !1020, !1021, !1022, !1023, !1037, !1038, !1039, !1040, !1059, !1060, !1061, !1072, !1073, !1074}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1016, file: !1011, line: 26, baseType: !1019, size: 128)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !930)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1016, file: !1011, line: 27, baseType: !1019, size: 128, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1016, file: !1011, line: 28, baseType: !46, size: 32, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1016, file: !1011, line: 31, baseType: !145, size: 32, align: 512, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1016, file: !1011, line: 32, baseType: !1024, size: 960, offset: 576)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1025, line: 206, size: 960, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1026 = !{!1027, !1028, !1031, !1033, !1034, !1036}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1024, file: !1025, line: 207, baseType: !326, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1024, file: !1025, line: 208, baseType: !1029, size: 256, offset: 64)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 256, elements: !455)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1024, file: !1025, line: 209, baseType: !1032, size: 256, offset: 320)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !455)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1024, file: !1025, line: 213, baseType: !251, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1024, file: !1025, line: 215, baseType: !1035, size: 256, offset: 640)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !455)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !1025, line: 216, baseType: !173, size: 8, offset: 896)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1016, file: !1011, line: 33, baseType: !265, size: 64, offset: 1536)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1016, file: !1011, line: 34, baseType: !265, size: 64, offset: 1600)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1016, file: !1011, line: 35, baseType: !573, size: 8, offset: 1664)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1016, file: !1011, line: 36, baseType: !1041, size: 320, offset: 1728)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1042, line: 11, size: 320, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1043 = !{!1044, !1051, !1052, !1057}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1041, file: !1042, line: 16, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 198, size: 128, elements: !1046)
!1046 = !{!1047, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1045, file: !117, line: 199, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1045, file: !117, line: 199, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1041, file: !1042, line: 17, baseType: !265, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1041, file: !1042, line: 18, baseType: !1053, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !1042, line: 19, baseType: !1058, size: 32, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !174, line: 21, baseType: !976)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1016, file: !1011, line: 37, baseType: !538, size: 256, offset: 2048)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1016, file: !1011, line: 38, baseType: !323, size: 128, align: 64, offset: 2304)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1016, file: !1011, line: 39, baseType: !1062, size: 64, offset: 2432)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1011, line: 49, size: 768, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !1011, line: 50, baseType: !145, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1063, file: !1011, line: 51, baseType: !1032, size: 256, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1063, file: !1011, line: 53, baseType: !1032, size: 256, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1063, file: !1011, line: 54, baseType: !265, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1063, file: !1011, line: 55, baseType: !1062, size: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1063, file: !1011, line: 56, baseType: !46, size: 32, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1063, file: !1011, line: 57, baseType: !46, size: 32, offset: 736)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1016, file: !1011, line: 40, baseType: !265, size: 64, offset: 2496)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1016, file: !1011, line: 42, baseType: !46, size: 32, offset: 2560)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1016, file: !1011, line: 43, baseType: !1009, size: 64, offset: 2624)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1010, file: !1011, line: 99, baseType: !1076, offset: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1077, line: 211, elements: !353)
!1077 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1010, file: !1011, line: 100, baseType: !1079, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1011, line: 63, size: 3008, elements: !1081)
!1081 = !{!1082, !1083, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1113}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1080, file: !1011, line: 64, baseType: !1062, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1080, file: !1011, line: 65, baseType: !1084, size: 192, offset: 64)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 192, elements: !216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1080, file: !1011, line: 67, baseType: !46, size: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1080, file: !1011, line: 68, baseType: !474, size: 256, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1080, file: !1011, line: 69, baseType: !145, size: 32, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1080, file: !1011, line: 70, baseType: !474, size: 256, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1080, file: !1011, line: 71, baseType: !265, size: 64, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1080, file: !1011, line: 72, baseType: !265, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1080, file: !1011, line: 73, baseType: !265, size: 64, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1080, file: !1011, line: 74, baseType: !265, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1080, file: !1011, line: 75, baseType: !265, size: 64, offset: 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1080, file: !1011, line: 76, baseType: !265, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1080, file: !1011, line: 77, baseType: !265, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1080, file: !1011, line: 78, baseType: !265, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1080, file: !1011, line: 79, baseType: !573, size: 8, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1080, file: !1011, line: 80, baseType: !265, size: 64, offset: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1080, file: !1011, line: 81, baseType: !474, size: 256, offset: 1536)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1080, file: !1011, line: 82, baseType: !799, size: 256, offset: 1792)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1080, file: !1011, line: 84, baseType: !165, size: 32, offset: 2048)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1080, file: !1011, line: 87, baseType: !265, size: 64, offset: 2112)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1080, file: !1011, line: 88, baseType: !265, size: 64, offset: 2176)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1080, file: !1011, line: 89, baseType: !1105, size: 704, offset: 2240)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !539, line: 111, size: 704, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1112}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1105, file: !539, line: 112, baseType: !538, size: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1105, file: !539, line: 113, baseType: !1041, size: 320, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1105, file: !539, line: 116, baseType: !1110, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !539, line: 18, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1105, file: !539, line: 117, baseType: !46, size: 32, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1080, file: !1011, line: 90, baseType: !1009, size: 64, offset: 2944)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !112, file: !6, line: 515, baseType: !1115, size: 64, offset: 8064)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1117, line: 117, size: 128, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1116, file: !1117, line: 118, baseType: !453, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1116, file: !1117, line: 119, baseType: !453, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1116, file: !1117, line: 120, baseType: !251, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !112, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !112, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !112, file: !6, line: 520, baseType: !1125, size: 64, offset: 8192)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !112, file: !6, line: 523, baseType: !1127, size: 64, offset: 8256)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !112, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !112, file: !6, line: 525, baseType: !1132, size: 64, offset: 8384)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !112, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !112, file: !6, line: 533, baseType: !287, size: 64, offset: 8512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !112, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !112, file: !6, line: 535, baseType: !1139, size: 64, offset: 8640)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !112, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !112, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !112, file: !6, line: 540, baseType: !1143, size: 64, offset: 8768)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1145, line: 32, size: 64, elements: !1146)
!1145 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1144, file: !1145, line: 33, baseType: !453, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1144, file: !1145, line: 34, baseType: !453, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !112, file: !6, line: 563, baseType: !116, size: 128, offset: 8832)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !112, file: !6, line: 565, baseType: !116, size: 128, offset: 8960)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !112, file: !6, line: 568, baseType: !1152, size: 64, offset: 9088)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !112, file: !6, line: 570, baseType: !165, size: 32, offset: 9152)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 154, baseType: !7)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1158, line: 421, baseType: !1058)
!1158 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !117, line: 42, baseType: !265)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_attr", file: !3, line: 308, size: 768, elements: !1163)
!1163 = !{!1164, !1165, !1167, !1168, !1172}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1162, file: !3, line: 309, baseType: !282, size: 512)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1162, file: !3, line: 310, baseType: !1166, size: 32, offset: 512)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 32, elements: !455)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !1162, file: !3, line: 311, baseType: !46, size: 32, offset: 544)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1162, file: !3, line: 312, baseType: !1169, size: 64, offset: 576)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 8)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1162, file: !3, line: 313, baseType: !116, size: 128, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !251)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !1158, line: 747, baseType: !1058)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !1183, line: 110, size: 704, elements: !1184)
!1183 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!1184 = !{!1185, !1186, !1990, !1991, !1992}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1182, file: !1183, line: 111, baseType: !131, size: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1182, file: !1183, line: 112, baseType: !1187, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!46, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !1183, line: 367, size: 11200, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1197, !1746, !1747, !1748, !1757, !1775, !1853, !1883, !1907, !1928, !1934, !1943, !1965, !1979, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !1191, file: !1183, line: 368, baseType: !1058, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !1191, file: !1183, line: 369, baseType: !46, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1191, file: !1183, line: 370, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1158, line: 424, baseType: !287)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1191, file: !1183, line: 371, baseType: !1198, size: 512, offset: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1199, line: 41, size: 512, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1200 = !{!1201, !1203, !1742, !1743, !1744, !1745}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1198, file: !1199, line: 42, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1198, file: !1199, line: 43, baseType: !1204, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1199, line: 125, size: 1408, elements: !1207)
!1207 = !{!1208, !1212, !1216, !1222, !1672, !1673, !1677, !1681, !1685, !1689, !1693, !1694, !1698, !1702, !1706, !1717, !1718, !1719, !1720, !1730, !1734, !1738}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1206, file: !1199, line: 126, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1202, !1202}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1206, file: !1199, line: 127, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1202}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1206, file: !1199, line: 128, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!573, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1206, file: !1199, line: 129, baseType: !1223, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!495, !1220, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1229)
!1229 = !{!1230, !1231, !1233, !1236, !1237, !1288, !1379, !1380, !1381, !1382, !1383, !1390, !1558, !1571, !1581, !1585, !1587, !1588, !1589, !1593, !1600, !1601, !1604, !1607, !1611, !1612, !1613, !1616, !1617, !1618, !1619, !1649, !1650, !1651, !1654, !1657, !1666, !1667, !1668, !1669, !1670, !1671}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1228, file: !26, line: 706, baseType: !131, size: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1228, file: !26, line: 707, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1228, file: !26, line: 709, baseType: !1234, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1228, file: !26, line: 711, baseType: !134, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1228, file: !26, line: 712, baseType: !1238, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1248, !1253, !1257}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1240, file: !26, line: 90, baseType: !134, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1240, file: !26, line: 91, baseType: !267, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1240, file: !26, line: 92, baseType: !1245, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!46, !1226, !210}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1240, file: !26, line: 93, baseType: !1249, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!215, !1226, !1252, !647, !655}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1240, file: !26, line: 95, baseType: !1254, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1232}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1240, file: !26, line: 97, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1261)
!1261 = !{!1262, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1260, file: !38, line: 287, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!46, !1232}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1260, file: !38, line: 288, baseType: !1254, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1260, file: !38, line: 289, baseType: !1263, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1260, file: !38, line: 290, baseType: !1263, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1260, file: !38, line: 291, baseType: !1263, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1260, file: !38, line: 292, baseType: !1263, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1260, file: !38, line: 293, baseType: !1263, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1260, file: !38, line: 294, baseType: !1263, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1260, file: !38, line: 295, baseType: !1263, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1260, file: !38, line: 296, baseType: !1263, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1260, file: !38, line: 297, baseType: !1263, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1260, file: !38, line: 298, baseType: !1263, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1260, file: !38, line: 299, baseType: !1263, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1260, file: !38, line: 300, baseType: !1263, size: 64, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1260, file: !38, line: 301, baseType: !1263, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1260, file: !38, line: 302, baseType: !1263, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1260, file: !38, line: 303, baseType: !1263, size: 64, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1260, file: !38, line: 304, baseType: !1263, size: 64, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1260, file: !38, line: 305, baseType: !1263, size: 64, offset: 1152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1260, file: !38, line: 306, baseType: !1263, size: 64, offset: 1216)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1260, file: !38, line: 307, baseType: !1263, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1260, file: !38, line: 308, baseType: !1263, size: 64, offset: 1344)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1260, file: !38, line: 309, baseType: !1263, size: 64, offset: 1408)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1228, file: !26, line: 714, baseType: !1289, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1292, line: 80, size: 1344, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1378}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1291, file: !1292, line: 81, baseType: !134, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1291, file: !1292, line: 82, baseType: !134, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1291, file: !1292, line: 83, baseType: !267, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1291, file: !1292, line: 84, baseType: !267, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1291, file: !1292, line: 85, baseType: !267, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1291, file: !1292, line: 87, baseType: !1300, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!46, !1232, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312, !1328, !1341, !1342, !1343, !1344, !1345, !1353, !1354, !1355, !1356, !1357, !1358}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1304, file: !20, line: 97, baseType: !134, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1304, file: !20, line: 98, baseType: !1289, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1304, file: !20, line: 100, baseType: !111, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1304, file: !20, line: 101, baseType: !134, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1304, file: !20, line: 103, baseType: !573, size: 8, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1304, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1304, file: !20, line: 106, baseType: !1313, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1316, line: 282, size: 1600, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1317 = !{!1318, !1322, !1323, !1327}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1315, file: !1316, line: 283, baseType: !1319, size: 256)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1315, file: !1316, line: 284, baseType: !1319, size: 256, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1315, file: !1316, line: 285, baseType: !1324, size: 1024, offset: 512)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1315, file: !1316, line: 286, baseType: !495, size: 64, offset: 1536)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1304, file: !20, line: 107, baseType: !1329, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1316, line: 217, size: 256, elements: !1332)
!1332 = !{!1333, !1337, !1339, !1340}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1331, file: !1316, line: 218, baseType: !1334, size: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 16)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1331, file: !1316, line: 219, baseType: !1338, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1316, line: 15, baseType: !265)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1331, file: !1316, line: 220, baseType: !976, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1331, file: !1316, line: 221, baseType: !976, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1304, file: !20, line: 109, baseType: !1263, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1304, file: !20, line: 110, baseType: !1254, size: 64, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1304, file: !20, line: 111, baseType: !1263, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1304, file: !20, line: 112, baseType: !1254, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1304, file: !20, line: 113, baseType: !1346, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!46, !1232, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1350, file: !38, line: 59, baseType: !46, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1304, file: !20, line: 114, baseType: !1263, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1304, file: !20, line: 115, baseType: !267, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1304, file: !20, line: 116, baseType: !267, size: 64, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1304, file: !20, line: 118, baseType: !1258, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1304, file: !20, line: 119, baseType: !1254, size: 64, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1304, file: !20, line: 121, baseType: !1359, size: 64, offset: 1088)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1291, file: !1292, line: 88, baseType: !1245, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1291, file: !1292, line: 89, baseType: !1263, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1291, file: !1292, line: 90, baseType: !1254, size: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1291, file: !1292, line: 91, baseType: !1254, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1291, file: !1292, line: 92, baseType: !1254, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1291, file: !1292, line: 94, baseType: !1263, size: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1291, file: !1292, line: 95, baseType: !1263, size: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1291, file: !1292, line: 97, baseType: !1346, size: 64, offset: 832)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1291, file: !1292, line: 98, baseType: !1263, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1291, file: !1292, line: 100, baseType: !1263, size: 64, offset: 960)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1291, file: !1292, line: 102, baseType: !1263, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1291, file: !1292, line: 103, baseType: !1254, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1291, file: !1292, line: 105, baseType: !1258, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1291, file: !1292, line: 107, baseType: !1375, size: 64, offset: 1216)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1292, line: 107, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1291, file: !1292, line: 109, baseType: !573, size: 8, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1228, file: !26, line: 715, baseType: !1303, size: 64, offset: 832)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1228, file: !26, line: 717, baseType: !287, size: 64, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1228, file: !26, line: 719, baseType: !287, size: 64, offset: 960)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1228, file: !26, line: 721, baseType: !474, size: 256, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1228, file: !26, line: 725, baseType: !1384, size: 448, offset: 1280)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1384, file: !26, line: 518, baseType: !116, size: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1384, file: !26, line: 519, baseType: !116, size: 128, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1384, file: !26, line: 520, baseType: !116, size: 128, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1384, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1228, file: !26, line: 726, baseType: !1391, size: 2496, offset: 1728)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1437, !1438, !1439, !1440, !1441, !1442, !1511, !1512, !1513, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1551, !1555}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1391, file: !38, line: 664, baseType: !1349, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1391, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1391, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1391, file: !38, line: 667, baseType: !573, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1391, file: !38, line: 668, baseType: !573, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1391, file: !38, line: 669, baseType: !573, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1391, file: !38, line: 670, baseType: !573, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1391, file: !38, line: 671, baseType: !573, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1391, file: !38, line: 672, baseType: !573, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1391, file: !38, line: 673, baseType: !573, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1391, file: !38, line: 674, baseType: !573, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1391, file: !38, line: 675, baseType: !1058, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !38, line: 676, baseType: !145, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1391, file: !38, line: 678, baseType: !116, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1391, file: !38, line: 679, baseType: !799, size: 256, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1391, file: !38, line: 680, baseType: !1409, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1411, line: 43, size: 1536, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1420, !1421, !1422, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1410, file: !1411, line: 44, baseType: !134, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1410, file: !1411, line: 45, baseType: !46, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1410, file: !1411, line: 46, baseType: !116, size: 128, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1410, file: !1411, line: 47, baseType: !145, size: 32, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1410, file: !1411, line: 48, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1410, file: !1411, line: 49, baseType: !1041, size: 320, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1410, file: !1411, line: 50, baseType: !265, size: 64, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1410, file: !1411, line: 51, baseType: !1423, size: 64, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1424, line: 29, baseType: !392)
!1424 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1410, file: !1411, line: 52, baseType: !1423, size: 64, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1410, file: !1411, line: 53, baseType: !1423, size: 64, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1410, file: !1411, line: 54, baseType: !1423, size: 64, offset: 960)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1410, file: !1411, line: 55, baseType: !1423, size: 64, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1410, file: !1411, line: 56, baseType: !265, size: 64, offset: 1088)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1410, file: !1411, line: 57, baseType: !265, size: 64, offset: 1152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1410, file: !1411, line: 58, baseType: !265, size: 64, offset: 1216)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1410, file: !1411, line: 59, baseType: !265, size: 64, offset: 1280)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1410, file: !1411, line: 60, baseType: !265, size: 64, offset: 1344)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1410, file: !1411, line: 61, baseType: !1232, size: 64, offset: 1408)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1410, file: !1411, line: 62, baseType: !573, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1410, file: !1411, line: 63, baseType: !573, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1391, file: !38, line: 681, baseType: !573, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1391, file: !38, line: 682, baseType: !573, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1391, file: !38, line: 683, baseType: !573, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1391, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1391, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1391, file: !38, line: 690, baseType: !1443, size: 512, offset: 640)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1444)
!1444 = !{!1445, !1451, !1452, !1457, !1507, !1508, !1509, !1510}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1443, file: !33, line: 119, baseType: !1446, size: 256)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1447, line: 9, size: 256, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1446, file: !1447, line: 10, baseType: !579, size: 192, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1446, file: !1447, line: 11, baseType: !1423, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1443, file: !33, line: 120, baseType: !1423, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1443, file: !33, line: 121, baseType: !1453, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!32, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1443, file: !33, line: 122, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1460)
!1460 = !{!1461, !1484, !1485, !1488, !1493, !1494, !1502, !1506}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1459, file: !33, line: 160, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1463, file: !33, line: 216, baseType: !408, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1463, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1463, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1463, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1463, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1463, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1463, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1463, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1463, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1463, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1463, file: !33, line: 227, baseType: !185, size: 16, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1463, file: !33, line: 228, baseType: !185, size: 16, offset: 208)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1463, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1463, file: !33, line: 235, baseType: !1423, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1463, file: !33, line: 236, baseType: !1456, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1463, file: !33, line: 237, baseType: !1423, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1463, file: !33, line: 238, baseType: !1456, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1463, file: !33, line: 239, baseType: !1483, size: 4096, align: 512, offset: 512)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 4096, align: 512, elements: !1170)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1459, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1459, file: !33, line: 162, baseType: !1486, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 32, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !249, line: 96, baseType: !46)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1459, file: !33, line: 163, baseType: !1489, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !423, line: 274, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !423, line: 274, size: 32, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1490, file: !423, line: 274, baseType: !422, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1459, file: !33, line: 164, baseType: !1456, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1459, file: !33, line: 165, baseType: !1495, size: 128, offset: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1447, line: 14, size: 128, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1495, file: !1447, line: 15, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !580, line: 26, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1498, file: !580, line: 27, baseType: !682, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1498, file: !580, line: 28, baseType: !584, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1459, file: !33, line: 166, baseType: !1503, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1423}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1459, file: !33, line: 167, baseType: !1423, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1443, file: !33, line: 123, baseType: !173, size: 8, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1443, file: !33, line: 124, baseType: !173, size: 8, offset: 456)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1443, file: !33, line: 125, baseType: !173, size: 8, offset: 464)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1443, file: !33, line: 126, baseType: !173, size: 8, offset: 472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1391, file: !38, line: 691, baseType: !380, size: 64, offset: 1152)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1391, file: !38, line: 692, baseType: !538, size: 256, offset: 1216)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1391, file: !38, line: 693, baseType: !1514, size: 192, offset: 1472)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1515, line: 41, baseType: !1516)
!1515 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1515, line: 37, size: 192, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !1515, line: 38, baseType: !145, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1516, file: !1515, line: 39, baseType: !116, size: 128, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1391, file: !38, line: 694, baseType: !1418, size: 64, offset: 1664)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1391, file: !38, line: 695, baseType: !165, size: 32, offset: 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1391, file: !38, line: 696, baseType: !165, size: 32, offset: 1760)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1391, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1391, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1391, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1391, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1391, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1391, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1391, file: !38, line: 703, baseType: !573, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1391, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1391, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1391, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1391, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1391, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1391, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1391, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1391, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1391, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1391, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1391, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1391, file: !38, line: 715, baseType: !380, size: 64, offset: 2048)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1391, file: !38, line: 716, baseType: !380, size: 64, offset: 2112)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1391, file: !38, line: 717, baseType: !380, size: 64, offset: 2176)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1391, file: !38, line: 718, baseType: !380, size: 64, offset: 2240)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1391, file: !38, line: 720, baseType: !1546, size: 64, offset: 2304)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1547, file: !38, line: 633, baseType: !145, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1547, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1391, file: !38, line: 721, baseType: !1552, size: 64, offset: 2368)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1232, !453}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1391, file: !38, line: 722, baseType: !1556, size: 64, offset: 2432)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1228, file: !26, line: 727, baseType: !1559, size: 64, offset: 4224)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1568, !1569, !1570}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1560, file: !38, line: 743, baseType: !1260, size: 1472)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1560, file: !38, line: 744, baseType: !1263, size: 64, offset: 1472)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1560, file: !38, line: 745, baseType: !1565, size: 64, offset: 1536)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1232, !573}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1560, file: !38, line: 746, baseType: !1263, size: 64, offset: 1600)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1560, file: !38, line: 747, baseType: !1254, size: 64, offset: 1664)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1560, file: !38, line: 748, baseType: !1254, size: 64, offset: 1728)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1228, file: !26, line: 736, baseType: !1572, size: 128, offset: 4288)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1573)
!1573 = !{!1574, !1578}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1572, file: !26, line: 531, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1577, line: 13, flags: DIFlagFwdDecl)
!1577 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1572, file: !26, line: 532, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1228, file: !26, line: 738, baseType: !1582, size: 64, offset: 4416)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1228, file: !26, line: 740, baseType: !1586, size: 64, offset: 4480)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1228, file: !26, line: 741, baseType: !380, size: 64, offset: 4544)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1228, file: !26, line: 746, baseType: !380, size: 64, offset: 4608)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1228, file: !26, line: 747, baseType: !1590, size: 64, offset: 4672)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1228, file: !26, line: 749, baseType: !1594, size: 64, offset: 4736)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1595, file: !26, line: 433, baseType: !7, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1595, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1595, file: !26, line: 435, baseType: !265, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1228, file: !26, line: 751, baseType: !116, size: 128, offset: 4800)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1228, file: !26, line: 762, baseType: !1602, size: 64, offset: 4928)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1228, file: !26, line: 770, baseType: !1605, offset: 4992)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1606, line: 5, elements: !353)
!1606 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1228, file: !26, line: 772, baseType: !1608, size: 64, offset: 4992)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1610, line: 18, flags: DIFlagFwdDecl)
!1610 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1228, file: !26, line: 773, baseType: !1202, size: 64, offset: 5056)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1228, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1228, file: !26, line: 778, baseType: !1614, size: 32, offset: 5152)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 21, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 18, baseType: !1058)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1228, file: !26, line: 779, baseType: !1058, size: 32, offset: 5184)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1228, file: !26, line: 781, baseType: !145, size: 32, offset: 5216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1228, file: !26, line: 782, baseType: !116, size: 128, offset: 5248)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1228, file: !26, line: 784, baseType: !1620, size: 64, offset: 5376)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1623, line: 52, size: 768, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1633, !1637, !1638, !1639, !1640, !1644, !1648}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1622, file: !1623, line: 53, baseType: !134, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1622, file: !1623, line: 55, baseType: !267, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1622, file: !1623, line: 56, baseType: !267, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1622, file: !1623, line: 58, baseType: !1245, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1622, file: !1623, line: 59, baseType: !1630, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!215, !1226, !1252}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1622, file: !1623, line: 61, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1620}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1622, file: !1623, line: 62, baseType: !1254, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1622, file: !1623, line: 64, baseType: !1263, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1622, file: !1623, line: 66, baseType: !612, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1622, file: !1623, line: 67, baseType: !1641, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!495, !1226}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1622, file: !1623, line: 69, baseType: !1645, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1226, !647, !655}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1622, file: !1623, line: 71, baseType: !1258, size: 64, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1228, file: !26, line: 785, baseType: !267, size: 64, offset: 5440)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1228, file: !26, line: 787, baseType: !1254, size: 64, offset: 5504)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1228, file: !26, line: 788, baseType: !1652, size: 64, offset: 5568)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1228, file: !26, line: 789, baseType: !1655, size: 64, offset: 5632)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1228, file: !26, line: 791, baseType: !1658, size: 64, offset: 5696)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1659, file: !26, line: 598, baseType: !53, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1659, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1659, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1659, file: !26, line: 601, baseType: !573, size: 8, offset: 96)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1659, file: !26, line: 602, baseType: !573, size: 8, offset: 104)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1228, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1228, file: !26, line: 795, baseType: !573, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1228, file: !26, line: 796, baseType: !573, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1228, file: !26, line: 797, baseType: !573, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1228, file: !26, line: 798, baseType: !573, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1228, file: !26, line: 799, baseType: !573, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1206, file: !1199, line: 131, baseType: !1217, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1206, file: !1199, line: 133, baseType: !1674, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!78, !1220}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1206, file: !1199, line: 134, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!573, !1220, !134}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1206, file: !1199, line: 136, baseType: !1682, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!46, !1220, !134, !7, !287, !262}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1206, file: !1199, line: 141, baseType: !1686, size: 64, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!46, !1220, !134, !1125, !262}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1206, file: !1199, line: 144, baseType: !1690, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!134, !1220}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1206, file: !1199, line: 145, baseType: !1690, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1206, file: !1199, line: 146, baseType: !1695, size: 64, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1202, !1220}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1206, file: !1199, line: 148, baseType: !1699, size: 64, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!1202, !1220, !1202}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1206, file: !1199, line: 151, baseType: !1703, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1202, !1220, !134}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1206, file: !1199, line: 153, baseType: !1707, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!46, !1220, !134, !134, !7, !7, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1199, line: 94, size: 640, elements: !1712)
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1711, file: !1199, line: 95, baseType: !1202, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1711, file: !1199, line: 96, baseType: !7, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1711, file: !1199, line: 97, baseType: !1716, size: 512, offset: 128)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 512, elements: !1170)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1206, file: !1199, line: 158, baseType: !1699, size: 64, offset: 960)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1206, file: !1199, line: 161, baseType: !1695, size: 64, offset: 1024)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1206, file: !1199, line: 163, baseType: !1209, size: 64, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1206, file: !1199, line: 164, baseType: !1721, size: 64, offset: 1152)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!46, !1220, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1199, line: 73, size: 128, elements: !1726)
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1725, file: !1199, line: 74, baseType: !7, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1725, file: !1199, line: 75, baseType: !7, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1725, file: !1199, line: 76, baseType: !1220, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1206, file: !1199, line: 166, baseType: !1731, size: 64, offset: 1216)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!287, !1202, !46}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1206, file: !1199, line: 167, baseType: !1735, size: 64, offset: 1280)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!46, !1220, !7}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1206, file: !1199, line: 168, baseType: !1739, size: 64, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!46, !1202}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1198, file: !1199, line: 44, baseType: !1232, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1198, file: !1199, line: 45, baseType: !116, size: 128, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1198, file: !1199, line: 46, baseType: !116, size: 128, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1198, file: !1199, line: 47, baseType: !173, size: 8, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !1191, file: !1183, line: 372, baseType: !116, size: 128, offset: 640)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !1191, file: !1183, line: 373, baseType: !116, size: 128, offset: 768)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1191, file: !1183, line: 374, baseType: !1749, size: 32, offset: 896)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !1183, line: 181, size: 32, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1749, file: !1183, line: 182, baseType: !1058, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1749, file: !1183, line: 183, baseType: !1058, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1749, file: !1183, line: 184, baseType: !1058, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1749, file: !1183, line: 185, baseType: !1058, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1749, file: !1183, line: 186, baseType: !1058, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1749, file: !1183, line: 187, baseType: !1058, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1183, line: 375, baseType: !1758, size: 32, offset: 928)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !1183, line: 192, size: 32, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1758, file: !1183, line: 193, baseType: !1058, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1758, file: !1183, line: 194, baseType: !1058, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1758, file: !1183, line: 195, baseType: !1058, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1758, file: !1183, line: 196, baseType: !1058, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1758, file: !1183, line: 197, baseType: !1058, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1758, file: !1183, line: 198, baseType: !1058, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1758, file: !1183, line: 199, baseType: !1058, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1758, file: !1183, line: 200, baseType: !1058, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1758, file: !1183, line: 201, baseType: !1058, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1758, file: !1183, line: 202, baseType: !1058, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1758, file: !1183, line: 203, baseType: !1058, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1758, file: !1183, line: 204, baseType: !1058, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1758, file: !1183, line: 205, baseType: !1058, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1758, file: !1183, line: 206, baseType: !1058, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1758, file: !1183, line: 207, baseType: !1058, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !1191, file: !1183, line: 376, baseType: !1776, size: 960, offset: 960)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !1183, line: 238, size: 960, elements: !1777)
!1777 = !{!1778, !1780, !1781, !1789, !1791, !1792, !1793, !1798, !1803}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1776, file: !1183, line: 239, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !1183, line: 220, baseType: !1169)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1776, file: !1183, line: 240, baseType: !46, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !1183, line: 241, baseType: !1782, size: 32, offset: 96)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !1183, line: 230, size: 32, elements: !1783)
!1783 = !{!1784, !1785, !1786, !1787, !1788}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1782, file: !1183, line: 231, baseType: !1058, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1782, file: !1183, line: 232, baseType: !1058, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1782, file: !1183, line: 233, baseType: !1058, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1782, file: !1183, line: 234, baseType: !1058, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1782, file: !1183, line: 235, baseType: !1058, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1776, file: !1183, line: 242, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !1183, line: 221, baseType: !380)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1776, file: !1183, line: 243, baseType: !215, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1776, file: !1183, line: 244, baseType: !116, size: 128, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1776, file: !1183, line: 245, baseType: !1794, size: 320, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !1183, line: 222, baseType: !1795)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 320, elements: !1796)
!1796 = !{!1797}
!1797 = !DISubrange(count: 40)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1776, file: !1183, line: 246, baseType: !1799, size: 160, offset: 704)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !1183, line: 223, baseType: !1800)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 160, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 20)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1776, file: !1183, line: 247, baseType: !1804, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1158, line: 908, size: 192, elements: !1806)
!1806 = !{!1807, !1809, !1814, !1820, !1827, !1833, !1839, !1847}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1805, file: !1158, line: 909, baseType: !1808, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1158, line: 644, baseType: !1058)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1805, file: !1158, line: 913, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 910, size: 128, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1810, file: !1158, line: 911, baseType: !1808, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1810, file: !1158, line: 912, baseType: !380, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1805, file: !1158, line: 919, baseType: !1815, size: 128)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 915, size: 128, elements: !1816)
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1815, file: !1158, line: 916, baseType: !1808, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1815, file: !1158, line: 917, baseType: !1058, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1815, file: !1158, line: 918, baseType: !215, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1805, file: !1158, line: 925, baseType: !1821, size: 128)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 921, size: 128, elements: !1822)
!1822 = !{!1823, !1824, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !1158, line: 922, baseType: !1808, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1821, file: !1158, line: 923, baseType: !1058, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1821, file: !1158, line: 924, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1805, file: !1158, line: 931, baseType: !1828, size: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 927, size: 128, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1828, file: !1158, line: 928, baseType: !1808, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1828, file: !1158, line: 929, baseType: !1058, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1828, file: !1158, line: 930, baseType: !1804, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1805, file: !1158, line: 937, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 933, size: 128, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1834, file: !1158, line: 934, baseType: !1808, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1834, file: !1158, line: 935, baseType: !1808, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1834, file: !1158, line: 936, baseType: !1196, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1805, file: !1158, line: 944, baseType: !1840, size: 192)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 939, size: 192, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1846}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1840, file: !1158, line: 940, baseType: !1808, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1840, file: !1158, line: 941, baseType: !1058, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1840, file: !1158, line: 942, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1158, line: 128, baseType: !380)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1840, file: !1158, line: 943, baseType: !1058, size: 32, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1805, file: !1158, line: 950, baseType: !1848, size: 96)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1158, line: 946, size: 96, elements: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1848, file: !1158, line: 947, baseType: !1808, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1848, file: !1158, line: 948, baseType: !1058, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1848, file: !1158, line: 949, baseType: !1058, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1191, file: !1183, line: 377, baseType: !1854, size: 1408, offset: 1920)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !1183, line: 280, size: 1408, elements: !1855)
!1855 = !{!1856, !1857, !1867, !1882}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1854, file: !1183, line: 281, baseType: !46, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !1183, line: 282, baseType: !1858, size: 32, offset: 32)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !1183, line: 259, size: 32, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1858, file: !1183, line: 260, baseType: !1058, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1858, file: !1183, line: 261, baseType: !1058, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1858, file: !1183, line: 262, baseType: !1058, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1858, file: !1183, line: 263, baseType: !1058, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1858, file: !1183, line: 264, baseType: !1058, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1858, file: !1183, line: 265, baseType: !1058, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1858, file: !1183, line: 266, baseType: !1058, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1854, file: !1183, line: 283, baseType: !1868, size: 1280, offset: 64)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, size: 1280, elements: !1880)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !1183, line: 269, size: 256, elements: !1870)
!1870 = !{!1871, !1877, !1878, !1879}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !1183, line: 274, baseType: !1872, size: 8)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1183, line: 270, size: 8, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1872, file: !1183, line: 271, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1872, file: !1183, line: 272, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1872, file: !1183, line: 273, baseType: !173, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1869, file: !1183, line: 275, baseType: !46, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1869, file: !1183, line: 276, baseType: !46, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1869, file: !1183, line: 277, baseType: !116, size: 128, offset: 128)
!1880 = !{!1881}
!1881 = !DISubrange(count: 5)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1854, file: !1183, line: 284, baseType: !173, size: 8, offset: 1344)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1191, file: !1183, line: 378, baseType: !1884, size: 640, offset: 3328)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !1183, line: 330, size: 640, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1895, !1904, !1905, !1906}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1884, file: !1183, line: 331, baseType: !1196, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1884, file: !1183, line: 332, baseType: !380, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1884, file: !1183, line: 333, baseType: !380, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1884, file: !1183, line: 334, baseType: !116, size: 128, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1884, file: !1183, line: 335, baseType: !1891, size: 8, offset: 320)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !1183, line: 320, size: 8, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1891, file: !1183, line: 321, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1891, file: !1183, line: 322, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1884, file: !1183, line: 336, baseType: !1896, size: 128, offset: 384)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !1183, line: 325, size: 128, elements: !1897)
!1897 = !{!1898, !1903}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1896, file: !1183, line: 326, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1896, file: !1183, line: 327, baseType: !1232, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1884, file: !1183, line: 337, baseType: !1409, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1884, file: !1183, line: 338, baseType: !46, size: 32, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1884, file: !1183, line: 339, baseType: !46, size: 32, offset: 608)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1191, file: !1183, line: 379, baseType: !1908, size: 192, offset: 3968)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !1183, line: 312, size: 192, elements: !1909)
!1909 = !{!1910, !1911, !1915, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1908, file: !1183, line: 313, baseType: !46, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1183, line: 314, baseType: !1912, size: 8, offset: 32)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !1183, line: 298, size: 8, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1912, file: !1183, line: 299, baseType: !173, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1908, file: !1183, line: 315, baseType: !46, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1908, file: !1183, line: 316, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !1183, line: 302, size: 64, elements: !1919)
!1919 = !{!1920, !1925, !1926, !1927}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !1183, line: 306, baseType: !1921, size: 8)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1183, line: 303, size: 8, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1921, file: !1183, line: 304, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1921, file: !1183, line: 305, baseType: !173, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1918, file: !1183, line: 307, baseType: !173, size: 8, offset: 8)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1918, file: !1183, line: 308, baseType: !173, size: 8, offset: 16)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1918, file: !1183, line: 309, baseType: !46, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1191, file: !1183, line: 380, baseType: !1929, size: 64, offset: 4160)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !1183, line: 212, size: 64, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1929, file: !1183, line: 213, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1183, line: 86, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1191, file: !1183, line: 381, baseType: !1935, size: 384, offset: 4224)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !1183, line: 357, size: 384, elements: !1936)
!1936 = !{!1937, !1940, !1941, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1935, file: !1183, line: 358, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1935, file: !1183, line: 359, baseType: !116, size: 128, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1935, file: !1183, line: 360, baseType: !1938, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1935, file: !1183, line: 361, baseType: !116, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1191, file: !1183, line: 382, baseType: !1944, size: 64, offset: 4608)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !1183, line: 124, size: 1216, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1954, !1958, !1962, !1963, !1964}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1945, file: !1183, line: 125, baseType: !1329, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1945, file: !1183, line: 126, baseType: !116, size: 128, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1945, file: !1183, line: 127, baseType: !1950, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!573, !134, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1945, file: !1183, line: 128, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!46, !1190, !1329}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1945, file: !1183, line: 129, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1190}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1945, file: !1183, line: 130, baseType: !1254, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1945, file: !1183, line: 131, baseType: !1254, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1945, file: !1183, line: 132, baseType: !1182, size: 704, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !1191, file: !1183, line: 383, baseType: !1966, size: 64, offset: 4672)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !1183, line: 140, size: 256, elements: !1968)
!1968 = !{!1969, !1970, !1974, !1978}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1967, file: !1183, line: 141, baseType: !1190, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1967, file: !1183, line: 142, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!46, !1190, !1058}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1967, file: !1183, line: 143, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1190, !1058}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1967, file: !1183, line: 144, baseType: !1959, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !1191, file: !1183, line: 384, baseType: !1980, size: 64, offset: 4736)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !1183, line: 364, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1191, file: !1183, line: 385, baseType: !287, size: 64, offset: 4800)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1191, file: !1183, line: 386, baseType: !1228, size: 5824, offset: 4864)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !1191, file: !1183, line: 387, baseType: !7, size: 32, offset: 10688)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !1191, file: !1183, line: 388, baseType: !7, size: 32, offset: 10720)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !1191, file: !1183, line: 389, baseType: !116, size: 128, offset: 10752)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !1191, file: !1183, line: 390, baseType: !474, size: 256, offset: 10880)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1191, file: !1183, line: 391, baseType: !1959, size: 64, offset: 11136)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1182, file: !1183, line: 113, baseType: !1959, size: 64, offset: 576)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1182, file: !1183, line: 114, baseType: !573, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1182, file: !1183, line: 115, baseType: !573, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_attr", file: !3, line: 316, size: 576, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1994, file: !3, line: 317, baseType: !282, size: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1994, file: !3, line: 318, baseType: !380, size: 64, offset: 512)
!1998 = !{!1999, !2001, !2006, !2011, !2013, !2024, !2029, !2031, !2036, !2041, !2043, !2045, !2050, !2052, !2054, !2056, !2061, !2063, !2066, !2071, !2073, !2075, !2077, !2079, !2081, !2088, !2090, !2092, !2094, !2108, !0, !2110, !2113, !2115, !2117, !2122, !2127, !2129, !2131, !2136, !2138, !2140, !2143, !2145, !2147, !2152, !2154, !2156, !2158, !2160, !2162, !2165, !2170, !2175, !2180, !2182, !2185, !2187, !2189, !2191, !2193, !2195, !2198, !2200, !2203, !2205, !2207, !2209, !2211, !2213, !2215, !2217, !2219, !2221, !2223, !2233, !2238, !2241, !2246, !2248}
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(name: "__param_aml_debug_output", scope: !2, file: !3, line: 274, type: !865, isLocal: true, isDefinition: true, align: 64)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_aml_debug_outputtype206", scope: !2, file: !3, line: 274, type: !2003, isLocal: true, isDefinition: true, align: 8)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 288, elements: !2004)
!2004 = !{!2005}
!2005 = !DISubrange(count: 36)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_aml_debug_output207", scope: !2, file: !3, line: 276, type: !2008, isLocal: true, isDefinition: true, align: 8)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 600, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 75)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(name: "__param_acpica_version", scope: !2, file: !3, line: 290, type: !865, isLocal: true, isDefinition: true, align: 64)
!2013 = !DIGlobalVariableExpression(var: !2014, expr: !DIExpression())
!2014 = distinct !DIGlobalVariable(name: "__setup_acpi_gpe_set_masked_gpes", scope: !2, file: !3, line: 839, type: !2015, isLocal: true, isDefinition: true, align: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !2016, line: 324, size: 192, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2017 = !{!2018, !2019, !2023}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2015, file: !2016, line: 325, baseType: !134, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !2015, file: !2016, line: 326, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!46, !215}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !2015, file: !2016, line: 327, baseType: !46, size: 32, offset: 128)
!2024 = !DIGlobalVariableExpression(var: !2025, expr: !DIExpression())
!2025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 850, type: !2026, isLocal: true, isDefinition: true)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 216, elements: !2027)
!2027 = !{!2028}
!2028 = !DISubrange(count: 27)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 888, type: !1169, isLocal: true, isDefinition: true)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(scope: null, file: !3, line: 890, type: !2033, isLocal: true, isDefinition: true)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 88, elements: !2034)
!2034 = !{!2035}
!2035 = !DISubrange(count: 11)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 892, type: !2038, isLocal: true, isDefinition: true)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 96, elements: !2039)
!2039 = !{!2040}
!2040 = !DISubrange(count: 12)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(scope: null, file: !3, line: 894, type: !2033, isLocal: true, isDefinition: true)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(scope: null, file: !3, line: 896, type: !2033, isLocal: true, isDefinition: true)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(scope: null, file: !3, line: 898, type: !2047, isLocal: true, isDefinition: true)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 80, elements: !2048)
!2048 = !{!2049}
!2049 = !DISubrange(count: 10)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 900, type: !1169, isLocal: true, isDefinition: true)
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(scope: null, file: !3, line: 902, type: !1166, isLocal: true, isDefinition: true)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(scope: null, file: !3, line: 904, type: !1169, isLocal: true, isDefinition: true)
!2056 = !DIGlobalVariableExpression(var: !2057, expr: !DIExpression())
!2057 = distinct !DIGlobalVariable(scope: null, file: !3, line: 906, type: !2058, isLocal: true, isDefinition: true)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 48, elements: !2059)
!2059 = !{!2060}
!2060 = !DISubrange(count: 6)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 908, type: !1169, isLocal: true, isDefinition: true)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(scope: null, file: !3, line: 987, type: !2065, isLocal: true, isDefinition: true)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 24, elements: !216)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 997, type: !2068, isLocal: true, isDefinition: true)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 352, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 44)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1034, type: !1169, isLocal: true, isDefinition: true)
!2073 = !DIGlobalVariableExpression(var: !2074, expr: !DIExpression())
!2074 = distinct !DIGlobalVariable(name: "dynamic_tables_kobj", scope: !2, file: !3, line: 302, type: !138, isLocal: true, isDefinition: true)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(name: "hotplug_kobj", scope: !2, file: !3, line: 303, type: !138, isLocal: true, isDefinition: true)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(name: "acpi_irq_handled", scope: !2, file: !3, line: 567, type: !1058, isLocal: false, isDefinition: true)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(name: "acpi_irq_not_handled", scope: !2, file: !3, line: 568, type: !1058, isLocal: false, isDefinition: true)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(name: "all_counters", scope: !2, file: !3, line: 581, type: !2083, isLocal: true, isDefinition: true)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_counter", file: !3, line: 576, size: 64, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2084, file: !3, line: 577, baseType: !1058, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !3, line: 578, baseType: !1058, size: 32, offset: 32)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(name: "num_gpes", scope: !2, file: !3, line: 582, type: !1058, isLocal: true, isDefinition: true)
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(name: "num_counters", scope: !2, file: !3, line: 583, type: !1058, isLocal: true, isDefinition: true)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(name: "all_attrs", scope: !2, file: !3, line: 584, type: !605, isLocal: true, isDefinition: true)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(name: "counter_attrs", scope: !2, file: !3, line: 591, type: !2096, isLocal: true, isDefinition: true)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !85, line: 139, size: 256, elements: !2098)
!2098 = !{!2099, !2100, !2104}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2097, file: !85, line: 140, baseType: !253, size: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2097, file: !85, line: 141, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!247, !138, !2096, !215}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2097, file: !85, line: 143, baseType: !2105, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!247, !138, !2096, !134, !262}
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(name: "acpi_masked_gpes_map", scope: !2, file: !3, line: 822, type: !1032, isLocal: true, isDefinition: true)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "__param_str_acpica_version", scope: !2, file: !3, line: 290, type: !2112, isLocal: true, isDefinition: true)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 160, elements: !1801)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(name: "__param_ops_acpica_version", scope: !2, file: !3, line: 290, type: !856, isLocal: true, isDefinition: true)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !1166, isLocal: true, isDefinition: true)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(scope: null, file: !101, line: 480, type: !2119, isLocal: true, isDefinition: true)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 168, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 21)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 360, type: !2124, isLocal: true, isDefinition: true)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 328, elements: !2125)
!2125 = !{!2126}
!2126 = !DISubrange(count: 41)
!2127 = !DIGlobalVariableExpression(var: !2128, expr: !DIExpression())
!2128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !2065, isLocal: true, isDefinition: true)
!2129 = !DIGlobalVariableExpression(var: !2130, expr: !DIExpression())
!2130 = distinct !DIGlobalVariable(name: "acpi_table_attr_list", scope: !2, file: !3, line: 299, type: !116, isLocal: true, isDefinition: true)
!2131 = !DIGlobalVariableExpression(var: !2132, expr: !DIExpression())
!2132 = distinct !DIGlobalVariable(name: "__setup_str_acpi_gpe_set_masked_gpes", scope: !2, file: !3, line: 839, type: !2133, isLocal: true, isDefinition: true, align: 8)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 120, elements: !2134)
!2134 = !{!2135}
!2135 = !DISubrange(count: 15)
!2136 = !DIGlobalVariableExpression(var: !2137, expr: !DIExpression())
!2137 = distinct !DIGlobalVariable(name: "acpi_gpe_count", scope: !2, file: !3, line: 585, type: !1058, isLocal: true, isDefinition: true)
!2138 = !DIGlobalVariableExpression(var: !2139, expr: !DIExpression())
!2139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 690, type: !1166, isLocal: true, isDefinition: true)
!2140 = !DIGlobalVariableExpression(var: !2141, expr: !DIExpression())
!2141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 701, type: !2142, isLocal: true, isDefinition: true)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 40, elements: !1880)
!2143 = !DIGlobalVariableExpression(var: !2144, expr: !DIExpression())
!2144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 703, type: !2142, isLocal: true, isDefinition: true)
!2145 = !DIGlobalVariableExpression(var: !2146, expr: !DIExpression())
!2146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 705, type: !2142, isLocal: true, isDefinition: true)
!2147 = !DIGlobalVariableExpression(var: !2148, expr: !DIExpression())
!2148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !2149, isLocal: true, isDefinition: true)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 112, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 14)
!2152 = !DIGlobalVariableExpression(var: !2153, expr: !DIExpression())
!2153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 712, type: !2149, isLocal: true, isDefinition: true)
!2154 = !DIGlobalVariableExpression(var: !2155, expr: !DIExpression())
!2155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 714, type: !2149, isLocal: true, isDefinition: true)
!2156 = !DIGlobalVariableExpression(var: !2157, expr: !DIExpression())
!2157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !2149, isLocal: true, isDefinition: true)
!2158 = !DIGlobalVariableExpression(var: !2159, expr: !DIExpression())
!2159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 718, type: !2047, isLocal: true, isDefinition: true)
!2160 = !DIGlobalVariableExpression(var: !2161, expr: !DIExpression())
!2161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 720, type: !2047, isLocal: true, isDefinition: true)
!2162 = !DIGlobalVariableExpression(var: !2163, expr: !DIExpression())
!2163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !2164, isLocal: true, isDefinition: true)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16, elements: !930)
!2165 = !DIGlobalVariableExpression(var: !2166, expr: !DIExpression())
!2166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 662, type: !2167, isLocal: true, isDefinition: true)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 200, elements: !2168)
!2168 = !{!2169}
!2169 = !DISubrange(count: 25)
!2170 = !DIGlobalVariableExpression(var: !2171, expr: !DIExpression())
!2171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 758, type: !2172, isLocal: true, isDefinition: true)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 440, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 55)
!2175 = !DIGlobalVariableExpression(var: !2176, expr: !DIExpression())
!2176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !2177, isLocal: true, isDefinition: true)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 72, elements: !2178)
!2178 = !{!2179}
!2179 = !DISubrange(count: 9)
!2180 = !DIGlobalVariableExpression(var: !2181, expr: !DIExpression())
!2181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 766, type: !1169, isLocal: true, isDefinition: true)
!2182 = !DIGlobalVariableExpression(var: !2183, expr: !DIExpression())
!2183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 769, type: !2184, isLocal: true, isDefinition: true)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 56, elements: !932)
!2185 = !DIGlobalVariableExpression(var: !2186, expr: !DIExpression())
!2186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 772, type: !2058, isLocal: true, isDefinition: true)
!2187 = !DIGlobalVariableExpression(var: !2188, expr: !DIExpression())
!2188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 774, type: !1169, isLocal: true, isDefinition: true)
!2189 = !DIGlobalVariableExpression(var: !2190, expr: !DIExpression())
!2190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 588, type: !2033, isLocal: true, isDefinition: true)
!2191 = !DIGlobalVariableExpression(var: !2192, expr: !DIExpression())
!2192 = distinct !DIGlobalVariable(name: "interrupt_stats_attr_group", scope: !2, file: !3, line: 587, type: !270, isLocal: true, isDefinition: true)
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "acpi_hotplug_profile_ktype", scope: !2, file: !3, line: 973, type: !230, isLocal: true, isDefinition: true)
!2195 = !DIGlobalVariableExpression(var: !2196, expr: !DIExpression())
!2196 = distinct !DIGlobalVariable(name: "hotplug_profile_groups", scope: !2, file: !3, line: 971, type: !2197, isLocal: true, isDefinition: true)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !930)
!2198 = !DIGlobalVariableExpression(var: !2199, expr: !DIExpression())
!2199 = distinct !DIGlobalVariable(name: "hotplug_profile_group", scope: !2, file: !3, line: 971, type: !269, isLocal: true, isDefinition: true)
!2200 = !DIGlobalVariableExpression(var: !2201, expr: !DIExpression())
!2201 = distinct !DIGlobalVariable(name: "hotplug_profile_attrs", scope: !2, file: !3, line: 967, type: !2202, isLocal: true, isDefinition: true)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !930)
!2203 = !DIGlobalVariableExpression(var: !2204, expr: !DIExpression())
!2204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 965, type: !1169, isLocal: true, isDefinition: true)
!2205 = !DIGlobalVariableExpression(var: !2206, expr: !DIExpression())
!2206 = distinct !DIGlobalVariable(name: "hotplug_enabled_attr", scope: !2, file: !3, line: 965, type: !2097, isLocal: true, isDefinition: true)
!2207 = !DIGlobalVariableExpression(var: !2208, expr: !DIExpression())
!2208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 949, type: !1166, isLocal: true, isDefinition: true)
!2209 = !DIGlobalVariableExpression(var: !2210, expr: !DIExpression())
!2210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !2184, isLocal: true, isDefinition: true)
!2211 = !DIGlobalVariableExpression(var: !2212, expr: !DIExpression())
!2212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 518, type: !2142, isLocal: true, isDefinition: true)
!2213 = !DIGlobalVariableExpression(var: !2214, expr: !DIExpression())
!2214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !1169, isLocal: true, isDefinition: true)
!2215 = !DIGlobalVariableExpression(var: !2216, expr: !DIExpression())
!2216 = distinct !DIGlobalVariable(name: "tables_kobj", scope: !2, file: !3, line: 300, type: !138, isLocal: true, isDefinition: true)
!2217 = !DIGlobalVariableExpression(var: !2218, expr: !DIExpression())
!2218 = distinct !DIGlobalVariable(name: "tables_data_kobj", scope: !2, file: !3, line: 301, type: !138, isLocal: true, isDefinition: true)
!2219 = !DIGlobalVariableExpression(var: !2220, expr: !DIExpression())
!2220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !2142, isLocal: true, isDefinition: true)
!2221 = !DIGlobalVariableExpression(var: !2222, expr: !DIExpression())
!2222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 482, type: !2142, isLocal: true, isDefinition: true)
!2223 = !DIGlobalVariableExpression(var: !2224, expr: !DIExpression())
!2224 = distinct !DIGlobalVariable(name: "acpi_data_objs", scope: !2, file: !3, line: 480, type: !2225, isLocal: true, isDefinition: true)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2226, size: 256, elements: !930)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_obj", file: !3, line: 477, size: 128, elements: !2227)
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2226, file: !3, line: 478, baseType: !215, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2226, file: !3, line: 479, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!46, !287, !1993}
!2233 = !DIGlobalVariableExpression(var: !2234, expr: !DIExpression())
!2234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1024, type: !2235, isLocal: true, isDefinition: true)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 104, elements: !2236)
!2236 = !{!2237}
!2237 = !DISubrange(count: 13)
!2238 = !DIGlobalVariableExpression(var: !2239, expr: !DIExpression())
!2239 = distinct !DIGlobalVariable(name: "force_remove_attr", scope: !2, file: !3, line: 1024, type: !2240, isLocal: true, isDefinition: true)
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2241 = !DIGlobalVariableExpression(var: !2242, expr: !DIExpression())
!2242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1018, type: !2243, isLocal: true, isDefinition: true)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1096, elements: !2244)
!2244 = !{!2245}
!2245 = !DISubrange(count: 137)
!2246 = !DIGlobalVariableExpression(var: !2247, expr: !DIExpression())
!2247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 943, type: !2033, isLocal: true, isDefinition: true)
!2248 = !DIGlobalVariableExpression(var: !2249, expr: !DIExpression())
!2249 = distinct !DIGlobalVariable(name: "pm_profile_attr", scope: !2, file: !3, line: 943, type: !2240, isLocal: true, isDefinition: true)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 176, elements: !2251)
!2251 = !{!2252}
!2252 = !DISubrange(count: 22)
!2253 = !{i32 7, !"Dwarf Version", i32 5}
!2254 = !{i32 2, !"Debug Info Version", i32 3}
!2255 = !{i32 1, !"wchar_size", i32 2}
!2256 = !{i32 8, !"cf-protection-branch", i32 1}
!2257 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2258 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2259 = !{i32 1, !"Code Model", i32 2}
!2260 = !{i32 1, !"override-stack-alignment", i32 8}
!2261 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2262 = distinct !DISubprogram(name: "acpi_sysfs_table_handler", scope: !3, file: !3, line: 382, type: !2263, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!1157, !1058, !287, !287}
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "event", arg: 1, scope: !2262, file: !3, line: 382, type: !1058)
!2267 = !DILocalVariable(name: "table", arg: 2, scope: !2262, file: !3, line: 382, type: !287)
!2268 = !DILocalVariable(name: "context", arg: 3, scope: !2262, file: !3, line: 382, type: !287)
!2269 = !DILocalVariable(name: "table_attr", scope: !2262, file: !3, line: 384, type: !1161)
!2270 = !DILocation(line: 382, column: 42, scope: !2262)
!2271 = !DILocation(line: 382, column: 55, scope: !2262)
!2272 = !DILocation(line: 382, column: 68, scope: !2262)
!2273 = !DILocation(line: 384, column: 2, scope: !2262)
!2274 = !DILocation(line: 384, column: 26, scope: !2262)
!2275 = !DILocation(line: 386, column: 10, scope: !2262)
!2276 = !DILocation(line: 386, column: 2, scope: !2262)
!2277 = !DILocation(line: 388, column: 16, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 386, column: 17)
!2279 = !DILocation(line: 388, column: 14, scope: !2278)
!2280 = !DILocation(line: 389, column: 8, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 389, column: 7)
!2282 = !DILocation(line: 389, column: 7, scope: !2278)
!2283 = !DILocation(line: 390, column: 4, scope: !2281)
!2284 = !DILocation(line: 392, column: 28, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 392, column: 7)
!2286 = !DILocation(line: 393, column: 7, scope: !2285)
!2287 = !DILocation(line: 393, column: 19, scope: !2285)
!2288 = !DILocation(line: 392, column: 7, scope: !2285)
!2289 = !DILocation(line: 392, column: 7, scope: !2278)
!2290 = !DILocation(line: 394, column: 10, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 393, column: 27)
!2292 = !DILocation(line: 394, column: 4, scope: !2291)
!2293 = !DILocation(line: 395, column: 4, scope: !2291)
!2294 = !DILocation(line: 397, column: 18, scope: !2278)
!2295 = !DILocation(line: 397, column: 30, scope: !2278)
!2296 = !DILocation(line: 397, column: 3, scope: !2278)
!2297 = !DILocation(line: 398, column: 3, scope: !2278)
!2298 = !DILocation(line: 407, column: 3, scope: !2278)
!2299 = !DILocation(line: 409, column: 3, scope: !2278)
!2300 = !DILocation(line: 411, column: 2, scope: !2262)
!2301 = !DILocation(line: 412, column: 1, scope: !2262)
!2302 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 719, type: !2303, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!287, !262, !1156}
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "size", arg: 1, scope: !2302, file: !101, line: 719, type: !262)
!2307 = !DILocalVariable(name: "flags", arg: 2, scope: !2302, file: !101, line: 719, type: !1156)
!2308 = !DILocation(line: 719, column: 52, scope: !2302)
!2309 = !DILocation(line: 719, column: 64, scope: !2302)
!2310 = !DILocation(line: 721, column: 17, scope: !2302)
!2311 = !DILocation(line: 721, column: 23, scope: !2302)
!2312 = !DILocation(line: 721, column: 29, scope: !2302)
!2313 = !DILocation(line: 721, column: 9, scope: !2302)
!2314 = !DILocation(line: 721, column: 2, scope: !2302)
!2315 = distinct !DISubprogram(name: "acpi_table_attr_init", scope: !3, file: !3, line: 342, type: !2316, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!46, !138, !1161, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !2320, line: 68, size: 288, elements: !2321)
!2320 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !2319, file: !2320, line: 69, baseType: !1166, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2319, file: !2320, line: 70, baseType: !1058, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2319, file: !2320, line: 71, baseType: !173, size: 8, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2319, file: !2320, line: 72, baseType: !173, size: 8, offset: 72)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !2319, file: !2320, line: 73, baseType: !2058, size: 48, offset: 80)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !2319, file: !2320, line: 74, baseType: !1169, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !2319, file: !2320, line: 75, baseType: !1058, size: 32, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !2319, file: !2320, line: 76, baseType: !1166, size: 32, offset: 224)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !2319, file: !2320, line: 77, baseType: !1058, size: 32, offset: 256)
!2331 = !{!2332, !2333, !2334, !2335, !2336, !2337, !2338, !2341}
!2332 = !DILocalVariable(name: "tables_obj", arg: 1, scope: !2315, file: !3, line: 342, type: !138)
!2333 = !DILocalVariable(name: "table_attr", arg: 2, scope: !2315, file: !3, line: 343, type: !1161)
!2334 = !DILocalVariable(name: "table_header", arg: 3, scope: !2315, file: !3, line: 344, type: !2318)
!2335 = !DILocalVariable(name: "header", scope: !2315, file: !3, line: 346, type: !2318)
!2336 = !DILocalVariable(name: "attr", scope: !2315, file: !3, line: 347, type: !1161)
!2337 = !DILocalVariable(name: "instance_str", scope: !2315, file: !3, line: 348, type: !1166)
!2338 = !DILocalVariable(name: "__mptr", scope: !2339, file: !3, line: 353, type: !287)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 353, column: 2)
!2340 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 353, column: 2)
!2341 = !DILocalVariable(name: "__mptr", scope: !2342, file: !3, line: 353, type: !287)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 353, column: 2)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 353, column: 2)
!2344 = !DILocation(line: 342, column: 49, scope: !2315)
!2345 = !DILocation(line: 343, column: 29, scope: !2315)
!2346 = !DILocation(line: 344, column: 31, scope: !2315)
!2347 = !DILocation(line: 346, column: 2, scope: !2315)
!2348 = !DILocation(line: 346, column: 28, scope: !2315)
!2349 = !DILocation(line: 347, column: 2, scope: !2315)
!2350 = !DILocation(line: 347, column: 26, scope: !2315)
!2351 = !DILocation(line: 348, column: 2, scope: !2315)
!2352 = !DILocation(line: 348, column: 7, scope: !2315)
!2353 = !DILocation(line: 350, column: 2, scope: !2315)
!2354 = !DILocation(line: 350, column: 2, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 350, column: 2)
!2356 = !DILocation(line: 351, column: 2, scope: !2315)
!2357 = !DILocation(line: 353, column: 2, scope: !2339)
!2358 = !DILocation(line: 353, column: 2, scope: !2340)
!2359 = !DILocation(line: 353, column: 2, scope: !2343)
!2360 = !DILocation(line: 354, column: 7, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 354, column: 7)
!2362 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 353, column: 57)
!2363 = !DILocation(line: 354, column: 7, scope: !2362)
!2364 = !DILocation(line: 355, column: 8, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 355, column: 8)
!2366 = !DILocation(line: 355, column: 20, scope: !2365)
!2367 = !DILocation(line: 355, column: 31, scope: !2365)
!2368 = !DILocation(line: 355, column: 37, scope: !2365)
!2369 = !DILocation(line: 355, column: 29, scope: !2365)
!2370 = !DILocation(line: 355, column: 8, scope: !2361)
!2371 = !DILocation(line: 356, column: 28, scope: !2365)
!2372 = !DILocation(line: 356, column: 34, scope: !2365)
!2373 = !DILocation(line: 356, column: 5, scope: !2365)
!2374 = !DILocation(line: 356, column: 17, scope: !2365)
!2375 = !DILocation(line: 356, column: 26, scope: !2365)
!2376 = !DILocation(line: 357, column: 2, scope: !2362)
!2377 = !DILocation(line: 353, column: 2, scope: !2342)
!2378 = distinct !{!2378, !2358, !2379, !2380, !2381}
!2379 = !DILocation(line: 357, column: 2, scope: !2340)
!2380 = !{!"llvm.loop.mustprogress"}
!2381 = !{!"llvm.loop.unroll.disable"}
!2382 = !DILocation(line: 358, column: 2, scope: !2315)
!2383 = !DILocation(line: 358, column: 14, scope: !2315)
!2384 = !DILocation(line: 358, column: 22, scope: !2315)
!2385 = !DILocation(line: 359, column: 6, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 359, column: 6)
!2387 = !DILocation(line: 359, column: 18, scope: !2386)
!2388 = !DILocation(line: 359, column: 27, scope: !2386)
!2389 = !DILocation(line: 359, column: 6, scope: !2315)
!2390 = !DILocation(line: 360, column: 3, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 360, column: 3)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 359, column: 55)
!2393 = !DILocation(line: 360, column: 3, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 360, column: 3)
!2395 = !DILocation(line: 361, column: 3, scope: !2392)
!2396 = !DILocation(line: 364, column: 2, scope: !2315)
!2397 = !DILocation(line: 365, column: 2, scope: !2315)
!2398 = !DILocation(line: 365, column: 14, scope: !2315)
!2399 = !DILocation(line: 365, column: 42, scope: !2315)
!2400 = !DILocation(line: 366, column: 6, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 366, column: 6)
!2402 = !DILocation(line: 366, column: 18, scope: !2401)
!2403 = !DILocation(line: 366, column: 27, scope: !2401)
!2404 = !DILocation(line: 366, column: 31, scope: !2401)
!2405 = !DILocation(line: 366, column: 35, scope: !2401)
!2406 = !DILocation(line: 366, column: 47, scope: !2401)
!2407 = !DILocation(line: 366, column: 56, scope: !2401)
!2408 = !DILocation(line: 366, column: 61, scope: !2401)
!2409 = !DILocation(line: 368, column: 8, scope: !2401)
!2410 = !DILocation(line: 368, column: 22, scope: !2401)
!2411 = !DILocation(line: 367, column: 8, scope: !2401)
!2412 = !DILocation(line: 366, column: 6, scope: !2315)
!2413 = !DILocation(line: 369, column: 12, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 368, column: 47)
!2415 = !DILocation(line: 370, column: 5, scope: !2414)
!2416 = !DILocation(line: 370, column: 17, scope: !2414)
!2417 = !DILocation(line: 369, column: 3, scope: !2414)
!2418 = !DILocation(line: 371, column: 10, scope: !2414)
!2419 = !DILocation(line: 371, column: 22, scope: !2414)
!2420 = !DILocation(line: 371, column: 32, scope: !2414)
!2421 = !DILocation(line: 371, column: 3, scope: !2414)
!2422 = !DILocation(line: 372, column: 2, scope: !2414)
!2423 = !DILocation(line: 374, column: 26, scope: !2315)
!2424 = !DILocation(line: 374, column: 40, scope: !2315)
!2425 = !DILocation(line: 374, column: 2, scope: !2315)
!2426 = !DILocation(line: 374, column: 14, scope: !2315)
!2427 = !DILocation(line: 374, column: 19, scope: !2315)
!2428 = !DILocation(line: 374, column: 24, scope: !2315)
!2429 = !DILocation(line: 375, column: 2, scope: !2315)
!2430 = !DILocation(line: 375, column: 14, scope: !2315)
!2431 = !DILocation(line: 375, column: 19, scope: !2315)
!2432 = !DILocation(line: 375, column: 24, scope: !2315)
!2433 = !DILocation(line: 376, column: 31, scope: !2315)
!2434 = !DILocation(line: 376, column: 43, scope: !2315)
!2435 = !DILocation(line: 376, column: 2, scope: !2315)
!2436 = !DILocation(line: 376, column: 14, scope: !2315)
!2437 = !DILocation(line: 376, column: 19, scope: !2315)
!2438 = !DILocation(line: 376, column: 24, scope: !2315)
!2439 = !DILocation(line: 376, column: 29, scope: !2315)
!2440 = !DILocation(line: 377, column: 2, scope: !2315)
!2441 = !DILocation(line: 377, column: 14, scope: !2315)
!2442 = !DILocation(line: 377, column: 19, scope: !2315)
!2443 = !DILocation(line: 377, column: 24, scope: !2315)
!2444 = !DILocation(line: 377, column: 29, scope: !2315)
!2445 = !DILocation(line: 379, column: 31, scope: !2315)
!2446 = !DILocation(line: 379, column: 44, scope: !2315)
!2447 = !DILocation(line: 379, column: 56, scope: !2315)
!2448 = !DILocation(line: 379, column: 9, scope: !2315)
!2449 = !DILocation(line: 379, column: 2, scope: !2315)
!2450 = !DILocation(line: 380, column: 1, scope: !2315)
!2451 = !DISubprogram(name: "kfree", scope: !101, file: !101, line: 227, type: !2452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !495}
!2454 = distinct !DISubprogram(name: "list_add_tail", scope: !2455, file: !2455, line: 181, type: !2456, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2455 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null, !120, !120}
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "new", arg: 1, scope: !2454, file: !2455, line: 181, type: !120)
!2460 = !DILocalVariable(name: "head", arg: 2, scope: !2454, file: !2455, line: 181, type: !120)
!2461 = !DILocation(line: 181, column: 52, scope: !2454)
!2462 = !DILocation(line: 181, column: 75, scope: !2454)
!2463 = !DILocation(line: 183, column: 13, scope: !2454)
!2464 = !DILocation(line: 183, column: 18, scope: !2454)
!2465 = !DILocation(line: 183, column: 24, scope: !2454)
!2466 = !DILocation(line: 183, column: 30, scope: !2454)
!2467 = !DILocation(line: 183, column: 2, scope: !2454)
!2468 = !DILocation(line: 184, column: 1, scope: !2454)
!2469 = distinct !DISubprogram(name: "acpi_gpe_set_masked_gpes", scope: !3, file: !3, line: 824, type: !2021, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2470 = !{!2471, !2472, !2473}
!2471 = !DILocalVariable(name: "val", arg: 1, scope: !2469, file: !3, line: 824, type: !215)
!2472 = !DILocalVariable(name: "ret", scope: !2469, file: !3, line: 826, type: !46)
!2473 = !DILocalVariable(name: "gpe", scope: !2469, file: !3, line: 827, type: !173)
!2474 = !DILocation(line: 824, column: 50, scope: !2469)
!2475 = !DILocation(line: 826, column: 2, scope: !2469)
!2476 = !DILocation(line: 826, column: 6, scope: !2469)
!2477 = !DILocation(line: 827, column: 2, scope: !2469)
!2478 = !DILocation(line: 827, column: 5, scope: !2469)
!2479 = !DILocation(line: 829, column: 17, scope: !2469)
!2480 = !DILocation(line: 829, column: 8, scope: !2469)
!2481 = !DILocation(line: 829, column: 6, scope: !2469)
!2482 = !DILocation(line: 830, column: 6, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 830, column: 6)
!2484 = !DILocation(line: 830, column: 6, scope: !2469)
!2485 = !DILocation(line: 831, column: 26, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 830, column: 11)
!2487 = !DILocation(line: 831, column: 9, scope: !2486)
!2488 = !DILocation(line: 831, column: 7, scope: !2486)
!2489 = !DILocation(line: 832, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 832, column: 7)
!2491 = !DILocation(line: 832, column: 7, scope: !2486)
!2492 = !DILocation(line: 833, column: 11, scope: !2490)
!2493 = !DILocation(line: 833, column: 4, scope: !2490)
!2494 = !DILocation(line: 834, column: 2, scope: !2486)
!2495 = !DILocation(line: 835, column: 11, scope: !2483)
!2496 = !DILocation(line: 835, column: 3, scope: !2483)
!2497 = !DILocation(line: 837, column: 2, scope: !2469)
!2498 = !DILocation(line: 838, column: 1, scope: !2469)
!2499 = distinct !DISubprogram(name: "acpi_gpe_apply_masked_gpes", scope: !3, file: !3, line: 841, type: !1153, scopeLine: 842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "handle", scope: !2499, file: !3, line: 843, type: !1196)
!2502 = !DILocalVariable(name: "status", scope: !2499, file: !3, line: 844, type: !1157)
!2503 = !DILocalVariable(name: "gpe", scope: !2499, file: !3, line: 845, type: !183)
!2504 = !DILocation(line: 843, column: 2, scope: !2499)
!2505 = !DILocation(line: 843, column: 14, scope: !2499)
!2506 = !DILocation(line: 844, column: 2, scope: !2499)
!2507 = !DILocation(line: 844, column: 14, scope: !2499)
!2508 = !DILocation(line: 845, column: 2, scope: !2499)
!2509 = !DILocation(line: 845, column: 6, scope: !2499)
!2510 = !DILocation(line: 847, column: 2, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 847, column: 2)
!2512 = !DILocation(line: 847, column: 2, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 847, column: 2)
!2514 = !DILocation(line: 848, column: 32, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 847, column: 69)
!2516 = !DILocation(line: 848, column: 12, scope: !2515)
!2517 = !DILocation(line: 848, column: 10, scope: !2515)
!2518 = !DILocation(line: 849, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 849, column: 7)
!2520 = !DILocation(line: 849, column: 7, scope: !2515)
!2521 = !DILocation(line: 850, column: 4, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 850, column: 4)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 849, column: 29)
!2524 = !DILocation(line: 850, column: 4, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 850, column: 4)
!2526 = !DILocation(line: 851, column: 24, scope: !2523)
!2527 = !DILocation(line: 851, column: 32, scope: !2523)
!2528 = !DILocation(line: 851, column: 10, scope: !2523)
!2529 = !DILocation(line: 852, column: 3, scope: !2523)
!2530 = !DILocation(line: 853, column: 2, scope: !2515)
!2531 = distinct !{!2531, !2510, !2532, !2380, !2381}
!2532 = !DILocation(line: 853, column: 2, scope: !2511)
!2533 = !DILocation(line: 854, column: 1, scope: !2499)
!2534 = distinct !DISubprogram(name: "find_next_bit", scope: !2535, file: !2535, line: 54, type: !2536, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2535 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!265, !2538, !265, !265}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!2540 = !{!2541, !2542, !2543, !2544}
!2541 = !DILocalVariable(name: "addr", arg: 1, scope: !2534, file: !2535, line: 54, type: !2538)
!2542 = !DILocalVariable(name: "size", arg: 2, scope: !2534, file: !2535, line: 54, type: !265)
!2543 = !DILocalVariable(name: "offset", arg: 3, scope: !2534, file: !2535, line: 55, type: !265)
!2544 = !DILocalVariable(name: "val", scope: !2545, file: !2535, line: 58, type: !265)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !2535, line: 57, column: 31)
!2546 = distinct !DILexicalBlock(scope: !2534, file: !2535, line: 57, column: 6)
!2547 = !DILocation(line: 54, column: 50, scope: !2534)
!2548 = !DILocation(line: 54, column: 70, scope: !2534)
!2549 = !DILocation(line: 55, column: 22, scope: !2534)
!2550 = !DILocation(line: 57, column: 6, scope: !2546)
!2551 = !DILocation(line: 57, column: 6, scope: !2534)
!2552 = !DILocation(line: 58, column: 3, scope: !2545)
!2553 = !DILocation(line: 58, column: 17, scope: !2545)
!2554 = !DILocation(line: 60, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2545, file: !2535, line: 60, column: 7)
!2556 = !DILocation(line: 60, column: 7, scope: !2545)
!2557 = !DILocation(line: 61, column: 11, scope: !2555)
!2558 = !DILocation(line: 61, column: 4, scope: !2555)
!2559 = !DILocation(line: 63, column: 10, scope: !2545)
!2560 = !DILocation(line: 63, column: 9, scope: !2545)
!2561 = !DILocation(line: 63, column: 17, scope: !2545)
!2562 = !DILocation(line: 63, column: 15, scope: !2545)
!2563 = !DILocation(line: 63, column: 7, scope: !2545)
!2564 = !DILocation(line: 64, column: 10, scope: !2545)
!2565 = !DILocation(line: 64, column: 16, scope: !2545)
!2566 = !DILocation(line: 64, column: 29, scope: !2545)
!2567 = !DILocation(line: 64, column: 3, scope: !2545)
!2568 = !DILocation(line: 65, column: 2, scope: !2546)
!2569 = !DILocation(line: 67, column: 24, scope: !2534)
!2570 = !DILocation(line: 67, column: 30, scope: !2534)
!2571 = !DILocation(line: 67, column: 36, scope: !2534)
!2572 = !DILocation(line: 67, column: 9, scope: !2534)
!2573 = !DILocation(line: 67, column: 2, scope: !2534)
!2574 = !DILocation(line: 68, column: 1, scope: !2534)
!2575 = !DISubprogram(name: "acpi_get_gpe_device", scope: !2576, file: !2576, line: 773, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!1157, !1058, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!2580 = !DISubprogram(name: "_printk", scope: !2581, file: !2581, line: 153, type: !2582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2581 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!46, !134, null}
!2584 = !DISubprogram(name: "acpi_mask_gpe", scope: !2576, file: !2576, line: 742, type: !2585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!1157, !1196, !1058, !173}
!2587 = distinct !DISubprogram(name: "acpi_irq_stats_init", scope: !3, file: !3, line: 856, type: !1153, scopeLine: 857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2588 = !{!2589, !2590, !2591, !2595, !2596}
!2589 = !DILocalVariable(name: "status", scope: !2587, file: !3, line: 858, type: !1157)
!2590 = !DILocalVariable(name: "i", scope: !2587, file: !3, line: 859, type: !46)
!2591 = !DILocalVariable(name: "buffer", scope: !2592, file: !3, line: 884, type: !2038)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 883, column: 37)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 883, column: 2)
!2594 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 883, column: 2)
!2595 = !DILocalVariable(name: "name", scope: !2592, file: !3, line: 885, type: !215)
!2596 = !DILabel(scope: !2587, name: "fail", file: !3, line: 927)
!2597 = !DILocation(line: 858, column: 2, scope: !2587)
!2598 = !DILocation(line: 858, column: 14, scope: !2587)
!2599 = !DILocation(line: 859, column: 2, scope: !2587)
!2600 = !DILocation(line: 859, column: 6, scope: !2587)
!2601 = !DILocation(line: 861, column: 6, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 861, column: 6)
!2603 = !DILocation(line: 861, column: 6, scope: !2587)
!2604 = !DILocation(line: 862, column: 3, scope: !2602)
!2605 = !DILocation(line: 864, column: 13, scope: !2587)
!2606 = !DILocation(line: 864, column: 11, scope: !2587)
!2607 = !DILocation(line: 865, column: 17, scope: !2587)
!2608 = !DILocation(line: 865, column: 26, scope: !2587)
!2609 = !DILocation(line: 865, column: 28, scope: !2587)
!2610 = !DILocation(line: 865, column: 50, scope: !2587)
!2611 = !DILocation(line: 865, column: 15, scope: !2587)
!2612 = !DILocation(line: 867, column: 22, scope: !2587)
!2613 = !DILocation(line: 867, column: 35, scope: !2587)
!2614 = !DILocation(line: 867, column: 14, scope: !2587)
!2615 = !DILocation(line: 867, column: 12, scope: !2587)
!2616 = !DILocation(line: 868, column: 6, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 868, column: 6)
!2618 = !DILocation(line: 868, column: 16, scope: !2617)
!2619 = !DILocation(line: 868, column: 6, scope: !2587)
!2620 = !DILocation(line: 869, column: 3, scope: !2617)
!2621 = !DILocation(line: 871, column: 25, scope: !2587)
!2622 = !DILocation(line: 871, column: 17, scope: !2587)
!2623 = !DILocation(line: 871, column: 15, scope: !2587)
!2624 = !DILocation(line: 872, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 872, column: 6)
!2626 = !DILocation(line: 872, column: 19, scope: !2625)
!2627 = !DILocation(line: 872, column: 6, scope: !2587)
!2628 = !DILocation(line: 873, column: 3, scope: !2625)
!2629 = !DILocation(line: 875, column: 11, scope: !2587)
!2630 = !DILocation(line: 875, column: 9, scope: !2587)
!2631 = !DILocation(line: 876, column: 6, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 876, column: 6)
!2633 = !DILocation(line: 876, column: 6, scope: !2587)
!2634 = !DILocation(line: 877, column: 3, scope: !2632)
!2635 = !DILocation(line: 879, column: 26, scope: !2587)
!2636 = !DILocation(line: 879, column: 18, scope: !2587)
!2637 = !DILocation(line: 879, column: 16, scope: !2587)
!2638 = !DILocation(line: 880, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 880, column: 6)
!2640 = !DILocation(line: 880, column: 20, scope: !2639)
!2641 = !DILocation(line: 880, column: 6, scope: !2587)
!2642 = !DILocation(line: 881, column: 3, scope: !2639)
!2643 = !DILocation(line: 883, column: 9, scope: !2594)
!2644 = !DILocation(line: 883, column: 7, scope: !2594)
!2645 = !DILocation(line: 883, column: 14, scope: !2593)
!2646 = !DILocation(line: 883, column: 18, scope: !2593)
!2647 = !DILocation(line: 883, column: 16, scope: !2593)
!2648 = !DILocation(line: 883, column: 2, scope: !2594)
!2649 = !DILocation(line: 884, column: 3, scope: !2592)
!2650 = !DILocation(line: 884, column: 8, scope: !2592)
!2651 = !DILocation(line: 885, column: 3, scope: !2592)
!2652 = !DILocation(line: 885, column: 9, scope: !2592)
!2653 = !DILocation(line: 887, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 887, column: 7)
!2655 = !DILocation(line: 887, column: 11, scope: !2654)
!2656 = !DILocation(line: 887, column: 9, scope: !2654)
!2657 = !DILocation(line: 887, column: 7, scope: !2592)
!2658 = !DILocation(line: 888, column: 12, scope: !2654)
!2659 = !DILocation(line: 888, column: 31, scope: !2654)
!2660 = !DILocation(line: 888, column: 4, scope: !2654)
!2661 = !DILocation(line: 889, column: 12, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 889, column: 12)
!2663 = !DILocation(line: 889, column: 17, scope: !2662)
!2664 = !DILocation(line: 889, column: 26, scope: !2662)
!2665 = !DILocation(line: 889, column: 14, scope: !2662)
!2666 = !DILocation(line: 889, column: 12, scope: !2654)
!2667 = !DILocation(line: 890, column: 12, scope: !2662)
!2668 = !DILocation(line: 890, column: 4, scope: !2662)
!2669 = !DILocation(line: 891, column: 12, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 891, column: 12)
!2671 = !DILocation(line: 891, column: 17, scope: !2670)
!2672 = !DILocation(line: 891, column: 26, scope: !2670)
!2673 = !DILocation(line: 891, column: 14, scope: !2670)
!2674 = !DILocation(line: 891, column: 12, scope: !2662)
!2675 = !DILocation(line: 892, column: 12, scope: !2670)
!2676 = !DILocation(line: 892, column: 4, scope: !2670)
!2677 = !DILocation(line: 893, column: 12, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 893, column: 12)
!2679 = !DILocation(line: 893, column: 17, scope: !2678)
!2680 = !DILocation(line: 893, column: 26, scope: !2678)
!2681 = !DILocation(line: 893, column: 14, scope: !2678)
!2682 = !DILocation(line: 893, column: 12, scope: !2670)
!2683 = !DILocation(line: 894, column: 12, scope: !2678)
!2684 = !DILocation(line: 894, column: 4, scope: !2678)
!2685 = !DILocation(line: 895, column: 12, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 895, column: 12)
!2687 = !DILocation(line: 895, column: 17, scope: !2686)
!2688 = !DILocation(line: 895, column: 26, scope: !2686)
!2689 = !DILocation(line: 895, column: 14, scope: !2686)
!2690 = !DILocation(line: 895, column: 12, scope: !2678)
!2691 = !DILocation(line: 896, column: 12, scope: !2686)
!2692 = !DILocation(line: 896, column: 4, scope: !2686)
!2693 = !DILocation(line: 897, column: 12, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 897, column: 12)
!2695 = !DILocation(line: 897, column: 17, scope: !2694)
!2696 = !DILocation(line: 897, column: 26, scope: !2694)
!2697 = !DILocation(line: 897, column: 14, scope: !2694)
!2698 = !DILocation(line: 897, column: 12, scope: !2686)
!2699 = !DILocation(line: 898, column: 12, scope: !2694)
!2700 = !DILocation(line: 898, column: 4, scope: !2694)
!2701 = !DILocation(line: 899, column: 12, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 899, column: 12)
!2703 = !DILocation(line: 899, column: 17, scope: !2702)
!2704 = !DILocation(line: 899, column: 26, scope: !2702)
!2705 = !DILocation(line: 899, column: 28, scope: !2702)
!2706 = !DILocation(line: 899, column: 50, scope: !2702)
!2707 = !DILocation(line: 899, column: 14, scope: !2702)
!2708 = !DILocation(line: 899, column: 12, scope: !2694)
!2709 = !DILocation(line: 900, column: 12, scope: !2702)
!2710 = !DILocation(line: 900, column: 4, scope: !2702)
!2711 = !DILocation(line: 901, column: 12, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 901, column: 12)
!2713 = !DILocation(line: 901, column: 17, scope: !2712)
!2714 = !DILocation(line: 901, column: 26, scope: !2712)
!2715 = !DILocation(line: 901, column: 28, scope: !2712)
!2716 = !DILocation(line: 901, column: 50, scope: !2712)
!2717 = !DILocation(line: 901, column: 14, scope: !2712)
!2718 = !DILocation(line: 901, column: 12, scope: !2702)
!2719 = !DILocation(line: 902, column: 12, scope: !2712)
!2720 = !DILocation(line: 902, column: 4, scope: !2712)
!2721 = !DILocation(line: 903, column: 12, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 903, column: 12)
!2723 = !DILocation(line: 903, column: 17, scope: !2722)
!2724 = !DILocation(line: 903, column: 26, scope: !2722)
!2725 = !DILocation(line: 903, column: 28, scope: !2722)
!2726 = !DILocation(line: 903, column: 50, scope: !2722)
!2727 = !DILocation(line: 903, column: 14, scope: !2722)
!2728 = !DILocation(line: 903, column: 12, scope: !2712)
!2729 = !DILocation(line: 904, column: 12, scope: !2722)
!2730 = !DILocation(line: 904, column: 4, scope: !2722)
!2731 = !DILocation(line: 905, column: 12, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 905, column: 12)
!2733 = !DILocation(line: 905, column: 17, scope: !2732)
!2734 = !DILocation(line: 905, column: 26, scope: !2732)
!2735 = !DILocation(line: 905, column: 28, scope: !2732)
!2736 = !DILocation(line: 905, column: 50, scope: !2732)
!2737 = !DILocation(line: 905, column: 14, scope: !2732)
!2738 = !DILocation(line: 905, column: 12, scope: !2722)
!2739 = !DILocation(line: 906, column: 12, scope: !2732)
!2740 = !DILocation(line: 906, column: 4, scope: !2732)
!2741 = !DILocation(line: 908, column: 12, scope: !2732)
!2742 = !DILocation(line: 908, column: 31, scope: !2732)
!2743 = !DILocation(line: 908, column: 4, scope: !2732)
!2744 = !DILocation(line: 910, column: 18, scope: !2592)
!2745 = !DILocation(line: 910, column: 10, scope: !2592)
!2746 = !DILocation(line: 910, column: 8, scope: !2592)
!2747 = !DILocation(line: 911, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 911, column: 7)
!2749 = !DILocation(line: 911, column: 12, scope: !2748)
!2750 = !DILocation(line: 911, column: 7, scope: !2592)
!2751 = !DILocation(line: 912, column: 4, scope: !2748)
!2752 = !DILocation(line: 914, column: 3, scope: !2592)
!2753 = !DILocation(line: 914, column: 3, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 914, column: 3)
!2755 = !DILocation(line: 915, column: 32, scope: !2592)
!2756 = !DILocation(line: 915, column: 3, scope: !2592)
!2757 = !DILocation(line: 915, column: 17, scope: !2592)
!2758 = !DILocation(line: 915, column: 20, scope: !2592)
!2759 = !DILocation(line: 915, column: 25, scope: !2592)
!2760 = !DILocation(line: 915, column: 30, scope: !2592)
!2761 = !DILocation(line: 916, column: 3, scope: !2592)
!2762 = !DILocation(line: 916, column: 17, scope: !2592)
!2763 = !DILocation(line: 916, column: 20, scope: !2592)
!2764 = !DILocation(line: 916, column: 25, scope: !2592)
!2765 = !DILocation(line: 916, column: 30, scope: !2592)
!2766 = !DILocation(line: 917, column: 3, scope: !2592)
!2767 = !DILocation(line: 917, column: 17, scope: !2592)
!2768 = !DILocation(line: 917, column: 20, scope: !2592)
!2769 = !DILocation(line: 917, column: 25, scope: !2592)
!2770 = !DILocation(line: 918, column: 3, scope: !2592)
!2771 = !DILocation(line: 918, column: 17, scope: !2592)
!2772 = !DILocation(line: 918, column: 20, scope: !2592)
!2773 = !DILocation(line: 918, column: 26, scope: !2592)
!2774 = !DILocation(line: 920, column: 19, scope: !2592)
!2775 = !DILocation(line: 920, column: 33, scope: !2592)
!2776 = !DILocation(line: 920, column: 36, scope: !2592)
!2777 = !DILocation(line: 920, column: 3, scope: !2592)
!2778 = !DILocation(line: 920, column: 13, scope: !2592)
!2779 = !DILocation(line: 920, column: 16, scope: !2592)
!2780 = !DILocation(line: 921, column: 2, scope: !2593)
!2781 = !DILocation(line: 921, column: 2, scope: !2592)
!2782 = !DILocation(line: 883, column: 32, scope: !2593)
!2783 = !DILocation(line: 883, column: 2, scope: !2593)
!2784 = distinct !{!2784, !2648, !2785, !2380, !2381}
!2785 = !DILocation(line: 921, column: 2, scope: !2594)
!2786 = !DILocation(line: 923, column: 37, scope: !2587)
!2787 = !DILocation(line: 923, column: 35, scope: !2587)
!2788 = !DILocation(line: 924, column: 26, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 924, column: 6)
!2790 = !DILocation(line: 924, column: 7, scope: !2789)
!2791 = !DILocation(line: 924, column: 6, scope: !2587)
!2792 = !DILocation(line: 925, column: 3, scope: !2789)
!2793 = !DILocation(line: 924, column: 64, scope: !2789)
!2794 = !DILocation(line: 927, column: 1, scope: !2587)
!2795 = !DILocation(line: 928, column: 2, scope: !2587)
!2796 = !DILocation(line: 929, column: 1, scope: !2587)
!2797 = distinct !DISubprogram(name: "kcalloc", scope: !101, file: !101, line: 666, type: !2798, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!287, !262, !262, !1156}
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !101, line: 666, type: !262)
!2802 = !DILocalVariable(name: "size", arg: 2, scope: !2797, file: !101, line: 666, type: !262)
!2803 = !DILocalVariable(name: "flags", arg: 3, scope: !2797, file: !101, line: 666, type: !1156)
!2804 = !DILocation(line: 666, column: 55, scope: !2797)
!2805 = !DILocation(line: 666, column: 65, scope: !2797)
!2806 = !DILocation(line: 666, column: 77, scope: !2797)
!2807 = !DILocation(line: 668, column: 23, scope: !2797)
!2808 = !DILocation(line: 668, column: 26, scope: !2797)
!2809 = !DILocation(line: 668, column: 32, scope: !2797)
!2810 = !DILocation(line: 668, column: 38, scope: !2797)
!2811 = !DILocation(line: 668, column: 9, scope: !2797)
!2812 = !DILocation(line: 668, column: 2, scope: !2797)
!2813 = !DISubprogram(name: "acpi_install_global_event_handler", scope: !2576, file: !2576, line: 598, type: !2814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!1157, !2816, !287}
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gbl_event_handler", file: !1158, line: 1047, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !1058, !1196, !1058, !287}
!2820 = distinct !DISubprogram(name: "acpi_global_event_handler", scope: !3, file: !3, line: 637, type: !2818, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DILocalVariable(name: "event_type", arg: 1, scope: !2820, file: !3, line: 637, type: !1058)
!2823 = !DILocalVariable(name: "device", arg: 2, scope: !2820, file: !3, line: 637, type: !1196)
!2824 = !DILocalVariable(name: "event_number", arg: 3, scope: !2820, file: !3, line: 638, type: !1058)
!2825 = !DILocalVariable(name: "context", arg: 4, scope: !2820, file: !3, line: 638, type: !287)
!2826 = !DILocation(line: 637, column: 43, scope: !2820)
!2827 = !DILocation(line: 637, column: 67, scope: !2820)
!2828 = !DILocation(line: 638, column: 6, scope: !2820)
!2829 = !DILocation(line: 638, column: 26, scope: !2820)
!2830 = !DILocation(line: 640, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 640, column: 6)
!2832 = !DILocation(line: 640, column: 17, scope: !2831)
!2833 = !DILocation(line: 640, column: 6, scope: !2820)
!2834 = !DILocation(line: 641, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 640, column: 41)
!2836 = !DILocation(line: 641, column: 3, scope: !2835)
!2837 = !DILocation(line: 642, column: 3, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 642, column: 3)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 642, column: 3)
!2840 = !DILocation(line: 642, column: 3, scope: !2839)
!2841 = !DILocation(line: 643, column: 2, scope: !2835)
!2842 = !DILocation(line: 643, column: 13, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 643, column: 13)
!2844 = !DILocation(line: 643, column: 24, scope: !2843)
!2845 = !DILocation(line: 643, column: 13, scope: !2831)
!2846 = !DILocation(line: 644, column: 21, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 643, column: 50)
!2848 = !DILocation(line: 644, column: 3, scope: !2847)
!2849 = !DILocation(line: 645, column: 3, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 645, column: 3)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 645, column: 3)
!2852 = !DILocation(line: 645, column: 3, scope: !2851)
!2853 = !DILocation(line: 646, column: 2, scope: !2847)
!2854 = !DILocation(line: 647, column: 3, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 647, column: 3)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 647, column: 3)
!2857 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 646, column: 9)
!2858 = !DILocation(line: 647, column: 3, scope: !2856)
!2859 = !DILocation(line: 649, column: 1, scope: !2820)
!2860 = !DISubprogram(name: "sprintf", scope: !2861, file: !2861, line: 10, type: !2862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2861 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!46, !215, !134, null}
!2864 = !DISubprogram(name: "kstrdup", scope: !2865, file: !2865, line: 216, type: !2866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2865 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!215, !134, !1156}
!2868 = distinct !DISubprogram(name: "counter_show", scope: !3, file: !3, line: 675, type: !2102, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2870 = !DILocalVariable(name: "kobj", arg: 1, scope: !2868, file: !3, line: 675, type: !138)
!2871 = !DILocalVariable(name: "attr", arg: 2, scope: !2868, file: !3, line: 676, type: !2096)
!2872 = !DILocalVariable(name: "buf", arg: 3, scope: !2868, file: !3, line: 676, type: !215)
!2873 = !DILocalVariable(name: "index", scope: !2868, file: !3, line: 678, type: !46)
!2874 = !DILocalVariable(name: "size", scope: !2868, file: !3, line: 679, type: !46)
!2875 = !DILocalVariable(name: "handle", scope: !2868, file: !3, line: 680, type: !1196)
!2876 = !DILocalVariable(name: "status", scope: !2868, file: !3, line: 681, type: !1179)
!2877 = !DILocalVariable(name: "result", scope: !2868, file: !3, line: 682, type: !46)
!2878 = !DILabel(scope: !2868, name: "end", file: !3, line: 722)
!2879 = !DILocation(line: 675, column: 45, scope: !2868)
!2880 = !DILocation(line: 676, column: 31, scope: !2868)
!2881 = !DILocation(line: 676, column: 43, scope: !2868)
!2882 = !DILocation(line: 678, column: 2, scope: !2868)
!2883 = !DILocation(line: 678, column: 6, scope: !2868)
!2884 = !DILocation(line: 678, column: 14, scope: !2868)
!2885 = !DILocation(line: 678, column: 21, scope: !2868)
!2886 = !DILocation(line: 678, column: 19, scope: !2868)
!2887 = !DILocation(line: 679, column: 2, scope: !2868)
!2888 = !DILocation(line: 679, column: 6, scope: !2868)
!2889 = !DILocation(line: 680, column: 2, scope: !2868)
!2890 = !DILocation(line: 680, column: 14, scope: !2868)
!2891 = !DILocation(line: 681, column: 2, scope: !2868)
!2892 = !DILocation(line: 681, column: 20, scope: !2868)
!2893 = !DILocation(line: 682, column: 2, scope: !2868)
!2894 = !DILocation(line: 682, column: 6, scope: !2868)
!2895 = !DILocation(line: 685, column: 6, scope: !2868)
!2896 = !DILocation(line: 684, column: 2, scope: !2868)
!2897 = !DILocation(line: 684, column: 15, scope: !2868)
!2898 = !DILocation(line: 684, column: 24, scope: !2868)
!2899 = !DILocation(line: 684, column: 26, scope: !2868)
!2900 = !DILocation(line: 684, column: 48, scope: !2868)
!2901 = !DILocation(line: 684, column: 61, scope: !2868)
!2902 = !DILocation(line: 684, column: 67, scope: !2868)
!2903 = !DILocation(line: 687, column: 6, scope: !2868)
!2904 = !DILocation(line: 686, column: 2, scope: !2868)
!2905 = !DILocation(line: 686, column: 15, scope: !2868)
!2906 = !DILocation(line: 686, column: 24, scope: !2868)
!2907 = !DILocation(line: 686, column: 26, scope: !2868)
!2908 = !DILocation(line: 686, column: 48, scope: !2868)
!2909 = !DILocation(line: 686, column: 65, scope: !2868)
!2910 = !DILocation(line: 686, column: 71, scope: !2868)
!2911 = !DILocation(line: 689, column: 6, scope: !2868)
!2912 = !DILocation(line: 688, column: 2, scope: !2868)
!2913 = !DILocation(line: 688, column: 15, scope: !2868)
!2914 = !DILocation(line: 688, column: 24, scope: !2868)
!2915 = !DILocation(line: 688, column: 26, scope: !2868)
!2916 = !DILocation(line: 688, column: 48, scope: !2868)
!2917 = !DILocation(line: 688, column: 61, scope: !2868)
!2918 = !DILocation(line: 688, column: 67, scope: !2868)
!2919 = !DILocation(line: 690, column: 17, scope: !2868)
!2920 = !DILocation(line: 690, column: 29, scope: !2868)
!2921 = !DILocation(line: 690, column: 42, scope: !2868)
!2922 = !DILocation(line: 690, column: 49, scope: !2868)
!2923 = !DILocation(line: 690, column: 9, scope: !2868)
!2924 = !DILocation(line: 690, column: 7, scope: !2868)
!2925 = !DILocation(line: 693, column: 6, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 693, column: 6)
!2927 = !DILocation(line: 693, column: 15, scope: !2926)
!2928 = !DILocation(line: 693, column: 24, scope: !2926)
!2929 = !DILocation(line: 693, column: 26, scope: !2926)
!2930 = !DILocation(line: 693, column: 12, scope: !2926)
!2931 = !DILocation(line: 693, column: 6, scope: !2868)
!2932 = !DILocation(line: 694, column: 3, scope: !2926)
!2933 = !DILocation(line: 696, column: 22, scope: !2868)
!2934 = !DILocation(line: 696, column: 11, scope: !2868)
!2935 = !DILocation(line: 696, column: 9, scope: !2868)
!2936 = !DILocation(line: 697, column: 6, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 697, column: 6)
!2938 = !DILocation(line: 697, column: 6, scope: !2868)
!2939 = !DILocation(line: 698, column: 3, scope: !2937)
!2940 = !DILocation(line: 700, column: 6, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 700, column: 6)
!2942 = !DILocation(line: 700, column: 13, scope: !2941)
!2943 = !DILocation(line: 700, column: 6, scope: !2868)
!2944 = !DILocation(line: 701, column: 19, scope: !2941)
!2945 = !DILocation(line: 701, column: 25, scope: !2941)
!2946 = !DILocation(line: 701, column: 23, scope: !2941)
!2947 = !DILocation(line: 701, column: 11, scope: !2941)
!2948 = !DILocation(line: 701, column: 8, scope: !2941)
!2949 = !DILocation(line: 701, column: 3, scope: !2941)
!2950 = !DILocation(line: 703, column: 19, scope: !2941)
!2951 = !DILocation(line: 703, column: 25, scope: !2941)
!2952 = !DILocation(line: 703, column: 23, scope: !2941)
!2953 = !DILocation(line: 703, column: 11, scope: !2941)
!2954 = !DILocation(line: 703, column: 8, scope: !2941)
!2955 = !DILocation(line: 704, column: 6, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 704, column: 6)
!2957 = !DILocation(line: 704, column: 13, scope: !2956)
!2958 = !DILocation(line: 704, column: 6, scope: !2868)
!2959 = !DILocation(line: 705, column: 19, scope: !2956)
!2960 = !DILocation(line: 705, column: 25, scope: !2956)
!2961 = !DILocation(line: 705, column: 23, scope: !2956)
!2962 = !DILocation(line: 705, column: 11, scope: !2956)
!2963 = !DILocation(line: 705, column: 8, scope: !2956)
!2964 = !DILocation(line: 705, column: 3, scope: !2956)
!2965 = !DILocation(line: 707, column: 19, scope: !2956)
!2966 = !DILocation(line: 707, column: 25, scope: !2956)
!2967 = !DILocation(line: 707, column: 23, scope: !2956)
!2968 = !DILocation(line: 707, column: 11, scope: !2956)
!2969 = !DILocation(line: 707, column: 8, scope: !2956)
!2970 = !DILocation(line: 709, column: 8, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 709, column: 6)
!2972 = !DILocation(line: 709, column: 15, scope: !2971)
!2973 = !DILocation(line: 709, column: 6, scope: !2868)
!2974 = !DILocation(line: 710, column: 19, scope: !2971)
!2975 = !DILocation(line: 710, column: 25, scope: !2971)
!2976 = !DILocation(line: 710, column: 23, scope: !2971)
!2977 = !DILocation(line: 710, column: 11, scope: !2971)
!2978 = !DILocation(line: 710, column: 8, scope: !2971)
!2979 = !DILocation(line: 710, column: 3, scope: !2971)
!2980 = !DILocation(line: 711, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 711, column: 11)
!2982 = !DILocation(line: 711, column: 18, scope: !2981)
!2983 = !DILocation(line: 711, column: 11, scope: !2971)
!2984 = !DILocation(line: 712, column: 19, scope: !2981)
!2985 = !DILocation(line: 712, column: 25, scope: !2981)
!2986 = !DILocation(line: 712, column: 23, scope: !2981)
!2987 = !DILocation(line: 712, column: 11, scope: !2981)
!2988 = !DILocation(line: 712, column: 8, scope: !2981)
!2989 = !DILocation(line: 712, column: 3, scope: !2981)
!2990 = !DILocation(line: 713, column: 11, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 713, column: 11)
!2992 = !DILocation(line: 713, column: 18, scope: !2991)
!2993 = !DILocation(line: 713, column: 11, scope: !2981)
!2994 = !DILocation(line: 714, column: 19, scope: !2991)
!2995 = !DILocation(line: 714, column: 25, scope: !2991)
!2996 = !DILocation(line: 714, column: 23, scope: !2991)
!2997 = !DILocation(line: 714, column: 11, scope: !2991)
!2998 = !DILocation(line: 714, column: 8, scope: !2991)
!2999 = !DILocation(line: 714, column: 3, scope: !2991)
!3000 = !DILocation(line: 716, column: 19, scope: !2991)
!3001 = !DILocation(line: 716, column: 25, scope: !2991)
!3002 = !DILocation(line: 716, column: 23, scope: !2991)
!3003 = !DILocation(line: 716, column: 11, scope: !2991)
!3004 = !DILocation(line: 716, column: 8, scope: !2991)
!3005 = !DILocation(line: 717, column: 6, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 717, column: 6)
!3007 = !DILocation(line: 717, column: 13, scope: !3006)
!3008 = !DILocation(line: 717, column: 6, scope: !2868)
!3009 = !DILocation(line: 718, column: 19, scope: !3006)
!3010 = !DILocation(line: 718, column: 25, scope: !3006)
!3011 = !DILocation(line: 718, column: 23, scope: !3006)
!3012 = !DILocation(line: 718, column: 11, scope: !3006)
!3013 = !DILocation(line: 718, column: 8, scope: !3006)
!3014 = !DILocation(line: 718, column: 3, scope: !3006)
!3015 = !DILocation(line: 720, column: 19, scope: !3006)
!3016 = !DILocation(line: 720, column: 25, scope: !3006)
!3017 = !DILocation(line: 720, column: 23, scope: !3006)
!3018 = !DILocation(line: 720, column: 11, scope: !3006)
!3019 = !DILocation(line: 720, column: 8, scope: !3006)
!3020 = !DILocation(line: 717, column: 15, scope: !3006)
!3021 = !DILocation(line: 722, column: 1, scope: !2868)
!3022 = !DILocation(line: 723, column: 18, scope: !2868)
!3023 = !DILocation(line: 723, column: 24, scope: !2868)
!3024 = !DILocation(line: 723, column: 22, scope: !2868)
!3025 = !DILocation(line: 723, column: 10, scope: !2868)
!3026 = !DILocation(line: 723, column: 7, scope: !2868)
!3027 = !DILocation(line: 724, column: 9, scope: !2868)
!3028 = !DILocation(line: 724, column: 18, scope: !2868)
!3029 = !DILocation(line: 724, column: 27, scope: !2868)
!3030 = !DILocation(line: 725, column: 1, scope: !2868)
!3031 = !DILocation(line: 724, column: 2, scope: !2868)
!3032 = distinct !DISubprogram(name: "counter_set", scope: !3, file: !3, line: 732, type: !2106, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3046, !3050}
!3034 = !DILocalVariable(name: "kobj", arg: 1, scope: !3032, file: !3, line: 732, type: !138)
!3035 = !DILocalVariable(name: "attr", arg: 2, scope: !3032, file: !3, line: 733, type: !2096)
!3036 = !DILocalVariable(name: "buf", arg: 3, scope: !3032, file: !3, line: 733, type: !134)
!3037 = !DILocalVariable(name: "size", arg: 4, scope: !3032, file: !3, line: 734, type: !262)
!3038 = !DILocalVariable(name: "index", scope: !3032, file: !3, line: 736, type: !46)
!3039 = !DILocalVariable(name: "status", scope: !3032, file: !3, line: 737, type: !1179)
!3040 = !DILocalVariable(name: "handle", scope: !3032, file: !3, line: 738, type: !1196)
!3041 = !DILocalVariable(name: "result", scope: !3032, file: !3, line: 739, type: !46)
!3042 = !DILocalVariable(name: "tmp", scope: !3032, file: !3, line: 740, type: !265)
!3043 = !DILocalVariable(name: "i", scope: !3044, file: !3, line: 743, type: !46)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 742, column: 61)
!3045 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 742, column: 6)
!3046 = !DILocalVariable(name: "event", scope: !3047, file: !3, line: 781, type: !46)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 780, column: 55)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 780, column: 13)
!3049 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 762, column: 6)
!3050 = !DILabel(scope: !3032, name: "end", file: !3, line: 800)
!3051 = !DILocation(line: 732, column: 44, scope: !3032)
!3052 = !DILocation(line: 733, column: 30, scope: !3032)
!3053 = !DILocation(line: 733, column: 48, scope: !3032)
!3054 = !DILocation(line: 734, column: 14, scope: !3032)
!3055 = !DILocation(line: 736, column: 2, scope: !3032)
!3056 = !DILocation(line: 736, column: 6, scope: !3032)
!3057 = !DILocation(line: 736, column: 14, scope: !3032)
!3058 = !DILocation(line: 736, column: 21, scope: !3032)
!3059 = !DILocation(line: 736, column: 19, scope: !3032)
!3060 = !DILocation(line: 737, column: 2, scope: !3032)
!3061 = !DILocation(line: 737, column: 20, scope: !3032)
!3062 = !DILocation(line: 738, column: 2, scope: !3032)
!3063 = !DILocation(line: 738, column: 14, scope: !3032)
!3064 = !DILocation(line: 739, column: 2, scope: !3032)
!3065 = !DILocation(line: 739, column: 6, scope: !3032)
!3066 = !DILocation(line: 740, column: 2, scope: !3032)
!3067 = !DILocation(line: 740, column: 16, scope: !3032)
!3068 = !DILocation(line: 742, column: 6, scope: !3045)
!3069 = !DILocation(line: 742, column: 15, scope: !3045)
!3070 = !DILocation(line: 742, column: 24, scope: !3045)
!3071 = !DILocation(line: 742, column: 26, scope: !3045)
!3072 = !DILocation(line: 742, column: 48, scope: !3045)
!3073 = !DILocation(line: 742, column: 12, scope: !3045)
!3074 = !DILocation(line: 742, column: 6, scope: !3032)
!3075 = !DILocation(line: 743, column: 3, scope: !3044)
!3076 = !DILocation(line: 743, column: 7, scope: !3044)
!3077 = !DILocation(line: 744, column: 10, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 744, column: 3)
!3079 = !DILocation(line: 744, column: 8, scope: !3078)
!3080 = !DILocation(line: 744, column: 15, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 744, column: 3)
!3082 = !DILocation(line: 744, column: 19, scope: !3081)
!3083 = !DILocation(line: 744, column: 17, scope: !3081)
!3084 = !DILocation(line: 744, column: 3, scope: !3078)
!3085 = !DILocation(line: 745, column: 4, scope: !3081)
!3086 = !DILocation(line: 745, column: 17, scope: !3081)
!3087 = !DILocation(line: 745, column: 20, scope: !3081)
!3088 = !DILocation(line: 745, column: 26, scope: !3081)
!3089 = !DILocation(line: 744, column: 33, scope: !3081)
!3090 = !DILocation(line: 744, column: 3, scope: !3081)
!3091 = distinct !{!3091, !3084, !3092, !2380, !2381}
!3092 = !DILocation(line: 745, column: 28, scope: !3078)
!3093 = !DILocation(line: 746, column: 18, scope: !3044)
!3094 = !DILocation(line: 747, column: 20, scope: !3044)
!3095 = !DILocation(line: 748, column: 24, scope: !3044)
!3096 = !DILocation(line: 750, column: 2, scope: !3045)
!3097 = !DILocation(line: 753, column: 22, scope: !3032)
!3098 = !DILocation(line: 753, column: 11, scope: !3032)
!3099 = !DILocation(line: 753, column: 9, scope: !3032)
!3100 = !DILocation(line: 754, column: 6, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 754, column: 6)
!3102 = !DILocation(line: 754, column: 6, scope: !3032)
!3103 = !DILocation(line: 755, column: 3, scope: !3101)
!3104 = !DILocation(line: 757, column: 8, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 757, column: 6)
!3106 = !DILocation(line: 757, column: 15, scope: !3105)
!3107 = !DILocation(line: 757, column: 6, scope: !3032)
!3108 = !DILocation(line: 758, column: 3, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 758, column: 3)
!3110 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 757, column: 47)
!3111 = !DILocation(line: 758, column: 3, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 758, column: 3)
!3113 = !DILocation(line: 759, column: 3, scope: !3110)
!3114 = !DILocation(line: 762, column: 6, scope: !3049)
!3115 = !DILocation(line: 762, column: 14, scope: !3049)
!3116 = !DILocation(line: 762, column: 12, scope: !3049)
!3117 = !DILocation(line: 762, column: 6, scope: !3032)
!3118 = !DILocation(line: 763, column: 15, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 763, column: 7)
!3120 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 762, column: 24)
!3121 = !DILocation(line: 763, column: 8, scope: !3119)
!3122 = !DILocation(line: 763, column: 33, scope: !3119)
!3123 = !DILocation(line: 764, column: 8, scope: !3119)
!3124 = !DILocation(line: 764, column: 15, scope: !3119)
!3125 = !DILocation(line: 763, column: 7, scope: !3120)
!3126 = !DILocation(line: 765, column: 30, scope: !3119)
!3127 = !DILocation(line: 765, column: 38, scope: !3119)
!3128 = !DILocation(line: 765, column: 13, scope: !3119)
!3129 = !DILocation(line: 765, column: 11, scope: !3119)
!3130 = !DILocation(line: 765, column: 4, scope: !3119)
!3131 = !DILocation(line: 766, column: 20, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 766, column: 12)
!3133 = !DILocation(line: 766, column: 13, scope: !3132)
!3134 = !DILocation(line: 766, column: 37, scope: !3132)
!3135 = !DILocation(line: 767, column: 7, scope: !3132)
!3136 = !DILocation(line: 767, column: 14, scope: !3132)
!3137 = !DILocation(line: 766, column: 12, scope: !3119)
!3138 = !DILocation(line: 768, column: 29, scope: !3132)
!3139 = !DILocation(line: 768, column: 37, scope: !3132)
!3140 = !DILocation(line: 768, column: 13, scope: !3132)
!3141 = !DILocation(line: 768, column: 11, scope: !3132)
!3142 = !DILocation(line: 768, column: 4, scope: !3132)
!3143 = !DILocation(line: 769, column: 20, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 769, column: 12)
!3145 = !DILocation(line: 769, column: 13, scope: !3144)
!3146 = !DILocation(line: 769, column: 36, scope: !3144)
!3147 = !DILocation(line: 770, column: 6, scope: !3144)
!3148 = !DILocation(line: 770, column: 13, scope: !3144)
!3149 = !DILocation(line: 769, column: 12, scope: !3132)
!3150 = !DILocation(line: 771, column: 28, scope: !3144)
!3151 = !DILocation(line: 771, column: 36, scope: !3144)
!3152 = !DILocation(line: 771, column: 13, scope: !3144)
!3153 = !DILocation(line: 771, column: 11, scope: !3144)
!3154 = !DILocation(line: 771, column: 4, scope: !3144)
!3155 = !DILocation(line: 772, column: 20, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 772, column: 12)
!3157 = !DILocation(line: 772, column: 13, scope: !3156)
!3158 = !DILocation(line: 772, column: 12, scope: !3144)
!3159 = !DILocation(line: 773, column: 27, scope: !3156)
!3160 = !DILocation(line: 773, column: 35, scope: !3156)
!3161 = !DILocation(line: 773, column: 13, scope: !3156)
!3162 = !DILocation(line: 773, column: 11, scope: !3156)
!3163 = !DILocation(line: 773, column: 4, scope: !3156)
!3164 = !DILocation(line: 774, column: 20, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 774, column: 12)
!3166 = !DILocation(line: 774, column: 13, scope: !3165)
!3167 = !DILocation(line: 774, column: 12, scope: !3156)
!3168 = !DILocation(line: 775, column: 27, scope: !3165)
!3169 = !DILocation(line: 775, column: 35, scope: !3165)
!3170 = !DILocation(line: 775, column: 13, scope: !3165)
!3171 = !DILocation(line: 775, column: 11, scope: !3165)
!3172 = !DILocation(line: 775, column: 4, scope: !3165)
!3173 = !DILocation(line: 776, column: 22, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 776, column: 12)
!3175 = !DILocation(line: 776, column: 13, scope: !3174)
!3176 = !DILocation(line: 776, column: 12, scope: !3165)
!3177 = !DILocation(line: 777, column: 32, scope: !3174)
!3178 = !DILocation(line: 777, column: 4, scope: !3174)
!3179 = !DILocation(line: 777, column: 17, scope: !3174)
!3180 = !DILocation(line: 777, column: 24, scope: !3174)
!3181 = !DILocation(line: 777, column: 30, scope: !3174)
!3182 = !DILocation(line: 779, column: 11, scope: !3174)
!3183 = !DILocation(line: 780, column: 2, scope: !3120)
!3184 = !DILocation(line: 780, column: 13, scope: !3048)
!3185 = !DILocation(line: 780, column: 21, scope: !3048)
!3186 = !DILocation(line: 780, column: 30, scope: !3048)
!3187 = !DILocation(line: 780, column: 32, scope: !3048)
!3188 = !DILocation(line: 780, column: 19, scope: !3048)
!3189 = !DILocation(line: 780, column: 13, scope: !3049)
!3190 = !DILocation(line: 781, column: 3, scope: !3047)
!3191 = !DILocation(line: 781, column: 7, scope: !3047)
!3192 = !DILocation(line: 781, column: 15, scope: !3047)
!3193 = !DILocation(line: 781, column: 23, scope: !3047)
!3194 = !DILocation(line: 781, column: 21, scope: !3047)
!3195 = !DILocation(line: 782, column: 15, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 782, column: 7)
!3197 = !DILocation(line: 782, column: 8, scope: !3196)
!3198 = !DILocation(line: 782, column: 33, scope: !3196)
!3199 = !DILocation(line: 783, column: 8, scope: !3196)
!3200 = !DILocation(line: 783, column: 15, scope: !3196)
!3201 = !DILocation(line: 782, column: 7, scope: !3047)
!3202 = !DILocation(line: 784, column: 32, scope: !3196)
!3203 = !DILocation(line: 784, column: 13, scope: !3196)
!3204 = !DILocation(line: 784, column: 11, scope: !3196)
!3205 = !DILocation(line: 784, column: 4, scope: !3196)
!3206 = !DILocation(line: 785, column: 20, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 785, column: 12)
!3208 = !DILocation(line: 785, column: 13, scope: !3207)
!3209 = !DILocation(line: 785, column: 37, scope: !3207)
!3210 = !DILocation(line: 786, column: 7, scope: !3207)
!3211 = !DILocation(line: 786, column: 14, scope: !3207)
!3212 = !DILocation(line: 785, column: 12, scope: !3196)
!3213 = !DILocation(line: 787, column: 31, scope: !3207)
!3214 = !DILocation(line: 787, column: 13, scope: !3207)
!3215 = !DILocation(line: 787, column: 11, scope: !3207)
!3216 = !DILocation(line: 787, column: 4, scope: !3207)
!3217 = !DILocation(line: 788, column: 20, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 788, column: 12)
!3219 = !DILocation(line: 788, column: 13, scope: !3218)
!3220 = !DILocation(line: 788, column: 36, scope: !3218)
!3221 = !DILocation(line: 789, column: 6, scope: !3218)
!3222 = !DILocation(line: 789, column: 13, scope: !3218)
!3223 = !DILocation(line: 788, column: 12, scope: !3207)
!3224 = !DILocation(line: 790, column: 30, scope: !3218)
!3225 = !DILocation(line: 790, column: 13, scope: !3218)
!3226 = !DILocation(line: 790, column: 11, scope: !3218)
!3227 = !DILocation(line: 790, column: 4, scope: !3218)
!3228 = !DILocation(line: 791, column: 22, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 791, column: 12)
!3230 = !DILocation(line: 791, column: 13, scope: !3229)
!3231 = !DILocation(line: 791, column: 12, scope: !3218)
!3232 = !DILocation(line: 792, column: 32, scope: !3229)
!3233 = !DILocation(line: 792, column: 4, scope: !3229)
!3234 = !DILocation(line: 792, column: 17, scope: !3229)
!3235 = !DILocation(line: 792, column: 24, scope: !3229)
!3236 = !DILocation(line: 792, column: 30, scope: !3229)
!3237 = !DILocation(line: 794, column: 11, scope: !3229)
!3238 = !DILocation(line: 795, column: 2, scope: !3048)
!3239 = !DILocation(line: 795, column: 2, scope: !3047)
!3240 = !DILocation(line: 796, column: 39, scope: !3048)
!3241 = !DILocation(line: 796, column: 31, scope: !3048)
!3242 = !DILocation(line: 796, column: 3, scope: !3048)
!3243 = !DILocation(line: 796, column: 16, scope: !3048)
!3244 = !DILocation(line: 796, column: 23, scope: !3048)
!3245 = !DILocation(line: 796, column: 29, scope: !3048)
!3246 = !DILocation(line: 798, column: 6, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 798, column: 6)
!3248 = !DILocation(line: 798, column: 6, scope: !3032)
!3249 = !DILocation(line: 799, column: 10, scope: !3247)
!3250 = !DILocation(line: 799, column: 3, scope: !3247)
!3251 = !DILocation(line: 800, column: 1, scope: !3032)
!3252 = !DILocation(line: 801, column: 9, scope: !3032)
!3253 = !DILocation(line: 801, column: 18, scope: !3032)
!3254 = !DILocation(line: 801, column: 27, scope: !3032)
!3255 = !DILocation(line: 801, column: 2, scope: !3032)
!3256 = !DILocation(line: 802, column: 1, scope: !3032)
!3257 = !DISubprogram(name: "sysfs_create_group", scope: !241, file: !241, line: 307, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!46, !138, !268}
!3260 = distinct !DISubprogram(name: "delete_gpe_attr_array", scope: !3, file: !3, line: 593, type: !1153, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "tmp", scope: !3260, file: !3, line: 595, type: !2083)
!3263 = !DILocalVariable(name: "i", scope: !3264, file: !3, line: 601, type: !46)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 600, column: 21)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 600, column: 6)
!3266 = !DILocation(line: 595, column: 2, scope: !3260)
!3267 = !DILocation(line: 595, column: 24, scope: !3260)
!3268 = !DILocation(line: 595, column: 30, scope: !3260)
!3269 = !DILocation(line: 597, column: 15, scope: !3260)
!3270 = !DILocation(line: 598, column: 8, scope: !3260)
!3271 = !DILocation(line: 598, column: 2, scope: !3260)
!3272 = !DILocation(line: 600, column: 6, scope: !3265)
!3273 = !DILocation(line: 600, column: 6, scope: !3260)
!3274 = !DILocation(line: 601, column: 3, scope: !3264)
!3275 = !DILocation(line: 601, column: 7, scope: !3264)
!3276 = !DILocation(line: 603, column: 10, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 603, column: 3)
!3278 = !DILocation(line: 603, column: 8, scope: !3277)
!3279 = !DILocation(line: 603, column: 15, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 603, column: 3)
!3281 = !DILocation(line: 603, column: 19, scope: !3280)
!3282 = !DILocation(line: 603, column: 17, scope: !3280)
!3283 = !DILocation(line: 603, column: 3, scope: !3277)
!3284 = !DILocation(line: 604, column: 10, scope: !3280)
!3285 = !DILocation(line: 604, column: 24, scope: !3280)
!3286 = !DILocation(line: 604, column: 27, scope: !3280)
!3287 = !DILocation(line: 604, column: 32, scope: !3280)
!3288 = !DILocation(line: 604, column: 4, scope: !3280)
!3289 = !DILocation(line: 603, column: 30, scope: !3280)
!3290 = !DILocation(line: 603, column: 3, scope: !3280)
!3291 = distinct !{!3291, !3283, !3292, !2380, !2381}
!3292 = !DILocation(line: 604, column: 36, scope: !3277)
!3293 = !DILocation(line: 606, column: 9, scope: !3264)
!3294 = !DILocation(line: 606, column: 3, scope: !3264)
!3295 = !DILocation(line: 607, column: 2, scope: !3265)
!3296 = !DILocation(line: 607, column: 2, scope: !3264)
!3297 = !DILocation(line: 608, column: 8, scope: !3260)
!3298 = !DILocation(line: 608, column: 2, scope: !3260)
!3299 = !DILocation(line: 609, column: 1, scope: !3260)
!3300 = distinct !DISubprogram(name: "interrupt_stats_exit", scope: !3, file: !3, line: 931, type: !1153, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3301 = !DILocation(line: 933, column: 21, scope: !3300)
!3302 = !DILocation(line: 933, column: 2, scope: !3300)
!3303 = !DILocation(line: 935, column: 2, scope: !3300)
!3304 = !DILocation(line: 936, column: 1, scope: !3300)
!3305 = !DISubprogram(name: "sysfs_remove_group", scope: !241, file: !241, line: 315, type: !3306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !138, !268}
!3308 = distinct !DISubprogram(name: "acpi_sysfs_add_hotplug_profile", scope: !3, file: !3, line: 978, type: !3309, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !1181, !134}
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DILocalVariable(name: "hotplug", arg: 1, scope: !3308, file: !3, line: 978, type: !1181)
!3313 = !DILocalVariable(name: "name", arg: 2, scope: !3308, file: !3, line: 979, type: !134)
!3314 = !DILocalVariable(name: "error", scope: !3308, file: !3, line: 981, type: !46)
!3315 = !DILabel(scope: !3308, name: "err_out", file: !3, line: 996)
!3316 = !DILocation(line: 978, column: 66, scope: !3308)
!3317 = !DILocation(line: 979, column: 21, scope: !3308)
!3318 = !DILocation(line: 981, column: 2, scope: !3308)
!3319 = !DILocation(line: 981, column: 6, scope: !3308)
!3320 = !DILocation(line: 983, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 983, column: 6)
!3322 = !DILocation(line: 983, column: 6, scope: !3308)
!3323 = !DILocation(line: 984, column: 3, scope: !3321)
!3324 = !DILocation(line: 986, column: 32, scope: !3308)
!3325 = !DILocation(line: 986, column: 41, scope: !3308)
!3326 = !DILocation(line: 987, column: 32, scope: !3308)
!3327 = !DILocation(line: 987, column: 52, scope: !3308)
!3328 = !DILocation(line: 986, column: 10, scope: !3308)
!3329 = !DILocation(line: 986, column: 8, scope: !3308)
!3330 = !DILocation(line: 988, column: 6, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 988, column: 6)
!3332 = !DILocation(line: 988, column: 6, scope: !3308)
!3333 = !DILocation(line: 989, column: 16, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 988, column: 13)
!3335 = !DILocation(line: 989, column: 25, scope: !3334)
!3336 = !DILocation(line: 989, column: 3, scope: !3334)
!3337 = !DILocation(line: 990, column: 3, scope: !3334)
!3338 = !DILocation(line: 993, column: 18, scope: !3308)
!3339 = !DILocation(line: 993, column: 27, scope: !3308)
!3340 = !DILocation(line: 993, column: 2, scope: !3308)
!3341 = !DILocation(line: 994, column: 2, scope: !3308)
!3342 = !DILocation(line: 996, column: 2, scope: !3308)
!3343 = !DILocation(line: 997, column: 2, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 997, column: 2)
!3345 = !DILocation(line: 997, column: 2, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 997, column: 2)
!3347 = !DILocation(line: 998, column: 1, scope: !3308)
!3348 = !DISubprogram(name: "kobject_init_and_add", scope: !85, file: !85, line: 96, type: !3349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!46, !138, !229, !138, !134, null}
!3351 = !DISubprogram(name: "kobject_put", scope: !85, file: !85, line: 110, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3352 = !DISubprogram(name: "kobject_uevent", scope: !85, file: !85, line: 214, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!46, !138, !84}
!3355 = distinct !DISubprogram(name: "acpi_sysfs_init", scope: !3, file: !3, line: 1026, type: !912, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3356)
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "result", scope: !3355, file: !3, line: 1028, type: !46)
!3358 = !DILocation(line: 1028, column: 2, scope: !3355)
!3359 = !DILocation(line: 1028, column: 6, scope: !3355)
!3360 = !DILocation(line: 1030, column: 11, scope: !3355)
!3361 = !DILocation(line: 1030, column: 9, scope: !3355)
!3362 = !DILocation(line: 1031, column: 6, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1031, column: 6)
!3364 = !DILocation(line: 1031, column: 6, scope: !3355)
!3365 = !DILocation(line: 1032, column: 10, scope: !3363)
!3366 = !DILocation(line: 1032, column: 3, scope: !3363)
!3367 = !DILocation(line: 1034, column: 51, scope: !3355)
!3368 = !DILocation(line: 1034, column: 17, scope: !3355)
!3369 = !DILocation(line: 1034, column: 15, scope: !3355)
!3370 = !DILocation(line: 1035, column: 7, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1035, column: 6)
!3372 = !DILocation(line: 1035, column: 6, scope: !3355)
!3373 = !DILocation(line: 1036, column: 3, scope: !3371)
!3374 = !DILocation(line: 1038, column: 29, scope: !3355)
!3375 = !DILocation(line: 1038, column: 11, scope: !3355)
!3376 = !DILocation(line: 1038, column: 9, scope: !3355)
!3377 = !DILocation(line: 1039, column: 6, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1039, column: 6)
!3379 = !DILocation(line: 1039, column: 6, scope: !3355)
!3380 = !DILocation(line: 1040, column: 10, scope: !3378)
!3381 = !DILocation(line: 1040, column: 3, scope: !3378)
!3382 = !DILocation(line: 1042, column: 29, scope: !3355)
!3383 = !DILocation(line: 1042, column: 11, scope: !3355)
!3384 = !DILocation(line: 1042, column: 9, scope: !3355)
!3385 = !DILocation(line: 1043, column: 9, scope: !3355)
!3386 = !DILocation(line: 1043, column: 2, scope: !3355)
!3387 = !DILocation(line: 1044, column: 1, scope: !3355)
!3388 = distinct !DISubprogram(name: "acpi_tables_sysfs_init", scope: !3, file: !3, line: 506, type: !912, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3390 = !DILocalVariable(name: "table_attr", scope: !3388, file: !3, line: 508, type: !1161)
!3391 = !DILocalVariable(name: "table_header", scope: !3388, file: !3, line: 509, type: !2318)
!3392 = !DILocalVariable(name: "table_index", scope: !3388, file: !3, line: 510, type: !46)
!3393 = !DILocalVariable(name: "status", scope: !3388, file: !3, line: 511, type: !1157)
!3394 = !DILocalVariable(name: "ret", scope: !3388, file: !3, line: 512, type: !46)
!3395 = !DILabel(scope: !3388, name: "err_dynamic_tables", file: !3, line: 554)
!3396 = !DILabel(scope: !3388, name: "err_tables_data", file: !3, line: 556)
!3397 = !DILabel(scope: !3388, name: "err", file: !3, line: 558)
!3398 = !DILocation(line: 508, column: 2, scope: !3388)
!3399 = !DILocation(line: 508, column: 26, scope: !3388)
!3400 = !DILocation(line: 509, column: 2, scope: !3388)
!3401 = !DILocation(line: 509, column: 28, scope: !3388)
!3402 = !DILocation(line: 510, column: 2, scope: !3388)
!3403 = !DILocation(line: 510, column: 6, scope: !3388)
!3404 = !DILocation(line: 511, column: 2, scope: !3388)
!3405 = !DILocation(line: 511, column: 14, scope: !3388)
!3406 = !DILocation(line: 512, column: 2, scope: !3388)
!3407 = !DILocation(line: 512, column: 6, scope: !3388)
!3408 = !DILocation(line: 514, column: 49, scope: !3388)
!3409 = !DILocation(line: 514, column: 16, scope: !3388)
!3410 = !DILocation(line: 514, column: 14, scope: !3388)
!3411 = !DILocation(line: 515, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 515, column: 6)
!3413 = !DILocation(line: 515, column: 6, scope: !3388)
!3414 = !DILocation(line: 516, column: 3, scope: !3412)
!3415 = !DILocation(line: 518, column: 52, scope: !3388)
!3416 = !DILocation(line: 518, column: 21, scope: !3388)
!3417 = !DILocation(line: 518, column: 19, scope: !3388)
!3418 = !DILocation(line: 519, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 519, column: 6)
!3420 = !DILocation(line: 519, column: 6, scope: !3388)
!3421 = !DILocation(line: 520, column: 3, scope: !3419)
!3422 = !DILocation(line: 522, column: 58, scope: !3388)
!3423 = !DILocation(line: 522, column: 24, scope: !3388)
!3424 = !DILocation(line: 522, column: 22, scope: !3388)
!3425 = !DILocation(line: 523, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 523, column: 6)
!3427 = !DILocation(line: 523, column: 6, scope: !3388)
!3428 = !DILocation(line: 524, column: 3, scope: !3426)
!3429 = !DILocation(line: 526, column: 19, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 526, column: 2)
!3431 = !DILocation(line: 526, column: 7, scope: !3430)
!3432 = !DILocation(line: 527, column: 36, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 526, column: 40)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 526, column: 2)
!3435 = !DILocation(line: 527, column: 12, scope: !3433)
!3436 = !DILocation(line: 527, column: 10, scope: !3433)
!3437 = !DILocation(line: 529, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 529, column: 7)
!3439 = !DILocation(line: 529, column: 14, scope: !3438)
!3440 = !DILocation(line: 529, column: 7, scope: !3433)
!3441 = !DILocation(line: 530, column: 4, scope: !3438)
!3442 = !DILocation(line: 532, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 532, column: 7)
!3444 = !DILocation(line: 532, column: 7, scope: !3433)
!3445 = !DILocation(line: 533, column: 4, scope: !3443)
!3446 = !DILocation(line: 535, column: 16, scope: !3433)
!3447 = !DILocation(line: 535, column: 14, scope: !3433)
!3448 = !DILocation(line: 536, column: 8, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 536, column: 7)
!3450 = !DILocation(line: 536, column: 7, scope: !3433)
!3451 = !DILocation(line: 537, column: 4, scope: !3449)
!3452 = !DILocation(line: 539, column: 30, scope: !3433)
!3453 = !DILocation(line: 540, column: 9, scope: !3433)
!3454 = !DILocation(line: 540, column: 21, scope: !3433)
!3455 = !DILocation(line: 539, column: 9, scope: !3433)
!3456 = !DILocation(line: 539, column: 7, scope: !3433)
!3457 = !DILocation(line: 541, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 541, column: 7)
!3459 = !DILocation(line: 541, column: 7, scope: !3433)
!3460 = !DILocation(line: 542, column: 10, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 541, column: 12)
!3462 = !DILocation(line: 542, column: 4, scope: !3461)
!3463 = !DILocation(line: 543, column: 11, scope: !3461)
!3464 = !DILocation(line: 543, column: 4, scope: !3461)
!3465 = !DILocation(line: 545, column: 18, scope: !3433)
!3466 = !DILocation(line: 545, column: 30, scope: !3433)
!3467 = !DILocation(line: 545, column: 3, scope: !3433)
!3468 = !DILocation(line: 546, column: 24, scope: !3433)
!3469 = !DILocation(line: 546, column: 3, scope: !3433)
!3470 = !DILocation(line: 547, column: 2, scope: !3433)
!3471 = !DILocation(line: 526, column: 36, scope: !3434)
!3472 = !DILocation(line: 526, column: 2, scope: !3434)
!3473 = distinct !{!3473, !3474, !3475, !2381}
!3474 = !DILocation(line: 526, column: 2, scope: !3430)
!3475 = !DILocation(line: 547, column: 2, scope: !3430)
!3476 = !DILocation(line: 549, column: 17, scope: !3388)
!3477 = !DILocation(line: 549, column: 2, scope: !3388)
!3478 = !DILocation(line: 550, column: 17, scope: !3388)
!3479 = !DILocation(line: 550, column: 2, scope: !3388)
!3480 = !DILocation(line: 551, column: 17, scope: !3388)
!3481 = !DILocation(line: 551, column: 2, scope: !3388)
!3482 = !DILocation(line: 553, column: 2, scope: !3388)
!3483 = !DILocation(line: 554, column: 1, scope: !3388)
!3484 = !DILocation(line: 555, column: 14, scope: !3388)
!3485 = !DILocation(line: 555, column: 2, scope: !3388)
!3486 = !DILocation(line: 556, column: 1, scope: !3388)
!3487 = !DILocation(line: 557, column: 14, scope: !3388)
!3488 = !DILocation(line: 557, column: 2, scope: !3388)
!3489 = !DILocation(line: 558, column: 1, scope: !3388)
!3490 = !DILocation(line: 559, column: 2, scope: !3388)
!3491 = !DILocation(line: 560, column: 1, scope: !3388)
!3492 = !DISubprogram(name: "kobject_create_and_add", scope: !85, file: !85, line: 103, type: !3493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!138, !134, !138}
!3495 = distinct !DISubprogram(name: "sysfs_create_file", scope: !241, file: !241, line: 620, type: !3496, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!46, !138, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "kobj", arg: 1, scope: !3495, file: !241, line: 620, type: !138)
!3502 = !DILocalVariable(name: "attr", arg: 2, scope: !3495, file: !241, line: 621, type: !3498)
!3503 = !DILocation(line: 620, column: 66, scope: !3495)
!3504 = !DILocation(line: 621, column: 32, scope: !3495)
!3505 = !DILocation(line: 623, column: 30, scope: !3495)
!3506 = !DILocation(line: 623, column: 36, scope: !3495)
!3507 = !DILocation(line: 623, column: 9, scope: !3495)
!3508 = !DILocation(line: 623, column: 2, scope: !3495)
!3509 = distinct !DISubprogram(name: "param_get_acpica_version", scope: !3, file: !3, line: 280, type: !868, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "buffer", arg: 1, scope: !3509, file: !3, line: 280, type: !215)
!3512 = !DILocalVariable(name: "kp", arg: 2, scope: !3509, file: !3, line: 281, type: !864)
!3513 = !DILocalVariable(name: "result", scope: !3509, file: !3, line: 283, type: !46)
!3514 = !DILocation(line: 280, column: 43, scope: !3509)
!3515 = !DILocation(line: 281, column: 36, scope: !3509)
!3516 = !DILocation(line: 283, column: 2, scope: !3509)
!3517 = !DILocation(line: 283, column: 6, scope: !3509)
!3518 = !DILocation(line: 285, column: 19, scope: !3509)
!3519 = !DILocation(line: 285, column: 11, scope: !3509)
!3520 = !DILocation(line: 285, column: 9, scope: !3509)
!3521 = !DILocation(line: 287, column: 9, scope: !3509)
!3522 = !DILocation(line: 288, column: 1, scope: !3509)
!3523 = !DILocation(line: 287, column: 2, scope: !3509)
!3524 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 591, type: !2303, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DILocalVariable(name: "size", arg: 1, scope: !3524, file: !101, line: 591, type: !262)
!3527 = !DILocalVariable(name: "flags", arg: 2, scope: !3524, file: !101, line: 591, type: !1156)
!3528 = !DILocalVariable(name: "index", scope: !3529, file: !101, line: 594, type: !7)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !101, line: 593, column: 42)
!3530 = distinct !DILexicalBlock(scope: !3524, file: !101, line: 593, column: 6)
!3531 = !DILocation(line: 591, column: 61, scope: !3524)
!3532 = !DILocation(line: 591, column: 73, scope: !3524)
!3533 = !DILocation(line: 593, column: 27, scope: !3530)
!3534 = !DILocation(line: 593, column: 6, scope: !3530)
!3535 = !DILocation(line: 593, column: 33, scope: !3530)
!3536 = !DILocation(line: 593, column: 36, scope: !3530)
!3537 = !DILocation(line: 593, column: 6, scope: !3524)
!3538 = !DILocation(line: 594, column: 3, scope: !3529)
!3539 = !DILocation(line: 594, column: 16, scope: !3529)
!3540 = !DILocation(line: 596, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3529, file: !101, line: 596, column: 7)
!3542 = !DILocation(line: 596, column: 12, scope: !3541)
!3543 = !DILocation(line: 596, column: 7, scope: !3529)
!3544 = !DILocation(line: 597, column: 25, scope: !3541)
!3545 = !DILocation(line: 597, column: 31, scope: !3541)
!3546 = !DILocation(line: 597, column: 11, scope: !3541)
!3547 = !DILocation(line: 597, column: 4, scope: !3541)
!3548 = !DILocation(line: 599, column: 11, scope: !3529)
!3549 = !DILocation(line: 599, column: 9, scope: !3529)
!3550 = !DILocation(line: 601, column: 33, scope: !3529)
!3551 = !DILocation(line: 601, column: 40, scope: !3529)
!3552 = !DILocation(line: 601, column: 20, scope: !3529)
!3553 = !DILocation(line: 601, column: 5, scope: !3529)
!3554 = !DILocation(line: 601, column: 51, scope: !3529)
!3555 = !DILocation(line: 602, column: 5, scope: !3529)
!3556 = !DILocation(line: 602, column: 12, scope: !3529)
!3557 = !DILocation(line: 600, column: 10, scope: !3529)
!3558 = !DILocation(line: 600, column: 3, scope: !3529)
!3559 = !DILocation(line: 603, column: 2, scope: !3530)
!3560 = !DILocation(line: 604, column: 19, scope: !3524)
!3561 = !DILocation(line: 604, column: 25, scope: !3524)
!3562 = !DILocation(line: 604, column: 9, scope: !3524)
!3563 = !DILocation(line: 604, column: 2, scope: !3524)
!3564 = !DILocation(line: 605, column: 1, scope: !3524)
!3565 = !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 531, type: !2303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3566 = distinct !DISubprogram(name: "__kmalloc_index", scope: !101, file: !101, line: 444, type: !3567, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!7, !262, !573}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "size", arg: 1, scope: !3566, file: !101, line: 444, type: !262)
!3571 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3566, file: !101, line: 445, type: !573)
!3572 = !DILocation(line: 444, column: 60, scope: !3566)
!3573 = !DILocation(line: 445, column: 16, scope: !3566)
!3574 = !DILocation(line: 447, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 447, column: 6)
!3576 = !DILocation(line: 447, column: 6, scope: !3566)
!3577 = !DILocation(line: 448, column: 3, scope: !3575)
!3578 = !DILocation(line: 450, column: 6, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 450, column: 6)
!3580 = !DILocation(line: 450, column: 11, scope: !3579)
!3581 = !DILocation(line: 450, column: 6, scope: !3566)
!3582 = !DILocation(line: 451, column: 3, scope: !3579)
!3583 = !DILocation(line: 453, column: 32, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 453, column: 6)
!3585 = !DILocation(line: 453, column: 37, scope: !3584)
!3586 = !DILocation(line: 453, column: 42, scope: !3584)
!3587 = !DILocation(line: 453, column: 45, scope: !3584)
!3588 = !DILocation(line: 453, column: 50, scope: !3584)
!3589 = !DILocation(line: 453, column: 6, scope: !3566)
!3590 = !DILocation(line: 454, column: 3, scope: !3584)
!3591 = !DILocation(line: 455, column: 32, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 455, column: 6)
!3593 = !DILocation(line: 455, column: 37, scope: !3592)
!3594 = !DILocation(line: 455, column: 43, scope: !3592)
!3595 = !DILocation(line: 455, column: 46, scope: !3592)
!3596 = !DILocation(line: 455, column: 51, scope: !3592)
!3597 = !DILocation(line: 455, column: 6, scope: !3566)
!3598 = !DILocation(line: 456, column: 3, scope: !3592)
!3599 = !DILocation(line: 457, column: 6, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 457, column: 6)
!3601 = !DILocation(line: 457, column: 11, scope: !3600)
!3602 = !DILocation(line: 457, column: 6, scope: !3566)
!3603 = !DILocation(line: 457, column: 26, scope: !3600)
!3604 = !DILocation(line: 458, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 458, column: 6)
!3606 = !DILocation(line: 458, column: 11, scope: !3605)
!3607 = !DILocation(line: 458, column: 6, scope: !3566)
!3608 = !DILocation(line: 458, column: 26, scope: !3605)
!3609 = !DILocation(line: 459, column: 6, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 459, column: 6)
!3611 = !DILocation(line: 459, column: 11, scope: !3610)
!3612 = !DILocation(line: 459, column: 6, scope: !3566)
!3613 = !DILocation(line: 459, column: 26, scope: !3610)
!3614 = !DILocation(line: 460, column: 6, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 460, column: 6)
!3616 = !DILocation(line: 460, column: 11, scope: !3615)
!3617 = !DILocation(line: 460, column: 6, scope: !3566)
!3618 = !DILocation(line: 460, column: 26, scope: !3615)
!3619 = !DILocation(line: 461, column: 6, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 461, column: 6)
!3621 = !DILocation(line: 461, column: 11, scope: !3620)
!3622 = !DILocation(line: 461, column: 6, scope: !3566)
!3623 = !DILocation(line: 461, column: 26, scope: !3620)
!3624 = !DILocation(line: 462, column: 6, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 462, column: 6)
!3626 = !DILocation(line: 462, column: 11, scope: !3625)
!3627 = !DILocation(line: 462, column: 6, scope: !3566)
!3628 = !DILocation(line: 462, column: 26, scope: !3625)
!3629 = !DILocation(line: 463, column: 6, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 463, column: 6)
!3631 = !DILocation(line: 463, column: 11, scope: !3630)
!3632 = !DILocation(line: 463, column: 6, scope: !3566)
!3633 = !DILocation(line: 463, column: 26, scope: !3630)
!3634 = !DILocation(line: 464, column: 6, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 464, column: 6)
!3636 = !DILocation(line: 464, column: 11, scope: !3635)
!3637 = !DILocation(line: 464, column: 6, scope: !3566)
!3638 = !DILocation(line: 464, column: 26, scope: !3635)
!3639 = !DILocation(line: 465, column: 6, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 465, column: 6)
!3641 = !DILocation(line: 465, column: 11, scope: !3640)
!3642 = !DILocation(line: 465, column: 6, scope: !3566)
!3643 = !DILocation(line: 465, column: 26, scope: !3640)
!3644 = !DILocation(line: 466, column: 6, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 466, column: 6)
!3646 = !DILocation(line: 466, column: 11, scope: !3645)
!3647 = !DILocation(line: 466, column: 6, scope: !3566)
!3648 = !DILocation(line: 466, column: 26, scope: !3645)
!3649 = !DILocation(line: 467, column: 6, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 467, column: 6)
!3651 = !DILocation(line: 467, column: 11, scope: !3650)
!3652 = !DILocation(line: 467, column: 6, scope: !3566)
!3653 = !DILocation(line: 467, column: 26, scope: !3650)
!3654 = !DILocation(line: 468, column: 6, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 468, column: 6)
!3656 = !DILocation(line: 468, column: 11, scope: !3655)
!3657 = !DILocation(line: 468, column: 6, scope: !3566)
!3658 = !DILocation(line: 468, column: 26, scope: !3655)
!3659 = !DILocation(line: 469, column: 6, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 469, column: 6)
!3661 = !DILocation(line: 469, column: 11, scope: !3660)
!3662 = !DILocation(line: 469, column: 6, scope: !3566)
!3663 = !DILocation(line: 469, column: 26, scope: !3660)
!3664 = !DILocation(line: 470, column: 6, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 470, column: 6)
!3666 = !DILocation(line: 470, column: 11, scope: !3665)
!3667 = !DILocation(line: 470, column: 6, scope: !3566)
!3668 = !DILocation(line: 470, column: 26, scope: !3665)
!3669 = !DILocation(line: 471, column: 6, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 471, column: 6)
!3671 = !DILocation(line: 471, column: 11, scope: !3670)
!3672 = !DILocation(line: 471, column: 6, scope: !3566)
!3673 = !DILocation(line: 471, column: 26, scope: !3670)
!3674 = !DILocation(line: 472, column: 6, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 472, column: 6)
!3676 = !DILocation(line: 472, column: 11, scope: !3675)
!3677 = !DILocation(line: 472, column: 6, scope: !3566)
!3678 = !DILocation(line: 472, column: 26, scope: !3675)
!3679 = !DILocation(line: 473, column: 6, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 473, column: 6)
!3681 = !DILocation(line: 473, column: 11, scope: !3680)
!3682 = !DILocation(line: 473, column: 6, scope: !3566)
!3683 = !DILocation(line: 473, column: 26, scope: !3680)
!3684 = !DILocation(line: 474, column: 6, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 474, column: 6)
!3686 = !DILocation(line: 474, column: 11, scope: !3685)
!3687 = !DILocation(line: 474, column: 6, scope: !3566)
!3688 = !DILocation(line: 474, column: 27, scope: !3685)
!3689 = !DILocation(line: 475, column: 6, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 475, column: 6)
!3691 = !DILocation(line: 475, column: 11, scope: !3690)
!3692 = !DILocation(line: 475, column: 6, scope: !3566)
!3693 = !DILocation(line: 475, column: 32, scope: !3690)
!3694 = !DILocation(line: 477, column: 50, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3566, file: !101, line: 477, column: 6)
!3696 = !{i8 0, i8 2}
!3697 = !DILocation(line: 477, column: 6, scope: !3566)
!3698 = !DILocation(line: 478, column: 3, scope: !3695)
!3699 = !DILocation(line: 478, column: 3, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !101, line: 478, column: 3)
!3701 = distinct !DILexicalBlock(scope: !3695, file: !101, line: 478, column: 3)
!3702 = !{i32 -2143442007}
!3703 = !DILocation(line: 478, column: 3, scope: !3701)
!3704 = !DILocation(line: 480, column: 3, scope: !3695)
!3705 = !DILocation(line: 480, column: 3, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3695, file: !101, line: 480, column: 3)
!3707 = !DILocation(line: 480, column: 3, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3706, file: !101, line: 480, column: 3)
!3709 = !DILocation(line: 480, column: 3, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !101, line: 480, column: 3)
!3711 = !{i64 2151525492, i64 2151525521, i64 2151525567, i64 2151525625, i64 2151525679, i64 2151525733, i64 2151525788, i64 2151525819}
!3712 = !DILocation(line: 483, column: 2, scope: !3566)
!3713 = !DILocation(line: 484, column: 1, scope: !3566)
!3714 = !DISubprogram(name: "kmalloc_trace", scope: !101, file: !101, line: 525, type: !3715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!287, !3717, !1156, !262}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3719, line: 11, flags: DIFlagFwdDecl)
!3719 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3720 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 401, type: !3721, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!100, !1156, !265}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "flags", arg: 1, scope: !3720, file: !101, line: 401, type: !1156)
!3725 = !DILocalVariable(name: "caller", arg: 2, scope: !3720, file: !101, line: 401, type: !265)
!3726 = !DILocation(line: 401, column: 67, scope: !3720)
!3727 = !DILocation(line: 401, column: 88, scope: !3720)
!3728 = !DILocation(line: 407, column: 6, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3720, file: !101, line: 407, column: 6)
!3730 = !DILocation(line: 407, column: 6, scope: !3720)
!3731 = !DILocation(line: 413, column: 3, scope: !3729)
!3732 = !DILocation(line: 423, column: 38, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3720, file: !101, line: 423, column: 6)
!3734 = !DILocation(line: 423, column: 44, scope: !3733)
!3735 = !DILocation(line: 423, column: 6, scope: !3720)
!3736 = !DILocation(line: 424, column: 3, scope: !3733)
!3737 = !DILocation(line: 426, column: 3, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3720, file: !101, line: 425, column: 6)
!3739 = !DILocation(line: 429, column: 1, scope: !3720)
!3740 = !DISubprogram(name: "__kmalloc", scope: !101, file: !101, line: 488, type: !2303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3741 = !DISubprogram(name: "__compiletime_assert_125", scope: !101, file: !101, line: 478, type: !1153, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3742 = !DISubprogram(name: "acpi_get_table", scope: !2576, file: !2576, line: 489, type: !3743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!1157, !3745, !1058, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1158, line: 423, baseType: !215)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!3747 = !DISubprogram(name: "snprintf", scope: !2861, file: !2861, line: 12, type: !3748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!46, !215, !262, !134, null}
!3750 = !DISubprogram(name: "strcat", scope: !2865, file: !2865, line: 79, type: !3751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!215, !215, !134}
!3753 = distinct !DISubprogram(name: "acpi_table_show", scope: !3, file: !3, line: 321, type: !297, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3764, !3765, !3766}
!3755 = !DILocalVariable(name: "filp", arg: 1, scope: !3753, file: !3, line: 321, type: !299)
!3756 = !DILocalVariable(name: "kobj", arg: 2, scope: !3753, file: !3, line: 321, type: !138)
!3757 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !3753, file: !3, line: 322, type: !281)
!3758 = !DILocalVariable(name: "buf", arg: 4, scope: !3753, file: !3, line: 322, type: !215)
!3759 = !DILocalVariable(name: "offset", arg: 5, scope: !3753, file: !3, line: 323, type: !302)
!3760 = !DILocalVariable(name: "count", arg: 6, scope: !3753, file: !3, line: 323, type: !262)
!3761 = !DILocalVariable(name: "table_attr", scope: !3753, file: !3, line: 325, type: !1161)
!3762 = !DILocalVariable(name: "__mptr", scope: !3763, file: !3, line: 326, type: !287)
!3763 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 326, column: 6)
!3764 = !DILocalVariable(name: "table_header", scope: !3753, file: !3, line: 327, type: !2318)
!3765 = !DILocalVariable(name: "status", scope: !3753, file: !3, line: 328, type: !1157)
!3766 = !DILocalVariable(name: "rc", scope: !3753, file: !3, line: 329, type: !247)
!3767 = !DILocation(line: 321, column: 45, scope: !3753)
!3768 = !DILocation(line: 321, column: 67, scope: !3753)
!3769 = !DILocation(line: 322, column: 33, scope: !3753)
!3770 = !DILocation(line: 322, column: 49, scope: !3753)
!3771 = !DILocation(line: 323, column: 18, scope: !3753)
!3772 = !DILocation(line: 323, column: 33, scope: !3753)
!3773 = !DILocation(line: 325, column: 2, scope: !3753)
!3774 = !DILocation(line: 325, column: 26, scope: !3753)
!3775 = !DILocation(line: 326, column: 6, scope: !3763)
!3776 = !DILocation(line: 326, column: 6, scope: !3753)
!3777 = !DILocation(line: 327, column: 2, scope: !3753)
!3778 = !DILocation(line: 327, column: 28, scope: !3753)
!3779 = !DILocation(line: 328, column: 2, scope: !3753)
!3780 = !DILocation(line: 328, column: 14, scope: !3753)
!3781 = !DILocation(line: 329, column: 2, scope: !3753)
!3782 = !DILocation(line: 329, column: 10, scope: !3753)
!3783 = !DILocation(line: 331, column: 26, scope: !3753)
!3784 = !DILocation(line: 331, column: 38, scope: !3753)
!3785 = !DILocation(line: 331, column: 44, scope: !3753)
!3786 = !DILocation(line: 331, column: 56, scope: !3753)
!3787 = !DILocation(line: 331, column: 11, scope: !3753)
!3788 = !DILocation(line: 331, column: 9, scope: !3753)
!3789 = !DILocation(line: 333, column: 6, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 333, column: 6)
!3791 = !DILocation(line: 333, column: 6, scope: !3753)
!3792 = !DILocation(line: 334, column: 3, scope: !3790)
!3793 = !DILocation(line: 336, column: 31, scope: !3753)
!3794 = !DILocation(line: 336, column: 36, scope: !3753)
!3795 = !DILocation(line: 336, column: 52, scope: !3753)
!3796 = !DILocation(line: 337, column: 4, scope: !3753)
!3797 = !DILocation(line: 337, column: 18, scope: !3753)
!3798 = !DILocation(line: 336, column: 7, scope: !3753)
!3799 = !DILocation(line: 336, column: 5, scope: !3753)
!3800 = !DILocation(line: 338, column: 17, scope: !3753)
!3801 = !DILocation(line: 338, column: 2, scope: !3753)
!3802 = !DILocation(line: 339, column: 9, scope: !3753)
!3803 = !DILocation(line: 339, column: 2, scope: !3753)
!3804 = !DILocation(line: 340, column: 1, scope: !3753)
!3805 = !DISubprogram(name: "sysfs_create_bin_file", scope: !241, file: !241, line: 288, type: !3806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!46, !138, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!3810 = !DISubprogram(name: "memory_read_from_buffer", scope: !2865, file: !2865, line: 245, type: !3811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!247, !287, !262, !736, !495, !262}
!3813 = !DISubprogram(name: "acpi_put_table", scope: !2576, file: !2576, line: 493, type: !3814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !2318}
!3816 = distinct !DISubprogram(name: "__list_add", scope: !2455, file: !2455, line: 146, type: !3817, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !120, !120, !120}
!3819 = !{!3820, !3821, !3822}
!3820 = !DILocalVariable(name: "new", arg: 1, scope: !3816, file: !2455, line: 146, type: !120)
!3821 = !DILocalVariable(name: "prev", arg: 2, scope: !3816, file: !2455, line: 147, type: !120)
!3822 = !DILocalVariable(name: "next", arg: 3, scope: !3816, file: !2455, line: 148, type: !120)
!3823 = !DILocation(line: 146, column: 49, scope: !3816)
!3824 = !DILocation(line: 147, column: 28, scope: !3816)
!3825 = !DILocation(line: 148, column: 28, scope: !3816)
!3826 = !DILocation(line: 150, column: 24, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3816, file: !2455, line: 150, column: 6)
!3828 = !DILocation(line: 150, column: 29, scope: !3827)
!3829 = !DILocation(line: 150, column: 35, scope: !3827)
!3830 = !DILocation(line: 150, column: 7, scope: !3827)
!3831 = !DILocation(line: 150, column: 6, scope: !3816)
!3832 = !DILocation(line: 151, column: 3, scope: !3827)
!3833 = !DILocation(line: 153, column: 15, scope: !3816)
!3834 = !DILocation(line: 153, column: 2, scope: !3816)
!3835 = !DILocation(line: 153, column: 8, scope: !3816)
!3836 = !DILocation(line: 153, column: 13, scope: !3816)
!3837 = !DILocation(line: 154, column: 14, scope: !3816)
!3838 = !DILocation(line: 154, column: 2, scope: !3816)
!3839 = !DILocation(line: 154, column: 7, scope: !3816)
!3840 = !DILocation(line: 154, column: 12, scope: !3816)
!3841 = !DILocation(line: 155, column: 14, scope: !3816)
!3842 = !DILocation(line: 155, column: 2, scope: !3816)
!3843 = !DILocation(line: 155, column: 7, scope: !3816)
!3844 = !DILocation(line: 155, column: 12, scope: !3816)
!3845 = !DILocation(line: 156, column: 2, scope: !3816)
!3846 = !DILocation(line: 156, column: 2, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3816, file: !2455, line: 156, column: 2)
!3848 = !DILocation(line: 156, column: 2, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3847, file: !2455, line: 156, column: 2)
!3850 = !DILocation(line: 156, column: 2, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !2455, line: 156, column: 2)
!3852 = !DILocation(line: 157, column: 1, scope: !3816)
!3853 = distinct !DISubprogram(name: "__list_add_valid", scope: !2455, file: !2455, line: 128, type: !3854, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!573, !120, !120, !120}
!3856 = !{!3857, !3858, !3859}
!3857 = !DILocalVariable(name: "new", arg: 1, scope: !3853, file: !2455, line: 128, type: !120)
!3858 = !DILocalVariable(name: "prev", arg: 2, scope: !3853, file: !2455, line: 129, type: !120)
!3859 = !DILocalVariable(name: "next", arg: 3, scope: !3853, file: !2455, line: 130, type: !120)
!3860 = !DILocation(line: 128, column: 55, scope: !3853)
!3861 = !DILocation(line: 129, column: 23, scope: !3853)
!3862 = !DILocation(line: 130, column: 23, scope: !3853)
!3863 = !DILocation(line: 132, column: 2, scope: !3853)
!3864 = !DISubprogram(name: "kstrtou8", scope: !3865, file: !3865, line: 96, type: !3866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3865 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!46, !134, !7, !1826}
!3868 = !DISubprogram(name: "bitmap_parselist", scope: !3869, file: !3869, line: 211, type: !3870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3869 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!46, !134, !1139, !46}
!3872 = distinct !DISubprogram(name: "set_bit", scope: !3873, file: !3873, line: 26, type: !3874, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3878)
!3873 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !251, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !265)
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "nr", arg: 1, scope: !3872, file: !3873, line: 26, type: !251)
!3880 = !DILocalVariable(name: "addr", arg: 2, scope: !3872, file: !3873, line: 26, type: !3876)
!3881 = !DILocation(line: 26, column: 42, scope: !3872)
!3882 = !DILocation(line: 26, column: 70, scope: !3872)
!3883 = !DILocation(line: 28, column: 26, scope: !3872)
!3884 = !DILocation(line: 28, column: 33, scope: !3872)
!3885 = !DILocation(line: 28, column: 31, scope: !3872)
!3886 = !DILocation(line: 28, column: 2, scope: !3872)
!3887 = !DILocation(line: 29, column: 15, scope: !3872)
!3888 = !DILocation(line: 29, column: 19, scope: !3872)
!3889 = !DILocation(line: 29, column: 2, scope: !3872)
!3890 = !DILocation(line: 30, column: 1, scope: !3872)
!3891 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3892, file: !3892, line: 80, type: !3893, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3898)
!3892 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3895, !262}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3897)
!3897 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3898 = !{!3899, !3900}
!3899 = !DILocalVariable(name: "v", arg: 1, scope: !3891, file: !3892, line: 80, type: !3895)
!3900 = !DILocalVariable(name: "size", arg: 2, scope: !3891, file: !3892, line: 80, type: !262)
!3901 = !DILocation(line: 80, column: 74, scope: !3891)
!3902 = !DILocation(line: 80, column: 84, scope: !3891)
!3903 = !DILocation(line: 82, column: 20, scope: !3891)
!3904 = !DILocation(line: 82, column: 23, scope: !3891)
!3905 = !DILocation(line: 82, column: 2, scope: !3891)
!3906 = !DILocation(line: 83, column: 2, scope: !3891)
!3907 = !DILocation(line: 84, column: 1, scope: !3891)
!3908 = distinct !DISubprogram(name: "arch_set_bit", scope: !3909, file: !3909, line: 52, type: !3874, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3910)
!3909 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3910 = !{!3911, !3912}
!3911 = !DILocalVariable(name: "nr", arg: 1, scope: !3908, file: !3909, line: 52, type: !251)
!3912 = !DILocalVariable(name: "addr", arg: 2, scope: !3908, file: !3909, line: 52, type: !3876)
!3913 = !DILocation(line: 52, column: 19, scope: !3908)
!3914 = !DILocation(line: 52, column: 47, scope: !3908)
!3915 = !DILocation(line: 54, column: 27, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3908, file: !3909, line: 54, column: 6)
!3917 = !DILocation(line: 54, column: 6, scope: !3916)
!3918 = !DILocation(line: 54, column: 6, scope: !3908)
!3919 = !DILocation(line: 56, column: 6, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !3909, line: 54, column: 32)
!3921 = !DILocation(line: 57, column: 12, scope: !3920)
!3922 = !DILocation(line: 55, column: 3, scope: !3920)
!3923 = !{i64 2148211555, i64 2148211594, i64 2148211615, i64 2148211652, i64 2148211675, i64 2148211545}
!3924 = !DILocation(line: 59, column: 2, scope: !3920)
!3925 = !DILocation(line: 61, column: 8, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3916, file: !3909, line: 59, column: 9)
!3927 = !DILocation(line: 61, column: 32, scope: !3926)
!3928 = !DILocation(line: 60, column: 3, scope: !3926)
!3929 = !{i64 2148211840, i64 2148211879, i64 2148211900, i64 2148211937, i64 2148211960, i64 2148211830}
!3930 = !DILocation(line: 63, column: 1, scope: !3908)
!3931 = distinct !DISubprogram(name: "kasan_check_write", scope: !3932, file: !3932, line: 44, type: !3933, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3935)
!3932 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!573, !3895, !7}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "p", arg: 1, scope: !3931, file: !3932, line: 44, type: !3895)
!3937 = !DILocalVariable(name: "size", arg: 2, scope: !3931, file: !3932, line: 44, type: !7)
!3938 = !DILocation(line: 44, column: 59, scope: !3931)
!3939 = !DILocation(line: 44, column: 75, scope: !3931)
!3940 = !DILocation(line: 46, column: 2, scope: !3931)
!3941 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3942, file: !3942, line: 229, type: !3943, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3942 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3895, !262, !46}
!3945 = !{!3946, !3947, !3948}
!3946 = !DILocalVariable(name: "ptr", arg: 1, scope: !3941, file: !3942, line: 229, type: !3895)
!3947 = !DILocalVariable(name: "size", arg: 2, scope: !3941, file: !3942, line: 229, type: !262)
!3948 = !DILocalVariable(name: "type", arg: 3, scope: !3941, file: !3942, line: 230, type: !46)
!3949 = !DILocation(line: 229, column: 60, scope: !3941)
!3950 = !DILocation(line: 229, column: 72, scope: !3941)
!3951 = !DILocation(line: 230, column: 15, scope: !3941)
!3952 = !DILocation(line: 230, column: 23, scope: !3941)
!3953 = distinct !DISubprogram(name: "variable__ffs", scope: !3909, file: !3909, line: 250, type: !3954, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!265, !265}
!3956 = !{!3957}
!3957 = !DILocalVariable(name: "word", arg: 1, scope: !3953, file: !3909, line: 250, type: !265)
!3958 = !DILocation(line: 250, column: 66, scope: !3953)
!3959 = !DILocation(line: 254, column: 11, scope: !3953)
!3960 = !DILocation(line: 252, column: 2, scope: !3953)
!3961 = !{i64 723089}
!3962 = !DILocation(line: 255, column: 9, scope: !3953)
!3963 = !DILocation(line: 255, column: 2, scope: !3953)
!3964 = !DISubprogram(name: "_find_next_bit", scope: !2535, file: !2535, line: 11, type: !2536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3965 = distinct !DISubprogram(name: "kmalloc_array", scope: !101, file: !101, line: 629, type: !2798, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3966)
!3966 = !{!3967, !3968, !3969, !3970}
!3967 = !DILocalVariable(name: "n", arg: 1, scope: !3965, file: !101, line: 629, type: !262)
!3968 = !DILocalVariable(name: "size", arg: 2, scope: !3965, file: !101, line: 629, type: !262)
!3969 = !DILocalVariable(name: "flags", arg: 3, scope: !3965, file: !101, line: 629, type: !1156)
!3970 = !DILocalVariable(name: "bytes", scope: !3965, file: !101, line: 631, type: !262)
!3971 = !DILocation(line: 629, column: 61, scope: !3965)
!3972 = !DILocation(line: 629, column: 71, scope: !3965)
!3973 = !DILocation(line: 629, column: 83, scope: !3965)
!3974 = !DILocation(line: 631, column: 2, scope: !3965)
!3975 = !DILocation(line: 631, column: 9, scope: !3965)
!3976 = !DILocation(line: 633, column: 6, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3965, file: !101, line: 633, column: 6)
!3978 = !DILocation(line: 633, column: 6, scope: !3965)
!3979 = !DILocation(line: 634, column: 3, scope: !3977)
!3980 = !DILocation(line: 635, column: 27, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3965, file: !101, line: 635, column: 6)
!3982 = !DILocation(line: 635, column: 6, scope: !3981)
!3983 = !DILocation(line: 635, column: 30, scope: !3981)
!3984 = !DILocation(line: 635, column: 54, scope: !3981)
!3985 = !DILocation(line: 635, column: 33, scope: !3981)
!3986 = !DILocation(line: 635, column: 6, scope: !3965)
!3987 = !DILocation(line: 636, column: 18, scope: !3981)
!3988 = !DILocation(line: 636, column: 25, scope: !3981)
!3989 = !DILocation(line: 636, column: 10, scope: !3981)
!3990 = !DILocation(line: 636, column: 3, scope: !3981)
!3991 = !DILocation(line: 637, column: 19, scope: !3965)
!3992 = !DILocation(line: 637, column: 26, scope: !3965)
!3993 = !DILocation(line: 637, column: 9, scope: !3965)
!3994 = !DILocation(line: 637, column: 2, scope: !3965)
!3995 = !DILocation(line: 638, column: 1, scope: !3965)
!3996 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3997, file: !3997, line: 51, type: !3998, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4000)
!3997 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!573, !573}
!4000 = !{!4001}
!4001 = !DILocalVariable(name: "overflow", arg: 1, scope: !3996, file: !3997, line: 51, type: !573)
!4002 = !DILocation(line: 51, column: 60, scope: !3996)
!4003 = !DILocation(line: 53, column: 9, scope: !3996)
!4004 = !DILocation(line: 53, column: 2, scope: !3996)
!4005 = distinct !DISubprogram(name: "gpe_count", scope: !3, file: !3, line: 611, type: !4006, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !1058}
!4008 = !{!4009}
!4009 = !DILocalVariable(name: "gpe_number", arg: 1, scope: !4005, file: !3, line: 611, type: !1058)
!4010 = !DILocation(line: 611, column: 27, scope: !4005)
!4011 = !DILocation(line: 613, column: 16, scope: !4005)
!4012 = !DILocation(line: 615, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 615, column: 6)
!4014 = !DILocation(line: 615, column: 6, scope: !4005)
!4015 = !DILocation(line: 616, column: 3, scope: !4013)
!4016 = !DILocation(line: 618, column: 6, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 618, column: 6)
!4018 = !DILocation(line: 618, column: 19, scope: !4017)
!4019 = !DILocation(line: 618, column: 17, scope: !4017)
!4020 = !DILocation(line: 618, column: 6, scope: !4005)
!4021 = !DILocation(line: 619, column: 3, scope: !4017)
!4022 = !DILocation(line: 619, column: 16, scope: !4017)
!4023 = !DILocation(line: 619, column: 28, scope: !4017)
!4024 = !DILocation(line: 619, column: 33, scope: !4017)
!4025 = !DILocation(line: 621, column: 3, scope: !4017)
!4026 = !DILocation(line: 621, column: 16, scope: !4017)
!4027 = !DILocation(line: 621, column: 25, scope: !4017)
!4028 = !DILocation(line: 621, column: 27, scope: !4017)
!4029 = !DILocation(line: 621, column: 49, scope: !4017)
!4030 = !DILocation(line: 622, column: 22, scope: !4017)
!4031 = !DILocation(line: 622, column: 27, scope: !4017)
!4032 = !DILocation(line: 623, column: 1, scope: !4005)
!4033 = distinct !DISubprogram(name: "fixed_event_count", scope: !3, file: !3, line: 625, type: !4006, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4034)
!4034 = !{!4035}
!4035 = !DILocalVariable(name: "event_number", arg: 1, scope: !4033, file: !3, line: 625, type: !1058)
!4036 = !DILocation(line: 625, column: 35, scope: !4033)
!4037 = !DILocation(line: 627, column: 7, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 627, column: 6)
!4039 = !DILocation(line: 627, column: 6, scope: !4033)
!4040 = !DILocation(line: 628, column: 3, scope: !4038)
!4041 = !DILocation(line: 630, column: 6, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 630, column: 6)
!4043 = !DILocation(line: 630, column: 19, scope: !4042)
!4044 = !DILocation(line: 630, column: 6, scope: !4033)
!4045 = !DILocation(line: 631, column: 3, scope: !4042)
!4046 = !DILocation(line: 631, column: 16, scope: !4042)
!4047 = !DILocation(line: 631, column: 27, scope: !4042)
!4048 = !DILocation(line: 631, column: 25, scope: !4042)
!4049 = !DILocation(line: 631, column: 41, scope: !4042)
!4050 = !DILocation(line: 631, column: 46, scope: !4042)
!4051 = !DILocation(line: 633, column: 3, scope: !4042)
!4052 = !DILocation(line: 633, column: 16, scope: !4042)
!4053 = !DILocation(line: 633, column: 25, scope: !4042)
!4054 = !DILocation(line: 633, column: 27, scope: !4042)
!4055 = !DILocation(line: 633, column: 49, scope: !4042)
!4056 = !DILocation(line: 634, column: 22, scope: !4042)
!4057 = !DILocation(line: 634, column: 27, scope: !4042)
!4058 = !DILocation(line: 635, column: 1, scope: !4033)
!4059 = distinct !DISubprogram(name: "get_status", scope: !3, file: !3, line: 651, type: !4060, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4063)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!46, !1058, !4062, !2579}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!4063 = !{!4064, !4065, !4066, !4067}
!4064 = !DILocalVariable(name: "index", arg: 1, scope: !4059, file: !3, line: 651, type: !1058)
!4065 = !DILocalVariable(name: "ret", arg: 2, scope: !4059, file: !3, line: 651, type: !4062)
!4066 = !DILocalVariable(name: "handle", arg: 3, scope: !4059, file: !3, line: 652, type: !2579)
!4067 = !DILocalVariable(name: "status", scope: !4059, file: !3, line: 654, type: !1157)
!4068 = !DILocation(line: 651, column: 27, scope: !4059)
!4069 = !DILocation(line: 651, column: 53, scope: !4059)
!4070 = !DILocation(line: 652, column: 22, scope: !4059)
!4071 = !DILocation(line: 654, column: 2, scope: !4059)
!4072 = !DILocation(line: 654, column: 14, scope: !4059)
!4073 = !DILocation(line: 656, column: 6, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 656, column: 6)
!4075 = !DILocation(line: 656, column: 15, scope: !4074)
!4076 = !DILocation(line: 656, column: 24, scope: !4074)
!4077 = !DILocation(line: 656, column: 26, scope: !4074)
!4078 = !DILocation(line: 656, column: 12, scope: !4074)
!4079 = !DILocation(line: 656, column: 6, scope: !4059)
!4080 = !DILocation(line: 657, column: 3, scope: !4074)
!4081 = !DILocation(line: 659, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 659, column: 6)
!4083 = !DILocation(line: 659, column: 14, scope: !4082)
!4084 = !DILocation(line: 659, column: 12, scope: !4082)
!4085 = !DILocation(line: 659, column: 6, scope: !4059)
!4086 = !DILocation(line: 660, column: 32, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 659, column: 24)
!4088 = !DILocation(line: 660, column: 39, scope: !4087)
!4089 = !DILocation(line: 660, column: 12, scope: !4087)
!4090 = !DILocation(line: 660, column: 10, scope: !4087)
!4091 = !DILocation(line: 661, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 661, column: 7)
!4093 = !DILocation(line: 661, column: 7, scope: !4087)
!4094 = !DILocation(line: 662, column: 4, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 662, column: 4)
!4096 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 661, column: 29)
!4097 = !DILocation(line: 662, column: 4, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4095, file: !3, line: 662, column: 4)
!4099 = !DILocation(line: 663, column: 4, scope: !4096)
!4100 = !DILocation(line: 665, column: 33, scope: !4087)
!4101 = !DILocation(line: 665, column: 32, scope: !4087)
!4102 = !DILocation(line: 665, column: 41, scope: !4087)
!4103 = !DILocation(line: 665, column: 48, scope: !4087)
!4104 = !DILocation(line: 665, column: 12, scope: !4087)
!4105 = !DILocation(line: 665, column: 10, scope: !4087)
!4106 = !DILocation(line: 666, column: 2, scope: !4087)
!4107 = !DILocation(line: 667, column: 34, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 666, column: 9)
!4109 = !DILocation(line: 667, column: 42, scope: !4108)
!4110 = !DILocation(line: 667, column: 40, scope: !4108)
!4111 = !DILocation(line: 667, column: 52, scope: !4108)
!4112 = !DILocation(line: 667, column: 12, scope: !4108)
!4113 = !DILocation(line: 667, column: 10, scope: !4108)
!4114 = !DILocation(line: 669, column: 6, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 669, column: 6)
!4116 = !DILocation(line: 669, column: 6, scope: !4059)
!4117 = !DILocation(line: 670, column: 3, scope: !4115)
!4118 = !DILocation(line: 672, column: 2, scope: !4059)
!4119 = !DILocation(line: 673, column: 1, scope: !4059)
!4120 = !DISubprogram(name: "acpi_get_gpe_status", scope: !2576, file: !2576, line: 759, type: !4121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!1157, !1196, !1058, !4062}
!4123 = !DISubprogram(name: "acpi_get_event_status", scope: !2576, file: !2576, line: 712, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!1157, !1058, !4062}
!4126 = !DISubprogram(name: "strcmp", scope: !2865, file: !2865, line: 88, type: !4127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!46, !134, !134}
!4129 = !DISubprogram(name: "acpi_disable_gpe", scope: !2576, file: !2576, line: 726, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!1157, !1196, !1058}
!4132 = !DISubprogram(name: "acpi_enable_gpe", scope: !2576, file: !2576, line: 722, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4133 = !DISubprogram(name: "acpi_clear_gpe", scope: !2576, file: !2576, line: 730, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4134 = distinct !DISubprogram(name: "kstrtoul", scope: !3865, file: !3865, line: 30, type: !4135, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!46, !134, !7, !1139}
!4137 = !{!4138, !4139, !4140}
!4138 = !DILocalVariable(name: "s", arg: 1, scope: !4134, file: !3865, line: 30, type: !134)
!4139 = !DILocalVariable(name: "base", arg: 2, scope: !4134, file: !3865, line: 30, type: !7)
!4140 = !DILocalVariable(name: "res", arg: 3, scope: !4134, file: !3865, line: 30, type: !1139)
!4141 = !DILocation(line: 30, column: 53, scope: !4134)
!4142 = !DILocation(line: 30, column: 69, scope: !4134)
!4143 = !DILocation(line: 30, column: 90, scope: !4134)
!4144 = !DILocation(line: 38, column: 20, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4134, file: !3865, line: 36, column: 6)
!4146 = !DILocation(line: 38, column: 23, scope: !4145)
!4147 = !DILocation(line: 38, column: 51, scope: !4145)
!4148 = !DILocation(line: 38, column: 10, scope: !4145)
!4149 = !DILocation(line: 38, column: 3, scope: !4145)
!4150 = !DISubprogram(name: "acpi_disable_event", scope: !2576, file: !2576, line: 708, type: !4151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!1157, !1058, !1058}
!4153 = !DISubprogram(name: "acpi_enable_event", scope: !2576, file: !2576, line: 705, type: !4151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4154 = !DISubprogram(name: "acpi_clear_event", scope: !2576, file: !2576, line: 710, type: !4155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!1157, !1058}
!4157 = !DISubprogram(name: "simple_strtoul", scope: !3865, file: !3865, line: 145, type: !4158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!265, !134, !4160, !7}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!4161 = !DISubprogram(name: "kstrtoull", scope: !3865, file: !3865, line: 12, type: !4162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!46, !134, !7, !1180}
!4164 = distinct !DISubprogram(name: "enabled_show", scope: !3, file: !3, line: 945, type: !2102, scopeLine: 946, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4165 = !{!4166, !4167, !4168, !4169}
!4166 = !DILocalVariable(name: "kobj", arg: 1, scope: !4164, file: !3, line: 945, type: !138)
!4167 = !DILocalVariable(name: "attr", arg: 2, scope: !4164, file: !3, line: 945, type: !2096)
!4168 = !DILocalVariable(name: "buf", arg: 3, scope: !4164, file: !3, line: 945, type: !215)
!4169 = !DILocalVariable(name: "hotplug", scope: !4164, file: !3, line: 947, type: !1181)
!4170 = !DILocation(line: 945, column: 45, scope: !4164)
!4171 = !DILocation(line: 945, column: 74, scope: !4164)
!4172 = !DILocation(line: 945, column: 86, scope: !4164)
!4173 = !DILocation(line: 947, column: 2, scope: !4164)
!4174 = !DILocation(line: 947, column: 31, scope: !4164)
!4175 = !DILocation(line: 947, column: 65, scope: !4164)
!4176 = !DILocation(line: 947, column: 41, scope: !4164)
!4177 = !DILocation(line: 949, column: 17, scope: !4164)
!4178 = !DILocation(line: 949, column: 30, scope: !4164)
!4179 = !DILocation(line: 949, column: 39, scope: !4164)
!4180 = !DILocation(line: 949, column: 9, scope: !4164)
!4181 = !DILocation(line: 950, column: 1, scope: !4164)
!4182 = !DILocation(line: 949, column: 2, scope: !4164)
!4183 = distinct !DISubprogram(name: "enabled_store", scope: !3, file: !3, line: 952, type: !2106, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4184)
!4184 = !{!4185, !4186, !4187, !4188, !4189, !4190}
!4185 = !DILocalVariable(name: "kobj", arg: 1, scope: !4183, file: !3, line: 952, type: !138)
!4186 = !DILocalVariable(name: "attr", arg: 2, scope: !4183, file: !3, line: 952, type: !2096)
!4187 = !DILocalVariable(name: "buf", arg: 3, scope: !4183, file: !3, line: 953, type: !134)
!4188 = !DILocalVariable(name: "size", arg: 4, scope: !4183, file: !3, line: 953, type: !262)
!4189 = !DILocalVariable(name: "hotplug", scope: !4183, file: !3, line: 955, type: !1181)
!4190 = !DILocalVariable(name: "val", scope: !4183, file: !3, line: 956, type: !7)
!4191 = !DILocation(line: 952, column: 46, scope: !4183)
!4192 = !DILocation(line: 952, column: 75, scope: !4183)
!4193 = !DILocation(line: 953, column: 21, scope: !4183)
!4194 = !DILocation(line: 953, column: 33, scope: !4183)
!4195 = !DILocation(line: 955, column: 2, scope: !4183)
!4196 = !DILocation(line: 955, column: 31, scope: !4183)
!4197 = !DILocation(line: 955, column: 65, scope: !4183)
!4198 = !DILocation(line: 955, column: 41, scope: !4183)
!4199 = !DILocation(line: 956, column: 2, scope: !4183)
!4200 = !DILocation(line: 956, column: 15, scope: !4183)
!4201 = !DILocation(line: 958, column: 17, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 958, column: 6)
!4203 = !DILocation(line: 958, column: 6, scope: !4202)
!4204 = !DILocation(line: 958, column: 32, scope: !4202)
!4205 = !DILocation(line: 958, column: 35, scope: !4202)
!4206 = !DILocation(line: 958, column: 39, scope: !4202)
!4207 = !DILocation(line: 958, column: 6, scope: !4183)
!4208 = !DILocation(line: 959, column: 3, scope: !4202)
!4209 = !DILocation(line: 961, column: 28, scope: !4183)
!4210 = !DILocation(line: 961, column: 37, scope: !4183)
!4211 = !DILocation(line: 961, column: 2, scope: !4183)
!4212 = !DILocation(line: 962, column: 9, scope: !4183)
!4213 = !DILocation(line: 962, column: 2, scope: !4183)
!4214 = !DILocation(line: 963, column: 1, scope: !4183)
!4215 = distinct !DISubprogram(name: "to_acpi_hotplug_profile", scope: !1183, file: !1183, line: 118, type: !4216, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!1181, !138}
!4218 = !{!4219, !4220}
!4219 = !DILocalVariable(name: "kobj", arg: 1, scope: !4215, file: !1183, line: 119, type: !138)
!4220 = !DILocalVariable(name: "__mptr", scope: !4221, file: !1183, line: 121, type: !287)
!4221 = distinct !DILexicalBlock(scope: !4215, file: !1183, line: 121, column: 9)
!4222 = !DILocation(line: 119, column: 23, scope: !4215)
!4223 = !DILocation(line: 121, column: 9, scope: !4221)
!4224 = !DILocation(line: 121, column: 9, scope: !4215)
!4225 = !DILocation(line: 121, column: 2, scope: !4215)
!4226 = !DISubprogram(name: "kstrtouint", scope: !3865, file: !3865, line: 71, type: !4227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!46, !134, !7, !897}
!4229 = !DISubprogram(name: "acpi_scan_hotplug_enabled", scope: !4230, file: !4230, line: 64, type: !4231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4230 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !1181, !573}
!4233 = !DISubprogram(name: "acpi_get_table_by_index", scope: !2576, file: !2576, line: 495, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!1157, !1058, !3746}
!4236 = distinct !DISubprogram(name: "acpi_table_data_init", scope: !3, file: !3, line: 487, type: !4237, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!46, !2318}
!4239 = !{!4240, !4241, !4242}
!4240 = !DILocalVariable(name: "th", arg: 1, scope: !4236, file: !3, line: 487, type: !2318)
!4241 = !DILocalVariable(name: "data_attr", scope: !4236, file: !3, line: 489, type: !1993)
!4242 = !DILocalVariable(name: "i", scope: !4236, file: !3, line: 490, type: !46)
!4243 = !DILocation(line: 487, column: 59, scope: !4236)
!4244 = !DILocation(line: 489, column: 2, scope: !4236)
!4245 = !DILocation(line: 489, column: 25, scope: !4236)
!4246 = !DILocation(line: 490, column: 2, scope: !4236)
!4247 = !DILocation(line: 490, column: 6, scope: !4236)
!4248 = !DILocation(line: 492, column: 9, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 492, column: 2)
!4250 = !DILocation(line: 492, column: 7, scope: !4249)
!4251 = !DILocation(line: 492, column: 14, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 492, column: 2)
!4253 = !DILocation(line: 492, column: 16, scope: !4252)
!4254 = !DILocation(line: 492, column: 2, scope: !4249)
!4255 = !DILocation(line: 493, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 493, column: 7)
!4257 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 492, column: 43)
!4258 = !DILocation(line: 493, column: 7, scope: !4257)
!4259 = !DILocation(line: 494, column: 16, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 493, column: 68)
!4261 = !DILocation(line: 494, column: 14, scope: !4260)
!4262 = !DILocation(line: 495, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 495, column: 8)
!4264 = !DILocation(line: 495, column: 8, scope: !4260)
!4265 = !DILocation(line: 496, column: 5, scope: !4263)
!4266 = !DILocation(line: 497, column: 4, scope: !4260)
!4267 = !DILocation(line: 497, column: 4, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 497, column: 4)
!4269 = !DILocation(line: 498, column: 4, scope: !4260)
!4270 = !DILocation(line: 498, column: 15, scope: !4260)
!4271 = !DILocation(line: 498, column: 20, scope: !4260)
!4272 = !DILocation(line: 498, column: 25, scope: !4260)
!4273 = !DILocation(line: 499, column: 4, scope: !4260)
!4274 = !DILocation(line: 499, column: 15, scope: !4260)
!4275 = !DILocation(line: 499, column: 20, scope: !4260)
!4276 = !DILocation(line: 499, column: 25, scope: !4260)
!4277 = !DILocation(line: 499, column: 30, scope: !4260)
!4278 = !DILocation(line: 500, column: 26, scope: !4260)
!4279 = !DILocation(line: 500, column: 11, scope: !4260)
!4280 = !DILocation(line: 500, column: 29, scope: !4260)
!4281 = !DILocation(line: 500, column: 32, scope: !4260)
!4282 = !DILocation(line: 500, column: 36, scope: !4260)
!4283 = !DILocation(line: 500, column: 4, scope: !4260)
!4284 = !DILocation(line: 502, column: 2, scope: !4257)
!4285 = !DILocation(line: 492, column: 39, scope: !4252)
!4286 = !DILocation(line: 492, column: 2, scope: !4252)
!4287 = distinct !{!4287, !4254, !4288, !2380, !2381}
!4288 = !DILocation(line: 502, column: 2, scope: !4249)
!4289 = !DILocation(line: 503, column: 2, scope: !4236)
!4290 = !DILocation(line: 504, column: 1, scope: !4236)
!4291 = distinct !DISubprogram(name: "acpi_data_show", scope: !3, file: !3, line: 414, type: !297, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4292)
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302}
!4293 = !DILocalVariable(name: "filp", arg: 1, scope: !4291, file: !3, line: 414, type: !299)
!4294 = !DILocalVariable(name: "kobj", arg: 2, scope: !4291, file: !3, line: 414, type: !138)
!4295 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4291, file: !3, line: 415, type: !281)
!4296 = !DILocalVariable(name: "buf", arg: 4, scope: !4291, file: !3, line: 415, type: !215)
!4297 = !DILocalVariable(name: "offset", arg: 5, scope: !4291, file: !3, line: 416, type: !302)
!4298 = !DILocalVariable(name: "count", arg: 6, scope: !4291, file: !3, line: 416, type: !262)
!4299 = !DILocalVariable(name: "data_attr", scope: !4291, file: !3, line: 418, type: !1993)
!4300 = !DILocalVariable(name: "base", scope: !4291, file: !3, line: 419, type: !287)
!4301 = !DILocalVariable(name: "size", scope: !4291, file: !3, line: 420, type: !247)
!4302 = !DILocalVariable(name: "__mptr", scope: !4303, file: !3, line: 422, type: !287)
!4303 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 422, column: 14)
!4304 = !DILocation(line: 414, column: 44, scope: !4291)
!4305 = !DILocation(line: 414, column: 66, scope: !4291)
!4306 = !DILocation(line: 415, column: 32, scope: !4291)
!4307 = !DILocation(line: 415, column: 48, scope: !4291)
!4308 = !DILocation(line: 416, column: 17, scope: !4291)
!4309 = !DILocation(line: 416, column: 32, scope: !4291)
!4310 = !DILocation(line: 418, column: 2, scope: !4291)
!4311 = !DILocation(line: 418, column: 25, scope: !4291)
!4312 = !DILocation(line: 419, column: 2, scope: !4291)
!4313 = !DILocation(line: 419, column: 16, scope: !4291)
!4314 = !DILocation(line: 420, column: 2, scope: !4291)
!4315 = !DILocation(line: 420, column: 10, scope: !4291)
!4316 = !DILocation(line: 422, column: 14, scope: !4303)
!4317 = !DILocation(line: 422, column: 14, scope: !4291)
!4318 = !DILocation(line: 422, column: 12, scope: !4291)
!4319 = !DILocation(line: 423, column: 9, scope: !4291)
!4320 = !DILocation(line: 423, column: 20, scope: !4291)
!4321 = !DILocation(line: 423, column: 25, scope: !4291)
!4322 = !DILocation(line: 423, column: 7, scope: !4291)
!4323 = !DILocation(line: 425, column: 6, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 425, column: 6)
!4325 = !DILocation(line: 425, column: 13, scope: !4324)
!4326 = !DILocation(line: 425, column: 6, scope: !4291)
!4327 = !DILocation(line: 426, column: 3, scope: !4324)
!4328 = !DILocation(line: 428, column: 6, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 428, column: 6)
!4330 = !DILocation(line: 428, column: 16, scope: !4329)
!4331 = !DILocation(line: 428, column: 13, scope: !4329)
!4332 = !DILocation(line: 428, column: 6, scope: !4291)
!4333 = !DILocation(line: 429, column: 3, scope: !4329)
!4334 = !DILocation(line: 431, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 431, column: 6)
!4336 = !DILocation(line: 431, column: 14, scope: !4335)
!4337 = !DILocation(line: 431, column: 21, scope: !4335)
!4338 = !DILocation(line: 431, column: 19, scope: !4335)
!4339 = !DILocation(line: 431, column: 12, scope: !4335)
!4340 = !DILocation(line: 431, column: 6, scope: !4291)
!4341 = !DILocation(line: 432, column: 11, scope: !4335)
!4342 = !DILocation(line: 432, column: 18, scope: !4335)
!4343 = !DILocation(line: 432, column: 16, scope: !4335)
!4344 = !DILocation(line: 432, column: 9, scope: !4335)
!4345 = !DILocation(line: 432, column: 3, scope: !4335)
!4346 = !DILocation(line: 434, column: 27, scope: !4291)
!4347 = !DILocation(line: 434, column: 38, scope: !4291)
!4348 = !DILocation(line: 434, column: 44, scope: !4291)
!4349 = !DILocation(line: 434, column: 9, scope: !4291)
!4350 = !DILocation(line: 434, column: 7, scope: !4291)
!4351 = !DILocation(line: 435, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 435, column: 6)
!4353 = !DILocation(line: 435, column: 6, scope: !4291)
!4354 = !DILocation(line: 436, column: 3, scope: !4352)
!4355 = !DILocation(line: 438, column: 16, scope: !4291)
!4356 = !DILocation(line: 438, column: 21, scope: !4291)
!4357 = !DILocation(line: 438, column: 28, scope: !4291)
!4358 = !DILocation(line: 438, column: 26, scope: !4291)
!4359 = !DILocation(line: 438, column: 36, scope: !4291)
!4360 = !DILocation(line: 438, column: 2, scope: !4291)
!4361 = !DILocation(line: 440, column: 22, scope: !4291)
!4362 = !DILocation(line: 440, column: 28, scope: !4291)
!4363 = !DILocation(line: 440, column: 2, scope: !4291)
!4364 = !DILocation(line: 442, column: 9, scope: !4291)
!4365 = !DILocation(line: 442, column: 2, scope: !4291)
!4366 = !DILocation(line: 443, column: 1, scope: !4291)
!4367 = distinct !DISubprogram(name: "acpi_bert_data_init", scope: !3, file: !3, line: 445, type: !2231, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4368)
!4368 = !{!4369, !4370, !4371}
!4369 = !DILocalVariable(name: "th", arg: 1, scope: !4367, file: !3, line: 445, type: !287)
!4370 = !DILocalVariable(name: "data_attr", arg: 2, scope: !4367, file: !3, line: 445, type: !1993)
!4371 = !DILocalVariable(name: "bert", scope: !4367, file: !3, line: 447, type: !4372)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_bert", file: !4374, line: 279, size: 384, elements: !4375)
!4374 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!4375 = !{!4376, !4377, !4378}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4373, file: !4374, line: 280, baseType: !2319, size: 288)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "region_length", scope: !4373, file: !4374, line: 281, baseType: !1058, size: 32, offset: 288)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4373, file: !4374, line: 282, baseType: !380, size: 64, offset: 320)
!4379 = !DILocation(line: 445, column: 38, scope: !4367)
!4380 = !DILocation(line: 445, column: 65, scope: !4367)
!4381 = !DILocation(line: 447, column: 2, scope: !4367)
!4382 = !DILocation(line: 447, column: 26, scope: !4367)
!4383 = !DILocation(line: 447, column: 33, scope: !4367)
!4384 = !DILocation(line: 449, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 449, column: 6)
!4386 = !DILocation(line: 449, column: 12, scope: !4385)
!4387 = !DILocation(line: 449, column: 19, scope: !4385)
!4388 = !DILocation(line: 449, column: 26, scope: !4385)
!4389 = !DILocation(line: 449, column: 59, scope: !4385)
!4390 = !DILocation(line: 450, column: 6, scope: !4385)
!4391 = !DILocation(line: 450, column: 12, scope: !4385)
!4392 = !DILocation(line: 450, column: 26, scope: !4385)
!4393 = !DILocation(line: 449, column: 6, scope: !4367)
!4394 = !DILocation(line: 451, column: 9, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 450, column: 69)
!4396 = !DILocation(line: 451, column: 3, scope: !4395)
!4397 = !DILocation(line: 452, column: 3, scope: !4395)
!4398 = !DILocation(line: 454, column: 20, scope: !4367)
!4399 = !DILocation(line: 454, column: 26, scope: !4367)
!4400 = !DILocation(line: 454, column: 2, scope: !4367)
!4401 = !DILocation(line: 454, column: 13, scope: !4367)
!4402 = !DILocation(line: 454, column: 18, scope: !4367)
!4403 = !DILocation(line: 455, column: 25, scope: !4367)
!4404 = !DILocation(line: 455, column: 31, scope: !4367)
!4405 = !DILocation(line: 455, column: 2, scope: !4367)
!4406 = !DILocation(line: 455, column: 13, scope: !4367)
!4407 = !DILocation(line: 455, column: 18, scope: !4367)
!4408 = !DILocation(line: 455, column: 23, scope: !4367)
!4409 = !DILocation(line: 456, column: 2, scope: !4367)
!4410 = !DILocation(line: 456, column: 13, scope: !4367)
!4411 = !DILocation(line: 456, column: 18, scope: !4367)
!4412 = !DILocation(line: 456, column: 23, scope: !4367)
!4413 = !DILocation(line: 456, column: 28, scope: !4367)
!4414 = !DILocation(line: 458, column: 31, scope: !4367)
!4415 = !DILocation(line: 458, column: 50, scope: !4367)
!4416 = !DILocation(line: 458, column: 61, scope: !4367)
!4417 = !DILocation(line: 458, column: 9, scope: !4367)
!4418 = !DILocation(line: 458, column: 2, scope: !4367)
!4419 = !DILocation(line: 459, column: 1, scope: !4367)
!4420 = distinct !DISubprogram(name: "acpi_ccel_data_init", scope: !3, file: !3, line: 461, type: !2231, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4421)
!4421 = !{!4422, !4423, !4424}
!4422 = !DILocalVariable(name: "th", arg: 1, scope: !4420, file: !3, line: 461, type: !287)
!4423 = !DILocalVariable(name: "data_attr", arg: 2, scope: !4420, file: !3, line: 461, type: !1993)
!4424 = !DILocalVariable(name: "ccel", scope: !4420, file: !3, line: 463, type: !4425)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_ccel", file: !4427, line: 365, size: 448, elements: !4428)
!4427 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4426, file: !4427, line: 366, baseType: !2319, size: 288)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "CCtype", scope: !4426, file: !4427, line: 367, baseType: !173, size: 8, offset: 288)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "Ccsub_type", scope: !4426, file: !4427, line: 368, baseType: !173, size: 8, offset: 296)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4426, file: !4427, line: 369, baseType: !183, size: 16, offset: 304)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "log_area_minimum_length", scope: !4426, file: !4427, line: 370, baseType: !380, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "log_area_start_address", scope: !4426, file: !4427, line: 371, baseType: !380, size: 64, offset: 384)
!4435 = !DILocation(line: 461, column: 38, scope: !4420)
!4436 = !DILocation(line: 461, column: 65, scope: !4420)
!4437 = !DILocation(line: 463, column: 2, scope: !4420)
!4438 = !DILocation(line: 463, column: 26, scope: !4420)
!4439 = !DILocation(line: 463, column: 33, scope: !4420)
!4440 = !DILocation(line: 465, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 465, column: 6)
!4442 = !DILocation(line: 465, column: 12, scope: !4441)
!4443 = !DILocation(line: 465, column: 19, scope: !4441)
!4444 = !DILocation(line: 465, column: 26, scope: !4441)
!4445 = !DILocation(line: 465, column: 59, scope: !4441)
!4446 = !DILocation(line: 466, column: 7, scope: !4441)
!4447 = !DILocation(line: 466, column: 13, scope: !4441)
!4448 = !DILocation(line: 466, column: 36, scope: !4441)
!4449 = !DILocation(line: 466, column: 40, scope: !4441)
!4450 = !DILocation(line: 466, column: 46, scope: !4441)
!4451 = !DILocation(line: 465, column: 6, scope: !4420)
!4452 = !DILocation(line: 467, column: 9, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 466, column: 71)
!4454 = !DILocation(line: 467, column: 3, scope: !4453)
!4455 = !DILocation(line: 468, column: 3, scope: !4453)
!4456 = !DILocation(line: 470, column: 20, scope: !4420)
!4457 = !DILocation(line: 470, column: 26, scope: !4420)
!4458 = !DILocation(line: 470, column: 2, scope: !4420)
!4459 = !DILocation(line: 470, column: 13, scope: !4420)
!4460 = !DILocation(line: 470, column: 18, scope: !4420)
!4461 = !DILocation(line: 471, column: 25, scope: !4420)
!4462 = !DILocation(line: 471, column: 31, scope: !4420)
!4463 = !DILocation(line: 471, column: 2, scope: !4420)
!4464 = !DILocation(line: 471, column: 13, scope: !4420)
!4465 = !DILocation(line: 471, column: 18, scope: !4420)
!4466 = !DILocation(line: 471, column: 23, scope: !4420)
!4467 = !DILocation(line: 472, column: 2, scope: !4420)
!4468 = !DILocation(line: 472, column: 13, scope: !4420)
!4469 = !DILocation(line: 472, column: 18, scope: !4420)
!4470 = !DILocation(line: 472, column: 23, scope: !4420)
!4471 = !DILocation(line: 472, column: 28, scope: !4420)
!4472 = !DILocation(line: 474, column: 31, scope: !4420)
!4473 = !DILocation(line: 474, column: 50, scope: !4420)
!4474 = !DILocation(line: 474, column: 61, scope: !4420)
!4475 = !DILocation(line: 474, column: 9, scope: !4420)
!4476 = !DILocation(line: 474, column: 2, scope: !4420)
!4477 = !DILocation(line: 475, column: 1, scope: !4420)
!4478 = !DISubprogram(name: "acpi_os_map_iomem", scope: !4479, file: !4479, line: 20, type: !4480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4479 = !DIFile(filename: "./include/acpi/acpi_io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15c88ad459b9755ee19dd3f691b85d66")
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!287, !4482, !4483}
!4482 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !1158, line: 129, baseType: !380)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !1158, line: 127, baseType: !380)
!4484 = !DISubprogram(name: "memcpy_fromio", scope: !4485, file: !4485, line: 204, type: !4486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4485 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !287, !3895, !262}
!4488 = !DISubprogram(name: "acpi_os_unmap_iomem", scope: !4479, file: !4479, line: 21, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !287, !4483}
!4491 = !DISubprogram(name: "sysfs_create_file_ns", scope: !241, file: !241, line: 273, type: !4492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!46, !138, !3498, !495}
!4494 = distinct !DISubprogram(name: "force_remove_show", scope: !3, file: !3, line: 1000, type: !2102, scopeLine: 1002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4495)
!4495 = !{!4496, !4497, !4498}
!4496 = !DILocalVariable(name: "kobj", arg: 1, scope: !4494, file: !3, line: 1000, type: !138)
!4497 = !DILocalVariable(name: "attr", arg: 2, scope: !4494, file: !3, line: 1001, type: !2096)
!4498 = !DILocalVariable(name: "buf", arg: 3, scope: !4494, file: !3, line: 1001, type: !215)
!4499 = !DILocation(line: 1000, column: 50, scope: !4494)
!4500 = !DILocation(line: 1001, column: 29, scope: !4494)
!4501 = !DILocation(line: 1001, column: 41, scope: !4494)
!4502 = !DILocation(line: 1003, column: 17, scope: !4494)
!4503 = !DILocation(line: 1003, column: 9, scope: !4494)
!4504 = !DILocation(line: 1003, column: 2, scope: !4494)
!4505 = distinct !DISubprogram(name: "force_remove_store", scope: !3, file: !3, line: 1006, type: !2106, scopeLine: 1009, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4506)
!4506 = !{!4507, !4508, !4509, !4510, !4511, !4512}
!4507 = !DILocalVariable(name: "kobj", arg: 1, scope: !4505, file: !3, line: 1006, type: !138)
!4508 = !DILocalVariable(name: "attr", arg: 2, scope: !4505, file: !3, line: 1007, type: !2096)
!4509 = !DILocalVariable(name: "buf", arg: 3, scope: !4505, file: !3, line: 1008, type: !134)
!4510 = !DILocalVariable(name: "size", arg: 4, scope: !4505, file: !3, line: 1008, type: !262)
!4511 = !DILocalVariable(name: "val", scope: !4505, file: !3, line: 1010, type: !573)
!4512 = !DILocalVariable(name: "ret", scope: !4505, file: !3, line: 1011, type: !46)
!4513 = !DILocation(line: 1006, column: 51, scope: !4505)
!4514 = !DILocation(line: 1007, column: 30, scope: !4505)
!4515 = !DILocation(line: 1008, column: 19, scope: !4505)
!4516 = !DILocation(line: 1008, column: 31, scope: !4505)
!4517 = !DILocation(line: 1010, column: 2, scope: !4505)
!4518 = !DILocation(line: 1010, column: 7, scope: !4505)
!4519 = !DILocation(line: 1011, column: 2, scope: !4505)
!4520 = !DILocation(line: 1011, column: 6, scope: !4505)
!4521 = !DILocation(line: 1013, column: 19, scope: !4505)
!4522 = !DILocation(line: 1013, column: 8, scope: !4505)
!4523 = !DILocation(line: 1013, column: 6, scope: !4505)
!4524 = !DILocation(line: 1014, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 1014, column: 6)
!4526 = !DILocation(line: 1014, column: 10, scope: !4525)
!4527 = !DILocation(line: 1014, column: 6, scope: !4505)
!4528 = !DILocation(line: 1015, column: 10, scope: !4525)
!4529 = !DILocation(line: 1015, column: 3, scope: !4525)
!4530 = !DILocation(line: 1017, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 1017, column: 6)
!4532 = !DILocation(line: 1017, column: 6, scope: !4505)
!4533 = !DILocation(line: 1018, column: 3, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 1018, column: 3)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 1017, column: 11)
!4536 = !DILocation(line: 1018, column: 3, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1018, column: 3)
!4538 = !DILocation(line: 1019, column: 3, scope: !4535)
!4539 = !DILocation(line: 1021, column: 9, scope: !4505)
!4540 = !DILocation(line: 1021, column: 2, scope: !4505)
!4541 = !DILocation(line: 1022, column: 1, scope: !4505)
!4542 = !DISubprogram(name: "kstrtobool", scope: !3865, file: !3865, line: 98, type: !4543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!46, !134, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!4546 = distinct !DISubprogram(name: "pm_profile_show", scope: !3, file: !3, line: 938, type: !2102, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4547)
!4547 = !{!4548, !4549, !4550}
!4548 = !DILocalVariable(name: "kobj", arg: 1, scope: !4546, file: !3, line: 938, type: !138)
!4549 = !DILocalVariable(name: "attr", arg: 2, scope: !4546, file: !3, line: 938, type: !2096)
!4550 = !DILocalVariable(name: "buf", arg: 3, scope: !4546, file: !3, line: 938, type: !215)
!4551 = !DILocation(line: 938, column: 48, scope: !4546)
!4552 = !DILocation(line: 938, column: 77, scope: !4546)
!4553 = !DILocation(line: 938, column: 89, scope: !4546)
!4554 = !DILocation(line: 940, column: 17, scope: !4546)
!4555 = !DILocation(line: 940, column: 44, scope: !4546)
!4556 = !DILocation(line: 940, column: 30, scope: !4546)
!4557 = !DILocation(line: 940, column: 9, scope: !4546)
!4558 = !DILocation(line: 940, column: 2, scope: !4546)
