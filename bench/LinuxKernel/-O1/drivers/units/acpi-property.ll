; ModuleID = 'drivers/acpi/property.c'
source_filename = "drivers/acpi/property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_property: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_property ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___acpi_node_get_property_reference: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __acpi_node_get_property_reference ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_device_fwnode_ops: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_device_fwnode_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_data_fwnode_ops: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_data_fwnode_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_is_acpi_device_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad is_acpi_device_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_is_acpi_data_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad is_acpi_data_node ; .previous"

%struct.acpi_buffer = type { i64, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.guid_t = type { [16 x i8] }
%struct.acpi_device_properties = type { ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.2, i32, i32, %struct.list_head }
%struct.anon.2 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.acpi_hardware_id = type { %struct.list_head, ptr }
%struct.anon.7 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i64, i32 }
%struct.anon.6 = type { i32, i32, ptr }
%struct.acpi_data_node = type { ptr, ptr, %struct.fwnode_handle, ptr, %struct.acpi_device_data, %struct.list_head, %struct.kobject, %struct.completion }
%struct.anon.5 = type { i32, i32, ptr }
%struct.anon.8 = type { i32, i32, ptr }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.anon.4 = type { i32, i64 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }

@__const.acpi_init_properties.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"PRP0001\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"_DSD\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [40 x i8] c"PRP0001 requires 'compatible' property\0A\00", align 1, !dbg !17
@__UNIQUE_ID___addressable_acpi_dev_get_property206 = internal global ptr @acpi_dev_get_property, section ".discard.addressable", align 8, !dbg !22
@__UNIQUE_ID___addressable___acpi_node_get_property_reference207 = internal global ptr @__acpi_node_get_property_reference, section ".discard.addressable", align 8, !dbg !2025
@acpi_device_fwnode_ops = hidden constant %struct.fwnode_operations { ptr null, ptr null, ptr @acpi_fwnode_device_is_available, ptr @acpi_fwnode_device_get_match_data, ptr @acpi_fwnode_device_dma_supported, ptr @acpi_fwnode_device_get_dma_attr, ptr @acpi_fwnode_property_present, ptr @acpi_fwnode_property_read_int_array, ptr @acpi_fwnode_property_read_string_array, ptr @acpi_fwnode_get_name, ptr @acpi_fwnode_get_name_prefix, ptr @acpi_node_get_parent, ptr @acpi_get_next_subnode, ptr @acpi_fwnode_get_named_child_node, ptr @acpi_fwnode_get_reference_args, ptr @acpi_graph_get_next_endpoint, ptr @acpi_graph_get_remote_endpoint, ptr @acpi_fwnode_get_parent, ptr @acpi_fwnode_graph_parse_endpoint, ptr null, ptr @acpi_fwnode_irq_get, ptr null }, align 8, !dbg !2027
@__UNIQUE_ID___addressable_acpi_device_fwnode_ops210 = internal global ptr @acpi_device_fwnode_ops, section ".discard.addressable", align 8, !dbg !2029
@acpi_data_fwnode_ops = hidden constant %struct.fwnode_operations { ptr null, ptr null, ptr @acpi_fwnode_device_is_available, ptr @acpi_fwnode_device_get_match_data, ptr @acpi_fwnode_device_dma_supported, ptr @acpi_fwnode_device_get_dma_attr, ptr @acpi_fwnode_property_present, ptr @acpi_fwnode_property_read_int_array, ptr @acpi_fwnode_property_read_string_array, ptr @acpi_fwnode_get_name, ptr @acpi_fwnode_get_name_prefix, ptr @acpi_node_get_parent, ptr @acpi_get_next_subnode, ptr @acpi_fwnode_get_named_child_node, ptr @acpi_fwnode_get_reference_args, ptr @acpi_graph_get_next_endpoint, ptr @acpi_graph_get_remote_endpoint, ptr @acpi_fwnode_get_parent, ptr @acpi_fwnode_graph_parse_endpoint, ptr null, ptr @acpi_fwnode_irq_get, ptr null }, align 8, !dbg !2031
@__UNIQUE_ID___addressable_acpi_data_fwnode_ops211 = internal global ptr @acpi_data_fwnode_ops, section ".discard.addressable", align 8, !dbg !2033
@__UNIQUE_ID___addressable_is_acpi_device_node212 = internal global ptr @is_acpi_device_node, section ".discard.addressable", align 8, !dbg !2035
@__UNIQUE_ID___addressable_is_acpi_data_node213 = internal global ptr @is_acpi_data_node, section ".discard.addressable", align 8, !dbg !2037
@acpi_static_fwnode_ops = hidden constant %struct.fwnode_operations zeroinitializer, align 8, !dbg !2039
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2041
@buffer_prop_guid = internal constant %struct.guid_t { [16 x i8] c"\D0-\B1\ED=6\85@\A3\D2IR,\A1`\C4" }, align 1, !dbg !2046
@.str.5 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !2048
@.str.6 = private unnamed_addr constant [42 x i8] c"can't allocate memory for %u buffer props\00", align 1, !dbg !2050
@__const.acpi_data_add_buffer_props.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"buffer property %u has %u entries\0A\00", align 1, !dbg !2055
@.str.8 = private unnamed_addr constant [30 x i8] c"wrong object types %u and %u\0A\00", align 1, !dbg !2060
@.str.9 = private unnamed_addr constant [33 x i8] c"can't evaluate \22%*pE\22 as buffer\0A\00", align 1, !dbg !2065
@prp_guids = internal constant [6 x %struct.guid_t] [%struct.guid_t { [16 x i8] c"\14\D8\FF\DA\BAn\8CM\8A\91\BC\9B\BFJ\A3\01" }, %struct.guid_t { [16 x i8] c"\C0\E2\11b\A3X\F3J\90\E1\92zN\0CU\A4" }, %struct.guid_t { [16 x i8] c"\CC\06\CC\EF\ACs\C3K\BF\F0v\148\07\C3\89" }, %struct.guid_t { [16 x i8] c"/\00M\C4\F9i}N\A9\04\A7\BA\AB\DFC\F7" }, %struct.guid_t { [16 x i8] c"\03\11Pl\89\C1\96B\BAr\9B\F5\A2n\BE]" }, %struct.guid_t { [16 x i8] c"\0F\03%P/\84\B4J\A5a\99\A5\18\97b\D0" }], align 16, !dbg !2070
@.str.10 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1, !dbg !2075
@ads_guid = internal constant %struct.guid_t { [16 x i8] c"\E6\E3\B8\DB\86X\A6K\87\95\13\19\F5*\96k" }, align 1, !dbg !2080
@__const.acpi_nondev_subnode_data_ok.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !2082
@.str.12 = private unnamed_addr constant [21 x i8] c"Can't tag data node\0A\00", align 1, !dbg !2084
@.str.13 = private unnamed_addr constant [2 x i8] c"\\\00", align 1, !dbg !2086
@.str.14 = private unnamed_addr constant [24 x i8] c"drivers/acpi/property.c\00", align 1, !dbg !2089
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !2094
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !2099
@.str.17 = private unnamed_addr constant [5 x i8] c"port\00", align 1, !dbg !2101
@.str.18 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1, !dbg !2103
@.str.19 = private unnamed_addr constant [4 x i8] c"reg\00", align 1, !dbg !2108
@.str.20 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1, !dbg !2111
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_dev_get_property206, ptr @__UNIQUE_ID___addressable___acpi_node_get_property_reference207, ptr @__UNIQUE_ID___addressable_acpi_device_fwnode_ops210, ptr @__UNIQUE_ID___addressable_acpi_data_fwnode_ops211, ptr @__UNIQUE_ID___addressable_is_acpi_device_node212, ptr @__UNIQUE_ID___addressable_is_acpi_data_node213], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_data_add_props(ptr noundef %data, ptr noundef %guid, ptr noundef %properties) #0 align 16 !dbg !2123 {
entry:
  %data.addr = alloca ptr, align 8
  %guid.addr = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %props = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2128, metadata !DIExpression()), !dbg !2132
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !2129, metadata !DIExpression()), !dbg !2133
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !2130, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %props) #15, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %props, metadata !2131, metadata !DIExpression()), !dbg !2136
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #16, !dbg !2137
  store ptr %call, ptr %props, align 8, !dbg !2138
  %0 = load ptr, ptr %props, align 8, !dbg !2139
  %tobool = icmp ne ptr %0, null, !dbg !2139
  br i1 %tobool, label %if.then, label %if.end, !dbg !2141

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %props, align 8, !dbg !2142
  %list = getelementptr inbounds %struct.acpi_device_properties, ptr %1, i32 0, i32 2, !dbg !2144
  call void @INIT_LIST_HEAD(ptr noundef %list) #17, !dbg !2145
  %2 = load ptr, ptr %guid.addr, align 8, !dbg !2146
  %3 = load ptr, ptr %props, align 8, !dbg !2147
  %guid1 = getelementptr inbounds %struct.acpi_device_properties, ptr %3, i32 0, i32 0, !dbg !2148
  store ptr %2, ptr %guid1, align 8, !dbg !2149
  %4 = load ptr, ptr %properties.addr, align 8, !dbg !2150
  %5 = load ptr, ptr %props, align 8, !dbg !2151
  %properties2 = getelementptr inbounds %struct.acpi_device_properties, ptr %5, i32 0, i32 1, !dbg !2152
  store ptr %4, ptr %properties2, align 8, !dbg !2153
  %6 = load ptr, ptr %props, align 8, !dbg !2154
  %list3 = getelementptr inbounds %struct.acpi_device_properties, ptr %6, i32 0, i32 2, !dbg !2155
  %7 = load ptr, ptr %data.addr, align 8, !dbg !2156
  %properties4 = getelementptr inbounds %struct.acpi_device_data, ptr %7, i32 0, i32 1, !dbg !2157
  call void @list_add_tail(ptr noundef %list3, ptr noundef %properties4) #17, !dbg !2158
  br label %if.end, !dbg !2159

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %props, align 8, !dbg !2160
  call void @llvm.lifetime.end.p0(i64 8, ptr %props) #15, !dbg !2161
  ret ptr %8, !dbg !2162
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2163 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2167, metadata !DIExpression()), !dbg !2169
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2168, metadata !DIExpression()), !dbg !2170
  %0 = load i64, ptr %size.addr, align 8, !dbg !2171
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2172
  %or = or i32 %1, 256, !dbg !2173
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !2174
  ret ptr %call, !dbg !2175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !2176 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2181, metadata !DIExpression()), !dbg !2182
  br label %do.body, !dbg !2183

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2184

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2186

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2184

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2188
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2188
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2188
  store volatile ptr %0, ptr %next, align 8, !dbg !2188
  br label %do.end3, !dbg !2188

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2184

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2190

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2191

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2193

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2191

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2195
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2195
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2195
  store volatile ptr %2, ptr %prev, align 8, !dbg !2195
  br label %do.end9, !dbg !2195

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2191

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2197
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !2198 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2202, metadata !DIExpression()), !dbg !2204
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2203, metadata !DIExpression()), !dbg !2205
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2206
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2207
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2208
  %2 = load ptr, ptr %prev, align 8, !dbg !2208
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2209
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !2210
  ret void, !dbg !2211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_init_properties(ptr noundef %adev) #0 align 16 !dbg !2212 {
entry:
  %adev.addr = alloca ptr, align 8
  %buf = alloca %struct.acpi_buffer, align 8
  %hwid = alloca ptr, align 8
  %status = alloca i32, align 4
  %acpi_of = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp42 = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2214, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #15, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2215, metadata !DIExpression()), !dbg !2232
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 @__const.acpi_init_properties.buf, i64 16, i1 false), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwid) #15, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %hwid, metadata !2220, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2221, metadata !DIExpression()), !dbg !2236
  call void @llvm.lifetime.start.p0(i64 1, ptr %acpi_of) #15, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %acpi_of, metadata !2222, metadata !DIExpression()), !dbg !2238
  store i8 0, ptr %acpi_of, align 1, !dbg !2238
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2239
  %data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 13, !dbg !2240
  %properties = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 1, !dbg !2241
  call void @INIT_LIST_HEAD(ptr noundef %properties) #17, !dbg !2242
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2243
  %data1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 13, !dbg !2244
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %data1, i32 0, i32 3, !dbg !2245
  call void @INIT_LIST_HEAD(ptr noundef %subnodes) #17, !dbg !2246
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !2247
  %handle = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 2, !dbg !2249
  %3 = load ptr, ptr %handle, align 8, !dbg !2249
  %tobool = icmp ne ptr %3, null, !dbg !2247
  br i1 %tobool, label %if.end, label %if.then, !dbg !2250

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2251

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2252
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2223, metadata !DIExpression()), !dbg !2252
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !2252
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 8, !dbg !2252
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 5, !dbg !2252
  %next = getelementptr inbounds %struct.list_head, ptr %ids, i32 0, i32 0, !dbg !2252
  %5 = load ptr, ptr %next, align 8, !dbg !2252
  store ptr %5, ptr %__mptr, align 8, !dbg !2252
  %6 = load ptr, ptr %__mptr, align 8, !dbg !2252
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !2252
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2253
  %7 = load ptr, ptr %tmp, align 8, !dbg !2252
  store ptr %7, ptr %hwid, align 8, !dbg !2253
  br label %for.cond, !dbg !2253

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %hwid, align 8, !dbg !2254
  %list = getelementptr inbounds %struct.acpi_hardware_id, ptr %8, i32 0, i32 0, !dbg !2254
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !2254
  %pnp2 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 8, !dbg !2254
  %ids3 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp2, i32 0, i32 5, !dbg !2254
  %cmp = icmp eq ptr %list, %ids3, !dbg !2254
  %lnot = xor i1 %cmp, true, !dbg !2254
  br i1 %lnot, label %for.body, label %for.end, !dbg !2253

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %hwid, align 8, !dbg !2255
  %id = getelementptr inbounds %struct.acpi_hardware_id, ptr %10, i32 0, i32 1, !dbg !2258
  %11 = load ptr, ptr %id, align 8, !dbg !2258
  %call = call i32 @strcmp(ptr noundef %11, ptr noundef @.str) #17, !dbg !2259
  %tobool4 = icmp ne i32 %call, 0, !dbg !2259
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2260

if.then5:                                         ; preds = %for.body
  store i8 1, ptr %acpi_of, align 1, !dbg !2261
  br label %for.end, !dbg !2263

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2264

for.inc:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #15, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2226, metadata !DIExpression()), !dbg !2265
  %12 = load ptr, ptr %hwid, align 8, !dbg !2265
  %list8 = getelementptr inbounds %struct.acpi_hardware_id, ptr %12, i32 0, i32 0, !dbg !2265
  %next9 = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !2265
  %13 = load ptr, ptr %next9, align 8, !dbg !2265
  store ptr %13, ptr %__mptr7, align 8, !dbg !2265
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !2265
  %add.ptr11 = getelementptr i8, ptr %14, i64 0, !dbg !2265
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2265
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #15, !dbg !2254
  %15 = load ptr, ptr %tmp10, align 8, !dbg !2265
  store ptr %15, ptr %hwid, align 8, !dbg !2254
  br label %for.cond, !dbg !2254, !llvm.loop !2266

for.end:                                          ; preds = %if.then5, %for.cond
  %16 = load ptr, ptr %adev.addr, align 8, !dbg !2270
  %handle12 = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 2, !dbg !2271
  %17 = load ptr, ptr %handle12, align 8, !dbg !2271
  %call13 = call i32 @acpi_evaluate_object_typed(ptr noundef %17, ptr noundef @.str.1, ptr noundef null, ptr noundef %buf, i32 noundef 4) #17, !dbg !2272
  store i32 %call13, ptr %status, align 4, !dbg !2273
  %18 = load i32, ptr %status, align 4, !dbg !2274
  %tobool14 = icmp ne i32 %18, 0, !dbg !2274
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2276

if.then15:                                        ; preds = %for.end
  br label %out, !dbg !2277

if.end16:                                         ; preds = %for.end
  %19 = load ptr, ptr %adev.addr, align 8, !dbg !2278
  %handle17 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 2, !dbg !2280
  %20 = load ptr, ptr %handle17, align 8, !dbg !2280
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2281
  %21 = load ptr, ptr %pointer, align 8, !dbg !2281
  %22 = load ptr, ptr %adev.addr, align 8, !dbg !2282
  %data18 = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 13, !dbg !2283
  %call19 = call zeroext i1 @acpi_extract_properties(ptr noundef %20, ptr noundef %21, ptr noundef %data18) #17, !dbg !2284
  br i1 %call19, label %if.then20, label %if.end27, !dbg !2285

if.then20:                                        ; preds = %if.end16
  %pointer21 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2286
  %23 = load ptr, ptr %pointer21, align 8, !dbg !2286
  %24 = load ptr, ptr %adev.addr, align 8, !dbg !2288
  %data22 = getelementptr inbounds %struct.acpi_device, ptr %24, i32 0, i32 13, !dbg !2289
  %pointer23 = getelementptr inbounds %struct.acpi_device_data, ptr %data22, i32 0, i32 0, !dbg !2290
  store ptr %23, ptr %pointer23, align 8, !dbg !2291
  %25 = load i8, ptr %acpi_of, align 1, !dbg !2292, !range !2294, !noundef !467
  %tobool24 = trunc i8 %25 to i1, !dbg !2292
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2295

if.then25:                                        ; preds = %if.then20
  %26 = load ptr, ptr %adev.addr, align 8, !dbg !2296
  call void @acpi_init_of_compatible(ptr noundef %26) #17, !dbg !2297
  br label %if.end26, !dbg !2297

if.end26:                                         ; preds = %if.then25, %if.then20
  br label %if.end27, !dbg !2298

if.end27:                                         ; preds = %if.end26, %if.end16
  %27 = load ptr, ptr %adev.addr, align 8, !dbg !2299
  %handle28 = getelementptr inbounds %struct.acpi_device, ptr %27, i32 0, i32 2, !dbg !2301
  %28 = load ptr, ptr %handle28, align 8, !dbg !2301
  %pointer29 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2302
  %29 = load ptr, ptr %pointer29, align 8, !dbg !2302
  %30 = load ptr, ptr %adev.addr, align 8, !dbg !2303
  %data30 = getelementptr inbounds %struct.acpi_device, ptr %30, i32 0, i32 13, !dbg !2304
  %31 = load ptr, ptr %adev.addr, align 8, !dbg !2305
  %call31 = call ptr @acpi_fwnode_handle(ptr noundef %31) #17, !dbg !2306
  %call32 = call zeroext i1 @acpi_enumerate_nondev_subnodes(ptr noundef %28, ptr noundef %29, ptr noundef %data30, ptr noundef %call31) #17, !dbg !2307
  br i1 %call32, label %if.then33, label %if.end37, !dbg !2308

if.then33:                                        ; preds = %if.end27
  %pointer34 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2309
  %32 = load ptr, ptr %pointer34, align 8, !dbg !2309
  %33 = load ptr, ptr %adev.addr, align 8, !dbg !2310
  %data35 = getelementptr inbounds %struct.acpi_device, ptr %33, i32 0, i32 13, !dbg !2311
  %pointer36 = getelementptr inbounds %struct.acpi_device_data, ptr %data35, i32 0, i32 0, !dbg !2312
  store ptr %32, ptr %pointer36, align 8, !dbg !2313
  br label %if.end37, !dbg !2310

if.end37:                                         ; preds = %if.then33, %if.end27
  %34 = load ptr, ptr %adev.addr, align 8, !dbg !2314
  %data38 = getelementptr inbounds %struct.acpi_device, ptr %34, i32 0, i32 13, !dbg !2316
  %pointer39 = getelementptr inbounds %struct.acpi_device_data, ptr %data38, i32 0, i32 0, !dbg !2317
  %35 = load ptr, ptr %pointer39, align 8, !dbg !2317
  %tobool40 = icmp ne ptr %35, null, !dbg !2314
  br i1 %tobool40, label %if.else, label %if.then41, !dbg !2318

if.then41:                                        ; preds = %if.end37
  store i32 0, ptr %tmp42, align 4, !dbg !2319
  %36 = load i32, ptr %tmp42, align 4, !dbg !2323
  %pointer43 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2324
  %37 = load ptr, ptr %pointer43, align 8, !dbg !2324
  call void @acpi_os_free(ptr noundef %37) #17, !dbg !2324
  br label %if.end49, !dbg !2325

if.else:                                          ; preds = %if.end37
  %38 = load ptr, ptr %adev.addr, align 8, !dbg !2326
  %data44 = getelementptr inbounds %struct.acpi_device, ptr %38, i32 0, i32 13, !dbg !2329
  %call45 = call zeroext i1 @acpi_tie_nondev_subnodes(ptr noundef %data44) #17, !dbg !2330
  br i1 %call45, label %if.end48, label %if.then46, !dbg !2331

if.then46:                                        ; preds = %if.else
  %39 = load ptr, ptr %adev.addr, align 8, !dbg !2332
  %data47 = getelementptr inbounds %struct.acpi_device, ptr %39, i32 0, i32 13, !dbg !2333
  call void @acpi_untie_nondev_subnodes(ptr noundef %data47) #17, !dbg !2334
  br label %if.end48, !dbg !2334

if.end48:                                         ; preds = %if.then46, %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then41
  br label %out, !dbg !2317

out:                                              ; preds = %if.end49, %if.then15
  call void @llvm.dbg.label(metadata !2229), !dbg !2335
  %40 = load i8, ptr %acpi_of, align 1, !dbg !2336, !range !2294, !noundef !467
  %tobool50 = trunc i8 %40 to i1, !dbg !2336
  br i1 %tobool50, label %land.lhs.true, label %if.end54, !dbg !2338

land.lhs.true:                                    ; preds = %out
  %41 = load ptr, ptr %adev.addr, align 8, !dbg !2339
  %flags = getelementptr inbounds %struct.acpi_device, ptr %41, i32 0, i32 7, !dbg !2340
  %bf.load = load i32, ptr %flags, align 4, !dbg !2341
  %bf.lshr = lshr i32 %bf.load, 9, !dbg !2341
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2341
  %tobool51 = icmp ne i32 %bf.clear, 0, !dbg !2339
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !2342

if.then52:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %adev.addr, align 8, !dbg !2343
  %handle53 = getelementptr inbounds %struct.acpi_device, ptr %42, i32 0, i32 2, !dbg !2343
  %43 = load ptr, ptr %handle53, align 8, !dbg !2343
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.2, ptr noundef %43, ptr noundef @.str.3) #17, !dbg !2343
  br label %if.end54, !dbg !2343

if.end54:                                         ; preds = %if.then52, %land.lhs.true, %out
  %44 = load ptr, ptr %adev.addr, align 8, !dbg !2344
  %data55 = getelementptr inbounds %struct.acpi_device, ptr %44, i32 0, i32 13, !dbg !2346
  %pointer56 = getelementptr inbounds %struct.acpi_device_data, ptr %data55, i32 0, i32 0, !dbg !2347
  %45 = load ptr, ptr %pointer56, align 8, !dbg !2347
  %tobool57 = icmp ne ptr %45, null, !dbg !2344
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !2348

if.then58:                                        ; preds = %if.end54
  %46 = load ptr, ptr %adev.addr, align 8, !dbg !2349
  call void @acpi_extract_apple_properties(ptr noundef %46) #17, !dbg !2350
  br label %if.end59, !dbg !2350

if.end59:                                         ; preds = %if.then58, %if.end54
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2351
  br label %cleanup, !dbg !2351

cleanup:                                          ; preds = %if.end59, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %acpi_of) #15, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwid) #15, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #15, !dbg !2351
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2351

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2352 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2356 dso_local i32 @acpi_evaluate_object_typed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_extract_properties(ptr noundef %scope, ptr noundef %desc, ptr noundef %data) #0 align 16 !dbg !2367 {
entry:
  %retval = alloca i1, align 1
  %scope.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %guid = alloca ptr, align 8
  %properties = alloca ptr, align 8
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !2371, metadata !DIExpression()), !dbg !2380
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2372, metadata !DIExpression()), !dbg !2381
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2373, metadata !DIExpression()), !dbg !2382
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2374, metadata !DIExpression()), !dbg !2384
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2385
  %count = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 1, !dbg !2387
  %1 = load i32, ptr %count, align 4, !dbg !2387
  %rem = urem i32 %1, 2, !dbg !2388
  %tobool = icmp ne i32 %rem, 0, !dbg !2388
  br i1 %tobool, label %if.then, label %if.end, !dbg !2389

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !2390

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2391
  br label %for.cond, !dbg !2392

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2393
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2394
  %count1 = getelementptr inbounds %struct.anon.7, ptr %3, i32 0, i32 1, !dbg !2395
  %4 = load i32, ptr %count1, align 4, !dbg !2395
  %cmp = icmp ult i32 %2, %4, !dbg !2396
  br i1 %cmp, label %for.body, label %for.end, !dbg !2397

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %guid) #15, !dbg !2398
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !2375, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 8, ptr %properties) #15, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %properties, metadata !2379, metadata !DIExpression()), !dbg !2401
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !2402
  %elements = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 2, !dbg !2403
  %6 = load ptr, ptr %elements, align 8, !dbg !2403
  %7 = load i32, ptr %i, align 4, !dbg !2404
  %idxprom = sext i32 %7 to i64, !dbg !2402
  %arrayidx = getelementptr %union.acpi_object, ptr %6, i64 %idxprom, !dbg !2402
  store ptr %arrayidx, ptr %guid, align 8, !dbg !2405
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !2406
  %elements2 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 2, !dbg !2407
  %9 = load ptr, ptr %elements2, align 8, !dbg !2407
  %10 = load i32, ptr %i, align 4, !dbg !2408
  %add = add i32 %10, 1, !dbg !2409
  %idxprom3 = sext i32 %add to i64, !dbg !2406
  %arrayidx4 = getelementptr %union.acpi_object, ptr %9, i64 %idxprom3, !dbg !2406
  store ptr %arrayidx4, ptr %properties, align 8, !dbg !2410
  %11 = load ptr, ptr %guid, align 8, !dbg !2411
  %12 = load i32, ptr %11, align 8, !dbg !2413
  %cmp5 = icmp ne i32 %12, 3, !dbg !2414
  br i1 %cmp5, label %if.then9, label %lor.lhs.false, !dbg !2415

lor.lhs.false:                                    ; preds = %for.body
  %13 = load ptr, ptr %guid, align 8, !dbg !2416
  %length = getelementptr inbounds %struct.anon.6, ptr %13, i32 0, i32 1, !dbg !2417
  %14 = load i32, ptr %length, align 4, !dbg !2417
  %cmp6 = icmp ne i32 %14, 16, !dbg !2418
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7, !dbg !2419

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %15 = load ptr, ptr %properties, align 8, !dbg !2420
  %16 = load i32, ptr %15, align 8, !dbg !2421
  %cmp8 = icmp ne i32 %16, 4, !dbg !2422
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2423

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false, %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2424

if.end10:                                         ; preds = %lor.lhs.false7
  %17 = load ptr, ptr %guid, align 8, !dbg !2425
  %pointer = getelementptr inbounds %struct.anon.6, ptr %17, i32 0, i32 2, !dbg !2427
  %18 = load ptr, ptr %pointer, align 8, !dbg !2427
  %call = call zeroext i1 @guid_equal(ptr noundef %18, ptr noundef @buffer_prop_guid) #17, !dbg !2428
  br i1 %call, label %if.then11, label %if.end12, !dbg !2429

if.then11:                                        ; preds = %if.end10
  %19 = load ptr, ptr %scope.addr, align 8, !dbg !2430
  %20 = load ptr, ptr %data.addr, align 8, !dbg !2432
  %21 = load ptr, ptr %properties, align 8, !dbg !2433
  call void @acpi_data_add_buffer_props(ptr noundef %19, ptr noundef %20, ptr noundef %21) #17, !dbg !2434
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2435

if.end12:                                         ; preds = %if.end10
  %22 = load ptr, ptr %guid, align 8, !dbg !2436
  %pointer13 = getelementptr inbounds %struct.anon.6, ptr %22, i32 0, i32 2, !dbg !2438
  %23 = load ptr, ptr %pointer13, align 8, !dbg !2438
  %call14 = call zeroext i1 @acpi_is_property_guid(ptr noundef %23) #17, !dbg !2439
  br i1 %call14, label %if.end16, label %if.then15, !dbg !2440

if.then15:                                        ; preds = %if.end12
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2441

if.end16:                                         ; preds = %if.end12
  %24 = load ptr, ptr %properties, align 8, !dbg !2442
  %call17 = call zeroext i1 @acpi_properties_format_valid(ptr noundef %24) #17, !dbg !2444
  br i1 %call17, label %if.end19, label %if.then18, !dbg !2445

if.then18:                                        ; preds = %if.end16
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2446

if.end19:                                         ; preds = %if.end16
  %25 = load ptr, ptr %data.addr, align 8, !dbg !2447
  %26 = load ptr, ptr %guid, align 8, !dbg !2448
  %pointer20 = getelementptr inbounds %struct.anon.6, ptr %26, i32 0, i32 2, !dbg !2449
  %27 = load ptr, ptr %pointer20, align 8, !dbg !2449
  %28 = load ptr, ptr %properties, align 8, !dbg !2450
  %call21 = call ptr @acpi_data_add_props(ptr noundef %25, ptr noundef %27, ptr noundef %28) #17, !dbg !2451
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2452
  br label %cleanup, !dbg !2452

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then15, %if.then11, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %properties) #15, !dbg !2452
  call void @llvm.lifetime.end.p0(i64 8, ptr %guid) #15, !dbg !2452
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2453

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %29 = load i32, ptr %i, align 4, !dbg !2454
  %add23 = add i32 %29, 2, !dbg !2454
  store i32 %add23, ptr %i, align 4, !dbg !2454
  br label %for.cond, !dbg !2455, !llvm.loop !2456

for.end:                                          ; preds = %cleanup, %for.cond
  %30 = load ptr, ptr %data.addr, align 8, !dbg !2458
  %properties24 = getelementptr inbounds %struct.acpi_device_data, ptr %30, i32 0, i32 1, !dbg !2459
  %call25 = call i32 @list_empty(ptr noundef %properties24) #17, !dbg !2460
  %tobool26 = icmp ne i32 %call25, 0, !dbg !2461
  %lnot = xor i1 %tobool26, true, !dbg !2461
  store i1 %lnot, ptr %retval, align 1, !dbg !2462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !2462

cleanup27:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2463
  %31 = load i1, ptr %retval, align 1, !dbg !2463
  ret i1 %31, !dbg !2463

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_init_of_compatible(ptr noundef %adev) #0 align 16 !dbg !2464 {
entry:
  %adev.addr = alloca ptr, align 8
  %of_compatible = alloca ptr, align 8
  %ret = alloca i32, align 4
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2466, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 8, ptr %of_compatible) #15, !dbg !2476
  call void @llvm.dbg.declare(metadata ptr %of_compatible, metadata !2467, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2468, metadata !DIExpression()), !dbg !2479
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2480
  %data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 13, !dbg !2481
  %call = call i32 @acpi_data_get_property_array(ptr noundef %data, ptr noundef @.str.10, i32 noundef 2, ptr noundef %of_compatible) #17, !dbg !2482
  store i32 %call, ptr %ret, align 4, !dbg !2483
  %1 = load i32, ptr %ret, align 4, !dbg !2484
  %tobool = icmp ne i32 %1, 0, !dbg !2484
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2485

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !2486
  %call1 = call i32 @acpi_dev_get_property(ptr noundef %2, ptr noundef @.str.10, i32 noundef 2, ptr noundef %of_compatible) #17, !dbg !2487
  store i32 %call1, ptr %ret, align 4, !dbg !2488
  %3 = load i32, ptr %ret, align 4, !dbg !2489
  %tobool2 = icmp ne i32 %3, 0, !dbg !2489
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !2490

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2469, metadata !DIExpression()), !dbg !2492
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !2493
  %call4 = call ptr @acpi_dev_parent(ptr noundef %4) #17, !dbg !2494
  store ptr %call4, ptr %parent, align 8, !dbg !2495
  %5 = load ptr, ptr %parent, align 8, !dbg !2496
  %tobool5 = icmp ne ptr %5, null, !dbg !2496
  br i1 %tobool5, label %land.lhs.true, label %if.end, !dbg !2498

land.lhs.true:                                    ; preds = %if.then3
  %6 = load ptr, ptr %parent, align 8, !dbg !2499
  %flags = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 7, !dbg !2500
  %bf.load = load i32, ptr %flags, align 4, !dbg !2501
  %bf.lshr = lshr i32 %bf.load, 9, !dbg !2501
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2501
  %tobool6 = icmp ne i32 %bf.clear, 0, !dbg !2499
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !2502

if.then7:                                         ; preds = %land.lhs.true
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2503

if.end:                                           ; preds = %land.lhs.true, %if.then3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2504

cleanup:                                          ; preds = %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !2505
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 2, label %out
  ]

if.end8:                                          ; preds = %if.then
  br label %if.end9, !dbg !2506

if.end9:                                          ; preds = %if.end8, %entry
  %7 = load ptr, ptr %of_compatible, align 8, !dbg !2507
  %8 = load ptr, ptr %adev.addr, align 8, !dbg !2508
  %data10 = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 13, !dbg !2509
  %of_compatible11 = getelementptr inbounds %struct.acpi_device_data, ptr %data10, i32 0, i32 2, !dbg !2510
  store ptr %7, ptr %of_compatible11, align 8, !dbg !2511
  br label %out, !dbg !2508

out:                                              ; preds = %if.end9, %cleanup
  call void @llvm.dbg.label(metadata !2474), !dbg !2512
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !2513
  %flags12 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 7, !dbg !2514
  %bf.load13 = load i32, ptr %flags12, align 4, !dbg !2515
  %bf.clear14 = and i32 %bf.load13, -513, !dbg !2515
  %bf.set = or i32 %bf.clear14, 512, !dbg !2515
  store i32 %bf.set, ptr %flags12, align 4, !dbg !2515
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2516
  br label %cleanup15, !dbg !2516

cleanup15:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2516
  call void @llvm.lifetime.end.p0(i64 8, ptr %of_compatible) #15, !dbg !2516
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup15, %cleanup15
  ret void, !dbg !2516

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_enumerate_nondev_subnodes(ptr noundef %scope, ptr noundef %desc, ptr noundef %data, ptr noundef %parent) #0 align 16 !dbg !2517 {
entry:
  %retval = alloca i1, align 1
  %scope.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %guid = alloca ptr, align 8
  %links = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !2521, metadata !DIExpression()), !dbg !2531
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2522, metadata !DIExpression()), !dbg !2532
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2523, metadata !DIExpression()), !dbg !2533
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2524, metadata !DIExpression()), !dbg !2534
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2535
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2525, metadata !DIExpression()), !dbg !2536
  store i32 0, ptr %i, align 4, !dbg !2537
  br label %for.cond, !dbg !2538

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2539
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !2540
  %count = getelementptr inbounds %struct.anon.7, ptr %1, i32 0, i32 1, !dbg !2541
  %2 = load i32, ptr %count, align 4, !dbg !2541
  %cmp = icmp ult i32 %0, %2, !dbg !2542
  br i1 %cmp, label %for.body, label %for.end, !dbg !2543

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %guid) #15, !dbg !2544
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !2526, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0(i64 8, ptr %links) #15, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %links, metadata !2530, metadata !DIExpression()), !dbg !2547
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2548
  %elements = getelementptr inbounds %struct.anon.7, ptr %3, i32 0, i32 2, !dbg !2549
  %4 = load ptr, ptr %elements, align 8, !dbg !2549
  %5 = load i32, ptr %i, align 4, !dbg !2550
  %idxprom = sext i32 %5 to i64, !dbg !2548
  %arrayidx = getelementptr %union.acpi_object, ptr %4, i64 %idxprom, !dbg !2548
  store ptr %arrayidx, ptr %guid, align 8, !dbg !2551
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !2552
  %elements1 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 2, !dbg !2553
  %7 = load ptr, ptr %elements1, align 8, !dbg !2553
  %8 = load i32, ptr %i, align 4, !dbg !2554
  %add = add i32 %8, 1, !dbg !2555
  %idxprom2 = sext i32 %add to i64, !dbg !2552
  %arrayidx3 = getelementptr %union.acpi_object, ptr %7, i64 %idxprom2, !dbg !2552
  store ptr %arrayidx3, ptr %links, align 8, !dbg !2556
  %9 = load ptr, ptr %guid, align 8, !dbg !2557
  %10 = load i32, ptr %9, align 8, !dbg !2559
  %cmp4 = icmp ne i32 %10, 3, !dbg !2560
  br i1 %cmp4, label %if.then, label %lor.lhs.false, !dbg !2561

lor.lhs.false:                                    ; preds = %for.body
  %11 = load ptr, ptr %guid, align 8, !dbg !2562
  %length = getelementptr inbounds %struct.anon.6, ptr %11, i32 0, i32 1, !dbg !2563
  %12 = load i32, ptr %length, align 4, !dbg !2563
  %cmp5 = icmp ne i32 %12, 16, !dbg !2564
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !2565

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %13 = load ptr, ptr %links, align 8, !dbg !2566
  %14 = load i32, ptr %13, align 8, !dbg !2567
  %cmp7 = icmp ne i32 %14, 4, !dbg !2568
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2569

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2570

if.end:                                           ; preds = %lor.lhs.false6
  %15 = load ptr, ptr %guid, align 8, !dbg !2571
  %pointer = getelementptr inbounds %struct.anon.6, ptr %15, i32 0, i32 2, !dbg !2573
  %16 = load ptr, ptr %pointer, align 8, !dbg !2573
  %call = call zeroext i1 @guid_equal(ptr noundef %16, ptr noundef @ads_guid) #17, !dbg !2574
  br i1 %call, label %if.end9, label %if.then8, !dbg !2575

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2576

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %scope.addr, align 8, !dbg !2577
  %18 = load ptr, ptr %links, align 8, !dbg !2578
  %19 = load ptr, ptr %data.addr, align 8, !dbg !2579
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %19, i32 0, i32 3, !dbg !2580
  %20 = load ptr, ptr %parent.addr, align 8, !dbg !2581
  %call10 = call zeroext i1 @acpi_add_nondev_subnodes(ptr noundef %17, ptr noundef %18, ptr noundef %subnodes, ptr noundef %20) #17, !dbg !2582
  store i1 %call10, ptr %retval, align 1, !dbg !2583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2583

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %links) #15, !dbg !2584
  call void @llvm.lifetime.end.p0(i64 8, ptr %guid) #15, !dbg !2584
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %21 = load i32, ptr %i, align 4, !dbg !2585
  %add12 = add i32 %21, 2, !dbg !2585
  store i32 %add12, ptr %i, align 4, !dbg !2585
  br label %for.cond, !dbg !2586, !llvm.loop !2587

for.end:                                          ; preds = %cleanup, %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !2589

cleanup13:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2590
  %22 = load i1, ptr %retval, align 1, !dbg !2590
  ret i1 %22, !dbg !2590
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_handle(ptr noundef %adev) #4 align 16 !dbg !2591 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2597
  %fwnode = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 3, !dbg !2598
  ret ptr %fwnode, !dbg !2599
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !2600 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !2603, metadata !DIExpression()), !dbg !2604
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !2605
  call void @kfree(ptr noundef %0) #17, !dbg !2606
  ret void, !dbg !2607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_tie_nondev_subnodes(ptr noundef %data) #0 align 16 !dbg !2608 {
entry:
  %retval = alloca i1, align 1
  %data.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %status = alloca i32, align 4
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2612, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !2613, metadata !DIExpression()), !dbg !2625
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2626
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2614, metadata !DIExpression()), !dbg !2626
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2626
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %0, i32 0, i32 3, !dbg !2626
  %next = getelementptr inbounds %struct.list_head, ptr %subnodes, i32 0, i32 0, !dbg !2626
  %1 = load ptr, ptr %next, align 8, !dbg !2626
  store ptr %1, ptr %__mptr, align 8, !dbg !2626
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2626
  %add.ptr = getelementptr i8, ptr %2, i64 -136, !dbg !2626
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2626
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2627
  %3 = load ptr, ptr %tmp, align 8, !dbg !2626
  store ptr %3, ptr %dn, align 8, !dbg !2627
  br label %for.cond, !dbg !2627

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dn, align 8, !dbg !2628
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %4, i32 0, i32 5, !dbg !2628
  %5 = load ptr, ptr %data.addr, align 8, !dbg !2628
  %subnodes1 = getelementptr inbounds %struct.acpi_device_data, ptr %5, i32 0, i32 3, !dbg !2628
  %cmp = icmp eq ptr %sibling, %subnodes1, !dbg !2628
  %lnot = xor i1 %cmp, true, !dbg !2628
  br i1 %lnot, label %for.body, label %for.end, !dbg !2627

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2617, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #15, !dbg !2631
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2620, metadata !DIExpression()), !dbg !2632
  %6 = load ptr, ptr %dn, align 8, !dbg !2633
  %handle = getelementptr inbounds %struct.acpi_data_node, ptr %6, i32 0, i32 1, !dbg !2634
  %7 = load ptr, ptr %handle, align 8, !dbg !2634
  %8 = load ptr, ptr %dn, align 8, !dbg !2635
  %call = call i32 @acpi_attach_data(ptr noundef %7, ptr noundef @acpi_nondev_subnode_tag, ptr noundef %8) #17, !dbg !2636
  store i32 %call, ptr %status, align 4, !dbg !2637
  %9 = load i32, ptr %status, align 4, !dbg !2638
  %tobool = icmp ne i32 %9, 0, !dbg !2638
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2640

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, ptr %status, align 4, !dbg !2641
  %cmp2 = icmp ne i32 %10, 7, !dbg !2642
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2643

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %dn, align 8, !dbg !2644
  %handle3 = getelementptr inbounds %struct.acpi_data_node, ptr %11, i32 0, i32 1, !dbg !2644
  %12 = load ptr, ptr %handle3, align 8, !dbg !2644
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.11, ptr noundef %12, ptr noundef @.str.12) #17, !dbg !2644
  store i1 false, ptr %retval, align 1, !dbg !2646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2646

if.end:                                           ; preds = %land.lhs.true, %for.body
  %13 = load ptr, ptr %dn, align 8, !dbg !2647
  %data4 = getelementptr inbounds %struct.acpi_data_node, ptr %13, i32 0, i32 4, !dbg !2648
  %call5 = call zeroext i1 @acpi_tie_nondev_subnodes(ptr noundef %data4) #17, !dbg !2649
  %frombool = zext i1 %call5 to i8, !dbg !2650
  store i8 %frombool, ptr %ret, align 1, !dbg !2650
  %14 = load i8, ptr %ret, align 1, !dbg !2651, !range !2294, !noundef !467
  %tobool6 = trunc i8 %14 to i1, !dbg !2651
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2653

if.then7:                                         ; preds = %if.end
  %15 = load i8, ptr %ret, align 1, !dbg !2654, !range !2294, !noundef !467
  %tobool8 = trunc i8 %15 to i1, !dbg !2654
  store i1 %tobool8, ptr %retval, align 1, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2656
  br label %cleanup, !dbg !2656

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #15, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !2656
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2657

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #15, !dbg !2658
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !2621, metadata !DIExpression()), !dbg !2658
  %16 = load ptr, ptr %dn, align 8, !dbg !2658
  %sibling12 = getelementptr inbounds %struct.acpi_data_node, ptr %16, i32 0, i32 5, !dbg !2658
  %next13 = getelementptr inbounds %struct.list_head, ptr %sibling12, i32 0, i32 0, !dbg !2658
  %17 = load ptr, ptr %next13, align 8, !dbg !2658
  store ptr %17, ptr %__mptr11, align 8, !dbg !2658
  %18 = load ptr, ptr %__mptr11, align 8, !dbg !2658
  %add.ptr15 = getelementptr i8, ptr %18, i64 -136, !dbg !2658
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !2658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #15, !dbg !2628
  %19 = load ptr, ptr %tmp14, align 8, !dbg !2658
  store ptr %19, ptr %dn, align 8, !dbg !2628
  br label %for.cond, !dbg !2628, !llvm.loop !2659

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !2661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !2661

cleanup16:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !2662
  %20 = load i1, ptr %retval, align 1, !dbg !2662
  ret i1 %20, !dbg !2662
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_untie_nondev_subnodes(ptr noundef %data) #0 align 16 !dbg !2663 {
entry:
  %data.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2667, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !2676
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !2668, metadata !DIExpression()), !dbg !2677
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2678
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2669, metadata !DIExpression()), !dbg !2678
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2678
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %0, i32 0, i32 3, !dbg !2678
  %next = getelementptr inbounds %struct.list_head, ptr %subnodes, i32 0, i32 0, !dbg !2678
  %1 = load ptr, ptr %next, align 8, !dbg !2678
  store ptr %1, ptr %__mptr, align 8, !dbg !2678
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2678
  %add.ptr = getelementptr i8, ptr %2, i64 -136, !dbg !2678
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2679
  %3 = load ptr, ptr %tmp, align 8, !dbg !2678
  store ptr %3, ptr %dn, align 8, !dbg !2679
  br label %for.cond, !dbg !2679

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dn, align 8, !dbg !2680
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %4, i32 0, i32 5, !dbg !2680
  %5 = load ptr, ptr %data.addr, align 8, !dbg !2680
  %subnodes1 = getelementptr inbounds %struct.acpi_device_data, ptr %5, i32 0, i32 3, !dbg !2680
  %cmp = icmp eq ptr %sibling, %subnodes1, !dbg !2680
  %lnot = xor i1 %cmp, true, !dbg !2680
  br i1 %lnot, label %for.body, label %for.end, !dbg !2679

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dn, align 8, !dbg !2681
  %handle = getelementptr inbounds %struct.acpi_data_node, ptr %6, i32 0, i32 1, !dbg !2683
  %7 = load ptr, ptr %handle, align 8, !dbg !2683
  %call = call i32 @acpi_detach_data(ptr noundef %7, ptr noundef @acpi_nondev_subnode_tag) #17, !dbg !2684
  %8 = load ptr, ptr %dn, align 8, !dbg !2685
  %data2 = getelementptr inbounds %struct.acpi_data_node, ptr %8, i32 0, i32 4, !dbg !2686
  call void @acpi_untie_nondev_subnodes(ptr noundef %data2) #17, !dbg !2687
  br label %for.inc, !dbg !2688

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2672, metadata !DIExpression()), !dbg !2689
  %9 = load ptr, ptr %dn, align 8, !dbg !2689
  %sibling4 = getelementptr inbounds %struct.acpi_data_node, ptr %9, i32 0, i32 5, !dbg !2689
  %next5 = getelementptr inbounds %struct.list_head, ptr %sibling4, i32 0, i32 0, !dbg !2689
  %10 = load ptr, ptr %next5, align 8, !dbg !2689
  store ptr %10, ptr %__mptr3, align 8, !dbg !2689
  %11 = load ptr, ptr %__mptr3, align 8, !dbg !2689
  %add.ptr7 = getelementptr i8, ptr %11, i64 -136, !dbg !2689
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !2689
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !2680
  %12 = load ptr, ptr %tmp6, align 8, !dbg !2689
  store ptr %12, ptr %dn, align 8, !dbg !2680
  br label %for.cond, !dbg !2680, !llvm.loop !2690

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !2692
  ret void, !dbg !2692
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2693 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2697 dso_local void @acpi_extract_apple_properties(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_free_properties(ptr noundef %adev) #0 align 16 !dbg !2699 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2701, metadata !DIExpression()), !dbg !2702
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2703
  %data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 13, !dbg !2704
  call void @acpi_untie_nondev_subnodes(ptr noundef %data) #17, !dbg !2705
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2706
  %data1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 13, !dbg !2707
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %data1, i32 0, i32 3, !dbg !2708
  call void @acpi_destroy_nondev_subnodes(ptr noundef %subnodes) #17, !dbg !2709
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !2710
  %data2 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 13, !dbg !2710
  %pointer = getelementptr inbounds %struct.acpi_device_data, ptr %data2, i32 0, i32 0, !dbg !2710
  %3 = load ptr, ptr %pointer, align 8, !dbg !2710
  call void @acpi_os_free(ptr noundef %3) #17, !dbg !2710
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !2711
  %data3 = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 13, !dbg !2712
  %of_compatible = getelementptr inbounds %struct.acpi_device_data, ptr %data3, i32 0, i32 2, !dbg !2713
  store ptr null, ptr %of_compatible, align 8, !dbg !2714
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !2715
  %data4 = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 13, !dbg !2716
  %pointer5 = getelementptr inbounds %struct.acpi_device_data, ptr %data4, i32 0, i32 0, !dbg !2717
  store ptr null, ptr %pointer5, align 8, !dbg !2718
  %6 = load ptr, ptr %adev.addr, align 8, !dbg !2719
  %data6 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 13, !dbg !2720
  %properties = getelementptr inbounds %struct.acpi_device_data, ptr %data6, i32 0, i32 1, !dbg !2721
  call void @acpi_free_device_properties(ptr noundef %properties) #17, !dbg !2722
  ret void, !dbg !2723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_destroy_nondev_subnodes(ptr noundef %list) #0 align 16 !dbg !2724 {
entry:
  %list.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2726, metadata !DIExpression()), !dbg !2737
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !2727, metadata !DIExpression()), !dbg !2739
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2728, metadata !DIExpression()), !dbg !2740
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2741
  %call = call i32 @list_empty(ptr noundef %0) #17, !dbg !2743
  %tobool = icmp ne i32 %call, 0, !dbg !2743
  br i1 %tobool, label %if.then, label %if.end, !dbg !2744

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2745

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2729, metadata !DIExpression()), !dbg !2746
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2746
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2746
  %2 = load ptr, ptr %prev, align 8, !dbg !2746
  store ptr %2, ptr %__mptr, align 8, !dbg !2746
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2746
  %add.ptr = getelementptr i8, ptr %3, i64 -136, !dbg !2746
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2747
  %4 = load ptr, ptr %tmp, align 8, !dbg !2746
  store ptr %4, ptr %dn, align 8, !dbg !2747
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2732, metadata !DIExpression()), !dbg !2748
  %5 = load ptr, ptr %dn, align 8, !dbg !2748
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %5, i32 0, i32 5, !dbg !2748
  %prev2 = getelementptr inbounds %struct.list_head, ptr %sibling, i32 0, i32 1, !dbg !2748
  %6 = load ptr, ptr %prev2, align 8, !dbg !2748
  store ptr %6, ptr %__mptr1, align 8, !dbg !2748
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !2748
  %add.ptr4 = getelementptr i8, ptr %7, i64 -136, !dbg !2748
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !2747
  %8 = load ptr, ptr %tmp3, align 8, !dbg !2748
  store ptr %8, ptr %next, align 8, !dbg !2747
  br label %for.cond, !dbg !2747

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %dn, align 8, !dbg !2749
  %sibling5 = getelementptr inbounds %struct.acpi_data_node, ptr %9, i32 0, i32 5, !dbg !2749
  %10 = load ptr, ptr %list.addr, align 8, !dbg !2749
  %cmp = icmp eq ptr %sibling5, %10, !dbg !2749
  %lnot = xor i1 %cmp, true, !dbg !2749
  br i1 %lnot, label %for.body, label %for.end, !dbg !2747

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %dn, align 8, !dbg !2750
  %data = getelementptr inbounds %struct.acpi_data_node, ptr %11, i32 0, i32 4, !dbg !2752
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 3, !dbg !2753
  call void @acpi_destroy_nondev_subnodes(ptr noundef %subnodes) #17, !dbg !2754
  %12 = load ptr, ptr %dn, align 8, !dbg !2755
  %kobj_done = getelementptr inbounds %struct.acpi_data_node, ptr %12, i32 0, i32 7, !dbg !2756
  call void @wait_for_completion(ptr noundef %kobj_done) #17, !dbg !2757
  %13 = load ptr, ptr %dn, align 8, !dbg !2758
  %sibling6 = getelementptr inbounds %struct.acpi_data_node, ptr %13, i32 0, i32 5, !dbg !2759
  call void @list_del(ptr noundef %sibling6) #17, !dbg !2760
  %14 = load ptr, ptr %dn, align 8, !dbg !2761
  %data7 = getelementptr inbounds %struct.acpi_data_node, ptr %14, i32 0, i32 4, !dbg !2761
  %pointer = getelementptr inbounds %struct.acpi_device_data, ptr %data7, i32 0, i32 0, !dbg !2761
  %15 = load ptr, ptr %pointer, align 8, !dbg !2761
  call void @acpi_os_free(ptr noundef %15) #17, !dbg !2761
  %16 = load ptr, ptr %dn, align 8, !dbg !2762
  %data8 = getelementptr inbounds %struct.acpi_data_node, ptr %16, i32 0, i32 4, !dbg !2763
  %properties = getelementptr inbounds %struct.acpi_device_data, ptr %data8, i32 0, i32 1, !dbg !2764
  call void @acpi_free_device_properties(ptr noundef %properties) #17, !dbg !2765
  %17 = load ptr, ptr %dn, align 8, !dbg !2766
  call void @kfree(ptr noundef %17) #17, !dbg !2767
  br label %for.inc, !dbg !2768

for.inc:                                          ; preds = %for.body
  %18 = load ptr, ptr %next, align 8, !dbg !2749
  store ptr %18, ptr %dn, align 8, !dbg !2749
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2734, metadata !DIExpression()), !dbg !2769
  %19 = load ptr, ptr %next, align 8, !dbg !2769
  %sibling10 = getelementptr inbounds %struct.acpi_data_node, ptr %19, i32 0, i32 5, !dbg !2769
  %prev11 = getelementptr inbounds %struct.list_head, ptr %sibling10, i32 0, i32 1, !dbg !2769
  %20 = load ptr, ptr %prev11, align 8, !dbg !2769
  store ptr %20, ptr %__mptr9, align 8, !dbg !2769
  %21 = load ptr, ptr %__mptr9, align 8, !dbg !2769
  %add.ptr13 = getelementptr i8, ptr %21, i64 -136, !dbg !2769
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2769
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !2749
  %22 = load ptr, ptr %tmp12, align 8, !dbg !2769
  store ptr %22, ptr %next, align 8, !dbg !2749
  br label %for.cond, !dbg !2749, !llvm.loop !2770

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2772
  br label %cleanup, !dbg !2772

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !2772
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2772

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_free_device_properties(ptr noundef %list) #0 align 16 !dbg !2773 {
entry:
  %list.addr = alloca ptr, align 8
  %props = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %i = alloca i32, align 4
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2775, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 8, ptr %props) #15, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %props, metadata !2776, metadata !DIExpression()), !dbg !2790
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2777, metadata !DIExpression()), !dbg !2791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2778, metadata !DIExpression()), !dbg !2792
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2792
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2792
  %1 = load ptr, ptr %next, align 8, !dbg !2792
  store ptr %1, ptr %__mptr, align 8, !dbg !2792
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2792
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !2792
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2793
  %3 = load ptr, ptr %tmp1, align 8, !dbg !2792
  store ptr %3, ptr %props, align 8, !dbg !2793
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !2794
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2781, metadata !DIExpression()), !dbg !2794
  %4 = load ptr, ptr %props, align 8, !dbg !2794
  %list3 = getelementptr inbounds %struct.acpi_device_properties, ptr %4, i32 0, i32 2, !dbg !2794
  %next4 = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !2794
  %5 = load ptr, ptr %next4, align 8, !dbg !2794
  store ptr %5, ptr %__mptr2, align 8, !dbg !2794
  %6 = load ptr, ptr %__mptr2, align 8, !dbg !2794
  %add.ptr6 = getelementptr i8, ptr %6, i64 -16, !dbg !2794
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !2793
  %7 = load ptr, ptr %tmp5, align 8, !dbg !2794
  store ptr %7, ptr %tmp, align 8, !dbg !2793
  br label %for.cond, !dbg !2793

for.cond:                                         ; preds = %for.inc13, %entry
  %8 = load ptr, ptr %props, align 8, !dbg !2795
  %list7 = getelementptr inbounds %struct.acpi_device_properties, ptr %8, i32 0, i32 2, !dbg !2795
  %9 = load ptr, ptr %list.addr, align 8, !dbg !2795
  %cmp = icmp eq ptr %list7, %9, !dbg !2795
  %lnot = xor i1 %cmp, true, !dbg !2795
  br i1 %lnot, label %for.body, label %for.end19, !dbg !2793

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2783, metadata !DIExpression()), !dbg !2797
  %10 = load ptr, ptr %props, align 8, !dbg !2798
  %list8 = getelementptr inbounds %struct.acpi_device_properties, ptr %10, i32 0, i32 2, !dbg !2799
  call void @list_del(ptr noundef %list8) #17, !dbg !2800
  %11 = load ptr, ptr %props, align 8, !dbg !2801
  %bufs = getelementptr inbounds %struct.acpi_device_properties, ptr %11, i32 0, i32 3, !dbg !2803
  %12 = load ptr, ptr %bufs, align 8, !dbg !2803
  %tobool = icmp ne ptr %12, null, !dbg !2801
  br i1 %tobool, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %for.body
  store i32 0, ptr %i, align 4, !dbg !2805
  br label %for.cond9, !dbg !2807

for.cond9:                                        ; preds = %for.inc, %if.then
  %13 = load i32, ptr %i, align 4, !dbg !2808
  %14 = load ptr, ptr %props, align 8, !dbg !2810
  %properties = getelementptr inbounds %struct.acpi_device_properties, ptr %14, i32 0, i32 1, !dbg !2811
  %15 = load ptr, ptr %properties, align 8, !dbg !2811
  %count = getelementptr inbounds %struct.anon.7, ptr %15, i32 0, i32 1, !dbg !2812
  %16 = load i32, ptr %count, align 4, !dbg !2812
  %cmp10 = icmp ult i32 %13, %16, !dbg !2813
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !2814

for.body11:                                       ; preds = %for.cond9
  %17 = load ptr, ptr %props, align 8, !dbg !2815
  %bufs12 = getelementptr inbounds %struct.acpi_device_properties, ptr %17, i32 0, i32 3, !dbg !2815
  %18 = load ptr, ptr %bufs12, align 8, !dbg !2815
  %19 = load i32, ptr %i, align 4, !dbg !2815
  %idxprom = zext i32 %19 to i64, !dbg !2815
  %arrayidx = getelementptr ptr, ptr %18, i64 %idxprom, !dbg !2815
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !2815
  call void @acpi_os_free(ptr noundef %20) #17, !dbg !2815
  br label %for.inc, !dbg !2815

for.inc:                                          ; preds = %for.body11
  %21 = load i32, ptr %i, align 4, !dbg !2816
  %inc = add i32 %21, 1, !dbg !2816
  store i32 %inc, ptr %i, align 4, !dbg !2816
  br label %for.cond9, !dbg !2817, !llvm.loop !2818

for.end:                                          ; preds = %for.cond9
  br label %if.end, !dbg !2819

if.end:                                           ; preds = %for.end, %for.body
  %22 = load ptr, ptr %props, align 8, !dbg !2820
  call void @kvfree(ptr noundef %22) #17, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2822
  br label %for.inc13, !dbg !2823

for.inc13:                                        ; preds = %if.end
  %23 = load ptr, ptr %tmp, align 8, !dbg !2795
  store ptr %23, ptr %props, align 8, !dbg !2795
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #15, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !2786, metadata !DIExpression()), !dbg !2824
  %24 = load ptr, ptr %tmp, align 8, !dbg !2824
  %list15 = getelementptr inbounds %struct.acpi_device_properties, ptr %24, i32 0, i32 2, !dbg !2824
  %next16 = getelementptr inbounds %struct.list_head, ptr %list15, i32 0, i32 0, !dbg !2824
  %25 = load ptr, ptr %next16, align 8, !dbg !2824
  store ptr %25, ptr %__mptr14, align 8, !dbg !2824
  %26 = load ptr, ptr %__mptr14, align 8, !dbg !2824
  %add.ptr18 = getelementptr i8, ptr %26, i64 -16, !dbg !2824
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !2824
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #15, !dbg !2795
  %27 = load ptr, ptr %tmp17, align 8, !dbg !2824
  store ptr %27, ptr %tmp, align 8, !dbg !2795
  br label %for.cond, !dbg !2795, !llvm.loop !2825

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !2827
  call void @llvm.lifetime.end.p0(i64 8, ptr %props) #15, !dbg !2827
  ret void, !dbg !2827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_get_property(ptr noundef %adev, ptr noundef %name, i32 noundef %type, ptr noundef %obj) #0 align 16 !dbg !2828 {
entry:
  %adev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2834, metadata !DIExpression()), !dbg !2838
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2835, metadata !DIExpression()), !dbg !2839
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2836, metadata !DIExpression()), !dbg !2840
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2837, metadata !DIExpression()), !dbg !2841
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2842
  %tobool = icmp ne ptr %0, null, !dbg !2842
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2842

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2843
  %data = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 13, !dbg !2844
  %2 = load ptr, ptr %name.addr, align 8, !dbg !2845
  %3 = load i32, ptr %type.addr, align 4, !dbg !2846
  %4 = load ptr, ptr %obj.addr, align 8, !dbg !2847
  %call = call i32 @acpi_data_get_property(ptr noundef %data, ptr noundef %2, i32 noundef %3, ptr noundef %4) #17, !dbg !2848
  br label %cond.end, !dbg !2842

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2842

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -22, %cond.false ], !dbg !2842
  ret i32 %cond, !dbg !2849
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_data_get_property(ptr noundef %data, ptr noundef %name, i32 noundef %type, ptr noundef %obj) #0 align 16 !dbg !2850 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %props = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %properties9 = alloca ptr, align 8
  %i = alloca i32, align 4
  %propname = alloca ptr, align 8
  %propvalue = alloca ptr, align 8
  %property = alloca ptr, align 8
  %__mptr37 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2856, metadata !DIExpression()), !dbg !2876
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2857, metadata !DIExpression()), !dbg !2877
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2858, metadata !DIExpression()), !dbg !2878
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2859, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 8, ptr %props) #15, !dbg !2880
  call void @llvm.dbg.declare(metadata ptr %props, metadata !2860, metadata !DIExpression()), !dbg !2881
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2882
  %tobool = icmp ne ptr %0, null, !dbg !2882
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2884

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2885
  %tobool1 = icmp ne ptr %1, null, !dbg !2885
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2886

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !2887

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %data.addr, align 8, !dbg !2888
  %pointer = getelementptr inbounds %struct.acpi_device_data, ptr %2, i32 0, i32 0, !dbg !2890
  %3 = load ptr, ptr %pointer, align 8, !dbg !2890
  %tobool2 = icmp ne ptr %3, null, !dbg !2888
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5, !dbg !2891

lor.lhs.false3:                                   ; preds = %if.end
  %4 = load ptr, ptr %data.addr, align 8, !dbg !2892
  %properties = getelementptr inbounds %struct.acpi_device_data, ptr %4, i32 0, i32 1, !dbg !2893
  %call = call i32 @list_empty(ptr noundef %properties) #17, !dbg !2894
  %tobool4 = icmp ne i32 %call, 0, !dbg !2894
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2895

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !2896

if.end6:                                          ; preds = %lor.lhs.false3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2861, metadata !DIExpression()), !dbg !2897
  %5 = load ptr, ptr %data.addr, align 8, !dbg !2897
  %properties7 = getelementptr inbounds %struct.acpi_device_data, ptr %5, i32 0, i32 1, !dbg !2897
  %next = getelementptr inbounds %struct.list_head, ptr %properties7, i32 0, i32 0, !dbg !2897
  %6 = load ptr, ptr %next, align 8, !dbg !2897
  store ptr %6, ptr %__mptr, align 8, !dbg !2897
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2897
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !2897
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2898
  %8 = load ptr, ptr %tmp, align 8, !dbg !2897
  store ptr %8, ptr %props, align 8, !dbg !2898
  br label %for.cond, !dbg !2898

for.cond:                                         ; preds = %for.inc36, %if.end6
  %9 = load ptr, ptr %props, align 8, !dbg !2899
  %list = getelementptr inbounds %struct.acpi_device_properties, ptr %9, i32 0, i32 2, !dbg !2899
  %10 = load ptr, ptr %data.addr, align 8, !dbg !2899
  %properties8 = getelementptr inbounds %struct.acpi_device_data, ptr %10, i32 0, i32 1, !dbg !2899
  %cmp = icmp eq ptr %list, %properties8, !dbg !2899
  %lnot = xor i1 %cmp, true, !dbg !2899
  br i1 %lnot, label %for.body, label %for.end42, !dbg !2898

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %properties9) #15, !dbg !2900
  call void @llvm.dbg.declare(metadata ptr %properties9, metadata !2864, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2867, metadata !DIExpression()), !dbg !2903
  %11 = load ptr, ptr %props, align 8, !dbg !2904
  %properties10 = getelementptr inbounds %struct.acpi_device_properties, ptr %11, i32 0, i32 1, !dbg !2905
  %12 = load ptr, ptr %properties10, align 8, !dbg !2905
  store ptr %12, ptr %properties9, align 8, !dbg !2906
  store i32 0, ptr %i, align 4, !dbg !2907
  br label %for.cond11, !dbg !2908

for.cond11:                                       ; preds = %for.inc, %for.body
  %13 = load i32, ptr %i, align 4, !dbg !2909
  %14 = load ptr, ptr %properties9, align 8, !dbg !2910
  %count = getelementptr inbounds %struct.anon.7, ptr %14, i32 0, i32 1, !dbg !2911
  %15 = load i32, ptr %count, align 4, !dbg !2911
  %cmp12 = icmp ult i32 %13, %15, !dbg !2912
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !2913

for.body13:                                       ; preds = %for.cond11
  call void @llvm.lifetime.start.p0(i64 8, ptr %propname) #15, !dbg !2914
  call void @llvm.dbg.declare(metadata ptr %propname, metadata !2868, metadata !DIExpression()), !dbg !2915
  call void @llvm.lifetime.start.p0(i64 8, ptr %propvalue) #15, !dbg !2914
  call void @llvm.dbg.declare(metadata ptr %propvalue, metadata !2872, metadata !DIExpression()), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 8, ptr %property) #15, !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %property, metadata !2873, metadata !DIExpression()), !dbg !2918
  %16 = load ptr, ptr %properties9, align 8, !dbg !2919
  %elements = getelementptr inbounds %struct.anon.7, ptr %16, i32 0, i32 2, !dbg !2920
  %17 = load ptr, ptr %elements, align 8, !dbg !2920
  %18 = load i32, ptr %i, align 4, !dbg !2921
  %idxprom = zext i32 %18 to i64, !dbg !2919
  %arrayidx = getelementptr %union.acpi_object, ptr %17, i64 %idxprom, !dbg !2919
  store ptr %arrayidx, ptr %property, align 8, !dbg !2922
  %19 = load ptr, ptr %property, align 8, !dbg !2923
  %elements14 = getelementptr inbounds %struct.anon.7, ptr %19, i32 0, i32 2, !dbg !2924
  %20 = load ptr, ptr %elements14, align 8, !dbg !2924
  %arrayidx15 = getelementptr %union.acpi_object, ptr %20, i64 0, !dbg !2923
  store ptr %arrayidx15, ptr %propname, align 8, !dbg !2925
  %21 = load ptr, ptr %property, align 8, !dbg !2926
  %elements16 = getelementptr inbounds %struct.anon.7, ptr %21, i32 0, i32 2, !dbg !2927
  %22 = load ptr, ptr %elements16, align 8, !dbg !2927
  %arrayidx17 = getelementptr %union.acpi_object, ptr %22, i64 1, !dbg !2926
  store ptr %arrayidx17, ptr %propvalue, align 8, !dbg !2928
  %23 = load ptr, ptr %name.addr, align 8, !dbg !2929
  %24 = load ptr, ptr %propname, align 8, !dbg !2931
  %pointer18 = getelementptr inbounds %struct.anon.5, ptr %24, i32 0, i32 2, !dbg !2932
  %25 = load ptr, ptr %pointer18, align 8, !dbg !2932
  %call19 = call i32 @strcmp(ptr noundef %23, ptr noundef %25) #17, !dbg !2933
  %tobool20 = icmp ne i32 %call19, 0, !dbg !2933
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !2934

if.then21:                                        ; preds = %for.body13
  %26 = load i32, ptr %type.addr, align 4, !dbg !2935
  %cmp22 = icmp ne i32 %26, 0, !dbg !2938
  br i1 %cmp22, label %land.lhs.true, label %if.end25, !dbg !2939

land.lhs.true:                                    ; preds = %if.then21
  %27 = load ptr, ptr %propvalue, align 8, !dbg !2940
  %28 = load i32, ptr %27, align 8, !dbg !2941
  %29 = load i32, ptr %type.addr, align 4, !dbg !2942
  %cmp23 = icmp ne i32 %28, %29, !dbg !2943
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2944

if.then24:                                        ; preds = %land.lhs.true
  store i32 -71, ptr %retval, align 4, !dbg !2945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2945

if.end25:                                         ; preds = %land.lhs.true, %if.then21
  %30 = load ptr, ptr %obj.addr, align 8, !dbg !2946
  %tobool26 = icmp ne ptr %30, null, !dbg !2946
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2948

if.then27:                                        ; preds = %if.end25
  %31 = load ptr, ptr %propvalue, align 8, !dbg !2949
  %32 = load ptr, ptr %obj.addr, align 8, !dbg !2950
  store ptr %31, ptr %32, align 8, !dbg !2951
  br label %if.end28, !dbg !2952

if.end28:                                         ; preds = %if.then27, %if.end25
  store i32 0, ptr %retval, align 4, !dbg !2953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2953

if.end29:                                         ; preds = %for.body13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2954
  br label %cleanup, !dbg !2954

cleanup:                                          ; preds = %if.end29, %if.end28, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %property) #15, !dbg !2954
  call void @llvm.lifetime.end.p0(i64 8, ptr %propvalue) #15, !dbg !2954
  call void @llvm.lifetime.end.p0(i64 8, ptr %propname) #15, !dbg !2954
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2955

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i32, ptr %i, align 4, !dbg !2956
  %inc = add i32 %33, 1, !dbg !2956
  store i32 %inc, ptr %i, align 4, !dbg !2956
  br label %for.cond11, !dbg !2957, !llvm.loop !2958

for.end:                                          ; preds = %for.cond11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2960
  br label %cleanup32, !dbg !2960

cleanup32:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2960
  call void @llvm.lifetime.end.p0(i64 8, ptr %properties9) #15, !dbg !2960
  %cleanup.dest34 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest34, label %cleanup43 [
    i32 0, label %cleanup.cont35
  ]

cleanup.cont35:                                   ; preds = %cleanup32
  br label %for.inc36, !dbg !2961

for.inc36:                                        ; preds = %cleanup.cont35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr37) #15, !dbg !2962
  call void @llvm.dbg.declare(metadata ptr %__mptr37, metadata !2874, metadata !DIExpression()), !dbg !2962
  %34 = load ptr, ptr %props, align 8, !dbg !2962
  %list38 = getelementptr inbounds %struct.acpi_device_properties, ptr %34, i32 0, i32 2, !dbg !2962
  %next39 = getelementptr inbounds %struct.list_head, ptr %list38, i32 0, i32 0, !dbg !2962
  %35 = load ptr, ptr %next39, align 8, !dbg !2962
  store ptr %35, ptr %__mptr37, align 8, !dbg !2962
  %36 = load ptr, ptr %__mptr37, align 8, !dbg !2962
  %add.ptr41 = getelementptr i8, ptr %36, i64 -16, !dbg !2962
  store ptr %add.ptr41, ptr %tmp40, align 8, !dbg !2962
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr37) #15, !dbg !2899
  %37 = load ptr, ptr %tmp40, align 8, !dbg !2962
  store ptr %37, ptr %props, align 8, !dbg !2899
  br label %for.cond, !dbg !2899, !llvm.loop !2963

for.end42:                                        ; preds = %for.cond
  store i32 -22, ptr %retval, align 4, !dbg !2965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !2965

cleanup43:                                        ; preds = %for.end42, %cleanup32, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %props) #15, !dbg !2966
  %38 = load i32, ptr %retval, align 4, !dbg !2966
  ret i32 %38, !dbg !2966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_node_prop_get(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %valptr) #0 align 16 !dbg !2967 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %valptr.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2971, metadata !DIExpression()), !dbg !2974
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !2972, metadata !DIExpression()), !dbg !2975
  store ptr %valptr, ptr %valptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %valptr.addr, metadata !2973, metadata !DIExpression()), !dbg !2976
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !2977
  %call = call ptr @acpi_device_data_of_node(ptr noundef %0) #17, !dbg !2978
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !2979
  %2 = load ptr, ptr %valptr.addr, align 8, !dbg !2980
  %call1 = call i32 @acpi_data_get_property(ptr noundef %call, ptr noundef %1, i32 noundef 0, ptr noundef %2) #17, !dbg !2981
  ret i32 %call1, !dbg !2982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_device_data_of_node(ptr noundef %fwnode) #0 align 16 !dbg !2983 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %__to_acpi_data_node_fwnode = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2987, metadata !DIExpression()), !dbg !3004
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3005
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %0) #17, !dbg !3006
  br i1 %call, label %if.then, label %if.end, !dbg !3007

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !3008
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !2988, metadata !DIExpression()), !dbg !3009
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3010
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2991, metadata !DIExpression()), !dbg !3010
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3010
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3010
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3010
  %call1 = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #17, !dbg !3010
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3010

cond.true:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2993, metadata !DIExpression()), !dbg !3011
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3011
  store ptr %3, ptr %__mptr, align 8, !dbg !3011
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3011
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !3011
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3010
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3011
  br label %cond.end, !dbg !3010

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !3010

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !3010
  store ptr %cond, ptr %tmp, align 8, !dbg !3010
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3012
  %6 = load ptr, ptr %tmp, align 8, !dbg !3010
  store ptr %6, ptr %adev, align 8, !dbg !3009
  %7 = load ptr, ptr %adev, align 8, !dbg !3013
  %data = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 13, !dbg !3014
  store ptr %data, ptr %retval, align 8, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !3016
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %fwnode.addr, align 8, !dbg !3017
  %call3 = call zeroext i1 @is_acpi_data_node(ptr noundef %8) #17, !dbg !3018
  br i1 %call3, label %if.then4, label %if.end15, !dbg !3019

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !2995, metadata !DIExpression()), !dbg !3021
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode, metadata !3000, metadata !DIExpression()), !dbg !3022
  %9 = load ptr, ptr %fwnode.addr, align 8, !dbg !3022
  store ptr %9, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3022
  %10 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3022
  %call6 = call zeroext i1 @is_acpi_data_node(ptr noundef %10) #17, !dbg !3022
  br i1 %call6, label %cond.true7, label %cond.false11, !dbg !3022

cond.true7:                                       ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #15, !dbg !3023
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !3002, metadata !DIExpression()), !dbg !3023
  %11 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3023
  store ptr %11, ptr %__mptr8, align 8, !dbg !3023
  %12 = load ptr, ptr %__mptr8, align 8, !dbg !3023
  %add.ptr10 = getelementptr i8, ptr %12, i64 -16, !dbg !3023
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !3023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #15, !dbg !3022
  %13 = load ptr, ptr %tmp9, align 8, !dbg !3023
  br label %cond.end12, !dbg !3022

cond.false11:                                     ; preds = %if.then4
  br label %cond.end12, !dbg !3022

cond.end12:                                       ; preds = %cond.false11, %cond.true7
  %cond13 = phi ptr [ %13, %cond.true7 ], [ null, %cond.false11 ], !dbg !3022
  store ptr %cond13, ptr %tmp5, align 8, !dbg !3022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3024
  %14 = load ptr, ptr %tmp5, align 8, !dbg !3022
  store ptr %14, ptr %dn, align 8, !dbg !3021
  %15 = load ptr, ptr %dn, align 8, !dbg !3025
  %data14 = getelementptr inbounds %struct.acpi_data_node, ptr %15, i32 0, i32 4, !dbg !3026
  store ptr %data14, ptr %retval, align 8, !dbg !3027
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !3028
  br label %return

if.end15:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3029
  br label %return, !dbg !3029

return:                                           ; preds = %if.end15, %cond.end12, %cond.end
  %16 = load ptr, ptr %retval, align 8, !dbg !3030
  ret ptr %16, !dbg !3030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__acpi_node_get_property_reference(ptr noundef %fwnode, ptr noundef %propname, i64 noundef %index, i64 noundef %num_args, ptr noundef %args) #0 align 16 !dbg !3031 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %num_args.addr = alloca i64, align 8
  %args.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  %end = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %data = alloca ptr, align 8
  %device = alloca ptr, align 8
  %ret = alloca i32, align 4
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3035, metadata !DIExpression()), !dbg !3047
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3036, metadata !DIExpression()), !dbg !3048
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3037, metadata !DIExpression()), !dbg !3049
  store i64 %num_args, ptr %num_args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_args.addr, metadata !3038, metadata !DIExpression()), !dbg !3050
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !3039, metadata !DIExpression()), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #15, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %element, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %end, metadata !3041, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !3042, metadata !DIExpression()), !dbg !3056
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3043, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #15, !dbg !3059
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3044, metadata !DIExpression()), !dbg !3060
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3061
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3045, metadata !DIExpression()), !dbg !3062
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !3061
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3046, metadata !DIExpression()), !dbg !3063
  store i32 0, ptr %idx, align 4, !dbg !3063
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3064
  %call = call ptr @acpi_device_data_of_node(ptr noundef %0) #17, !dbg !3065
  store ptr %call, ptr %data, align 8, !dbg !3066
  %1 = load ptr, ptr %data, align 8, !dbg !3067
  %tobool = icmp ne ptr %1, null, !dbg !3067
  br i1 %tobool, label %if.end, label %if.then, !dbg !3069

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !3070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3070

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %data, align 8, !dbg !3071
  %3 = load ptr, ptr %propname.addr, align 8, !dbg !3072
  %call1 = call i32 @acpi_data_get_property(ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %obj) #17, !dbg !3073
  store i32 %call1, ptr %ret, align 4, !dbg !3074
  %4 = load i32, ptr %ret, align 4, !dbg !3075
  %tobool2 = icmp ne i32 %4, 0, !dbg !3075
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3077

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !3078
  %cmp = icmp eq i32 %5, -22, !dbg !3079
  %6 = zext i1 %cmp to i64, !dbg !3078
  %cond = select i1 %cmp, i32 -2, i32 -22, !dbg !3078
  store i32 %cond, ptr %retval, align 4, !dbg !3080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3080

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %obj, align 8, !dbg !3081
  %8 = load i32, ptr %7, align 8, !dbg !3082
  switch i32 %8, label %sw.default [
    i32 20, label %sw.bb
    i32 4, label %sw.epilog
  ], !dbg !3083

sw.bb:                                            ; preds = %if.end4
  %9 = load i64, ptr %index.addr, align 8, !dbg !3084
  %tobool5 = icmp ne i64 %9, 0, !dbg !3084
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3087

if.then6:                                         ; preds = %sw.bb
  store i32 -2, ptr %retval, align 4, !dbg !3088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3088

if.end7:                                          ; preds = %sw.bb
  %10 = load ptr, ptr %obj, align 8, !dbg !3089
  %handle = getelementptr inbounds %struct.anon.8, ptr %10, i32 0, i32 2, !dbg !3090
  %11 = load ptr, ptr %handle, align 8, !dbg !3090
  %call8 = call ptr @acpi_fetch_acpi_dev(ptr noundef %11) #17, !dbg !3091
  store ptr %call8, ptr %device, align 8, !dbg !3092
  %12 = load ptr, ptr %device, align 8, !dbg !3093
  %tobool9 = icmp ne ptr %12, null, !dbg !3093
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3095

if.then10:                                        ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !3096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3096

if.end11:                                         ; preds = %if.end7
  %13 = load ptr, ptr %args.addr, align 8, !dbg !3097
  %tobool12 = icmp ne ptr %13, null, !dbg !3097
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3099

if.then13:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !3100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3100

if.end14:                                         ; preds = %if.end11
  %14 = load ptr, ptr %device, align 8, !dbg !3101
  %call15 = call ptr @acpi_fwnode_handle(ptr noundef %14) #17, !dbg !3102
  %15 = load ptr, ptr %args.addr, align 8, !dbg !3103
  %fwnode16 = getelementptr inbounds %struct.fwnode_reference_args, ptr %15, i32 0, i32 0, !dbg !3104
  store ptr %call15, ptr %fwnode16, align 8, !dbg !3105
  %16 = load ptr, ptr %args.addr, align 8, !dbg !3106
  %nargs = getelementptr inbounds %struct.fwnode_reference_args, ptr %16, i32 0, i32 1, !dbg !3107
  store i32 0, ptr %nargs, align 8, !dbg !3108
  store i32 0, ptr %retval, align 4, !dbg !3109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3109

sw.default:                                       ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !3110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3110

sw.epilog:                                        ; preds = %if.end4
  %17 = load i64, ptr %index.addr, align 8, !dbg !3111
  %18 = load ptr, ptr %obj, align 8, !dbg !3113
  %count = getelementptr inbounds %struct.anon.7, ptr %18, i32 0, i32 1, !dbg !3114
  %19 = load i32, ptr %count, align 4, !dbg !3114
  %conv = zext i32 %19 to i64, !dbg !3113
  %cmp17 = icmp uge i64 %17, %conv, !dbg !3115
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !3116

if.then19:                                        ; preds = %sw.epilog
  store i32 -2, ptr %retval, align 4, !dbg !3117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3117

if.end20:                                         ; preds = %sw.epilog
  %20 = load ptr, ptr %obj, align 8, !dbg !3118
  %elements = getelementptr inbounds %struct.anon.7, ptr %20, i32 0, i32 2, !dbg !3119
  %21 = load ptr, ptr %elements, align 8, !dbg !3119
  store ptr %21, ptr %element, align 8, !dbg !3120
  %22 = load ptr, ptr %element, align 8, !dbg !3121
  %23 = load ptr, ptr %obj, align 8, !dbg !3122
  %count21 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, !dbg !3123
  %24 = load i32, ptr %count21, align 4, !dbg !3123
  %idx.ext = zext i32 %24 to i64, !dbg !3124
  %add.ptr = getelementptr %union.acpi_object, ptr %22, i64 %idx.ext, !dbg !3124
  store ptr %add.ptr, ptr %end, align 8, !dbg !3125
  br label %while.cond, !dbg !3126

while.cond:                                       ; preds = %sw.epilog53, %if.end20
  %25 = load ptr, ptr %element, align 8, !dbg !3127
  %26 = load ptr, ptr %end, align 8, !dbg !3128
  %cmp22 = icmp ult ptr %25, %26, !dbg !3129
  br i1 %cmp22, label %while.body, label %while.end, !dbg !3126

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %element, align 8, !dbg !3130
  %28 = load i32, ptr %27, align 8, !dbg !3132
  switch i32 %28, label %sw.default52 [
    i32 20, label %sw.bb24
    i32 1, label %sw.bb45
  ], !dbg !3133

sw.bb24:                                          ; preds = %while.body
  %29 = load ptr, ptr %element, align 8, !dbg !3134
  %handle25 = getelementptr inbounds %struct.anon.8, ptr %29, i32 0, i32 2, !dbg !3136
  %30 = load ptr, ptr %handle25, align 8, !dbg !3136
  %call26 = call ptr @acpi_fetch_acpi_dev(ptr noundef %30) #17, !dbg !3137
  store ptr %call26, ptr %device, align 8, !dbg !3138
  %31 = load ptr, ptr %device, align 8, !dbg !3139
  %tobool27 = icmp ne ptr %31, null, !dbg !3139
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !3141

if.then28:                                        ; preds = %sw.bb24
  store i32 -22, ptr %retval, align 4, !dbg !3142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3142

if.end29:                                         ; preds = %sw.bb24
  %32 = load ptr, ptr %element, align 8, !dbg !3143
  %incdec.ptr = getelementptr %union.acpi_object, ptr %32, i32 1, !dbg !3143
  store ptr %incdec.ptr, ptr %element, align 8, !dbg !3143
  %33 = load i32, ptr %idx, align 4, !dbg !3144
  %conv30 = sext i32 %33 to i64, !dbg !3144
  %34 = load i64, ptr %index.addr, align 8, !dbg !3145
  %cmp31 = icmp eq i64 %conv30, %34, !dbg !3146
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !3144

cond.true:                                        ; preds = %if.end29
  %35 = load ptr, ptr %args.addr, align 8, !dbg !3147
  br label %cond.end, !dbg !3144

cond.false:                                       ; preds = %if.end29
  br label %cond.end, !dbg !3144

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond33 = phi ptr [ %35, %cond.true ], [ null, %cond.false ], !dbg !3144
  %36 = load ptr, ptr %device, align 8, !dbg !3148
  %call34 = call ptr @acpi_fwnode_handle(ptr noundef %36) #17, !dbg !3149
  %37 = load ptr, ptr %end, align 8, !dbg !3150
  %38 = load i64, ptr %num_args.addr, align 8, !dbg !3151
  %call35 = call i32 @acpi_get_ref_args(ptr noundef %cond33, ptr noundef %call34, ptr noundef %element, ptr noundef %37, i64 noundef %38) #17, !dbg !3152
  store i32 %call35, ptr %ret, align 4, !dbg !3153
  %39 = load i32, ptr %ret, align 4, !dbg !3154
  %cmp36 = icmp slt i32 %39, 0, !dbg !3156
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !3157

if.then38:                                        ; preds = %cond.end
  %40 = load i32, ptr %ret, align 4, !dbg !3158
  store i32 %40, ptr %retval, align 4, !dbg !3159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3159

if.end39:                                         ; preds = %cond.end
  %41 = load i32, ptr %idx, align 4, !dbg !3160
  %conv40 = sext i32 %41 to i64, !dbg !3160
  %42 = load i64, ptr %index.addr, align 8, !dbg !3162
  %cmp41 = icmp eq i64 %conv40, %42, !dbg !3163
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !3164

if.then43:                                        ; preds = %if.end39
  store i32 0, ptr %retval, align 4, !dbg !3165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3165

if.end44:                                         ; preds = %if.end39
  br label %sw.epilog53, !dbg !3166

sw.bb45:                                          ; preds = %while.body
  %43 = load i32, ptr %idx, align 4, !dbg !3167
  %conv46 = sext i32 %43 to i64, !dbg !3167
  %44 = load i64, ptr %index.addr, align 8, !dbg !3169
  %cmp47 = icmp eq i64 %conv46, %44, !dbg !3170
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !3171

if.then49:                                        ; preds = %sw.bb45
  store i32 -2, ptr %retval, align 4, !dbg !3172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3172

if.end50:                                         ; preds = %sw.bb45
  %45 = load ptr, ptr %element, align 8, !dbg !3173
  %incdec.ptr51 = getelementptr %union.acpi_object, ptr %45, i32 1, !dbg !3173
  store ptr %incdec.ptr51, ptr %element, align 8, !dbg !3173
  br label %sw.epilog53, !dbg !3174

sw.default52:                                     ; preds = %while.body
  store i32 -22, ptr %retval, align 4, !dbg !3175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3175

sw.epilog53:                                      ; preds = %if.end50, %if.end44
  %46 = load i32, ptr %idx, align 4, !dbg !3176
  %inc = add i32 %46, 1, !dbg !3176
  store i32 %inc, ptr %idx, align 4, !dbg !3176
  br label %while.cond, !dbg !3126, !llvm.loop !3177

while.end:                                        ; preds = %while.cond
  store i32 -2, ptr %retval, align 4, !dbg !3179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3179

cleanup:                                          ; preds = %while.end, %sw.default52, %if.then49, %if.then43, %if.then38, %if.then28, %if.then19, %sw.default, %if.end14, %if.then13, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #15, !dbg !3180
  %47 = load i32, ptr %retval, align 4, !dbg !3180
  ret i32 %47, !dbg !3180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3181 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_get_ref_args(ptr noundef %args, ptr noundef %ref_fwnode, ptr noundef %element, ptr noundef %end, i64 noundef %num_args) #0 align 16 !dbg !3184 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  %ref_fwnode.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %num_args.addr = alloca i64, align 8
  %nargs = alloca i32, align 4
  %i = alloca i32, align 4
  %child_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %type = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !3188, metadata !DIExpression()), !dbg !3203
  store ptr %ref_fwnode, ptr %ref_fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref_fwnode.addr, metadata !3189, metadata !DIExpression()), !dbg !3204
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !3190, metadata !DIExpression()), !dbg !3205
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3191, metadata !DIExpression()), !dbg !3206
  store i64 %num_args, ptr %num_args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_args.addr, metadata !3192, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 4, ptr %nargs) #15, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %nargs, metadata !3193, metadata !DIExpression()), !dbg !3209
  store i32 0, ptr %nargs, align 4, !dbg !3209
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3194, metadata !DIExpression()), !dbg !3210
  br label %for.cond, !dbg !3211

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %element.addr, align 8, !dbg !3212
  %1 = load ptr, ptr %0, align 8, !dbg !3213
  %2 = load ptr, ptr %end.addr, align 8, !dbg !3214
  %cmp = icmp ult ptr %1, %2, !dbg !3215
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3216

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %element.addr, align 8, !dbg !3217
  %4 = load ptr, ptr %3, align 8, !dbg !3218
  %5 = load i32, ptr %4, align 8, !dbg !3219
  %cmp1 = icmp eq i32 %5, 2, !dbg !3220
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !3221
  br i1 %6, label %for.body, label %for.end, !dbg !3222

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_name) #15, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %child_name, metadata !3195, metadata !DIExpression()), !dbg !3224
  %7 = load ptr, ptr %element.addr, align 8, !dbg !3225
  %8 = load ptr, ptr %7, align 8, !dbg !3226
  %pointer = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 2, !dbg !3227
  %9 = load ptr, ptr %pointer, align 8, !dbg !3227
  store ptr %9, ptr %child_name, align 8, !dbg !3224
  %10 = load ptr, ptr %ref_fwnode.addr, align 8, !dbg !3228
  %11 = load ptr, ptr %child_name, align 8, !dbg !3229
  %call = call ptr @acpi_fwnode_get_named_child_node(ptr noundef %10, ptr noundef %11) #17, !dbg !3230
  store ptr %call, ptr %ref_fwnode.addr, align 8, !dbg !3231
  %12 = load ptr, ptr %ref_fwnode.addr, align 8, !dbg !3232
  %tobool = icmp ne ptr %12, null, !dbg !3232
  br i1 %tobool, label %if.end, label %if.then, !dbg !3234

if.then:                                          ; preds = %for.body
  store i32 -22, ptr %retval, align 4, !dbg !3235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3235

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3236
  br label %cleanup, !dbg !3236

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_name) #15, !dbg !3236
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3237

for.inc:                                          ; preds = %cleanup.cont
  %13 = load ptr, ptr %element.addr, align 8, !dbg !3238
  %14 = load ptr, ptr %13, align 8, !dbg !3239
  %incdec.ptr = getelementptr %union.acpi_object, ptr %14, i32 1, !dbg !3239
  store ptr %incdec.ptr, ptr %13, align 8, !dbg !3239
  br label %for.cond, !dbg !3240, !llvm.loop !3241

for.end:                                          ; preds = %land.end
  store i32 0, ptr %i, align 4, !dbg !3243
  br label %for.cond2, !dbg !3244

for.cond2:                                        ; preds = %for.inc20, %for.end
  %15 = load ptr, ptr %element.addr, align 8, !dbg !3245
  %16 = load ptr, ptr %15, align 8, !dbg !3246
  %17 = load i32, ptr %i, align 4, !dbg !3247
  %idx.ext = zext i32 %17 to i64, !dbg !3248
  %add.ptr = getelementptr %union.acpi_object, ptr %16, i64 %idx.ext, !dbg !3248
  %18 = load ptr, ptr %end.addr, align 8, !dbg !3249
  %cmp3 = icmp ult ptr %add.ptr, %18, !dbg !3250
  br i1 %cmp3, label %land.rhs4, label %land.end7, !dbg !3251

land.rhs4:                                        ; preds = %for.cond2
  %19 = load i32, ptr %i, align 4, !dbg !3252
  %conv = zext i32 %19 to i64, !dbg !3252
  %20 = load i64, ptr %num_args.addr, align 8, !dbg !3253
  %cmp5 = icmp ult i64 %conv, %20, !dbg !3254
  br label %land.end7

land.end7:                                        ; preds = %land.rhs4, %for.cond2
  %21 = phi i1 [ false, %for.cond2 ], [ %cmp5, %land.rhs4 ], !dbg !3255
  br i1 %21, label %for.body8, label %for.end22, !dbg !3256

for.body8:                                        ; preds = %land.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !3257
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3199, metadata !DIExpression()), !dbg !3258
  %22 = load ptr, ptr %element.addr, align 8, !dbg !3259
  %23 = load ptr, ptr %22, align 8, !dbg !3260
  %24 = load i32, ptr %i, align 4, !dbg !3261
  %idxprom = zext i32 %24 to i64, !dbg !3262
  %arrayidx = getelementptr %union.acpi_object, ptr %23, i64 %idxprom, !dbg !3262
  %25 = load i32, ptr %arrayidx, align 8, !dbg !3263
  store i32 %25, ptr %type, align 4, !dbg !3258
  %26 = load i32, ptr %type, align 4, !dbg !3264
  %cmp9 = icmp eq i32 %26, 20, !dbg !3266
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !3267

if.then11:                                        ; preds = %for.body8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !3268

if.end12:                                         ; preds = %for.body8
  %27 = load i32, ptr %type, align 4, !dbg !3269
  %cmp13 = icmp eq i32 %27, 1, !dbg !3271
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !3272

if.then15:                                        ; preds = %if.end12
  %28 = load i32, ptr %nargs, align 4, !dbg !3273
  %inc = add i32 %28, 1, !dbg !3273
  store i32 %inc, ptr %nargs, align 4, !dbg !3273
  br label %if.end16, !dbg !3274

if.else:                                          ; preds = %if.end12
  store i32 -22, ptr %retval, align 4, !dbg !3275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !3275

if.end16:                                         ; preds = %if.then15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3276
  br label %cleanup17, !dbg !3276

cleanup17:                                        ; preds = %if.end16, %if.else, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !3276
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %cleanup45 [
    i32 0, label %cleanup.cont19
    i32 5, label %for.end22
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  br label %for.inc20, !dbg !3277

for.inc20:                                        ; preds = %cleanup.cont19
  %29 = load i32, ptr %i, align 4, !dbg !3278
  %inc21 = add i32 %29, 1, !dbg !3278
  store i32 %inc21, ptr %i, align 4, !dbg !3278
  br label %for.cond2, !dbg !3279, !llvm.loop !3280

for.end22:                                        ; preds = %cleanup17, %land.end7
  %30 = load i32, ptr %nargs, align 4, !dbg !3282
  %cmp23 = icmp ugt i32 %30, 8, !dbg !3284
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3285

if.then25:                                        ; preds = %for.end22
  store i32 -22, ptr %retval, align 4, !dbg !3286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !3286

if.end26:                                         ; preds = %for.end22
  %31 = load ptr, ptr %args.addr, align 8, !dbg !3287
  %tobool27 = icmp ne ptr %31, null, !dbg !3287
  br i1 %tobool27, label %if.then28, label %if.end42, !dbg !3289

if.then28:                                        ; preds = %if.end26
  %32 = load ptr, ptr %ref_fwnode.addr, align 8, !dbg !3290
  %33 = load ptr, ptr %args.addr, align 8, !dbg !3292
  %fwnode = getelementptr inbounds %struct.fwnode_reference_args, ptr %33, i32 0, i32 0, !dbg !3293
  store ptr %32, ptr %fwnode, align 8, !dbg !3294
  %34 = load i32, ptr %nargs, align 4, !dbg !3295
  %35 = load ptr, ptr %args.addr, align 8, !dbg !3296
  %nargs29 = getelementptr inbounds %struct.fwnode_reference_args, ptr %35, i32 0, i32 1, !dbg !3297
  store i32 %34, ptr %nargs29, align 8, !dbg !3298
  store i32 0, ptr %i, align 4, !dbg !3299
  br label %for.cond30, !dbg !3301

for.cond30:                                       ; preds = %for.inc39, %if.then28
  %36 = load i32, ptr %i, align 4, !dbg !3302
  %37 = load i32, ptr %nargs, align 4, !dbg !3304
  %cmp31 = icmp ult i32 %36, %37, !dbg !3305
  br i1 %cmp31, label %for.body33, label %for.end41, !dbg !3306

for.body33:                                       ; preds = %for.cond30
  %38 = load ptr, ptr %element.addr, align 8, !dbg !3307
  %39 = load ptr, ptr %38, align 8, !dbg !3308
  %40 = load i32, ptr %i, align 4, !dbg !3309
  %idxprom34 = zext i32 %40 to i64, !dbg !3310
  %arrayidx35 = getelementptr %union.acpi_object, ptr %39, i64 %idxprom34, !dbg !3310
  %value = getelementptr inbounds %struct.anon.4, ptr %arrayidx35, i32 0, i32 1, !dbg !3311
  %41 = load i64, ptr %value, align 8, !dbg !3311
  %42 = load ptr, ptr %args.addr, align 8, !dbg !3312
  %args36 = getelementptr inbounds %struct.fwnode_reference_args, ptr %42, i32 0, i32 2, !dbg !3313
  %43 = load i32, ptr %i, align 4, !dbg !3314
  %idxprom37 = zext i32 %43 to i64, !dbg !3312
  %arrayidx38 = getelementptr [8 x i64], ptr %args36, i64 0, i64 %idxprom37, !dbg !3312
  store i64 %41, ptr %arrayidx38, align 8, !dbg !3315
  br label %for.inc39, !dbg !3312

for.inc39:                                        ; preds = %for.body33
  %44 = load i32, ptr %i, align 4, !dbg !3316
  %inc40 = add i32 %44, 1, !dbg !3316
  store i32 %inc40, ptr %i, align 4, !dbg !3316
  br label %for.cond30, !dbg !3317, !llvm.loop !3318

for.end41:                                        ; preds = %for.cond30
  br label %if.end42, !dbg !3320

if.end42:                                         ; preds = %for.end41, %if.end26
  %45 = load i32, ptr %nargs, align 4, !dbg !3321
  %46 = load ptr, ptr %element.addr, align 8, !dbg !3322
  %47 = load ptr, ptr %46, align 8, !dbg !3323
  %idx.ext43 = zext i32 %45 to i64, !dbg !3323
  %add.ptr44 = getelementptr %union.acpi_object, ptr %47, i64 %idx.ext43, !dbg !3323
  store ptr %add.ptr44, ptr %46, align 8, !dbg !3323
  store i32 0, ptr %retval, align 4, !dbg !3324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !3324

cleanup45:                                        ; preds = %if.end42, %if.then25, %cleanup17, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3325
  call void @llvm.lifetime.end.p0(i64 4, ptr %nargs) #15, !dbg !3325
  %48 = load i32, ptr %retval, align 4, !dbg !3325
  ret i32 %48, !dbg !3325
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_get_next_subnode(ptr noundef %fwnode, ptr noundef %child) #0 align 16 !dbg !3326 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %child_adev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %data = alloca ptr, align 8
  %__to_acpi_data_node_fwnode = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %__to_acpi_device_node_fwnode32 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  %__mptr36 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  %__to_acpi_data_node_fwnode58 = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  %__mptr62 = alloca ptr, align 8
  %tmp63 = alloca ptr, align 8
  %__mptr71 = alloca ptr, align 8
  %tmp72 = alloca ptr, align 8
  %__mptr75 = alloca ptr, align 8
  %tmp77 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3328, metadata !DIExpression()), !dbg !3369
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !3329, metadata !DIExpression()), !dbg !3370
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !3371
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3330, metadata !DIExpression()), !dbg !3372
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3373
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3331, metadata !DIExpression()), !dbg !3373
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3373
  store ptr %0, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3373
  %1 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3373
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %1) #17, !dbg !3373
  br i1 %call, label %cond.true, label %cond.false, !dbg !3373

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3374
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3333, metadata !DIExpression()), !dbg !3374
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3374
  store ptr %2, ptr %__mptr, align 8, !dbg !3374
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3374
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !3374
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3373
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3374
  br label %cond.end, !dbg !3373

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3373

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3373
  store ptr %cond, ptr %tmp, align 8, !dbg !3373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3375
  %5 = load ptr, ptr %tmp, align 8, !dbg !3373
  store ptr %5, ptr %adev, align 8, !dbg !3372
  %6 = load ptr, ptr %child.addr, align 8, !dbg !3376
  %tobool = icmp ne ptr %6, null, !dbg !3376
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !3377

lor.lhs.false:                                    ; preds = %cond.end
  %7 = load ptr, ptr %child.addr, align 8, !dbg !3378
  %call2 = call zeroext i1 @is_acpi_device_node(ptr noundef %7) #17, !dbg !3379
  br i1 %call2, label %land.lhs.true, label %if.end18, !dbg !3380

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.end
  %8 = load ptr, ptr %adev, align 8, !dbg !3381
  %tobool3 = icmp ne ptr %8, null, !dbg !3381
  br i1 %tobool3, label %if.then, label %if.end18, !dbg !3382

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_adev) #15, !dbg !3383
  call void @llvm.dbg.declare(metadata ptr %child_adev, metadata !3335, metadata !DIExpression()), !dbg !3384
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode4) #15, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode4, metadata !3338, metadata !DIExpression()), !dbg !3385
  %9 = load ptr, ptr %child.addr, align 8, !dbg !3385
  store ptr %9, ptr %__to_acpi_device_node_fwnode4, align 8, !dbg !3385
  %10 = load ptr, ptr %__to_acpi_device_node_fwnode4, align 8, !dbg !3385
  %call6 = call zeroext i1 @is_acpi_device_node(ptr noundef %10) #17, !dbg !3385
  br i1 %call6, label %cond.true7, label %cond.false11, !dbg !3385

cond.true7:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #15, !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !3340, metadata !DIExpression()), !dbg !3386
  %11 = load ptr, ptr %__to_acpi_device_node_fwnode4, align 8, !dbg !3386
  store ptr %11, ptr %__mptr8, align 8, !dbg !3386
  %12 = load ptr, ptr %__mptr8, align 8, !dbg !3386
  %add.ptr10 = getelementptr i8, ptr %12, i64 -16, !dbg !3386
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !3386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #15, !dbg !3385
  %13 = load ptr, ptr %tmp9, align 8, !dbg !3386
  br label %cond.end12, !dbg !3385

cond.false11:                                     ; preds = %if.then
  br label %cond.end12, !dbg !3385

cond.end12:                                       ; preds = %cond.false11, %cond.true7
  %cond13 = phi ptr [ %13, %cond.true7 ], [ null, %cond.false11 ], !dbg !3385
  store ptr %cond13, ptr %tmp5, align 8, !dbg !3385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode4) #15, !dbg !3387
  %14 = load ptr, ptr %tmp5, align 8, !dbg !3385
  store ptr %14, ptr %child_adev, align 8, !dbg !3384
  %15 = load ptr, ptr %adev, align 8, !dbg !3388
  %call14 = call i32 @acpi_dev_for_each_child(ptr noundef %15, ptr noundef @stop_on_next, ptr noundef %child_adev) #17, !dbg !3389
  %16 = load ptr, ptr %child_adev, align 8, !dbg !3390
  %tobool15 = icmp ne ptr %16, null, !dbg !3390
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !3392

if.then16:                                        ; preds = %cond.end12
  %17 = load ptr, ptr %child_adev, align 8, !dbg !3393
  %call17 = call ptr @acpi_fwnode_handle(ptr noundef %17) #17, !dbg !3394
  store ptr %call17, ptr %retval, align 8, !dbg !3395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3395

if.end:                                           ; preds = %cond.end12
  store ptr null, ptr %child.addr, align 8, !dbg !3396
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3397
  br label %cleanup, !dbg !3397

cleanup:                                          ; preds = %if.end, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_adev) #15, !dbg !3397
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup86 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18, !dbg !3398

if.end18:                                         ; preds = %cleanup.cont, %land.lhs.true, %lor.lhs.false
  %18 = load ptr, ptr %child.addr, align 8, !dbg !3399
  %tobool19 = icmp ne ptr %18, null, !dbg !3399
  br i1 %tobool19, label %lor.lhs.false20, label %if.then22, !dbg !3400

lor.lhs.false20:                                  ; preds = %if.end18
  %19 = load ptr, ptr %child.addr, align 8, !dbg !3401
  %call21 = call zeroext i1 @is_acpi_data_node(ptr noundef %19) #17, !dbg !3402
  br i1 %call21, label %if.then22, label %if.end85, !dbg !3403

if.then22:                                        ; preds = %lor.lhs.false20, %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !3404
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3342, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode, metadata !3345, metadata !DIExpression()), !dbg !3406
  %20 = load ptr, ptr %fwnode.addr, align 8, !dbg !3406
  store ptr %20, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3406
  %21 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3406
  %call24 = call zeroext i1 @is_acpi_data_node(ptr noundef %21) #17, !dbg !3406
  br i1 %call24, label %cond.true25, label %cond.false29, !dbg !3406

cond.true25:                                      ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #15, !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !3347, metadata !DIExpression()), !dbg !3407
  %22 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3407
  store ptr %22, ptr %__mptr26, align 8, !dbg !3407
  %23 = load ptr, ptr %__mptr26, align 8, !dbg !3407
  %add.ptr28 = getelementptr i8, ptr %23, i64 -16, !dbg !3407
  store ptr %add.ptr28, ptr %tmp27, align 8, !dbg !3407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #15, !dbg !3406
  %24 = load ptr, ptr %tmp27, align 8, !dbg !3407
  br label %cond.end30, !dbg !3406

cond.false29:                                     ; preds = %if.then22
  br label %cond.end30, !dbg !3406

cond.end30:                                       ; preds = %cond.false29, %cond.true25
  %cond31 = phi ptr [ %24, %cond.true25 ], [ null, %cond.false29 ], !dbg !3406
  store ptr %cond31, ptr %tmp23, align 8, !dbg !3406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3408
  %25 = load ptr, ptr %tmp23, align 8, !dbg !3406
  store ptr %25, ptr %data, align 8, !dbg !3405
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #15, !dbg !3409
  call void @llvm.dbg.declare(metadata ptr %head, metadata !3349, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !3411
  call void @llvm.dbg.declare(metadata ptr %next, metadata !3352, metadata !DIExpression()), !dbg !3412
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !3353, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode32) #15, !dbg !3415
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode32, metadata !3354, metadata !DIExpression()), !dbg !3415
  %26 = load ptr, ptr %fwnode.addr, align 8, !dbg !3415
  store ptr %26, ptr %__to_acpi_device_node_fwnode32, align 8, !dbg !3415
  %27 = load ptr, ptr %__to_acpi_device_node_fwnode32, align 8, !dbg !3415
  %call34 = call zeroext i1 @is_acpi_device_node(ptr noundef %27) #17, !dbg !3415
  br i1 %call34, label %cond.true35, label %cond.false39, !dbg !3415

cond.true35:                                      ; preds = %cond.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr36) #15, !dbg !3416
  call void @llvm.dbg.declare(metadata ptr %__mptr36, metadata !3356, metadata !DIExpression()), !dbg !3416
  %28 = load ptr, ptr %__to_acpi_device_node_fwnode32, align 8, !dbg !3416
  store ptr %28, ptr %__mptr36, align 8, !dbg !3416
  %29 = load ptr, ptr %__mptr36, align 8, !dbg !3416
  %add.ptr38 = getelementptr i8, ptr %29, i64 -16, !dbg !3416
  store ptr %add.ptr38, ptr %tmp37, align 8, !dbg !3416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr36) #15, !dbg !3415
  %30 = load ptr, ptr %tmp37, align 8, !dbg !3416
  br label %cond.end40, !dbg !3415

cond.false39:                                     ; preds = %cond.end30
  br label %cond.end40, !dbg !3415

cond.end40:                                       ; preds = %cond.false39, %cond.true35
  %cond41 = phi ptr [ %30, %cond.true35 ], [ null, %cond.false39 ], !dbg !3415
  store ptr %cond41, ptr %tmp33, align 8, !dbg !3415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode32) #15, !dbg !3417
  %31 = load ptr, ptr %tmp33, align 8, !dbg !3415
  store ptr %31, ptr %adev, align 8, !dbg !3418
  %32 = load ptr, ptr %adev, align 8, !dbg !3419
  %tobool42 = icmp ne ptr %32, null, !dbg !3419
  br i1 %tobool42, label %if.then43, label %if.else, !dbg !3421

if.then43:                                        ; preds = %cond.end40
  %33 = load ptr, ptr %adev, align 8, !dbg !3422
  %data44 = getelementptr inbounds %struct.acpi_device, ptr %33, i32 0, i32 13, !dbg !3423
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %data44, i32 0, i32 3, !dbg !3424
  store ptr %subnodes, ptr %head, align 8, !dbg !3425
  br label %if.end51, !dbg !3426

if.else:                                          ; preds = %cond.end40
  %34 = load ptr, ptr %data, align 8, !dbg !3427
  %tobool45 = icmp ne ptr %34, null, !dbg !3427
  br i1 %tobool45, label %if.then46, label %if.else49, !dbg !3429

if.then46:                                        ; preds = %if.else
  %35 = load ptr, ptr %data, align 8, !dbg !3430
  %data47 = getelementptr inbounds %struct.acpi_data_node, ptr %35, i32 0, i32 4, !dbg !3431
  %subnodes48 = getelementptr inbounds %struct.acpi_device_data, ptr %data47, i32 0, i32 3, !dbg !3432
  store ptr %subnodes48, ptr %head, align 8, !dbg !3433
  br label %if.end50, !dbg !3434

if.else49:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !3435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !3435

if.end50:                                         ; preds = %if.then46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then43
  %36 = load ptr, ptr %head, align 8, !dbg !3436
  %call52 = call i32 @list_empty(ptr noundef %36) #17, !dbg !3438
  %tobool53 = icmp ne i32 %call52, 0, !dbg !3438
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !3439

if.then54:                                        ; preds = %if.end51
  store ptr null, ptr %retval, align 8, !dbg !3440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !3440

if.end55:                                         ; preds = %if.end51
  %37 = load ptr, ptr %child.addr, align 8, !dbg !3441
  %tobool56 = icmp ne ptr %37, null, !dbg !3441
  br i1 %tobool56, label %if.then57, label %if.else74, !dbg !3442

if.then57:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode58) #15, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode58, metadata !3358, metadata !DIExpression()), !dbg !3443
  %38 = load ptr, ptr %child.addr, align 8, !dbg !3443
  store ptr %38, ptr %__to_acpi_data_node_fwnode58, align 8, !dbg !3443
  %39 = load ptr, ptr %__to_acpi_data_node_fwnode58, align 8, !dbg !3443
  %call60 = call zeroext i1 @is_acpi_data_node(ptr noundef %39) #17, !dbg !3443
  br i1 %call60, label %cond.true61, label %cond.false65, !dbg !3443

cond.true61:                                      ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr62) #15, !dbg !3444
  call void @llvm.dbg.declare(metadata ptr %__mptr62, metadata !3362, metadata !DIExpression()), !dbg !3444
  %40 = load ptr, ptr %__to_acpi_data_node_fwnode58, align 8, !dbg !3444
  store ptr %40, ptr %__mptr62, align 8, !dbg !3444
  %41 = load ptr, ptr %__mptr62, align 8, !dbg !3444
  %add.ptr64 = getelementptr i8, ptr %41, i64 -16, !dbg !3444
  store ptr %add.ptr64, ptr %tmp63, align 8, !dbg !3444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr62) #15, !dbg !3443
  %42 = load ptr, ptr %tmp63, align 8, !dbg !3444
  br label %cond.end66, !dbg !3443

cond.false65:                                     ; preds = %if.then57
  br label %cond.end66, !dbg !3443

cond.end66:                                       ; preds = %cond.false65, %cond.true61
  %cond67 = phi ptr [ %42, %cond.true61 ], [ null, %cond.false65 ], !dbg !3443
  store ptr %cond67, ptr %tmp59, align 8, !dbg !3443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode58) #15, !dbg !3445
  %43 = load ptr, ptr %tmp59, align 8, !dbg !3443
  store ptr %43, ptr %dn, align 8, !dbg !3446
  %44 = load ptr, ptr %dn, align 8, !dbg !3447
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %44, i32 0, i32 5, !dbg !3448
  %next68 = getelementptr inbounds %struct.list_head, ptr %sibling, i32 0, i32 0, !dbg !3449
  %45 = load ptr, ptr %next68, align 8, !dbg !3449
  store ptr %45, ptr %next, align 8, !dbg !3450
  %46 = load ptr, ptr %next, align 8, !dbg !3451
  %47 = load ptr, ptr %head, align 8, !dbg !3453
  %cmp = icmp eq ptr %46, %47, !dbg !3454
  br i1 %cmp, label %if.then69, label %if.end70, !dbg !3455

if.then69:                                        ; preds = %cond.end66
  store ptr null, ptr %retval, align 8, !dbg !3456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !3456

if.end70:                                         ; preds = %cond.end66
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr71) #15, !dbg !3457
  call void @llvm.dbg.declare(metadata ptr %__mptr71, metadata !3364, metadata !DIExpression()), !dbg !3457
  %48 = load ptr, ptr %next, align 8, !dbg !3457
  store ptr %48, ptr %__mptr71, align 8, !dbg !3457
  %49 = load ptr, ptr %__mptr71, align 8, !dbg !3457
  %add.ptr73 = getelementptr i8, ptr %49, i64 -136, !dbg !3457
  store ptr %add.ptr73, ptr %tmp72, align 8, !dbg !3457
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr71) #15, !dbg !3458
  %50 = load ptr, ptr %tmp72, align 8, !dbg !3457
  store ptr %50, ptr %dn, align 8, !dbg !3459
  br label %if.end79, !dbg !3460

if.else74:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr75) #15, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %__mptr75, metadata !3366, metadata !DIExpression()), !dbg !3461
  %51 = load ptr, ptr %head, align 8, !dbg !3461
  %next76 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 0, !dbg !3461
  %52 = load ptr, ptr %next76, align 8, !dbg !3461
  store ptr %52, ptr %__mptr75, align 8, !dbg !3461
  %53 = load ptr, ptr %__mptr75, align 8, !dbg !3461
  %add.ptr78 = getelementptr i8, ptr %53, i64 -136, !dbg !3461
  store ptr %add.ptr78, ptr %tmp77, align 8, !dbg !3461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr75) #15, !dbg !3462
  %54 = load ptr, ptr %tmp77, align 8, !dbg !3461
  store ptr %54, ptr %dn, align 8, !dbg !3463
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.end70
  %55 = load ptr, ptr %dn, align 8, !dbg !3464
  %fwnode80 = getelementptr inbounds %struct.acpi_data_node, ptr %55, i32 0, i32 2, !dbg !3465
  store ptr %fwnode80, ptr %retval, align 8, !dbg !3466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !3466

cleanup81:                                        ; preds = %if.end79, %if.then69, %if.then54, %if.else49
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !3467
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !3467
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #15, !dbg !3467
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !3467
  br label %cleanup86

if.end85:                                         ; preds = %lor.lhs.false20
  store ptr null, ptr %retval, align 8, !dbg !3468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !3468

cleanup86:                                        ; preds = %if.end85, %cleanup81, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !3469
  %56 = load ptr, ptr %retval, align 8, !dbg !3469
  ret ptr %56, !dbg !3469
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @is_acpi_device_node(ptr noundef %fwnode) #0 align 16 !dbg !3470 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3472, metadata !DIExpression()), !dbg !3473
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3474
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !3475
  br i1 %call, label %land.end, label %land.rhs, !dbg !3476

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3477
  %ops = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1, !dbg !3478
  %2 = load ptr, ptr %ops, align 8, !dbg !3478
  %cmp = icmp eq ptr %2, @acpi_device_fwnode_ops, !dbg !3479
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !3480
  ret i1 %3, !dbg !3481
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3482 dso_local i32 @acpi_dev_for_each_child(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @stop_on_next(ptr noundef %adev, ptr noundef %data) #0 align 16 !dbg !3488 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ret_p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3490, metadata !DIExpression()), !dbg !3494
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3491, metadata !DIExpression()), !dbg !3495
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_p) #15, !dbg !3496
  call void @llvm.dbg.declare(metadata ptr %ret_p, metadata !3492, metadata !DIExpression()), !dbg !3497
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3498
  store ptr %0, ptr %ret_p, align 8, !dbg !3497
  %1 = load ptr, ptr %ret_p, align 8, !dbg !3499
  %2 = load ptr, ptr %1, align 8, !dbg !3501
  %tobool = icmp ne ptr %2, null, !dbg !3501
  br i1 %tobool, label %if.end, label %if.then, !dbg !3502

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %adev.addr, align 8, !dbg !3503
  %4 = load ptr, ptr %ret_p, align 8, !dbg !3505
  store ptr %3, ptr %4, align 8, !dbg !3506
  store i32 1, ptr %retval, align 4, !dbg !3507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3507

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ret_p, align 8, !dbg !3508
  %6 = load ptr, ptr %5, align 8, !dbg !3510
  %7 = load ptr, ptr %adev.addr, align 8, !dbg !3511
  %cmp = icmp eq ptr %6, %7, !dbg !3512
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3513

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %ret_p, align 8, !dbg !3514
  store ptr null, ptr %8, align 8, !dbg !3515
  br label %if.end2, !dbg !3516

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3517

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_p) #15, !dbg !3518
  %9 = load i32, ptr %retval, align 4, !dbg !3518
  ret i32 %9, !dbg !3518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @is_acpi_data_node(ptr noundef %fwnode) #0 align 16 !dbg !3519 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3521, metadata !DIExpression()), !dbg !3522
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3523
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !3524
  br i1 %call, label %land.end, label %land.rhs, !dbg !3525

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3526
  %ops = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1, !dbg !3527
  %2 = load ptr, ptr %ops, align 8, !dbg !3527
  %cmp = icmp eq ptr %2, @acpi_data_fwnode_ops, !dbg !3528
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !3529
  ret i1 %3, !dbg !3530
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !3531 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3535, metadata !DIExpression()), !dbg !3536
  br label %do.body, !dbg !3537

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3539

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3537
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3537
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3537
  store ptr %1, ptr %tmp, align 8, !dbg !3539
  %2 = load ptr, ptr %tmp, align 8, !dbg !3537
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3541
  %cmp = icmp eq ptr %2, %3, !dbg !3542
  %conv = zext i1 %cmp to i32, !dbg !3542
  ret i32 %conv, !dbg !3543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_fwnode_device_is_available(ptr noundef %fwnode) #0 align 16 !dbg !3544 {
entry:
  %retval = alloca i1, align 1
  %fwnode.addr = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3546, metadata !DIExpression()), !dbg !3551
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3552
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %0) #17, !dbg !3554
  br i1 %call, label %if.end, label %if.then, !dbg !3555

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3556
  br label %return, !dbg !3556

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3557
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3547, metadata !DIExpression()), !dbg !3557
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3557
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3557
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3557
  %call1 = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #17, !dbg !3557
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3557

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3558
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3549, metadata !DIExpression()), !dbg !3558
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3558
  store ptr %3, ptr %__mptr, align 8, !dbg !3558
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3558
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !3558
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3557
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3558
  br label %cond.end, !dbg !3557

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3557

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !3557
  store ptr %cond, ptr %tmp, align 8, !dbg !3557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3559
  %6 = load ptr, ptr %tmp, align 8, !dbg !3557
  %call3 = call zeroext i1 @acpi_device_is_present(ptr noundef %6) #17, !dbg !3560
  store i1 %call3, ptr %retval, align 1, !dbg !3561
  br label %return, !dbg !3561

return:                                           ; preds = %cond.end, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !3562
  ret i1 %7, !dbg !3562
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_device_get_match_data(ptr noundef %fwnode, ptr noundef %dev) #0 align 16 !dbg !3563 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3565, metadata !DIExpression()), !dbg !3567
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3566, metadata !DIExpression()), !dbg !3568
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3569
  %call = call ptr @acpi_device_get_match_data(ptr noundef %0) #17, !dbg !3570
  ret ptr %call, !dbg !3571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_fwnode_device_dma_supported(ptr noundef %fwnode) #0 align 16 !dbg !3572 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3574, metadata !DIExpression()), !dbg !3579
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3575, metadata !DIExpression()), !dbg !3580
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3580
  store ptr %0, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3580
  %1 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3580
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %1) #17, !dbg !3580
  br i1 %call, label %cond.true, label %cond.false, !dbg !3580

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3581
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3577, metadata !DIExpression()), !dbg !3581
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3581
  store ptr %2, ptr %__mptr, align 8, !dbg !3581
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3581
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !3581
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3581
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3580
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3581
  br label %cond.end, !dbg !3580

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3580

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3580
  store ptr %cond, ptr %tmp, align 8, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3582
  %5 = load ptr, ptr %tmp, align 8, !dbg !3580
  %call2 = call zeroext i1 @acpi_dma_supported(ptr noundef %5) #17, !dbg !3583
  ret i1 %call2, !dbg !3584
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fwnode_device_get_dma_attr(ptr noundef %fwnode) #0 align 16 !dbg !3585 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3587, metadata !DIExpression()), !dbg !3592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3593
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3588, metadata !DIExpression()), !dbg !3593
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3593
  store ptr %0, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3593
  %1 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3593
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %1) #17, !dbg !3593
  br i1 %call, label %cond.true, label %cond.false, !dbg !3593

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3594
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3590, metadata !DIExpression()), !dbg !3594
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3594
  store ptr %2, ptr %__mptr, align 8, !dbg !3594
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3594
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !3594
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3593
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3594
  br label %cond.end, !dbg !3593

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3593

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3593
  store ptr %cond, ptr %tmp, align 8, !dbg !3593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3595
  %5 = load ptr, ptr %tmp, align 8, !dbg !3593
  %call2 = call i32 @acpi_get_dma_attr(ptr noundef %5) #17, !dbg !3596
  ret i32 %call2, !dbg !3597
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_fwnode_property_present(ptr noundef %fwnode, ptr noundef %propname) #0 align 16 !dbg !3598 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3600, metadata !DIExpression()), !dbg !3602
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3601, metadata !DIExpression()), !dbg !3603
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3604
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !3605
  %call = call i32 @acpi_node_prop_get(ptr noundef %0, ptr noundef %1, ptr noundef null) #17, !dbg !3606
  %tobool = icmp ne i32 %call, 0, !dbg !3607
  %lnot = xor i1 %tobool, true, !dbg !3607
  ret i1 %lnot, !dbg !3608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fwnode_property_read_int_array(ptr noundef %fwnode, ptr noundef %propname, i32 noundef %elem_size, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !3609 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3611, metadata !DIExpression()), !dbg !3617
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3612, metadata !DIExpression()), !dbg !3618
  store i32 %elem_size, ptr %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %elem_size.addr, metadata !3613, metadata !DIExpression()), !dbg !3619
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3614, metadata !DIExpression()), !dbg !3620
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !3615, metadata !DIExpression()), !dbg !3621
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !3622
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3616, metadata !DIExpression()), !dbg !3623
  %0 = load i32, ptr %elem_size.addr, align 4, !dbg !3624
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
  ], !dbg !3625

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %type, align 4, !dbg !3626
  br label %sw.epilog, !dbg !3628

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %type, align 4, !dbg !3629
  br label %sw.epilog, !dbg !3630

sw.bb2:                                           ; preds = %entry
  store i32 2, ptr %type, align 4, !dbg !3631
  br label %sw.epilog, !dbg !3632

sw.bb3:                                           ; preds = %entry
  store i32 3, ptr %type, align 4, !dbg !3633
  br label %sw.epilog, !dbg !3634

sw.default:                                       ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !3635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3635

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3636
  %2 = load ptr, ptr %propname.addr, align 8, !dbg !3637
  %3 = load i32, ptr %type, align 4, !dbg !3638
  %4 = load ptr, ptr %val.addr, align 8, !dbg !3639
  %5 = load i64, ptr %nval.addr, align 8, !dbg !3640
  %call = call i32 @acpi_node_prop_read(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) #17, !dbg !3641
  store i32 %call, ptr %retval, align 4, !dbg !3642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3642

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !3643
  %6 = load i32, ptr %retval, align 4, !dbg !3643
  ret i32 %6, !dbg !3643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fwnode_property_read_string_array(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !3644 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3646, metadata !DIExpression()), !dbg !3650
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3647, metadata !DIExpression()), !dbg !3651
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3648, metadata !DIExpression()), !dbg !3652
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !3649, metadata !DIExpression()), !dbg !3653
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3654
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !3655
  %2 = load ptr, ptr %val.addr, align 8, !dbg !3656
  %3 = load i64, ptr %nval.addr, align 8, !dbg !3657
  %call = call i32 @acpi_node_prop_read(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef %2, i64 noundef %3) #17, !dbg !3658
  ret i32 %call, !dbg !3659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_get_name(ptr noundef %fwnode) #0 align 16 !dbg !3660 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dn = alloca ptr, align 8
  %__to_acpi_data_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3662, metadata !DIExpression()), !dbg !3682
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !3683
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3663, metadata !DIExpression()), !dbg !3684
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !3685
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3664, metadata !DIExpression()), !dbg !3686
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3687
  %call = call ptr @fwnode_get_parent(ptr noundef %0) #17, !dbg !3688
  store ptr %call, ptr %parent, align 8, !dbg !3689
  %1 = load ptr, ptr %parent, align 8, !dbg !3690
  %tobool = icmp ne ptr %1, null, !dbg !3690
  br i1 %tobool, label %if.end, label %if.then, !dbg !3692

if.then:                                          ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8, !dbg !3693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3693

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %parent, align 8, !dbg !3694
  call void @fwnode_handle_put(ptr noundef %2) #17, !dbg !3695
  %3 = load ptr, ptr %fwnode.addr, align 8, !dbg !3696
  %call1 = call zeroext i1 @is_acpi_data_node(ptr noundef %3) #17, !dbg !3697
  br i1 %call1, label %if.then2, label %if.end5, !dbg !3698

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !3699
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !3665, metadata !DIExpression()), !dbg !3700
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode, metadata !3668, metadata !DIExpression()), !dbg !3701
  %4 = load ptr, ptr %fwnode.addr, align 8, !dbg !3701
  store ptr %4, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3701
  %5 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3701
  %call3 = call zeroext i1 @is_acpi_data_node(ptr noundef %5) #17, !dbg !3701
  br i1 %call3, label %cond.true, label %cond.false, !dbg !3701

cond.true:                                        ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3702
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3670, metadata !DIExpression()), !dbg !3702
  %6 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3702
  store ptr %6, ptr %__mptr, align 8, !dbg !3702
  %7 = load ptr, ptr %__mptr, align 8, !dbg !3702
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !3702
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !3702
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3701
  %8 = load ptr, ptr %tmp4, align 8, !dbg !3702
  br label %cond.end, !dbg !3701

cond.false:                                       ; preds = %if.then2
  br label %cond.end, !dbg !3701

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !3701
  store ptr %cond, ptr %tmp, align 8, !dbg !3701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3703
  %9 = load ptr, ptr %tmp, align 8, !dbg !3701
  store ptr %9, ptr %dn, align 8, !dbg !3700
  %10 = load ptr, ptr %dn, align 8, !dbg !3704
  %name = getelementptr inbounds %struct.acpi_data_node, ptr %10, i32 0, i32 0, !dbg !3705
  %11 = load ptr, ptr %name, align 8, !dbg !3705
  store ptr %11, ptr %retval, align 8, !dbg !3706
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !3707
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3708
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3672, metadata !DIExpression()), !dbg !3708
  %12 = load ptr, ptr %fwnode.addr, align 8, !dbg !3708
  store ptr %12, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3708
  %13 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3708
  %call7 = call zeroext i1 @is_acpi_device_node(ptr noundef %13) #17, !dbg !3708
  br i1 %call7, label %cond.true8, label %cond.false12, !dbg !3708

cond.true8:                                       ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3674, metadata !DIExpression()), !dbg !3709
  %14 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3709
  store ptr %14, ptr %__mptr9, align 8, !dbg !3709
  %15 = load ptr, ptr %__mptr9, align 8, !dbg !3709
  %add.ptr11 = getelementptr i8, ptr %15, i64 -16, !dbg !3709
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3709
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !3708
  %16 = load ptr, ptr %tmp10, align 8, !dbg !3709
  br label %cond.end13, !dbg !3708

cond.false12:                                     ; preds = %if.end5
  br label %cond.end13, !dbg !3708

cond.end13:                                       ; preds = %cond.false12, %cond.true8
  %cond14 = phi ptr [ %16, %cond.true8 ], [ null, %cond.false12 ], !dbg !3708
  store ptr %cond14, ptr %tmp6, align 8, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3710
  %17 = load ptr, ptr %tmp6, align 8, !dbg !3708
  store ptr %17, ptr %adev, align 8, !dbg !3711
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3712
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3676, metadata !DIExpression()), !dbg !3712
  %18 = load ptr, ptr %adev, align 8, !dbg !3712
  %tobool15 = icmp ne ptr %18, null, !dbg !3712
  %lnot = xor i1 %tobool15, true, !dbg !3712
  %lnot16 = xor i1 %lnot, true, !dbg !3712
  %lnot17 = xor i1 %lnot16, true, !dbg !3712
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !3712
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3712
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !3713
  %tobool18 = icmp ne i32 %19, 0, !dbg !3713
  %lnot19 = xor i1 %tobool18, true, !dbg !3713
  %lnot21 = xor i1 %lnot19, true, !dbg !3713
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3713
  %conv = sext i32 %lnot.ext22 to i64, !dbg !3713
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3713
  %tobool23 = icmp ne i64 %expval, 0, !dbg !3713
  br i1 %tobool23, label %if.then24, label %if.end34, !dbg !3712

if.then24:                                        ; preds = %cond.end13
  br label %do.body, !dbg !3713

do.body:                                          ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3714
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3679, metadata !DIExpression()), !dbg !3714
  store i32 2305, ptr %__flags, align 4, !dbg !3714
  br label %do.body25, !dbg !3714

do.body25:                                        ; preds = %do.body
  br label %do.cond, !dbg !3715

do.cond:                                          ; preds = %do.body25
  br label %do.end, !dbg !3715

do.end:                                           ; preds = %do.cond
  br label %do.body26, !dbg !3714

do.body26:                                        ; preds = %do.end
  %20 = load i32, ptr %__flags, align 4, !dbg !3717
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 1519, i32 %20, i64 12) #15, !dbg !3717, !srcloc !3719
  br label %do.cond27, !dbg !3717

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !3717

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !3714

do.body29:                                        ; preds = %do.end28
  br label %do.cond30, !dbg !3720

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !3720

do.end31:                                         ; preds = %do.cond30
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3713
  br label %do.cond32, !dbg !3714

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !3714

do.end33:                                         ; preds = %do.cond32
  br label %if.end34, !dbg !3714

if.end34:                                         ; preds = %do.end33, %cond.end13
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !3712
  %tobool36 = icmp ne i32 %21, 0, !dbg !3712
  %lnot37 = xor i1 %tobool36, true, !dbg !3712
  %lnot39 = xor i1 %lnot37, true, !dbg !3712
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3712
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3712
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !3712
  store i64 %expval42, ptr %tmp35, align 8, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3722
  %22 = load i64, ptr %tmp35, align 8, !dbg !3712
  %tobool43 = icmp ne i64 %22, 0, !dbg !3722
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3723

if.then44:                                        ; preds = %if.end34
  store ptr null, ptr %retval, align 8, !dbg !3724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3724

if.end45:                                         ; preds = %if.end34
  %23 = load ptr, ptr %adev, align 8, !dbg !3725
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 8, !dbg !3725
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 0, !dbg !3725
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !3725
  store ptr %arraydecay, ptr %retval, align 8, !dbg !3726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3726

cleanup:                                          ; preds = %if.end45, %if.then44, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !3727
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !3727
  %24 = load ptr, ptr %retval, align 8, !dbg !3727
  ret ptr %24, !dbg !3727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_get_name_prefix(ptr noundef %fwnode) #0 align 16 !dbg !3728 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3731, metadata !DIExpression()), !dbg !3734
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3735
  %call = call ptr @fwnode_get_parent(ptr noundef %0) #17, !dbg !3736
  store ptr %call, ptr %parent, align 8, !dbg !3737
  %1 = load ptr, ptr %parent, align 8, !dbg !3738
  %tobool = icmp ne ptr %1, null, !dbg !3738
  br i1 %tobool, label %if.end, label %if.then, !dbg !3740

if.then:                                          ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !3741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3741

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %parent, align 8, !dbg !3742
  %call1 = call ptr @fwnode_get_next_parent(ptr noundef %2) #17, !dbg !3743
  store ptr %call1, ptr %parent, align 8, !dbg !3744
  %3 = load ptr, ptr %parent, align 8, !dbg !3745
  %tobool2 = icmp ne ptr %3, null, !dbg !3745
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3747

if.then3:                                         ; preds = %if.end
  store ptr @.str.15, ptr %retval, align 8, !dbg !3748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3748

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %parent, align 8, !dbg !3749
  call void @fwnode_handle_put(ptr noundef %4) #17, !dbg !3750
  store ptr @.str.16, ptr %retval, align 8, !dbg !3751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3751

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !3752
  %5 = load ptr, ptr %retval, align 8, !dbg !3752
  ret ptr %5, !dbg !3752
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_node_get_parent(ptr noundef %fwnode) #0 align 16 !dbg !3753 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %__to_acpi_data_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %parent5 = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3755, metadata !DIExpression()), !dbg !3769
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3770
  %call = call zeroext i1 @is_acpi_data_node(ptr noundef %0) #17, !dbg !3771
  br i1 %call, label %if.then, label %if.end, !dbg !3772

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode, metadata !3756, metadata !DIExpression()), !dbg !3773
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3773
  store ptr %1, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3773
  %2 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3773
  %call1 = call zeroext i1 @is_acpi_data_node(ptr noundef %2) #17, !dbg !3773
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3773

cond.true:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3774
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3760, metadata !DIExpression()), !dbg !3774
  %3 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !3774
  store ptr %3, ptr %__mptr, align 8, !dbg !3774
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3774
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !3774
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3774
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3773
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3774
  br label %cond.end, !dbg !3773

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !3773

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !3773
  store ptr %cond, ptr %tmp, align 8, !dbg !3773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !3775
  %6 = load ptr, ptr %tmp, align 8, !dbg !3773
  %parent = getelementptr inbounds %struct.acpi_data_node, ptr %6, i32 0, i32 3, !dbg !3776
  %7 = load ptr, ptr %parent, align 8, !dbg !3776
  store ptr %7, ptr %retval, align 8, !dbg !3777
  br label %return, !dbg !3777

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %fwnode.addr, align 8, !dbg !3778
  %call3 = call zeroext i1 @is_acpi_device_node(ptr noundef %8) #17, !dbg !3779
  br i1 %call3, label %if.then4, label %if.end19, !dbg !3780

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent5) #15, !dbg !3781
  call void @llvm.dbg.declare(metadata ptr %parent5, metadata !3762, metadata !DIExpression()), !dbg !3782
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3783
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3765, metadata !DIExpression()), !dbg !3783
  %9 = load ptr, ptr %fwnode.addr, align 8, !dbg !3783
  store ptr %9, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3783
  %10 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3783
  %call7 = call zeroext i1 @is_acpi_device_node(ptr noundef %10) #17, !dbg !3783
  br i1 %call7, label %cond.true8, label %cond.false12, !dbg !3783

cond.true8:                                       ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !3784
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3767, metadata !DIExpression()), !dbg !3784
  %11 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3784
  store ptr %11, ptr %__mptr9, align 8, !dbg !3784
  %12 = load ptr, ptr %__mptr9, align 8, !dbg !3784
  %add.ptr11 = getelementptr i8, ptr %12, i64 -16, !dbg !3784
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !3783
  %13 = load ptr, ptr %tmp10, align 8, !dbg !3784
  br label %cond.end13, !dbg !3783

cond.false12:                                     ; preds = %if.then4
  br label %cond.end13, !dbg !3783

cond.end13:                                       ; preds = %cond.false12, %cond.true8
  %cond14 = phi ptr [ %13, %cond.true8 ], [ null, %cond.false12 ], !dbg !3783
  store ptr %cond14, ptr %tmp6, align 8, !dbg !3783
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3785
  %14 = load ptr, ptr %tmp6, align 8, !dbg !3783
  %call15 = call ptr @acpi_dev_parent(ptr noundef %14) #17, !dbg !3786
  store ptr %call15, ptr %parent5, align 8, !dbg !3787
  %15 = load ptr, ptr %parent5, align 8, !dbg !3788
  %tobool = icmp ne ptr %15, null, !dbg !3788
  br i1 %tobool, label %if.then16, label %if.end18, !dbg !3790

if.then16:                                        ; preds = %cond.end13
  %16 = load ptr, ptr %parent5, align 8, !dbg !3791
  %call17 = call ptr @acpi_fwnode_handle(ptr noundef %16) #17, !dbg !3792
  store ptr %call17, ptr %retval, align 8, !dbg !3793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3793

if.end18:                                         ; preds = %cond.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3794
  br label %cleanup, !dbg !3794

cleanup:                                          ; preds = %if.end18, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent5) #15, !dbg !3794
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end19, !dbg !3795

if.end19:                                         ; preds = %cleanup.cont, %if.end
  store ptr null, ptr %retval, align 8, !dbg !3796
  br label %return, !dbg !3796

return:                                           ; preds = %if.end19, %cleanup, %cond.end
  %17 = load ptr, ptr %retval, align 8, !dbg !3797
  ret ptr %17, !dbg !3797

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_get_named_child_node(ptr noundef %fwnode, ptr noundef %childname) #0 align 16 !dbg !3798 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %childname.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3800, metadata !DIExpression()), !dbg !3811
  store ptr %childname, ptr %childname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %childname.addr, metadata !3801, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #15, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3802, metadata !DIExpression()), !dbg !3814
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3815
  %call = call ptr @fwnode_get_next_child_node(ptr noundef %0, ptr noundef null) #17, !dbg !3815
  store ptr %call, ptr %child, align 8, !dbg !3815
  br label %for.cond, !dbg !3815

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %child, align 8, !dbg !3816
  %tobool = icmp ne ptr %1, null, !dbg !3815
  br i1 %tobool, label %for.body, label %for.end, !dbg !3815

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %child, align 8, !dbg !3817
  %call1 = call zeroext i1 @is_acpi_data_node(ptr noundef %2) #17, !dbg !3819
  br i1 %call1, label %if.then, label %if.end4, !dbg !3820

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %child, align 8, !dbg !3821
  %4 = load ptr, ptr %childname.addr, align 8, !dbg !3824
  %call2 = call zeroext i1 @acpi_data_node_match(ptr noundef %3, ptr noundef %4) #17, !dbg !3825
  br i1 %call2, label %if.then3, label %if.end, !dbg !3826

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %child, align 8, !dbg !3827
  store ptr %5, ptr %retval, align 8, !dbg !3828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3828

if.end:                                           ; preds = %if.then
  br label %for.inc, !dbg !3829

if.end4:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3830
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3803, metadata !DIExpression()), !dbg !3830
  %6 = load ptr, ptr %child, align 8, !dbg !3830
  store ptr %6, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3830
  %7 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3830
  %call5 = call zeroext i1 @is_acpi_device_node(ptr noundef %7) #17, !dbg !3830
  br i1 %call5, label %cond.true, label %cond.false, !dbg !3830

cond.true:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3809, metadata !DIExpression()), !dbg !3831
  %8 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3831
  store ptr %8, ptr %__mptr, align 8, !dbg !3831
  %9 = load ptr, ptr %__mptr, align 8, !dbg !3831
  %add.ptr = getelementptr i8, ptr %9, i64 -16, !dbg !3831
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !3831
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3830
  %10 = load ptr, ptr %tmp6, align 8, !dbg !3831
  br label %cond.end, !dbg !3830

cond.false:                                       ; preds = %if.end4
  br label %cond.end, !dbg !3830

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !3830
  store ptr %cond, ptr %tmp, align 8, !dbg !3830
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !3832
  %11 = load ptr, ptr %tmp, align 8, !dbg !3830
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 8, !dbg !3832
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 0, !dbg !3832
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !3832
  %12 = load ptr, ptr %childname.addr, align 8, !dbg !3833
  %call7 = call i32 @strncmp(ptr noundef %arraydecay, ptr noundef %12, i64 noundef 4) #17, !dbg !3834
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3834
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3835

if.then9:                                         ; preds = %cond.end
  %13 = load ptr, ptr %child, align 8, !dbg !3836
  store ptr %13, ptr %retval, align 8, !dbg !3837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3837

if.end10:                                         ; preds = %cond.end
  br label %for.inc, !dbg !3838

for.inc:                                          ; preds = %if.end10, %if.end
  %14 = load ptr, ptr %fwnode.addr, align 8, !dbg !3816
  %15 = load ptr, ptr %child, align 8, !dbg !3816
  %call11 = call ptr @fwnode_get_next_child_node(ptr noundef %14, ptr noundef %15) #17, !dbg !3816
  store ptr %call11, ptr %child, align 8, !dbg !3816
  br label %for.cond, !dbg !3816, !llvm.loop !3839

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !3841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3841

cleanup:                                          ; preds = %for.end, %if.then9, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #15, !dbg !3842
  %16 = load ptr, ptr %retval, align 8, !dbg !3842
  ret ptr %16, !dbg !3842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fwnode_get_reference_args(ptr noundef %fwnode, ptr noundef %prop, ptr noundef %nargs_prop, i32 noundef %args_count, i32 noundef %index, ptr noundef %args) #0 align 16 !dbg !3843 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %prop.addr = alloca ptr, align 8
  %nargs_prop.addr = alloca ptr, align 8
  %args_count.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3845, metadata !DIExpression()), !dbg !3851
  store ptr %prop, ptr %prop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prop.addr, metadata !3846, metadata !DIExpression()), !dbg !3852
  store ptr %nargs_prop, ptr %nargs_prop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nargs_prop.addr, metadata !3847, metadata !DIExpression()), !dbg !3853
  store i32 %args_count, ptr %args_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %args_count.addr, metadata !3848, metadata !DIExpression()), !dbg !3854
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3849, metadata !DIExpression()), !dbg !3855
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !3850, metadata !DIExpression()), !dbg !3856
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3857
  %1 = load ptr, ptr %prop.addr, align 8, !dbg !3858
  %2 = load i32, ptr %index.addr, align 4, !dbg !3859
  %conv = zext i32 %2 to i64, !dbg !3859
  %3 = load i32, ptr %args_count.addr, align 4, !dbg !3860
  %conv1 = zext i32 %3 to i64, !dbg !3860
  %4 = load ptr, ptr %args.addr, align 8, !dbg !3861
  %call = call i32 @__acpi_node_get_property_reference(ptr noundef %0, ptr noundef %1, i64 noundef %conv, i64 noundef %conv1, ptr noundef %4) #17, !dbg !3862
  ret i32 %call, !dbg !3863
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_graph_get_next_endpoint(ptr noundef %fwnode, ptr noundef %prev) #0 align 16 !dbg !3864 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %port = alloca ptr, align 8
  %endpoint = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3866, metadata !DIExpression()), !dbg !3870
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3867, metadata !DIExpression()), !dbg !3871
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !3872
  call void @llvm.dbg.declare(metadata ptr %port, metadata !3868, metadata !DIExpression()), !dbg !3873
  store ptr null, ptr %port, align 8, !dbg !3873
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoint) #15, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %endpoint, metadata !3869, metadata !DIExpression()), !dbg !3875
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3876
  %tobool = icmp ne ptr %0, null, !dbg !3876
  br i1 %tobool, label %if.else, label %if.then, !dbg !3878

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3879

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !3881
  %2 = load ptr, ptr %port, align 8, !dbg !3883
  %call = call ptr @fwnode_get_next_child_node(ptr noundef %1, ptr noundef %2) #17, !dbg !3884
  store ptr %call, ptr %port, align 8, !dbg !3885
  %3 = load ptr, ptr %port, align 8, !dbg !3886
  %call1 = call zeroext i1 @is_acpi_graph_node(ptr noundef %3, ptr noundef @.str.17) #17, !dbg !3888
  br i1 %call1, label %if.then2, label %if.end, !dbg !3889

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !3890

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !3891

do.cond:                                          ; preds = %if.end
  %4 = load ptr, ptr %port, align 8, !dbg !3892
  %tobool3 = icmp ne ptr %4, null, !dbg !3891
  br i1 %tobool3, label %do.body, label %do.end, !dbg !3891, !llvm.loop !3893

do.end:                                           ; preds = %do.cond, %if.then2
  br label %if.end5, !dbg !3895

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !3896
  %call4 = call ptr @fwnode_get_parent(ptr noundef %5) #17, !dbg !3898
  store ptr %call4, ptr %port, align 8, !dbg !3899
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end
  %6 = load ptr, ptr %port, align 8, !dbg !3900
  %tobool6 = icmp ne ptr %6, null, !dbg !3900
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3902

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !3903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3903

if.end8:                                          ; preds = %if.end5
  %7 = load ptr, ptr %port, align 8, !dbg !3904
  %8 = load ptr, ptr %prev.addr, align 8, !dbg !3905
  %call9 = call ptr @fwnode_get_next_child_node(ptr noundef %7, ptr noundef %8) #17, !dbg !3906
  store ptr %call9, ptr %endpoint, align 8, !dbg !3907
  br label %while.cond, !dbg !3908

while.cond:                                       ; preds = %if.end18, %if.end8
  %9 = load ptr, ptr %endpoint, align 8, !dbg !3909
  %tobool10 = icmp ne ptr %9, null, !dbg !3910
  %lnot = xor i1 %tobool10, true, !dbg !3910
  br i1 %lnot, label %while.body, label %while.end, !dbg !3908

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %fwnode.addr, align 8, !dbg !3911
  %11 = load ptr, ptr %port, align 8, !dbg !3913
  %call11 = call ptr @fwnode_get_next_child_node(ptr noundef %10, ptr noundef %11) #17, !dbg !3914
  store ptr %call11, ptr %port, align 8, !dbg !3915
  %12 = load ptr, ptr %port, align 8, !dbg !3916
  %tobool12 = icmp ne ptr %12, null, !dbg !3916
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3918

if.then13:                                        ; preds = %while.body
  br label %while.end, !dbg !3919

if.end14:                                         ; preds = %while.body
  %13 = load ptr, ptr %port, align 8, !dbg !3920
  %call15 = call zeroext i1 @is_acpi_graph_node(ptr noundef %13, ptr noundef @.str.17) #17, !dbg !3922
  br i1 %call15, label %if.then16, label %if.end18, !dbg !3923

if.then16:                                        ; preds = %if.end14
  %14 = load ptr, ptr %port, align 8, !dbg !3924
  %call17 = call ptr @fwnode_get_next_child_node(ptr noundef %14, ptr noundef null) #17, !dbg !3925
  store ptr %call17, ptr %endpoint, align 8, !dbg !3926
  br label %if.end18, !dbg !3927

if.end18:                                         ; preds = %if.then16, %if.end14
  br label %while.cond, !dbg !3908, !llvm.loop !3928

while.end:                                        ; preds = %if.then13, %while.cond
  %15 = load ptr, ptr %endpoint, align 8, !dbg !3930
  %call19 = call zeroext i1 @is_acpi_graph_node(ptr noundef %15, ptr noundef @.str.18) #17, !dbg !3932
  br i1 %call19, label %if.end21, label %if.then20, !dbg !3933

if.then20:                                        ; preds = %while.end
  store ptr null, ptr %retval, align 8, !dbg !3934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3934

if.end21:                                         ; preds = %while.end
  %16 = load ptr, ptr %endpoint, align 8, !dbg !3935
  store ptr %16, ptr %retval, align 8, !dbg !3936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3936

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoint) #15, !dbg !3937
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !3937
  %17 = load ptr, ptr %retval, align 8, !dbg !3937
  ret ptr %17, !dbg !3937
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_graph_get_remote_endpoint(ptr noundef %__fwnode) #0 align 16 !dbg !3938 {
entry:
  %retval = alloca ptr, align 8
  %__fwnode.addr = alloca ptr, align 8
  %fwnode = alloca ptr, align 8
  %port_nr = alloca i32, align 4
  %endpoint_nr = alloca i32, align 4
  %args = alloca %struct.fwnode_reference_args, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__fwnode, ptr %__fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__fwnode.addr, metadata !3940, metadata !DIExpression()), !dbg !3946
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #15, !dbg !3947
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !3941, metadata !DIExpression()), !dbg !3948
  call void @llvm.lifetime.start.p0(i64 4, ptr %port_nr) #15, !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %port_nr, metadata !3942, metadata !DIExpression()), !dbg !3950
  call void @llvm.lifetime.start.p0(i64 4, ptr %endpoint_nr) #15, !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %endpoint_nr, metadata !3943, metadata !DIExpression()), !dbg !3951
  call void @llvm.lifetime.start.p0(i64 80, ptr %args) #15, !dbg !3952
  call void @llvm.dbg.declare(metadata ptr %args, metadata !3944, metadata !DIExpression()), !dbg !3953
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3954
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3945, metadata !DIExpression()), !dbg !3955
  call void @llvm.memset.p0.i64(ptr align 8 %args, i8 0, i64 80, i1 false), !dbg !3956
  %0 = load ptr, ptr %__fwnode.addr, align 8, !dbg !3957
  %call = call i32 @acpi_node_get_property_reference(ptr noundef %0, ptr noundef @.str.20, i64 noundef 0, ptr noundef %args) #17, !dbg !3958
  store i32 %call, ptr %ret, align 4, !dbg !3959
  %1 = load i32, ptr %ret, align 4, !dbg !3960
  %tobool = icmp ne i32 %1, 0, !dbg !3960
  br i1 %tobool, label %if.then, label %if.end, !dbg !3962

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3963

if.end:                                           ; preds = %entry
  %fwnode1 = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 0, !dbg !3964
  %2 = load ptr, ptr %fwnode1, align 8, !dbg !3964
  %call2 = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #17, !dbg !3966
  br i1 %call2, label %if.end6, label %if.then3, !dbg !3967

if.then3:                                         ; preds = %if.end
  %nargs = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 1, !dbg !3968
  %3 = load i32, ptr %nargs, align 8, !dbg !3968
  %tobool4 = icmp ne i32 %3, 0, !dbg !3969
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !3969

cond.true:                                        ; preds = %if.then3
  br label %cond.end, !dbg !3969

cond.false:                                       ; preds = %if.then3
  %fwnode5 = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 0, !dbg !3970
  %4 = load ptr, ptr %fwnode5, align 8, !dbg !3970
  br label %cond.end, !dbg !3969

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %4, %cond.false ], !dbg !3969
  store ptr %cond, ptr %retval, align 8, !dbg !3971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3971

if.end6:                                          ; preds = %if.end
  %nargs7 = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 1, !dbg !3972
  %5 = load i32, ptr %nargs7, align 8, !dbg !3972
  %cmp = icmp ne i32 %5, 2, !dbg !3974
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3975

if.then8:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8, !dbg !3976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3976

if.end9:                                          ; preds = %if.end6
  %fwnode10 = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 0, !dbg !3977
  %6 = load ptr, ptr %fwnode10, align 8, !dbg !3977
  store ptr %6, ptr %fwnode, align 8, !dbg !3978
  %args11 = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 2, !dbg !3979
  %arrayidx = getelementptr [8 x i64], ptr %args11, i64 0, i64 0, !dbg !3980
  %7 = load i64, ptr %arrayidx, align 8, !dbg !3980
  %conv = trunc i64 %7 to i32, !dbg !3980
  store i32 %conv, ptr %port_nr, align 4, !dbg !3981
  %args12 = getelementptr inbounds %struct.fwnode_reference_args, ptr %args, i32 0, i32 2, !dbg !3982
  %arrayidx13 = getelementptr [8 x i64], ptr %args12, i64 0, i64 1, !dbg !3983
  %8 = load i64, ptr %arrayidx13, align 8, !dbg !3983
  %conv14 = trunc i64 %8 to i32, !dbg !3983
  store i32 %conv14, ptr %endpoint_nr, align 4, !dbg !3984
  %9 = load ptr, ptr %fwnode, align 8, !dbg !3985
  %10 = load i32, ptr %port_nr, align 4, !dbg !3986
  %call15 = call ptr @acpi_graph_get_child_prop_value(ptr noundef %9, ptr noundef @.str.17, i32 noundef %10) #17, !dbg !3987
  store ptr %call15, ptr %fwnode, align 8, !dbg !3988
  %11 = load ptr, ptr %fwnode, align 8, !dbg !3989
  %12 = load i32, ptr %endpoint_nr, align 4, !dbg !3990
  %call16 = call ptr @acpi_graph_get_child_prop_value(ptr noundef %11, ptr noundef @.str.18, i32 noundef %12) #17, !dbg !3991
  store ptr %call16, ptr %retval, align 8, !dbg !3992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3992

cleanup:                                          ; preds = %if.end9, %if.then8, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 80, ptr %args) #15, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 4, ptr %endpoint_nr) #15, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 4, ptr %port_nr) #15, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #15, !dbg !3993
  %13 = load ptr, ptr %retval, align 8, !dbg !3993
  ret ptr %13, !dbg !3993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_get_parent(ptr noundef %fwnode) #0 align 16 !dbg !3994 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3996, metadata !DIExpression()), !dbg !3997
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3998
  %call = call ptr @acpi_node_get_parent(ptr noundef %0) #17, !dbg !3999
  ret ptr %call, !dbg !4000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fwnode_graph_parse_endpoint(ptr noundef %fwnode, ptr noundef %endpoint) #0 align 16 !dbg !4001 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %endpoint.addr = alloca ptr, align 8
  %port_fwnode = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !4003, metadata !DIExpression()), !dbg !4006
  store ptr %endpoint, ptr %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %endpoint.addr, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.lifetime.start.p0(i64 8, ptr %port_fwnode) #15, !dbg !4008
  call void @llvm.dbg.declare(metadata ptr %port_fwnode, metadata !4005, metadata !DIExpression()), !dbg !4009
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !4010
  %call = call ptr @fwnode_get_parent(ptr noundef %0) #17, !dbg !4011
  store ptr %call, ptr %port_fwnode, align 8, !dbg !4009
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !4012
  %2 = load ptr, ptr %endpoint.addr, align 8, !dbg !4013
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, ptr %2, i32 0, i32 2, !dbg !4014
  store ptr %1, ptr %local_fwnode, align 8, !dbg !4015
  %3 = load ptr, ptr %port_fwnode, align 8, !dbg !4016
  %4 = load ptr, ptr %endpoint.addr, align 8, !dbg !4018
  %port = getelementptr inbounds %struct.fwnode_endpoint, ptr %4, i32 0, i32 0, !dbg !4019
  %call1 = call i32 @fwnode_property_read_u32(ptr noundef %3, ptr noundef @.str.19, ptr noundef %port) #17, !dbg !4020
  %tobool = icmp ne i32 %call1, 0, !dbg !4020
  br i1 %tobool, label %if.then, label %if.end, !dbg !4021

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %port_fwnode, align 8, !dbg !4022
  %6 = load ptr, ptr %endpoint.addr, align 8, !dbg !4023
  %port2 = getelementptr inbounds %struct.fwnode_endpoint, ptr %6, i32 0, i32 0, !dbg !4024
  %call3 = call i32 @fwnode_property_read_u32(ptr noundef %5, ptr noundef @.str.17, ptr noundef %port2) #17, !dbg !4025
  br label %if.end, !dbg !4025

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %fwnode.addr, align 8, !dbg !4026
  %8 = load ptr, ptr %endpoint.addr, align 8, !dbg !4028
  %id = getelementptr inbounds %struct.fwnode_endpoint, ptr %8, i32 0, i32 1, !dbg !4029
  %call4 = call i32 @fwnode_property_read_u32(ptr noundef %7, ptr noundef @.str.19, ptr noundef %id) #17, !dbg !4030
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4030
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !4031

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %fwnode.addr, align 8, !dbg !4032
  %10 = load ptr, ptr %endpoint.addr, align 8, !dbg !4033
  %id7 = getelementptr inbounds %struct.fwnode_endpoint, ptr %10, i32 0, i32 1, !dbg !4034
  %call8 = call i32 @fwnode_property_read_u32(ptr noundef %9, ptr noundef @.str.18, ptr noundef %id7) #17, !dbg !4035
  br label %if.end9, !dbg !4035

if.end9:                                          ; preds = %if.then6, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %port_fwnode) #15, !dbg !4036
  ret i32 0, !dbg !4037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fwnode_irq_get(ptr noundef %fwnode, i32 noundef %index) #0 align 16 !dbg !4038 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %res = alloca %struct.resource, align 8
  %ret = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !4040, metadata !DIExpression()), !dbg !4061
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4041, metadata !DIExpression()), !dbg !4062
  call void @llvm.lifetime.start.p0(i64 64, ptr %res) #15, !dbg !4063
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4042, metadata !DIExpression()), !dbg !4064
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4065
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4056, metadata !DIExpression()), !dbg !4066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !4067
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !4057, metadata !DIExpression()), !dbg !4067
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !4067
  store ptr %0, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !4067
  %1 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !4067
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %1) #17, !dbg !4067
  br i1 %call, label %cond.true, label %cond.false, !dbg !4067

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4068
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4059, metadata !DIExpression()), !dbg !4068
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !4068
  store ptr %2, ptr %__mptr, align 8, !dbg !4068
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4068
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !4068
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4068
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4067
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4068
  br label %cond.end, !dbg !4067

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4067

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !4067
  store ptr %cond, ptr %tmp, align 8, !dbg !4067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !4069
  %5 = load ptr, ptr %tmp, align 8, !dbg !4067
  %call2 = call ptr @acpi_device_handle(ptr noundef %5) #17, !dbg !4069
  %6 = load i32, ptr %index.addr, align 4, !dbg !4070
  %call3 = call i32 @acpi_irq_get(ptr noundef %call2, i32 noundef %6, ptr noundef %res) #17, !dbg !4071
  store i32 %call3, ptr %ret, align 4, !dbg !4072
  %7 = load i32, ptr %ret, align 4, !dbg !4073
  %tobool = icmp ne i32 %7, 0, !dbg !4073
  br i1 %tobool, label %if.then, label %if.end, !dbg !4075

if.then:                                          ; preds = %cond.end
  %8 = load i32, ptr %ret, align 4, !dbg !4076
  store i32 %8, ptr %retval, align 4, !dbg !4077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4077

if.end:                                           ; preds = %cond.end
  %start = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 0, !dbg !4078
  %9 = load i64, ptr %start, align 8, !dbg !4078
  %conv = trunc i64 %9 to i32, !dbg !4079
  store i32 %conv, ptr %retval, align 4, !dbg !4080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4080

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4081
  call void @llvm.lifetime.end.p0(i64 64, ptr %res) #15, !dbg !4081
  %10 = load i32, ptr %retval, align 4, !dbg !4081
  ret i32 %10, !dbg !4081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !4082 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4087, metadata !DIExpression()), !dbg !4088
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4089
  %tobool = icmp ne ptr %0, null, !dbg !4089
  %lnot = xor i1 %tobool, true, !dbg !4089
  %lnot1 = xor i1 %lnot, true, !dbg !4089
  %lnot2 = xor i1 %lnot1, true, !dbg !4089
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4089
  %conv = sext i32 %lnot.ext to i64, !dbg !4089
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4089
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4089
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4090

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4091
  %2 = ptrtoint ptr %1 to i64, !dbg !4091
  %3 = inttoptr i64 %2 to ptr, !dbg !4091
  %4 = ptrtoint ptr %3 to i64, !dbg !4091
  %cmp = icmp uge i64 %4, -4095, !dbg !4091
  %lnot5 = xor i1 %cmp, true, !dbg !4091
  %lnot7 = xor i1 %lnot5, true, !dbg !4091
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4091
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4091
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !4091
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !4090
  br label %lor.end, !dbg !4090

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !4092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4093 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4095, metadata !DIExpression()), !dbg !4100
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4096, metadata !DIExpression()), !dbg !4101
  %0 = load i64, ptr %size.addr, align 8, !dbg !4102
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4103
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4104

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4105
  %tobool = icmp ne i64 %2, 0, !dbg !4105
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4106

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4097, metadata !DIExpression()), !dbg !4108
  %3 = load i64, ptr %size.addr, align 8, !dbg !4109
  %cmp = icmp ugt i64 %3, 8192, !dbg !4111
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4112

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4113
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4114
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4115
  store ptr %call, ptr %retval, align 8, !dbg !4116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4116

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4117
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4117
  store i32 %call2, ptr %index, align 4, !dbg !4118
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4119
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4120
  %9 = ptrtoint ptr %8 to i64, !dbg !4120
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4121
  %idxprom = zext i32 %call3 to i64, !dbg !4122
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4122
  %10 = load i32, ptr %index, align 4, !dbg !4123
  %idxprom4 = zext i32 %10 to i64, !dbg !4122
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4122
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4122
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4124
  %13 = load i64, ptr %size.addr, align 8, !dbg !4125
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4126
  store ptr %call6, ptr %retval, align 8, !dbg !4127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4127

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4128
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4129
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4130
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4131
  store ptr %call8, ptr %retval, align 8, !dbg !4132
  br label %return, !dbg !4132

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4133
  ret ptr %16, !dbg !4133
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4134 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !4135 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4139, metadata !DIExpression()), !dbg !4141
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4140, metadata !DIExpression()), !dbg !4142
  %0 = load i64, ptr %size.addr, align 8, !dbg !4143
  %tobool = icmp ne i64 %0, 0, !dbg !4143
  br i1 %tobool, label %if.end, label %if.then, !dbg !4145

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4146
  br label %return, !dbg !4146

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4147
  %cmp = icmp ule i64 %1, 8, !dbg !4149
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4150

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4151
  br label %return, !dbg !4151

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4152
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4154
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4155

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4156
  %cmp4 = icmp ule i64 %3, 96, !dbg !4157
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4158

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4159
  br label %return, !dbg !4159

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4160
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4162
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4163

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4164
  %cmp9 = icmp ule i64 %5, 192, !dbg !4165
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4166

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4167
  br label %return, !dbg !4167

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4168
  %cmp12 = icmp ule i64 %6, 8, !dbg !4170
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4171

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4172
  br label %return, !dbg !4172

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4173
  %cmp15 = icmp ule i64 %7, 16, !dbg !4175
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4176

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4177
  br label %return, !dbg !4177

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4178
  %cmp18 = icmp ule i64 %8, 32, !dbg !4180
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4181

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4182
  br label %return, !dbg !4182

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4183
  %cmp21 = icmp ule i64 %9, 64, !dbg !4185
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4186

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4187
  br label %return, !dbg !4187

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4188
  %cmp24 = icmp ule i64 %10, 128, !dbg !4190
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4191

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4192
  br label %return, !dbg !4192

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4193
  %cmp27 = icmp ule i64 %11, 256, !dbg !4195
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4196

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4197
  br label %return, !dbg !4197

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4198
  %cmp30 = icmp ule i64 %12, 512, !dbg !4200
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4201

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4202
  br label %return, !dbg !4202

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4203
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4205
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4206

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4207
  br label %return, !dbg !4207

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4208
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4210
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4211

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4212
  br label %return, !dbg !4212

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4213
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4215
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4216

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4217
  br label %return, !dbg !4217

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4218
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4220
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4221

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4222
  br label %return, !dbg !4222

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4223
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4225
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4226

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4227
  br label %return, !dbg !4227

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4228
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4230
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4231

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4232
  br label %return, !dbg !4232

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4233
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4235
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4236

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4237
  br label %return, !dbg !4237

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4238
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4240
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4241

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4242
  br label %return, !dbg !4242

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4243
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4245
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4246

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4247
  br label %return, !dbg !4247

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4248
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4250
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4251

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4252
  br label %return, !dbg !4252

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4253
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4255
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4256

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4257
  br label %return, !dbg !4257

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4258
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4260
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4261

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4262
  br label %return, !dbg !4262

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4263, !range !2294, !noundef !467
  %tobool69 = trunc i8 %25 to i1, !dbg !4263
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4265

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4266

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #19, !dbg !4267, !srcloc !4270
  unreachable, !dbg !4267

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4271

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4272

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4273

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4275

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4273

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #15, !dbg !4277, !srcloc !4279
  br label %do.end75, !dbg !4277

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4273

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4280
  br label %return, !dbg !4280

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4281
  ret i32 %26, !dbg !4281
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4282 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !4288 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4292, metadata !DIExpression()), !dbg !4294
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4293, metadata !DIExpression()), !dbg !4295
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4296
  %and = and i32 %0, 17, !dbg !4296
  %cmp = icmp eq i32 %and, 0, !dbg !4296
  %lnot = xor i1 %cmp, true, !dbg !4296
  %lnot1 = xor i1 %lnot, true, !dbg !4296
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4296
  %conv = sext i32 %lnot.ext to i64, !dbg !4296
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4296
  %tobool = icmp ne i64 %expval, 0, !dbg !4296
  br i1 %tobool, label %if.then, label %if.end, !dbg !4298

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4299
  br label %return, !dbg !4299

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4300
  %and2 = and i32 %1, 1, !dbg !4302
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4302
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4303

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4307
  ret i32 %2, !dbg !4307
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4308 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4309 dso_local void @__compiletime_assert_125() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4310 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4314, metadata !DIExpression()), !dbg !4317
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4315, metadata !DIExpression()), !dbg !4318
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4316, metadata !DIExpression()), !dbg !4319
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4320
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4322
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4323
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !4324
  br i1 %call, label %if.end, label %if.then, !dbg !4325

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4326

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4327
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4328
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4329
  store ptr %3, ptr %prev1, align 8, !dbg !4330
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4331
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4332
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4333
  store ptr %5, ptr %next2, align 8, !dbg !4334
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4335
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4336
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4337
  store ptr %7, ptr %prev3, align 8, !dbg !4338
  br label %do.body, !dbg !4339

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4340

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4342

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4340

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4344
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4344
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4344
  store volatile ptr %9, ptr %next6, align 8, !dbg !4344
  br label %do.end7, !dbg !4344

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4340

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4346
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4347 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4351, metadata !DIExpression()), !dbg !4354
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4352, metadata !DIExpression()), !dbg !4355
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4353, metadata !DIExpression()), !dbg !4356
  ret i1 true, !dbg !4357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @guid_equal(ptr noundef %u1, ptr noundef %u2) #4 align 16 !dbg !4358 {
entry:
  %u1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  store ptr %u1, ptr %u1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u1.addr, metadata !4362, metadata !DIExpression()), !dbg !4364
  store ptr %u2, ptr %u2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u2.addr, metadata !4363, metadata !DIExpression()), !dbg !4365
  %0 = load ptr, ptr %u1.addr, align 8, !dbg !4366
  %1 = load ptr, ptr %u2.addr, align 8, !dbg !4367
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef 16) #17, !dbg !4368
  %cmp = icmp eq i32 %call, 0, !dbg !4369
  ret i1 %cmp, !dbg !4370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_data_add_buffer_props(ptr noundef %handle, ptr noundef %data, ptr noundef %properties) #0 align 16 !dbg !4371 {
entry:
  %handle.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %props = alloca ptr, align 8
  %package = alloca ptr, align 8
  %alloc_size = alloca i64, align 8
  %i = alloca i32, align 4
  %count = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buf = alloca %struct.acpi_buffer, align 8
  %property = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %buf_obj = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4375, metadata !DIExpression()), !dbg !4392
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4376, metadata !DIExpression()), !dbg !4393
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !4377, metadata !DIExpression()), !dbg !4394
  call void @llvm.lifetime.start.p0(i64 8, ptr %props) #15, !dbg !4395
  call void @llvm.dbg.declare(metadata ptr %props, metadata !4378, metadata !DIExpression()), !dbg !4396
  call void @llvm.lifetime.start.p0(i64 8, ptr %package) #15, !dbg !4397
  call void @llvm.dbg.declare(metadata ptr %package, metadata !4379, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_size) #15, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %alloc_size, metadata !4380, metadata !DIExpression()), !dbg !4400
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4401
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4381, metadata !DIExpression()), !dbg !4402
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #15, !dbg !4403
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4382, metadata !DIExpression()), !dbg !4404
  %0 = load ptr, ptr %properties.addr, align 8, !dbg !4405
  %count1 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 1, !dbg !4405
  %1 = load i32, ptr %count1, align 4, !dbg !4405
  %conv = zext i32 %1 to i64, !dbg !4405
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 32), !dbg !4405
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4405
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4405
  store i64 %4, ptr %alloc_size, align 8, !dbg !4405
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4405
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !4407

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %alloc_size, align 8, !dbg !4408
  %6 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 %5), !dbg !4408
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4408
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4408
  store i64 %8, ptr %alloc_size, align 8, !dbg !4408
  %call3 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %7) #17, !dbg !4408
  br i1 %call3, label %if.then, label %if.end, !dbg !4409

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !4410
  %10 = load ptr, ptr %properties.addr, align 8, !dbg !4410
  %count5 = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 1, !dbg !4410
  %11 = load i32, ptr %count5, align 4, !dbg !4410
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.5, ptr noundef %9, ptr noundef @.str.6, i32 noundef %11) #17, !dbg !4410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !4412

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i64, ptr %alloc_size, align 8, !dbg !4413
  %call6 = call noalias ptr @kvzalloc(i64 noundef %12, i32 noundef 3264) #16, !dbg !4414
  store ptr %call6, ptr %props, align 8, !dbg !4415
  %13 = load ptr, ptr %props, align 8, !dbg !4416
  %tobool = icmp ne ptr %13, null, !dbg !4416
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !4418

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !4419

if.end8:                                          ; preds = %if.end
  %14 = load ptr, ptr %props, align 8, !dbg !4420
  %guid = getelementptr inbounds %struct.acpi_device_properties, ptr %14, i32 0, i32 0, !dbg !4421
  store ptr @buffer_prop_guid, ptr %guid, align 8, !dbg !4422
  %15 = load ptr, ptr %props, align 8, !dbg !4423
  %add.ptr = getelementptr %struct.acpi_device_properties, ptr %15, i64 1, !dbg !4424
  %16 = load ptr, ptr %props, align 8, !dbg !4425
  %bufs = getelementptr inbounds %struct.acpi_device_properties, ptr %16, i32 0, i32 3, !dbg !4426
  store ptr %add.ptr, ptr %bufs, align 8, !dbg !4427
  %17 = load ptr, ptr %props, align 8, !dbg !4428
  %bufs9 = getelementptr inbounds %struct.acpi_device_properties, ptr %17, i32 0, i32 3, !dbg !4429
  %18 = load ptr, ptr %bufs9, align 8, !dbg !4429
  %19 = load ptr, ptr %properties.addr, align 8, !dbg !4430
  %count10 = getelementptr inbounds %struct.anon.7, ptr %19, i32 0, i32 1, !dbg !4431
  %20 = load i32, ptr %count10, align 4, !dbg !4431
  %idx.ext = zext i32 %20 to i64, !dbg !4432
  %add.ptr11 = getelementptr ptr, ptr %18, i64 %idx.ext, !dbg !4432
  %21 = load ptr, ptr %props, align 8, !dbg !4433
  %properties12 = getelementptr inbounds %struct.acpi_device_properties, ptr %21, i32 0, i32 1, !dbg !4434
  store ptr %add.ptr11, ptr %properties12, align 8, !dbg !4435
  %22 = load ptr, ptr %props, align 8, !dbg !4436
  %properties13 = getelementptr inbounds %struct.acpi_device_properties, ptr %22, i32 0, i32 1, !dbg !4437
  %23 = load ptr, ptr %properties13, align 8, !dbg !4437
  store ptr %23, ptr %package, align 8, !dbg !4438
  %24 = load ptr, ptr %package, align 8, !dbg !4439
  store i32 4, ptr %24, align 8, !dbg !4440
  %25 = load ptr, ptr %package, align 8, !dbg !4441
  %add.ptr14 = getelementptr %union.acpi_object, ptr %25, i64 1, !dbg !4442
  %26 = load ptr, ptr %package, align 8, !dbg !4443
  %elements = getelementptr inbounds %struct.anon.7, ptr %26, i32 0, i32 2, !dbg !4444
  store ptr %add.ptr14, ptr %elements, align 8, !dbg !4445
  %27 = load ptr, ptr %package, align 8, !dbg !4446
  %count15 = getelementptr inbounds %struct.anon.7, ptr %27, i32 0, i32 1, !dbg !4447
  store ptr %count15, ptr %count, align 8, !dbg !4448
  %28 = load ptr, ptr %count, align 8, !dbg !4449
  store i32 0, ptr %28, align 4, !dbg !4450
  %29 = load ptr, ptr %package, align 8, !dbg !4451
  %incdec.ptr = getelementptr %union.acpi_object, ptr %29, i32 1, !dbg !4451
  store ptr %incdec.ptr, ptr %package, align 8, !dbg !4451
  store i32 0, ptr %i, align 4, !dbg !4452
  br label %for.cond, !dbg !4453

for.cond:                                         ; preds = %for.inc, %if.end8
  %30 = load i32, ptr %i, align 4, !dbg !4454
  %31 = load ptr, ptr %properties.addr, align 8, !dbg !4455
  %count16 = getelementptr inbounds %struct.anon.7, ptr %31, i32 0, i32 1, !dbg !4456
  %32 = load i32, ptr %count16, align 4, !dbg !4456
  %cmp = icmp ult i32 %30, %32, !dbg !4457
  br i1 %cmp, label %for.body, label %for.end, !dbg !4458

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #15, !dbg !4459
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4383, metadata !DIExpression()), !dbg !4460
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 @__const.acpi_data_add_buffer_props.buf, i64 16, i1 false), !dbg !4460
  call void @llvm.lifetime.start.p0(i64 8, ptr %property) #15, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %property, metadata !4387, metadata !DIExpression()), !dbg !4462
  %33 = load ptr, ptr %properties.addr, align 8, !dbg !4463
  %elements18 = getelementptr inbounds %struct.anon.7, ptr %33, i32 0, i32 2, !dbg !4464
  %34 = load ptr, ptr %elements18, align 8, !dbg !4464
  %35 = load i32, ptr %i, align 4, !dbg !4465
  %idxprom = zext i32 %35 to i64, !dbg !4463
  %arrayidx = getelementptr %union.acpi_object, ptr %34, i64 %idxprom, !dbg !4463
  store ptr %arrayidx, ptr %property, align 8, !dbg !4462
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #15, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !4388, metadata !DIExpression()), !dbg !4467
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !4389, metadata !DIExpression()), !dbg !4468
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_obj) #15, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %buf_obj, metadata !4390, metadata !DIExpression()), !dbg !4469
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !4470
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4391, metadata !DIExpression()), !dbg !4471
  %36 = load ptr, ptr %property, align 8, !dbg !4472
  %37 = load i32, ptr %36, align 8, !dbg !4474
  %cmp19 = icmp ne i32 %37, 4, !dbg !4475
  br i1 %cmp19, label %if.then25, label %lor.lhs.false21, !dbg !4476

lor.lhs.false21:                                  ; preds = %for.body
  %38 = load ptr, ptr %property, align 8, !dbg !4477
  %count22 = getelementptr inbounds %struct.anon.7, ptr %38, i32 0, i32 1, !dbg !4478
  %39 = load i32, ptr %count22, align 4, !dbg !4478
  %cmp23 = icmp ne i32 %39, 2, !dbg !4479
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !4480

if.then25:                                        ; preds = %lor.lhs.false21, %for.body
  %40 = load ptr, ptr %handle.addr, align 8, !dbg !4481
  %41 = load i32, ptr %i, align 4, !dbg !4481
  %42 = load ptr, ptr %property, align 8, !dbg !4481
  %count26 = getelementptr inbounds %struct.anon.7, ptr %42, i32 0, i32 1, !dbg !4481
  %43 = load i32, ptr %count26, align 4, !dbg !4481
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.5, ptr noundef %40, ptr noundef @.str.7, i32 noundef %41, i32 noundef %43) #17, !dbg !4481
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4483

if.end27:                                         ; preds = %lor.lhs.false21
  %44 = load ptr, ptr %property, align 8, !dbg !4484
  %elements28 = getelementptr inbounds %struct.anon.7, ptr %44, i32 0, i32 2, !dbg !4485
  %45 = load ptr, ptr %elements28, align 8, !dbg !4485
  %arrayidx29 = getelementptr %union.acpi_object, ptr %45, i64 0, !dbg !4484
  store ptr %arrayidx29, ptr %prop, align 8, !dbg !4486
  %46 = load ptr, ptr %property, align 8, !dbg !4487
  %elements30 = getelementptr inbounds %struct.anon.7, ptr %46, i32 0, i32 2, !dbg !4488
  %47 = load ptr, ptr %elements30, align 8, !dbg !4488
  %arrayidx31 = getelementptr %union.acpi_object, ptr %47, i64 1, !dbg !4487
  store ptr %arrayidx31, ptr %obj, align 8, !dbg !4489
  %48 = load ptr, ptr %prop, align 8, !dbg !4490
  %49 = load i32, ptr %48, align 8, !dbg !4492
  %cmp32 = icmp ne i32 %49, 2, !dbg !4493
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34, !dbg !4494

lor.lhs.false34:                                  ; preds = %if.end27
  %50 = load ptr, ptr %obj, align 8, !dbg !4495
  %51 = load i32, ptr %50, align 8, !dbg !4496
  %cmp35 = icmp ne i32 %51, 2, !dbg !4497
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !4498

if.then37:                                        ; preds = %lor.lhs.false34, %if.end27
  %52 = load ptr, ptr %handle.addr, align 8, !dbg !4499
  %53 = load ptr, ptr %prop, align 8, !dbg !4499
  %54 = load i32, ptr %53, align 8, !dbg !4499
  %55 = load ptr, ptr %obj, align 8, !dbg !4499
  %56 = load i32, ptr %55, align 8, !dbg !4499
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.5, ptr noundef %52, ptr noundef @.str.8, i32 noundef %54, i32 noundef %56) #17, !dbg !4499
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4501

if.end38:                                         ; preds = %lor.lhs.false34
  %57 = load ptr, ptr %handle.addr, align 8, !dbg !4502
  %58 = load ptr, ptr %obj, align 8, !dbg !4503
  %pointer = getelementptr inbounds %struct.anon.5, ptr %58, i32 0, i32 2, !dbg !4504
  %59 = load ptr, ptr %pointer, align 8, !dbg !4504
  %call39 = call i32 @acpi_evaluate_object_typed(ptr noundef %57, ptr noundef %59, ptr noundef null, ptr noundef %buf, i32 noundef 3) #17, !dbg !4505
  store i32 %call39, ptr %status, align 4, !dbg !4506
  %60 = load i32, ptr %status, align 4, !dbg !4507
  %tobool40 = icmp ne i32 %60, 0, !dbg !4507
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !4509

if.then41:                                        ; preds = %if.end38
  %61 = load ptr, ptr %handle.addr, align 8, !dbg !4510
  %62 = load ptr, ptr %obj, align 8, !dbg !4510
  %length = getelementptr inbounds %struct.anon.5, ptr %62, i32 0, i32 1, !dbg !4510
  %63 = load i32, ptr %length, align 4, !dbg !4510
  %64 = load ptr, ptr %obj, align 8, !dbg !4510
  %pointer42 = getelementptr inbounds %struct.anon.5, ptr %64, i32 0, i32 2, !dbg !4510
  %65 = load ptr, ptr %pointer42, align 8, !dbg !4510
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.5, ptr noundef %61, ptr noundef @.str.9, i32 noundef %63, ptr noundef %65) #17, !dbg !4510
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4512

if.end43:                                         ; preds = %if.end38
  %66 = load ptr, ptr %package, align 8, !dbg !4513
  store i32 4, ptr %66, align 8, !dbg !4514
  %67 = load ptr, ptr %prop, align 8, !dbg !4515
  %68 = load ptr, ptr %package, align 8, !dbg !4516
  %elements44 = getelementptr inbounds %struct.anon.7, ptr %68, i32 0, i32 2, !dbg !4517
  store ptr %67, ptr %elements44, align 8, !dbg !4518
  %69 = load ptr, ptr %package, align 8, !dbg !4519
  %count45 = getelementptr inbounds %struct.anon.7, ptr %69, i32 0, i32 1, !dbg !4520
  store i32 2, ptr %count45, align 4, !dbg !4521
  %pointer46 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !4522
  %70 = load ptr, ptr %pointer46, align 8, !dbg !4522
  store ptr %70, ptr %buf_obj, align 8, !dbg !4523
  %71 = load ptr, ptr %obj, align 8, !dbg !4524
  store i32 3, ptr %71, align 8, !dbg !4525
  %72 = load ptr, ptr %buf_obj, align 8, !dbg !4526
  %length47 = getelementptr inbounds %struct.anon.6, ptr %72, i32 0, i32 1, !dbg !4527
  %73 = load i32, ptr %length47, align 4, !dbg !4527
  %74 = load ptr, ptr %obj, align 8, !dbg !4528
  %length48 = getelementptr inbounds %struct.anon.6, ptr %74, i32 0, i32 1, !dbg !4529
  store i32 %73, ptr %length48, align 4, !dbg !4530
  %75 = load ptr, ptr %buf_obj, align 8, !dbg !4531
  %pointer49 = getelementptr inbounds %struct.anon.6, ptr %75, i32 0, i32 2, !dbg !4532
  %76 = load ptr, ptr %pointer49, align 8, !dbg !4532
  %77 = load ptr, ptr %obj, align 8, !dbg !4533
  %pointer50 = getelementptr inbounds %struct.anon.6, ptr %77, i32 0, i32 2, !dbg !4534
  store ptr %76, ptr %pointer50, align 8, !dbg !4535
  %pointer51 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !4536
  %78 = load ptr, ptr %pointer51, align 8, !dbg !4536
  %79 = load ptr, ptr %props, align 8, !dbg !4537
  %bufs52 = getelementptr inbounds %struct.acpi_device_properties, ptr %79, i32 0, i32 3, !dbg !4538
  %80 = load ptr, ptr %bufs52, align 8, !dbg !4538
  %81 = load i32, ptr %i, align 4, !dbg !4539
  %idxprom53 = zext i32 %81 to i64, !dbg !4537
  %arrayidx54 = getelementptr ptr, ptr %80, i64 %idxprom53, !dbg !4537
  store ptr %78, ptr %arrayidx54, align 8, !dbg !4540
  %82 = load ptr, ptr %package, align 8, !dbg !4541
  %incdec.ptr55 = getelementptr %union.acpi_object, ptr %82, i32 1, !dbg !4541
  store ptr %incdec.ptr55, ptr %package, align 8, !dbg !4541
  %83 = load ptr, ptr %count, align 8, !dbg !4542
  %84 = load i32, ptr %83, align 4, !dbg !4543
  %inc = add i32 %84, 1, !dbg !4543
  store i32 %inc, ptr %83, align 4, !dbg !4543
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4544
  br label %cleanup, !dbg !4544

cleanup:                                          ; preds = %if.end43, %if.then41, %if.then37, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_obj) #15, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #15, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %property) #15, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #15, !dbg !4544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4545

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %85 = load i32, ptr %i, align 4, !dbg !4546
  %inc61 = add i32 %85, 1, !dbg !4546
  store i32 %inc61, ptr %i, align 4, !dbg !4546
  br label %for.cond, !dbg !4547, !llvm.loop !4548

for.end:                                          ; preds = %for.cond
  %86 = load ptr, ptr %count, align 8, !dbg !4550
  %87 = load i32, ptr %86, align 4, !dbg !4552
  %tobool62 = icmp ne i32 %87, 0, !dbg !4552
  br i1 %tobool62, label %if.then63, label %if.else, !dbg !4553

if.then63:                                        ; preds = %for.end
  %88 = load ptr, ptr %props, align 8, !dbg !4554
  %list = getelementptr inbounds %struct.acpi_device_properties, ptr %88, i32 0, i32 2, !dbg !4555
  %89 = load ptr, ptr %data.addr, align 8, !dbg !4556
  %properties64 = getelementptr inbounds %struct.acpi_device_data, ptr %89, i32 0, i32 1, !dbg !4557
  call void @list_add(ptr noundef %list, ptr noundef %properties64) #17, !dbg !4558
  br label %if.end65, !dbg !4558

if.else:                                          ; preds = %for.end
  %90 = load ptr, ptr %props, align 8, !dbg !4559
  call void @kvfree(ptr noundef %90) #17, !dbg !4560
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then63
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4561
  br label %cleanup66, !dbg !4561

cleanup66:                                        ; preds = %if.end65, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #15, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_size) #15, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %package) #15, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %props) #15, !dbg !4561
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %unreachable [
    i32 0, label %cleanup.cont72
    i32 1, label %cleanup.cont72
  ]

cleanup.cont72:                                   ; preds = %cleanup66, %cleanup66
  ret void, !dbg !4561

unreachable:                                      ; preds = %cleanup66, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_is_property_guid(ptr noundef %guid) #0 align 16 !dbg !4562 {
entry:
  %retval = alloca i1, align 1
  %guid.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !4566, metadata !DIExpression()), !dbg !4568
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4569
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4567, metadata !DIExpression()), !dbg !4570
  store i32 0, ptr %i, align 4, !dbg !4571
  br label %for.cond, !dbg !4573

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4574
  %conv = sext i32 %0 to i64, !dbg !4574
  %cmp = icmp ult i64 %conv, 6, !dbg !4576
  br i1 %cmp, label %for.body, label %for.end, !dbg !4577

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !4578
  %2 = load i32, ptr %i, align 4, !dbg !4581
  %idxprom = sext i32 %2 to i64, !dbg !4582
  %arrayidx = getelementptr [6 x %struct.guid_t], ptr @prp_guids, i64 0, i64 %idxprom, !dbg !4582
  %call = call zeroext i1 @guid_equal(ptr noundef %1, ptr noundef %arrayidx) #17, !dbg !4583
  br i1 %call, label %if.then, label %if.end, !dbg !4584

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !4585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4585

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4586

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4, !dbg !4587
  %inc = add i32 %3, 1, !dbg !4587
  store i32 %inc, ptr %i, align 4, !dbg !4587
  br label %for.cond, !dbg !4588, !llvm.loop !4589

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !4591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4591

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4592
  %4 = load i1, ptr %retval, align 1, !dbg !4592
  ret i1 %4, !dbg !4592
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_properties_format_valid(ptr noundef %properties) #0 align 16 !dbg !4593 {
entry:
  %retval = alloca i1, align 1
  %properties.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %property = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !4597, metadata !DIExpression()), !dbg !4603
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4604
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4598, metadata !DIExpression()), !dbg !4605
  store i32 0, ptr %i, align 4, !dbg !4606
  br label %for.cond, !dbg !4607

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4608
  %1 = load ptr, ptr %properties.addr, align 8, !dbg !4609
  %count = getelementptr inbounds %struct.anon.7, ptr %1, i32 0, i32 1, !dbg !4610
  %2 = load i32, ptr %count, align 4, !dbg !4610
  %cmp = icmp ult i32 %0, %2, !dbg !4611
  br i1 %cmp, label %for.body, label %for.end, !dbg !4612

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %property) #15, !dbg !4613
  call void @llvm.dbg.declare(metadata ptr %property, metadata !4599, metadata !DIExpression()), !dbg !4614
  %3 = load ptr, ptr %properties.addr, align 8, !dbg !4615
  %elements = getelementptr inbounds %struct.anon.7, ptr %3, i32 0, i32 2, !dbg !4616
  %4 = load ptr, ptr %elements, align 8, !dbg !4616
  %5 = load i32, ptr %i, align 4, !dbg !4617
  %idxprom = sext i32 %5 to i64, !dbg !4615
  %arrayidx = getelementptr %union.acpi_object, ptr %4, i64 %idxprom, !dbg !4615
  store ptr %arrayidx, ptr %property, align 8, !dbg !4618
  %6 = load ptr, ptr %property, align 8, !dbg !4619
  %count1 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 1, !dbg !4621
  %7 = load i32, ptr %count1, align 4, !dbg !4621
  %cmp2 = icmp ne i32 %7, 2, !dbg !4622
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !4623

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %property, align 8, !dbg !4624
  %elements3 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 2, !dbg !4625
  %9 = load ptr, ptr %elements3, align 8, !dbg !4625
  %arrayidx4 = getelementptr %union.acpi_object, ptr %9, i64 0, !dbg !4624
  %10 = load i32, ptr %arrayidx4, align 8, !dbg !4626
  %cmp5 = icmp ne i32 %10, 2, !dbg !4627
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !4628

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %property, align 8, !dbg !4629
  %elements7 = getelementptr inbounds %struct.anon.7, ptr %11, i32 0, i32 2, !dbg !4630
  %12 = load ptr, ptr %elements7, align 8, !dbg !4630
  %arrayidx8 = getelementptr %union.acpi_object, ptr %12, i64 1, !dbg !4629
  %call = call zeroext i1 @acpi_property_value_ok(ptr noundef %arrayidx8) #17, !dbg !4631
  br i1 %call, label %if.end, label %if.then, !dbg !4632

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.body
  store i1 false, ptr %retval, align 1, !dbg !4633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4633

if.end:                                           ; preds = %lor.lhs.false6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4634
  br label %cleanup, !dbg !4634

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %property) #15, !dbg !4634
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4635

for.inc:                                          ; preds = %cleanup.cont
  %13 = load i32, ptr %i, align 4, !dbg !4636
  %inc = add i32 %13, 1, !dbg !4636
  store i32 %inc, ptr %i, align 4, !dbg !4636
  br label %for.cond, !dbg !4637, !llvm.loop !4638

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !4640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !4640

cleanup9:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4641
  %14 = load i1, ptr %retval, align 1, !dbg !4641
  ret i1 %14, !dbg !4641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4642 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !4645 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4652, !range !2294, !noundef !467
  %tobool = trunc i8 %0 to i1, !dbg !4652
  %lnot = xor i1 %tobool, true, !dbg !4652
  %lnot1 = xor i1 %lnot, true, !dbg !4652
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4652
  %conv = sext i32 %lnot.ext to i64, !dbg !4652
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4652
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4652
  ret i1 %tobool2, !dbg !4653
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4654 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4656, metadata !DIExpression()), !dbg !4658
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4657, metadata !DIExpression()), !dbg !4659
  %0 = load i64, ptr %size.addr, align 8, !dbg !4660
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4661
  %or = or i32 %1, 256, !dbg !4662
  %call = call noalias ptr @kvmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4663
  ret ptr %call, !dbg !4664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !4665 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4667, metadata !DIExpression()), !dbg !4669
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4668, metadata !DIExpression()), !dbg !4670
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4671
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4672
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4673
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4674
  %3 = load ptr, ptr %next, align 8, !dbg !4674
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !4675
  ret void, !dbg !4676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4677 dso_local void @kvfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4680 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4682, metadata !DIExpression()), !dbg !4684
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4683, metadata !DIExpression()), !dbg !4685
  %0 = load i64, ptr %size.addr, align 8, !dbg !4686
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4687
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #16, !dbg !4688
  ret ptr %call, !dbg !4689
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4690 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_property_value_ok(ptr noundef %value) #0 align 16 !dbg !4693 {
entry:
  %retval = alloca i1, align 1
  %value.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4695, metadata !DIExpression()), !dbg !4697
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4696, metadata !DIExpression()), !dbg !4699
  %0 = load ptr, ptr %value.addr, align 8, !dbg !4700
  %1 = load i32, ptr %0, align 8, !dbg !4701
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 20, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !4702

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i1 true, ptr %retval, align 1, !dbg !4703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4703

sw.bb1:                                           ; preds = %entry
  store i32 0, ptr %j, align 4, !dbg !4705
  br label %for.cond, !dbg !4707

for.cond:                                         ; preds = %for.inc, %sw.bb1
  %2 = load i32, ptr %j, align 4, !dbg !4708
  %3 = load ptr, ptr %value.addr, align 8, !dbg !4710
  %count = getelementptr inbounds %struct.anon.7, ptr %3, i32 0, i32 1, !dbg !4711
  %4 = load i32, ptr %count, align 4, !dbg !4711
  %cmp = icmp ult i32 %2, %4, !dbg !4712
  br i1 %cmp, label %for.body, label %for.end, !dbg !4713

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %value.addr, align 8, !dbg !4714
  %elements = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 2, !dbg !4715
  %6 = load ptr, ptr %elements, align 8, !dbg !4715
  %7 = load i32, ptr %j, align 4, !dbg !4716
  %idxprom = sext i32 %7 to i64, !dbg !4714
  %arrayidx = getelementptr %union.acpi_object, ptr %6, i64 %idxprom, !dbg !4714
  %8 = load i32, ptr %arrayidx, align 8, !dbg !4717
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
    i32 20, label %sw.bb2
  ], !dbg !4718

sw.bb2:                                           ; preds = %for.body, %for.body, %for.body
  br label %for.inc, !dbg !4719

sw.default:                                       ; preds = %for.body
  store i1 false, ptr %retval, align 1, !dbg !4721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4721

for.inc:                                          ; preds = %sw.bb2
  %9 = load i32, ptr %j, align 4, !dbg !4722
  %inc = add i32 %9, 1, !dbg !4722
  store i32 %inc, ptr %j, align 4, !dbg !4722
  br label %for.cond, !dbg !4723, !llvm.loop !4724

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !4726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4726

sw.epilog:                                        ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4727

cleanup:                                          ; preds = %sw.epilog, %for.end, %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !4728
  %10 = load i1, ptr %retval, align 1, !dbg !4728
  ret i1 %10, !dbg !4728
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_data_get_property_array(ptr noundef %data, ptr noundef %name, i32 noundef %type, ptr noundef %obj) #0 align 16 !dbg !4729 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4731, metadata !DIExpression()), !dbg !4738
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4732, metadata !DIExpression()), !dbg !4739
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4733, metadata !DIExpression()), !dbg !4740
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #15, !dbg !4742
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !4735, metadata !DIExpression()), !dbg !4743
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4736, metadata !DIExpression()), !dbg !4745
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4737, metadata !DIExpression()), !dbg !4746
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4747
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4748
  %call = call i32 @acpi_data_get_property(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef %prop) #17, !dbg !4749
  store i32 %call, ptr %ret, align 4, !dbg !4750
  %2 = load i32, ptr %ret, align 4, !dbg !4751
  %tobool = icmp ne i32 %2, 0, !dbg !4751
  br i1 %tobool, label %if.then, label %if.end, !dbg !4753

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !4754
  store i32 %3, ptr %retval, align 4, !dbg !4755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4755

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %type.addr, align 4, !dbg !4756
  %cmp = icmp ne i32 %4, 0, !dbg !4758
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !4759

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !4760
  br label %for.cond, !dbg !4763

for.cond:                                         ; preds = %for.inc, %if.then1
  %5 = load i32, ptr %i, align 4, !dbg !4764
  %6 = load ptr, ptr %prop, align 8, !dbg !4766
  %count = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 1, !dbg !4767
  %7 = load i32, ptr %count, align 4, !dbg !4767
  %cmp2 = icmp ult i32 %5, %7, !dbg !4768
  br i1 %cmp2, label %for.body, label %for.end, !dbg !4769

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %prop, align 8, !dbg !4770
  %elements = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 2, !dbg !4772
  %9 = load ptr, ptr %elements, align 8, !dbg !4772
  %10 = load i32, ptr %i, align 4, !dbg !4773
  %idxprom = sext i32 %10 to i64, !dbg !4770
  %arrayidx = getelementptr %union.acpi_object, ptr %9, i64 %idxprom, !dbg !4770
  %11 = load i32, ptr %arrayidx, align 8, !dbg !4774
  %12 = load i32, ptr %type.addr, align 4, !dbg !4775
  %cmp3 = icmp ne i32 %11, %12, !dbg !4776
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4777

if.then4:                                         ; preds = %for.body
  store i32 -71, ptr %retval, align 4, !dbg !4778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4778

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4775

for.inc:                                          ; preds = %if.end5
  %13 = load i32, ptr %i, align 4, !dbg !4779
  %inc = add i32 %13, 1, !dbg !4779
  store i32 %inc, ptr %i, align 4, !dbg !4779
  br label %for.cond, !dbg !4780, !llvm.loop !4781

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !4783

if.end6:                                          ; preds = %for.end, %if.end
  %14 = load ptr, ptr %obj.addr, align 8, !dbg !4784
  %tobool7 = icmp ne ptr %14, null, !dbg !4784
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4786

if.then8:                                         ; preds = %if.end6
  %15 = load ptr, ptr %prop, align 8, !dbg !4787
  %16 = load ptr, ptr %obj.addr, align 8, !dbg !4788
  store ptr %15, ptr %16, align 8, !dbg !4789
  br label %if.end9, !dbg !4790

if.end9:                                          ; preds = %if.then8, %if.end6
  store i32 0, ptr %retval, align 4, !dbg !4791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4791

cleanup:                                          ; preds = %if.end9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4792
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4792
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #15, !dbg !4792
  %17 = load i32, ptr %retval, align 4, !dbg !4792
  ret i32 %17, !dbg !4792
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_dev_parent(ptr noundef %adev) #4 align 16 !dbg !4793 {
entry:
  %retval = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !4797, metadata !DIExpression()), !dbg !4801
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !4802
  %dev = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 18, !dbg !4803
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !4804
  %1 = load ptr, ptr %parent, align 8, !dbg !4804
  %tobool = icmp ne ptr %1, null, !dbg !4802
  br i1 %tobool, label %if.then, label %if.end, !dbg !4805

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4806
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4798, metadata !DIExpression()), !dbg !4806
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !4806
  %dev1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 18, !dbg !4806
  %parent2 = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 1, !dbg !4806
  %3 = load ptr, ptr %parent2, align 8, !dbg !4806
  store ptr %3, ptr %__mptr, align 8, !dbg !4806
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4806
  %add.ptr = getelementptr i8, ptr %4, i64 -608, !dbg !4806
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4806
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4807
  %5 = load ptr, ptr %tmp, align 8, !dbg !4806
  store ptr %5, ptr %retval, align 8, !dbg !4808
  br label %return, !dbg !4808

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4809
  br label %return, !dbg !4809

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !4810
  ret ptr %6, !dbg !4810
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_add_nondev_subnodes(ptr noundef %scope, ptr noundef %links, ptr noundef %list, ptr noundef %parent) #0 align 16 !dbg !4811 {
entry:
  %scope.addr = alloca ptr, align 8
  %links.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  %i = alloca i32, align 4
  %link = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %result = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !4815, metadata !DIExpression()), !dbg !4828
  store ptr %links, ptr %links.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %links.addr, metadata !4816, metadata !DIExpression()), !dbg !4829
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4817, metadata !DIExpression()), !dbg !4830
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4818, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #15, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4819, metadata !DIExpression()), !dbg !4833
  store i8 0, ptr %ret, align 1, !dbg !4833
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4820, metadata !DIExpression()), !dbg !4835
  store i32 0, ptr %i, align 4, !dbg !4836
  br label %for.cond, !dbg !4837

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4838
  %1 = load ptr, ptr %links.addr, align 8, !dbg !4839
  %count = getelementptr inbounds %struct.anon.7, ptr %1, i32 0, i32 1, !dbg !4840
  %2 = load i32, ptr %count, align 4, !dbg !4840
  %cmp = icmp ult i32 %0, %2, !dbg !4841
  br i1 %cmp, label %for.body, label %for.end, !dbg !4842

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %link, metadata !4821, metadata !DIExpression()), !dbg !4844
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4825, metadata !DIExpression()), !dbg !4845
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !4846
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !4826, metadata !DIExpression()), !dbg !4847
  call void @llvm.lifetime.start.p0(i64 1, ptr %result) #15, !dbg !4848
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4827, metadata !DIExpression()), !dbg !4849
  %3 = load ptr, ptr %links.addr, align 8, !dbg !4850
  %elements = getelementptr inbounds %struct.anon.7, ptr %3, i32 0, i32 2, !dbg !4851
  %4 = load ptr, ptr %elements, align 8, !dbg !4851
  %5 = load i32, ptr %i, align 4, !dbg !4852
  %idxprom = sext i32 %5 to i64, !dbg !4850
  %arrayidx = getelementptr %union.acpi_object, ptr %4, i64 %idxprom, !dbg !4850
  store ptr %arrayidx, ptr %link, align 8, !dbg !4853
  %6 = load ptr, ptr %link, align 8, !dbg !4854
  %count1 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 1, !dbg !4856
  %7 = load i32, ptr %count1, align 4, !dbg !4856
  %cmp2 = icmp ne i32 %7, 2, !dbg !4857
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4858

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4859

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %link, align 8, !dbg !4860
  %elements3 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 2, !dbg !4862
  %9 = load ptr, ptr %elements3, align 8, !dbg !4862
  %arrayidx4 = getelementptr %union.acpi_object, ptr %9, i64 0, !dbg !4860
  %10 = load i32, ptr %arrayidx4, align 8, !dbg !4863
  %cmp5 = icmp ne i32 %10, 2, !dbg !4864
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4865

if.then6:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4866

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %link, align 8, !dbg !4867
  %elements8 = getelementptr inbounds %struct.anon.7, ptr %11, i32 0, i32 2, !dbg !4868
  %12 = load ptr, ptr %elements8, align 8, !dbg !4868
  %arrayidx9 = getelementptr %union.acpi_object, ptr %12, i64 1, !dbg !4867
  %13 = load i32, ptr %arrayidx9, align 8, !dbg !4869
  switch i32 %13, label %sw.default [
    i32 2, label %sw.bb
    i32 20, label %sw.bb10
    i32 4, label %sw.bb16
  ], !dbg !4870

sw.bb:                                            ; preds = %if.end7
  %14 = load ptr, ptr %scope.addr, align 8, !dbg !4871
  %15 = load ptr, ptr %link, align 8, !dbg !4873
  %16 = load ptr, ptr %list.addr, align 8, !dbg !4874
  %17 = load ptr, ptr %parent.addr, align 8, !dbg !4875
  %call = call zeroext i1 @acpi_nondev_subnode_ok(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17) #17, !dbg !4876
  %frombool = zext i1 %call to i8, !dbg !4877
  store i8 %frombool, ptr %result, align 1, !dbg !4877
  br label %sw.epilog, !dbg !4878

sw.bb10:                                          ; preds = %if.end7
  %18 = load ptr, ptr %link, align 8, !dbg !4879
  %elements11 = getelementptr inbounds %struct.anon.7, ptr %18, i32 0, i32 2, !dbg !4880
  %19 = load ptr, ptr %elements11, align 8, !dbg !4880
  %arrayidx12 = getelementptr %union.acpi_object, ptr %19, i64 1, !dbg !4879
  %handle13 = getelementptr inbounds %struct.anon.8, ptr %arrayidx12, i32 0, i32 2, !dbg !4881
  %20 = load ptr, ptr %handle13, align 8, !dbg !4881
  store ptr %20, ptr %handle, align 8, !dbg !4882
  %21 = load ptr, ptr %handle, align 8, !dbg !4883
  %22 = load ptr, ptr %link, align 8, !dbg !4884
  %23 = load ptr, ptr %list.addr, align 8, !dbg !4885
  %24 = load ptr, ptr %parent.addr, align 8, !dbg !4886
  %call14 = call zeroext i1 @acpi_nondev_subnode_data_ok(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24) #17, !dbg !4887
  %frombool15 = zext i1 %call14 to i8, !dbg !4888
  store i8 %frombool15, ptr %result, align 1, !dbg !4888
  br label %sw.epilog, !dbg !4889

sw.bb16:                                          ; preds = %if.end7
  %25 = load ptr, ptr %link, align 8, !dbg !4890
  %elements17 = getelementptr inbounds %struct.anon.7, ptr %25, i32 0, i32 2, !dbg !4891
  %26 = load ptr, ptr %elements17, align 8, !dbg !4891
  %arrayidx18 = getelementptr %union.acpi_object, ptr %26, i64 1, !dbg !4890
  store ptr %arrayidx18, ptr %desc, align 8, !dbg !4892
  %27 = load ptr, ptr %desc, align 8, !dbg !4893
  %28 = load ptr, ptr %link, align 8, !dbg !4894
  %29 = load ptr, ptr %list.addr, align 8, !dbg !4895
  %30 = load ptr, ptr %parent.addr, align 8, !dbg !4896
  %call19 = call zeroext i1 @acpi_nondev_subnode_extract(ptr noundef %27, ptr noundef null, ptr noundef %28, ptr noundef %29, ptr noundef %30) #17, !dbg !4897
  %frombool20 = zext i1 %call19 to i8, !dbg !4898
  store i8 %frombool20, ptr %result, align 1, !dbg !4898
  br label %sw.epilog, !dbg !4899

sw.default:                                       ; preds = %if.end7
  store i8 0, ptr %result, align 1, !dbg !4900
  br label %sw.epilog, !dbg !4901

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb10, %sw.bb
  %31 = load i8, ptr %ret, align 1, !dbg !4902, !range !2294, !noundef !467
  %tobool = trunc i8 %31 to i1, !dbg !4902
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4903

lor.rhs:                                          ; preds = %sw.epilog
  %32 = load i8, ptr %result, align 1, !dbg !4904, !range !2294, !noundef !467
  %tobool21 = trunc i8 %32 to i1, !dbg !4904
  br label %lor.end, !dbg !4903

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %33 = phi i1 [ true, %sw.epilog ], [ %tobool21, %lor.rhs ]
  %frombool22 = zext i1 %33 to i8, !dbg !4905
  store i8 %frombool22, ptr %ret, align 1, !dbg !4905
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4906
  br label %cleanup, !dbg !4906

cleanup:                                          ; preds = %lor.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %result) #15, !dbg !4906
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !4906
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !4906
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !4906
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4907

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %34 = load i32, ptr %i, align 4, !dbg !4908
  %inc = add i32 %34, 1, !dbg !4908
  store i32 %inc, ptr %i, align 4, !dbg !4908
  br label %for.cond, !dbg !4909, !llvm.loop !4910

for.end:                                          ; preds = %for.cond
  %35 = load i8, ptr %ret, align 1, !dbg !4912, !range !2294, !noundef !467
  %tobool26 = trunc i8 %35 to i1, !dbg !4912
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4913
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #15, !dbg !4913
  ret i1 %tobool26, !dbg !4914

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_nondev_subnode_ok(ptr noundef %scope, ptr noundef %link, ptr noundef %list, ptr noundef %parent) #0 align 16 !dbg !4915 {
entry:
  %retval = alloca i1, align 1
  %scope.addr = alloca ptr, align 8
  %link.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !4919, metadata !DIExpression()), !dbg !4925
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !4920, metadata !DIExpression()), !dbg !4926
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4921, metadata !DIExpression()), !dbg !4927
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4922, metadata !DIExpression()), !dbg !4928
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !4929
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !4923, metadata !DIExpression()), !dbg !4930
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !4931
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4924, metadata !DIExpression()), !dbg !4932
  %0 = load ptr, ptr %scope.addr, align 8, !dbg !4933
  %tobool = icmp ne ptr %0, null, !dbg !4933
  br i1 %tobool, label %if.end, label %if.then, !dbg !4935

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4936

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %scope.addr, align 8, !dbg !4937
  %2 = load ptr, ptr %link.addr, align 8, !dbg !4938
  %elements = getelementptr inbounds %struct.anon.7, ptr %2, i32 0, i32 2, !dbg !4939
  %3 = load ptr, ptr %elements, align 8, !dbg !4939
  %arrayidx = getelementptr %union.acpi_object, ptr %3, i64 1, !dbg !4938
  %pointer = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 2, !dbg !4940
  %4 = load ptr, ptr %pointer, align 8, !dbg !4940
  %call = call i32 @acpi_get_handle(ptr noundef %1, ptr noundef %4, ptr noundef %handle) #17, !dbg !4941
  store i32 %call, ptr %status, align 4, !dbg !4942
  %5 = load i32, ptr %status, align 4, !dbg !4943
  %tobool1 = icmp ne i32 %5, 0, !dbg !4943
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4945

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4946

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %handle, align 8, !dbg !4947
  %7 = load ptr, ptr %link.addr, align 8, !dbg !4948
  %8 = load ptr, ptr %list.addr, align 8, !dbg !4949
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !4950
  %call4 = call zeroext i1 @acpi_nondev_subnode_data_ok(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #17, !dbg !4951
  store i1 %call4, ptr %retval, align 1, !dbg !4952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4952

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !4953
  %10 = load i1, ptr %retval, align 1, !dbg !4953
  ret i1 %10, !dbg !4953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_nondev_subnode_data_ok(ptr noundef %handle, ptr noundef %link, ptr noundef %list, ptr noundef %parent) #0 align 16 !dbg !4954 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca ptr, align 8
  %link.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %buf = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4956, metadata !DIExpression()), !dbg !4962
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !4957, metadata !DIExpression()), !dbg !4963
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4958, metadata !DIExpression()), !dbg !4964
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4959, metadata !DIExpression()), !dbg !4965
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #15, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4960, metadata !DIExpression()), !dbg !4967
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 @__const.acpi_nondev_subnode_data_ok.buf, i64 16, i1 false), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4961, metadata !DIExpression()), !dbg !4969
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !4970
  %call = call i32 @acpi_evaluate_object_typed(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %buf, i32 noundef 4) #17, !dbg !4971
  store i32 %call, ptr %status, align 4, !dbg !4972
  %1 = load i32, ptr %status, align 4, !dbg !4973
  %tobool = icmp ne i32 %1, 0, !dbg !4973
  br i1 %tobool, label %if.then, label %if.end, !dbg !4975

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4976

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !4977
  %2 = load ptr, ptr %pointer, align 8, !dbg !4977
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !4979
  %4 = load ptr, ptr %link.addr, align 8, !dbg !4980
  %5 = load ptr, ptr %list.addr, align 8, !dbg !4981
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !4982
  %call1 = call zeroext i1 @acpi_nondev_subnode_extract(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #17, !dbg !4983
  br i1 %call1, label %if.then2, label %if.end3, !dbg !4984

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4985

if.end3:                                          ; preds = %if.end
  %pointer4 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !4986
  %7 = load ptr, ptr %pointer4, align 8, !dbg !4986
  call void @acpi_os_free(ptr noundef %7) #17, !dbg !4986
  store i1 false, ptr %retval, align 1, !dbg !4987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4987

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !4988
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #15, !dbg !4988
  %8 = load i1, ptr %retval, align 1, !dbg !4988
  ret i1 %8, !dbg !4988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_nondev_subnode_extract(ptr noundef %desc, ptr noundef %handle, ptr noundef %link, ptr noundef %list, ptr noundef %parent) #0 align 16 !dbg !4989 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %link.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %result = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %scope = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4993, metadata !DIExpression()), !dbg !5004
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4994, metadata !DIExpression()), !dbg !5005
  store ptr %link, ptr %link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !4995, metadata !DIExpression()), !dbg !5006
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4996, metadata !DIExpression()), !dbg !5007
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4997, metadata !DIExpression()), !dbg !5008
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #15, !dbg !5009
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !4998, metadata !DIExpression()), !dbg !5010
  call void @llvm.lifetime.start.p0(i64 1, ptr %result) #15, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4999, metadata !DIExpression()), !dbg !5012
  %call = call noalias ptr @kzalloc(i64 noundef 248, i32 noundef 3264) #16, !dbg !5013
  store ptr %call, ptr %dn, align 8, !dbg !5014
  %0 = load ptr, ptr %dn, align 8, !dbg !5015
  %tobool = icmp ne ptr %0, null, !dbg !5015
  br i1 %tobool, label %if.end, label %if.then, !dbg !5017

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5018

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %link.addr, align 8, !dbg !5019
  %elements = getelementptr inbounds %struct.anon.7, ptr %1, i32 0, i32 2, !dbg !5020
  %2 = load ptr, ptr %elements, align 8, !dbg !5020
  %arrayidx = getelementptr %union.acpi_object, ptr %2, i64 0, !dbg !5019
  %pointer = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 2, !dbg !5021
  %3 = load ptr, ptr %pointer, align 8, !dbg !5021
  %4 = load ptr, ptr %dn, align 8, !dbg !5022
  %name = getelementptr inbounds %struct.acpi_data_node, ptr %4, i32 0, i32 0, !dbg !5023
  store ptr %3, ptr %name, align 8, !dbg !5024
  %5 = load ptr, ptr %dn, align 8, !dbg !5025
  %fwnode = getelementptr inbounds %struct.acpi_data_node, ptr %5, i32 0, i32 2, !dbg !5026
  call void @fwnode_init(ptr noundef %fwnode, ptr noundef @acpi_data_fwnode_ops) #17, !dbg !5027
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !5028
  %7 = load ptr, ptr %dn, align 8, !dbg !5029
  %parent1 = getelementptr inbounds %struct.acpi_data_node, ptr %7, i32 0, i32 3, !dbg !5030
  store ptr %6, ptr %parent1, align 8, !dbg !5031
  %8 = load ptr, ptr %dn, align 8, !dbg !5032
  %data = getelementptr inbounds %struct.acpi_data_node, ptr %8, i32 0, i32 4, !dbg !5033
  %properties = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 1, !dbg !5034
  call void @INIT_LIST_HEAD(ptr noundef %properties) #17, !dbg !5035
  %9 = load ptr, ptr %dn, align 8, !dbg !5036
  %data2 = getelementptr inbounds %struct.acpi_data_node, ptr %9, i32 0, i32 4, !dbg !5037
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %data2, i32 0, i32 3, !dbg !5038
  call void @INIT_LIST_HEAD(ptr noundef %subnodes) #17, !dbg !5039
  %10 = load ptr, ptr %handle.addr, align 8, !dbg !5040
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !5041
  %12 = load ptr, ptr %dn, align 8, !dbg !5042
  %data3 = getelementptr inbounds %struct.acpi_data_node, ptr %12, i32 0, i32 4, !dbg !5043
  %call4 = call zeroext i1 @acpi_extract_properties(ptr noundef %10, ptr noundef %11, ptr noundef %data3) #17, !dbg !5044
  %frombool = zext i1 %call4 to i8, !dbg !5045
  store i8 %frombool, ptr %result, align 1, !dbg !5045
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !5046
  %tobool5 = icmp ne ptr %13, null, !dbg !5046
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5047

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope) #15, !dbg !5048
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !5000, metadata !DIExpression()), !dbg !5049
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5003, metadata !DIExpression()), !dbg !5051
  %14 = load ptr, ptr %handle.addr, align 8, !dbg !5052
  %call7 = call i32 @acpi_get_parent(ptr noundef %14, ptr noundef %scope) #17, !dbg !5053
  store i32 %call7, ptr %status, align 4, !dbg !5054
  %15 = load i32, ptr %status, align 4, !dbg !5055
  %tobool8 = icmp ne i32 %15, 0, !dbg !5055
  br i1 %tobool8, label %if.end13, label %land.lhs.true, !dbg !5057

land.lhs.true:                                    ; preds = %if.then6
  %16 = load ptr, ptr %scope, align 8, !dbg !5058
  %17 = load ptr, ptr %desc.addr, align 8, !dbg !5059
  %18 = load ptr, ptr %dn, align 8, !dbg !5060
  %data9 = getelementptr inbounds %struct.acpi_data_node, ptr %18, i32 0, i32 4, !dbg !5061
  %19 = load ptr, ptr %dn, align 8, !dbg !5062
  %fwnode10 = getelementptr inbounds %struct.acpi_data_node, ptr %19, i32 0, i32 2, !dbg !5063
  %call11 = call zeroext i1 @acpi_enumerate_nondev_subnodes(ptr noundef %16, ptr noundef %17, ptr noundef %data9, ptr noundef %fwnode10) #17, !dbg !5064
  br i1 %call11, label %if.then12, label %if.end13, !dbg !5065

if.then12:                                        ; preds = %land.lhs.true
  store i8 1, ptr %result, align 1, !dbg !5066
  br label %if.end13, !dbg !5067

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope) #15, !dbg !5068
  br label %if.end19, !dbg !5069

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %desc.addr, align 8, !dbg !5070
  %21 = load ptr, ptr %dn, align 8, !dbg !5072
  %data14 = getelementptr inbounds %struct.acpi_data_node, ptr %21, i32 0, i32 4, !dbg !5073
  %22 = load ptr, ptr %dn, align 8, !dbg !5074
  %fwnode15 = getelementptr inbounds %struct.acpi_data_node, ptr %22, i32 0, i32 2, !dbg !5075
  %call16 = call zeroext i1 @acpi_enumerate_nondev_subnodes(ptr noundef null, ptr noundef %20, ptr noundef %data14, ptr noundef %fwnode15) #17, !dbg !5076
  br i1 %call16, label %if.then17, label %if.end18, !dbg !5077

if.then17:                                        ; preds = %if.else
  store i8 1, ptr %result, align 1, !dbg !5078
  br label %if.end18, !dbg !5080

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  %23 = load i8, ptr %result, align 1, !dbg !5081, !range !2294, !noundef !467
  %tobool20 = trunc i8 %23 to i1, !dbg !5081
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !5083

if.then21:                                        ; preds = %if.end19
  %24 = load ptr, ptr %handle.addr, align 8, !dbg !5084
  %25 = load ptr, ptr %dn, align 8, !dbg !5086
  %handle22 = getelementptr inbounds %struct.acpi_data_node, ptr %25, i32 0, i32 1, !dbg !5087
  store ptr %24, ptr %handle22, align 8, !dbg !5088
  %26 = load ptr, ptr %desc.addr, align 8, !dbg !5089
  %27 = load ptr, ptr %dn, align 8, !dbg !5090
  %data23 = getelementptr inbounds %struct.acpi_data_node, ptr %27, i32 0, i32 4, !dbg !5091
  %pointer24 = getelementptr inbounds %struct.acpi_device_data, ptr %data23, i32 0, i32 0, !dbg !5092
  store ptr %26, ptr %pointer24, align 8, !dbg !5093
  %28 = load ptr, ptr %dn, align 8, !dbg !5094
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %28, i32 0, i32 5, !dbg !5095
  %29 = load ptr, ptr %list.addr, align 8, !dbg !5096
  call void @list_add_tail(ptr noundef %sibling, ptr noundef %29) #17, !dbg !5097
  store i1 true, ptr %retval, align 1, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

if.end25:                                         ; preds = %if.end19
  %30 = load ptr, ptr %dn, align 8, !dbg !5099
  call void @kfree(ptr noundef %30) #17, !dbg !5100
  store i32 0, ptr %tmp, align 4, !dbg !5101
  %31 = load i32, ptr %tmp, align 4, !dbg !5104
  store i1 false, ptr %retval, align 1, !dbg !5105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5105

cleanup:                                          ; preds = %if.end25, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %result) #15, !dbg !5106
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #15, !dbg !5106
  %32 = load i1, ptr %retval, align 1, !dbg !5106
  ret i1 %32, !dbg !5106
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5107 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fwnode_init(ptr noundef %fwnode, ptr noundef %ops) #4 align 16 !dbg !5111 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5115, metadata !DIExpression()), !dbg !5117
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5116, metadata !DIExpression()), !dbg !5118
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5119
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !5120
  %ops1 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1, !dbg !5121
  store ptr %0, ptr %ops1, align 8, !dbg !5122
  %2 = load ptr, ptr %fwnode.addr, align 8, !dbg !5123
  %consumers = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 4, !dbg !5124
  call void @INIT_LIST_HEAD(ptr noundef %consumers) #17, !dbg !5125
  %3 = load ptr, ptr %fwnode.addr, align 8, !dbg !5126
  %suppliers = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 3, !dbg !5127
  call void @INIT_LIST_HEAD(ptr noundef %suppliers) #17, !dbg !5128
  ret void, !dbg !5129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5130 dso_local i32 @acpi_get_parent(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5133 dso_local void @kfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5134 dso_local i32 @acpi_attach_data(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_nondev_subnode_tag(ptr noundef %handle, ptr noundef %context) #0 align 16 !dbg !5141 {
entry:
  %handle.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5143, metadata !DIExpression()), !dbg !5145
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5144, metadata !DIExpression()), !dbg !5146
  ret void, !dbg !5147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5148 dso_local i32 @acpi_detach_data(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5151 dso_local void @wait_for_completion(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5154 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5158
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5159
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5160
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5161
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5162
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5163
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5164
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5165
  ret void, !dbg !5166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !5167 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5171
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !5173
  br i1 %call, label %if.end, label %if.then, !dbg !5174

if.then:                                          ; preds = %entry
  br label %return, !dbg !5175

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5176
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5177
  %2 = load ptr, ptr %prev, align 8, !dbg !5177
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5178
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5179
  %4 = load ptr, ptr %next, align 8, !dbg !5179
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !5180
  br label %return, !dbg !5181

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5181
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !5182 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  ret i1 true, !dbg !5188
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !5189 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5191, metadata !DIExpression()), !dbg !5193
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5192, metadata !DIExpression()), !dbg !5194
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5195
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5196
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5197
  store ptr %0, ptr %prev1, align 8, !dbg !5198
  br label %do.body, !dbg !5199

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5200

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5202

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5200

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5204
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5204
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5204
  store volatile ptr %2, ptr %next4, align 8, !dbg !5204
  br label %do.end5, !dbg !5204

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5200

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5206
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5207 dso_local zeroext i1 @acpi_device_is_present(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5210 dso_local ptr @acpi_device_get_match_data(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5211 dso_local zeroext i1 @acpi_dma_supported(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5212 dso_local i32 @acpi_get_dma_attr(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_node_prop_read(ptr noundef %fwnode, ptr noundef %propname, i32 noundef %proptype, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !5215 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5219, metadata !DIExpression()), !dbg !5224
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !5220, metadata !DIExpression()), !dbg !5225
  store i32 %proptype, ptr %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proptype.addr, metadata !5221, metadata !DIExpression()), !dbg !5226
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5222, metadata !DIExpression()), !dbg !5227
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !5223, metadata !DIExpression()), !dbg !5228
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !5229
  %call = call ptr @acpi_device_data_of_node(ptr noundef %0) #17, !dbg !5230
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !5231
  %2 = load i32, ptr %proptype.addr, align 4, !dbg !5232
  %3 = load ptr, ptr %val.addr, align 8, !dbg !5233
  %4 = load i64, ptr %nval.addr, align 8, !dbg !5234
  %call1 = call i32 @acpi_data_prop_read(ptr noundef %call, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !5235
  ret i32 %call1, !dbg !5236
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_data_prop_read(ptr noundef %data, ptr noundef %propname, i32 noundef %proptype, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !5237 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %obj = alloca ptr, align 8
  %items = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__items = alloca ptr, align 8
  %__val = alloca ptr, align 8
  %__nval = alloca i64, align 8
  %i = alloca i64, align 8
  %ret46 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__items69 = alloca ptr, align 8
  %__val70 = alloca ptr, align 8
  %__nval71 = alloca i64, align 8
  %i72 = alloca i64, align 8
  %ret73 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %__items106 = alloca ptr, align 8
  %__val107 = alloca ptr, align 8
  %__nval108 = alloca i64, align 8
  %i109 = alloca i64, align 8
  %ret110 = alloca i32, align 4
  %tmp141 = alloca i32, align 4
  %__items143 = alloca ptr, align 8
  %__val144 = alloca ptr, align 8
  %__nval145 = alloca i64, align 8
  %i146 = alloca i64, align 8
  %ret147 = alloca i32, align 4
  %tmp177 = alloca i32, align 4
  %__UNIQUE_ID___x208 = alloca i32, align 4
  %__UNIQUE_ID___y209 = alloca i32, align 4
  %tmp181 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5241, metadata !DIExpression()), !dbg !5277
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !5242, metadata !DIExpression()), !dbg !5278
  store i32 %proptype, ptr %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proptype.addr, metadata !5243, metadata !DIExpression()), !dbg !5279
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5244, metadata !DIExpression()), !dbg !5280
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !5245, metadata !DIExpression()), !dbg !5281
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !5282
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !5246, metadata !DIExpression()), !dbg !5283
  call void @llvm.lifetime.start.p0(i64 8, ptr %items) #15, !dbg !5284
  call void @llvm.dbg.declare(metadata ptr %items, metadata !5247, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5248, metadata !DIExpression()), !dbg !5287
  %0 = load i64, ptr %nval.addr, align 8, !dbg !5288
  %cmp = icmp eq i64 %0, 1, !dbg !5290
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5291

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !5292
  %tobool = icmp ne ptr %1, null, !dbg !5292
  br i1 %tobool, label %if.end5, label %if.then, !dbg !5293

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5294
  %3 = load ptr, ptr %propname.addr, align 8, !dbg !5296
  %4 = load i32, ptr %proptype.addr, align 4, !dbg !5297
  %5 = load ptr, ptr %val.addr, align 8, !dbg !5298
  %call = call i32 @acpi_data_prop_read_single(ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #17, !dbg !5299
  store i32 %call, ptr %ret, align 4, !dbg !5300
  %6 = load i32, ptr %ret, align 4, !dbg !5301
  %cmp1 = icmp sge i32 %6, 0, !dbg !5303
  br i1 %cmp1, label %if.then4, label %lor.lhs.false2, !dbg !5304

lor.lhs.false2:                                   ; preds = %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !5305
  %cmp3 = icmp eq i32 %7, -75, !dbg !5306
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5307

if.then4:                                         ; preds = %lor.lhs.false2, %if.then
  %8 = load i32, ptr %ret, align 4, !dbg !5308
  store i32 %8, ptr %retval, align 4, !dbg !5309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5309

if.end:                                           ; preds = %lor.lhs.false2
  br label %if.end5, !dbg !5310

if.end5:                                          ; preds = %if.end, %lor.lhs.false
  %9 = load ptr, ptr %data.addr, align 8, !dbg !5311
  %10 = load ptr, ptr %propname.addr, align 8, !dbg !5312
  %call6 = call i32 @acpi_data_get_property_array(ptr noundef %9, ptr noundef %10, i32 noundef 0, ptr noundef %obj) #17, !dbg !5313
  store i32 %call6, ptr %ret, align 4, !dbg !5314
  %11 = load i32, ptr %ret, align 4, !dbg !5315
  %tobool7 = icmp ne i32 %11, 0, !dbg !5315
  br i1 %tobool7, label %land.lhs.true, label %if.end13, !dbg !5317

land.lhs.true:                                    ; preds = %if.end5
  %12 = load i32, ptr %proptype.addr, align 4, !dbg !5318
  %cmp8 = icmp uge i32 %12, 0, !dbg !5319
  br i1 %cmp8, label %land.lhs.true9, label %if.end13, !dbg !5320

land.lhs.true9:                                   ; preds = %land.lhs.true
  %13 = load i32, ptr %proptype.addr, align 4, !dbg !5321
  %cmp10 = icmp ule i32 %13, 3, !dbg !5322
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !5323

if.then11:                                        ; preds = %land.lhs.true9
  %14 = load ptr, ptr %data.addr, align 8, !dbg !5324
  %15 = load ptr, ptr %propname.addr, align 8, !dbg !5325
  %call12 = call i32 @acpi_data_get_property(ptr noundef %14, ptr noundef %15, i32 noundef 3, ptr noundef %obj) #17, !dbg !5326
  store i32 %call12, ptr %ret, align 4, !dbg !5327
  br label %if.end13, !dbg !5328

if.end13:                                         ; preds = %if.then11, %land.lhs.true9, %land.lhs.true, %if.end5
  %16 = load i32, ptr %ret, align 4, !dbg !5329
  %tobool14 = icmp ne i32 %16, 0, !dbg !5329
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5331

if.then15:                                        ; preds = %if.end13
  %17 = load i32, ptr %ret, align 4, !dbg !5332
  store i32 %17, ptr %retval, align 4, !dbg !5333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5333

if.end16:                                         ; preds = %if.end13
  %18 = load ptr, ptr %val.addr, align 8, !dbg !5334
  %tobool17 = icmp ne ptr %18, null, !dbg !5334
  br i1 %tobool17, label %if.end22, label %if.then18, !dbg !5336

if.then18:                                        ; preds = %if.end16
  %19 = load ptr, ptr %obj, align 8, !dbg !5337
  %20 = load i32, ptr %19, align 8, !dbg !5340
  %cmp19 = icmp eq i32 %20, 3, !dbg !5341
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5342

if.then20:                                        ; preds = %if.then18
  %21 = load ptr, ptr %obj, align 8, !dbg !5343
  %length = getelementptr inbounds %struct.anon.6, ptr %21, i32 0, i32 1, !dbg !5344
  %22 = load i32, ptr %length, align 4, !dbg !5344
  store i32 %22, ptr %retval, align 4, !dbg !5345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5345

if.end21:                                         ; preds = %if.then18
  %23 = load ptr, ptr %obj, align 8, !dbg !5346
  %count = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, !dbg !5347
  %24 = load i32, ptr %count, align 4, !dbg !5347
  store i32 %24, ptr %retval, align 4, !dbg !5348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5348

if.end22:                                         ; preds = %if.end16
  %25 = load i32, ptr %proptype.addr, align 4, !dbg !5349
  switch i32 %25, label %sw.default [
    i32 4, label %sw.epilog
  ], !dbg !5350

sw.default:                                       ; preds = %if.end22
  %26 = load ptr, ptr %obj, align 8, !dbg !5351
  %27 = load i32, ptr %26, align 8, !dbg !5354
  %cmp23 = icmp eq i32 %27, 3, !dbg !5355
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !5356

if.then24:                                        ; preds = %sw.default
  %28 = load i64, ptr %nval.addr, align 8, !dbg !5357
  %29 = load ptr, ptr %obj, align 8, !dbg !5360
  %length25 = getelementptr inbounds %struct.anon.6, ptr %29, i32 0, i32 1, !dbg !5361
  %30 = load i32, ptr %length25, align 4, !dbg !5361
  %conv = zext i32 %30 to i64, !dbg !5360
  %cmp26 = icmp ugt i64 %28, %conv, !dbg !5362
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5363

if.then28:                                        ; preds = %if.then24
  store i32 -75, ptr %retval, align 4, !dbg !5364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5364

if.end29:                                         ; preds = %if.then24
  br label %if.end36, !dbg !5365

if.else:                                          ; preds = %sw.default
  %31 = load i64, ptr %nval.addr, align 8, !dbg !5366
  %32 = load ptr, ptr %obj, align 8, !dbg !5369
  %count30 = getelementptr inbounds %struct.anon.7, ptr %32, i32 0, i32 1, !dbg !5370
  %33 = load i32, ptr %count30, align 4, !dbg !5370
  %conv31 = zext i32 %33 to i64, !dbg !5369
  %cmp32 = icmp ugt i64 %31, %conv31, !dbg !5371
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5372

if.then34:                                        ; preds = %if.else
  store i32 -75, ptr %retval, align 4, !dbg !5373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5373

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end29
  br label %sw.epilog, !dbg !5374

sw.epilog:                                        ; preds = %if.end36, %if.end22
  %34 = load ptr, ptr %obj, align 8, !dbg !5375
  %35 = load i32, ptr %34, align 8, !dbg !5377
  %cmp37 = icmp eq i32 %35, 3, !dbg !5378
  br i1 %cmp37, label %if.then39, label %if.else44, !dbg !5379

if.then39:                                        ; preds = %sw.epilog
  %36 = load i32, ptr %proptype.addr, align 4, !dbg !5380
  %cmp40 = icmp ne i32 %36, 0, !dbg !5383
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !5384

if.then42:                                        ; preds = %if.then39
  store i32 -71, ptr %retval, align 4, !dbg !5385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5385

if.end43:                                         ; preds = %if.then39
  %37 = load ptr, ptr %obj, align 8, !dbg !5386
  store ptr %37, ptr %items, align 8, !dbg !5387
  br label %if.end45, !dbg !5388

if.else44:                                        ; preds = %sw.epilog
  %38 = load ptr, ptr %obj, align 8, !dbg !5389
  %elements = getelementptr inbounds %struct.anon.7, ptr %38, i32 0, i32 2, !dbg !5391
  %39 = load ptr, ptr %elements, align 8, !dbg !5391
  store ptr %39, ptr %items, align 8, !dbg !5392
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.end43
  %40 = load i32, ptr %proptype.addr, align 4, !dbg !5393
  switch i32 %40, label %sw.default190 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb68
    i32 2, label %sw.bb105
    i32 3, label %sw.bb142
    i32 4, label %sw.bb178
  ], !dbg !5394

sw.bb:                                            ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__items) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__items, metadata !5249, metadata !DIExpression()), !dbg !5395
  %41 = load ptr, ptr %items, align 8, !dbg !5395
  store ptr %41, ptr %__items, align 8, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !5252, metadata !DIExpression()), !dbg !5395
  %42 = load ptr, ptr %val.addr, align 8, !dbg !5395
  store ptr %42, ptr %__val, align 8, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %__nval) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %__nval, metadata !5253, metadata !DIExpression()), !dbg !5395
  %43 = load i64, ptr %nval.addr, align 8, !dbg !5395
  store i64 %43, ptr %__nval, align 8, !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5254, metadata !DIExpression()), !dbg !5395
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret46) #15, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %ret46, metadata !5255, metadata !DIExpression()), !dbg !5395
  store i32 0, ptr %ret46, align 4, !dbg !5395
  store i64 0, ptr %i, align 8, !dbg !5396
  br label %for.cond, !dbg !5396

for.cond:                                         ; preds = %for.inc, %sw.bb
  %44 = load i64, ptr %i, align 8, !dbg !5398
  %45 = load i64, ptr %__nval, align 8, !dbg !5398
  %cmp47 = icmp ult i64 %44, %45, !dbg !5398
  br i1 %cmp47, label %for.body, label %for.end, !dbg !5396

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %__items, align 8, !dbg !5400
  %47 = load i32, ptr %46, align 8, !dbg !5400
  %cmp49 = icmp eq i32 %47, 3, !dbg !5400
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !5403

if.then51:                                        ; preds = %for.body
  %48 = load ptr, ptr %__items, align 8, !dbg !5404
  %pointer = getelementptr inbounds %struct.anon.6, ptr %48, i32 0, i32 2, !dbg !5404
  %49 = load ptr, ptr %pointer, align 8, !dbg !5404
  %50 = load i64, ptr %i, align 8, !dbg !5404
  %arrayidx = getelementptr i8, ptr %49, i64 %50, !dbg !5404
  %51 = load i8, ptr %arrayidx, align 1, !dbg !5404
  %52 = load ptr, ptr %__val, align 8, !dbg !5404
  %53 = load i64, ptr %i, align 8, !dbg !5404
  %arrayidx52 = getelementptr i8, ptr %52, i64 %53, !dbg !5404
  store i8 %51, ptr %arrayidx52, align 1, !dbg !5404
  br label %for.inc, !dbg !5404

if.end53:                                         ; preds = %for.body
  %54 = load ptr, ptr %__items, align 8, !dbg !5406
  %55 = load i64, ptr %i, align 8, !dbg !5406
  %arrayidx54 = getelementptr %union.acpi_object, ptr %54, i64 %55, !dbg !5406
  %56 = load i32, ptr %arrayidx54, align 8, !dbg !5406
  %cmp55 = icmp ne i32 %56, 1, !dbg !5406
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !5403

if.then57:                                        ; preds = %if.end53
  store i32 -71, ptr %ret46, align 4, !dbg !5408
  br label %for.end, !dbg !5408

if.end58:                                         ; preds = %if.end53
  %57 = load ptr, ptr %__items, align 8, !dbg !5410
  %58 = load i64, ptr %i, align 8, !dbg !5410
  %arrayidx59 = getelementptr %union.acpi_object, ptr %57, i64 %58, !dbg !5410
  %value = getelementptr inbounds %struct.anon.4, ptr %arrayidx59, i32 0, i32 1, !dbg !5410
  %59 = load i64, ptr %value, align 8, !dbg !5410
  %cmp60 = icmp ugt i64 %59, 255, !dbg !5410
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !5403

if.then62:                                        ; preds = %if.end58
  store i32 -75, ptr %ret46, align 4, !dbg !5412
  br label %for.end, !dbg !5412

if.end63:                                         ; preds = %if.end58
  %60 = load ptr, ptr %__items, align 8, !dbg !5403
  %61 = load i64, ptr %i, align 8, !dbg !5403
  %arrayidx64 = getelementptr %union.acpi_object, ptr %60, i64 %61, !dbg !5403
  %value65 = getelementptr inbounds %struct.anon.4, ptr %arrayidx64, i32 0, i32 1, !dbg !5403
  %62 = load i64, ptr %value65, align 8, !dbg !5403
  %conv66 = trunc i64 %62 to i8, !dbg !5403
  %63 = load ptr, ptr %__val, align 8, !dbg !5403
  %64 = load i64, ptr %i, align 8, !dbg !5403
  %arrayidx67 = getelementptr i8, ptr %63, i64 %64, !dbg !5403
  store i8 %conv66, ptr %arrayidx67, align 1, !dbg !5403
  br label %for.inc, !dbg !5403

for.inc:                                          ; preds = %if.end63, %if.then51
  %65 = load i64, ptr %i, align 8, !dbg !5398
  %inc = add i64 %65, 1, !dbg !5398
  store i64 %inc, ptr %i, align 8, !dbg !5398
  br label %for.cond, !dbg !5398, !llvm.loop !5414

for.end:                                          ; preds = %if.then62, %if.then57, %for.cond
  %66 = load i32, ptr %ret46, align 4, !dbg !5395
  store i32 %66, ptr %tmp, align 4, !dbg !5396
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret46) #15, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__nval) #15, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #15, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__items) #15, !dbg !5415
  %67 = load i32, ptr %tmp, align 4, !dbg !5395
  store i32 %67, ptr %ret, align 4, !dbg !5416
  br label %sw.epilog191, !dbg !5417

sw.bb68:                                          ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__items69) #15, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %__items69, metadata !5256, metadata !DIExpression()), !dbg !5418
  %68 = load ptr, ptr %items, align 8, !dbg !5418
  store ptr %68, ptr %__items69, align 8, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val70) #15, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %__val70, metadata !5258, metadata !DIExpression()), !dbg !5418
  %69 = load ptr, ptr %val.addr, align 8, !dbg !5418
  store ptr %69, ptr %__val70, align 8, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %__nval71) #15, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %__nval71, metadata !5259, metadata !DIExpression()), !dbg !5418
  %70 = load i64, ptr %nval.addr, align 8, !dbg !5418
  store i64 %70, ptr %__nval71, align 8, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %i72) #15, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %i72, metadata !5260, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret73) #15, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %ret73, metadata !5261, metadata !DIExpression()), !dbg !5418
  store i32 0, ptr %ret73, align 4, !dbg !5418
  store i64 0, ptr %i72, align 8, !dbg !5419
  br label %for.cond74, !dbg !5419

for.cond74:                                       ; preds = %for.inc101, %sw.bb68
  %71 = load i64, ptr %i72, align 8, !dbg !5421
  %72 = load i64, ptr %__nval71, align 8, !dbg !5421
  %cmp75 = icmp ult i64 %71, %72, !dbg !5421
  br i1 %cmp75, label %for.body77, label %for.end103, !dbg !5419

for.body77:                                       ; preds = %for.cond74
  %73 = load ptr, ptr %__items69, align 8, !dbg !5423
  %74 = load i32, ptr %73, align 8, !dbg !5423
  %cmp78 = icmp eq i32 %74, 3, !dbg !5423
  br i1 %cmp78, label %if.then80, label %if.end85, !dbg !5426

if.then80:                                        ; preds = %for.body77
  %75 = load ptr, ptr %__items69, align 8, !dbg !5427
  %pointer81 = getelementptr inbounds %struct.anon.6, ptr %75, i32 0, i32 2, !dbg !5427
  %76 = load ptr, ptr %pointer81, align 8, !dbg !5427
  %77 = load i64, ptr %i72, align 8, !dbg !5427
  %arrayidx82 = getelementptr i8, ptr %76, i64 %77, !dbg !5427
  %78 = load i8, ptr %arrayidx82, align 1, !dbg !5427
  %conv83 = zext i8 %78 to i16, !dbg !5427
  %79 = load ptr, ptr %__val70, align 8, !dbg !5427
  %80 = load i64, ptr %i72, align 8, !dbg !5427
  %arrayidx84 = getelementptr i16, ptr %79, i64 %80, !dbg !5427
  store i16 %conv83, ptr %arrayidx84, align 2, !dbg !5427
  br label %for.inc101, !dbg !5427

if.end85:                                         ; preds = %for.body77
  %81 = load ptr, ptr %__items69, align 8, !dbg !5429
  %82 = load i64, ptr %i72, align 8, !dbg !5429
  %arrayidx86 = getelementptr %union.acpi_object, ptr %81, i64 %82, !dbg !5429
  %83 = load i32, ptr %arrayidx86, align 8, !dbg !5429
  %cmp87 = icmp ne i32 %83, 1, !dbg !5429
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5426

if.then89:                                        ; preds = %if.end85
  store i32 -71, ptr %ret73, align 4, !dbg !5431
  br label %for.end103, !dbg !5431

if.end90:                                         ; preds = %if.end85
  %84 = load ptr, ptr %__items69, align 8, !dbg !5433
  %85 = load i64, ptr %i72, align 8, !dbg !5433
  %arrayidx91 = getelementptr %union.acpi_object, ptr %84, i64 %85, !dbg !5433
  %value92 = getelementptr inbounds %struct.anon.4, ptr %arrayidx91, i32 0, i32 1, !dbg !5433
  %86 = load i64, ptr %value92, align 8, !dbg !5433
  %cmp93 = icmp ugt i64 %86, 65535, !dbg !5433
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !5426

if.then95:                                        ; preds = %if.end90
  store i32 -75, ptr %ret73, align 4, !dbg !5435
  br label %for.end103, !dbg !5435

if.end96:                                         ; preds = %if.end90
  %87 = load ptr, ptr %__items69, align 8, !dbg !5426
  %88 = load i64, ptr %i72, align 8, !dbg !5426
  %arrayidx97 = getelementptr %union.acpi_object, ptr %87, i64 %88, !dbg !5426
  %value98 = getelementptr inbounds %struct.anon.4, ptr %arrayidx97, i32 0, i32 1, !dbg !5426
  %89 = load i64, ptr %value98, align 8, !dbg !5426
  %conv99 = trunc i64 %89 to i16, !dbg !5426
  %90 = load ptr, ptr %__val70, align 8, !dbg !5426
  %91 = load i64, ptr %i72, align 8, !dbg !5426
  %arrayidx100 = getelementptr i16, ptr %90, i64 %91, !dbg !5426
  store i16 %conv99, ptr %arrayidx100, align 2, !dbg !5426
  br label %for.inc101, !dbg !5426

for.inc101:                                       ; preds = %if.end96, %if.then80
  %92 = load i64, ptr %i72, align 8, !dbg !5421
  %inc102 = add i64 %92, 1, !dbg !5421
  store i64 %inc102, ptr %i72, align 8, !dbg !5421
  br label %for.cond74, !dbg !5421, !llvm.loop !5437

for.end103:                                       ; preds = %if.then95, %if.then89, %for.cond74
  %93 = load i32, ptr %ret73, align 4, !dbg !5418
  store i32 %93, ptr %tmp104, align 4, !dbg !5419
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret73) #15, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %i72) #15, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__nval71) #15, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val70) #15, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__items69) #15, !dbg !5438
  %94 = load i32, ptr %tmp104, align 4, !dbg !5418
  store i32 %94, ptr %ret, align 4, !dbg !5439
  br label %sw.epilog191, !dbg !5440

sw.bb105:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__items106) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %__items106, metadata !5262, metadata !DIExpression()), !dbg !5441
  %95 = load ptr, ptr %items, align 8, !dbg !5441
  store ptr %95, ptr %__items106, align 8, !dbg !5441
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val107) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %__val107, metadata !5264, metadata !DIExpression()), !dbg !5441
  %96 = load ptr, ptr %val.addr, align 8, !dbg !5441
  store ptr %96, ptr %__val107, align 8, !dbg !5441
  call void @llvm.lifetime.start.p0(i64 8, ptr %__nval108) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %__nval108, metadata !5265, metadata !DIExpression()), !dbg !5441
  %97 = load i64, ptr %nval.addr, align 8, !dbg !5441
  store i64 %97, ptr %__nval108, align 8, !dbg !5441
  call void @llvm.lifetime.start.p0(i64 8, ptr %i109) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %i109, metadata !5266, metadata !DIExpression()), !dbg !5441
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret110) #15, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %ret110, metadata !5267, metadata !DIExpression()), !dbg !5441
  store i32 0, ptr %ret110, align 4, !dbg !5441
  store i64 0, ptr %i109, align 8, !dbg !5442
  br label %for.cond111, !dbg !5442

for.cond111:                                      ; preds = %for.inc138, %sw.bb105
  %98 = load i64, ptr %i109, align 8, !dbg !5444
  %99 = load i64, ptr %__nval108, align 8, !dbg !5444
  %cmp112 = icmp ult i64 %98, %99, !dbg !5444
  br i1 %cmp112, label %for.body114, label %for.end140, !dbg !5442

for.body114:                                      ; preds = %for.cond111
  %100 = load ptr, ptr %__items106, align 8, !dbg !5446
  %101 = load i32, ptr %100, align 8, !dbg !5446
  %cmp115 = icmp eq i32 %101, 3, !dbg !5446
  br i1 %cmp115, label %if.then117, label %if.end122, !dbg !5449

if.then117:                                       ; preds = %for.body114
  %102 = load ptr, ptr %__items106, align 8, !dbg !5450
  %pointer118 = getelementptr inbounds %struct.anon.6, ptr %102, i32 0, i32 2, !dbg !5450
  %103 = load ptr, ptr %pointer118, align 8, !dbg !5450
  %104 = load i64, ptr %i109, align 8, !dbg !5450
  %arrayidx119 = getelementptr i8, ptr %103, i64 %104, !dbg !5450
  %105 = load i8, ptr %arrayidx119, align 1, !dbg !5450
  %conv120 = zext i8 %105 to i32, !dbg !5450
  %106 = load ptr, ptr %__val107, align 8, !dbg !5450
  %107 = load i64, ptr %i109, align 8, !dbg !5450
  %arrayidx121 = getelementptr i32, ptr %106, i64 %107, !dbg !5450
  store i32 %conv120, ptr %arrayidx121, align 4, !dbg !5450
  br label %for.inc138, !dbg !5450

if.end122:                                        ; preds = %for.body114
  %108 = load ptr, ptr %__items106, align 8, !dbg !5452
  %109 = load i64, ptr %i109, align 8, !dbg !5452
  %arrayidx123 = getelementptr %union.acpi_object, ptr %108, i64 %109, !dbg !5452
  %110 = load i32, ptr %arrayidx123, align 8, !dbg !5452
  %cmp124 = icmp ne i32 %110, 1, !dbg !5452
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !5449

if.then126:                                       ; preds = %if.end122
  store i32 -71, ptr %ret110, align 4, !dbg !5454
  br label %for.end140, !dbg !5454

if.end127:                                        ; preds = %if.end122
  %111 = load ptr, ptr %__items106, align 8, !dbg !5456
  %112 = load i64, ptr %i109, align 8, !dbg !5456
  %arrayidx128 = getelementptr %union.acpi_object, ptr %111, i64 %112, !dbg !5456
  %value129 = getelementptr inbounds %struct.anon.4, ptr %arrayidx128, i32 0, i32 1, !dbg !5456
  %113 = load i64, ptr %value129, align 8, !dbg !5456
  %cmp130 = icmp ugt i64 %113, 4294967295, !dbg !5456
  br i1 %cmp130, label %if.then132, label %if.end133, !dbg !5449

if.then132:                                       ; preds = %if.end127
  store i32 -75, ptr %ret110, align 4, !dbg !5458
  br label %for.end140, !dbg !5458

if.end133:                                        ; preds = %if.end127
  %114 = load ptr, ptr %__items106, align 8, !dbg !5449
  %115 = load i64, ptr %i109, align 8, !dbg !5449
  %arrayidx134 = getelementptr %union.acpi_object, ptr %114, i64 %115, !dbg !5449
  %value135 = getelementptr inbounds %struct.anon.4, ptr %arrayidx134, i32 0, i32 1, !dbg !5449
  %116 = load i64, ptr %value135, align 8, !dbg !5449
  %conv136 = trunc i64 %116 to i32, !dbg !5449
  %117 = load ptr, ptr %__val107, align 8, !dbg !5449
  %118 = load i64, ptr %i109, align 8, !dbg !5449
  %arrayidx137 = getelementptr i32, ptr %117, i64 %118, !dbg !5449
  store i32 %conv136, ptr %arrayidx137, align 4, !dbg !5449
  br label %for.inc138, !dbg !5449

for.inc138:                                       ; preds = %if.end133, %if.then117
  %119 = load i64, ptr %i109, align 8, !dbg !5444
  %inc139 = add i64 %119, 1, !dbg !5444
  store i64 %inc139, ptr %i109, align 8, !dbg !5444
  br label %for.cond111, !dbg !5444, !llvm.loop !5460

for.end140:                                       ; preds = %if.then132, %if.then126, %for.cond111
  %120 = load i32, ptr %ret110, align 4, !dbg !5441
  store i32 %120, ptr %tmp141, align 4, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret110) #15, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 8, ptr %i109) #15, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__nval108) #15, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val107) #15, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__items106) #15, !dbg !5461
  %121 = load i32, ptr %tmp141, align 4, !dbg !5441
  store i32 %121, ptr %ret, align 4, !dbg !5462
  br label %sw.epilog191, !dbg !5463

sw.bb142:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__items143) #15, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %__items143, metadata !5268, metadata !DIExpression()), !dbg !5464
  %122 = load ptr, ptr %items, align 8, !dbg !5464
  store ptr %122, ptr %__items143, align 8, !dbg !5464
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val144) #15, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %__val144, metadata !5270, metadata !DIExpression()), !dbg !5464
  %123 = load ptr, ptr %val.addr, align 8, !dbg !5464
  store ptr %123, ptr %__val144, align 8, !dbg !5464
  call void @llvm.lifetime.start.p0(i64 8, ptr %__nval145) #15, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %__nval145, metadata !5271, metadata !DIExpression()), !dbg !5464
  %124 = load i64, ptr %nval.addr, align 8, !dbg !5464
  store i64 %124, ptr %__nval145, align 8, !dbg !5464
  call void @llvm.lifetime.start.p0(i64 8, ptr %i146) #15, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %i146, metadata !5272, metadata !DIExpression()), !dbg !5464
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret147) #15, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %ret147, metadata !5273, metadata !DIExpression()), !dbg !5464
  store i32 0, ptr %ret147, align 4, !dbg !5464
  store i64 0, ptr %i146, align 8, !dbg !5465
  br label %for.cond148, !dbg !5465

for.cond148:                                      ; preds = %for.inc174, %sw.bb142
  %125 = load i64, ptr %i146, align 8, !dbg !5467
  %126 = load i64, ptr %__nval145, align 8, !dbg !5467
  %cmp149 = icmp ult i64 %125, %126, !dbg !5467
  br i1 %cmp149, label %for.body151, label %for.end176, !dbg !5465

for.body151:                                      ; preds = %for.cond148
  %127 = load ptr, ptr %__items143, align 8, !dbg !5469
  %128 = load i32, ptr %127, align 8, !dbg !5469
  %cmp152 = icmp eq i32 %128, 3, !dbg !5469
  br i1 %cmp152, label %if.then154, label %if.end159, !dbg !5472

if.then154:                                       ; preds = %for.body151
  %129 = load ptr, ptr %__items143, align 8, !dbg !5473
  %pointer155 = getelementptr inbounds %struct.anon.6, ptr %129, i32 0, i32 2, !dbg !5473
  %130 = load ptr, ptr %pointer155, align 8, !dbg !5473
  %131 = load i64, ptr %i146, align 8, !dbg !5473
  %arrayidx156 = getelementptr i8, ptr %130, i64 %131, !dbg !5473
  %132 = load i8, ptr %arrayidx156, align 1, !dbg !5473
  %conv157 = zext i8 %132 to i64, !dbg !5473
  %133 = load ptr, ptr %__val144, align 8, !dbg !5473
  %134 = load i64, ptr %i146, align 8, !dbg !5473
  %arrayidx158 = getelementptr i64, ptr %133, i64 %134, !dbg !5473
  store i64 %conv157, ptr %arrayidx158, align 8, !dbg !5473
  br label %for.inc174, !dbg !5473

if.end159:                                        ; preds = %for.body151
  %135 = load ptr, ptr %__items143, align 8, !dbg !5475
  %136 = load i64, ptr %i146, align 8, !dbg !5475
  %arrayidx160 = getelementptr %union.acpi_object, ptr %135, i64 %136, !dbg !5475
  %137 = load i32, ptr %arrayidx160, align 8, !dbg !5475
  %cmp161 = icmp ne i32 %137, 1, !dbg !5475
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !5472

if.then163:                                       ; preds = %if.end159
  store i32 -71, ptr %ret147, align 4, !dbg !5477
  br label %for.end176, !dbg !5477

if.end164:                                        ; preds = %if.end159
  %138 = load ptr, ptr %__items143, align 8, !dbg !5479
  %139 = load i64, ptr %i146, align 8, !dbg !5479
  %arrayidx165 = getelementptr %union.acpi_object, ptr %138, i64 %139, !dbg !5479
  %value166 = getelementptr inbounds %struct.anon.4, ptr %arrayidx165, i32 0, i32 1, !dbg !5479
  %140 = load i64, ptr %value166, align 8, !dbg !5479
  %cmp167 = icmp ugt i64 %140, -1, !dbg !5479
  br i1 %cmp167, label %if.then169, label %if.end170, !dbg !5472

if.then169:                                       ; preds = %if.end164
  store i32 -75, ptr %ret147, align 4, !dbg !5481
  br label %for.end176, !dbg !5481

if.end170:                                        ; preds = %if.end164
  %141 = load ptr, ptr %__items143, align 8, !dbg !5472
  %142 = load i64, ptr %i146, align 8, !dbg !5472
  %arrayidx171 = getelementptr %union.acpi_object, ptr %141, i64 %142, !dbg !5472
  %value172 = getelementptr inbounds %struct.anon.4, ptr %arrayidx171, i32 0, i32 1, !dbg !5472
  %143 = load i64, ptr %value172, align 8, !dbg !5472
  %144 = load ptr, ptr %__val144, align 8, !dbg !5472
  %145 = load i64, ptr %i146, align 8, !dbg !5472
  %arrayidx173 = getelementptr i64, ptr %144, i64 %145, !dbg !5472
  store i64 %143, ptr %arrayidx173, align 8, !dbg !5472
  br label %for.inc174, !dbg !5472

for.inc174:                                       ; preds = %if.end170, %if.then154
  %146 = load i64, ptr %i146, align 8, !dbg !5467
  %inc175 = add i64 %146, 1, !dbg !5467
  store i64 %inc175, ptr %i146, align 8, !dbg !5467
  br label %for.cond148, !dbg !5467, !llvm.loop !5483

for.end176:                                       ; preds = %if.then169, %if.then163, %for.cond148
  %147 = load i32, ptr %ret147, align 4, !dbg !5464
  store i32 %147, ptr %tmp177, align 4, !dbg !5465
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret147) #15, !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr %i146) #15, !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr %__nval145) #15, !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val144) #15, !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr %__items143) #15, !dbg !5484
  %148 = load i32, ptr %tmp177, align 4, !dbg !5464
  store i32 %148, ptr %ret, align 4, !dbg !5485
  br label %sw.epilog191, !dbg !5486

sw.bb178:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x208) #15, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x208, metadata !5274, metadata !DIExpression()), !dbg !5487
  %149 = load i64, ptr %nval.addr, align 8, !dbg !5487
  %conv179 = trunc i64 %149 to i32, !dbg !5487
  store i32 %conv179, ptr %__UNIQUE_ID___x208, align 4, !dbg !5487
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y209) #15, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y209, metadata !5276, metadata !DIExpression()), !dbg !5487
  %150 = load ptr, ptr %obj, align 8, !dbg !5487
  %count180 = getelementptr inbounds %struct.anon.7, ptr %150, i32 0, i32 1, !dbg !5487
  %151 = load i32, ptr %count180, align 4, !dbg !5487
  store i32 %151, ptr %__UNIQUE_ID___y209, align 4, !dbg !5487
  %152 = load i32, ptr %__UNIQUE_ID___x208, align 4, !dbg !5487
  %153 = load i32, ptr %__UNIQUE_ID___y209, align 4, !dbg !5487
  %cmp182 = icmp ult i32 %152, %153, !dbg !5487
  br i1 %cmp182, label %cond.true, label %cond.false, !dbg !5487

cond.true:                                        ; preds = %sw.bb178
  %154 = load i32, ptr %__UNIQUE_ID___x208, align 4, !dbg !5487
  br label %cond.end, !dbg !5487

cond.false:                                       ; preds = %sw.bb178
  %155 = load i32, ptr %__UNIQUE_ID___y209, align 4, !dbg !5487
  br label %cond.end, !dbg !5487

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %154, %cond.true ], [ %155, %cond.false ], !dbg !5487
  store i32 %cond, ptr %tmp181, align 4, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y209) #15, !dbg !5488
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x208) #15, !dbg !5488
  %156 = load i32, ptr %tmp181, align 4, !dbg !5487
  %conv184 = zext i32 %156 to i64, !dbg !5488
  store i64 %conv184, ptr %nval.addr, align 8, !dbg !5489
  %157 = load i64, ptr %nval.addr, align 8, !dbg !5490
  %cmp185 = icmp eq i64 %157, 0, !dbg !5492
  br i1 %cmp185, label %if.then187, label %if.end188, !dbg !5493

if.then187:                                       ; preds = %cond.end
  store i32 -61, ptr %retval, align 4, !dbg !5494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5494

if.end188:                                        ; preds = %cond.end
  %158 = load ptr, ptr %items, align 8, !dbg !5495
  %159 = load ptr, ptr %val.addr, align 8, !dbg !5496
  %160 = load i64, ptr %nval.addr, align 8, !dbg !5497
  %call189 = call i32 @acpi_copy_property_array_string(ptr noundef %158, ptr noundef %159, i64 noundef %160) #17, !dbg !5498
  store i32 %call189, ptr %ret, align 4, !dbg !5499
  br label %sw.epilog191, !dbg !5500

sw.default190:                                    ; preds = %if.end45
  store i32 -22, ptr %ret, align 4, !dbg !5501
  br label %sw.epilog191, !dbg !5502

sw.epilog191:                                     ; preds = %sw.default190, %if.end188, %for.end176, %for.end140, %for.end103, %for.end
  %161 = load i32, ptr %ret, align 4, !dbg !5503
  store i32 %161, ptr %retval, align 4, !dbg !5504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5504

cleanup:                                          ; preds = %sw.epilog191, %if.then187, %if.then42, %if.then34, %if.then28, %if.end21, %if.then20, %if.then15, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 8, ptr %items) #15, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !5505
  %162 = load i32, ptr %retval, align 4, !dbg !5505
  ret i32 %162, !dbg !5505
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_data_prop_read_single(ptr noundef %data, ptr noundef %propname, i32 noundef %proptype, ptr noundef %val) #0 align 16 !dbg !5506 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %proptype.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5510, metadata !DIExpression()), !dbg !5516
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !5511, metadata !DIExpression()), !dbg !5517
  store i32 %proptype, ptr %proptype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proptype.addr, metadata !5512, metadata !DIExpression()), !dbg !5518
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5513, metadata !DIExpression()), !dbg !5519
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !5514, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5515, metadata !DIExpression()), !dbg !5523
  store i32 0, ptr %ret, align 4, !dbg !5523
  %0 = load i32, ptr %proptype.addr, align 4, !dbg !5524
  %cmp = icmp uge i32 %0, 0, !dbg !5526
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5527

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %proptype.addr, align 4, !dbg !5528
  %cmp1 = icmp ule i32 %1, 3, !dbg !5529
  br i1 %cmp1, label %if.then, label %if.else, !dbg !5530

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5531
  %3 = load ptr, ptr %propname.addr, align 8, !dbg !5532
  %call = call i32 @acpi_data_get_property(ptr noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef %obj) #17, !dbg !5533
  store i32 %call, ptr %ret, align 4, !dbg !5534
  br label %if.end5, !dbg !5535

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %proptype.addr, align 4, !dbg !5536
  %cmp2 = icmp eq i32 %4, 4, !dbg !5538
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5539

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5540
  %6 = load ptr, ptr %propname.addr, align 8, !dbg !5541
  %call4 = call i32 @acpi_data_get_property(ptr noundef %5, ptr noundef %6, i32 noundef 2, ptr noundef %obj) #17, !dbg !5542
  store i32 %call4, ptr %ret, align 4, !dbg !5543
  br label %if.end, !dbg !5544

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !5545
  %tobool = icmp ne i32 %7, 0, !dbg !5545
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !5547

if.then6:                                         ; preds = %if.end5
  %8 = load i32, ptr %ret, align 4, !dbg !5548
  store i32 %8, ptr %retval, align 4, !dbg !5549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5549

if.end7:                                          ; preds = %if.end5
  %9 = load i32, ptr %proptype.addr, align 4, !dbg !5550
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb26
    i32 3, label %sw.bb37
    i32 4, label %sw.bb42
  ], !dbg !5551

sw.bb:                                            ; preds = %if.end7
  %10 = load ptr, ptr %obj, align 8, !dbg !5552
  %value = getelementptr inbounds %struct.anon.4, ptr %10, i32 0, i32 1, !dbg !5555
  %11 = load i64, ptr %value, align 8, !dbg !5555
  %cmp8 = icmp ugt i64 %11, 255, !dbg !5556
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5557

if.then9:                                         ; preds = %sw.bb
  store i32 -75, ptr %retval, align 4, !dbg !5558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5558

if.end10:                                         ; preds = %sw.bb
  %12 = load ptr, ptr %val.addr, align 8, !dbg !5559
  %tobool11 = icmp ne ptr %12, null, !dbg !5559
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5561

if.then12:                                        ; preds = %if.end10
  %13 = load ptr, ptr %obj, align 8, !dbg !5562
  %value13 = getelementptr inbounds %struct.anon.4, ptr %13, i32 0, i32 1, !dbg !5563
  %14 = load i64, ptr %value13, align 8, !dbg !5563
  %conv = trunc i64 %14 to i8, !dbg !5562
  %15 = load ptr, ptr %val.addr, align 8, !dbg !5564
  store i8 %conv, ptr %15, align 1, !dbg !5565
  br label %if.end14, !dbg !5566

if.end14:                                         ; preds = %if.then12, %if.end10
  br label %sw.epilog, !dbg !5567

sw.bb15:                                          ; preds = %if.end7
  %16 = load ptr, ptr %obj, align 8, !dbg !5568
  %value16 = getelementptr inbounds %struct.anon.4, ptr %16, i32 0, i32 1, !dbg !5570
  %17 = load i64, ptr %value16, align 8, !dbg !5570
  %cmp17 = icmp ugt i64 %17, 65535, !dbg !5571
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5572

if.then19:                                        ; preds = %sw.bb15
  store i32 -75, ptr %retval, align 4, !dbg !5573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5573

if.end20:                                         ; preds = %sw.bb15
  %18 = load ptr, ptr %val.addr, align 8, !dbg !5574
  %tobool21 = icmp ne ptr %18, null, !dbg !5574
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !5576

if.then22:                                        ; preds = %if.end20
  %19 = load ptr, ptr %obj, align 8, !dbg !5577
  %value23 = getelementptr inbounds %struct.anon.4, ptr %19, i32 0, i32 1, !dbg !5578
  %20 = load i64, ptr %value23, align 8, !dbg !5578
  %conv24 = trunc i64 %20 to i16, !dbg !5577
  %21 = load ptr, ptr %val.addr, align 8, !dbg !5579
  store i16 %conv24, ptr %21, align 2, !dbg !5580
  br label %if.end25, !dbg !5581

if.end25:                                         ; preds = %if.then22, %if.end20
  br label %sw.epilog, !dbg !5582

sw.bb26:                                          ; preds = %if.end7
  %22 = load ptr, ptr %obj, align 8, !dbg !5583
  %value27 = getelementptr inbounds %struct.anon.4, ptr %22, i32 0, i32 1, !dbg !5585
  %23 = load i64, ptr %value27, align 8, !dbg !5585
  %cmp28 = icmp ugt i64 %23, 4294967295, !dbg !5586
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !5587

if.then30:                                        ; preds = %sw.bb26
  store i32 -75, ptr %retval, align 4, !dbg !5588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5588

if.end31:                                         ; preds = %sw.bb26
  %24 = load ptr, ptr %val.addr, align 8, !dbg !5589
  %tobool32 = icmp ne ptr %24, null, !dbg !5589
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5591

if.then33:                                        ; preds = %if.end31
  %25 = load ptr, ptr %obj, align 8, !dbg !5592
  %value34 = getelementptr inbounds %struct.anon.4, ptr %25, i32 0, i32 1, !dbg !5593
  %26 = load i64, ptr %value34, align 8, !dbg !5593
  %conv35 = trunc i64 %26 to i32, !dbg !5592
  %27 = load ptr, ptr %val.addr, align 8, !dbg !5594
  store i32 %conv35, ptr %27, align 4, !dbg !5595
  br label %if.end36, !dbg !5596

if.end36:                                         ; preds = %if.then33, %if.end31
  br label %sw.epilog, !dbg !5597

sw.bb37:                                          ; preds = %if.end7
  %28 = load ptr, ptr %val.addr, align 8, !dbg !5598
  %tobool38 = icmp ne ptr %28, null, !dbg !5598
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !5600

if.then39:                                        ; preds = %sw.bb37
  %29 = load ptr, ptr %obj, align 8, !dbg !5601
  %value40 = getelementptr inbounds %struct.anon.4, ptr %29, i32 0, i32 1, !dbg !5602
  %30 = load i64, ptr %value40, align 8, !dbg !5602
  %31 = load ptr, ptr %val.addr, align 8, !dbg !5603
  store i64 %30, ptr %31, align 8, !dbg !5604
  br label %if.end41, !dbg !5605

if.end41:                                         ; preds = %if.then39, %sw.bb37
  br label %sw.epilog, !dbg !5606

sw.bb42:                                          ; preds = %if.end7
  %32 = load ptr, ptr %val.addr, align 8, !dbg !5607
  %tobool43 = icmp ne ptr %32, null, !dbg !5607
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !5609

if.then44:                                        ; preds = %sw.bb42
  %33 = load ptr, ptr %obj, align 8, !dbg !5610
  %pointer = getelementptr inbounds %struct.anon.5, ptr %33, i32 0, i32 2, !dbg !5611
  %34 = load ptr, ptr %pointer, align 8, !dbg !5611
  %35 = load ptr, ptr %val.addr, align 8, !dbg !5612
  store ptr %34, ptr %35, align 8, !dbg !5613
  br label %if.end45, !dbg !5614

if.end45:                                         ; preds = %if.then44, %sw.bb42
  store i32 1, ptr %retval, align 4, !dbg !5615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5615

sw.default:                                       ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

sw.epilog:                                        ; preds = %if.end41, %if.end36, %if.end25, %if.end14
  %36 = load ptr, ptr %val.addr, align 8, !dbg !5617
  %tobool46 = icmp ne ptr %36, null, !dbg !5617
  %37 = zext i1 %tobool46 to i64, !dbg !5617
  %cond = select i1 %tobool46, i32 0, i32 1, !dbg !5617
  store i32 %cond, ptr %retval, align 4, !dbg !5618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end45, %if.then30, %if.then19, %if.then9, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !5619
  %38 = load i32, ptr %retval, align 4, !dbg !5619
  ret i32 %38, !dbg !5619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_copy_property_array_string(ptr noundef %items, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !5620 {
entry:
  %retval = alloca i32, align 4
  %items.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %items, ptr %items.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %items.addr, metadata !5624, metadata !DIExpression()), !dbg !5628
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5625, metadata !DIExpression()), !dbg !5629
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !5626, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5627, metadata !DIExpression()), !dbg !5632
  store i32 0, ptr %i, align 4, !dbg !5633
  br label %for.cond, !dbg !5635

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5636
  %conv = sext i32 %0 to i64, !dbg !5636
  %1 = load i64, ptr %nval.addr, align 8, !dbg !5638
  %cmp = icmp ult i64 %conv, %1, !dbg !5639
  br i1 %cmp, label %for.body, label %for.end, !dbg !5640

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %items.addr, align 8, !dbg !5641
  %3 = load i32, ptr %i, align 4, !dbg !5644
  %idxprom = sext i32 %3 to i64, !dbg !5641
  %arrayidx = getelementptr %union.acpi_object, ptr %2, i64 %idxprom, !dbg !5641
  %4 = load i32, ptr %arrayidx, align 8, !dbg !5645
  %cmp2 = icmp ne i32 %4, 2, !dbg !5646
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5647

if.then:                                          ; preds = %for.body
  store i32 -71, ptr %retval, align 4, !dbg !5648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5648

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %items.addr, align 8, !dbg !5649
  %6 = load i32, ptr %i, align 4, !dbg !5650
  %idxprom4 = sext i32 %6 to i64, !dbg !5649
  %arrayidx5 = getelementptr %union.acpi_object, ptr %5, i64 %idxprom4, !dbg !5649
  %pointer = getelementptr inbounds %struct.anon.5, ptr %arrayidx5, i32 0, i32 2, !dbg !5651
  %7 = load ptr, ptr %pointer, align 8, !dbg !5651
  %8 = load ptr, ptr %val.addr, align 8, !dbg !5652
  %9 = load i32, ptr %i, align 4, !dbg !5653
  %idxprom6 = sext i32 %9 to i64, !dbg !5652
  %arrayidx7 = getelementptr ptr, ptr %8, i64 %idxprom6, !dbg !5652
  store ptr %7, ptr %arrayidx7, align 8, !dbg !5654
  br label %for.inc, !dbg !5655

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !5656
  %inc = add i32 %10, 1, !dbg !5656
  store i32 %inc, ptr %i, align 4, !dbg !5656
  br label %for.cond, !dbg !5657, !llvm.loop !5658

for.end:                                          ; preds = %for.cond
  %11 = load i64, ptr %nval.addr, align 8, !dbg !5660
  %conv8 = trunc i64 %11 to i32, !dbg !5660
  store i32 %conv8, ptr %retval, align 4, !dbg !5661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5661

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5662
  %12 = load i32, ptr %retval, align 4, !dbg !5662
  ret i32 %12, !dbg !5662
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5663 dso_local ptr @fwnode_get_parent(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5664 dso_local void @fwnode_handle_put(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5665 dso_local ptr @fwnode_get_next_parent(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5666 dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_data_node_match(ptr noundef %fwnode, ptr noundef %name) #4 align 16 !dbg !5667 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %__to_acpi_data_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5669, metadata !DIExpression()), !dbg !5675
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5670, metadata !DIExpression()), !dbg !5676
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !5677
  %call = call zeroext i1 @is_acpi_data_node(ptr noundef %0) #17, !dbg !5678
  br i1 %call, label %cond.true, label %cond.false6, !dbg !5678

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode, metadata !5671, metadata !DIExpression()), !dbg !5679
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !5679
  store ptr %1, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !5679
  %2 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !5679
  %call1 = call zeroext i1 @is_acpi_data_node(ptr noundef %2) #17, !dbg !5679
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !5679

cond.true2:                                       ; preds = %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5673, metadata !DIExpression()), !dbg !5680
  %3 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !5680
  store ptr %3, ptr %__mptr, align 8, !dbg !5680
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5680
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !5680
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5679
  %5 = load ptr, ptr %tmp3, align 8, !dbg !5680
  br label %cond.end, !dbg !5679

cond.false:                                       ; preds = %cond.true
  br label %cond.end, !dbg !5679

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %5, %cond.true2 ], [ null, %cond.false ], !dbg !5679
  store ptr %cond, ptr %tmp, align 8, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !5681
  %6 = load ptr, ptr %tmp, align 8, !dbg !5679
  %name4 = getelementptr inbounds %struct.acpi_data_node, ptr %6, i32 0, i32 0, !dbg !5682
  %7 = load ptr, ptr %name4, align 8, !dbg !5682
  %8 = load ptr, ptr %name.addr, align 8, !dbg !5683
  %call5 = call i32 @strcmp(ptr noundef %7, ptr noundef %8) #17, !dbg !5684
  %tobool = icmp ne i32 %call5, 0, !dbg !5685
  %lnot = xor i1 %tobool, true, !dbg !5685
  %lnot.ext = zext i1 %lnot to i32, !dbg !5685
  br label %cond.end7, !dbg !5678

cond.false6:                                      ; preds = %entry
  br label %cond.end7, !dbg !5678

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i32 [ %lnot.ext, %cond.end ], [ 0, %cond.false6 ], !dbg !5678
  %tobool9 = icmp ne i32 %cond8, 0, !dbg !5678
  ret i1 %tobool9, !dbg !5686
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5687 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_acpi_graph_node(ptr noundef %fwnode, ptr noundef %str) #0 align 16 !dbg !5690 {
entry:
  %retval = alloca i1, align 1
  %fwnode.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_data_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5694, metadata !DIExpression()), !dbg !5702
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5695, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5696, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5706
  %call = call i64 @strlen(ptr noundef %0) #17, !dbg !5707
  %conv = trunc i64 %call to i32, !dbg !5707
  store i32 %conv, ptr %len, align 4, !dbg !5705
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #15, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5697, metadata !DIExpression()), !dbg !5709
  %1 = load i32, ptr %len, align 4, !dbg !5710
  %tobool = icmp ne i32 %1, 0, !dbg !5710
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5712

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %fwnode.addr, align 8, !dbg !5713
  %call1 = call zeroext i1 @is_acpi_data_node(ptr noundef %2) #17, !dbg !5714
  br i1 %call1, label %if.end, label %if.then, !dbg !5715

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5716

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_data_node_fwnode, metadata !5698, metadata !DIExpression()), !dbg !5717
  %3 = load ptr, ptr %fwnode.addr, align 8, !dbg !5717
  store ptr %3, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !5717
  %4 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !5717
  %call2 = call zeroext i1 @is_acpi_data_node(ptr noundef %4) #17, !dbg !5717
  br i1 %call2, label %cond.true, label %cond.false, !dbg !5717

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5700, metadata !DIExpression()), !dbg !5718
  %5 = load ptr, ptr %__to_acpi_data_node_fwnode, align 8, !dbg !5718
  store ptr %5, ptr %__mptr, align 8, !dbg !5718
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5718
  %add.ptr = getelementptr i8, ptr %6, i64 -16, !dbg !5718
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5718
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5717
  %7 = load ptr, ptr %tmp4, align 8, !dbg !5718
  br label %cond.end, !dbg !5717

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5717

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ], !dbg !5717
  store ptr %cond, ptr %tmp, align 8, !dbg !5717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_data_node_fwnode) #15, !dbg !5719
  %8 = load ptr, ptr %tmp, align 8, !dbg !5717
  %name5 = getelementptr inbounds %struct.acpi_data_node, ptr %8, i32 0, i32 0, !dbg !5720
  %9 = load ptr, ptr %name5, align 8, !dbg !5720
  store ptr %9, ptr %name, align 8, !dbg !5721
  %10 = load ptr, ptr %fwnode.addr, align 8, !dbg !5722
  %call6 = call zeroext i1 @fwnode_property_present(ptr noundef %10, ptr noundef @.str.19) #17, !dbg !5723
  br i1 %call6, label %land.lhs.true, label %lor.rhs, !dbg !5724

land.lhs.true:                                    ; preds = %cond.end
  %11 = load ptr, ptr %name, align 8, !dbg !5725
  %12 = load ptr, ptr %str.addr, align 8, !dbg !5726
  %13 = load i32, ptr %len, align 4, !dbg !5727
  %conv8 = zext i32 %13 to i64, !dbg !5727
  %call9 = call i32 @strncmp(ptr noundef %11, ptr noundef %12, i64 noundef %conv8) #17, !dbg !5728
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5728
  br i1 %tobool10, label %lor.rhs, label %land.lhs.true11, !dbg !5729

land.lhs.true11:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %name, align 8, !dbg !5730
  %15 = load i32, ptr %len, align 4, !dbg !5731
  %idxprom = zext i32 %15 to i64, !dbg !5730
  %arrayidx = getelementptr i8, ptr %14, i64 %idxprom, !dbg !5730
  %16 = load i8, ptr %arrayidx, align 1, !dbg !5730
  %conv12 = zext i8 %16 to i32, !dbg !5730
  %cmp = icmp eq i32 %conv12, 64, !dbg !5732
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5733

lor.rhs:                                          ; preds = %land.lhs.true11, %land.lhs.true, %cond.end
  %17 = load ptr, ptr %fwnode.addr, align 8, !dbg !5734
  %18 = load ptr, ptr %str.addr, align 8, !dbg !5735
  %call14 = call zeroext i1 @fwnode_property_present(ptr noundef %17, ptr noundef %18) #17, !dbg !5736
  br label %lor.end, !dbg !5733

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true11
  %19 = phi i1 [ true, %land.lhs.true11 ], [ %call14, %lor.rhs ]
  store i1 %19, ptr %retval, align 1, !dbg !5737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

cleanup:                                          ; preds = %lor.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #15, !dbg !5738
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !5738
  %20 = load i1, ptr %retval, align 1, !dbg !5738
  ret i1 %20, !dbg !5738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5739 dso_local i64 @strlen(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5742 dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_node_get_property_reference(ptr noundef %fwnode, ptr noundef %name, i64 noundef %index, ptr noundef %args) #4 align 16 !dbg !5743 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %args.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5747, metadata !DIExpression()), !dbg !5751
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5748, metadata !DIExpression()), !dbg !5752
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5749, metadata !DIExpression()), !dbg !5753
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !5750, metadata !DIExpression()), !dbg !5754
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !5755
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5756
  %2 = load i64, ptr %index.addr, align 8, !dbg !5757
  %3 = load ptr, ptr %args.addr, align 8, !dbg !5758
  %call = call i32 @__acpi_node_get_property_reference(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 8, ptr noundef %3) #17, !dbg !5759
  ret i32 %call, !dbg !5760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_graph_get_child_prop_value(ptr noundef %fwnode, ptr noundef %prop_name, i32 noundef %val) #0 align 16 !dbg !5761 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %prop_name.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %child = alloca ptr, align 8
  %nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5765, metadata !DIExpression()), !dbg !5773
  store ptr %prop_name, ptr %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prop_name.addr, metadata !5766, metadata !DIExpression()), !dbg !5774
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5767, metadata !DIExpression()), !dbg !5775
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #15, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5768, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !5778
  %call = call ptr @fwnode_get_next_child_node(ptr noundef %0, ptr noundef null) #17, !dbg !5778
  store ptr %call, ptr %child, align 8, !dbg !5778
  br label %for.cond, !dbg !5778

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %child, align 8, !dbg !5779
  %tobool = icmp ne ptr %1, null, !dbg !5778
  br i1 %tobool, label %for.body, label %for.end, !dbg !5778

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #15, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !5769, metadata !DIExpression()), !dbg !5781
  %2 = load ptr, ptr %child, align 8, !dbg !5782
  %3 = load ptr, ptr %prop_name.addr, align 8, !dbg !5784
  %call1 = call i32 @fwnode_property_read_u32(ptr noundef %2, ptr noundef %3, ptr noundef %nr) #17, !dbg !5785
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5785
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5786

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5787

if.end:                                           ; preds = %for.body
  %4 = load i32, ptr %val.addr, align 4, !dbg !5788
  %5 = load i32, ptr %nr, align 4, !dbg !5790
  %cmp = icmp eq i32 %4, %5, !dbg !5791
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5792

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %child, align 8, !dbg !5793
  store ptr %6, ptr %retval, align 8, !dbg !5794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5794

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5795
  br label %cleanup, !dbg !5795

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #15, !dbg !5795
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5796

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %7 = load ptr, ptr %fwnode.addr, align 8, !dbg !5779
  %8 = load ptr, ptr %child, align 8, !dbg !5779
  %call5 = call ptr @fwnode_get_next_child_node(ptr noundef %7, ptr noundef %8) #17, !dbg !5779
  store ptr %call5, ptr %child, align 8, !dbg !5779
  br label %for.cond, !dbg !5779, !llvm.loop !5797

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !5799

cleanup6:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #15, !dbg !5800
  %9 = load ptr, ptr %retval, align 8, !dbg !5800
  ret ptr %9, !dbg !5800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fwnode_property_read_u32(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %val) #4 align 16 !dbg !5801 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5805, metadata !DIExpression()), !dbg !5808
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !5806, metadata !DIExpression()), !dbg !5809
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5807, metadata !DIExpression()), !dbg !5810
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !5811
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !5812
  %2 = load ptr, ptr %val.addr, align 8, !dbg !5813
  %call = call i32 @fwnode_property_read_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 1) #17, !dbg !5814
  ret i32 %call, !dbg !5815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5816 dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_irq_get(ptr noundef %handle, i32 noundef %index, ptr noundef %res) #4 align 16 !dbg !5819 {
entry:
  %handle.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5823, metadata !DIExpression()), !dbg !5826
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5824, metadata !DIExpression()), !dbg !5827
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5825, metadata !DIExpression()), !dbg !5828
  ret i32 -22, !dbg !5829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_device_handle(ptr noundef %adev) #4 align 16 !dbg !5830 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5836
  %tobool = icmp ne ptr %0, null, !dbg !5836
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5836

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !5837
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !5838
  %2 = load ptr, ptr %handle, align 8, !dbg !5838
  br label %cond.end, !dbg !5836

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5836

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !5836
  ret ptr %cond, !dbg !5839
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!llvm.ident = !{!2122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/property.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "875b108c304b4e1dab827582b775d7b1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 40)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_property206", scope: !24, file: !2, line: 701, type: !138, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.property.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22property\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/property.ll drivers/acpi/property.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !128, globals: !2024, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !33, !40, !46, !53, !58, !66, !74, !83, !88, !93, !99, !105, !110, !120}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !27, line: 26, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !34, line: 312, baseType: !28, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!37 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!38 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!39 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !41, line: 45, baseType: !28, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!44 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!45 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !47, line: 487, baseType: !28, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!50 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!51 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!52 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !54, line: 65, baseType: !28, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!55 = !{!56, !57}
!56 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!57 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !59, line: 620, baseType: !28, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!62 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!63 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!64 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!65 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !59, line: 597, baseType: !67, size: 32, elements: !68)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!70 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!71 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!72 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!73 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !47, line: 547, baseType: !28, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82}
!76 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!78 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!79 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!80 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!81 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!82 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !47, line: 564, baseType: !28, size: 32, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!86 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !47, line: 577, baseType: !28, size: 32, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!91 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !47, line: 503, baseType: !28, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!96 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!97 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !100, line: 30, baseType: !28, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!103 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!104 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !28, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0)
!109 = !DIEnumerator(name: "true", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !111, line: 364, baseType: !28, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!112 = !{!113, !114, !115, !116, !117, !118, !119}
!113 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!114 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!115 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!116 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!117 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!118 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!119 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !100, line: 21, baseType: !28, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIEnumerator(name: "DEV_PROP_U8", value: 0)
!123 = !DIEnumerator(name: "DEV_PROP_U16", value: 1)
!124 = !DIEnumerator(name: "DEV_PROP_U32", value: 2)
!125 = !DIEnumerator(name: "DEV_PROP_U64", value: 3)
!126 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4)
!127 = !DIEnumerator(name: "DEV_PROP_REF", value: 5)
!128 = !{!129, !131, !138, !139, !152, !211, !1987, !380, !1998, !2000, !2006, !377, !67, !2008, !2009, !2017, !2019, !179, !180, !2021, !301, !2022, !159, !1629, !133, !2023}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !130, line: 154, baseType: !28)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !132, line: 127, baseType: !133)
!132 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!137 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !141, line: 225, size: 192, elements: !142)
!141 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!142 = !{!143, !149}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !140, file: !141, line: 226, baseType: !144, size: 128)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !130, line: 190, size: 128, elements: !145)
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !130, line: 191, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !144, file: !130, line: 191, baseType: !147, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !140, file: !141, line: 227, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !132, line: 908, size: 192, elements: !156)
!156 = !{!157, !161, !166, !173, !183, !190, !197, !205}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !132, line: 909, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !132, line: 644, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !28)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !155, file: !132, line: 913, baseType: !162, size: 128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 910, size: 128, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !132, line: 911, baseType: !158, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !162, file: !132, line: 912, baseType: !133, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !155, file: !132, line: 919, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 915, size: 128, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !132, line: 916, baseType: !158, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !167, file: !132, line: 917, baseType: !159, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !167, file: !132, line: 918, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !155, file: !132, line: 925, baseType: !174, size: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 921, size: 128, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !132, line: 922, baseType: !158, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !174, file: !132, line: 923, baseType: !159, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !174, file: !132, line: 924, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !182)
!182 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !155, file: !132, line: 931, baseType: !184, size: 128)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 927, size: 128, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !132, line: 928, baseType: !158, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !184, file: !132, line: 929, baseType: !159, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !184, file: !132, line: 930, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !155, file: !132, line: 937, baseType: !191, size: 128)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 933, size: 128, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !132, line: 934, baseType: !158, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !191, file: !132, line: 935, baseType: !158, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !191, file: !132, line: 936, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !132, line: 424, baseType: !138)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !155, file: !132, line: 944, baseType: !198, size: 192)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 939, size: 192, elements: !199)
!199 = !{!200, !201, !202, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !132, line: 940, baseType: !158, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !198, file: !132, line: 941, baseType: !159, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !198, file: !132, line: 942, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !132, line: 128, baseType: !133)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !198, file: !132, line: 943, baseType: !159, size: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !155, file: !132, line: 950, baseType: !206, size: 96)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !132, line: 946, size: 96, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !132, line: 947, baseType: !158, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !206, file: !132, line: 948, baseType: !159, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !206, file: !132, line: 949, baseType: !159, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !141, line: 367, size: 11200, elements: !213)
!213 = !{!214, !215, !216, !217, !1789, !1790, !1791, !1800, !1818, !1844, !1872, !1896, !1917, !1923, !1930, !1962, !1976, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !212, file: !141, line: 368, baseType: !159, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !212, file: !141, line: 369, baseType: !67, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !212, file: !141, line: 370, baseType: !196, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !212, file: !141, line: 371, baseType: !218, size: 512, offset: 128)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !219, line: 41, size: 512, elements: !220)
!219 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!220 = !{!221, !223, !1785, !1786, !1787, !1788}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !218, file: !219, line: 42, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !218, file: !219, line: 43, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !219, line: 125, size: 1408, elements: !227)
!227 = !{!228, !232, !236, !244, !1715, !1716, !1720, !1724, !1728, !1732, !1736, !1737, !1741, !1745, !1749, !1760, !1761, !1762, !1763, !1773, !1777, !1781}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !226, file: !219, line: 126, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!222, !222}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !226, file: !219, line: 127, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !222}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !226, file: !219, line: 128, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !242}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 35, baseType: !241)
!241 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !226, file: !219, line: 129, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !242, !250}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !47, line: 705, size: 5824, elements: !253)
!253 = !{!254, !899, !901, !904, !905, !956, !1422, !1423, !1424, !1425, !1426, !1433, !1601, !1614, !1624, !1628, !1630, !1631, !1632, !1636, !1643, !1644, !1647, !1650, !1654, !1655, !1656, !1659, !1660, !1661, !1662, !1692, !1693, !1694, !1697, !1700, !1709, !1710, !1711, !1712, !1713, !1714}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !252, file: !47, line: 706, baseType: !255, size: 512)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !256, line: 64, size: 512, elements: !257)
!256 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!257 = !{!258, !259, !260, !262, !343, !769, !884, !894, !895, !896, !897, !898}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !256, line: 65, baseType: !150, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !255, file: !256, line: 66, baseType: !144, size: 128, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !255, file: !256, line: 67, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !255, file: !256, line: 68, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !256, line: 168, size: 768, elements: !265)
!265 = !{!266, !267, !305, !306}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !264, file: !256, line: 169, baseType: !144, size: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !264, file: !256, line: 170, baseType: !268, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !269, line: 29, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !269, line: 17, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !269, line: 18, baseType: !273, size: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !269, line: 18, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !273, file: !269, line: 19, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 14, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !276, file: !277, line: 15, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 44, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !281, line: 14, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !281, line: 15, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !281, line: 15, size: 32, elements: !286)
!286 = !{!287, !292, !297}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !281, line: 16, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !130, line: 174, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 172, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !289, file: !130, line: 173, baseType: !67, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 24, baseType: !293, size: 16)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 24, size: 16, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !293, file: !281, line: 25, baseType: !180, size: 8)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !293, file: !281, line: 26, baseType: !180, size: 8, offset: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 28, baseType: !298, size: 32)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 28, size: 32, elements: !299)
!299 = !{!300, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !298, file: !281, line: 29, baseType: !301, size: 16)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !303)
!303 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !298, file: !281, line: 30, baseType: !301, size: 16, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !264, file: !256, line: 171, baseType: !255, size: 512, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !264, file: !256, line: 172, baseType: !307, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !256, line: 133, size: 192, elements: !310)
!310 = !{!311, !318, !323}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !309, file: !256, line: 134, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!67, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !256, line: 135, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!150, !316}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !309, file: !256, line: 136, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!67, !316, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !256, line: 125, size: 20736, elements: !330)
!330 = !{!331, !333, !337, !338, !342}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !329, file: !256, line: 126, baseType: !332, size: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 192, elements: !15)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !329, file: !256, line: 127, baseType: !334, size: 4096, offset: 192)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 4096, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !329, file: !256, line: 128, baseType: !67, size: 32, offset: 4288)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !329, file: !256, line: 129, baseType: !339, size: 16384, offset: 4320)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 2048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !329, file: !256, line: 130, baseType: !67, size: 32, offset: 20704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !255, file: !256, line: 69, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !256, line: 116, size: 384, elements: !347)
!347 = !{!348, !352, !381, !715, !746, !750}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !346, file: !256, line: 117, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !261}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !346, file: !256, line: 118, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !356, line: 254, size: 128, elements: !357)
!356 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!357 = !{!358, !373}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !355, file: !356, line: 255, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !261, !367, !172}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !130, line: 66, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !364, line: 73, baseType: !365)
!364 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !364, line: 15, baseType: !366)
!366 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !356, line: 30, size: 128, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !356, line: 31, baseType: !150, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !368, file: !356, line: 32, baseType: !372, size: 16, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !130, line: 24, baseType: !303)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !355, file: !356, line: 256, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!362, !261, !367, !150, !377}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 61, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !364, line: 72, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !364, line: 16, baseType: !380)
!380 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !346, file: !256, line: 119, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !356, line: 84, size: 320, elements: !386)
!386 = !{!387, !388, !392, !711, !713}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !356, line: 85, baseType: !150, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !385, file: !356, line: 86, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!372, !261, !367, !67}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !385, file: !356, line: 88, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!372, !261, !396, !67}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !356, line: 175, size: 512, elements: !398)
!398 = !{!399, !400, !401, !402, !409, !419, !420}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !397, file: !356, line: 176, baseType: !368, size: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !397, file: !356, line: 177, baseType: !377, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !397, file: !356, line: 178, baseType: !138, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !397, file: !356, line: 179, baseType: !403, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !408, line: 351, flags: DIFlagFwdDecl)
!408 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !397, file: !356, line: 180, baseType: !410, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!362, !413, !261, !396, !172, !416, !377}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !415, line: 537, flags: DIFlagFwdDecl)
!415 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !130, line: 52, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !364, line: 88, baseType: !418)
!418 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !397, file: !356, line: 182, baseType: !410, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !397, file: !356, line: 184, baseType: !421, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!67, !413, !261, !396, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !426, line: 625, size: 1344, elements: !427)
!426 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!427 = !{!428, !445, !662, !668, !675, !676, !681, !682, !694, !695, !698, !702, !703, !704, !705, !706, !709}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 628, baseType: !429, size: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 628, size: 128, elements: !430)
!430 = !{!431, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !426, line: 629, baseType: !432, size: 128)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !426, line: 629, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !432, file: !426, line: 631, baseType: !380, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !432, file: !426, line: 632, baseType: !380, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !429, file: !426, line: 635, baseType: !437, size: 128, align: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !130, line: 232, size: 128, align: 64, elements: !438)
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !130, line: 233, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !437, file: !130, line: 234, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !440}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !425, file: !426, line: 639, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !426, line: 733, size: 10240, elements: !448)
!448 = !{!449, !658}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !426, line: 734, baseType: !450, size: 10240)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !426, line: 734, size: 10240, elements: !451)
!451 = !{!452, !456, !470, !474, !475, !476, !477, !478, !479, !487, !488, !489, !495, !496, !505, !506, !507, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !554, !568, !571, !624, !625, !626, !629, !632, !633, !636, !637, !638, !645, !646}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !426, line: 739, baseType: !453, size: 512, align: 512)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !426, line: 739, size: 512, align: 512, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !453, file: !426, line: 747, baseType: !288, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !450, file: !426, line: 750, baseType: !457, size: 128, offset: 512)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !458, line: 218, size: 128, elements: !459)
!458 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!459 = !{!460, !468, !469}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !458, line: 219, baseType: !461, size: 32)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !458, line: 219, size: 32, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !461, file: !458, line: 220, baseType: !268, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !461, file: !458, line: 221, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !458, line: 197, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 197, elements: !467)
!467 = !{}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !457, file: !458, line: 223, baseType: !28, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !457, file: !458, line: 224, baseType: !138, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !450, file: !426, line: 752, baseType: !471, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!380, !413, !380, !380, !380, !380}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !450, file: !426, line: 756, baseType: !380, size: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !450, file: !426, line: 757, baseType: !380, size: 64, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !450, file: !426, line: 760, baseType: !380, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !450, file: !426, line: 761, baseType: !380, size: 64, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !450, file: !426, line: 763, baseType: !380, size: 64, offset: 960)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !450, file: !426, line: 764, baseType: !480, size: 64, offset: 1024)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !415, line: 299, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 299, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !482, file: !415, line: 299, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !486, line: 18, baseType: !380)
!486 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !450, file: !426, line: 773, baseType: !288, size: 32, offset: 1088)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !450, file: !426, line: 785, baseType: !288, size: 32, offset: 1120)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !450, file: !426, line: 795, baseType: !490, size: 64, offset: 1152)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !426, line: 726, size: 128, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !491, file: !426, line: 727, baseType: !133, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !491, file: !426, line: 728, baseType: !67, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !450, file: !426, line: 801, baseType: !380, size: 64, offset: 1216)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !450, file: !426, line: 804, baseType: !497, size: 64, offset: 1280)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !498, line: 13, baseType: !499)
!498 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !130, line: 181, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 179, size: 64, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !500, file: !130, line: 180, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !134, line: 22, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !136, line: 30, baseType: !418)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !450, file: !426, line: 806, baseType: !67, size: 32, offset: 1344)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !450, file: !426, line: 808, baseType: !268, size: 32, offset: 1376)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !450, file: !426, line: 823, baseType: !508, size: 320, offset: 1408)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !509, line: 48, size: 320, elements: !510)
!509 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!510 = !{!511, !512, !513, !518, !520}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !508, file: !509, line: 49, baseType: !497, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !508, file: !509, line: 55, baseType: !497, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !508, file: !509, line: 57, baseType: !514, size: 32, offset: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !515, line: 15, size: 32, elements: !516)
!515 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !514, file: !515, line: 20, baseType: !288, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !508, file: !509, line: 59, baseType: !519, size: 32, offset: 160)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 23, baseType: !276)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !508, file: !509, line: 60, baseType: !144, size: 128, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !450, file: !426, line: 825, baseType: !144, size: 128, offset: 1728)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !450, file: !426, line: 845, baseType: !67, size: 32, offset: 1856)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !450, file: !426, line: 849, baseType: !380, size: 64, offset: 1920)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !450, file: !426, line: 850, baseType: !380, size: 64, offset: 1984)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !450, file: !426, line: 852, baseType: !380, size: 64, offset: 2048)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !450, file: !426, line: 853, baseType: !380, size: 64, offset: 2112)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !450, file: !426, line: 854, baseType: !499, size: 64, offset: 2176)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !450, file: !426, line: 855, baseType: !380, size: 64, offset: 2240)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !450, file: !426, line: 856, baseType: !380, size: 64, offset: 2304)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !450, file: !426, line: 857, baseType: !380, size: 64, offset: 2368)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !450, file: !426, line: 858, baseType: !380, size: 64, offset: 2432)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !450, file: !426, line: 865, baseType: !533, size: 32, offset: 2496)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !534, line: 69, baseType: !535)
!534 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !534, line: 64, size: 32, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !535, file: !534, line: 65, baseType: !28, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !450, file: !426, line: 867, baseType: !268, size: 32, offset: 2528)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !450, file: !426, line: 869, baseType: !380, size: 64, offset: 2560)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !450, file: !426, line: 869, baseType: !380, size: 64, offset: 2624)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !450, file: !426, line: 869, baseType: !380, size: 64, offset: 2688)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !450, file: !426, line: 869, baseType: !380, size: 64, offset: 2752)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !450, file: !426, line: 870, baseType: !380, size: 64, offset: 2816)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !450, file: !426, line: 870, baseType: !380, size: 64, offset: 2880)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !450, file: !426, line: 870, baseType: !380, size: 64, offset: 2944)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !450, file: !426, line: 871, baseType: !380, size: 64, offset: 3008)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !450, file: !426, line: 871, baseType: !380, size: 64, offset: 3072)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !450, file: !426, line: 871, baseType: !380, size: 64, offset: 3136)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !450, file: !426, line: 871, baseType: !380, size: 64, offset: 3200)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !450, file: !426, line: 873, baseType: !551, size: 3328, offset: 3264)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 3328, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 52)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !450, file: !426, line: 875, baseType: !555, size: 1280, offset: 6592)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 1280, elements: !566)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !557, line: 22, size: 320, elements: !558)
!557 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!558 = !{!559, !560, !561, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !556, file: !557, line: 23, baseType: !519, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !556, file: !557, line: 24, baseType: !503, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !556, file: !557, line: 26, baseType: !144, size: 128, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !556, file: !557, line: 28, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !67)
!566 = !{!567}
!567 = !DISubrange(count: 4)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !450, file: !426, line: 877, baseType: !569, size: 64, offset: 7872)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !426, line: 877, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !450, file: !426, line: 880, baseType: !572, size: 1088, offset: 7936)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !573, line: 72, baseType: !574)
!573 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 23, size: 1088, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !583, !584, !592, !593, !618, !619, !620}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !574, file: !573, line: 28, baseType: !133, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !574, file: !573, line: 38, baseType: !499, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !574, file: !573, line: 40, baseType: !380, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !574, file: !573, line: 43, baseType: !508, size: 320, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !574, file: !573, line: 44, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !573, line: 44, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !573, line: 48, baseType: !380, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !573, line: 59, baseType: !585, size: 256, offset: 640)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !586, line: 66, size: 256, elements: !587)
!586 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!587 = !{!588, !589, !590, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !585, file: !586, line: 67, baseType: !497, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !585, file: !586, line: 68, baseType: !519, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !585, file: !586, line: 70, baseType: !514, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !585, file: !586, line: 72, baseType: !144, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !574, file: !573, line: 60, baseType: !138, size: 64, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !574, file: !573, line: 61, baseType: !594, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !597, line: 13, size: 1216, elements: !598)
!597 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !596, file: !597, line: 14, baseType: !138, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !597, line: 15, baseType: !380, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !596, file: !597, line: 17, baseType: !380, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !596, file: !597, line: 17, baseType: !380, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !596, file: !597, line: 18, baseType: !380, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !596, file: !597, line: 18, baseType: !380, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !596, file: !597, line: 19, baseType: !248, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !596, file: !597, line: 21, baseType: !366, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !596, file: !597, line: 23, baseType: !366, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !596, file: !597, line: 24, baseType: !366, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !596, file: !597, line: 25, baseType: !366, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !596, file: !597, line: 26, baseType: !366, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !596, file: !597, line: 27, baseType: !366, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !596, file: !597, line: 28, baseType: !366, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !596, file: !597, line: 29, baseType: !366, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !596, file: !597, line: 30, baseType: !366, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !596, file: !597, line: 31, baseType: !366, size: 64, offset: 1024)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !596, file: !597, line: 32, baseType: !366, size: 64, offset: 1088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !596, file: !597, line: 33, baseType: !366, size: 64, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !574, file: !573, line: 63, baseType: !288, size: 32, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !574, file: !573, line: 69, baseType: !301, size: 16, offset: 1056)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !574, file: !573, line: 70, baseType: !621, size: 16, offset: 1072)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !623)
!623 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !426, line: 882, baseType: !380, size: 64, offset: 9024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !450, file: !426, line: 885, baseType: !268, size: 32, offset: 9088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !450, file: !426, line: 886, baseType: !627, size: 64, offset: 9152)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !426, line: 732, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !450, file: !426, line: 901, baseType: !630, size: 64, offset: 9216)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !426, line: 901, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !450, file: !426, line: 904, baseType: !413, size: 64, offset: 9280)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !450, file: !426, line: 906, baseType: !634, size: 64, offset: 9344)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !426, line: 906, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !450, file: !426, line: 930, baseType: !288, size: 32, offset: 9408)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !450, file: !426, line: 933, baseType: !288, size: 32, offset: 9440)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !450, file: !426, line: 935, baseType: !639, size: 64, offset: 9472)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !640, line: 103, size: 64, elements: !641)
!640 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !639, file: !640, line: 104, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !640, line: 101, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !450, file: !426, line: 940, baseType: !497, size: 64, offset: 9536)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !450, file: !426, line: 942, baseType: !647, size: 256, offset: 9600)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !648, line: 98, size: 256, elements: !649)
!648 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !647, file: !648, line: 99, baseType: !497, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !647, file: !648, line: 100, baseType: !144, size: 128, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !647, file: !648, line: 101, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !648, line: 21, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !447, file: !426, line: 986, baseType: !659, offset: 10240)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: -1)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !425, file: !426, line: 640, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !415, line: 297, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !415, line: 297, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !664, file: !415, line: 297, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !486, line: 19, baseType: !380)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 646, baseType: !669, size: 64, offset: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 646, size: 64, elements: !670)
!670 = !{!671, !674}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !669, file: !426, line: 647, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !426, line: 542, baseType: !380)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !669, file: !426, line: 648, baseType: !673, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !425, file: !426, line: 666, baseType: !67, size: 32, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !425, file: !426, line: 667, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !426, line: 579, size: 320, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !678, file: !426, line: 580, baseType: !508, size: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !425, file: !426, line: 670, baseType: !240, size: 8, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !425, file: !426, line: 681, baseType: !683, size: 256, offset: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !426, line: 678, size: 256, elements: !684)
!684 = !{!685, !693}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !683, file: !426, line: 679, baseType: !686, size: 192, align: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !687, line: 5, size: 192, align: 64, elements: !688)
!687 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!688 = !{!689, !690, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !686, file: !687, line: 6, baseType: !380, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !686, file: !687, line: 7, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !686, file: !687, line: 8, baseType: !691, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !683, file: !426, line: 680, baseType: !380, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !425, file: !426, line: 689, baseType: !144, size: 128, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !425, file: !426, line: 691, baseType: !696, size: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !426, line: 691, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !425, file: !426, line: 694, baseType: !699, size: 64, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !426, line: 694, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !425, file: !426, line: 697, baseType: !380, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !425, file: !426, line: 699, baseType: !413, size: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !425, file: !426, line: 700, baseType: !138, size: 64, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !425, file: !426, line: 711, baseType: !497, size: 64, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !425, file: !426, line: 717, baseType: !707, size: 64, offset: 1280)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !426, line: 717, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !425, file: !426, line: 722, baseType: !710, offset: 1344)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !426, line: 570, elements: !467)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !385, file: !356, line: 90, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !385, file: !356, line: 91, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !346, file: !256, line: 120, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !316}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !27, line: 39, size: 384, elements: !722)
!722 = !{!723, !724, !728, !732, !738, !742}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !27, line: 40, baseType: !26, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !721, file: !27, line: 41, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!240}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !721, file: !27, line: 42, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!138}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !721, file: !27, line: 43, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!248, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !27, line: 19, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !721, file: !27, line: 44, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!248}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !721, file: !27, line: 45, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !138}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !346, file: !256, line: 121, baseType: !747, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!248, !316}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !346, file: !256, line: 122, baseType: !751, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !316, !754, !762}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !756, line: 23, baseType: !757)
!756 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !756, line: 21, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !757, file: !756, line: 22, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !130, line: 37, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !364, line: 49, baseType: !28)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !756, line: 28, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !756, line: 26, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !764, file: !756, line: 27, baseType: !767, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !130, line: 38, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !364, line: 50, baseType: !28)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !255, file: !256, line: 70, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !772, line: 190, size: 1152, elements: !773)
!772 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !876, !877, !878, !879, !880, !883}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !772, line: 191, baseType: !288, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !771, file: !772, line: 192, baseType: !288, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !771, file: !772, line: 202, baseType: !770, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !771, file: !772, line: 203, baseType: !150, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !771, file: !772, line: 205, baseType: !686, size: 192, align: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !771, file: !772, line: 207, baseType: !248, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !771, file: !772, line: 208, baseType: !28, size: 32, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !772, line: 209, baseType: !782, size: 256, offset: 512)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !772, line: 209, size: 256, elements: !783)
!783 = !{!784, !796, !800}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !782, file: !772, line: 210, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !772, line: 153, size: 256, elements: !786)
!786 = !{!787, !788, !792, !795}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !785, file: !772, line: 154, baseType: !380, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !785, file: !772, line: 156, baseType: !789, size: 64, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !687, line: 12, size: 64, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !789, file: !687, line: 13, baseType: !691, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !785, file: !772, line: 162, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !772, line: 162, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !785, file: !772, line: 167, baseType: !380, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !782, file: !772, line: 211, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !772, line: 170, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !797, file: !772, line: 171, baseType: !770, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !782, file: !772, line: 212, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !772, line: 174, size: 256, elements: !802)
!802 = !{!803, !871, !874, !875}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !801, file: !772, line: 175, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !772, line: 271, size: 768, elements: !807)
!807 = !{!808, !831, !835, !839, !844, !848, !852, !856, !857, !858, !859, !867}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !806, file: !772, line: 276, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!67, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !772, line: 251, size: 1216, elements: !814)
!814 = !{!815, !816, !817, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !813, file: !772, line: 253, baseType: !770, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !813, file: !772, line: 254, baseType: !413, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !813, file: !772, line: 255, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !820, line: 66, flags: DIFlagFwdDecl)
!820 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !813, file: !772, line: 256, baseType: !138, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !813, file: !772, line: 259, baseType: !585, size: 256, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !813, file: !772, line: 260, baseType: !585, size: 256, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !813, file: !772, line: 261, baseType: !67, size: 32, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !813, file: !772, line: 262, baseType: !144, size: 128, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !813, file: !772, line: 263, baseType: !172, size: 64, offset: 960)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !813, file: !772, line: 265, baseType: !377, size: 64, offset: 1024)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !813, file: !772, line: 266, baseType: !240, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !813, file: !772, line: 267, baseType: !240, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !813, file: !772, line: 268, baseType: !699, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !806, file: !772, line: 277, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !812}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !806, file: !772, line: 290, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!67, !818, !138}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !806, file: !772, line: 292, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!138, !818, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !806, file: !772, line: 293, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!138, !818, !138, !843}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !806, file: !772, line: 294, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !818, !138}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !806, file: !772, line: 296, baseType: !853, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!362, !812, !172, !377, !416}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !806, file: !772, line: 306, baseType: !377, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !806, file: !772, line: 313, baseType: !240, size: 8, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !806, file: !772, line: 314, baseType: !853, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !806, file: !772, line: 317, baseType: !860, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !812, !865}
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !864, line: 59, baseType: !28)
!864 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !772, line: 31, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !806, file: !772, line: 320, baseType: !868, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!67, !812, !424}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !801, file: !772, line: 176, baseType: !872, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !772, line: 35, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !801, file: !772, line: 177, baseType: !416, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !801, file: !772, line: 178, baseType: !770, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !771, file: !772, line: 215, baseType: !138, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !771, file: !772, line: 221, baseType: !133, size: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !772, line: 223, baseType: !303, size: 16, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !771, file: !772, line: 224, baseType: !372, size: 16, offset: 912)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !771, file: !772, line: 225, baseType: !881, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !772, line: 36, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !771, file: !772, line: 227, baseType: !437, size: 128, align: 64, offset: 1024)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !255, file: !256, line: 71, baseType: !885, size: 32, offset: 448)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !886, line: 19, size: 32, elements: !887)
!886 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !885, file: !886, line: 20, baseType: !889, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !890, line: 113, baseType: !891)
!890 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !890, line: 111, size: 32, elements: !892)
!892 = !{!893}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !891, file: !890, line: 112, baseType: !288, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !255, file: !256, line: 73, baseType: !28, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !255, file: !256, line: 74, baseType: !28, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !255, file: !256, line: 75, baseType: !28, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !255, file: !256, line: 76, baseType: !28, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !255, file: !256, line: 77, baseType: !28, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !252, file: !47, line: 707, baseType: !900, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !252, file: !47, line: 709, baseType: !902, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !47, line: 37, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !252, file: !47, line: 711, baseType: !150, size: 64, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !47, line: 712, baseType: !906, size: 64, offset: 704)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !47, line: 89, size: 384, elements: !909)
!909 = !{!910, !911, !912, !916, !921, !925}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !908, file: !47, line: 90, baseType: !150, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !908, file: !47, line: 91, baseType: !382, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !908, file: !47, line: 92, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!67, !250, !328}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !908, file: !47, line: 93, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!172, !250, !920, !754, !762}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !908, file: !47, line: 95, baseType: !922, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !900}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !908, file: !47, line: 97, baseType: !926, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !59, line: 286, size: 1472, elements: !929)
!929 = !{!930, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !928, file: !59, line: 287, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!67, !900}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !928, file: !59, line: 288, baseType: !922, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !928, file: !59, line: 289, baseType: !931, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !928, file: !59, line: 290, baseType: !931, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !928, file: !59, line: 291, baseType: !931, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !928, file: !59, line: 292, baseType: !931, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !928, file: !59, line: 293, baseType: !931, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !928, file: !59, line: 294, baseType: !931, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !928, file: !59, line: 295, baseType: !931, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !928, file: !59, line: 296, baseType: !931, size: 64, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !928, file: !59, line: 297, baseType: !931, size: 64, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !928, file: !59, line: 298, baseType: !931, size: 64, offset: 704)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !928, file: !59, line: 299, baseType: !931, size: 64, offset: 768)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !928, file: !59, line: 300, baseType: !931, size: 64, offset: 832)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !928, file: !59, line: 301, baseType: !931, size: 64, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !928, file: !59, line: 302, baseType: !931, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !928, file: !59, line: 303, baseType: !931, size: 64, offset: 1024)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !928, file: !59, line: 304, baseType: !931, size: 64, offset: 1088)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !928, file: !59, line: 305, baseType: !931, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !928, file: !59, line: 306, baseType: !931, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !928, file: !59, line: 307, baseType: !931, size: 64, offset: 1280)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !928, file: !59, line: 308, baseType: !931, size: 64, offset: 1344)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !928, file: !59, line: 309, baseType: !931, size: 64, offset: 1408)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !252, file: !47, line: 714, baseType: !957, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !960, line: 80, size: 1344, elements: !961)
!960 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!961 = !{!962, !963, !964, !965, !966, !967, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1421}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !959, file: !960, line: 81, baseType: !150, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !959, file: !960, line: 82, baseType: !150, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !959, file: !960, line: 83, baseType: !382, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !959, file: !960, line: 84, baseType: !382, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !959, file: !960, line: 85, baseType: !382, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !959, file: !960, line: 87, baseType: !968, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!67, !900, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !41, line: 96, size: 1152, elements: !973)
!973 = !{!974, !975, !976, !1352, !1353, !1354, !1355, !1371, !1384, !1385, !1386, !1387, !1388, !1396, !1397, !1398, !1399, !1400, !1401}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !41, line: 97, baseType: !150, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !972, file: !41, line: 98, baseType: !957, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !972, file: !41, line: 100, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !34, line: 402, size: 9216, align: 512, elements: !979)
!979 = !{!980, !981, !982, !986, !1007, !1033, !1034, !1035, !1036, !1040, !1043, !1044, !1045, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1108, !1112, !1132, !1150, !1151, !1152, !1153, !1162, !1185, !1186, !1189, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1203, !1204, !1310, !1318, !1319, !1320, !1322, !1326, !1327, !1331, !1332, !1333, !1334, !1336, !1337, !1338, !1345, !1346, !1347, !1351}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !978, file: !34, line: 403, baseType: !33, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !978, file: !34, line: 406, baseType: !144, size: 128, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !978, file: !34, line: 409, baseType: !983, size: 448, offset: 192)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 56)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !978, file: !34, line: 417, baseType: !987, size: 768, offset: 640)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !34, line: 45, size: 768, elements: !988)
!988 = !{!989, !990, !991, !992, !995}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !987, file: !34, line: 46, baseType: !255, size: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !987, file: !34, line: 47, baseType: !977, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !987, file: !34, line: 48, baseType: !261, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !987, file: !34, line: 49, baseType: !993, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !34, line: 49, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !987, file: !34, line: 50, baseType: !996, size: 64, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !998, line: 26, size: 256, elements: !999)
!998 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !997, file: !998, line: 27, baseType: !28, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !997, file: !998, line: 28, baseType: !1002, size: 192, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1003, line: 43, size: 192, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1002, file: !1003, line: 44, baseType: !519, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1002, file: !1003, line: 45, baseType: !144, size: 128, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !978, file: !34, line: 418, baseType: !1008, size: 64, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !34, line: 53, size: 448, elements: !1010)
!1010 = !{!1011, !1012, !1017, !1021, !1025, !1029}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1009, file: !34, line: 54, baseType: !368, size: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1009, file: !34, line: 55, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!362, !1008, !1016, !172}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1009, file: !34, line: 57, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!362, !1008, !1016, !150, !377}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1009, file: !34, line: 59, baseType: !1022, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !977, !150}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1009, file: !34, line: 60, baseType: !1026, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!67, !977}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1009, file: !34, line: 61, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !977}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !978, file: !34, line: 419, baseType: !150, size: 64, offset: 1472)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !978, file: !34, line: 420, baseType: !150, size: 64, offset: 1536)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !978, file: !34, line: 421, baseType: !261, size: 64, offset: 1600)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !978, file: !34, line: 424, baseType: !1037, size: 64, offset: 1664)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1039)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !34, line: 424, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !978, file: !34, line: 425, baseType: !1041, size: 64, offset: 1728)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !978, file: !34, line: 426, baseType: !28, size: 32, offset: 1792)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !978, file: !34, line: 435, baseType: !585, size: 256, offset: 1856)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !978, file: !34, line: 437, baseType: !1046, size: 64, offset: 2112)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1048, line: 69, size: 320, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1049 = !{!1050, !1051, !1052, !1069, !1071, !1075, !1076}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !1048, line: 70, baseType: !150, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1047, file: !1048, line: 71, baseType: !977, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1047, file: !1048, line: 72, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1048, line: 47, size: 256, elements: !1056)
!1056 = !{!1057, !1058, !1064, !1068}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !1048, line: 49, baseType: !28, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1055, file: !1048, line: 51, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!67, !150, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1055, file: !1048, line: 53, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!67, !172, !1062}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1055, file: !1048, line: 55, baseType: !743, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1047, file: !1048, line: 73, baseType: !1070, size: 16, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1047, file: !1048, line: 74, baseType: !1072, size: 8, offset: 208)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !134, line: 16, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !136, line: 20, baseType: !1074)
!1074 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !1048, line: 75, baseType: !180, size: 8, offset: 216)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !1048, line: 76, baseType: !1077, size: 64, offset: 256)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !1048, line: 76, size: 64, elements: !1078)
!1078 = !{!1079, !1080, !1087}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1077, file: !1048, line: 77, baseType: !138, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1077, file: !1048, line: 78, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1048, line: 86, size: 128, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1083, file: !1048, line: 87, baseType: !28, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1083, file: !1048, line: 88, baseType: !172, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1077, file: !1048, line: 79, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1048, line: 92, size: 256, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1096, !1097}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1090, file: !1048, line: 94, baseType: !28, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1090, file: !1048, line: 95, baseType: !28, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1090, file: !1048, line: 96, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1090, file: !1048, line: 97, baseType: !1053, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1090, file: !1048, line: 98, baseType: !138, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !978, file: !34, line: 438, baseType: !28, size: 32, offset: 2176)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !978, file: !34, line: 441, baseType: !28, size: 32, offset: 2208)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !978, file: !34, line: 442, baseType: !1037, size: 64, offset: 2240)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !978, file: !34, line: 443, baseType: !1041, size: 64, offset: 2304)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !978, file: !34, line: 444, baseType: !240, size: 8, offset: 2368)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !978, file: !34, line: 451, baseType: !240, size: 8, offset: 2376)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !978, file: !34, line: 454, baseType: !28, size: 32, offset: 2400)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !978, file: !34, line: 455, baseType: !1106, size: 64, offset: 2432)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !34, line: 43, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !978, file: !34, line: 458, baseType: !1109, size: 64, offset: 2496)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!67}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !978, file: !34, line: 460, baseType: !1113, size: 4032, align: 512, offset: 2560)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 4032, elements: !1130)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !34, line: 362, size: 576, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1114, file: !34, line: 363, baseType: !138, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !34, line: 364, baseType: !28, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1114, file: !34, line: 367, baseType: !1119, size: 448, offset: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !34, line: 319, size: 448, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1119, file: !34, line: 320, baseType: !977, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1119, file: !34, line: 321, baseType: !1123, size: 384, offset: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1124, line: 40, size: 384, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1123, file: !1124, line: 41, baseType: !1127, size: 384, align: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 384, align: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 2)
!1130 = !{!1131}
!1131 = !DISubrange(count: 7)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !978, file: !34, line: 463, baseType: !1133, size: 192, offset: 6592)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1134, line: 8, size: 192, elements: !1135)
!1134 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1135 = !{!1136, !1137, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1133, file: !1134, line: 10, baseType: !28, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1133, file: !1134, line: 11, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1133, file: !1134, line: 12, baseType: !1140, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1142, line: 59, size: 48, elements: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1141, file: !1142, line: 60, baseType: !621, size: 16)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1141, file: !1142, line: 61, baseType: !621, size: 16, offset: 16)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1141, file: !1142, line: 63, baseType: !28, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1141, file: !1142, line: 64, baseType: !28, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1141, file: !1142, line: 65, baseType: !28, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1141, file: !1142, line: 66, baseType: !28, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !978, file: !34, line: 465, baseType: !380, size: 64, offset: 6784)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !978, file: !34, line: 469, baseType: !28, size: 32, offset: 6848)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !978, file: !34, line: 470, baseType: !144, size: 128, offset: 6912)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !978, file: !34, line: 471, baseType: !1154, size: 64, offset: 7040)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1156, line: 33, size: 96, elements: !1157)
!1156 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1157 = !{!1158, !1159, !1160, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1155, file: !1156, line: 37, baseType: !67, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1155, file: !1156, line: 43, baseType: !67, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1155, file: !1156, line: 45, baseType: !303, size: 16, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !1156, line: 47, baseType: !303, size: 16, offset: 80)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !978, file: !34, line: 476, baseType: !1163, size: 64, offset: 7104)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !34, line: 378, size: 256, elements: !1165)
!1165 = !{!1166, !1182, !1183, !1184}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1164, file: !34, line: 379, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1169, line: 204, baseType: !1170)
!1169 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1169, line: 197, size: 192, elements: !1171)
!1171 = !{!1172, !1174, !1175, !1176, !1178, !1180}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1170, file: !1169, line: 198, baseType: !1173, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1169, line: 21, baseType: !160)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1170, file: !1169, line: 199, baseType: !182, size: 8, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1170, file: !1169, line: 200, baseType: !182, size: 8, offset: 40)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1170, file: !1169, line: 201, baseType: !1177, size: 16, offset: 48)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1169, line: 17, baseType: !302)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1170, file: !1169, line: 202, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1169, line: 16, baseType: !135)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1170, file: !1169, line: 203, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1169, line: 22, baseType: !135)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1164, file: !34, line: 380, baseType: !28, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1164, file: !34, line: 381, baseType: !172, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1164, file: !34, line: 382, baseType: !172, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !978, file: !34, line: 477, baseType: !1164, size: 256, offset: 7168)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !978, file: !34, line: 480, baseType: !1187, size: 64, offset: 7424)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !34, line: 480, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !978, file: !34, line: 483, baseType: !1190, size: 64, offset: 7488)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !34, line: 483, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !978, file: !34, line: 488, baseType: !172, size: 64, offset: 7552)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !978, file: !34, line: 492, baseType: !138, size: 64, offset: 7616)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !978, file: !34, line: 493, baseType: !28, size: 32, offset: 7680)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !978, file: !34, line: 495, baseType: !138, size: 64, offset: 7744)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !978, file: !34, line: 496, baseType: !28, size: 32, offset: 7808)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !978, file: !34, line: 499, baseType: !28, size: 32, offset: 7840)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !978, file: !34, line: 500, baseType: !1199, size: 64, offset: 7872)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1201, line: 45, baseType: !1202)
!1201 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !978, file: !34, line: 503, baseType: !28, size: 32, offset: 7936)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !978, file: !34, line: 504, baseType: !1205, size: 64, offset: 8000)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1208, line: 96, size: 192, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1209 = !{!1210, !1211, !1271, !1274}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1207, file: !1208, line: 97, baseType: !28, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1207, file: !1208, line: 98, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1208, line: 24, size: 3072, elements: !1214)
!1214 = !{!1215, !1217, !1218, !1219, !1220, !1234, !1235, !1236, !1237, !1255, !1256, !1257, !1268, !1269, !1270}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1213, file: !1208, line: 26, baseType: !1216, size: 128)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 128, elements: !1128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1213, file: !1208, line: 27, baseType: !1216, size: 128, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1213, file: !1208, line: 28, baseType: !67, size: 32, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1213, file: !1208, line: 31, baseType: !268, size: 32, align: 512, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1213, file: !1208, line: 32, baseType: !1221, size: 960, offset: 576)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1222, line: 206, size: 960, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1223 = !{!1224, !1225, !1228, !1230, !1231, !1233}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1221, file: !1222, line: 207, baseType: !440, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1221, file: !1222, line: 208, baseType: !1226, size: 256, offset: 64)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 256, elements: !566)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1221, file: !1222, line: 209, baseType: !1229, size: 256, offset: 320)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !566)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1221, file: !1222, line: 213, baseType: !366, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1221, file: !1222, line: 215, baseType: !1232, size: 256, offset: 640)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !566)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !1222, line: 216, baseType: !180, size: 8, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1213, file: !1208, line: 33, baseType: !380, size: 64, offset: 1536)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1213, file: !1208, line: 34, baseType: !380, size: 64, offset: 1600)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1213, file: !1208, line: 35, baseType: !240, size: 8, offset: 1664)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1213, file: !1208, line: 36, baseType: !1238, size: 320, offset: 1728)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1239, line: 11, size: 320, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1240 = !{!1241, !1248, !1249, !1254}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1238, file: !1239, line: 16, baseType: !1242, size: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !130, line: 198, size: 128, elements: !1243)
!1243 = !{!1244, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !130, line: 199, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1242, file: !130, line: 199, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1238, file: !1239, line: 17, baseType: !380, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1238, file: !1239, line: 18, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !1239, line: 19, baseType: !159, size: 32, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1213, file: !1208, line: 37, baseType: !647, size: 256, offset: 2048)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1213, file: !1208, line: 38, baseType: !437, size: 128, align: 64, offset: 2304)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1213, file: !1208, line: 39, baseType: !1258, size: 64, offset: 2432)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1208, line: 49, size: 768, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1259, file: !1208, line: 50, baseType: !268, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1259, file: !1208, line: 51, baseType: !1229, size: 256, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1259, file: !1208, line: 53, baseType: !1229, size: 256, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1259, file: !1208, line: 54, baseType: !380, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1259, file: !1208, line: 55, baseType: !1258, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1259, file: !1208, line: 56, baseType: !67, size: 32, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1259, file: !1208, line: 57, baseType: !67, size: 32, offset: 736)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1213, file: !1208, line: 40, baseType: !380, size: 64, offset: 2496)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1213, file: !1208, line: 42, baseType: !67, size: 32, offset: 2560)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1213, file: !1208, line: 43, baseType: !1206, size: 64, offset: 2624)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1207, file: !1208, line: 99, baseType: !1272, offset: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1273, line: 211, elements: !467)
!1273 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1207, file: !1208, line: 100, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1208, line: 63, size: 3008, elements: !1277)
!1277 = !{!1278, !1279, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1309}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1276, file: !1208, line: 64, baseType: !1258, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1276, file: !1208, line: 65, baseType: !1280, size: 192, offset: 64)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1258, size: 192, elements: !15)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1276, file: !1208, line: 67, baseType: !67, size: 32, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1276, file: !1208, line: 68, baseType: !585, size: 256, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !1208, line: 69, baseType: !268, size: 32, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1276, file: !1208, line: 70, baseType: !585, size: 256, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1276, file: !1208, line: 71, baseType: !380, size: 64, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1276, file: !1208, line: 72, baseType: !380, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1276, file: !1208, line: 73, baseType: !380, size: 64, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1276, file: !1208, line: 74, baseType: !380, size: 64, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1276, file: !1208, line: 75, baseType: !380, size: 64, offset: 1152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1276, file: !1208, line: 76, baseType: !380, size: 64, offset: 1216)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1276, file: !1208, line: 77, baseType: !380, size: 64, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1276, file: !1208, line: 78, baseType: !380, size: 64, offset: 1344)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1276, file: !1208, line: 79, baseType: !240, size: 8, offset: 1408)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1276, file: !1208, line: 80, baseType: !380, size: 64, offset: 1472)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1276, file: !1208, line: 81, baseType: !585, size: 256, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1276, file: !1208, line: 82, baseType: !997, size: 256, offset: 1792)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1276, file: !1208, line: 84, baseType: !288, size: 32, offset: 2048)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1276, file: !1208, line: 87, baseType: !380, size: 64, offset: 2112)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1276, file: !1208, line: 88, baseType: !380, size: 64, offset: 2176)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1276, file: !1208, line: 89, baseType: !1301, size: 704, offset: 2240)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !648, line: 111, size: 704, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1301, file: !648, line: 112, baseType: !647, size: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1301, file: !648, line: 113, baseType: !1238, size: 320, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1301, file: !648, line: 116, baseType: !1306, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !648, line: 18, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1301, file: !648, line: 117, baseType: !67, size: 32, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1276, file: !1208, line: 90, baseType: !1206, size: 64, offset: 2944)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !978, file: !34, line: 515, baseType: !1311, size: 64, offset: 8064)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1313, line: 117, size: 128, elements: !1314)
!1313 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1312, file: !1313, line: 118, baseType: !564, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1312, file: !1313, line: 119, baseType: !564, size: 32, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1312, file: !1313, line: 120, baseType: !366, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !978, file: !34, line: 516, baseType: !28, size: 32, offset: 8128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !978, file: !34, line: 519, baseType: !28, size: 32, offset: 8160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !978, file: !34, line: 520, baseType: !1321, size: 64, offset: 8192)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !978, file: !34, line: 523, baseType: !1323, size: 64, offset: 8256)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !34, line: 523, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !978, file: !34, line: 524, baseType: !28, size: 32, offset: 8320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !978, file: !34, line: 525, baseType: !1328, size: 64, offset: 8384)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !34, line: 525, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !978, file: !34, line: 526, baseType: !28, size: 32, offset: 8448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !978, file: !34, line: 533, baseType: !138, size: 64, offset: 8512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !978, file: !34, line: 534, baseType: !28, size: 32, offset: 8576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !978, file: !34, line: 535, baseType: !1335, size: 64, offset: 8640)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !978, file: !34, line: 536, baseType: !28, size: 32, offset: 8704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !978, file: !34, line: 539, baseType: !67, size: 32, offset: 8736)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !978, file: !34, line: 540, baseType: !1339, size: 64, offset: 8768)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1341, line: 32, size: 64, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1340, file: !1341, line: 33, baseType: !564, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1340, file: !1341, line: 34, baseType: !564, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !978, file: !34, line: 563, baseType: !144, size: 128, offset: 8832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !978, file: !34, line: 565, baseType: !144, size: 128, offset: 8960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !978, file: !34, line: 568, baseType: !1348, size: 64, offset: 9088)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !978, file: !34, line: 570, baseType: !288, size: 32, offset: 9152)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !972, file: !41, line: 101, baseType: !150, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !972, file: !41, line: 103, baseType: !240, size: 8, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !972, file: !41, line: 104, baseType: !40, size: 32, offset: 288)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !972, file: !41, line: 106, baseType: !1356, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1359, line: 282, size: 1600, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1360 = !{!1361, !1365, !1366, !1370}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1358, file: !1359, line: 283, baseType: !1362, size: 256)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1358, file: !1359, line: 284, baseType: !1362, size: 256, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1358, file: !1359, line: 285, baseType: !1367, size: 1024, offset: 512)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1368)
!1368 = !{!1369}
!1369 = !DISubrange(count: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1358, file: !1359, line: 286, baseType: !248, size: 64, offset: 1536)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !972, file: !41, line: 107, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1359, line: 217, size: 256, elements: !1375)
!1375 = !{!1376, !1380, !1382, !1383}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1374, file: !1359, line: 218, baseType: !1377, size: 128)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 16)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1374, file: !1359, line: 219, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1359, line: 15, baseType: !380)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1374, file: !1359, line: 220, baseType: !160, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1374, file: !1359, line: 221, baseType: !160, size: 32, offset: 224)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !972, file: !41, line: 109, baseType: !931, size: 64, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !972, file: !41, line: 110, baseType: !922, size: 64, offset: 512)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !972, file: !41, line: 111, baseType: !931, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !972, file: !41, line: 112, baseType: !922, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !972, file: !41, line: 113, baseType: !1389, size: 64, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!67, !900, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !59, line: 60, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !59, line: 58, size: 32, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1393, file: !59, line: 59, baseType: !67, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !972, file: !41, line: 114, baseType: !931, size: 64, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !972, file: !41, line: 115, baseType: !382, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !972, file: !41, line: 116, baseType: !382, size: 64, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !972, file: !41, line: 118, baseType: !926, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !972, file: !41, line: 119, baseType: !922, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !972, file: !41, line: 121, baseType: !1402, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !41, line: 121, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !959, file: !960, line: 88, baseType: !913, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !959, file: !960, line: 89, baseType: !931, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !959, file: !960, line: 90, baseType: !922, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !959, file: !960, line: 91, baseType: !922, size: 64, offset: 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !959, file: !960, line: 92, baseType: !922, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !959, file: !960, line: 94, baseType: !931, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !959, file: !960, line: 95, baseType: !931, size: 64, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !959, file: !960, line: 97, baseType: !1389, size: 64, offset: 832)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !959, file: !960, line: 98, baseType: !931, size: 64, offset: 896)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !959, file: !960, line: 100, baseType: !931, size: 64, offset: 960)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !959, file: !960, line: 102, baseType: !931, size: 64, offset: 1024)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !959, file: !960, line: 103, baseType: !922, size: 64, offset: 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !959, file: !960, line: 105, baseType: !926, size: 64, offset: 1152)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !959, file: !960, line: 107, baseType: !1418, size: 64, offset: 1216)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !960, line: 107, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !959, file: !960, line: 109, baseType: !240, size: 8, offset: 1280)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !252, file: !47, line: 715, baseType: !971, size: 64, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !252, file: !47, line: 717, baseType: !138, size: 64, offset: 896)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !252, file: !47, line: 719, baseType: !138, size: 64, offset: 960)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !252, file: !47, line: 721, baseType: !585, size: 256, offset: 1024)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !252, file: !47, line: 725, baseType: !1427, size: 448, offset: 1280)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !47, line: 517, size: 448, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1427, file: !47, line: 518, baseType: !144, size: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1427, file: !47, line: 519, baseType: !144, size: 128, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1427, file: !47, line: 520, baseType: !144, size: 128, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1427, file: !47, line: 521, baseType: !46, size: 32, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !252, file: !47, line: 726, baseType: !1434, size: 2496, offset: 1728)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !59, line: 663, size: 2496, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1480, !1481, !1482, !1483, !1484, !1485, !1554, !1555, !1556, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1594, !1598}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1434, file: !59, line: 664, baseType: !1392, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1434, file: !59, line: 665, baseType: !28, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1434, file: !59, line: 666, baseType: !28, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1434, file: !59, line: 667, baseType: !240, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1434, file: !59, line: 668, baseType: !240, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1434, file: !59, line: 669, baseType: !240, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1434, file: !59, line: 670, baseType: !240, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1434, file: !59, line: 671, baseType: !240, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1434, file: !59, line: 672, baseType: !240, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1434, file: !59, line: 673, baseType: !240, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1434, file: !59, line: 674, baseType: !240, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1434, file: !59, line: 675, baseType: !159, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !59, line: 676, baseType: !268, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1434, file: !59, line: 678, baseType: !144, size: 128, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1434, file: !59, line: 679, baseType: !997, size: 256, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1434, file: !59, line: 680, baseType: !1452, size: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1454, line: 43, size: 1536, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1463, !1464, !1465, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1453, file: !1454, line: 44, baseType: !150, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1453, file: !1454, line: 45, baseType: !67, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1453, file: !1454, line: 46, baseType: !144, size: 128, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1453, file: !1454, line: 47, baseType: !268, size: 32, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1453, file: !1454, line: 48, baseType: !1461, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !59, line: 629, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1453, file: !1454, line: 49, baseType: !1238, size: 320, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1453, file: !1454, line: 50, baseType: !380, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1453, file: !1454, line: 51, baseType: !1466, size: 64, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1467, line: 29, baseType: !503)
!1467 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1453, file: !1454, line: 52, baseType: !1466, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1453, file: !1454, line: 53, baseType: !1466, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1453, file: !1454, line: 54, baseType: !1466, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1453, file: !1454, line: 55, baseType: !1466, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1453, file: !1454, line: 56, baseType: !380, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1453, file: !1454, line: 57, baseType: !380, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1453, file: !1454, line: 58, baseType: !380, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1453, file: !1454, line: 59, baseType: !380, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1453, file: !1454, line: 60, baseType: !380, size: 64, offset: 1344)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1453, file: !1454, line: 61, baseType: !900, size: 64, offset: 1408)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1453, file: !1454, line: 62, baseType: !240, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1453, file: !1454, line: 63, baseType: !240, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1434, file: !59, line: 681, baseType: !240, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1434, file: !59, line: 682, baseType: !240, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1434, file: !59, line: 683, baseType: !240, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1434, file: !59, line: 684, baseType: !28, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1434, file: !59, line: 685, baseType: !28, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1434, file: !59, line: 690, baseType: !1486, size: 512, offset: 640)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !54, line: 118, size: 512, elements: !1487)
!1487 = !{!1488, !1494, !1495, !1500, !1550, !1551, !1552, !1553}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1486, file: !54, line: 119, baseType: !1489, size: 256)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1490, line: 9, size: 256, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1489, file: !1490, line: 10, baseType: !686, size: 192, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1489, file: !1490, line: 11, baseType: !1466, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1486, file: !54, line: 120, baseType: !1466, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1486, file: !54, line: 121, baseType: !1496, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!53, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1486, file: !54, line: 122, baseType: !1501, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !54, line: 159, size: 512, align: 512, elements: !1503)
!1503 = !{!1504, !1527, !1528, !1531, !1536, !1537, !1545, !1549}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1502, file: !54, line: 160, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !54, line: 215, size: 4608, align: 512, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !54, line: 216, baseType: !519, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1506, file: !54, line: 217, baseType: !28, size: 32, offset: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1506, file: !54, line: 218, baseType: !28, size: 32, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1506, file: !54, line: 219, baseType: !28, size: 32, offset: 96)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1506, file: !54, line: 220, baseType: !28, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1506, file: !54, line: 221, baseType: !28, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1506, file: !54, line: 222, baseType: !28, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1506, file: !54, line: 223, baseType: !28, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1506, file: !54, line: 224, baseType: !28, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1506, file: !54, line: 226, baseType: !28, size: 32, offset: 160)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1506, file: !54, line: 227, baseType: !303, size: 16, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1506, file: !54, line: 228, baseType: !303, size: 16, offset: 208)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1506, file: !54, line: 229, baseType: !28, size: 32, offset: 224)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1506, file: !54, line: 235, baseType: !1466, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1506, file: !54, line: 236, baseType: !1499, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1506, file: !54, line: 237, baseType: !1466, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1506, file: !54, line: 238, baseType: !1499, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1506, file: !54, line: 239, baseType: !1526, size: 4096, align: 512, offset: 512)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 4096, align: 512, elements: !5)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1502, file: !54, line: 161, baseType: !28, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1502, file: !54, line: 162, baseType: !1529, size: 32, offset: 96)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !130, line: 32, baseType: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !364, line: 96, baseType: !67)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1502, file: !54, line: 163, baseType: !1532, size: 32, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !534, line: 274, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !534, line: 274, size: 32, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1533, file: !534, line: 274, baseType: !533, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1502, file: !54, line: 164, baseType: !1499, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1502, file: !54, line: 165, baseType: !1538, size: 128, offset: 256)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1490, line: 14, size: 128, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1538, file: !1490, line: 15, baseType: !1541, size: 128)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !687, line: 26, size: 128, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1541, file: !687, line: 27, baseType: !789, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1541, file: !687, line: 28, baseType: !691, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1502, file: !54, line: 166, baseType: !1546, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1466}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1502, file: !54, line: 167, baseType: !1466, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1486, file: !54, line: 123, baseType: !180, size: 8, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1486, file: !54, line: 124, baseType: !180, size: 8, offset: 456)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1486, file: !54, line: 125, baseType: !180, size: 8, offset: 464)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1486, file: !54, line: 126, baseType: !180, size: 8, offset: 472)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1434, file: !59, line: 691, baseType: !133, size: 64, offset: 1152)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1434, file: !59, line: 692, baseType: !647, size: 256, offset: 1216)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1434, file: !59, line: 693, baseType: !1557, size: 192, offset: 1472)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1558, line: 41, baseType: !1559)
!1558 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1558, line: 37, size: 192, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1559, file: !1558, line: 38, baseType: !268, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1559, file: !1558, line: 39, baseType: !144, size: 128, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1434, file: !59, line: 694, baseType: !1461, size: 64, offset: 1664)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1434, file: !59, line: 695, baseType: !288, size: 32, offset: 1728)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1434, file: !59, line: 696, baseType: !288, size: 32, offset: 1760)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1434, file: !59, line: 697, baseType: !28, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1434, file: !59, line: 698, baseType: !28, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1434, file: !59, line: 699, baseType: !28, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1434, file: !59, line: 700, baseType: !28, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1434, file: !59, line: 701, baseType: !28, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1434, file: !59, line: 702, baseType: !28, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1434, file: !59, line: 703, baseType: !240, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1434, file: !59, line: 704, baseType: !28, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1434, file: !59, line: 705, baseType: !28, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1434, file: !59, line: 706, baseType: !28, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1434, file: !59, line: 707, baseType: !28, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1434, file: !59, line: 708, baseType: !28, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1434, file: !59, line: 709, baseType: !28, size: 32, offset: 1824)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1434, file: !59, line: 710, baseType: !58, size: 32, offset: 1856)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1434, file: !59, line: 711, baseType: !66, size: 32, offset: 1888)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1434, file: !59, line: 712, baseType: !66, size: 32, offset: 1920)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1434, file: !59, line: 713, baseType: !67, size: 32, offset: 1952)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1434, file: !59, line: 714, baseType: !67, size: 32, offset: 1984)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1434, file: !59, line: 715, baseType: !133, size: 64, offset: 2048)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1434, file: !59, line: 716, baseType: !133, size: 64, offset: 2112)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1434, file: !59, line: 717, baseType: !133, size: 64, offset: 2176)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1434, file: !59, line: 718, baseType: !133, size: 64, offset: 2240)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1434, file: !59, line: 720, baseType: !1589, size: 64, offset: 2304)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !59, line: 632, size: 64, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !59, line: 633, baseType: !268, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1590, file: !59, line: 634, baseType: !28, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1434, file: !59, line: 721, baseType: !1595, size: 64, offset: 2368)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !900, !564}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1434, file: !59, line: 722, baseType: !1599, size: 64, offset: 2432)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !59, line: 722, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !252, file: !47, line: 727, baseType: !1602, size: 64, offset: 4224)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !59, line: 742, size: 1792, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1611, !1612, !1613}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1603, file: !59, line: 743, baseType: !928, size: 1472)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1603, file: !59, line: 744, baseType: !931, size: 64, offset: 1472)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1603, file: !59, line: 745, baseType: !1608, size: 64, offset: 1536)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !900, !240}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1603, file: !59, line: 746, baseType: !931, size: 64, offset: 1600)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1603, file: !59, line: 747, baseType: !922, size: 64, offset: 1664)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1603, file: !59, line: 748, baseType: !922, size: 64, offset: 1728)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !252, file: !47, line: 736, baseType: !1615, size: 128, offset: 4288)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !47, line: 529, size: 128, elements: !1616)
!1616 = !{!1617, !1621}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1615, file: !47, line: 531, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1620, line: 13, flags: DIFlagFwdDecl)
!1620 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1615, file: !47, line: 532, baseType: !1622, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !47, line: 49, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !252, file: !47, line: 738, baseType: !1625, size: 64, offset: 4416)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !47, line: 738, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !252, file: !47, line: 740, baseType: !1629, size: 64, offset: 4480)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !252, file: !47, line: 741, baseType: !133, size: 64, offset: 4544)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !252, file: !47, line: 746, baseType: !133, size: 64, offset: 4608)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !252, file: !47, line: 747, baseType: !1633, size: 64, offset: 4672)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !47, line: 747, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !252, file: !47, line: 749, baseType: !1637, size: 64, offset: 4736)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !47, line: 428, size: 128, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1638, file: !47, line: 433, baseType: !28, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1638, file: !47, line: 434, baseType: !28, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1638, file: !47, line: 435, baseType: !380, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !252, file: !47, line: 751, baseType: !144, size: 128, offset: 4800)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !252, file: !47, line: 762, baseType: !1645, size: 64, offset: 4928)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !47, line: 762, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !252, file: !47, line: 770, baseType: !1648, offset: 4992)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1649, line: 5, elements: !467)
!1649 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !252, file: !47, line: 772, baseType: !1651, size: 64, offset: 4992)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1653, line: 18, flags: DIFlagFwdDecl)
!1653 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !252, file: !47, line: 773, baseType: !222, size: 64, offset: 5056)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !252, file: !47, line: 776, baseType: !67, size: 32, offset: 5120)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !252, file: !47, line: 778, baseType: !1657, size: 32, offset: 5152)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !130, line: 21, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !130, line: 18, baseType: !159)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !252, file: !47, line: 779, baseType: !159, size: 32, offset: 5184)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !252, file: !47, line: 781, baseType: !268, size: 32, offset: 5216)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !252, file: !47, line: 782, baseType: !144, size: 128, offset: 5248)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !252, file: !47, line: 784, baseType: !1663, size: 64, offset: 5376)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1666, line: 52, size: 768, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1676, !1680, !1681, !1682, !1683, !1687, !1691}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1665, file: !1666, line: 53, baseType: !150, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1665, file: !1666, line: 55, baseType: !382, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1665, file: !1666, line: 56, baseType: !382, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1665, file: !1666, line: 58, baseType: !913, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1665, file: !1666, line: 59, baseType: !1673, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!172, !250, !920}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1665, file: !1666, line: 61, baseType: !1677, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !1663}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1665, file: !1666, line: 62, baseType: !922, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1665, file: !1666, line: 64, baseType: !931, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1665, file: !1666, line: 66, baseType: !719, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1665, file: !1666, line: 67, baseType: !1684, size: 64, offset: 576)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!248, !250}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1665, file: !1666, line: 69, baseType: !1688, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !250, !754, !762}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1665, file: !1666, line: 71, baseType: !926, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !252, file: !47, line: 785, baseType: !382, size: 64, offset: 5440)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !252, file: !47, line: 787, baseType: !922, size: 64, offset: 5504)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !252, file: !47, line: 788, baseType: !1695, size: 64, offset: 5568)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !47, line: 46, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !252, file: !47, line: 789, baseType: !1698, size: 64, offset: 5632)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !47, line: 48, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !252, file: !47, line: 791, baseType: !1701, size: 64, offset: 5696)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !47, line: 597, size: 128, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1702, file: !47, line: 598, baseType: !74, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1702, file: !47, line: 599, baseType: !83, size: 32, offset: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1702, file: !47, line: 600, baseType: !88, size: 32, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1702, file: !47, line: 601, baseType: !240, size: 8, offset: 96)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1702, file: !47, line: 602, baseType: !240, size: 8, offset: 104)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !252, file: !47, line: 793, baseType: !93, size: 32, offset: 5760)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !252, file: !47, line: 795, baseType: !240, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !252, file: !47, line: 796, baseType: !240, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !252, file: !47, line: 797, baseType: !240, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !252, file: !47, line: 798, baseType: !240, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !252, file: !47, line: 799, baseType: !240, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !226, file: !219, line: 131, baseType: !237, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !226, file: !219, line: 133, baseType: !1717, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!99, !242}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !226, file: !219, line: 134, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!240, !242, !150}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !226, file: !219, line: 136, baseType: !1725, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!67, !242, !150, !28, !138, !377}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !226, file: !219, line: 141, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!67, !242, !150, !1321, !377}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !226, file: !219, line: 144, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!150, !242}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !226, file: !219, line: 145, baseType: !1733, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !226, file: !219, line: 146, baseType: !1738, size: 64, offset: 704)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!222, !242}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !226, file: !219, line: 148, baseType: !1742, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!222, !242, !222}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !226, file: !219, line: 151, baseType: !1746, size: 64, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!222, !242, !150}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !226, file: !219, line: 153, baseType: !1750, size: 64, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!67, !242, !150, !150, !28, !28, !1753}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !219, line: 94, size: 640, elements: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1754, file: !219, line: 95, baseType: !222, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1754, file: !219, line: 96, baseType: !28, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1754, file: !219, line: 97, baseType: !1759, size: 512, offset: 128)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !5)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !226, file: !219, line: 158, baseType: !1742, size: 64, offset: 960)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !226, file: !219, line: 161, baseType: !1738, size: 64, offset: 1024)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !226, file: !219, line: 163, baseType: !229, size: 64, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !226, file: !219, line: 164, baseType: !1764, size: 64, offset: 1152)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!67, !242, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !219, line: 73, size: 128, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1768, file: !219, line: 74, baseType: !28, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1768, file: !219, line: 75, baseType: !28, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1768, file: !219, line: 76, baseType: !242, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !226, file: !219, line: 166, baseType: !1774, size: 64, offset: 1216)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!138, !222, !67}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !226, file: !219, line: 167, baseType: !1778, size: 64, offset: 1280)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!67, !242, !28}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !226, file: !219, line: 168, baseType: !1782, size: 64, offset: 1344)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!67, !222}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !218, file: !219, line: 44, baseType: !900, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !218, file: !219, line: 45, baseType: !144, size: 128, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !218, file: !219, line: 46, baseType: !144, size: 128, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !219, line: 47, baseType: !180, size: 8, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !212, file: !141, line: 372, baseType: !144, size: 128, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !212, file: !141, line: 373, baseType: !144, size: 128, offset: 768)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !212, file: !141, line: 374, baseType: !1792, size: 32, offset: 896)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !141, line: 181, size: 32, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1792, file: !141, line: 182, baseType: !159, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1792, file: !141, line: 183, baseType: !159, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1792, file: !141, line: 184, baseType: !159, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1792, file: !141, line: 185, baseType: !159, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1792, file: !141, line: 186, baseType: !159, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1792, file: !141, line: 187, baseType: !159, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !141, line: 375, baseType: !1801, size: 32, offset: 928)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !141, line: 192, size: 32, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1801, file: !141, line: 193, baseType: !159, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1801, file: !141, line: 194, baseType: !159, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1801, file: !141, line: 195, baseType: !159, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1801, file: !141, line: 196, baseType: !159, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1801, file: !141, line: 197, baseType: !159, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1801, file: !141, line: 198, baseType: !159, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1801, file: !141, line: 199, baseType: !159, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1801, file: !141, line: 200, baseType: !159, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1801, file: !141, line: 201, baseType: !159, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1801, file: !141, line: 202, baseType: !159, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1801, file: !141, line: 203, baseType: !159, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1801, file: !141, line: 204, baseType: !159, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1801, file: !141, line: 205, baseType: !159, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1801, file: !141, line: 206, baseType: !159, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1801, file: !141, line: 207, baseType: !159, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !212, file: !141, line: 376, baseType: !1819, size: 960, offset: 960)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !141, line: 238, size: 960, elements: !1820)
!1820 = !{!1821, !1823, !1824, !1832, !1834, !1835, !1836, !1838, !1843}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1819, file: !141, line: 239, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !141, line: 220, baseType: !3)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1819, file: !141, line: 240, baseType: !67, size: 32, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !141, line: 241, baseType: !1825, size: 32, offset: 96)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !141, line: 230, size: 32, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830, !1831}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1825, file: !141, line: 231, baseType: !159, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1825, file: !141, line: 232, baseType: !159, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1825, file: !141, line: 233, baseType: !159, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1825, file: !141, line: 234, baseType: !159, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1825, file: !141, line: 235, baseType: !159, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1819, file: !141, line: 242, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !141, line: 221, baseType: !133)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1819, file: !141, line: 243, baseType: !172, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1819, file: !141, line: 244, baseType: !144, size: 128, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1819, file: !141, line: 245, baseType: !1837, size: 320, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !141, line: 222, baseType: !19)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1819, file: !141, line: 246, baseType: !1839, size: 160, offset: 704)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !141, line: 223, baseType: !1840)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 20)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1819, file: !141, line: 247, baseType: !189, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !212, file: !141, line: 377, baseType: !1845, size: 1408, offset: 1920)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !141, line: 280, size: 1408, elements: !1846)
!1846 = !{!1847, !1848, !1858, !1871}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1845, file: !141, line: 281, baseType: !67, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !141, line: 282, baseType: !1849, size: 32, offset: 32)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !141, line: 259, size: 32, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1849, file: !141, line: 260, baseType: !159, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1849, file: !141, line: 261, baseType: !159, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1849, file: !141, line: 262, baseType: !159, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1849, file: !141, line: 263, baseType: !159, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1849, file: !141, line: 264, baseType: !159, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1849, file: !141, line: 265, baseType: !159, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1849, file: !141, line: 266, baseType: !159, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1845, file: !141, line: 283, baseType: !1859, size: 1280, offset: 64)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, size: 1280, elements: !10)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !141, line: 269, size: 256, elements: !1861)
!1861 = !{!1862, !1868, !1869, !1870}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1860, file: !141, line: 274, baseType: !1863, size: 8)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !141, line: 270, size: 8, elements: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1863, file: !141, line: 271, baseType: !180, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1863, file: !141, line: 272, baseType: !180, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1863, file: !141, line: 273, baseType: !180, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1860, file: !141, line: 275, baseType: !67, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1860, file: !141, line: 276, baseType: !67, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1860, file: !141, line: 277, baseType: !144, size: 128, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1845, file: !141, line: 284, baseType: !180, size: 8, offset: 1344)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !212, file: !141, line: 378, baseType: !1873, size: 640, offset: 3328)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !141, line: 330, size: 640, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1884, !1893, !1894, !1895}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1873, file: !141, line: 331, baseType: !196, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1873, file: !141, line: 332, baseType: !133, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1873, file: !141, line: 333, baseType: !133, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1873, file: !141, line: 334, baseType: !144, size: 128, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !141, line: 335, baseType: !1880, size: 8, offset: 320)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !141, line: 320, size: 8, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1880, file: !141, line: 321, baseType: !180, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1880, file: !141, line: 322, baseType: !180, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1873, file: !141, line: 336, baseType: !1885, size: 128, offset: 384)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !141, line: 325, size: 128, elements: !1886)
!1886 = !{!1887, !1892}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1885, file: !141, line: 326, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1885, file: !141, line: 327, baseType: !900, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1873, file: !141, line: 337, baseType: !1452, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1873, file: !141, line: 338, baseType: !67, size: 32, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1873, file: !141, line: 339, baseType: !67, size: 32, offset: 608)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !212, file: !141, line: 379, baseType: !1897, size: 192, offset: 3968)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !141, line: 312, size: 192, elements: !1898)
!1898 = !{!1899, !1900, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1897, file: !141, line: 313, baseType: !67, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !141, line: 314, baseType: !1901, size: 8, offset: 32)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !141, line: 298, size: 8, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1901, file: !141, line: 299, baseType: !180, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1897, file: !141, line: 315, baseType: !67, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1897, file: !141, line: 316, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !141, line: 302, size: 64, elements: !1908)
!1908 = !{!1909, !1914, !1915, !1916}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !141, line: 306, baseType: !1910, size: 8)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !141, line: 303, size: 8, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1910, file: !141, line: 304, baseType: !180, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1910, file: !141, line: 305, baseType: !180, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1907, file: !141, line: 307, baseType: !180, size: 8, offset: 8)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1907, file: !141, line: 308, baseType: !180, size: 8, offset: 16)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1907, file: !141, line: 309, baseType: !67, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !212, file: !141, line: 380, baseType: !1918, size: 64, offset: 4160)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !141, line: 212, size: 64, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1918, file: !141, line: 213, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !141, line: 86, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !212, file: !141, line: 381, baseType: !1924, size: 384, offset: 4224)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !141, line: 357, size: 384, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1924, file: !141, line: 358, baseType: !153, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1924, file: !141, line: 359, baseType: !144, size: 128, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1924, file: !141, line: 360, baseType: !153, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1924, file: !141, line: 361, baseType: !144, size: 128, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !212, file: !141, line: 382, baseType: !1931, size: 64, offset: 4608)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !141, line: 124, size: 1216, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1941, !1945, !1949, !1950, !1951}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1932, file: !141, line: 125, baseType: !1372, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1932, file: !141, line: 126, baseType: !144, size: 128, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1932, file: !141, line: 127, baseType: !1937, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!240, !150, !1940}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1932, file: !141, line: 128, baseType: !1942, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!67, !211, !1372}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1932, file: !141, line: 129, baseType: !1946, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !211}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1932, file: !141, line: 130, baseType: !922, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1932, file: !141, line: 131, baseType: !922, size: 64, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1932, file: !141, line: 132, baseType: !1952, size: 704, offset: 512)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !141, line: 110, size: 704, elements: !1953)
!1953 = !{!1954, !1955, !1959, !1960, !1961}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1952, file: !141, line: 111, baseType: !255, size: 512)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1952, file: !141, line: 112, baseType: !1956, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!67, !211}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1952, file: !141, line: 113, baseType: !1946, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1952, file: !141, line: 114, baseType: !240, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1952, file: !141, line: 115, baseType: !240, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !212, file: !141, line: 383, baseType: !1963, size: 64, offset: 4672)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !141, line: 140, size: 256, elements: !1965)
!1965 = !{!1966, !1967, !1971, !1975}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1964, file: !141, line: 141, baseType: !211, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1964, file: !141, line: 142, baseType: !1968, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!67, !211, !159}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1964, file: !141, line: 143, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !211, !159}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1964, file: !141, line: 144, baseType: !1946, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !212, file: !141, line: 384, baseType: !1977, size: 64, offset: 4736)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !141, line: 364, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !212, file: !141, line: 385, baseType: !138, size: 64, offset: 4800)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !212, file: !141, line: 386, baseType: !252, size: 5824, offset: 4864)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !212, file: !141, line: 387, baseType: !28, size: 32, offset: 10688)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !212, file: !141, line: 388, baseType: !28, size: 32, offset: 10720)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !212, file: !141, line: 389, baseType: !144, size: 128, offset: 10752)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !212, file: !141, line: 390, baseType: !585, size: 256, offset: 10880)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !212, file: !141, line: 391, baseType: !1946, size: 64, offset: 11136)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_node", file: !141, line: 395, size: 1984, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1988, file: !141, line: 396, baseType: !150, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1988, file: !141, line: 397, baseType: !196, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1988, file: !141, line: 398, baseType: !218, size: 512, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1988, file: !141, line: 399, baseType: !222, size: 64, offset: 640)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1988, file: !141, line: 400, baseType: !1924, size: 384, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1988, file: !141, line: 401, baseType: !144, size: 128, offset: 1088)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1988, file: !141, line: 402, baseType: !255, size: 512, offset: 1216)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_done", scope: !1988, file: !141, line: 403, baseType: !997, size: 256, offset: 1728)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !2002, line: 17, baseType: !2003)
!2002 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2002, line: 15, size: 128, elements: !2004)
!2004 = !{!2005}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2003, file: !2002, line: 16, baseType: !1377, size: 128)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !132, line: 421, baseType: !159)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_properties", file: !141, line: 349, size: 320, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !2010, file: !141, line: 350, baseType: !2006, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2010, file: !141, line: 351, baseType: !189, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2010, file: !141, line: 352, baseType: !144, size: 128, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !2010, file: !141, line: 353, baseType: !2016, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2024 = !{!0, !7, !12, !17, !22, !2025, !2027, !2029, !2031, !2033, !2035, !2037, !2039, !2041, !2046, !2048, !2050, !2055, !2060, !2065, !2070, !2075, !2080, !2082, !2084, !2086, !2089, !2094, !2099, !2101, !2103, !2108, !2111}
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___acpi_node_get_property_reference207", scope: !24, file: !2, line: 971, type: !138, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "acpi_device_fwnode_ops", scope: !24, file: !2, line: 1608, type: !225, isLocal: false, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_device_fwnode_ops210", scope: !24, file: !2, line: 1608, type: !138, isLocal: true, isDefinition: true)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(name: "acpi_data_fwnode_ops", scope: !24, file: !2, line: 1609, type: !225, isLocal: false, isDefinition: true)
!2033 = !DIGlobalVariableExpression(var: !2034, expr: !DIExpression())
!2034 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_data_fwnode_ops211", scope: !24, file: !2, line: 1609, type: !138, isLocal: true, isDefinition: true)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_is_acpi_device_node212", scope: !24, file: !2, line: 1617, type: !138, isLocal: true, isDefinition: true)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_is_acpi_data_node213", scope: !24, file: !2, line: 1623, type: !138, isLocal: true, isDefinition: true)
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(name: "acpi_static_fwnode_ops", scope: !24, file: !2, line: 1610, type: !225, isLocal: false, isDefinition: true)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(scope: null, file: !111, line: 480, type: !2043, isLocal: true, isDefinition: true)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !2044)
!2044 = !{!2045}
!2045 = !DISubrange(count: 21)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(name: "buffer_prop_guid", scope: !24, file: !2, line: 58, type: !2007, isLocal: true, isDefinition: true)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !14, isLocal: true, isDefinition: true)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !2052, isLocal: true, isDefinition: true)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !2053)
!2053 = !{!2054}
!2054 = !DISubrange(count: 42)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !2, line: 435, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !2058)
!2058 = !{!2059}
!2059 = !DISubrange(count: 35)
!2060 = !DIGlobalVariableExpression(var: !2061, expr: !DIExpression())
!2061 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !2062, isLocal: true, isDefinition: true)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !2063)
!2063 = !{!2064}
!2064 = !DISubrange(count: 30)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !2067, isLocal: true, isDefinition: true)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !2068)
!2068 = !{!2069}
!2069 = !DISubrange(count: 33)
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(name: "prp_guids", scope: !24, file: !2, line: 32, type: !2072, isLocal: true, isDefinition: true)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2007, size: 768, elements: !2073)
!2073 = !{!2074}
!2074 = !DISubrange(count: 6)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !2077, isLocal: true, isDefinition: true)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 11)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(name: "ads_guid", scope: !24, file: !2, line: 54, type: !2007, isLocal: true, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !14, isLocal: true, isDefinition: true)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !2043, isLocal: true, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1508, type: !2088, isLocal: true, isDefinition: true)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !1128)
!2089 = !DIGlobalVariableExpression(var: !2090, expr: !DIExpression())
!2090 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1519, type: !2091, isLocal: true, isDefinition: true)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !2092)
!2092 = !{!2093}
!2093 = !DISubrange(count: 24)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1533, type: !2096, isLocal: true, isDefinition: true)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 1)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1543, type: !2088, isLocal: true, isDefinition: true)
!2101 = !DIGlobalVariableExpression(var: !2102, expr: !DIExpression())
!2102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1320, type: !9, isLocal: true, isDefinition: true)
!2103 = !DIGlobalVariableExpression(var: !2104, expr: !DIExpression())
!2104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1346, type: !2105, isLocal: true, isDefinition: true)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 9)
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1290, type: !2110, isLocal: true, isDefinition: true)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !566)
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1396, type: !2113, isLocal: true, isDefinition: true)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1378)
!2114 = !{i32 7, !"Dwarf Version", i32 5}
!2115 = !{i32 2, !"Debug Info Version", i32 3}
!2116 = !{i32 1, !"wchar_size", i32 2}
!2117 = !{i32 8, !"cf-protection-branch", i32 1}
!2118 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2119 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2120 = !{i32 1, !"Code Model", i32 2}
!2121 = !{i32 1, !"override-stack-alignment", i32 8}
!2122 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2123 = distinct !DISubprogram(name: "acpi_data_add_props", scope: !2, file: !2, line: 335, type: !2124, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2127)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2009, !2126, !2006, !189}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!2127 = !{!2128, !2129, !2130, !2131}
!2128 = !DILocalVariable(name: "data", arg: 1, scope: !2123, file: !2, line: 335, type: !2126)
!2129 = !DILocalVariable(name: "guid", arg: 2, scope: !2123, file: !2, line: 335, type: !2006)
!2130 = !DILocalVariable(name: "properties", arg: 3, scope: !2123, file: !2, line: 336, type: !189)
!2131 = !DILocalVariable(name: "props", scope: !2123, file: !2, line: 338, type: !2009)
!2132 = !DILocation(line: 335, column: 46, scope: !2123)
!2133 = !DILocation(line: 335, column: 66, scope: !2123)
!2134 = !DILocation(line: 336, column: 26, scope: !2123)
!2135 = !DILocation(line: 338, column: 2, scope: !2123)
!2136 = !DILocation(line: 338, column: 33, scope: !2123)
!2137 = !DILocation(line: 340, column: 10, scope: !2123)
!2138 = !DILocation(line: 340, column: 8, scope: !2123)
!2139 = !DILocation(line: 341, column: 6, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 341, column: 6)
!2141 = !DILocation(line: 341, column: 6, scope: !2123)
!2142 = !DILocation(line: 342, column: 19, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 341, column: 13)
!2144 = !DILocation(line: 342, column: 26, scope: !2143)
!2145 = !DILocation(line: 342, column: 3, scope: !2143)
!2146 = !DILocation(line: 343, column: 17, scope: !2143)
!2147 = !DILocation(line: 343, column: 3, scope: !2143)
!2148 = !DILocation(line: 343, column: 10, scope: !2143)
!2149 = !DILocation(line: 343, column: 15, scope: !2143)
!2150 = !DILocation(line: 344, column: 23, scope: !2143)
!2151 = !DILocation(line: 344, column: 3, scope: !2143)
!2152 = !DILocation(line: 344, column: 10, scope: !2143)
!2153 = !DILocation(line: 344, column: 21, scope: !2143)
!2154 = !DILocation(line: 345, column: 18, scope: !2143)
!2155 = !DILocation(line: 345, column: 25, scope: !2143)
!2156 = !DILocation(line: 345, column: 32, scope: !2143)
!2157 = !DILocation(line: 345, column: 38, scope: !2143)
!2158 = !DILocation(line: 345, column: 3, scope: !2143)
!2159 = !DILocation(line: 346, column: 2, scope: !2143)
!2160 = !DILocation(line: 348, column: 9, scope: !2123)
!2161 = !DILocation(line: 349, column: 1, scope: !2123)
!2162 = !DILocation(line: 348, column: 2, scope: !2123)
!2163 = distinct !DISubprogram(name: "kzalloc", scope: !111, file: !111, line: 719, type: !2164, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!138, !377, !129}
!2166 = !{!2167, !2168}
!2167 = !DILocalVariable(name: "size", arg: 1, scope: !2163, file: !111, line: 719, type: !377)
!2168 = !DILocalVariable(name: "flags", arg: 2, scope: !2163, file: !111, line: 719, type: !129)
!2169 = !DILocation(line: 719, column: 52, scope: !2163)
!2170 = !DILocation(line: 719, column: 64, scope: !2163)
!2171 = !DILocation(line: 721, column: 17, scope: !2163)
!2172 = !DILocation(line: 721, column: 23, scope: !2163)
!2173 = !DILocation(line: 721, column: 29, scope: !2163)
!2174 = !DILocation(line: 721, column: 9, scope: !2163)
!2175 = !DILocation(line: 721, column: 2, scope: !2163)
!2176 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2177, file: !2177, line: 35, type: !2178, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2180)
!2177 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !147}
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "list", arg: 1, scope: !2176, file: !2177, line: 35, type: !147)
!2182 = !DILocation(line: 35, column: 53, scope: !2176)
!2183 = !DILocation(line: 37, column: 2, scope: !2176)
!2184 = !DILocation(line: 37, column: 2, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !2177, line: 37, column: 2)
!2186 = !DILocation(line: 37, column: 2, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2185, file: !2177, line: 37, column: 2)
!2188 = !DILocation(line: 37, column: 2, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !2177, line: 37, column: 2)
!2190 = !DILocation(line: 38, column: 2, scope: !2176)
!2191 = !DILocation(line: 38, column: 2, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2176, file: !2177, line: 38, column: 2)
!2193 = !DILocation(line: 38, column: 2, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2192, file: !2177, line: 38, column: 2)
!2195 = !DILocation(line: 38, column: 2, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !2177, line: 38, column: 2)
!2197 = !DILocation(line: 39, column: 1, scope: !2176)
!2198 = distinct !DISubprogram(name: "list_add_tail", scope: !2177, file: !2177, line: 181, type: !2199, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !147, !147}
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "new", arg: 1, scope: !2198, file: !2177, line: 181, type: !147)
!2203 = !DILocalVariable(name: "head", arg: 2, scope: !2198, file: !2177, line: 181, type: !147)
!2204 = !DILocation(line: 181, column: 52, scope: !2198)
!2205 = !DILocation(line: 181, column: 75, scope: !2198)
!2206 = !DILocation(line: 183, column: 13, scope: !2198)
!2207 = !DILocation(line: 183, column: 18, scope: !2198)
!2208 = !DILocation(line: 183, column: 24, scope: !2198)
!2209 = !DILocation(line: 183, column: 30, scope: !2198)
!2210 = !DILocation(line: 183, column: 2, scope: !2198)
!2211 = !DILocation(line: 184, column: 1, scope: !2198)
!2212 = distinct !DISubprogram(name: "acpi_init_properties", scope: !2, file: !2, line: 533, type: !1947, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2220, !2221, !2222, !2223, !2226, !2229}
!2214 = !DILocalVariable(name: "adev", arg: 1, scope: !2212, file: !2, line: 533, type: !211)
!2215 = !DILocalVariable(name: "buf", scope: !2212, file: !2, line: 535, type: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !132, line: 978, size: 128, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2216, file: !132, line: 979, baseType: !131, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2216, file: !132, line: 980, baseType: !138, size: 64, offset: 64)
!2220 = !DILocalVariable(name: "hwid", scope: !2212, file: !2, line: 536, type: !139)
!2221 = !DILocalVariable(name: "status", scope: !2212, file: !2, line: 537, type: !2008)
!2222 = !DILocalVariable(name: "acpi_of", scope: !2212, file: !2, line: 538, type: !240)
!2223 = !DILocalVariable(name: "__mptr", scope: !2224, file: !2, line: 550, type: !138)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 550, column: 2)
!2225 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 550, column: 2)
!2226 = !DILocalVariable(name: "__mptr", scope: !2227, file: !2, line: 550, type: !138)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 550, column: 2)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 550, column: 2)
!2229 = !DILabel(scope: !2212, name: "out", file: !2, line: 579)
!2230 = !DILocation(line: 533, column: 47, scope: !2212)
!2231 = !DILocation(line: 535, column: 2, scope: !2212)
!2232 = !DILocation(line: 535, column: 21, scope: !2212)
!2233 = !DILocation(line: 536, column: 2, scope: !2212)
!2234 = !DILocation(line: 536, column: 27, scope: !2212)
!2235 = !DILocation(line: 537, column: 2, scope: !2212)
!2236 = !DILocation(line: 537, column: 14, scope: !2212)
!2237 = !DILocation(line: 538, column: 2, scope: !2212)
!2238 = !DILocation(line: 538, column: 7, scope: !2212)
!2239 = !DILocation(line: 540, column: 18, scope: !2212)
!2240 = !DILocation(line: 540, column: 24, scope: !2212)
!2241 = !DILocation(line: 540, column: 29, scope: !2212)
!2242 = !DILocation(line: 540, column: 2, scope: !2212)
!2243 = !DILocation(line: 541, column: 18, scope: !2212)
!2244 = !DILocation(line: 541, column: 24, scope: !2212)
!2245 = !DILocation(line: 541, column: 29, scope: !2212)
!2246 = !DILocation(line: 541, column: 2, scope: !2212)
!2247 = !DILocation(line: 543, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 543, column: 6)
!2249 = !DILocation(line: 543, column: 13, scope: !2248)
!2250 = !DILocation(line: 543, column: 6, scope: !2212)
!2251 = !DILocation(line: 544, column: 3, scope: !2248)
!2252 = !DILocation(line: 550, column: 2, scope: !2224)
!2253 = !DILocation(line: 550, column: 2, scope: !2225)
!2254 = !DILocation(line: 550, column: 2, scope: !2228)
!2255 = !DILocation(line: 551, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 551, column: 7)
!2257 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 550, column: 50)
!2258 = !DILocation(line: 551, column: 21, scope: !2256)
!2259 = !DILocation(line: 551, column: 8, scope: !2256)
!2260 = !DILocation(line: 551, column: 7, scope: !2257)
!2261 = !DILocation(line: 552, column: 12, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 551, column: 49)
!2263 = !DILocation(line: 553, column: 4, scope: !2262)
!2264 = !DILocation(line: 555, column: 2, scope: !2257)
!2265 = !DILocation(line: 550, column: 2, scope: !2227)
!2266 = distinct !{!2266, !2253, !2267, !2268, !2269}
!2267 = !DILocation(line: 555, column: 2, scope: !2225)
!2268 = !{!"llvm.loop.mustprogress"}
!2269 = !{!"llvm.loop.unroll.disable"}
!2270 = !DILocation(line: 557, column: 38, scope: !2212)
!2271 = !DILocation(line: 557, column: 44, scope: !2212)
!2272 = !DILocation(line: 557, column: 11, scope: !2212)
!2273 = !DILocation(line: 557, column: 9, scope: !2212)
!2274 = !DILocation(line: 559, column: 6, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 559, column: 6)
!2276 = !DILocation(line: 559, column: 6, scope: !2212)
!2277 = !DILocation(line: 560, column: 3, scope: !2275)
!2278 = !DILocation(line: 562, column: 30, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 562, column: 6)
!2280 = !DILocation(line: 562, column: 36, scope: !2279)
!2281 = !DILocation(line: 562, column: 48, scope: !2279)
!2282 = !DILocation(line: 562, column: 58, scope: !2279)
!2283 = !DILocation(line: 562, column: 64, scope: !2279)
!2284 = !DILocation(line: 562, column: 6, scope: !2279)
!2285 = !DILocation(line: 562, column: 6, scope: !2212)
!2286 = !DILocation(line: 563, column: 28, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 562, column: 71)
!2288 = !DILocation(line: 563, column: 3, scope: !2287)
!2289 = !DILocation(line: 563, column: 9, scope: !2287)
!2290 = !DILocation(line: 563, column: 14, scope: !2287)
!2291 = !DILocation(line: 563, column: 22, scope: !2287)
!2292 = !DILocation(line: 564, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 564, column: 7)
!2294 = !{i8 0, i8 2}
!2295 = !DILocation(line: 564, column: 7, scope: !2287)
!2296 = !DILocation(line: 565, column: 28, scope: !2293)
!2297 = !DILocation(line: 565, column: 4, scope: !2293)
!2298 = !DILocation(line: 566, column: 2, scope: !2287)
!2299 = !DILocation(line: 567, column: 37, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 567, column: 6)
!2301 = !DILocation(line: 567, column: 43, scope: !2300)
!2302 = !DILocation(line: 567, column: 55, scope: !2300)
!2303 = !DILocation(line: 568, column: 7, scope: !2300)
!2304 = !DILocation(line: 568, column: 13, scope: !2300)
!2305 = !DILocation(line: 568, column: 38, scope: !2300)
!2306 = !DILocation(line: 568, column: 19, scope: !2300)
!2307 = !DILocation(line: 567, column: 6, scope: !2300)
!2308 = !DILocation(line: 567, column: 6, scope: !2212)
!2309 = !DILocation(line: 569, column: 28, scope: !2300)
!2310 = !DILocation(line: 569, column: 3, scope: !2300)
!2311 = !DILocation(line: 569, column: 9, scope: !2300)
!2312 = !DILocation(line: 569, column: 14, scope: !2300)
!2313 = !DILocation(line: 569, column: 22, scope: !2300)
!2314 = !DILocation(line: 571, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 571, column: 6)
!2316 = !DILocation(line: 571, column: 13, scope: !2315)
!2317 = !DILocation(line: 571, column: 18, scope: !2315)
!2318 = !DILocation(line: 571, column: 6, scope: !2212)
!2319 = !DILocation(line: 572, column: 3, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 572, column: 3)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 572, column: 3)
!2322 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 571, column: 27)
!2323 = !DILocation(line: 572, column: 3, scope: !2321)
!2324 = !DILocation(line: 573, column: 3, scope: !2322)
!2325 = !DILocation(line: 574, column: 2, scope: !2322)
!2326 = !DILocation(line: 575, column: 34, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 575, column: 7)
!2328 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 574, column: 9)
!2329 = !DILocation(line: 575, column: 40, scope: !2327)
!2330 = !DILocation(line: 575, column: 8, scope: !2327)
!2331 = !DILocation(line: 575, column: 7, scope: !2328)
!2332 = !DILocation(line: 576, column: 32, scope: !2327)
!2333 = !DILocation(line: 576, column: 38, scope: !2327)
!2334 = !DILocation(line: 576, column: 4, scope: !2327)
!2335 = !DILocation(line: 579, column: 2, scope: !2212)
!2336 = !DILocation(line: 580, column: 6, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 580, column: 6)
!2338 = !DILocation(line: 580, column: 14, scope: !2337)
!2339 = !DILocation(line: 580, column: 18, scope: !2337)
!2340 = !DILocation(line: 580, column: 24, scope: !2337)
!2341 = !DILocation(line: 580, column: 30, scope: !2337)
!2342 = !DILocation(line: 580, column: 6, scope: !2212)
!2343 = !DILocation(line: 581, column: 3, scope: !2337)
!2344 = !DILocation(line: 584, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 584, column: 6)
!2346 = !DILocation(line: 584, column: 13, scope: !2345)
!2347 = !DILocation(line: 584, column: 18, scope: !2345)
!2348 = !DILocation(line: 584, column: 6, scope: !2212)
!2349 = !DILocation(line: 585, column: 33, scope: !2345)
!2350 = !DILocation(line: 585, column: 3, scope: !2345)
!2351 = !DILocation(line: 586, column: 1, scope: !2212)
!2352 = !DISubprogram(name: "strcmp", scope: !2353, file: !2353, line: 88, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!67, !150, !150}
!2356 = !DISubprogram(name: "acpi_evaluate_object_typed", scope: !2357, file: !2357, line: 556, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2357 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!2008, !196, !2360, !2361, !2366, !158}
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !132, line: 423, baseType: !172)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !132, line: 956, size: 128, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2362, file: !132, line: 957, baseType: !159, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2362, file: !132, line: 958, baseType: !189, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2367 = distinct !DISubprogram(name: "acpi_extract_properties", scope: !2, file: !2, line: 485, type: !2368, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!240, !196, !189, !2126}
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2379}
!2371 = !DILocalVariable(name: "scope", arg: 1, scope: !2367, file: !2, line: 485, type: !196)
!2372 = !DILocalVariable(name: "desc", arg: 2, scope: !2367, file: !2, line: 485, type: !189)
!2373 = !DILocalVariable(name: "data", arg: 3, scope: !2367, file: !2, line: 486, type: !2126)
!2374 = !DILocalVariable(name: "i", scope: !2367, file: !2, line: 488, type: !67)
!2375 = !DILocalVariable(name: "guid", scope: !2376, file: !2, line: 495, type: !153)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 494, column: 47)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !2, line: 494, column: 2)
!2378 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 494, column: 2)
!2379 = !DILocalVariable(name: "properties", scope: !2376, file: !2, line: 496, type: !189)
!2380 = !DILocation(line: 485, column: 49, scope: !2367)
!2381 = !DILocation(line: 485, column: 75, scope: !2367)
!2382 = !DILocation(line: 486, column: 34, scope: !2367)
!2383 = !DILocation(line: 488, column: 2, scope: !2367)
!2384 = !DILocation(line: 488, column: 6, scope: !2367)
!2385 = !DILocation(line: 490, column: 6, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 490, column: 6)
!2387 = !DILocation(line: 490, column: 20, scope: !2386)
!2388 = !DILocation(line: 490, column: 26, scope: !2386)
!2389 = !DILocation(line: 490, column: 6, scope: !2367)
!2390 = !DILocation(line: 491, column: 3, scope: !2386)
!2391 = !DILocation(line: 494, column: 9, scope: !2378)
!2392 = !DILocation(line: 494, column: 7, scope: !2378)
!2393 = !DILocation(line: 494, column: 14, scope: !2377)
!2394 = !DILocation(line: 494, column: 18, scope: !2377)
!2395 = !DILocation(line: 494, column: 32, scope: !2377)
!2396 = !DILocation(line: 494, column: 16, scope: !2377)
!2397 = !DILocation(line: 494, column: 2, scope: !2378)
!2398 = !DILocation(line: 495, column: 3, scope: !2376)
!2399 = !DILocation(line: 495, column: 28, scope: !2376)
!2400 = !DILocation(line: 496, column: 3, scope: !2376)
!2401 = !DILocation(line: 496, column: 22, scope: !2376)
!2402 = !DILocation(line: 498, column: 11, scope: !2376)
!2403 = !DILocation(line: 498, column: 25, scope: !2376)
!2404 = !DILocation(line: 498, column: 34, scope: !2376)
!2405 = !DILocation(line: 498, column: 8, scope: !2376)
!2406 = !DILocation(line: 499, column: 17, scope: !2376)
!2407 = !DILocation(line: 499, column: 31, scope: !2376)
!2408 = !DILocation(line: 499, column: 40, scope: !2376)
!2409 = !DILocation(line: 499, column: 42, scope: !2376)
!2410 = !DILocation(line: 499, column: 14, scope: !2376)
!2411 = !DILocation(line: 505, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 505, column: 7)
!2413 = !DILocation(line: 505, column: 13, scope: !2412)
!2414 = !DILocation(line: 505, column: 18, scope: !2412)
!2415 = !DILocation(line: 505, column: 38, scope: !2412)
!2416 = !DILocation(line: 506, column: 7, scope: !2412)
!2417 = !DILocation(line: 506, column: 20, scope: !2412)
!2418 = !DILocation(line: 506, column: 27, scope: !2412)
!2419 = !DILocation(line: 506, column: 33, scope: !2412)
!2420 = !DILocation(line: 507, column: 7, scope: !2412)
!2421 = !DILocation(line: 507, column: 19, scope: !2412)
!2422 = !DILocation(line: 507, column: 24, scope: !2412)
!2423 = !DILocation(line: 505, column: 7, scope: !2376)
!2424 = !DILocation(line: 508, column: 4, scope: !2412)
!2425 = !DILocation(line: 510, column: 28, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 510, column: 7)
!2427 = !DILocation(line: 510, column: 41, scope: !2426)
!2428 = !DILocation(line: 510, column: 7, scope: !2426)
!2429 = !DILocation(line: 510, column: 7, scope: !2376)
!2430 = !DILocation(line: 512, column: 31, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 511, column: 31)
!2432 = !DILocation(line: 512, column: 38, scope: !2431)
!2433 = !DILocation(line: 512, column: 44, scope: !2431)
!2434 = !DILocation(line: 512, column: 4, scope: !2431)
!2435 = !DILocation(line: 513, column: 4, scope: !2431)
!2436 = !DILocation(line: 516, column: 40, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 516, column: 7)
!2438 = !DILocation(line: 516, column: 53, scope: !2437)
!2439 = !DILocation(line: 516, column: 8, scope: !2437)
!2440 = !DILocation(line: 516, column: 7, scope: !2376)
!2441 = !DILocation(line: 517, column: 4, scope: !2437)
!2442 = !DILocation(line: 523, column: 37, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 523, column: 7)
!2444 = !DILocation(line: 523, column: 8, scope: !2443)
!2445 = !DILocation(line: 523, column: 7, scope: !2376)
!2446 = !DILocation(line: 524, column: 4, scope: !2443)
!2447 = !DILocation(line: 526, column: 23, scope: !2376)
!2448 = !DILocation(line: 526, column: 45, scope: !2376)
!2449 = !DILocation(line: 526, column: 58, scope: !2376)
!2450 = !DILocation(line: 527, column: 9, scope: !2376)
!2451 = !DILocation(line: 526, column: 3, scope: !2376)
!2452 = !DILocation(line: 528, column: 2, scope: !2377)
!2453 = !DILocation(line: 528, column: 2, scope: !2376)
!2454 = !DILocation(line: 494, column: 41, scope: !2377)
!2455 = !DILocation(line: 494, column: 2, scope: !2377)
!2456 = distinct !{!2456, !2397, !2457, !2268, !2269}
!2457 = !DILocation(line: 528, column: 2, scope: !2378)
!2458 = !DILocation(line: 530, column: 22, scope: !2367)
!2459 = !DILocation(line: 530, column: 28, scope: !2367)
!2460 = !DILocation(line: 530, column: 10, scope: !2367)
!2461 = !DILocation(line: 530, column: 9, scope: !2367)
!2462 = !DILocation(line: 530, column: 2, scope: !2367)
!2463 = !DILocation(line: 531, column: 1, scope: !2367)
!2464 = distinct !DISubprogram(name: "acpi_init_of_compatible", scope: !2, file: !2, line: 296, type: !1947, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2474}
!2466 = !DILocalVariable(name: "adev", arg: 1, scope: !2464, file: !2, line: 296, type: !211)
!2467 = !DILocalVariable(name: "of_compatible", scope: !2464, file: !2, line: 298, type: !153)
!2468 = !DILocalVariable(name: "ret", scope: !2464, file: !2, line: 299, type: !67)
!2469 = !DILocalVariable(name: "parent", scope: !2470, file: !2, line: 307, type: !211)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 306, column: 12)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 306, column: 7)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !2, line: 303, column: 11)
!2473 = distinct !DILexicalBlock(scope: !2464, file: !2, line: 303, column: 6)
!2474 = !DILabel(scope: !2464, name: "out", file: !2, line: 318)
!2475 = !DILocation(line: 296, column: 57, scope: !2464)
!2476 = !DILocation(line: 298, column: 2, scope: !2464)
!2477 = !DILocation(line: 298, column: 27, scope: !2464)
!2478 = !DILocation(line: 299, column: 2, scope: !2464)
!2479 = !DILocation(line: 299, column: 6, scope: !2464)
!2480 = !DILocation(line: 301, column: 38, scope: !2464)
!2481 = !DILocation(line: 301, column: 44, scope: !2464)
!2482 = !DILocation(line: 301, column: 8, scope: !2464)
!2483 = !DILocation(line: 301, column: 6, scope: !2464)
!2484 = !DILocation(line: 303, column: 6, scope: !2473)
!2485 = !DILocation(line: 303, column: 6, scope: !2464)
!2486 = !DILocation(line: 304, column: 31, scope: !2472)
!2487 = !DILocation(line: 304, column: 9, scope: !2472)
!2488 = !DILocation(line: 304, column: 7, scope: !2472)
!2489 = !DILocation(line: 306, column: 7, scope: !2471)
!2490 = !DILocation(line: 306, column: 7, scope: !2472)
!2491 = !DILocation(line: 307, column: 4, scope: !2470)
!2492 = !DILocation(line: 307, column: 24, scope: !2470)
!2493 = !DILocation(line: 309, column: 29, scope: !2470)
!2494 = !DILocation(line: 309, column: 13, scope: !2470)
!2495 = !DILocation(line: 309, column: 11, scope: !2470)
!2496 = !DILocation(line: 310, column: 8, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 310, column: 8)
!2498 = !DILocation(line: 310, column: 15, scope: !2497)
!2499 = !DILocation(line: 310, column: 18, scope: !2497)
!2500 = !DILocation(line: 310, column: 26, scope: !2497)
!2501 = !DILocation(line: 310, column: 32, scope: !2497)
!2502 = !DILocation(line: 310, column: 8, scope: !2470)
!2503 = !DILocation(line: 311, column: 5, scope: !2497)
!2504 = !DILocation(line: 313, column: 4, scope: !2470)
!2505 = !DILocation(line: 314, column: 3, scope: !2471)
!2506 = !DILocation(line: 315, column: 2, scope: !2472)
!2507 = !DILocation(line: 316, column: 29, scope: !2464)
!2508 = !DILocation(line: 316, column: 2, scope: !2464)
!2509 = !DILocation(line: 316, column: 8, scope: !2464)
!2510 = !DILocation(line: 316, column: 13, scope: !2464)
!2511 = !DILocation(line: 316, column: 27, scope: !2464)
!2512 = !DILocation(line: 318, column: 2, scope: !2464)
!2513 = !DILocation(line: 319, column: 2, scope: !2464)
!2514 = !DILocation(line: 319, column: 8, scope: !2464)
!2515 = !DILocation(line: 319, column: 31, scope: !2464)
!2516 = !DILocation(line: 320, column: 1, scope: !2464)
!2517 = distinct !DISubprogram(name: "acpi_enumerate_nondev_subnodes", scope: !2, file: !2, line: 211, type: !2518, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!240, !196, !189, !2126, !222}
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2526, !2530}
!2521 = !DILocalVariable(name: "scope", arg: 1, scope: !2517, file: !2, line: 211, type: !196)
!2522 = !DILocalVariable(name: "desc", arg: 2, scope: !2517, file: !2, line: 212, type: !189)
!2523 = !DILocalVariable(name: "data", arg: 3, scope: !2517, file: !2, line: 213, type: !2126)
!2524 = !DILocalVariable(name: "parent", arg: 4, scope: !2517, file: !2, line: 214, type: !222)
!2525 = !DILocalVariable(name: "i", scope: !2517, file: !2, line: 216, type: !67)
!2526 = !DILocalVariable(name: "guid", scope: !2527, file: !2, line: 220, type: !153)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 219, column: 47)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 219, column: 2)
!2529 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 219, column: 2)
!2530 = !DILocalVariable(name: "links", scope: !2527, file: !2, line: 221, type: !189)
!2531 = !DILocation(line: 211, column: 56, scope: !2517)
!2532 = !DILocation(line: 212, column: 28, scope: !2517)
!2533 = !DILocation(line: 213, column: 34, scope: !2517)
!2534 = !DILocation(line: 214, column: 31, scope: !2517)
!2535 = !DILocation(line: 216, column: 2, scope: !2517)
!2536 = !DILocation(line: 216, column: 6, scope: !2517)
!2537 = !DILocation(line: 219, column: 9, scope: !2529)
!2538 = !DILocation(line: 219, column: 7, scope: !2529)
!2539 = !DILocation(line: 219, column: 14, scope: !2528)
!2540 = !DILocation(line: 219, column: 18, scope: !2528)
!2541 = !DILocation(line: 219, column: 32, scope: !2528)
!2542 = !DILocation(line: 219, column: 16, scope: !2528)
!2543 = !DILocation(line: 219, column: 2, scope: !2529)
!2544 = !DILocation(line: 220, column: 3, scope: !2527)
!2545 = !DILocation(line: 220, column: 28, scope: !2527)
!2546 = !DILocation(line: 221, column: 3, scope: !2527)
!2547 = !DILocation(line: 221, column: 22, scope: !2527)
!2548 = !DILocation(line: 223, column: 11, scope: !2527)
!2549 = !DILocation(line: 223, column: 25, scope: !2527)
!2550 = !DILocation(line: 223, column: 34, scope: !2527)
!2551 = !DILocation(line: 223, column: 8, scope: !2527)
!2552 = !DILocation(line: 224, column: 12, scope: !2527)
!2553 = !DILocation(line: 224, column: 26, scope: !2527)
!2554 = !DILocation(line: 224, column: 35, scope: !2527)
!2555 = !DILocation(line: 224, column: 37, scope: !2527)
!2556 = !DILocation(line: 224, column: 9, scope: !2527)
!2557 = !DILocation(line: 230, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 230, column: 7)
!2559 = !DILocation(line: 230, column: 13, scope: !2558)
!2560 = !DILocation(line: 230, column: 18, scope: !2558)
!2561 = !DILocation(line: 230, column: 38, scope: !2558)
!2562 = !DILocation(line: 231, column: 7, scope: !2558)
!2563 = !DILocation(line: 231, column: 20, scope: !2558)
!2564 = !DILocation(line: 231, column: 27, scope: !2558)
!2565 = !DILocation(line: 231, column: 33, scope: !2558)
!2566 = !DILocation(line: 232, column: 7, scope: !2558)
!2567 = !DILocation(line: 232, column: 14, scope: !2558)
!2568 = !DILocation(line: 232, column: 19, scope: !2558)
!2569 = !DILocation(line: 230, column: 7, scope: !2527)
!2570 = !DILocation(line: 233, column: 4, scope: !2558)
!2571 = !DILocation(line: 235, column: 29, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 235, column: 7)
!2573 = !DILocation(line: 235, column: 42, scope: !2572)
!2574 = !DILocation(line: 235, column: 8, scope: !2572)
!2575 = !DILocation(line: 235, column: 7, scope: !2527)
!2576 = !DILocation(line: 236, column: 4, scope: !2572)
!2577 = !DILocation(line: 238, column: 35, scope: !2527)
!2578 = !DILocation(line: 238, column: 42, scope: !2527)
!2579 = !DILocation(line: 238, column: 50, scope: !2527)
!2580 = !DILocation(line: 238, column: 56, scope: !2527)
!2581 = !DILocation(line: 239, column: 7, scope: !2527)
!2582 = !DILocation(line: 238, column: 10, scope: !2527)
!2583 = !DILocation(line: 238, column: 3, scope: !2527)
!2584 = !DILocation(line: 240, column: 2, scope: !2528)
!2585 = !DILocation(line: 219, column: 41, scope: !2528)
!2586 = !DILocation(line: 219, column: 2, scope: !2528)
!2587 = distinct !{!2587, !2543, !2588, !2268, !2269}
!2588 = !DILocation(line: 240, column: 2, scope: !2529)
!2589 = !DILocation(line: 242, column: 2, scope: !2517)
!2590 = !DILocation(line: 243, column: 1, scope: !2517)
!2591 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !141, file: !141, line: 451, type: !2592, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!222, !211}
!2594 = !{!2595}
!2595 = !DILocalVariable(name: "adev", arg: 1, scope: !2591, file: !141, line: 451, type: !211)
!2596 = !DILocation(line: 451, column: 76, scope: !2591)
!2597 = !DILocation(line: 453, column: 10, scope: !2591)
!2598 = !DILocation(line: 453, column: 16, scope: !2591)
!2599 = !DILocation(line: 453, column: 2, scope: !2591)
!2600 = distinct !DISubprogram(name: "acpi_os_free", scope: !2601, file: !2601, line: 60, type: !744, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2602)
!2601 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "memory", arg: 1, scope: !2600, file: !2601, line: 60, type: !138)
!2604 = !DILocation(line: 60, column: 39, scope: !2600)
!2605 = !DILocation(line: 62, column: 8, scope: !2600)
!2606 = !DILocation(line: 62, column: 2, scope: !2600)
!2607 = !DILocation(line: 63, column: 1, scope: !2600)
!2608 = distinct !DISubprogram(name: "acpi_tie_nondev_subnodes", scope: !2, file: !2, line: 366, type: !2609, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!240, !2126}
!2611 = !{!2612, !2613, !2614, !2617, !2620, !2621}
!2612 = !DILocalVariable(name: "data", arg: 1, scope: !2608, file: !2, line: 366, type: !2126)
!2613 = !DILocalVariable(name: "dn", scope: !2608, file: !2, line: 368, type: !1987)
!2614 = !DILocalVariable(name: "__mptr", scope: !2615, file: !2, line: 370, type: !138)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !2, line: 370, column: 2)
!2616 = distinct !DILexicalBlock(scope: !2608, file: !2, line: 370, column: 2)
!2617 = !DILocalVariable(name: "status", scope: !2618, file: !2, line: 371, type: !2008)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 370, column: 52)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !2, line: 370, column: 2)
!2620 = !DILocalVariable(name: "ret", scope: !2618, file: !2, line: 372, type: !240)
!2621 = !DILocalVariable(name: "__mptr", scope: !2622, file: !2, line: 370, type: !138)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 370, column: 2)
!2623 = !DILocation(line: 366, column: 63, scope: !2608)
!2624 = !DILocation(line: 368, column: 2, scope: !2608)
!2625 = !DILocation(line: 368, column: 25, scope: !2608)
!2626 = !DILocation(line: 370, column: 2, scope: !2615)
!2627 = !DILocation(line: 370, column: 2, scope: !2616)
!2628 = !DILocation(line: 370, column: 2, scope: !2619)
!2629 = !DILocation(line: 371, column: 3, scope: !2618)
!2630 = !DILocation(line: 371, column: 15, scope: !2618)
!2631 = !DILocation(line: 372, column: 3, scope: !2618)
!2632 = !DILocation(line: 372, column: 8, scope: !2618)
!2633 = !DILocation(line: 374, column: 29, scope: !2618)
!2634 = !DILocation(line: 374, column: 33, scope: !2618)
!2635 = !DILocation(line: 374, column: 66, scope: !2618)
!2636 = !DILocation(line: 374, column: 12, scope: !2618)
!2637 = !DILocation(line: 374, column: 10, scope: !2618)
!2638 = !DILocation(line: 375, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 375, column: 7)
!2640 = !DILocation(line: 375, column: 28, scope: !2639)
!2641 = !DILocation(line: 375, column: 31, scope: !2639)
!2642 = !DILocation(line: 375, column: 38, scope: !2639)
!2643 = !DILocation(line: 375, column: 7, scope: !2618)
!2644 = !DILocation(line: 376, column: 4, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 375, column: 60)
!2646 = !DILocation(line: 377, column: 4, scope: !2645)
!2647 = !DILocation(line: 380, column: 35, scope: !2618)
!2648 = !DILocation(line: 380, column: 39, scope: !2618)
!2649 = !DILocation(line: 380, column: 9, scope: !2618)
!2650 = !DILocation(line: 380, column: 7, scope: !2618)
!2651 = !DILocation(line: 381, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 381, column: 7)
!2653 = !DILocation(line: 381, column: 7, scope: !2618)
!2654 = !DILocation(line: 382, column: 11, scope: !2652)
!2655 = !DILocation(line: 382, column: 4, scope: !2652)
!2656 = !DILocation(line: 383, column: 2, scope: !2619)
!2657 = !DILocation(line: 383, column: 2, scope: !2618)
!2658 = !DILocation(line: 370, column: 2, scope: !2622)
!2659 = distinct !{!2659, !2627, !2660, !2268, !2269}
!2660 = !DILocation(line: 383, column: 2, scope: !2616)
!2661 = !DILocation(line: 385, column: 2, scope: !2608)
!2662 = !DILocation(line: 386, column: 1, scope: !2608)
!2663 = distinct !DISubprogram(name: "acpi_untie_nondev_subnodes", scope: !2, file: !2, line: 355, type: !2664, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !2126}
!2666 = !{!2667, !2668, !2669, !2672}
!2667 = !DILocalVariable(name: "data", arg: 1, scope: !2663, file: !2, line: 355, type: !2126)
!2668 = !DILocalVariable(name: "dn", scope: !2663, file: !2, line: 357, type: !1987)
!2669 = !DILocalVariable(name: "__mptr", scope: !2670, file: !2, line: 359, type: !138)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 359, column: 2)
!2671 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 359, column: 2)
!2672 = !DILocalVariable(name: "__mptr", scope: !2673, file: !2, line: 359, type: !138)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 359, column: 2)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 359, column: 2)
!2675 = !DILocation(line: 355, column: 65, scope: !2663)
!2676 = !DILocation(line: 357, column: 2, scope: !2663)
!2677 = !DILocation(line: 357, column: 25, scope: !2663)
!2678 = !DILocation(line: 359, column: 2, scope: !2670)
!2679 = !DILocation(line: 359, column: 2, scope: !2671)
!2680 = !DILocation(line: 359, column: 2, scope: !2674)
!2681 = !DILocation(line: 360, column: 20, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 359, column: 52)
!2683 = !DILocation(line: 360, column: 24, scope: !2682)
!2684 = !DILocation(line: 360, column: 3, scope: !2682)
!2685 = !DILocation(line: 362, column: 31, scope: !2682)
!2686 = !DILocation(line: 362, column: 35, scope: !2682)
!2687 = !DILocation(line: 362, column: 3, scope: !2682)
!2688 = !DILocation(line: 363, column: 2, scope: !2682)
!2689 = !DILocation(line: 359, column: 2, scope: !2673)
!2690 = distinct !{!2690, !2679, !2691, !2268, !2269}
!2691 = !DILocation(line: 363, column: 2, scope: !2671)
!2692 = !DILocation(line: 364, column: 1, scope: !2663)
!2693 = !DISubprogram(name: "acpi_handle_printk", scope: !2694, file: !2694, line: 1180, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2694 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2695 = !DISubroutineType(types: !2696)
!2696 = !{null, !150, !196, !150, null}
!2697 = !DISubprogram(name: "acpi_extract_apple_properties", scope: !2698, file: !2698, line: 258, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2698 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!2699 = distinct !DISubprogram(name: "acpi_free_properties", scope: !2, file: !2, line: 621, type: !1947, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2700)
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "adev", arg: 1, scope: !2699, file: !2, line: 621, type: !211)
!2702 = !DILocation(line: 621, column: 47, scope: !2699)
!2703 = !DILocation(line: 623, column: 30, scope: !2699)
!2704 = !DILocation(line: 623, column: 36, scope: !2699)
!2705 = !DILocation(line: 623, column: 2, scope: !2699)
!2706 = !DILocation(line: 624, column: 32, scope: !2699)
!2707 = !DILocation(line: 624, column: 38, scope: !2699)
!2708 = !DILocation(line: 624, column: 43, scope: !2699)
!2709 = !DILocation(line: 624, column: 2, scope: !2699)
!2710 = !DILocation(line: 625, column: 2, scope: !2699)
!2711 = !DILocation(line: 626, column: 2, scope: !2699)
!2712 = !DILocation(line: 626, column: 8, scope: !2699)
!2713 = !DILocation(line: 626, column: 13, scope: !2699)
!2714 = !DILocation(line: 626, column: 27, scope: !2699)
!2715 = !DILocation(line: 627, column: 2, scope: !2699)
!2716 = !DILocation(line: 627, column: 8, scope: !2699)
!2717 = !DILocation(line: 627, column: 13, scope: !2699)
!2718 = !DILocation(line: 627, column: 21, scope: !2699)
!2719 = !DILocation(line: 628, column: 31, scope: !2699)
!2720 = !DILocation(line: 628, column: 37, scope: !2699)
!2721 = !DILocation(line: 628, column: 42, scope: !2699)
!2722 = !DILocation(line: 628, column: 2, scope: !2699)
!2723 = !DILocation(line: 629, column: 1, scope: !2699)
!2724 = distinct !DISubprogram(name: "acpi_destroy_nondev_subnodes", scope: !2, file: !2, line: 604, type: !2178, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2732, !2734}
!2726 = !DILocalVariable(name: "list", arg: 1, scope: !2724, file: !2, line: 604, type: !147)
!2727 = !DILocalVariable(name: "dn", scope: !2724, file: !2, line: 606, type: !1987)
!2728 = !DILocalVariable(name: "next", scope: !2724, file: !2, line: 606, type: !1987)
!2729 = !DILocalVariable(name: "__mptr", scope: !2730, file: !2, line: 611, type: !138)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 611, column: 2)
!2731 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 611, column: 2)
!2732 = !DILocalVariable(name: "__mptr", scope: !2733, file: !2, line: 611, type: !138)
!2733 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 611, column: 2)
!2734 = !DILocalVariable(name: "__mptr", scope: !2735, file: !2, line: 611, type: !138)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 611, column: 2)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 611, column: 2)
!2737 = !DILocation(line: 604, column: 60, scope: !2724)
!2738 = !DILocation(line: 606, column: 2, scope: !2724)
!2739 = !DILocation(line: 606, column: 25, scope: !2724)
!2740 = !DILocation(line: 606, column: 30, scope: !2724)
!2741 = !DILocation(line: 608, column: 17, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 608, column: 6)
!2743 = !DILocation(line: 608, column: 6, scope: !2742)
!2744 = !DILocation(line: 608, column: 6, scope: !2724)
!2745 = !DILocation(line: 609, column: 3, scope: !2742)
!2746 = !DILocation(line: 611, column: 2, scope: !2730)
!2747 = !DILocation(line: 611, column: 2, scope: !2731)
!2748 = !DILocation(line: 611, column: 2, scope: !2733)
!2749 = !DILocation(line: 611, column: 2, scope: !2736)
!2750 = !DILocation(line: 612, column: 33, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 611, column: 60)
!2752 = !DILocation(line: 612, column: 37, scope: !2751)
!2753 = !DILocation(line: 612, column: 42, scope: !2751)
!2754 = !DILocation(line: 612, column: 3, scope: !2751)
!2755 = !DILocation(line: 613, column: 24, scope: !2751)
!2756 = !DILocation(line: 613, column: 28, scope: !2751)
!2757 = !DILocation(line: 613, column: 3, scope: !2751)
!2758 = !DILocation(line: 614, column: 13, scope: !2751)
!2759 = !DILocation(line: 614, column: 17, scope: !2751)
!2760 = !DILocation(line: 614, column: 3, scope: !2751)
!2761 = !DILocation(line: 615, column: 3, scope: !2751)
!2762 = !DILocation(line: 616, column: 32, scope: !2751)
!2763 = !DILocation(line: 616, column: 36, scope: !2751)
!2764 = !DILocation(line: 616, column: 41, scope: !2751)
!2765 = !DILocation(line: 616, column: 3, scope: !2751)
!2766 = !DILocation(line: 617, column: 9, scope: !2751)
!2767 = !DILocation(line: 617, column: 3, scope: !2751)
!2768 = !DILocation(line: 618, column: 2, scope: !2751)
!2769 = !DILocation(line: 611, column: 2, scope: !2735)
!2770 = distinct !{!2770, !2747, !2771, !2268, !2269}
!2771 = !DILocation(line: 618, column: 2, scope: !2731)
!2772 = !DILocation(line: 619, column: 1, scope: !2724)
!2773 = distinct !DISubprogram(name: "acpi_free_device_properties", scope: !2, file: !2, line: 588, type: !2178, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2774)
!2774 = !{!2775, !2776, !2777, !2778, !2781, !2783, !2786}
!2775 = !DILocalVariable(name: "list", arg: 1, scope: !2773, file: !2, line: 588, type: !147)
!2776 = !DILocalVariable(name: "props", scope: !2773, file: !2, line: 590, type: !2009)
!2777 = !DILocalVariable(name: "tmp", scope: !2773, file: !2, line: 590, type: !2009)
!2778 = !DILocalVariable(name: "__mptr", scope: !2779, file: !2, line: 592, type: !138)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 592, column: 2)
!2780 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 592, column: 2)
!2781 = !DILocalVariable(name: "__mptr", scope: !2782, file: !2, line: 592, type: !138)
!2782 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 592, column: 2)
!2783 = !DILocalVariable(name: "i", scope: !2784, file: !2, line: 593, type: !159)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 592, column: 51)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 592, column: 2)
!2786 = !DILocalVariable(name: "__mptr", scope: !2787, file: !2, line: 592, type: !138)
!2787 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 592, column: 2)
!2788 = !DILocation(line: 588, column: 59, scope: !2773)
!2789 = !DILocation(line: 590, column: 2, scope: !2773)
!2790 = !DILocation(line: 590, column: 33, scope: !2773)
!2791 = !DILocation(line: 590, column: 41, scope: !2773)
!2792 = !DILocation(line: 592, column: 2, scope: !2779)
!2793 = !DILocation(line: 592, column: 2, scope: !2780)
!2794 = !DILocation(line: 592, column: 2, scope: !2782)
!2795 = !DILocation(line: 592, column: 2, scope: !2785)
!2796 = !DILocation(line: 593, column: 3, scope: !2784)
!2797 = !DILocation(line: 593, column: 7, scope: !2784)
!2798 = !DILocation(line: 595, column: 13, scope: !2784)
!2799 = !DILocation(line: 595, column: 20, scope: !2784)
!2800 = !DILocation(line: 595, column: 3, scope: !2784)
!2801 = !DILocation(line: 597, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 597, column: 7)
!2803 = !DILocation(line: 597, column: 14, scope: !2802)
!2804 = !DILocation(line: 597, column: 7, scope: !2784)
!2805 = !DILocation(line: 598, column: 11, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 598, column: 4)
!2807 = !DILocation(line: 598, column: 9, scope: !2806)
!2808 = !DILocation(line: 598, column: 16, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !2, line: 598, column: 4)
!2810 = !DILocation(line: 598, column: 20, scope: !2809)
!2811 = !DILocation(line: 598, column: 27, scope: !2809)
!2812 = !DILocation(line: 598, column: 47, scope: !2809)
!2813 = !DILocation(line: 598, column: 18, scope: !2809)
!2814 = !DILocation(line: 598, column: 4, scope: !2806)
!2815 = !DILocation(line: 599, column: 5, scope: !2809)
!2816 = !DILocation(line: 598, column: 55, scope: !2809)
!2817 = !DILocation(line: 598, column: 4, scope: !2809)
!2818 = distinct !{!2818, !2814, !2819, !2268, !2269}
!2819 = !DILocation(line: 599, column: 5, scope: !2806)
!2820 = !DILocation(line: 600, column: 10, scope: !2784)
!2821 = !DILocation(line: 600, column: 3, scope: !2784)
!2822 = !DILocation(line: 601, column: 2, scope: !2785)
!2823 = !DILocation(line: 601, column: 2, scope: !2784)
!2824 = !DILocation(line: 592, column: 2, scope: !2787)
!2825 = distinct !{!2825, !2793, !2826, !2268, !2269}
!2826 = !DILocation(line: 601, column: 2, scope: !2780)
!2827 = !DILocation(line: 602, column: 1, scope: !2773)
!2828 = distinct !DISubprogram(name: "acpi_dev_get_property", scope: !2, file: !2, line: 696, type: !2829, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2833)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!67, !2831, !150, !158, !152}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!2833 = !{!2834, !2835, !2836, !2837}
!2834 = !DILocalVariable(name: "adev", arg: 1, scope: !2828, file: !2, line: 696, type: !2831)
!2835 = !DILocalVariable(name: "name", arg: 2, scope: !2828, file: !2, line: 696, type: !150)
!2836 = !DILocalVariable(name: "type", arg: 3, scope: !2828, file: !2, line: 697, type: !158)
!2837 = !DILocalVariable(name: "obj", arg: 4, scope: !2828, file: !2, line: 697, type: !152)
!2838 = !DILocation(line: 696, column: 53, scope: !2828)
!2839 = !DILocation(line: 696, column: 71, scope: !2828)
!2840 = !DILocation(line: 697, column: 23, scope: !2828)
!2841 = !DILocation(line: 697, column: 55, scope: !2828)
!2842 = !DILocation(line: 699, column: 9, scope: !2828)
!2843 = !DILocation(line: 699, column: 40, scope: !2828)
!2844 = !DILocation(line: 699, column: 46, scope: !2828)
!2845 = !DILocation(line: 699, column: 52, scope: !2828)
!2846 = !DILocation(line: 699, column: 58, scope: !2828)
!2847 = !DILocation(line: 699, column: 64, scope: !2828)
!2848 = !DILocation(line: 699, column: 16, scope: !2828)
!2849 = !DILocation(line: 699, column: 2, scope: !2828)
!2850 = distinct !DISubprogram(name: "acpi_data_get_property", scope: !2, file: !2, line: 649, type: !2851, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2855)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!67, !2853, !150, !158, !152}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861, !2864, !2867, !2868, !2872, !2873, !2874}
!2856 = !DILocalVariable(name: "data", arg: 1, scope: !2850, file: !2, line: 649, type: !2853)
!2857 = !DILocalVariable(name: "name", arg: 2, scope: !2850, file: !2, line: 650, type: !150)
!2858 = !DILocalVariable(name: "type", arg: 3, scope: !2850, file: !2, line: 650, type: !158)
!2859 = !DILocalVariable(name: "obj", arg: 4, scope: !2850, file: !2, line: 651, type: !152)
!2860 = !DILocalVariable(name: "props", scope: !2850, file: !2, line: 653, type: !2017)
!2861 = !DILocalVariable(name: "__mptr", scope: !2862, file: !2, line: 661, type: !138)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !2, line: 661, column: 2)
!2863 = distinct !DILexicalBlock(scope: !2850, file: !2, line: 661, column: 2)
!2864 = !DILocalVariable(name: "properties", scope: !2865, file: !2, line: 662, type: !153)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 661, column: 54)
!2866 = distinct !DILexicalBlock(scope: !2863, file: !2, line: 661, column: 2)
!2867 = !DILocalVariable(name: "i", scope: !2865, file: !2, line: 663, type: !28)
!2868 = !DILocalVariable(name: "propname", scope: !2869, file: !2, line: 667, type: !153)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 666, column: 51)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 666, column: 3)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 666, column: 3)
!2872 = !DILocalVariable(name: "propvalue", scope: !2869, file: !2, line: 667, type: !153)
!2873 = !DILocalVariable(name: "property", scope: !2869, file: !2, line: 668, type: !153)
!2874 = !DILocalVariable(name: "__mptr", scope: !2875, file: !2, line: 661, type: !138)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 661, column: 2)
!2876 = !DILocation(line: 649, column: 66, scope: !2850)
!2877 = !DILocation(line: 650, column: 19, scope: !2850)
!2878 = !DILocation(line: 650, column: 42, scope: !2850)
!2879 = !DILocation(line: 651, column: 33, scope: !2850)
!2880 = !DILocation(line: 653, column: 2, scope: !2850)
!2881 = !DILocation(line: 653, column: 39, scope: !2850)
!2882 = !DILocation(line: 655, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2850, file: !2, line: 655, column: 6)
!2884 = !DILocation(line: 655, column: 12, scope: !2883)
!2885 = !DILocation(line: 655, column: 16, scope: !2883)
!2886 = !DILocation(line: 655, column: 6, scope: !2850)
!2887 = !DILocation(line: 656, column: 3, scope: !2883)
!2888 = !DILocation(line: 658, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2850, file: !2, line: 658, column: 6)
!2890 = !DILocation(line: 658, column: 13, scope: !2889)
!2891 = !DILocation(line: 658, column: 21, scope: !2889)
!2892 = !DILocation(line: 658, column: 36, scope: !2889)
!2893 = !DILocation(line: 658, column: 42, scope: !2889)
!2894 = !DILocation(line: 658, column: 24, scope: !2889)
!2895 = !DILocation(line: 658, column: 6, scope: !2850)
!2896 = !DILocation(line: 659, column: 3, scope: !2889)
!2897 = !DILocation(line: 661, column: 2, scope: !2862)
!2898 = !DILocation(line: 661, column: 2, scope: !2863)
!2899 = !DILocation(line: 661, column: 2, scope: !2866)
!2900 = !DILocation(line: 662, column: 3, scope: !2865)
!2901 = !DILocation(line: 662, column: 28, scope: !2865)
!2902 = !DILocation(line: 663, column: 3, scope: !2865)
!2903 = !DILocation(line: 663, column: 16, scope: !2865)
!2904 = !DILocation(line: 665, column: 16, scope: !2865)
!2905 = !DILocation(line: 665, column: 23, scope: !2865)
!2906 = !DILocation(line: 665, column: 14, scope: !2865)
!2907 = !DILocation(line: 666, column: 10, scope: !2871)
!2908 = !DILocation(line: 666, column: 8, scope: !2871)
!2909 = !DILocation(line: 666, column: 15, scope: !2870)
!2910 = !DILocation(line: 666, column: 19, scope: !2870)
!2911 = !DILocation(line: 666, column: 39, scope: !2870)
!2912 = !DILocation(line: 666, column: 17, scope: !2870)
!2913 = !DILocation(line: 666, column: 3, scope: !2871)
!2914 = !DILocation(line: 667, column: 4, scope: !2869)
!2915 = !DILocation(line: 667, column: 29, scope: !2869)
!2916 = !DILocation(line: 667, column: 40, scope: !2869)
!2917 = !DILocation(line: 668, column: 4, scope: !2869)
!2918 = !DILocation(line: 668, column: 29, scope: !2869)
!2919 = !DILocation(line: 670, column: 16, scope: !2869)
!2920 = !DILocation(line: 670, column: 36, scope: !2869)
!2921 = !DILocation(line: 670, column: 45, scope: !2869)
!2922 = !DILocation(line: 670, column: 13, scope: !2869)
!2923 = !DILocation(line: 672, column: 16, scope: !2869)
!2924 = !DILocation(line: 672, column: 34, scope: !2869)
!2925 = !DILocation(line: 672, column: 13, scope: !2869)
!2926 = !DILocation(line: 673, column: 17, scope: !2869)
!2927 = !DILocation(line: 673, column: 35, scope: !2869)
!2928 = !DILocation(line: 673, column: 14, scope: !2869)
!2929 = !DILocation(line: 675, column: 16, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2869, file: !2, line: 675, column: 8)
!2931 = !DILocation(line: 675, column: 22, scope: !2930)
!2932 = !DILocation(line: 675, column: 39, scope: !2930)
!2933 = !DILocation(line: 675, column: 9, scope: !2930)
!2934 = !DILocation(line: 675, column: 8, scope: !2869)
!2935 = !DILocation(line: 676, column: 9, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 676, column: 9)
!2937 = distinct !DILexicalBlock(scope: !2930, file: !2, line: 675, column: 49)
!2938 = !DILocation(line: 676, column: 14, scope: !2936)
!2939 = !DILocation(line: 676, column: 31, scope: !2936)
!2940 = !DILocation(line: 677, column: 9, scope: !2936)
!2941 = !DILocation(line: 677, column: 20, scope: !2936)
!2942 = !DILocation(line: 677, column: 28, scope: !2936)
!2943 = !DILocation(line: 677, column: 25, scope: !2936)
!2944 = !DILocation(line: 676, column: 9, scope: !2937)
!2945 = !DILocation(line: 678, column: 6, scope: !2936)
!2946 = !DILocation(line: 679, column: 9, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 679, column: 9)
!2948 = !DILocation(line: 679, column: 9, scope: !2937)
!2949 = !DILocation(line: 680, column: 13, scope: !2947)
!2950 = !DILocation(line: 680, column: 7, scope: !2947)
!2951 = !DILocation(line: 680, column: 11, scope: !2947)
!2952 = !DILocation(line: 680, column: 6, scope: !2947)
!2953 = !DILocation(line: 682, column: 5, scope: !2937)
!2954 = !DILocation(line: 684, column: 3, scope: !2870)
!2955 = !DILocation(line: 684, column: 3, scope: !2869)
!2956 = !DILocation(line: 666, column: 47, scope: !2870)
!2957 = !DILocation(line: 666, column: 3, scope: !2870)
!2958 = distinct !{!2958, !2913, !2959, !2268, !2269}
!2959 = !DILocation(line: 684, column: 3, scope: !2871)
!2960 = !DILocation(line: 685, column: 2, scope: !2866)
!2961 = !DILocation(line: 685, column: 2, scope: !2865)
!2962 = !DILocation(line: 661, column: 2, scope: !2875)
!2963 = distinct !{!2963, !2898, !2964, !2268, !2269}
!2964 = !DILocation(line: 685, column: 2, scope: !2863)
!2965 = !DILocation(line: 686, column: 2, scope: !2850)
!2966 = !DILocation(line: 687, column: 1, scope: !2850)
!2967 = distinct !DISubprogram(name: "acpi_node_prop_get", scope: !2, file: !2, line: 723, type: !2968, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!67, !242, !150, !2016}
!2970 = !{!2971, !2972, !2973}
!2971 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2967, file: !2, line: 723, type: !242)
!2972 = !DILocalVariable(name: "propname", arg: 2, scope: !2967, file: !2, line: 724, type: !150)
!2973 = !DILocalVariable(name: "valptr", arg: 3, scope: !2967, file: !2, line: 724, type: !2016)
!2974 = !DILocation(line: 723, column: 52, scope: !2967)
!2975 = !DILocation(line: 724, column: 22, scope: !2967)
!2976 = !DILocation(line: 724, column: 39, scope: !2967)
!2977 = !DILocation(line: 726, column: 57, scope: !2967)
!2978 = !DILocation(line: 726, column: 32, scope: !2967)
!2979 = !DILocation(line: 727, column: 11, scope: !2967)
!2980 = !DILocation(line: 728, column: 39, scope: !2967)
!2981 = !DILocation(line: 726, column: 9, scope: !2967)
!2982 = !DILocation(line: 726, column: 2, scope: !2967)
!2983 = distinct !DISubprogram(name: "acpi_device_data_of_node", scope: !2, file: !2, line: 704, type: !2984, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2853, !242}
!2986 = !{!2987, !2988, !2991, !2993, !2995, !3000, !3002}
!2987 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2983, file: !2, line: 704, type: !242)
!2988 = !DILocalVariable(name: "adev", scope: !2989, file: !2, line: 707, type: !2831)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 706, column: 35)
!2990 = distinct !DILexicalBlock(scope: !2983, file: !2, line: 706, column: 6)
!2991 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2992, file: !2, line: 707, type: !242)
!2992 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 707, column: 36)
!2993 = !DILocalVariable(name: "__mptr", scope: !2994, file: !2, line: 707, type: !138)
!2994 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 707, column: 36)
!2995 = !DILocalVariable(name: "dn", scope: !2996, file: !2, line: 711, type: !2998)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 710, column: 33)
!2997 = distinct !DILexicalBlock(scope: !2983, file: !2, line: 710, column: 6)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!3000 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !3001, file: !2, line: 711, type: !242)
!3001 = distinct !DILexicalBlock(scope: !2996, file: !2, line: 711, column: 37)
!3002 = !DILocalVariable(name: "__mptr", scope: !3003, file: !2, line: 711, type: !138)
!3003 = distinct !DILexicalBlock(scope: !3001, file: !2, line: 711, column: 37)
!3004 = !DILocation(line: 704, column: 54, scope: !2983)
!3005 = !DILocation(line: 706, column: 26, scope: !2990)
!3006 = !DILocation(line: 706, column: 6, scope: !2990)
!3007 = !DILocation(line: 706, column: 6, scope: !2983)
!3008 = !DILocation(line: 707, column: 3, scope: !2989)
!3009 = !DILocation(line: 707, column: 29, scope: !2989)
!3010 = !DILocation(line: 707, column: 36, scope: !2992)
!3011 = !DILocation(line: 707, column: 36, scope: !2994)
!3012 = !DILocation(line: 707, column: 36, scope: !2989)
!3013 = !DILocation(line: 708, column: 11, scope: !2989)
!3014 = !DILocation(line: 708, column: 17, scope: !2989)
!3015 = !DILocation(line: 708, column: 3, scope: !2989)
!3016 = !DILocation(line: 709, column: 2, scope: !2990)
!3017 = !DILocation(line: 710, column: 24, scope: !2997)
!3018 = !DILocation(line: 710, column: 6, scope: !2997)
!3019 = !DILocation(line: 710, column: 6, scope: !2983)
!3020 = !DILocation(line: 711, column: 3, scope: !2996)
!3021 = !DILocation(line: 711, column: 32, scope: !2996)
!3022 = !DILocation(line: 711, column: 37, scope: !3001)
!3023 = !DILocation(line: 711, column: 37, scope: !3003)
!3024 = !DILocation(line: 711, column: 37, scope: !2996)
!3025 = !DILocation(line: 712, column: 11, scope: !2996)
!3026 = !DILocation(line: 712, column: 15, scope: !2996)
!3027 = !DILocation(line: 712, column: 3, scope: !2996)
!3028 = !DILocation(line: 713, column: 2, scope: !2997)
!3029 = !DILocation(line: 714, column: 2, scope: !2983)
!3030 = !DILocation(line: 715, column: 1, scope: !2983)
!3031 = distinct !DISubprogram(name: "__acpi_node_get_property_reference", scope: !2, file: !2, line: 883, type: !3032, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!67, !242, !150, !377, !377, !1753}
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046}
!3035 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3031, file: !2, line: 883, type: !242)
!3036 = !DILocalVariable(name: "propname", arg: 2, scope: !3031, file: !2, line: 884, type: !150)
!3037 = !DILocalVariable(name: "index", arg: 3, scope: !3031, file: !2, line: 884, type: !377)
!3038 = !DILocalVariable(name: "num_args", arg: 4, scope: !3031, file: !2, line: 884, type: !377)
!3039 = !DILocalVariable(name: "args", arg: 5, scope: !3031, file: !2, line: 885, type: !1753)
!3040 = !DILocalVariable(name: "element", scope: !3031, file: !2, line: 887, type: !153)
!3041 = !DILocalVariable(name: "end", scope: !3031, file: !2, line: 887, type: !153)
!3042 = !DILocalVariable(name: "obj", scope: !3031, file: !2, line: 888, type: !153)
!3043 = !DILocalVariable(name: "data", scope: !3031, file: !2, line: 889, type: !2853)
!3044 = !DILocalVariable(name: "device", scope: !3031, file: !2, line: 890, type: !211)
!3045 = !DILocalVariable(name: "ret", scope: !3031, file: !2, line: 891, type: !67)
!3046 = !DILocalVariable(name: "idx", scope: !3031, file: !2, line: 891, type: !67)
!3047 = !DILocation(line: 883, column: 68, scope: !3031)
!3048 = !DILocation(line: 884, column: 14, scope: !3031)
!3049 = !DILocation(line: 884, column: 31, scope: !3031)
!3050 = !DILocation(line: 884, column: 45, scope: !3031)
!3051 = !DILocation(line: 885, column: 32, scope: !3031)
!3052 = !DILocation(line: 887, column: 2, scope: !3031)
!3053 = !DILocation(line: 887, column: 27, scope: !3031)
!3054 = !DILocation(line: 887, column: 37, scope: !3031)
!3055 = !DILocation(line: 888, column: 2, scope: !3031)
!3056 = !DILocation(line: 888, column: 27, scope: !3031)
!3057 = !DILocation(line: 889, column: 2, scope: !3031)
!3058 = !DILocation(line: 889, column: 33, scope: !3031)
!3059 = !DILocation(line: 890, column: 2, scope: !3031)
!3060 = !DILocation(line: 890, column: 22, scope: !3031)
!3061 = !DILocation(line: 891, column: 2, scope: !3031)
!3062 = !DILocation(line: 891, column: 6, scope: !3031)
!3063 = !DILocation(line: 891, column: 11, scope: !3031)
!3064 = !DILocation(line: 893, column: 34, scope: !3031)
!3065 = !DILocation(line: 893, column: 9, scope: !3031)
!3066 = !DILocation(line: 893, column: 7, scope: !3031)
!3067 = !DILocation(line: 894, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 894, column: 6)
!3069 = !DILocation(line: 894, column: 6, scope: !3031)
!3070 = !DILocation(line: 895, column: 3, scope: !3068)
!3071 = !DILocation(line: 897, column: 31, scope: !3031)
!3072 = !DILocation(line: 897, column: 37, scope: !3031)
!3073 = !DILocation(line: 897, column: 8, scope: !3031)
!3074 = !DILocation(line: 897, column: 6, scope: !3031)
!3075 = !DILocation(line: 898, column: 6, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 898, column: 6)
!3077 = !DILocation(line: 898, column: 6, scope: !3031)
!3078 = !DILocation(line: 899, column: 10, scope: !3076)
!3079 = !DILocation(line: 899, column: 14, scope: !3076)
!3080 = !DILocation(line: 899, column: 3, scope: !3076)
!3081 = !DILocation(line: 901, column: 10, scope: !3031)
!3082 = !DILocation(line: 901, column: 15, scope: !3031)
!3083 = !DILocation(line: 901, column: 2, scope: !3031)
!3084 = !DILocation(line: 904, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !2, line: 904, column: 7)
!3086 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 901, column: 21)
!3087 = !DILocation(line: 904, column: 7, scope: !3086)
!3088 = !DILocation(line: 905, column: 4, scope: !3085)
!3089 = !DILocation(line: 907, column: 32, scope: !3086)
!3090 = !DILocation(line: 907, column: 47, scope: !3086)
!3091 = !DILocation(line: 907, column: 12, scope: !3086)
!3092 = !DILocation(line: 907, column: 10, scope: !3086)
!3093 = !DILocation(line: 908, column: 8, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3086, file: !2, line: 908, column: 7)
!3095 = !DILocation(line: 908, column: 7, scope: !3086)
!3096 = !DILocation(line: 909, column: 4, scope: !3094)
!3097 = !DILocation(line: 911, column: 8, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3086, file: !2, line: 911, column: 7)
!3099 = !DILocation(line: 911, column: 7, scope: !3086)
!3100 = !DILocation(line: 912, column: 4, scope: !3098)
!3101 = !DILocation(line: 914, column: 37, scope: !3086)
!3102 = !DILocation(line: 914, column: 18, scope: !3086)
!3103 = !DILocation(line: 914, column: 3, scope: !3086)
!3104 = !DILocation(line: 914, column: 9, scope: !3086)
!3105 = !DILocation(line: 914, column: 16, scope: !3086)
!3106 = !DILocation(line: 915, column: 3, scope: !3086)
!3107 = !DILocation(line: 915, column: 9, scope: !3086)
!3108 = !DILocation(line: 915, column: 15, scope: !3086)
!3109 = !DILocation(line: 916, column: 3, scope: !3086)
!3110 = !DILocation(line: 929, column: 3, scope: !3086)
!3111 = !DILocation(line: 932, column: 6, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 932, column: 6)
!3113 = !DILocation(line: 932, column: 15, scope: !3112)
!3114 = !DILocation(line: 932, column: 28, scope: !3112)
!3115 = !DILocation(line: 932, column: 12, scope: !3112)
!3116 = !DILocation(line: 932, column: 6, scope: !3031)
!3117 = !DILocation(line: 933, column: 3, scope: !3112)
!3118 = !DILocation(line: 935, column: 12, scope: !3031)
!3119 = !DILocation(line: 935, column: 25, scope: !3031)
!3120 = !DILocation(line: 935, column: 10, scope: !3031)
!3121 = !DILocation(line: 936, column: 8, scope: !3031)
!3122 = !DILocation(line: 936, column: 18, scope: !3031)
!3123 = !DILocation(line: 936, column: 31, scope: !3031)
!3124 = !DILocation(line: 936, column: 16, scope: !3031)
!3125 = !DILocation(line: 936, column: 6, scope: !3031)
!3126 = !DILocation(line: 938, column: 2, scope: !3031)
!3127 = !DILocation(line: 938, column: 9, scope: !3031)
!3128 = !DILocation(line: 938, column: 19, scope: !3031)
!3129 = !DILocation(line: 938, column: 17, scope: !3031)
!3130 = !DILocation(line: 939, column: 11, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 938, column: 24)
!3132 = !DILocation(line: 939, column: 20, scope: !3131)
!3133 = !DILocation(line: 939, column: 3, scope: !3131)
!3134 = !DILocation(line: 941, column: 33, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 939, column: 26)
!3136 = !DILocation(line: 941, column: 52, scope: !3135)
!3137 = !DILocation(line: 941, column: 13, scope: !3135)
!3138 = !DILocation(line: 941, column: 11, scope: !3135)
!3139 = !DILocation(line: 942, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 942, column: 8)
!3141 = !DILocation(line: 942, column: 8, scope: !3135)
!3142 = !DILocation(line: 943, column: 5, scope: !3140)
!3143 = !DILocation(line: 945, column: 11, scope: !3135)
!3144 = !DILocation(line: 947, column: 28, scope: !3135)
!3145 = !DILocation(line: 947, column: 35, scope: !3135)
!3146 = !DILocation(line: 947, column: 32, scope: !3135)
!3147 = !DILocation(line: 947, column: 43, scope: !3135)
!3148 = !DILocation(line: 948, column: 26, scope: !3135)
!3149 = !DILocation(line: 948, column: 7, scope: !3135)
!3150 = !DILocation(line: 949, column: 17, scope: !3135)
!3151 = !DILocation(line: 949, column: 22, scope: !3135)
!3152 = !DILocation(line: 947, column: 10, scope: !3135)
!3153 = !DILocation(line: 947, column: 8, scope: !3135)
!3154 = !DILocation(line: 950, column: 8, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 950, column: 8)
!3156 = !DILocation(line: 950, column: 12, scope: !3155)
!3157 = !DILocation(line: 950, column: 8, scope: !3135)
!3158 = !DILocation(line: 951, column: 12, scope: !3155)
!3159 = !DILocation(line: 951, column: 5, scope: !3155)
!3160 = !DILocation(line: 953, column: 8, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 953, column: 8)
!3162 = !DILocation(line: 953, column: 15, scope: !3161)
!3163 = !DILocation(line: 953, column: 12, scope: !3161)
!3164 = !DILocation(line: 953, column: 8, scope: !3135)
!3165 = !DILocation(line: 954, column: 5, scope: !3161)
!3166 = !DILocation(line: 956, column: 4, scope: !3135)
!3167 = !DILocation(line: 958, column: 8, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 958, column: 8)
!3169 = !DILocation(line: 958, column: 15, scope: !3168)
!3170 = !DILocation(line: 958, column: 12, scope: !3168)
!3171 = !DILocation(line: 958, column: 8, scope: !3135)
!3172 = !DILocation(line: 959, column: 5, scope: !3168)
!3173 = !DILocation(line: 960, column: 11, scope: !3135)
!3174 = !DILocation(line: 961, column: 4, scope: !3135)
!3175 = !DILocation(line: 963, column: 4, scope: !3135)
!3176 = !DILocation(line: 966, column: 6, scope: !3131)
!3177 = distinct !{!3177, !3126, !3178, !2268, !2269}
!3178 = !DILocation(line: 967, column: 2, scope: !3031)
!3179 = !DILocation(line: 969, column: 2, scope: !3031)
!3180 = !DILocation(line: 970, column: 1, scope: !3031)
!3181 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !141, file: !141, line: 813, type: !3182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!211, !196}
!3184 = distinct !DISubprogram(name: "acpi_get_ref_args", scope: !2, file: !2, line: 795, type: !3185, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!67, !1753, !222, !152, !153, !377}
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3199}
!3188 = !DILocalVariable(name: "args", arg: 1, scope: !3184, file: !2, line: 795, type: !1753)
!3189 = !DILocalVariable(name: "ref_fwnode", arg: 2, scope: !3184, file: !2, line: 796, type: !222)
!3190 = !DILocalVariable(name: "element", arg: 3, scope: !3184, file: !2, line: 797, type: !152)
!3191 = !DILocalVariable(name: "end", arg: 4, scope: !3184, file: !2, line: 798, type: !153)
!3192 = !DILocalVariable(name: "num_args", arg: 5, scope: !3184, file: !2, line: 798, type: !377)
!3193 = !DILocalVariable(name: "nargs", scope: !3184, file: !2, line: 800, type: !159)
!3194 = !DILocalVariable(name: "i", scope: !3184, file: !2, line: 800, type: !159)
!3195 = !DILocalVariable(name: "child_name", scope: !3196, file: !2, line: 808, type: !150)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !2, line: 807, column: 21)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 806, column: 2)
!3198 = distinct !DILexicalBlock(scope: !3184, file: !2, line: 806, column: 2)
!3199 = !DILocalVariable(name: "type", scope: !3200, file: !2, line: 821, type: !158)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !2, line: 820, column: 57)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !2, line: 820, column: 2)
!3202 = distinct !DILexicalBlock(scope: !3184, file: !2, line: 820, column: 2)
!3203 = !DILocation(line: 795, column: 60, scope: !3184)
!3204 = !DILocation(line: 796, column: 31, scope: !3184)
!3205 = !DILocation(line: 797, column: 35, scope: !3184)
!3206 = !DILocation(line: 798, column: 34, scope: !3184)
!3207 = !DILocation(line: 798, column: 46, scope: !3184)
!3208 = !DILocation(line: 800, column: 2, scope: !3184)
!3209 = !DILocation(line: 800, column: 6, scope: !3184)
!3210 = !DILocation(line: 800, column: 17, scope: !3184)
!3211 = !DILocation(line: 806, column: 2, scope: !3184)
!3212 = !DILocation(line: 806, column: 10, scope: !3197)
!3213 = !DILocation(line: 806, column: 9, scope: !3197)
!3214 = !DILocation(line: 806, column: 20, scope: !3197)
!3215 = !DILocation(line: 806, column: 18, scope: !3197)
!3216 = !DILocation(line: 806, column: 24, scope: !3197)
!3217 = !DILocation(line: 806, column: 29, scope: !3197)
!3218 = !DILocation(line: 806, column: 28, scope: !3197)
!3219 = !DILocation(line: 806, column: 39, scope: !3197)
!3220 = !DILocation(line: 806, column: 44, scope: !3197)
!3221 = !DILocation(line: 0, scope: !3197)
!3222 = !DILocation(line: 806, column: 2, scope: !3198)
!3223 = !DILocation(line: 808, column: 3, scope: !3196)
!3224 = !DILocation(line: 808, column: 15, scope: !3196)
!3225 = !DILocation(line: 808, column: 30, scope: !3196)
!3226 = !DILocation(line: 808, column: 29, scope: !3196)
!3227 = !DILocation(line: 808, column: 47, scope: !3196)
!3228 = !DILocation(line: 810, column: 49, scope: !3196)
!3229 = !DILocation(line: 810, column: 61, scope: !3196)
!3230 = !DILocation(line: 810, column: 16, scope: !3196)
!3231 = !DILocation(line: 810, column: 14, scope: !3196)
!3232 = !DILocation(line: 811, column: 8, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 811, column: 7)
!3234 = !DILocation(line: 811, column: 7, scope: !3196)
!3235 = !DILocation(line: 812, column: 4, scope: !3233)
!3236 = !DILocation(line: 813, column: 2, scope: !3197)
!3237 = !DILocation(line: 813, column: 2, scope: !3196)
!3238 = !DILocation(line: 807, column: 9, scope: !3197)
!3239 = !DILocation(line: 807, column: 17, scope: !3197)
!3240 = !DILocation(line: 806, column: 2, scope: !3197)
!3241 = distinct !{!3241, !3222, !3242, !2268, !2269}
!3242 = !DILocation(line: 813, column: 2, scope: !3198)
!3243 = !DILocation(line: 820, column: 9, scope: !3202)
!3244 = !DILocation(line: 820, column: 7, scope: !3202)
!3245 = !DILocation(line: 820, column: 16, scope: !3201)
!3246 = !DILocation(line: 820, column: 15, scope: !3201)
!3247 = !DILocation(line: 820, column: 27, scope: !3201)
!3248 = !DILocation(line: 820, column: 25, scope: !3201)
!3249 = !DILocation(line: 820, column: 31, scope: !3201)
!3250 = !DILocation(line: 820, column: 29, scope: !3201)
!3251 = !DILocation(line: 820, column: 35, scope: !3201)
!3252 = !DILocation(line: 820, column: 38, scope: !3201)
!3253 = !DILocation(line: 820, column: 42, scope: !3201)
!3254 = !DILocation(line: 820, column: 40, scope: !3201)
!3255 = !DILocation(line: 0, scope: !3201)
!3256 = !DILocation(line: 820, column: 2, scope: !3202)
!3257 = !DILocation(line: 821, column: 3, scope: !3200)
!3258 = !DILocation(line: 821, column: 20, scope: !3200)
!3259 = !DILocation(line: 821, column: 29, scope: !3200)
!3260 = !DILocation(line: 821, column: 28, scope: !3200)
!3261 = !DILocation(line: 821, column: 38, scope: !3200)
!3262 = !DILocation(line: 821, column: 27, scope: !3200)
!3263 = !DILocation(line: 821, column: 41, scope: !3200)
!3264 = !DILocation(line: 823, column: 7, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 823, column: 7)
!3266 = !DILocation(line: 823, column: 12, scope: !3265)
!3267 = !DILocation(line: 823, column: 7, scope: !3200)
!3268 = !DILocation(line: 824, column: 4, scope: !3265)
!3269 = !DILocation(line: 826, column: 7, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 826, column: 7)
!3271 = !DILocation(line: 826, column: 12, scope: !3270)
!3272 = !DILocation(line: 826, column: 7, scope: !3200)
!3273 = !DILocation(line: 827, column: 9, scope: !3270)
!3274 = !DILocation(line: 827, column: 4, scope: !3270)
!3275 = !DILocation(line: 829, column: 4, scope: !3270)
!3276 = !DILocation(line: 830, column: 2, scope: !3201)
!3277 = !DILocation(line: 830, column: 2, scope: !3200)
!3278 = !DILocation(line: 820, column: 53, scope: !3201)
!3279 = !DILocation(line: 820, column: 2, scope: !3201)
!3280 = distinct !{!3280, !3256, !3281, !2268, !2269}
!3281 = !DILocation(line: 830, column: 2, scope: !3202)
!3282 = !DILocation(line: 832, column: 6, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3184, file: !2, line: 832, column: 6)
!3284 = !DILocation(line: 832, column: 12, scope: !3283)
!3285 = !DILocation(line: 832, column: 6, scope: !3184)
!3286 = !DILocation(line: 833, column: 3, scope: !3283)
!3287 = !DILocation(line: 835, column: 6, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3184, file: !2, line: 835, column: 6)
!3289 = !DILocation(line: 835, column: 6, scope: !3184)
!3290 = !DILocation(line: 836, column: 18, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !2, line: 835, column: 12)
!3292 = !DILocation(line: 836, column: 3, scope: !3291)
!3293 = !DILocation(line: 836, column: 9, scope: !3291)
!3294 = !DILocation(line: 836, column: 16, scope: !3291)
!3295 = !DILocation(line: 837, column: 17, scope: !3291)
!3296 = !DILocation(line: 837, column: 3, scope: !3291)
!3297 = !DILocation(line: 837, column: 9, scope: !3291)
!3298 = !DILocation(line: 837, column: 15, scope: !3291)
!3299 = !DILocation(line: 838, column: 10, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 838, column: 3)
!3301 = !DILocation(line: 838, column: 8, scope: !3300)
!3302 = !DILocation(line: 838, column: 15, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !2, line: 838, column: 3)
!3304 = !DILocation(line: 838, column: 19, scope: !3303)
!3305 = !DILocation(line: 838, column: 17, scope: !3303)
!3306 = !DILocation(line: 838, column: 3, scope: !3300)
!3307 = !DILocation(line: 839, column: 22, scope: !3303)
!3308 = !DILocation(line: 839, column: 21, scope: !3303)
!3309 = !DILocation(line: 839, column: 31, scope: !3303)
!3310 = !DILocation(line: 839, column: 20, scope: !3303)
!3311 = !DILocation(line: 839, column: 42, scope: !3303)
!3312 = !DILocation(line: 839, column: 4, scope: !3303)
!3313 = !DILocation(line: 839, column: 10, scope: !3303)
!3314 = !DILocation(line: 839, column: 15, scope: !3303)
!3315 = !DILocation(line: 839, column: 18, scope: !3303)
!3316 = !DILocation(line: 838, column: 27, scope: !3303)
!3317 = !DILocation(line: 838, column: 3, scope: !3303)
!3318 = distinct !{!3318, !3306, !3319, !2268, !2269}
!3319 = !DILocation(line: 839, column: 42, scope: !3300)
!3320 = !DILocation(line: 840, column: 2, scope: !3291)
!3321 = !DILocation(line: 842, column: 16, scope: !3184)
!3322 = !DILocation(line: 842, column: 4, scope: !3184)
!3323 = !DILocation(line: 842, column: 13, scope: !3184)
!3324 = !DILocation(line: 844, column: 2, scope: !3184)
!3325 = !DILocation(line: 845, column: 1, scope: !3184)
!3326 = distinct !DISubprogram(name: "acpi_get_next_subnode", scope: !2, file: !2, line: 1196, type: !1743, scopeLine: 1198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3333, !3335, !3338, !3340, !3342, !3345, !3347, !3349, !3352, !3353, !3354, !3356, !3358, !3362, !3364, !3366}
!3328 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3326, file: !2, line: 1196, type: !242)
!3329 = !DILocalVariable(name: "child", arg: 2, scope: !3326, file: !2, line: 1197, type: !222)
!3330 = !DILocalVariable(name: "adev", scope: !3326, file: !2, line: 1199, type: !211)
!3331 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3332, file: !2, line: 1199, type: !242)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !2, line: 1199, column: 29)
!3333 = !DILocalVariable(name: "__mptr", scope: !3334, file: !2, line: 1199, type: !138)
!3334 = distinct !DILexicalBlock(scope: !3332, file: !2, line: 1199, column: 29)
!3335 = !DILocalVariable(name: "child_adev", scope: !3336, file: !2, line: 1202, type: !211)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !2, line: 1201, column: 54)
!3337 = distinct !DILexicalBlock(scope: !3326, file: !2, line: 1201, column: 6)
!3338 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3339, file: !2, line: 1202, type: !222)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !2, line: 1202, column: 36)
!3340 = !DILocalVariable(name: "__mptr", scope: !3341, file: !2, line: 1202, type: !138)
!3341 = distinct !DILexicalBlock(scope: !3339, file: !2, line: 1202, column: 36)
!3342 = !DILocalVariable(name: "data", scope: !3343, file: !2, line: 1212, type: !2998)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !2, line: 1211, column: 42)
!3344 = distinct !DILexicalBlock(scope: !3326, file: !2, line: 1211, column: 6)
!3345 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !3346, file: !2, line: 1212, type: !242)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 1212, column: 39)
!3347 = !DILocalVariable(name: "__mptr", scope: !3348, file: !2, line: 1212, type: !138)
!3348 = distinct !DILexicalBlock(scope: !3346, file: !2, line: 1212, column: 39)
!3349 = !DILocalVariable(name: "head", scope: !3343, file: !2, line: 1213, type: !3350)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!3352 = !DILocalVariable(name: "next", scope: !3343, file: !2, line: 1214, type: !147)
!3353 = !DILocalVariable(name: "dn", scope: !3343, file: !2, line: 1215, type: !1987)
!3354 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3355, file: !2, line: 1224, type: !242)
!3355 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 1224, column: 10)
!3356 = !DILocalVariable(name: "__mptr", scope: !3357, file: !2, line: 1224, type: !138)
!3357 = distinct !DILexicalBlock(scope: !3355, file: !2, line: 1224, column: 10)
!3358 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !3359, file: !2, line: 1236, type: !222)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !2, line: 1236, column: 9)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 1235, column: 14)
!3361 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 1235, column: 7)
!3362 = !DILocalVariable(name: "__mptr", scope: !3363, file: !2, line: 1236, type: !138)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !2, line: 1236, column: 9)
!3364 = !DILocalVariable(name: "__mptr", scope: !3365, file: !2, line: 1241, type: !138)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !2, line: 1241, column: 9)
!3366 = !DILocalVariable(name: "__mptr", scope: !3367, file: !2, line: 1243, type: !138)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !2, line: 1243, column: 9)
!3368 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 1242, column: 10)
!3369 = !DILocation(line: 1196, column: 73, scope: !3326)
!3370 = !DILocation(line: 1197, column: 32, scope: !3326)
!3371 = !DILocation(line: 1199, column: 2, scope: !3326)
!3372 = !DILocation(line: 1199, column: 22, scope: !3326)
!3373 = !DILocation(line: 1199, column: 29, scope: !3332)
!3374 = !DILocation(line: 1199, column: 29, scope: !3334)
!3375 = !DILocation(line: 1199, column: 29, scope: !3326)
!3376 = !DILocation(line: 1201, column: 8, scope: !3337)
!3377 = !DILocation(line: 1201, column: 14, scope: !3337)
!3378 = !DILocation(line: 1201, column: 37, scope: !3337)
!3379 = !DILocation(line: 1201, column: 17, scope: !3337)
!3380 = !DILocation(line: 1201, column: 45, scope: !3337)
!3381 = !DILocation(line: 1201, column: 48, scope: !3337)
!3382 = !DILocation(line: 1201, column: 6, scope: !3326)
!3383 = !DILocation(line: 1202, column: 3, scope: !3336)
!3384 = !DILocation(line: 1202, column: 23, scope: !3336)
!3385 = !DILocation(line: 1202, column: 36, scope: !3339)
!3386 = !DILocation(line: 1202, column: 36, scope: !3341)
!3387 = !DILocation(line: 1202, column: 36, scope: !3336)
!3388 = !DILocation(line: 1204, column: 27, scope: !3336)
!3389 = !DILocation(line: 1204, column: 3, scope: !3336)
!3390 = !DILocation(line: 1205, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3336, file: !2, line: 1205, column: 7)
!3392 = !DILocation(line: 1205, column: 7, scope: !3336)
!3393 = !DILocation(line: 1206, column: 30, scope: !3391)
!3394 = !DILocation(line: 1206, column: 11, scope: !3391)
!3395 = !DILocation(line: 1206, column: 4, scope: !3391)
!3396 = !DILocation(line: 1208, column: 9, scope: !3336)
!3397 = !DILocation(line: 1209, column: 2, scope: !3337)
!3398 = !DILocation(line: 1209, column: 2, scope: !3336)
!3399 = !DILocation(line: 1211, column: 7, scope: !3344)
!3400 = !DILocation(line: 1211, column: 13, scope: !3344)
!3401 = !DILocation(line: 1211, column: 34, scope: !3344)
!3402 = !DILocation(line: 1211, column: 16, scope: !3344)
!3403 = !DILocation(line: 1211, column: 6, scope: !3326)
!3404 = !DILocation(line: 1212, column: 3, scope: !3343)
!3405 = !DILocation(line: 1212, column: 32, scope: !3343)
!3406 = !DILocation(line: 1212, column: 39, scope: !3346)
!3407 = !DILocation(line: 1212, column: 39, scope: !3348)
!3408 = !DILocation(line: 1212, column: 39, scope: !3343)
!3409 = !DILocation(line: 1213, column: 3, scope: !3343)
!3410 = !DILocation(line: 1213, column: 27, scope: !3343)
!3411 = !DILocation(line: 1214, column: 3, scope: !3343)
!3412 = !DILocation(line: 1214, column: 21, scope: !3343)
!3413 = !DILocation(line: 1215, column: 3, scope: !3343)
!3414 = !DILocation(line: 1215, column: 26, scope: !3343)
!3415 = !DILocation(line: 1224, column: 10, scope: !3355)
!3416 = !DILocation(line: 1224, column: 10, scope: !3357)
!3417 = !DILocation(line: 1224, column: 10, scope: !3343)
!3418 = !DILocation(line: 1224, column: 8, scope: !3343)
!3419 = !DILocation(line: 1225, column: 7, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 1225, column: 7)
!3421 = !DILocation(line: 1225, column: 7, scope: !3343)
!3422 = !DILocation(line: 1226, column: 12, scope: !3420)
!3423 = !DILocation(line: 1226, column: 18, scope: !3420)
!3424 = !DILocation(line: 1226, column: 23, scope: !3420)
!3425 = !DILocation(line: 1226, column: 9, scope: !3420)
!3426 = !DILocation(line: 1226, column: 4, scope: !3420)
!3427 = !DILocation(line: 1227, column: 12, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3420, file: !2, line: 1227, column: 12)
!3429 = !DILocation(line: 1227, column: 12, scope: !3420)
!3430 = !DILocation(line: 1228, column: 12, scope: !3428)
!3431 = !DILocation(line: 1228, column: 18, scope: !3428)
!3432 = !DILocation(line: 1228, column: 23, scope: !3428)
!3433 = !DILocation(line: 1228, column: 9, scope: !3428)
!3434 = !DILocation(line: 1228, column: 4, scope: !3428)
!3435 = !DILocation(line: 1230, column: 4, scope: !3428)
!3436 = !DILocation(line: 1232, column: 18, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 1232, column: 7)
!3438 = !DILocation(line: 1232, column: 7, scope: !3437)
!3439 = !DILocation(line: 1232, column: 7, scope: !3343)
!3440 = !DILocation(line: 1233, column: 4, scope: !3437)
!3441 = !DILocation(line: 1235, column: 7, scope: !3361)
!3442 = !DILocation(line: 1235, column: 7, scope: !3343)
!3443 = !DILocation(line: 1236, column: 9, scope: !3359)
!3444 = !DILocation(line: 1236, column: 9, scope: !3363)
!3445 = !DILocation(line: 1236, column: 9, scope: !3360)
!3446 = !DILocation(line: 1236, column: 7, scope: !3360)
!3447 = !DILocation(line: 1237, column: 11, scope: !3360)
!3448 = !DILocation(line: 1237, column: 15, scope: !3360)
!3449 = !DILocation(line: 1237, column: 23, scope: !3360)
!3450 = !DILocation(line: 1237, column: 9, scope: !3360)
!3451 = !DILocation(line: 1238, column: 8, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3360, file: !2, line: 1238, column: 8)
!3453 = !DILocation(line: 1238, column: 16, scope: !3452)
!3454 = !DILocation(line: 1238, column: 13, scope: !3452)
!3455 = !DILocation(line: 1238, column: 8, scope: !3360)
!3456 = !DILocation(line: 1239, column: 5, scope: !3452)
!3457 = !DILocation(line: 1241, column: 9, scope: !3365)
!3458 = !DILocation(line: 1241, column: 9, scope: !3360)
!3459 = !DILocation(line: 1241, column: 7, scope: !3360)
!3460 = !DILocation(line: 1242, column: 3, scope: !3360)
!3461 = !DILocation(line: 1243, column: 9, scope: !3367)
!3462 = !DILocation(line: 1243, column: 9, scope: !3368)
!3463 = !DILocation(line: 1243, column: 7, scope: !3368)
!3464 = !DILocation(line: 1245, column: 11, scope: !3343)
!3465 = !DILocation(line: 1245, column: 15, scope: !3343)
!3466 = !DILocation(line: 1245, column: 3, scope: !3343)
!3467 = !DILocation(line: 1246, column: 2, scope: !3344)
!3468 = !DILocation(line: 1247, column: 2, scope: !3326)
!3469 = !DILocation(line: 1248, column: 1, scope: !3326)
!3470 = distinct !DISubprogram(name: "is_acpi_device_node", scope: !2, file: !2, line: 1612, type: !238, scopeLine: 1613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3471)
!3471 = !{!3472}
!3472 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3470, file: !2, line: 1612, type: !242)
!3473 = !DILocation(line: 1612, column: 54, scope: !3470)
!3474 = !DILocation(line: 1614, column: 25, scope: !3470)
!3475 = !DILocation(line: 1614, column: 10, scope: !3470)
!3476 = !DILocation(line: 1614, column: 33, scope: !3470)
!3477 = !DILocation(line: 1615, column: 3, scope: !3470)
!3478 = !DILocation(line: 1615, column: 11, scope: !3470)
!3479 = !DILocation(line: 1615, column: 15, scope: !3470)
!3480 = !DILocation(line: 0, scope: !3470)
!3481 = !DILocation(line: 1614, column: 2, scope: !3470)
!3482 = !DISubprogram(name: "acpi_dev_for_each_child", scope: !141, file: !141, line: 493, type: !3483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!67, !211, !3485, !138}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!67, !211, !138}
!3488 = distinct !DISubprogram(name: "stop_on_next", scope: !2, file: !2, line: 1175, type: !3486, scopeLine: 1176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3489)
!3489 = !{!3490, !3491, !3492}
!3490 = !DILocalVariable(name: "adev", arg: 1, scope: !3488, file: !2, line: 1175, type: !211)
!3491 = !DILocalVariable(name: "data", arg: 2, scope: !3488, file: !2, line: 1175, type: !138)
!3492 = !DILocalVariable(name: "ret_p", scope: !3488, file: !2, line: 1177, type: !3493)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!3494 = !DILocation(line: 1175, column: 45, scope: !3488)
!3495 = !DILocation(line: 1175, column: 57, scope: !3488)
!3496 = !DILocation(line: 1177, column: 2, scope: !3488)
!3497 = !DILocation(line: 1177, column: 23, scope: !3488)
!3498 = !DILocation(line: 1177, column: 31, scope: !3488)
!3499 = !DILocation(line: 1179, column: 8, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1179, column: 6)
!3501 = !DILocation(line: 1179, column: 7, scope: !3500)
!3502 = !DILocation(line: 1179, column: 6, scope: !3488)
!3503 = !DILocation(line: 1180, column: 12, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !2, line: 1179, column: 15)
!3505 = !DILocation(line: 1180, column: 4, scope: !3504)
!3506 = !DILocation(line: 1180, column: 10, scope: !3504)
!3507 = !DILocation(line: 1181, column: 3, scope: !3504)
!3508 = !DILocation(line: 1185, column: 7, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1185, column: 6)
!3510 = !DILocation(line: 1185, column: 6, scope: !3509)
!3511 = !DILocation(line: 1185, column: 16, scope: !3509)
!3512 = !DILocation(line: 1185, column: 13, scope: !3509)
!3513 = !DILocation(line: 1185, column: 6, scope: !3488)
!3514 = !DILocation(line: 1186, column: 4, scope: !3509)
!3515 = !DILocation(line: 1186, column: 10, scope: !3509)
!3516 = !DILocation(line: 1186, column: 3, scope: !3509)
!3517 = !DILocation(line: 1188, column: 2, scope: !3488)
!3518 = !DILocation(line: 1189, column: 1, scope: !3488)
!3519 = distinct !DISubprogram(name: "is_acpi_data_node", scope: !2, file: !2, line: 1619, type: !238, scopeLine: 1620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3520)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3519, file: !2, line: 1619, type: !242)
!3522 = !DILocation(line: 1619, column: 52, scope: !3519)
!3523 = !DILocation(line: 1621, column: 25, scope: !3519)
!3524 = !DILocation(line: 1621, column: 10, scope: !3519)
!3525 = !DILocation(line: 1621, column: 33, scope: !3519)
!3526 = !DILocation(line: 1621, column: 36, scope: !3519)
!3527 = !DILocation(line: 1621, column: 44, scope: !3519)
!3528 = !DILocation(line: 1621, column: 48, scope: !3519)
!3529 = !DILocation(line: 0, scope: !3519)
!3530 = !DILocation(line: 1621, column: 2, scope: !3519)
!3531 = distinct !DISubprogram(name: "list_empty", scope: !2177, file: !2177, line: 371, type: !3532, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!67, !3350}
!3534 = !{!3535}
!3535 = !DILocalVariable(name: "head", arg: 1, scope: !3531, file: !2177, line: 371, type: !3350)
!3536 = !DILocation(line: 371, column: 54, scope: !3531)
!3537 = !DILocation(line: 373, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3531, file: !2177, line: 373, column: 9)
!3539 = !DILocation(line: 373, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3538, file: !2177, line: 373, column: 9)
!3541 = !DILocation(line: 373, column: 34, scope: !3531)
!3542 = !DILocation(line: 373, column: 31, scope: !3531)
!3543 = !DILocation(line: 373, column: 2, scope: !3531)
!3544 = distinct !DISubprogram(name: "acpi_fwnode_device_is_available", scope: !2, file: !2, line: 1421, type: !238, scopeLine: 1422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3545)
!3545 = !{!3546, !3547, !3549}
!3546 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3544, file: !2, line: 1421, type: !242)
!3547 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3548, file: !2, line: 1426, type: !242)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !2, line: 1426, column: 32)
!3549 = !DILocalVariable(name: "__mptr", scope: !3550, file: !2, line: 1426, type: !138)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !2, line: 1426, column: 32)
!3551 = !DILocation(line: 1421, column: 73, scope: !3544)
!3552 = !DILocation(line: 1423, column: 27, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3544, file: !2, line: 1423, column: 6)
!3554 = !DILocation(line: 1423, column: 7, scope: !3553)
!3555 = !DILocation(line: 1423, column: 6, scope: !3544)
!3556 = !DILocation(line: 1424, column: 3, scope: !3553)
!3557 = !DILocation(line: 1426, column: 32, scope: !3548)
!3558 = !DILocation(line: 1426, column: 32, scope: !3550)
!3559 = !DILocation(line: 1426, column: 32, scope: !3544)
!3560 = !DILocation(line: 1426, column: 9, scope: !3544)
!3561 = !DILocation(line: 1426, column: 2, scope: !3544)
!3562 = !DILocation(line: 1427, column: 1, scope: !3544)
!3563 = distinct !DISubprogram(name: "acpi_fwnode_device_get_match_data", scope: !2, file: !2, line: 1430, type: !246, scopeLine: 1432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3564)
!3564 = !{!3565, !3566}
!3565 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3563, file: !2, line: 1430, type: !242)
!3566 = !DILocalVariable(name: "dev", arg: 2, scope: !3563, file: !2, line: 1431, type: !250)
!3567 = !DILocation(line: 1430, column: 63, scope: !3563)
!3568 = !DILocation(line: 1431, column: 28, scope: !3563)
!3569 = !DILocation(line: 1433, column: 36, scope: !3563)
!3570 = !DILocation(line: 1433, column: 9, scope: !3563)
!3571 = !DILocation(line: 1433, column: 2, scope: !3563)
!3572 = distinct !DISubprogram(name: "acpi_fwnode_device_dma_supported", scope: !2, file: !2, line: 1436, type: !238, scopeLine: 1437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3573)
!3573 = !{!3574, !3575, !3577}
!3574 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3572, file: !2, line: 1436, type: !242)
!3575 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3576, file: !2, line: 1438, type: !242)
!3576 = distinct !DILexicalBlock(scope: !3572, file: !2, line: 1438, column: 28)
!3577 = !DILocalVariable(name: "__mptr", scope: !3578, file: !2, line: 1438, type: !138)
!3578 = distinct !DILexicalBlock(scope: !3576, file: !2, line: 1438, column: 28)
!3579 = !DILocation(line: 1436, column: 74, scope: !3572)
!3580 = !DILocation(line: 1438, column: 28, scope: !3576)
!3581 = !DILocation(line: 1438, column: 28, scope: !3578)
!3582 = !DILocation(line: 1438, column: 28, scope: !3572)
!3583 = !DILocation(line: 1438, column: 9, scope: !3572)
!3584 = !DILocation(line: 1438, column: 2, scope: !3572)
!3585 = distinct !DISubprogram(name: "acpi_fwnode_device_get_dma_attr", scope: !2, file: !2, line: 1442, type: !1718, scopeLine: 1443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3586)
!3586 = !{!3587, !3588, !3590}
!3587 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3585, file: !2, line: 1442, type: !242)
!3588 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3589, file: !2, line: 1444, type: !242)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !2, line: 1444, column: 27)
!3590 = !DILocalVariable(name: "__mptr", scope: !3591, file: !2, line: 1444, type: !138)
!3591 = distinct !DILexicalBlock(scope: !3589, file: !2, line: 1444, column: 27)
!3592 = !DILocation(line: 1442, column: 61, scope: !3585)
!3593 = !DILocation(line: 1444, column: 27, scope: !3589)
!3594 = !DILocation(line: 1444, column: 27, scope: !3591)
!3595 = !DILocation(line: 1444, column: 27, scope: !3585)
!3596 = !DILocation(line: 1444, column: 9, scope: !3585)
!3597 = !DILocation(line: 1444, column: 2, scope: !3585)
!3598 = distinct !DISubprogram(name: "acpi_fwnode_property_present", scope: !2, file: !2, line: 1447, type: !1722, scopeLine: 1449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3599)
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3598, file: !2, line: 1447, type: !242)
!3601 = !DILocalVariable(name: "propname", arg: 2, scope: !3598, file: !2, line: 1448, type: !150)
!3602 = !DILocation(line: 1447, column: 70, scope: !3598)
!3603 = !DILocation(line: 1448, column: 19, scope: !3598)
!3604 = !DILocation(line: 1450, column: 29, scope: !3598)
!3605 = !DILocation(line: 1450, column: 37, scope: !3598)
!3606 = !DILocation(line: 1450, column: 10, scope: !3598)
!3607 = !DILocation(line: 1450, column: 9, scope: !3598)
!3608 = !DILocation(line: 1450, column: 2, scope: !3598)
!3609 = distinct !DISubprogram(name: "acpi_fwnode_property_read_int_array", scope: !2, file: !2, line: 1454, type: !1726, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616}
!3611 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3609, file: !2, line: 1454, type: !242)
!3612 = !DILocalVariable(name: "propname", arg: 2, scope: !3609, file: !2, line: 1455, type: !150)
!3613 = !DILocalVariable(name: "elem_size", arg: 3, scope: !3609, file: !2, line: 1456, type: !28)
!3614 = !DILocalVariable(name: "val", arg: 4, scope: !3609, file: !2, line: 1456, type: !138)
!3615 = !DILocalVariable(name: "nval", arg: 5, scope: !3609, file: !2, line: 1457, type: !377)
!3616 = !DILocalVariable(name: "type", scope: !3609, file: !2, line: 1459, type: !120)
!3617 = !DILocation(line: 1454, column: 65, scope: !3609)
!3618 = !DILocation(line: 1455, column: 21, scope: !3609)
!3619 = !DILocation(line: 1456, column: 22, scope: !3609)
!3620 = !DILocation(line: 1456, column: 39, scope: !3609)
!3621 = !DILocation(line: 1457, column: 16, scope: !3609)
!3622 = !DILocation(line: 1459, column: 2, scope: !3609)
!3623 = !DILocation(line: 1459, column: 21, scope: !3609)
!3624 = !DILocation(line: 1461, column: 10, scope: !3609)
!3625 = !DILocation(line: 1461, column: 2, scope: !3609)
!3626 = !DILocation(line: 1463, column: 8, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3609, file: !2, line: 1461, column: 21)
!3628 = !DILocation(line: 1464, column: 3, scope: !3627)
!3629 = !DILocation(line: 1466, column: 8, scope: !3627)
!3630 = !DILocation(line: 1467, column: 3, scope: !3627)
!3631 = !DILocation(line: 1469, column: 8, scope: !3627)
!3632 = !DILocation(line: 1470, column: 3, scope: !3627)
!3633 = !DILocation(line: 1472, column: 8, scope: !3627)
!3634 = !DILocation(line: 1473, column: 3, scope: !3627)
!3635 = !DILocation(line: 1475, column: 3, scope: !3627)
!3636 = !DILocation(line: 1478, column: 29, scope: !3609)
!3637 = !DILocation(line: 1478, column: 37, scope: !3609)
!3638 = !DILocation(line: 1478, column: 47, scope: !3609)
!3639 = !DILocation(line: 1478, column: 53, scope: !3609)
!3640 = !DILocation(line: 1478, column: 58, scope: !3609)
!3641 = !DILocation(line: 1478, column: 9, scope: !3609)
!3642 = !DILocation(line: 1478, column: 2, scope: !3609)
!3643 = !DILocation(line: 1479, column: 1, scope: !3609)
!3644 = distinct !DISubprogram(name: "acpi_fwnode_property_read_string_array", scope: !2, file: !2, line: 1482, type: !1730, scopeLine: 1485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3645)
!3645 = !{!3646, !3647, !3648, !3649}
!3646 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3644, file: !2, line: 1482, type: !242)
!3647 = !DILocalVariable(name: "propname", arg: 2, scope: !3644, file: !2, line: 1483, type: !150)
!3648 = !DILocalVariable(name: "val", arg: 3, scope: !3644, file: !2, line: 1483, type: !1321)
!3649 = !DILocalVariable(name: "nval", arg: 4, scope: !3644, file: !2, line: 1484, type: !377)
!3650 = !DILocation(line: 1482, column: 68, scope: !3644)
!3651 = !DILocation(line: 1483, column: 24, scope: !3644)
!3652 = !DILocation(line: 1483, column: 47, scope: !3644)
!3653 = !DILocation(line: 1484, column: 19, scope: !3644)
!3654 = !DILocation(line: 1486, column: 29, scope: !3644)
!3655 = !DILocation(line: 1486, column: 37, scope: !3644)
!3656 = !DILocation(line: 1487, column: 8, scope: !3644)
!3657 = !DILocation(line: 1487, column: 13, scope: !3644)
!3658 = !DILocation(line: 1486, column: 9, scope: !3644)
!3659 = !DILocation(line: 1486, column: 2, scope: !3644)
!3660 = distinct !DISubprogram(name: "acpi_fwnode_get_name", scope: !2, file: !2, line: 1500, type: !1734, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3668, !3670, !3672, !3674, !3676, !3679}
!3662 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3660, file: !2, line: 1500, type: !242)
!3663 = !DILocalVariable(name: "adev", scope: !3660, file: !2, line: 1502, type: !2831)
!3664 = !DILocalVariable(name: "parent", scope: !3660, file: !2, line: 1503, type: !222)
!3665 = !DILocalVariable(name: "dn", scope: !3666, file: !2, line: 1513, type: !2998)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !2, line: 1512, column: 33)
!3667 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1512, column: 6)
!3668 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !3669, file: !2, line: 1513, type: !242)
!3669 = distinct !DILexicalBlock(scope: !3666, file: !2, line: 1513, column: 37)
!3670 = !DILocalVariable(name: "__mptr", scope: !3671, file: !2, line: 1513, type: !138)
!3671 = distinct !DILexicalBlock(scope: !3669, file: !2, line: 1513, column: 37)
!3672 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3673, file: !2, line: 1518, type: !242)
!3673 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1518, column: 9)
!3674 = !DILocalVariable(name: "__mptr", scope: !3675, file: !2, line: 1518, type: !138)
!3675 = distinct !DILexicalBlock(scope: !3673, file: !2, line: 1518, column: 9)
!3676 = !DILocalVariable(name: "__ret_warn_on", scope: !3677, file: !2, line: 1519, type: !67)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !2, line: 1519, column: 6)
!3678 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1519, column: 6)
!3679 = !DILocalVariable(name: "__flags", scope: !3680, file: !2, line: 1519, type: !67)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !2, line: 1519, column: 6)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !2, line: 1519, column: 6)
!3682 = !DILocation(line: 1500, column: 69, scope: !3660)
!3683 = !DILocation(line: 1502, column: 2, scope: !3660)
!3684 = !DILocation(line: 1502, column: 28, scope: !3660)
!3685 = !DILocation(line: 1503, column: 2, scope: !3660)
!3686 = !DILocation(line: 1503, column: 24, scope: !3660)
!3687 = !DILocation(line: 1506, column: 29, scope: !3660)
!3688 = !DILocation(line: 1506, column: 11, scope: !3660)
!3689 = !DILocation(line: 1506, column: 9, scope: !3660)
!3690 = !DILocation(line: 1507, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1507, column: 6)
!3692 = !DILocation(line: 1507, column: 6, scope: !3660)
!3693 = !DILocation(line: 1508, column: 3, scope: !3691)
!3694 = !DILocation(line: 1510, column: 20, scope: !3660)
!3695 = !DILocation(line: 1510, column: 2, scope: !3660)
!3696 = !DILocation(line: 1512, column: 24, scope: !3667)
!3697 = !DILocation(line: 1512, column: 6, scope: !3667)
!3698 = !DILocation(line: 1512, column: 6, scope: !3660)
!3699 = !DILocation(line: 1513, column: 3, scope: !3666)
!3700 = !DILocation(line: 1513, column: 32, scope: !3666)
!3701 = !DILocation(line: 1513, column: 37, scope: !3669)
!3702 = !DILocation(line: 1513, column: 37, scope: !3671)
!3703 = !DILocation(line: 1513, column: 37, scope: !3666)
!3704 = !DILocation(line: 1515, column: 10, scope: !3666)
!3705 = !DILocation(line: 1515, column: 14, scope: !3666)
!3706 = !DILocation(line: 1515, column: 3, scope: !3666)
!3707 = !DILocation(line: 1516, column: 2, scope: !3667)
!3708 = !DILocation(line: 1518, column: 9, scope: !3673)
!3709 = !DILocation(line: 1518, column: 9, scope: !3675)
!3710 = !DILocation(line: 1518, column: 9, scope: !3660)
!3711 = !DILocation(line: 1518, column: 7, scope: !3660)
!3712 = !DILocation(line: 1519, column: 6, scope: !3677)
!3713 = !DILocation(line: 1519, column: 6, scope: !3681)
!3714 = !DILocation(line: 1519, column: 6, scope: !3680)
!3715 = !DILocation(line: 1519, column: 6, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3680, file: !2, line: 1519, column: 6)
!3717 = !DILocation(line: 1519, column: 6, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3680, file: !2, line: 1519, column: 6)
!3719 = !{i64 2153600127, i64 2153600156, i64 2153600202, i64 2153600260, i64 2153600314, i64 2153600368, i64 2153600423, i64 2153600454, i64 2153600762, i64 2153600768, i64 2153600815, i64 2153600838, i64 2153600864}
!3720 = !DILocation(line: 1519, column: 6, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3680, file: !2, line: 1519, column: 6)
!3722 = !DILocation(line: 1519, column: 6, scope: !3678)
!3723 = !DILocation(line: 1519, column: 6, scope: !3660)
!3724 = !DILocation(line: 1520, column: 3, scope: !3678)
!3725 = !DILocation(line: 1522, column: 9, scope: !3660)
!3726 = !DILocation(line: 1522, column: 2, scope: !3660)
!3727 = !DILocation(line: 1523, column: 1, scope: !3660)
!3728 = distinct !DISubprogram(name: "acpi_fwnode_get_name_prefix", scope: !2, file: !2, line: 1526, type: !1734, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3729)
!3729 = !{!3730, !3731}
!3730 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3728, file: !2, line: 1526, type: !242)
!3731 = !DILocalVariable(name: "parent", scope: !3728, file: !2, line: 1528, type: !222)
!3732 = !DILocation(line: 1526, column: 57, scope: !3728)
!3733 = !DILocation(line: 1528, column: 2, scope: !3728)
!3734 = !DILocation(line: 1528, column: 24, scope: !3728)
!3735 = !DILocation(line: 1531, column: 29, scope: !3728)
!3736 = !DILocation(line: 1531, column: 11, scope: !3728)
!3737 = !DILocation(line: 1531, column: 9, scope: !3728)
!3738 = !DILocation(line: 1532, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3728, file: !2, line: 1532, column: 6)
!3740 = !DILocation(line: 1532, column: 6, scope: !3728)
!3741 = !DILocation(line: 1533, column: 3, scope: !3739)
!3742 = !DILocation(line: 1536, column: 34, scope: !3728)
!3743 = !DILocation(line: 1536, column: 11, scope: !3728)
!3744 = !DILocation(line: 1536, column: 9, scope: !3728)
!3745 = !DILocation(line: 1537, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3728, file: !2, line: 1537, column: 6)
!3747 = !DILocation(line: 1537, column: 6, scope: !3728)
!3748 = !DILocation(line: 1538, column: 3, scope: !3746)
!3749 = !DILocation(line: 1540, column: 20, scope: !3728)
!3750 = !DILocation(line: 1540, column: 2, scope: !3728)
!3751 = !DILocation(line: 1543, column: 2, scope: !3728)
!3752 = !DILocation(line: 1544, column: 1, scope: !3728)
!3753 = distinct !DISubprogram(name: "acpi_node_get_parent", scope: !2, file: !2, line: 1258, type: !1739, scopeLine: 1259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3754)
!3754 = !{!3755, !3756, !3760, !3762, !3765, !3767}
!3755 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3753, file: !2, line: 1258, type: !242)
!3756 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !3757, file: !2, line: 1262, type: !242)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !2, line: 1262, column: 10)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 1260, column: 33)
!3759 = distinct !DILexicalBlock(scope: !3753, file: !2, line: 1260, column: 6)
!3760 = !DILocalVariable(name: "__mptr", scope: !3761, file: !2, line: 1262, type: !138)
!3761 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 1262, column: 10)
!3762 = !DILocalVariable(name: "parent", scope: !3763, file: !2, line: 1265, type: !211)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 1264, column: 35)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !2, line: 1264, column: 6)
!3765 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3766, file: !2, line: 1267, type: !242)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !2, line: 1267, column: 28)
!3767 = !DILocalVariable(name: "__mptr", scope: !3768, file: !2, line: 1267, type: !138)
!3768 = distinct !DILexicalBlock(scope: !3766, file: !2, line: 1267, column: 28)
!3769 = !DILocation(line: 1258, column: 50, scope: !3753)
!3770 = !DILocation(line: 1260, column: 24, scope: !3759)
!3771 = !DILocation(line: 1260, column: 6, scope: !3759)
!3772 = !DILocation(line: 1260, column: 6, scope: !3753)
!3773 = !DILocation(line: 1262, column: 10, scope: !3757)
!3774 = !DILocation(line: 1262, column: 10, scope: !3761)
!3775 = !DILocation(line: 1262, column: 10, scope: !3758)
!3776 = !DILocation(line: 1262, column: 37, scope: !3758)
!3777 = !DILocation(line: 1262, column: 3, scope: !3758)
!3778 = !DILocation(line: 1264, column: 26, scope: !3764)
!3779 = !DILocation(line: 1264, column: 6, scope: !3764)
!3780 = !DILocation(line: 1264, column: 6, scope: !3753)
!3781 = !DILocation(line: 1265, column: 3, scope: !3763)
!3782 = !DILocation(line: 1265, column: 23, scope: !3763)
!3783 = !DILocation(line: 1267, column: 28, scope: !3766)
!3784 = !DILocation(line: 1267, column: 28, scope: !3768)
!3785 = !DILocation(line: 1267, column: 28, scope: !3763)
!3786 = !DILocation(line: 1267, column: 12, scope: !3763)
!3787 = !DILocation(line: 1267, column: 10, scope: !3763)
!3788 = !DILocation(line: 1268, column: 7, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3763, file: !2, line: 1268, column: 7)
!3790 = !DILocation(line: 1268, column: 7, scope: !3763)
!3791 = !DILocation(line: 1269, column: 30, scope: !3789)
!3792 = !DILocation(line: 1269, column: 11, scope: !3789)
!3793 = !DILocation(line: 1269, column: 4, scope: !3789)
!3794 = !DILocation(line: 1270, column: 2, scope: !3764)
!3795 = !DILocation(line: 1270, column: 2, scope: !3763)
!3796 = !DILocation(line: 1272, column: 2, scope: !3753)
!3797 = !DILocation(line: 1273, column: 1, scope: !3753)
!3798 = distinct !DISubprogram(name: "acpi_fwnode_get_named_child_node", scope: !2, file: !2, line: 775, type: !1747, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3809}
!3800 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3798, file: !2, line: 775, type: !242)
!3801 = !DILocalVariable(name: "childname", arg: 2, scope: !3798, file: !2, line: 776, type: !150)
!3802 = !DILocalVariable(name: "child", scope: !3798, file: !2, line: 778, type: !222)
!3803 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3804, file: !2, line: 787, type: !222)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !2, line: 787, column: 16)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !2, line: 787, column: 7)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !2, line: 780, column: 44)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !2, line: 780, column: 2)
!3808 = distinct !DILexicalBlock(scope: !3798, file: !2, line: 780, column: 2)
!3809 = !DILocalVariable(name: "__mptr", scope: !3810, file: !2, line: 787, type: !138)
!3810 = distinct !DILexicalBlock(scope: !3804, file: !2, line: 787, column: 16)
!3811 = !DILocation(line: 775, column: 62, scope: !3798)
!3812 = !DILocation(line: 776, column: 18, scope: !3798)
!3813 = !DILocation(line: 778, column: 2, scope: !3798)
!3814 = !DILocation(line: 778, column: 24, scope: !3798)
!3815 = !DILocation(line: 780, column: 2, scope: !3808)
!3816 = !DILocation(line: 780, column: 2, scope: !3807)
!3817 = !DILocation(line: 781, column: 25, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3806, file: !2, line: 781, column: 7)
!3819 = !DILocation(line: 781, column: 7, scope: !3818)
!3820 = !DILocation(line: 781, column: 7, scope: !3806)
!3821 = !DILocation(line: 782, column: 29, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !2, line: 782, column: 8)
!3823 = distinct !DILexicalBlock(scope: !3818, file: !2, line: 781, column: 33)
!3824 = !DILocation(line: 782, column: 36, scope: !3822)
!3825 = !DILocation(line: 782, column: 8, scope: !3822)
!3826 = !DILocation(line: 782, column: 8, scope: !3823)
!3827 = !DILocation(line: 783, column: 12, scope: !3822)
!3828 = !DILocation(line: 783, column: 5, scope: !3822)
!3829 = !DILocation(line: 784, column: 4, scope: !3823)
!3830 = !DILocation(line: 787, column: 16, scope: !3804)
!3831 = !DILocation(line: 787, column: 16, scope: !3810)
!3832 = !DILocation(line: 787, column: 16, scope: !3805)
!3833 = !DILocation(line: 788, column: 9, scope: !3805)
!3834 = !DILocation(line: 787, column: 8, scope: !3805)
!3835 = !DILocation(line: 787, column: 7, scope: !3806)
!3836 = !DILocation(line: 789, column: 11, scope: !3805)
!3837 = !DILocation(line: 789, column: 4, scope: !3805)
!3838 = !DILocation(line: 790, column: 2, scope: !3806)
!3839 = distinct !{!3839, !3815, !3840, !2268, !2269}
!3840 = !DILocation(line: 790, column: 2, scope: !3808)
!3841 = !DILocation(line: 792, column: 2, scope: !3798)
!3842 = !DILocation(line: 793, column: 1, scope: !3798)
!3843 = distinct !DISubprogram(name: "acpi_fwnode_get_reference_args", scope: !2, file: !2, line: 1491, type: !1751, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850}
!3845 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3843, file: !2, line: 1491, type: !242)
!3846 = !DILocalVariable(name: "prop", arg: 2, scope: !3843, file: !2, line: 1492, type: !150)
!3847 = !DILocalVariable(name: "nargs_prop", arg: 3, scope: !3843, file: !2, line: 1492, type: !150)
!3848 = !DILocalVariable(name: "args_count", arg: 4, scope: !3843, file: !2, line: 1493, type: !28)
!3849 = !DILocalVariable(name: "index", arg: 5, scope: !3843, file: !2, line: 1493, type: !28)
!3850 = !DILocalVariable(name: "args", arg: 6, scope: !3843, file: !2, line: 1494, type: !1753)
!3851 = !DILocation(line: 1491, column: 60, scope: !3843)
!3852 = !DILocation(line: 1492, column: 23, scope: !3843)
!3853 = !DILocation(line: 1492, column: 41, scope: !3843)
!3854 = !DILocation(line: 1493, column: 24, scope: !3843)
!3855 = !DILocation(line: 1493, column: 49, scope: !3843)
!3856 = !DILocation(line: 1494, column: 41, scope: !3843)
!3857 = !DILocation(line: 1496, column: 44, scope: !3843)
!3858 = !DILocation(line: 1496, column: 52, scope: !3843)
!3859 = !DILocation(line: 1496, column: 58, scope: !3843)
!3860 = !DILocation(line: 1497, column: 9, scope: !3843)
!3861 = !DILocation(line: 1497, column: 21, scope: !3843)
!3862 = !DILocation(line: 1496, column: 9, scope: !3843)
!3863 = !DILocation(line: 1496, column: 2, scope: !3843)
!3864 = distinct !DISubprogram(name: "acpi_graph_get_next_endpoint", scope: !2, file: !2, line: 1304, type: !1743, scopeLine: 1306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3865)
!3865 = !{!3866, !3867, !3868, !3869}
!3866 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3864, file: !2, line: 1305, type: !242)
!3867 = !DILocalVariable(name: "prev", arg: 2, scope: !3864, file: !2, line: 1305, type: !222)
!3868 = !DILocalVariable(name: "port", scope: !3864, file: !2, line: 1307, type: !222)
!3869 = !DILocalVariable(name: "endpoint", scope: !3864, file: !2, line: 1308, type: !222)
!3870 = !DILocation(line: 1305, column: 30, scope: !3864)
!3871 = !DILocation(line: 1305, column: 60, scope: !3864)
!3872 = !DILocation(line: 1307, column: 2, scope: !3864)
!3873 = !DILocation(line: 1307, column: 24, scope: !3864)
!3874 = !DILocation(line: 1308, column: 2, scope: !3864)
!3875 = !DILocation(line: 1308, column: 24, scope: !3864)
!3876 = !DILocation(line: 1310, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 1310, column: 6)
!3878 = !DILocation(line: 1310, column: 6, scope: !3864)
!3879 = !DILocation(line: 1311, column: 3, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 1310, column: 13)
!3881 = !DILocation(line: 1312, column: 38, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3880, file: !2, line: 1311, column: 6)
!3883 = !DILocation(line: 1312, column: 46, scope: !3882)
!3884 = !DILocation(line: 1312, column: 11, scope: !3882)
!3885 = !DILocation(line: 1312, column: 9, scope: !3882)
!3886 = !DILocation(line: 1320, column: 27, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3882, file: !2, line: 1320, column: 8)
!3888 = !DILocation(line: 1320, column: 8, scope: !3887)
!3889 = !DILocation(line: 1320, column: 8, scope: !3882)
!3890 = !DILocation(line: 1321, column: 5, scope: !3887)
!3891 = !DILocation(line: 1322, column: 3, scope: !3882)
!3892 = !DILocation(line: 1322, column: 12, scope: !3880)
!3893 = distinct !{!3893, !3879, !3894, !2268, !2269}
!3894 = !DILocation(line: 1322, column: 16, scope: !3880)
!3895 = !DILocation(line: 1323, column: 2, scope: !3880)
!3896 = !DILocation(line: 1324, column: 28, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 1323, column: 9)
!3898 = !DILocation(line: 1324, column: 10, scope: !3897)
!3899 = !DILocation(line: 1324, column: 8, scope: !3897)
!3900 = !DILocation(line: 1327, column: 7, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 1327, column: 6)
!3902 = !DILocation(line: 1327, column: 6, scope: !3864)
!3903 = !DILocation(line: 1328, column: 3, scope: !3901)
!3904 = !DILocation(line: 1330, column: 40, scope: !3864)
!3905 = !DILocation(line: 1330, column: 46, scope: !3864)
!3906 = !DILocation(line: 1330, column: 13, scope: !3864)
!3907 = !DILocation(line: 1330, column: 11, scope: !3864)
!3908 = !DILocation(line: 1331, column: 2, scope: !3864)
!3909 = !DILocation(line: 1331, column: 10, scope: !3864)
!3910 = !DILocation(line: 1331, column: 9, scope: !3864)
!3911 = !DILocation(line: 1332, column: 37, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 1331, column: 20)
!3913 = !DILocation(line: 1332, column: 45, scope: !3912)
!3914 = !DILocation(line: 1332, column: 10, scope: !3912)
!3915 = !DILocation(line: 1332, column: 8, scope: !3912)
!3916 = !DILocation(line: 1333, column: 8, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 1333, column: 7)
!3918 = !DILocation(line: 1333, column: 7, scope: !3912)
!3919 = !DILocation(line: 1334, column: 4, scope: !3917)
!3920 = !DILocation(line: 1335, column: 26, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 1335, column: 7)
!3922 = !DILocation(line: 1335, column: 7, scope: !3921)
!3923 = !DILocation(line: 1335, column: 7, scope: !3912)
!3924 = !DILocation(line: 1336, column: 42, scope: !3921)
!3925 = !DILocation(line: 1336, column: 15, scope: !3921)
!3926 = !DILocation(line: 1336, column: 13, scope: !3921)
!3927 = !DILocation(line: 1336, column: 4, scope: !3921)
!3928 = distinct !{!3928, !3908, !3929, !2268, !2269}
!3929 = !DILocation(line: 1337, column: 2, scope: !3864)
!3930 = !DILocation(line: 1346, column: 26, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 1346, column: 6)
!3932 = !DILocation(line: 1346, column: 7, scope: !3931)
!3933 = !DILocation(line: 1346, column: 6, scope: !3864)
!3934 = !DILocation(line: 1347, column: 3, scope: !3931)
!3935 = !DILocation(line: 1349, column: 9, scope: !3864)
!3936 = !DILocation(line: 1349, column: 2, scope: !3864)
!3937 = !DILocation(line: 1350, column: 1, scope: !3864)
!3938 = distinct !DISubprogram(name: "acpi_graph_get_remote_endpoint", scope: !2, file: !2, line: 1388, type: !1739, scopeLine: 1389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945}
!3940 = !DILocalVariable(name: "__fwnode", arg: 1, scope: !3938, file: !2, line: 1388, type: !242)
!3941 = !DILocalVariable(name: "fwnode", scope: !3938, file: !2, line: 1390, type: !222)
!3942 = !DILocalVariable(name: "port_nr", scope: !3938, file: !2, line: 1391, type: !28)
!3943 = !DILocalVariable(name: "endpoint_nr", scope: !3938, file: !2, line: 1391, type: !28)
!3944 = !DILocalVariable(name: "args", scope: !3938, file: !2, line: 1392, type: !1754)
!3945 = !DILocalVariable(name: "ret", scope: !3938, file: !2, line: 1393, type: !67)
!3946 = !DILocation(line: 1388, column: 60, scope: !3938)
!3947 = !DILocation(line: 1390, column: 2, scope: !3938)
!3948 = !DILocation(line: 1390, column: 24, scope: !3938)
!3949 = !DILocation(line: 1391, column: 2, scope: !3938)
!3950 = !DILocation(line: 1391, column: 15, scope: !3938)
!3951 = !DILocation(line: 1391, column: 24, scope: !3938)
!3952 = !DILocation(line: 1392, column: 2, scope: !3938)
!3953 = !DILocation(line: 1392, column: 31, scope: !3938)
!3954 = !DILocation(line: 1393, column: 2, scope: !3938)
!3955 = !DILocation(line: 1393, column: 6, scope: !3938)
!3956 = !DILocation(line: 1395, column: 2, scope: !3938)
!3957 = !DILocation(line: 1396, column: 41, scope: !3938)
!3958 = !DILocation(line: 1396, column: 8, scope: !3938)
!3959 = !DILocation(line: 1396, column: 6, scope: !3938)
!3960 = !DILocation(line: 1398, column: 6, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3938, file: !2, line: 1398, column: 6)
!3962 = !DILocation(line: 1398, column: 6, scope: !3938)
!3963 = !DILocation(line: 1399, column: 3, scope: !3961)
!3964 = !DILocation(line: 1402, column: 32, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3938, file: !2, line: 1402, column: 6)
!3966 = !DILocation(line: 1402, column: 7, scope: !3965)
!3967 = !DILocation(line: 1402, column: 6, scope: !3938)
!3968 = !DILocation(line: 1403, column: 15, scope: !3965)
!3969 = !DILocation(line: 1403, column: 10, scope: !3965)
!3970 = !DILocation(line: 1403, column: 35, scope: !3965)
!3971 = !DILocation(line: 1403, column: 3, scope: !3965)
!3972 = !DILocation(line: 1409, column: 11, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3938, file: !2, line: 1409, column: 6)
!3974 = !DILocation(line: 1409, column: 17, scope: !3973)
!3975 = !DILocation(line: 1409, column: 6, scope: !3938)
!3976 = !DILocation(line: 1410, column: 3, scope: !3973)
!3977 = !DILocation(line: 1412, column: 16, scope: !3938)
!3978 = !DILocation(line: 1412, column: 9, scope: !3938)
!3979 = !DILocation(line: 1413, column: 17, scope: !3938)
!3980 = !DILocation(line: 1413, column: 12, scope: !3938)
!3981 = !DILocation(line: 1413, column: 10, scope: !3938)
!3982 = !DILocation(line: 1414, column: 21, scope: !3938)
!3983 = !DILocation(line: 1414, column: 16, scope: !3938)
!3984 = !DILocation(line: 1414, column: 14, scope: !3938)
!3985 = !DILocation(line: 1416, column: 43, scope: !3938)
!3986 = !DILocation(line: 1416, column: 59, scope: !3938)
!3987 = !DILocation(line: 1416, column: 11, scope: !3938)
!3988 = !DILocation(line: 1416, column: 9, scope: !3938)
!3989 = !DILocation(line: 1418, column: 41, scope: !3938)
!3990 = !DILocation(line: 1418, column: 61, scope: !3938)
!3991 = !DILocation(line: 1418, column: 9, scope: !3938)
!3992 = !DILocation(line: 1418, column: 2, scope: !3938)
!3993 = !DILocation(line: 1419, column: 1, scope: !3938)
!3994 = distinct !DISubprogram(name: "acpi_fwnode_get_parent", scope: !2, file: !2, line: 1547, type: !230, scopeLine: 1548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3995)
!3995 = !{!3996}
!3996 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3994, file: !2, line: 1547, type: !222)
!3997 = !DILocation(line: 1547, column: 46, scope: !3994)
!3998 = !DILocation(line: 1549, column: 30, scope: !3994)
!3999 = !DILocation(line: 1549, column: 9, scope: !3994)
!4000 = !DILocation(line: 1549, column: 2, scope: !3994)
!4001 = distinct !DISubprogram(name: "acpi_fwnode_graph_parse_endpoint", scope: !2, file: !2, line: 1552, type: !1765, scopeLine: 1554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4002)
!4002 = !{!4003, !4004, !4005}
!4003 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4001, file: !2, line: 1552, type: !242)
!4004 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4001, file: !2, line: 1553, type: !1767)
!4005 = !DILocalVariable(name: "port_fwnode", scope: !4001, file: !2, line: 1555, type: !222)
!4006 = !DILocation(line: 1552, column: 73, scope: !4001)
!4007 = !DILocation(line: 1553, column: 34, scope: !4001)
!4008 = !DILocation(line: 1555, column: 2, scope: !4001)
!4009 = !DILocation(line: 1555, column: 24, scope: !4001)
!4010 = !DILocation(line: 1555, column: 56, scope: !4001)
!4011 = !DILocation(line: 1555, column: 38, scope: !4001)
!4012 = !DILocation(line: 1557, column: 27, scope: !4001)
!4013 = !DILocation(line: 1557, column: 2, scope: !4001)
!4014 = !DILocation(line: 1557, column: 12, scope: !4001)
!4015 = !DILocation(line: 1557, column: 25, scope: !4001)
!4016 = !DILocation(line: 1559, column: 31, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4001, file: !2, line: 1559, column: 6)
!4018 = !DILocation(line: 1559, column: 52, scope: !4017)
!4019 = !DILocation(line: 1559, column: 62, scope: !4017)
!4020 = !DILocation(line: 1559, column: 6, scope: !4017)
!4021 = !DILocation(line: 1559, column: 6, scope: !4001)
!4022 = !DILocation(line: 1560, column: 28, scope: !4017)
!4023 = !DILocation(line: 1560, column: 50, scope: !4017)
!4024 = !DILocation(line: 1560, column: 60, scope: !4017)
!4025 = !DILocation(line: 1560, column: 3, scope: !4017)
!4026 = !DILocation(line: 1561, column: 31, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4001, file: !2, line: 1561, column: 6)
!4028 = !DILocation(line: 1561, column: 47, scope: !4027)
!4029 = !DILocation(line: 1561, column: 57, scope: !4027)
!4030 = !DILocation(line: 1561, column: 6, scope: !4027)
!4031 = !DILocation(line: 1561, column: 6, scope: !4001)
!4032 = !DILocation(line: 1562, column: 28, scope: !4027)
!4033 = !DILocation(line: 1562, column: 49, scope: !4027)
!4034 = !DILocation(line: 1562, column: 59, scope: !4027)
!4035 = !DILocation(line: 1562, column: 3, scope: !4027)
!4036 = !DILocation(line: 1565, column: 1, scope: !4001)
!4037 = !DILocation(line: 1564, column: 2, scope: !4001)
!4038 = distinct !DISubprogram(name: "acpi_fwnode_irq_get", scope: !2, file: !2, line: 1567, type: !1779, scopeLine: 1569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4039)
!4039 = !{!4040, !4041, !4042, !4056, !4057, !4059}
!4040 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4038, file: !2, line: 1567, type: !242)
!4041 = !DILocalVariable(name: "index", arg: 2, scope: !4038, file: !2, line: 1568, type: !28)
!4042 = !DILocalVariable(name: "res", scope: !4038, file: !2, line: 1570, type: !4043)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !408, line: 21, size: 512, elements: !4044)
!4044 = !{!4045, !4048, !4049, !4050, !4051, !4052, !4054, !4055}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4043, file: !408, line: 22, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !130, line: 164, baseType: !4047)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !130, line: 159, baseType: !133)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4043, file: !408, line: 23, baseType: !4046, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4043, file: !408, line: 24, baseType: !150, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4043, file: !408, line: 25, baseType: !380, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4043, file: !408, line: 26, baseType: !380, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4043, file: !408, line: 27, baseType: !4053, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4043, file: !408, line: 27, baseType: !4053, size: 64, offset: 384)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4043, file: !408, line: 27, baseType: !4053, size: 64, offset: 448)
!4056 = !DILocalVariable(name: "ret", scope: !4038, file: !2, line: 1571, type: !67)
!4057 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4058, file: !2, line: 1573, type: !242)
!4058 = distinct !DILexicalBlock(scope: !4038, file: !2, line: 1573, column: 21)
!4059 = !DILocalVariable(name: "__mptr", scope: !4060, file: !2, line: 1573, type: !138)
!4060 = distinct !DILexicalBlock(scope: !4058, file: !2, line: 1573, column: 21)
!4061 = !DILocation(line: 1567, column: 60, scope: !4038)
!4062 = !DILocation(line: 1568, column: 24, scope: !4038)
!4063 = !DILocation(line: 1570, column: 2, scope: !4038)
!4064 = !DILocation(line: 1570, column: 18, scope: !4038)
!4065 = !DILocation(line: 1571, column: 2, scope: !4038)
!4066 = !DILocation(line: 1571, column: 6, scope: !4038)
!4067 = !DILocation(line: 1573, column: 21, scope: !4058)
!4068 = !DILocation(line: 1573, column: 21, scope: !4060)
!4069 = !DILocation(line: 1573, column: 21, scope: !4038)
!4070 = !DILocation(line: 1573, column: 49, scope: !4038)
!4071 = !DILocation(line: 1573, column: 8, scope: !4038)
!4072 = !DILocation(line: 1573, column: 6, scope: !4038)
!4073 = !DILocation(line: 1574, column: 6, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4038, file: !2, line: 1574, column: 6)
!4075 = !DILocation(line: 1574, column: 6, scope: !4038)
!4076 = !DILocation(line: 1575, column: 10, scope: !4074)
!4077 = !DILocation(line: 1575, column: 3, scope: !4074)
!4078 = !DILocation(line: 1577, column: 13, scope: !4038)
!4079 = !DILocation(line: 1577, column: 9, scope: !4038)
!4080 = !DILocation(line: 1577, column: 2, scope: !4038)
!4081 = !DILocation(line: 1578, column: 1, scope: !4038)
!4082 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4083, file: !4083, line: 70, type: !4084, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4086)
!4083 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!240, !248}
!4086 = !{!4087}
!4087 = !DILocalVariable(name: "ptr", arg: 1, scope: !4082, file: !4083, line: 70, type: !248)
!4088 = !DILocation(line: 70, column: 68, scope: !4082)
!4089 = !DILocation(line: 72, column: 9, scope: !4082)
!4090 = !DILocation(line: 72, column: 24, scope: !4082)
!4091 = !DILocation(line: 72, column: 27, scope: !4082)
!4092 = !DILocation(line: 72, column: 2, scope: !4082)
!4093 = distinct !DISubprogram(name: "kmalloc", scope: !111, file: !111, line: 591, type: !2164, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4094)
!4094 = !{!4095, !4096, !4097}
!4095 = !DILocalVariable(name: "size", arg: 1, scope: !4093, file: !111, line: 591, type: !377)
!4096 = !DILocalVariable(name: "flags", arg: 2, scope: !4093, file: !111, line: 591, type: !129)
!4097 = !DILocalVariable(name: "index", scope: !4098, file: !111, line: 594, type: !28)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !111, line: 593, column: 42)
!4099 = distinct !DILexicalBlock(scope: !4093, file: !111, line: 593, column: 6)
!4100 = !DILocation(line: 591, column: 61, scope: !4093)
!4101 = !DILocation(line: 591, column: 73, scope: !4093)
!4102 = !DILocation(line: 593, column: 27, scope: !4099)
!4103 = !DILocation(line: 593, column: 6, scope: !4099)
!4104 = !DILocation(line: 593, column: 33, scope: !4099)
!4105 = !DILocation(line: 593, column: 36, scope: !4099)
!4106 = !DILocation(line: 593, column: 6, scope: !4093)
!4107 = !DILocation(line: 594, column: 3, scope: !4098)
!4108 = !DILocation(line: 594, column: 16, scope: !4098)
!4109 = !DILocation(line: 596, column: 7, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4098, file: !111, line: 596, column: 7)
!4111 = !DILocation(line: 596, column: 12, scope: !4110)
!4112 = !DILocation(line: 596, column: 7, scope: !4098)
!4113 = !DILocation(line: 597, column: 25, scope: !4110)
!4114 = !DILocation(line: 597, column: 31, scope: !4110)
!4115 = !DILocation(line: 597, column: 11, scope: !4110)
!4116 = !DILocation(line: 597, column: 4, scope: !4110)
!4117 = !DILocation(line: 599, column: 11, scope: !4098)
!4118 = !DILocation(line: 599, column: 9, scope: !4098)
!4119 = !DILocation(line: 601, column: 33, scope: !4098)
!4120 = !DILocation(line: 601, column: 40, scope: !4098)
!4121 = !DILocation(line: 601, column: 20, scope: !4098)
!4122 = !DILocation(line: 601, column: 5, scope: !4098)
!4123 = !DILocation(line: 601, column: 51, scope: !4098)
!4124 = !DILocation(line: 602, column: 5, scope: !4098)
!4125 = !DILocation(line: 602, column: 12, scope: !4098)
!4126 = !DILocation(line: 600, column: 10, scope: !4098)
!4127 = !DILocation(line: 600, column: 3, scope: !4098)
!4128 = !DILocation(line: 603, column: 2, scope: !4099)
!4129 = !DILocation(line: 604, column: 19, scope: !4093)
!4130 = !DILocation(line: 604, column: 25, scope: !4093)
!4131 = !DILocation(line: 604, column: 9, scope: !4093)
!4132 = !DILocation(line: 604, column: 2, scope: !4093)
!4133 = !DILocation(line: 605, column: 1, scope: !4093)
!4134 = !DISubprogram(name: "kmalloc_large", scope: !111, file: !111, line: 531, type: !2164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4135 = distinct !DISubprogram(name: "__kmalloc_index", scope: !111, file: !111, line: 444, type: !4136, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!28, !377, !240}
!4138 = !{!4139, !4140}
!4139 = !DILocalVariable(name: "size", arg: 1, scope: !4135, file: !111, line: 444, type: !377)
!4140 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4135, file: !111, line: 445, type: !240)
!4141 = !DILocation(line: 444, column: 60, scope: !4135)
!4142 = !DILocation(line: 445, column: 16, scope: !4135)
!4143 = !DILocation(line: 447, column: 7, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 447, column: 6)
!4145 = !DILocation(line: 447, column: 6, scope: !4135)
!4146 = !DILocation(line: 448, column: 3, scope: !4144)
!4147 = !DILocation(line: 450, column: 6, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 450, column: 6)
!4149 = !DILocation(line: 450, column: 11, scope: !4148)
!4150 = !DILocation(line: 450, column: 6, scope: !4135)
!4151 = !DILocation(line: 451, column: 3, scope: !4148)
!4152 = !DILocation(line: 453, column: 32, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 453, column: 6)
!4154 = !DILocation(line: 453, column: 37, scope: !4153)
!4155 = !DILocation(line: 453, column: 42, scope: !4153)
!4156 = !DILocation(line: 453, column: 45, scope: !4153)
!4157 = !DILocation(line: 453, column: 50, scope: !4153)
!4158 = !DILocation(line: 453, column: 6, scope: !4135)
!4159 = !DILocation(line: 454, column: 3, scope: !4153)
!4160 = !DILocation(line: 455, column: 32, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 455, column: 6)
!4162 = !DILocation(line: 455, column: 37, scope: !4161)
!4163 = !DILocation(line: 455, column: 43, scope: !4161)
!4164 = !DILocation(line: 455, column: 46, scope: !4161)
!4165 = !DILocation(line: 455, column: 51, scope: !4161)
!4166 = !DILocation(line: 455, column: 6, scope: !4135)
!4167 = !DILocation(line: 456, column: 3, scope: !4161)
!4168 = !DILocation(line: 457, column: 6, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 457, column: 6)
!4170 = !DILocation(line: 457, column: 11, scope: !4169)
!4171 = !DILocation(line: 457, column: 6, scope: !4135)
!4172 = !DILocation(line: 457, column: 26, scope: !4169)
!4173 = !DILocation(line: 458, column: 6, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 458, column: 6)
!4175 = !DILocation(line: 458, column: 11, scope: !4174)
!4176 = !DILocation(line: 458, column: 6, scope: !4135)
!4177 = !DILocation(line: 458, column: 26, scope: !4174)
!4178 = !DILocation(line: 459, column: 6, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 459, column: 6)
!4180 = !DILocation(line: 459, column: 11, scope: !4179)
!4181 = !DILocation(line: 459, column: 6, scope: !4135)
!4182 = !DILocation(line: 459, column: 26, scope: !4179)
!4183 = !DILocation(line: 460, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 460, column: 6)
!4185 = !DILocation(line: 460, column: 11, scope: !4184)
!4186 = !DILocation(line: 460, column: 6, scope: !4135)
!4187 = !DILocation(line: 460, column: 26, scope: !4184)
!4188 = !DILocation(line: 461, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 461, column: 6)
!4190 = !DILocation(line: 461, column: 11, scope: !4189)
!4191 = !DILocation(line: 461, column: 6, scope: !4135)
!4192 = !DILocation(line: 461, column: 26, scope: !4189)
!4193 = !DILocation(line: 462, column: 6, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 462, column: 6)
!4195 = !DILocation(line: 462, column: 11, scope: !4194)
!4196 = !DILocation(line: 462, column: 6, scope: !4135)
!4197 = !DILocation(line: 462, column: 26, scope: !4194)
!4198 = !DILocation(line: 463, column: 6, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 463, column: 6)
!4200 = !DILocation(line: 463, column: 11, scope: !4199)
!4201 = !DILocation(line: 463, column: 6, scope: !4135)
!4202 = !DILocation(line: 463, column: 26, scope: !4199)
!4203 = !DILocation(line: 464, column: 6, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 464, column: 6)
!4205 = !DILocation(line: 464, column: 11, scope: !4204)
!4206 = !DILocation(line: 464, column: 6, scope: !4135)
!4207 = !DILocation(line: 464, column: 26, scope: !4204)
!4208 = !DILocation(line: 465, column: 6, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 465, column: 6)
!4210 = !DILocation(line: 465, column: 11, scope: !4209)
!4211 = !DILocation(line: 465, column: 6, scope: !4135)
!4212 = !DILocation(line: 465, column: 26, scope: !4209)
!4213 = !DILocation(line: 466, column: 6, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 466, column: 6)
!4215 = !DILocation(line: 466, column: 11, scope: !4214)
!4216 = !DILocation(line: 466, column: 6, scope: !4135)
!4217 = !DILocation(line: 466, column: 26, scope: !4214)
!4218 = !DILocation(line: 467, column: 6, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 467, column: 6)
!4220 = !DILocation(line: 467, column: 11, scope: !4219)
!4221 = !DILocation(line: 467, column: 6, scope: !4135)
!4222 = !DILocation(line: 467, column: 26, scope: !4219)
!4223 = !DILocation(line: 468, column: 6, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 468, column: 6)
!4225 = !DILocation(line: 468, column: 11, scope: !4224)
!4226 = !DILocation(line: 468, column: 6, scope: !4135)
!4227 = !DILocation(line: 468, column: 26, scope: !4224)
!4228 = !DILocation(line: 469, column: 6, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 469, column: 6)
!4230 = !DILocation(line: 469, column: 11, scope: !4229)
!4231 = !DILocation(line: 469, column: 6, scope: !4135)
!4232 = !DILocation(line: 469, column: 26, scope: !4229)
!4233 = !DILocation(line: 470, column: 6, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 470, column: 6)
!4235 = !DILocation(line: 470, column: 11, scope: !4234)
!4236 = !DILocation(line: 470, column: 6, scope: !4135)
!4237 = !DILocation(line: 470, column: 26, scope: !4234)
!4238 = !DILocation(line: 471, column: 6, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 471, column: 6)
!4240 = !DILocation(line: 471, column: 11, scope: !4239)
!4241 = !DILocation(line: 471, column: 6, scope: !4135)
!4242 = !DILocation(line: 471, column: 26, scope: !4239)
!4243 = !DILocation(line: 472, column: 6, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 472, column: 6)
!4245 = !DILocation(line: 472, column: 11, scope: !4244)
!4246 = !DILocation(line: 472, column: 6, scope: !4135)
!4247 = !DILocation(line: 472, column: 26, scope: !4244)
!4248 = !DILocation(line: 473, column: 6, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 473, column: 6)
!4250 = !DILocation(line: 473, column: 11, scope: !4249)
!4251 = !DILocation(line: 473, column: 6, scope: !4135)
!4252 = !DILocation(line: 473, column: 26, scope: !4249)
!4253 = !DILocation(line: 474, column: 6, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 474, column: 6)
!4255 = !DILocation(line: 474, column: 11, scope: !4254)
!4256 = !DILocation(line: 474, column: 6, scope: !4135)
!4257 = !DILocation(line: 474, column: 27, scope: !4254)
!4258 = !DILocation(line: 475, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 475, column: 6)
!4260 = !DILocation(line: 475, column: 11, scope: !4259)
!4261 = !DILocation(line: 475, column: 6, scope: !4135)
!4262 = !DILocation(line: 475, column: 32, scope: !4259)
!4263 = !DILocation(line: 477, column: 50, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4135, file: !111, line: 477, column: 6)
!4265 = !DILocation(line: 477, column: 6, scope: !4135)
!4266 = !DILocation(line: 478, column: 3, scope: !4264)
!4267 = !DILocation(line: 478, column: 3, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !111, line: 478, column: 3)
!4269 = distinct !DILexicalBlock(scope: !4264, file: !111, line: 478, column: 3)
!4270 = !{i32 -2143426858}
!4271 = !DILocation(line: 478, column: 3, scope: !4269)
!4272 = !DILocation(line: 480, column: 3, scope: !4264)
!4273 = !DILocation(line: 480, column: 3, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4264, file: !111, line: 480, column: 3)
!4275 = !DILocation(line: 480, column: 3, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4274, file: !111, line: 480, column: 3)
!4277 = !DILocation(line: 480, column: 3, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !111, line: 480, column: 3)
!4279 = !{i64 2151540641, i64 2151540670, i64 2151540716, i64 2151540774, i64 2151540828, i64 2151540882, i64 2151540937, i64 2151540968}
!4280 = !DILocation(line: 483, column: 2, scope: !4135)
!4281 = !DILocation(line: 484, column: 1, scope: !4135)
!4282 = !DISubprogram(name: "kmalloc_trace", scope: !111, file: !111, line: 525, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!138, !4285, !129, !377}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4287, line: 11, flags: DIFlagFwdDecl)
!4287 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4288 = distinct !DISubprogram(name: "kmalloc_type", scope: !111, file: !111, line: 401, type: !4289, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!110, !129, !380}
!4291 = !{!4292, !4293}
!4292 = !DILocalVariable(name: "flags", arg: 1, scope: !4288, file: !111, line: 401, type: !129)
!4293 = !DILocalVariable(name: "caller", arg: 2, scope: !4288, file: !111, line: 401, type: !380)
!4294 = !DILocation(line: 401, column: 67, scope: !4288)
!4295 = !DILocation(line: 401, column: 88, scope: !4288)
!4296 = !DILocation(line: 407, column: 6, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4288, file: !111, line: 407, column: 6)
!4298 = !DILocation(line: 407, column: 6, scope: !4288)
!4299 = !DILocation(line: 413, column: 3, scope: !4297)
!4300 = !DILocation(line: 423, column: 38, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4288, file: !111, line: 423, column: 6)
!4302 = !DILocation(line: 423, column: 44, scope: !4301)
!4303 = !DILocation(line: 423, column: 6, scope: !4288)
!4304 = !DILocation(line: 424, column: 3, scope: !4301)
!4305 = !DILocation(line: 426, column: 3, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4288, file: !111, line: 425, column: 6)
!4307 = !DILocation(line: 429, column: 1, scope: !4288)
!4308 = !DISubprogram(name: "__kmalloc", scope: !111, file: !111, line: 488, type: !2164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4309 = !DISubprogram(name: "__compiletime_assert_125", scope: !111, file: !111, line: 478, type: !1349, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4310 = distinct !DISubprogram(name: "__list_add", scope: !2177, file: !2177, line: 146, type: !4311, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !147, !147, !147}
!4313 = !{!4314, !4315, !4316}
!4314 = !DILocalVariable(name: "new", arg: 1, scope: !4310, file: !2177, line: 146, type: !147)
!4315 = !DILocalVariable(name: "prev", arg: 2, scope: !4310, file: !2177, line: 147, type: !147)
!4316 = !DILocalVariable(name: "next", arg: 3, scope: !4310, file: !2177, line: 148, type: !147)
!4317 = !DILocation(line: 146, column: 49, scope: !4310)
!4318 = !DILocation(line: 147, column: 28, scope: !4310)
!4319 = !DILocation(line: 148, column: 28, scope: !4310)
!4320 = !DILocation(line: 150, column: 24, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4310, file: !2177, line: 150, column: 6)
!4322 = !DILocation(line: 150, column: 29, scope: !4321)
!4323 = !DILocation(line: 150, column: 35, scope: !4321)
!4324 = !DILocation(line: 150, column: 7, scope: !4321)
!4325 = !DILocation(line: 150, column: 6, scope: !4310)
!4326 = !DILocation(line: 151, column: 3, scope: !4321)
!4327 = !DILocation(line: 153, column: 15, scope: !4310)
!4328 = !DILocation(line: 153, column: 2, scope: !4310)
!4329 = !DILocation(line: 153, column: 8, scope: !4310)
!4330 = !DILocation(line: 153, column: 13, scope: !4310)
!4331 = !DILocation(line: 154, column: 14, scope: !4310)
!4332 = !DILocation(line: 154, column: 2, scope: !4310)
!4333 = !DILocation(line: 154, column: 7, scope: !4310)
!4334 = !DILocation(line: 154, column: 12, scope: !4310)
!4335 = !DILocation(line: 155, column: 14, scope: !4310)
!4336 = !DILocation(line: 155, column: 2, scope: !4310)
!4337 = !DILocation(line: 155, column: 7, scope: !4310)
!4338 = !DILocation(line: 155, column: 12, scope: !4310)
!4339 = !DILocation(line: 156, column: 2, scope: !4310)
!4340 = !DILocation(line: 156, column: 2, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4310, file: !2177, line: 156, column: 2)
!4342 = !DILocation(line: 156, column: 2, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4341, file: !2177, line: 156, column: 2)
!4344 = !DILocation(line: 156, column: 2, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4341, file: !2177, line: 156, column: 2)
!4346 = !DILocation(line: 157, column: 1, scope: !4310)
!4347 = distinct !DISubprogram(name: "__list_add_valid", scope: !2177, file: !2177, line: 128, type: !4348, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!240, !147, !147, !147}
!4350 = !{!4351, !4352, !4353}
!4351 = !DILocalVariable(name: "new", arg: 1, scope: !4347, file: !2177, line: 128, type: !147)
!4352 = !DILocalVariable(name: "prev", arg: 2, scope: !4347, file: !2177, line: 129, type: !147)
!4353 = !DILocalVariable(name: "next", arg: 3, scope: !4347, file: !2177, line: 130, type: !147)
!4354 = !DILocation(line: 128, column: 55, scope: !4347)
!4355 = !DILocation(line: 129, column: 23, scope: !4347)
!4356 = !DILocation(line: 130, column: 23, scope: !4347)
!4357 = !DILocation(line: 132, column: 2, scope: !4347)
!4358 = distinct !DISubprogram(name: "guid_equal", scope: !2002, file: !2002, line: 46, type: !4359, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!240, !2006, !2006}
!4361 = !{!4362, !4363}
!4362 = !DILocalVariable(name: "u1", arg: 1, scope: !4358, file: !2002, line: 46, type: !2006)
!4363 = !DILocalVariable(name: "u2", arg: 2, scope: !4358, file: !2002, line: 46, type: !2006)
!4364 = !DILocation(line: 46, column: 45, scope: !4358)
!4365 = !DILocation(line: 46, column: 63, scope: !4358)
!4366 = !DILocation(line: 48, column: 16, scope: !4358)
!4367 = !DILocation(line: 48, column: 20, scope: !4358)
!4368 = !DILocation(line: 48, column: 9, scope: !4358)
!4369 = !DILocation(line: 48, column: 40, scope: !4358)
!4370 = !DILocation(line: 48, column: 2, scope: !4358)
!4371 = distinct !DISubprogram(name: "acpi_data_add_buffer_props", scope: !2, file: !2, line: 388, type: !4372, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{null, !196, !2126, !189}
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4387, !4388, !4389, !4390, !4391}
!4375 = !DILocalVariable(name: "handle", arg: 1, scope: !4371, file: !2, line: 388, type: !196)
!4376 = !DILocalVariable(name: "data", arg: 2, scope: !4371, file: !2, line: 389, type: !2126)
!4377 = !DILocalVariable(name: "properties", arg: 3, scope: !4371, file: !2, line: 390, type: !189)
!4378 = !DILocalVariable(name: "props", scope: !4371, file: !2, line: 392, type: !2009)
!4379 = !DILocalVariable(name: "package", scope: !4371, file: !2, line: 393, type: !189)
!4380 = !DILocalVariable(name: "alloc_size", scope: !4371, file: !2, line: 394, type: !377)
!4381 = !DILocalVariable(name: "i", scope: !4371, file: !2, line: 395, type: !28)
!4382 = !DILocalVariable(name: "count", scope: !4371, file: !2, line: 396, type: !2022)
!4383 = !DILocalVariable(name: "buf", scope: !4384, file: !2, line: 428, type: !2216)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !2, line: 427, column: 50)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !2, line: 427, column: 2)
!4386 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 427, column: 2)
!4387 = !DILocalVariable(name: "property", scope: !4384, file: !2, line: 429, type: !189)
!4388 = !DILocalVariable(name: "prop", scope: !4384, file: !2, line: 430, type: !189)
!4389 = !DILocalVariable(name: "obj", scope: !4384, file: !2, line: 430, type: !189)
!4390 = !DILocalVariable(name: "buf_obj", scope: !4384, file: !2, line: 430, type: !189)
!4391 = !DILocalVariable(name: "status", scope: !4384, file: !2, line: 431, type: !2008)
!4392 = !DILocation(line: 388, column: 52, scope: !4371)
!4393 = !DILocation(line: 389, column: 37, scope: !4371)
!4394 = !DILocation(line: 390, column: 31, scope: !4371)
!4395 = !DILocation(line: 392, column: 2, scope: !4371)
!4396 = !DILocation(line: 392, column: 33, scope: !4371)
!4397 = !DILocation(line: 393, column: 2, scope: !4371)
!4398 = !DILocation(line: 393, column: 21, scope: !4371)
!4399 = !DILocation(line: 394, column: 2, scope: !4371)
!4400 = !DILocation(line: 394, column: 9, scope: !4371)
!4401 = !DILocation(line: 395, column: 2, scope: !4371)
!4402 = !DILocation(line: 395, column: 15, scope: !4371)
!4403 = !DILocation(line: 396, column: 2, scope: !4371)
!4404 = !DILocation(line: 396, column: 7, scope: !4371)
!4405 = !DILocation(line: 398, column: 6, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 398, column: 6)
!4407 = !DILocation(line: 400, column: 24, scope: !4406)
!4408 = !DILocation(line: 401, column: 6, scope: !4406)
!4409 = !DILocation(line: 398, column: 6, scope: !4371)
!4410 = !DILocation(line: 403, column: 3, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4406, file: !2, line: 402, column: 25)
!4412 = !DILocation(line: 406, column: 3, scope: !4411)
!4413 = !DILocation(line: 409, column: 19, scope: !4371)
!4414 = !DILocation(line: 409, column: 10, scope: !4371)
!4415 = !DILocation(line: 409, column: 8, scope: !4371)
!4416 = !DILocation(line: 410, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 410, column: 6)
!4418 = !DILocation(line: 410, column: 6, scope: !4371)
!4419 = !DILocation(line: 411, column: 3, scope: !4417)
!4420 = !DILocation(line: 413, column: 2, scope: !4371)
!4421 = !DILocation(line: 413, column: 9, scope: !4371)
!4422 = !DILocation(line: 413, column: 14, scope: !4371)
!4423 = !DILocation(line: 414, column: 25, scope: !4371)
!4424 = !DILocation(line: 414, column: 31, scope: !4371)
!4425 = !DILocation(line: 414, column: 2, scope: !4371)
!4426 = !DILocation(line: 414, column: 9, scope: !4371)
!4427 = !DILocation(line: 414, column: 14, scope: !4371)
!4428 = !DILocation(line: 415, column: 31, scope: !4371)
!4429 = !DILocation(line: 415, column: 38, scope: !4371)
!4430 = !DILocation(line: 415, column: 45, scope: !4371)
!4431 = !DILocation(line: 415, column: 65, scope: !4371)
!4432 = !DILocation(line: 415, column: 43, scope: !4371)
!4433 = !DILocation(line: 415, column: 2, scope: !4371)
!4434 = !DILocation(line: 415, column: 9, scope: !4371)
!4435 = !DILocation(line: 415, column: 20, scope: !4371)
!4436 = !DILocation(line: 418, column: 12, scope: !4371)
!4437 = !DILocation(line: 418, column: 19, scope: !4371)
!4438 = !DILocation(line: 418, column: 10, scope: !4371)
!4439 = !DILocation(line: 419, column: 2, scope: !4371)
!4440 = !DILocation(line: 419, column: 16, scope: !4371)
!4441 = !DILocation(line: 420, column: 30, scope: !4371)
!4442 = !DILocation(line: 420, column: 38, scope: !4371)
!4443 = !DILocation(line: 420, column: 2, scope: !4371)
!4444 = !DILocation(line: 420, column: 19, scope: !4371)
!4445 = !DILocation(line: 420, column: 28, scope: !4371)
!4446 = !DILocation(line: 421, column: 11, scope: !4371)
!4447 = !DILocation(line: 421, column: 28, scope: !4371)
!4448 = !DILocation(line: 421, column: 8, scope: !4371)
!4449 = !DILocation(line: 422, column: 3, scope: !4371)
!4450 = !DILocation(line: 422, column: 9, scope: !4371)
!4451 = !DILocation(line: 425, column: 9, scope: !4371)
!4452 = !DILocation(line: 427, column: 9, scope: !4386)
!4453 = !DILocation(line: 427, column: 7, scope: !4386)
!4454 = !DILocation(line: 427, column: 14, scope: !4385)
!4455 = !DILocation(line: 427, column: 18, scope: !4385)
!4456 = !DILocation(line: 427, column: 38, scope: !4385)
!4457 = !DILocation(line: 427, column: 16, scope: !4385)
!4458 = !DILocation(line: 427, column: 2, scope: !4386)
!4459 = !DILocation(line: 428, column: 3, scope: !4384)
!4460 = !DILocation(line: 428, column: 22, scope: !4384)
!4461 = !DILocation(line: 429, column: 3, scope: !4384)
!4462 = !DILocation(line: 429, column: 22, scope: !4384)
!4463 = !DILocation(line: 429, column: 34, scope: !4384)
!4464 = !DILocation(line: 429, column: 54, scope: !4384)
!4465 = !DILocation(line: 429, column: 63, scope: !4384)
!4466 = !DILocation(line: 430, column: 3, scope: !4384)
!4467 = !DILocation(line: 430, column: 22, scope: !4384)
!4468 = !DILocation(line: 430, column: 29, scope: !4384)
!4469 = !DILocation(line: 430, column: 35, scope: !4384)
!4470 = !DILocation(line: 431, column: 3, scope: !4384)
!4471 = !DILocation(line: 431, column: 15, scope: !4384)
!4472 = !DILocation(line: 433, column: 7, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 433, column: 7)
!4474 = !DILocation(line: 433, column: 17, scope: !4473)
!4475 = !DILocation(line: 433, column: 22, scope: !4473)
!4476 = !DILocation(line: 433, column: 43, scope: !4473)
!4477 = !DILocation(line: 434, column: 7, scope: !4473)
!4478 = !DILocation(line: 434, column: 25, scope: !4473)
!4479 = !DILocation(line: 434, column: 31, scope: !4473)
!4480 = !DILocation(line: 433, column: 7, scope: !4384)
!4481 = !DILocation(line: 435, column: 4, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 434, column: 37)
!4483 = !DILocation(line: 438, column: 4, scope: !4482)
!4484 = !DILocation(line: 441, column: 11, scope: !4384)
!4485 = !DILocation(line: 441, column: 29, scope: !4384)
!4486 = !DILocation(line: 441, column: 8, scope: !4384)
!4487 = !DILocation(line: 442, column: 10, scope: !4384)
!4488 = !DILocation(line: 442, column: 28, scope: !4384)
!4489 = !DILocation(line: 442, column: 7, scope: !4384)
!4490 = !DILocation(line: 444, column: 7, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 444, column: 7)
!4492 = !DILocation(line: 444, column: 13, scope: !4491)
!4493 = !DILocation(line: 444, column: 18, scope: !4491)
!4494 = !DILocation(line: 444, column: 38, scope: !4491)
!4495 = !DILocation(line: 445, column: 7, scope: !4491)
!4496 = !DILocation(line: 445, column: 12, scope: !4491)
!4497 = !DILocation(line: 445, column: 17, scope: !4491)
!4498 = !DILocation(line: 444, column: 7, scope: !4384)
!4499 = !DILocation(line: 446, column: 4, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4491, file: !2, line: 445, column: 38)
!4501 = !DILocation(line: 449, column: 4, scope: !4500)
!4502 = !DILocation(line: 452, column: 39, scope: !4384)
!4503 = !DILocation(line: 452, column: 47, scope: !4384)
!4504 = !DILocation(line: 452, column: 59, scope: !4384)
!4505 = !DILocation(line: 452, column: 12, scope: !4384)
!4506 = !DILocation(line: 452, column: 10, scope: !4384)
!4507 = !DILocation(line: 455, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 455, column: 7)
!4509 = !DILocation(line: 455, column: 7, scope: !4384)
!4510 = !DILocation(line: 456, column: 4, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !2, line: 455, column: 29)
!4512 = !DILocation(line: 460, column: 4, scope: !4511)
!4513 = !DILocation(line: 463, column: 3, scope: !4384)
!4514 = !DILocation(line: 463, column: 17, scope: !4384)
!4515 = !DILocation(line: 464, column: 31, scope: !4384)
!4516 = !DILocation(line: 464, column: 3, scope: !4384)
!4517 = !DILocation(line: 464, column: 20, scope: !4384)
!4518 = !DILocation(line: 464, column: 29, scope: !4384)
!4519 = !DILocation(line: 465, column: 3, scope: !4384)
!4520 = !DILocation(line: 465, column: 20, scope: !4384)
!4521 = !DILocation(line: 465, column: 26, scope: !4384)
!4522 = !DILocation(line: 467, column: 17, scope: !4384)
!4523 = !DILocation(line: 467, column: 11, scope: !4384)
!4524 = !DILocation(line: 470, column: 3, scope: !4384)
!4525 = !DILocation(line: 470, column: 13, scope: !4384)
!4526 = !DILocation(line: 471, column: 24, scope: !4384)
!4527 = !DILocation(line: 471, column: 40, scope: !4384)
!4528 = !DILocation(line: 471, column: 3, scope: !4384)
!4529 = !DILocation(line: 471, column: 15, scope: !4384)
!4530 = !DILocation(line: 471, column: 22, scope: !4384)
!4531 = !DILocation(line: 472, column: 25, scope: !4384)
!4532 = !DILocation(line: 472, column: 41, scope: !4384)
!4533 = !DILocation(line: 472, column: 3, scope: !4384)
!4534 = !DILocation(line: 472, column: 15, scope: !4384)
!4535 = !DILocation(line: 472, column: 23, scope: !4384)
!4536 = !DILocation(line: 474, column: 24, scope: !4384)
!4537 = !DILocation(line: 474, column: 3, scope: !4384)
!4538 = !DILocation(line: 474, column: 10, scope: !4384)
!4539 = !DILocation(line: 474, column: 15, scope: !4384)
!4540 = !DILocation(line: 474, column: 18, scope: !4384)
!4541 = !DILocation(line: 475, column: 10, scope: !4384)
!4542 = !DILocation(line: 476, column: 5, scope: !4384)
!4543 = !DILocation(line: 476, column: 11, scope: !4384)
!4544 = !DILocation(line: 477, column: 2, scope: !4385)
!4545 = !DILocation(line: 477, column: 2, scope: !4384)
!4546 = !DILocation(line: 427, column: 46, scope: !4385)
!4547 = !DILocation(line: 427, column: 2, scope: !4385)
!4548 = distinct !{!4548, !4458, !4549, !2268, !2269}
!4549 = !DILocation(line: 477, column: 2, scope: !4386)
!4550 = !DILocation(line: 479, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 479, column: 6)
!4552 = !DILocation(line: 479, column: 6, scope: !4551)
!4553 = !DILocation(line: 479, column: 6, scope: !4371)
!4554 = !DILocation(line: 480, column: 13, scope: !4551)
!4555 = !DILocation(line: 480, column: 20, scope: !4551)
!4556 = !DILocation(line: 480, column: 27, scope: !4551)
!4557 = !DILocation(line: 480, column: 33, scope: !4551)
!4558 = !DILocation(line: 480, column: 3, scope: !4551)
!4559 = !DILocation(line: 482, column: 10, scope: !4551)
!4560 = !DILocation(line: 482, column: 3, scope: !4551)
!4561 = !DILocation(line: 483, column: 1, scope: !4371)
!4562 = distinct !DISubprogram(name: "acpi_is_property_guid", scope: !2, file: !2, line: 322, type: !4563, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4565)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!240, !2006}
!4565 = !{!4566, !4567}
!4566 = !DILocalVariable(name: "guid", arg: 1, scope: !4562, file: !2, line: 322, type: !2006)
!4567 = !DILocalVariable(name: "i", scope: !4562, file: !2, line: 324, type: !67)
!4568 = !DILocation(line: 322, column: 49, scope: !4562)
!4569 = !DILocation(line: 324, column: 2, scope: !4562)
!4570 = !DILocation(line: 324, column: 6, scope: !4562)
!4571 = !DILocation(line: 326, column: 9, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4562, file: !2, line: 326, column: 2)
!4573 = !DILocation(line: 326, column: 7, scope: !4572)
!4574 = !DILocation(line: 326, column: 14, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 326, column: 2)
!4576 = !DILocation(line: 326, column: 16, scope: !4575)
!4577 = !DILocation(line: 326, column: 2, scope: !4572)
!4578 = !DILocation(line: 327, column: 18, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !2, line: 327, column: 7)
!4580 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 326, column: 46)
!4581 = !DILocation(line: 327, column: 35, scope: !4579)
!4582 = !DILocation(line: 327, column: 25, scope: !4579)
!4583 = !DILocation(line: 327, column: 7, scope: !4579)
!4584 = !DILocation(line: 327, column: 7, scope: !4580)
!4585 = !DILocation(line: 328, column: 4, scope: !4579)
!4586 = !DILocation(line: 329, column: 2, scope: !4580)
!4587 = !DILocation(line: 326, column: 42, scope: !4575)
!4588 = !DILocation(line: 326, column: 2, scope: !4575)
!4589 = distinct !{!4589, !4577, !4590, !2268, !2269}
!4590 = !DILocation(line: 329, column: 2, scope: !4572)
!4591 = !DILocation(line: 331, column: 2, scope: !4562)
!4592 = !DILocation(line: 332, column: 1, scope: !4562)
!4593 = distinct !DISubprogram(name: "acpi_properties_format_valid", scope: !2, file: !2, line: 276, type: !4594, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!240, !153}
!4596 = !{!4597, !4598, !4599}
!4597 = !DILocalVariable(name: "properties", arg: 1, scope: !4593, file: !2, line: 276, type: !153)
!4598 = !DILocalVariable(name: "i", scope: !4593, file: !2, line: 278, type: !67)
!4599 = !DILocalVariable(name: "property", scope: !4600, file: !2, line: 281, type: !153)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !2, line: 280, column: 50)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !2, line: 280, column: 2)
!4602 = distinct !DILexicalBlock(scope: !4593, file: !2, line: 280, column: 2)
!4603 = !DILocation(line: 276, column: 67, scope: !4593)
!4604 = !DILocation(line: 278, column: 2, scope: !4593)
!4605 = !DILocation(line: 278, column: 6, scope: !4593)
!4606 = !DILocation(line: 280, column: 9, scope: !4602)
!4607 = !DILocation(line: 280, column: 7, scope: !4602)
!4608 = !DILocation(line: 280, column: 14, scope: !4601)
!4609 = !DILocation(line: 280, column: 18, scope: !4601)
!4610 = !DILocation(line: 280, column: 38, scope: !4601)
!4611 = !DILocation(line: 280, column: 16, scope: !4601)
!4612 = !DILocation(line: 280, column: 2, scope: !4602)
!4613 = !DILocation(line: 281, column: 3, scope: !4600)
!4614 = !DILocation(line: 281, column: 28, scope: !4600)
!4615 = !DILocation(line: 283, column: 15, scope: !4600)
!4616 = !DILocation(line: 283, column: 35, scope: !4600)
!4617 = !DILocation(line: 283, column: 44, scope: !4600)
!4618 = !DILocation(line: 283, column: 12, scope: !4600)
!4619 = !DILocation(line: 288, column: 7, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4600, file: !2, line: 288, column: 7)
!4621 = !DILocation(line: 288, column: 25, scope: !4620)
!4622 = !DILocation(line: 288, column: 31, scope: !4620)
!4623 = !DILocation(line: 289, column: 7, scope: !4620)
!4624 = !DILocation(line: 289, column: 10, scope: !4620)
!4625 = !DILocation(line: 289, column: 28, scope: !4620)
!4626 = !DILocation(line: 289, column: 40, scope: !4620)
!4627 = !DILocation(line: 289, column: 45, scope: !4620)
!4628 = !DILocation(line: 290, column: 7, scope: !4620)
!4629 = !DILocation(line: 290, column: 35, scope: !4620)
!4630 = !DILocation(line: 290, column: 53, scope: !4620)
!4631 = !DILocation(line: 290, column: 11, scope: !4620)
!4632 = !DILocation(line: 288, column: 7, scope: !4600)
!4633 = !DILocation(line: 291, column: 4, scope: !4620)
!4634 = !DILocation(line: 292, column: 2, scope: !4601)
!4635 = !DILocation(line: 292, column: 2, scope: !4600)
!4636 = !DILocation(line: 280, column: 46, scope: !4601)
!4637 = !DILocation(line: 280, column: 2, scope: !4601)
!4638 = distinct !{!4638, !4612, !4639, !2268, !2269}
!4639 = !DILocation(line: 292, column: 2, scope: !4602)
!4640 = !DILocation(line: 293, column: 2, scope: !4593)
!4641 = !DILocation(line: 294, column: 1, scope: !4593)
!4642 = !DISubprogram(name: "memcmp", scope: !2353, file: !2353, line: 196, type: !4643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!67, !248, !248, !378}
!4645 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4646, file: !4646, line: 51, type: !4647, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4649)
!4646 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!240, !240}
!4649 = !{!4650}
!4650 = !DILocalVariable(name: "overflow", arg: 1, scope: !4645, file: !4646, line: 51, type: !240)
!4651 = !DILocation(line: 51, column: 60, scope: !4645)
!4652 = !DILocation(line: 53, column: 9, scope: !4645)
!4653 = !DILocation(line: 53, column: 2, scope: !4645)
!4654 = distinct !DISubprogram(name: "kvzalloc", scope: !111, file: !111, line: 744, type: !2164, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4655)
!4655 = !{!4656, !4657}
!4656 = !DILocalVariable(name: "size", arg: 1, scope: !4654, file: !111, line: 744, type: !377)
!4657 = !DILocalVariable(name: "flags", arg: 2, scope: !4654, file: !111, line: 744, type: !129)
!4658 = !DILocation(line: 744, column: 53, scope: !4654)
!4659 = !DILocation(line: 744, column: 65, scope: !4654)
!4660 = !DILocation(line: 746, column: 18, scope: !4654)
!4661 = !DILocation(line: 746, column: 24, scope: !4654)
!4662 = !DILocation(line: 746, column: 30, scope: !4654)
!4663 = !DILocation(line: 746, column: 9, scope: !4654)
!4664 = !DILocation(line: 746, column: 2, scope: !4654)
!4665 = distinct !DISubprogram(name: "list_add", scope: !2177, file: !2177, line: 167, type: !2199, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4666)
!4666 = !{!4667, !4668}
!4667 = !DILocalVariable(name: "new", arg: 1, scope: !4665, file: !2177, line: 167, type: !147)
!4668 = !DILocalVariable(name: "head", arg: 2, scope: !4665, file: !2177, line: 167, type: !147)
!4669 = !DILocation(line: 167, column: 47, scope: !4665)
!4670 = !DILocation(line: 167, column: 70, scope: !4665)
!4671 = !DILocation(line: 169, column: 13, scope: !4665)
!4672 = !DILocation(line: 169, column: 18, scope: !4665)
!4673 = !DILocation(line: 169, column: 24, scope: !4665)
!4674 = !DILocation(line: 169, column: 30, scope: !4665)
!4675 = !DILocation(line: 169, column: 2, scope: !4665)
!4676 = !DILocation(line: 170, column: 1, scope: !4665)
!4677 = !DISubprogram(name: "kvfree", scope: !111, file: !111, line: 766, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !248}
!4680 = distinct !DISubprogram(name: "kvmalloc", scope: !111, file: !111, line: 736, type: !2164, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4681)
!4681 = !{!4682, !4683}
!4682 = !DILocalVariable(name: "size", arg: 1, scope: !4680, file: !111, line: 736, type: !377)
!4683 = !DILocalVariable(name: "flags", arg: 2, scope: !4680, file: !111, line: 736, type: !129)
!4684 = !DILocation(line: 736, column: 53, scope: !4680)
!4685 = !DILocation(line: 736, column: 65, scope: !4680)
!4686 = !DILocation(line: 738, column: 23, scope: !4680)
!4687 = !DILocation(line: 738, column: 29, scope: !4680)
!4688 = !DILocation(line: 738, column: 9, scope: !4680)
!4689 = !DILocation(line: 738, column: 2, scope: !4680)
!4690 = !DISubprogram(name: "kvmalloc_node", scope: !111, file: !111, line: 735, type: !4691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!138, !377, !129, !67}
!4693 = distinct !DISubprogram(name: "acpi_property_value_ok", scope: !2, file: !2, line: 245, type: !4594, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4694)
!4694 = !{!4695, !4696}
!4695 = !DILocalVariable(name: "value", arg: 1, scope: !4693, file: !2, line: 245, type: !153)
!4696 = !DILocalVariable(name: "j", scope: !4693, file: !2, line: 247, type: !67)
!4697 = !DILocation(line: 245, column: 61, scope: !4693)
!4698 = !DILocation(line: 247, column: 2, scope: !4693)
!4699 = !DILocation(line: 247, column: 6, scope: !4693)
!4700 = !DILocation(line: 253, column: 10, scope: !4693)
!4701 = !DILocation(line: 253, column: 17, scope: !4693)
!4702 = !DILocation(line: 253, column: 2, scope: !4693)
!4703 = !DILocation(line: 257, column: 3, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4693, file: !2, line: 253, column: 23)
!4705 = !DILocation(line: 260, column: 10, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4704, file: !2, line: 260, column: 3)
!4707 = !DILocation(line: 260, column: 8, scope: !4706)
!4708 = !DILocation(line: 260, column: 15, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4706, file: !2, line: 260, column: 3)
!4710 = !DILocation(line: 260, column: 19, scope: !4709)
!4711 = !DILocation(line: 260, column: 34, scope: !4709)
!4712 = !DILocation(line: 260, column: 17, scope: !4709)
!4713 = !DILocation(line: 260, column: 3, scope: !4706)
!4714 = !DILocation(line: 261, column: 12, scope: !4709)
!4715 = !DILocation(line: 261, column: 27, scope: !4709)
!4716 = !DILocation(line: 261, column: 36, scope: !4709)
!4717 = !DILocation(line: 261, column: 39, scope: !4709)
!4718 = !DILocation(line: 261, column: 4, scope: !4709)
!4719 = !DILocation(line: 265, column: 5, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4709, file: !2, line: 261, column: 45)
!4721 = !DILocation(line: 268, column: 5, scope: !4720)
!4722 = !DILocation(line: 260, column: 42, scope: !4709)
!4723 = !DILocation(line: 260, column: 3, scope: !4709)
!4724 = distinct !{!4724, !4713, !4725, !2268, !2269}
!4725 = !DILocation(line: 269, column: 4, scope: !4706)
!4726 = !DILocation(line: 271, column: 3, scope: !4704)
!4727 = !DILocation(line: 273, column: 2, scope: !4693)
!4728 = !DILocation(line: 274, column: 1, scope: !4693)
!4729 = distinct !DISubprogram(name: "acpi_data_get_property_array", scope: !2, file: !2, line: 750, type: !2851, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4730)
!4730 = !{!4731, !4732, !4733, !4734, !4735, !4736, !4737}
!4731 = !DILocalVariable(name: "data", arg: 1, scope: !4729, file: !2, line: 750, type: !2853)
!4732 = !DILocalVariable(name: "name", arg: 2, scope: !4729, file: !2, line: 751, type: !150)
!4733 = !DILocalVariable(name: "type", arg: 3, scope: !4729, file: !2, line: 752, type: !158)
!4734 = !DILocalVariable(name: "obj", arg: 4, scope: !4729, file: !2, line: 753, type: !152)
!4735 = !DILocalVariable(name: "prop", scope: !4729, file: !2, line: 755, type: !153)
!4736 = !DILocalVariable(name: "ret", scope: !4729, file: !2, line: 756, type: !67)
!4737 = !DILocalVariable(name: "i", scope: !4729, file: !2, line: 756, type: !67)
!4738 = !DILocation(line: 750, column: 72, scope: !4729)
!4739 = !DILocation(line: 751, column: 18, scope: !4729)
!4740 = !DILocation(line: 752, column: 23, scope: !4729)
!4741 = !DILocation(line: 753, column: 32, scope: !4729)
!4742 = !DILocation(line: 755, column: 2, scope: !4729)
!4743 = !DILocation(line: 755, column: 27, scope: !4729)
!4744 = !DILocation(line: 756, column: 2, scope: !4729)
!4745 = !DILocation(line: 756, column: 6, scope: !4729)
!4746 = !DILocation(line: 756, column: 11, scope: !4729)
!4747 = !DILocation(line: 758, column: 31, scope: !4729)
!4748 = !DILocation(line: 758, column: 37, scope: !4729)
!4749 = !DILocation(line: 758, column: 8, scope: !4729)
!4750 = !DILocation(line: 758, column: 6, scope: !4729)
!4751 = !DILocation(line: 759, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 759, column: 6)
!4753 = !DILocation(line: 759, column: 6, scope: !4729)
!4754 = !DILocation(line: 760, column: 10, scope: !4752)
!4755 = !DILocation(line: 760, column: 3, scope: !4752)
!4756 = !DILocation(line: 762, column: 6, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 762, column: 6)
!4758 = !DILocation(line: 762, column: 11, scope: !4757)
!4759 = !DILocation(line: 762, column: 6, scope: !4729)
!4760 = !DILocation(line: 764, column: 10, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !2, line: 764, column: 3)
!4762 = distinct !DILexicalBlock(scope: !4757, file: !2, line: 762, column: 29)
!4763 = !DILocation(line: 764, column: 8, scope: !4761)
!4764 = !DILocation(line: 764, column: 15, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !2, line: 764, column: 3)
!4766 = !DILocation(line: 764, column: 19, scope: !4765)
!4767 = !DILocation(line: 764, column: 33, scope: !4765)
!4768 = !DILocation(line: 764, column: 17, scope: !4765)
!4769 = !DILocation(line: 764, column: 3, scope: !4761)
!4770 = !DILocation(line: 765, column: 8, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4765, file: !2, line: 765, column: 8)
!4772 = !DILocation(line: 765, column: 22, scope: !4771)
!4773 = !DILocation(line: 765, column: 31, scope: !4771)
!4774 = !DILocation(line: 765, column: 34, scope: !4771)
!4775 = !DILocation(line: 765, column: 42, scope: !4771)
!4776 = !DILocation(line: 765, column: 39, scope: !4771)
!4777 = !DILocation(line: 765, column: 8, scope: !4765)
!4778 = !DILocation(line: 766, column: 5, scope: !4771)
!4779 = !DILocation(line: 764, column: 41, scope: !4765)
!4780 = !DILocation(line: 764, column: 3, scope: !4765)
!4781 = distinct !{!4781, !4769, !4782, !2268, !2269}
!4782 = !DILocation(line: 766, column: 13, scope: !4761)
!4783 = !DILocation(line: 767, column: 2, scope: !4762)
!4784 = !DILocation(line: 768, column: 6, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 768, column: 6)
!4786 = !DILocation(line: 768, column: 6, scope: !4729)
!4787 = !DILocation(line: 769, column: 10, scope: !4785)
!4788 = !DILocation(line: 769, column: 4, scope: !4785)
!4789 = !DILocation(line: 769, column: 8, scope: !4785)
!4790 = !DILocation(line: 769, column: 3, scope: !4785)
!4791 = !DILocation(line: 771, column: 2, scope: !4729)
!4792 = !DILocation(line: 772, column: 1, scope: !4729)
!4793 = distinct !DISubprogram(name: "acpi_dev_parent", scope: !141, file: !141, line: 464, type: !4794, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4796)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!211, !211}
!4796 = !{!4797, !4798}
!4797 = !DILocalVariable(name: "adev", arg: 1, scope: !4793, file: !141, line: 464, type: !211)
!4798 = !DILocalVariable(name: "__mptr", scope: !4799, file: !141, line: 467, type: !138)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !141, line: 467, column: 10)
!4800 = distinct !DILexicalBlock(scope: !4793, file: !141, line: 466, column: 6)
!4801 = !DILocation(line: 464, column: 71, scope: !4793)
!4802 = !DILocation(line: 466, column: 6, scope: !4800)
!4803 = !DILocation(line: 466, column: 12, scope: !4800)
!4804 = !DILocation(line: 466, column: 16, scope: !4800)
!4805 = !DILocation(line: 466, column: 6, scope: !4793)
!4806 = !DILocation(line: 467, column: 10, scope: !4799)
!4807 = !DILocation(line: 467, column: 10, scope: !4800)
!4808 = !DILocation(line: 467, column: 3, scope: !4800)
!4809 = !DILocation(line: 469, column: 2, scope: !4793)
!4810 = !DILocation(line: 470, column: 1, scope: !4793)
!4811 = distinct !DISubprogram(name: "acpi_add_nondev_subnodes", scope: !2, file: !2, line: 163, type: !4812, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4814)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!240, !196, !189, !147, !222}
!4814 = !{!4815, !4816, !4817, !4818, !4819, !4820, !4821, !4825, !4826, !4827}
!4815 = !DILocalVariable(name: "scope", arg: 1, scope: !4811, file: !2, line: 163, type: !196)
!4816 = !DILocalVariable(name: "links", arg: 2, scope: !4811, file: !2, line: 164, type: !189)
!4817 = !DILocalVariable(name: "list", arg: 3, scope: !4811, file: !2, line: 165, type: !147)
!4818 = !DILocalVariable(name: "parent", arg: 4, scope: !4811, file: !2, line: 166, type: !222)
!4819 = !DILocalVariable(name: "ret", scope: !4811, file: !2, line: 168, type: !240)
!4820 = !DILocalVariable(name: "i", scope: !4811, file: !2, line: 169, type: !67)
!4821 = !DILocalVariable(name: "link", scope: !4822, file: !2, line: 172, type: !189)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !2, line: 171, column: 45)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !2, line: 171, column: 2)
!4824 = distinct !DILexicalBlock(scope: !4811, file: !2, line: 171, column: 2)
!4825 = !DILocalVariable(name: "desc", scope: !4822, file: !2, line: 172, type: !189)
!4826 = !DILocalVariable(name: "handle", scope: !4822, file: !2, line: 173, type: !196)
!4827 = !DILocalVariable(name: "result", scope: !4822, file: !2, line: 174, type: !240)
!4828 = !DILocation(line: 163, column: 50, scope: !4811)
!4829 = !DILocation(line: 164, column: 29, scope: !4811)
!4830 = !DILocation(line: 165, column: 28, scope: !4811)
!4831 = !DILocation(line: 166, column: 32, scope: !4811)
!4832 = !DILocation(line: 168, column: 2, scope: !4811)
!4833 = !DILocation(line: 168, column: 7, scope: !4811)
!4834 = !DILocation(line: 169, column: 2, scope: !4811)
!4835 = !DILocation(line: 169, column: 6, scope: !4811)
!4836 = !DILocation(line: 171, column: 9, scope: !4824)
!4837 = !DILocation(line: 171, column: 7, scope: !4824)
!4838 = !DILocation(line: 171, column: 14, scope: !4823)
!4839 = !DILocation(line: 171, column: 18, scope: !4823)
!4840 = !DILocation(line: 171, column: 33, scope: !4823)
!4841 = !DILocation(line: 171, column: 16, scope: !4823)
!4842 = !DILocation(line: 171, column: 2, scope: !4824)
!4843 = !DILocation(line: 172, column: 3, scope: !4822)
!4844 = !DILocation(line: 172, column: 22, scope: !4822)
!4845 = !DILocation(line: 172, column: 29, scope: !4822)
!4846 = !DILocation(line: 173, column: 3, scope: !4822)
!4847 = !DILocation(line: 173, column: 15, scope: !4822)
!4848 = !DILocation(line: 174, column: 3, scope: !4822)
!4849 = !DILocation(line: 174, column: 8, scope: !4822)
!4850 = !DILocation(line: 176, column: 11, scope: !4822)
!4851 = !DILocation(line: 176, column: 26, scope: !4822)
!4852 = !DILocation(line: 176, column: 35, scope: !4822)
!4853 = !DILocation(line: 176, column: 8, scope: !4822)
!4854 = !DILocation(line: 178, column: 7, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 178, column: 7)
!4856 = !DILocation(line: 178, column: 21, scope: !4855)
!4857 = !DILocation(line: 178, column: 27, scope: !4855)
!4858 = !DILocation(line: 178, column: 7, scope: !4822)
!4859 = !DILocation(line: 179, column: 4, scope: !4855)
!4860 = !DILocation(line: 182, column: 7, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 182, column: 7)
!4862 = !DILocation(line: 182, column: 21, scope: !4861)
!4863 = !DILocation(line: 182, column: 33, scope: !4861)
!4864 = !DILocation(line: 182, column: 38, scope: !4861)
!4865 = !DILocation(line: 182, column: 7, scope: !4822)
!4866 = !DILocation(line: 183, column: 4, scope: !4861)
!4867 = !DILocation(line: 186, column: 11, scope: !4822)
!4868 = !DILocation(line: 186, column: 25, scope: !4822)
!4869 = !DILocation(line: 186, column: 37, scope: !4822)
!4870 = !DILocation(line: 186, column: 3, scope: !4822)
!4871 = !DILocation(line: 188, column: 36, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 186, column: 43)
!4873 = !DILocation(line: 188, column: 43, scope: !4872)
!4874 = !DILocation(line: 188, column: 49, scope: !4872)
!4875 = !DILocation(line: 189, column: 9, scope: !4872)
!4876 = !DILocation(line: 188, column: 13, scope: !4872)
!4877 = !DILocation(line: 188, column: 11, scope: !4872)
!4878 = !DILocation(line: 190, column: 4, scope: !4872)
!4879 = !DILocation(line: 192, column: 13, scope: !4872)
!4880 = !DILocation(line: 192, column: 27, scope: !4872)
!4881 = !DILocation(line: 192, column: 49, scope: !4872)
!4882 = !DILocation(line: 192, column: 11, scope: !4872)
!4883 = !DILocation(line: 193, column: 41, scope: !4872)
!4884 = !DILocation(line: 193, column: 49, scope: !4872)
!4885 = !DILocation(line: 193, column: 55, scope: !4872)
!4886 = !DILocation(line: 194, column: 13, scope: !4872)
!4887 = !DILocation(line: 193, column: 13, scope: !4872)
!4888 = !DILocation(line: 193, column: 11, scope: !4872)
!4889 = !DILocation(line: 195, column: 4, scope: !4872)
!4890 = !DILocation(line: 197, column: 12, scope: !4872)
!4891 = !DILocation(line: 197, column: 26, scope: !4872)
!4892 = !DILocation(line: 197, column: 9, scope: !4872)
!4893 = !DILocation(line: 198, column: 41, scope: !4872)
!4894 = !DILocation(line: 198, column: 53, scope: !4872)
!4895 = !DILocation(line: 199, column: 13, scope: !4872)
!4896 = !DILocation(line: 199, column: 19, scope: !4872)
!4897 = !DILocation(line: 198, column: 13, scope: !4872)
!4898 = !DILocation(line: 198, column: 11, scope: !4872)
!4899 = !DILocation(line: 200, column: 4, scope: !4872)
!4900 = !DILocation(line: 202, column: 11, scope: !4872)
!4901 = !DILocation(line: 203, column: 4, scope: !4872)
!4902 = !DILocation(line: 205, column: 9, scope: !4822)
!4903 = !DILocation(line: 205, column: 13, scope: !4822)
!4904 = !DILocation(line: 205, column: 16, scope: !4822)
!4905 = !DILocation(line: 205, column: 7, scope: !4822)
!4906 = !DILocation(line: 206, column: 2, scope: !4823)
!4907 = !DILocation(line: 206, column: 2, scope: !4822)
!4908 = !DILocation(line: 171, column: 41, scope: !4823)
!4909 = !DILocation(line: 171, column: 2, scope: !4823)
!4910 = distinct !{!4910, !4842, !4911, !2268, !2269}
!4911 = !DILocation(line: 206, column: 2, scope: !4824)
!4912 = !DILocation(line: 208, column: 9, scope: !4811)
!4913 = !DILocation(line: 209, column: 1, scope: !4811)
!4914 = !DILocation(line: 208, column: 2, scope: !4811)
!4915 = distinct !DISubprogram(name: "acpi_nondev_subnode_ok", scope: !2, file: !2, line: 144, type: !4916, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!240, !196, !153, !147, !222}
!4918 = !{!4919, !4920, !4921, !4922, !4923, !4924}
!4919 = !DILocalVariable(name: "scope", arg: 1, scope: !4915, file: !2, line: 144, type: !196)
!4920 = !DILocalVariable(name: "link", arg: 2, scope: !4915, file: !2, line: 145, type: !153)
!4921 = !DILocalVariable(name: "list", arg: 3, scope: !4915, file: !2, line: 146, type: !147)
!4922 = !DILocalVariable(name: "parent", arg: 4, scope: !4915, file: !2, line: 147, type: !222)
!4923 = !DILocalVariable(name: "handle", scope: !4915, file: !2, line: 149, type: !196)
!4924 = !DILocalVariable(name: "status", scope: !4915, file: !2, line: 150, type: !2008)
!4925 = !DILocation(line: 144, column: 48, scope: !4915)
!4926 = !DILocation(line: 145, column: 33, scope: !4915)
!4927 = !DILocation(line: 146, column: 26, scope: !4915)
!4928 = !DILocation(line: 147, column: 30, scope: !4915)
!4929 = !DILocation(line: 149, column: 2, scope: !4915)
!4930 = !DILocation(line: 149, column: 14, scope: !4915)
!4931 = !DILocation(line: 150, column: 2, scope: !4915)
!4932 = !DILocation(line: 150, column: 14, scope: !4915)
!4933 = !DILocation(line: 152, column: 7, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4915, file: !2, line: 152, column: 6)
!4935 = !DILocation(line: 152, column: 6, scope: !4915)
!4936 = !DILocation(line: 153, column: 3, scope: !4934)
!4937 = !DILocation(line: 155, column: 27, scope: !4915)
!4938 = !DILocation(line: 155, column: 34, scope: !4915)
!4939 = !DILocation(line: 155, column: 48, scope: !4915)
!4940 = !DILocation(line: 155, column: 67, scope: !4915)
!4941 = !DILocation(line: 155, column: 11, scope: !4915)
!4942 = !DILocation(line: 155, column: 9, scope: !4915)
!4943 = !DILocation(line: 157, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4915, file: !2, line: 157, column: 6)
!4945 = !DILocation(line: 157, column: 6, scope: !4915)
!4946 = !DILocation(line: 158, column: 3, scope: !4944)
!4947 = !DILocation(line: 160, column: 37, scope: !4915)
!4948 = !DILocation(line: 160, column: 45, scope: !4915)
!4949 = !DILocation(line: 160, column: 51, scope: !4915)
!4950 = !DILocation(line: 160, column: 57, scope: !4915)
!4951 = !DILocation(line: 160, column: 9, scope: !4915)
!4952 = !DILocation(line: 160, column: 2, scope: !4915)
!4953 = !DILocation(line: 161, column: 1, scope: !4915)
!4954 = distinct !DISubprogram(name: "acpi_nondev_subnode_data_ok", scope: !2, file: !2, line: 123, type: !4916, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4955)
!4955 = !{!4956, !4957, !4958, !4959, !4960, !4961}
!4956 = !DILocalVariable(name: "handle", arg: 1, scope: !4954, file: !2, line: 123, type: !196)
!4957 = !DILocalVariable(name: "link", arg: 2, scope: !4954, file: !2, line: 124, type: !153)
!4958 = !DILocalVariable(name: "list", arg: 3, scope: !4954, file: !2, line: 125, type: !147)
!4959 = !DILocalVariable(name: "parent", arg: 4, scope: !4954, file: !2, line: 126, type: !222)
!4960 = !DILocalVariable(name: "buf", scope: !4954, file: !2, line: 128, type: !2216)
!4961 = !DILocalVariable(name: "status", scope: !4954, file: !2, line: 129, type: !2008)
!4962 = !DILocation(line: 123, column: 53, scope: !4954)
!4963 = !DILocation(line: 124, column: 31, scope: !4954)
!4964 = !DILocation(line: 125, column: 24, scope: !4954)
!4965 = !DILocation(line: 126, column: 28, scope: !4954)
!4966 = !DILocation(line: 128, column: 2, scope: !4954)
!4967 = !DILocation(line: 128, column: 21, scope: !4954)
!4968 = !DILocation(line: 129, column: 2, scope: !4954)
!4969 = !DILocation(line: 129, column: 14, scope: !4954)
!4970 = !DILocation(line: 131, column: 38, scope: !4954)
!4971 = !DILocation(line: 131, column: 11, scope: !4954)
!4972 = !DILocation(line: 131, column: 9, scope: !4954)
!4973 = !DILocation(line: 133, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4954, file: !2, line: 133, column: 6)
!4975 = !DILocation(line: 133, column: 6, scope: !4954)
!4976 = !DILocation(line: 134, column: 3, scope: !4974)
!4977 = !DILocation(line: 136, column: 38, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4954, file: !2, line: 136, column: 6)
!4979 = !DILocation(line: 136, column: 47, scope: !4978)
!4980 = !DILocation(line: 136, column: 55, scope: !4978)
!4981 = !DILocation(line: 136, column: 61, scope: !4978)
!4982 = !DILocation(line: 137, column: 6, scope: !4978)
!4983 = !DILocation(line: 136, column: 6, scope: !4978)
!4984 = !DILocation(line: 136, column: 6, scope: !4954)
!4985 = !DILocation(line: 138, column: 3, scope: !4978)
!4986 = !DILocation(line: 140, column: 2, scope: !4954)
!4987 = !DILocation(line: 141, column: 2, scope: !4954)
!4988 = !DILocation(line: 142, column: 1, scope: !4954)
!4989 = distinct !DISubprogram(name: "acpi_nondev_subnode_extract", scope: !2, file: !2, line: 70, type: !4990, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4992)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!240, !189, !196, !153, !147, !222}
!4992 = !{!4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5003}
!4993 = !DILocalVariable(name: "desc", arg: 1, scope: !4989, file: !2, line: 70, type: !189)
!4994 = !DILocalVariable(name: "handle", arg: 2, scope: !4989, file: !2, line: 71, type: !196)
!4995 = !DILocalVariable(name: "link", arg: 3, scope: !4989, file: !2, line: 72, type: !153)
!4996 = !DILocalVariable(name: "list", arg: 4, scope: !4989, file: !2, line: 73, type: !147)
!4997 = !DILocalVariable(name: "parent", arg: 5, scope: !4989, file: !2, line: 74, type: !222)
!4998 = !DILocalVariable(name: "dn", scope: !4989, file: !2, line: 76, type: !1987)
!4999 = !DILocalVariable(name: "result", scope: !4989, file: !2, line: 77, type: !240)
!5000 = !DILocalVariable(name: "scope", scope: !5001, file: !2, line: 92, type: !196)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !2, line: 91, column: 14)
!5002 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 91, column: 6)
!5003 = !DILocalVariable(name: "status", scope: !5001, file: !2, line: 93, type: !2008)
!5004 = !DILocation(line: 70, column: 60, scope: !4989)
!5005 = !DILocation(line: 71, column: 18, scope: !4989)
!5006 = !DILocation(line: 72, column: 31, scope: !4989)
!5007 = !DILocation(line: 73, column: 24, scope: !4989)
!5008 = !DILocation(line: 74, column: 28, scope: !4989)
!5009 = !DILocation(line: 76, column: 2, scope: !4989)
!5010 = !DILocation(line: 76, column: 25, scope: !4989)
!5011 = !DILocation(line: 77, column: 2, scope: !4989)
!5012 = !DILocation(line: 77, column: 7, scope: !4989)
!5013 = !DILocation(line: 79, column: 7, scope: !4989)
!5014 = !DILocation(line: 79, column: 5, scope: !4989)
!5015 = !DILocation(line: 80, column: 7, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 80, column: 6)
!5017 = !DILocation(line: 80, column: 6, scope: !4989)
!5018 = !DILocation(line: 81, column: 3, scope: !5016)
!5019 = !DILocation(line: 83, column: 13, scope: !4989)
!5020 = !DILocation(line: 83, column: 27, scope: !4989)
!5021 = !DILocation(line: 83, column: 46, scope: !4989)
!5022 = !DILocation(line: 83, column: 2, scope: !4989)
!5023 = !DILocation(line: 83, column: 6, scope: !4989)
!5024 = !DILocation(line: 83, column: 11, scope: !4989)
!5025 = !DILocation(line: 84, column: 15, scope: !4989)
!5026 = !DILocation(line: 84, column: 19, scope: !4989)
!5027 = !DILocation(line: 84, column: 2, scope: !4989)
!5028 = !DILocation(line: 85, column: 15, scope: !4989)
!5029 = !DILocation(line: 85, column: 2, scope: !4989)
!5030 = !DILocation(line: 85, column: 6, scope: !4989)
!5031 = !DILocation(line: 85, column: 13, scope: !4989)
!5032 = !DILocation(line: 86, column: 18, scope: !4989)
!5033 = !DILocation(line: 86, column: 22, scope: !4989)
!5034 = !DILocation(line: 86, column: 27, scope: !4989)
!5035 = !DILocation(line: 86, column: 2, scope: !4989)
!5036 = !DILocation(line: 87, column: 18, scope: !4989)
!5037 = !DILocation(line: 87, column: 22, scope: !4989)
!5038 = !DILocation(line: 87, column: 27, scope: !4989)
!5039 = !DILocation(line: 87, column: 2, scope: !4989)
!5040 = !DILocation(line: 89, column: 35, scope: !4989)
!5041 = !DILocation(line: 89, column: 43, scope: !4989)
!5042 = !DILocation(line: 89, column: 50, scope: !4989)
!5043 = !DILocation(line: 89, column: 54, scope: !4989)
!5044 = !DILocation(line: 89, column: 11, scope: !4989)
!5045 = !DILocation(line: 89, column: 9, scope: !4989)
!5046 = !DILocation(line: 91, column: 6, scope: !5002)
!5047 = !DILocation(line: 91, column: 6, scope: !4989)
!5048 = !DILocation(line: 92, column: 3, scope: !5001)
!5049 = !DILocation(line: 92, column: 15, scope: !5001)
!5050 = !DILocation(line: 93, column: 3, scope: !5001)
!5051 = !DILocation(line: 93, column: 15, scope: !5001)
!5052 = !DILocation(line: 101, column: 28, scope: !5001)
!5053 = !DILocation(line: 101, column: 12, scope: !5001)
!5054 = !DILocation(line: 101, column: 10, scope: !5001)
!5055 = !DILocation(line: 102, column: 7, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5001, file: !2, line: 102, column: 7)
!5057 = !DILocation(line: 103, column: 7, scope: !5056)
!5058 = !DILocation(line: 103, column: 41, scope: !5056)
!5059 = !DILocation(line: 103, column: 48, scope: !5056)
!5060 = !DILocation(line: 103, column: 55, scope: !5056)
!5061 = !DILocation(line: 103, column: 59, scope: !5056)
!5062 = !DILocation(line: 104, column: 14, scope: !5056)
!5063 = !DILocation(line: 104, column: 18, scope: !5056)
!5064 = !DILocation(line: 103, column: 10, scope: !5056)
!5065 = !DILocation(line: 102, column: 7, scope: !5001)
!5066 = !DILocation(line: 105, column: 11, scope: !5056)
!5067 = !DILocation(line: 105, column: 4, scope: !5056)
!5068 = !DILocation(line: 106, column: 2, scope: !5002)
!5069 = !DILocation(line: 106, column: 2, scope: !5001)
!5070 = !DILocation(line: 106, column: 50, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5002, file: !2, line: 106, column: 13)
!5072 = !DILocation(line: 106, column: 57, scope: !5071)
!5073 = !DILocation(line: 106, column: 61, scope: !5071)
!5074 = !DILocation(line: 107, column: 10, scope: !5071)
!5075 = !DILocation(line: 107, column: 14, scope: !5071)
!5076 = !DILocation(line: 106, column: 13, scope: !5071)
!5077 = !DILocation(line: 106, column: 13, scope: !5002)
!5078 = !DILocation(line: 108, column: 10, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5071, file: !2, line: 107, column: 23)
!5080 = !DILocation(line: 109, column: 2, scope: !5079)
!5081 = !DILocation(line: 111, column: 6, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 111, column: 6)
!5083 = !DILocation(line: 111, column: 6, scope: !4989)
!5084 = !DILocation(line: 112, column: 16, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5082, file: !2, line: 111, column: 14)
!5086 = !DILocation(line: 112, column: 3, scope: !5085)
!5087 = !DILocation(line: 112, column: 7, scope: !5085)
!5088 = !DILocation(line: 112, column: 14, scope: !5085)
!5089 = !DILocation(line: 113, column: 22, scope: !5085)
!5090 = !DILocation(line: 113, column: 3, scope: !5085)
!5091 = !DILocation(line: 113, column: 7, scope: !5085)
!5092 = !DILocation(line: 113, column: 12, scope: !5085)
!5093 = !DILocation(line: 113, column: 20, scope: !5085)
!5094 = !DILocation(line: 114, column: 18, scope: !5085)
!5095 = !DILocation(line: 114, column: 22, scope: !5085)
!5096 = !DILocation(line: 114, column: 31, scope: !5085)
!5097 = !DILocation(line: 114, column: 3, scope: !5085)
!5098 = !DILocation(line: 115, column: 3, scope: !5085)
!5099 = !DILocation(line: 118, column: 8, scope: !4989)
!5100 = !DILocation(line: 118, column: 2, scope: !4989)
!5101 = !DILocation(line: 119, column: 2, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !2, line: 119, column: 2)
!5103 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 119, column: 2)
!5104 = !DILocation(line: 119, column: 2, scope: !5103)
!5105 = !DILocation(line: 120, column: 2, scope: !4989)
!5106 = !DILocation(line: 121, column: 1, scope: !4989)
!5107 = !DISubprogram(name: "acpi_get_handle", scope: !2357, file: !2357, line: 527, type: !5108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!2008, !196, !150, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!5111 = distinct !DISubprogram(name: "fwnode_init", scope: !219, file: !219, line: 192, type: !5112, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !222, !224}
!5114 = !{!5115, !5116}
!5115 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5111, file: !219, line: 192, type: !222)
!5116 = !DILocalVariable(name: "ops", arg: 2, scope: !5111, file: !219, line: 193, type: !224)
!5117 = !DILocation(line: 192, column: 54, scope: !5111)
!5118 = !DILocation(line: 193, column: 43, scope: !5111)
!5119 = !DILocation(line: 195, column: 16, scope: !5111)
!5120 = !DILocation(line: 195, column: 2, scope: !5111)
!5121 = !DILocation(line: 195, column: 10, scope: !5111)
!5122 = !DILocation(line: 195, column: 14, scope: !5111)
!5123 = !DILocation(line: 196, column: 18, scope: !5111)
!5124 = !DILocation(line: 196, column: 26, scope: !5111)
!5125 = !DILocation(line: 196, column: 2, scope: !5111)
!5126 = !DILocation(line: 197, column: 18, scope: !5111)
!5127 = !DILocation(line: 197, column: 26, scope: !5111)
!5128 = !DILocation(line: 197, column: 2, scope: !5111)
!5129 = !DILocation(line: 198, column: 1, scope: !5111)
!5130 = !DISubprogram(name: "acpi_get_parent", scope: !2357, file: !2357, line: 581, type: !5131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!2008, !196, !5110}
!5133 = !DISubprogram(name: "kfree", scope: !111, file: !111, line: 227, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5134 = !DISubprogram(name: "acpi_attach_data", scope: !2357, file: !2357, line: 531, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!2008, !196, !5137, !138}
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !132, line: 1064, baseType: !5138)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{null, !196, !138}
!5141 = distinct !DISubprogram(name: "acpi_nondev_subnode_tag", scope: !2, file: !2, line: 351, type: !5139, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5142)
!5142 = !{!5143, !5144}
!5143 = !DILocalVariable(name: "handle", arg: 1, scope: !5141, file: !2, line: 351, type: !196)
!5144 = !DILocalVariable(name: "context", arg: 2, scope: !5141, file: !2, line: 351, type: !138)
!5145 = !DILocation(line: 351, column: 49, scope: !5141)
!5146 = !DILocation(line: 351, column: 63, scope: !5141)
!5147 = !DILocation(line: 353, column: 1, scope: !5141)
!5148 = !DISubprogram(name: "acpi_detach_data", scope: !2357, file: !2357, line: 535, type: !5149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!2008, !196, !5137}
!5151 = !DISubprogram(name: "wait_for_completion", scope: !998, file: !998, line: 102, type: !5152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !996}
!5154 = distinct !DISubprogram(name: "list_del", scope: !2177, file: !2177, line: 227, type: !2178, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5155)
!5155 = !{!5156}
!5156 = !DILocalVariable(name: "entry", arg: 1, scope: !5154, file: !2177, line: 227, type: !147)
!5157 = !DILocation(line: 227, column: 47, scope: !5154)
!5158 = !DILocation(line: 229, column: 19, scope: !5154)
!5159 = !DILocation(line: 229, column: 2, scope: !5154)
!5160 = !DILocation(line: 230, column: 2, scope: !5154)
!5161 = !DILocation(line: 230, column: 9, scope: !5154)
!5162 = !DILocation(line: 230, column: 14, scope: !5154)
!5163 = !DILocation(line: 231, column: 2, scope: !5154)
!5164 = !DILocation(line: 231, column: 9, scope: !5154)
!5165 = !DILocation(line: 231, column: 14, scope: !5154)
!5166 = !DILocation(line: 232, column: 1, scope: !5154)
!5167 = distinct !DISubprogram(name: "__list_del_entry", scope: !2177, file: !2177, line: 213, type: !2178, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5168)
!5168 = !{!5169}
!5169 = !DILocalVariable(name: "entry", arg: 1, scope: !5167, file: !2177, line: 213, type: !147)
!5170 = !DILocation(line: 213, column: 55, scope: !5167)
!5171 = !DILocation(line: 215, column: 30, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5167, file: !2177, line: 215, column: 6)
!5173 = !DILocation(line: 215, column: 7, scope: !5172)
!5174 = !DILocation(line: 215, column: 6, scope: !5167)
!5175 = !DILocation(line: 216, column: 3, scope: !5172)
!5176 = !DILocation(line: 218, column: 13, scope: !5167)
!5177 = !DILocation(line: 218, column: 20, scope: !5167)
!5178 = !DILocation(line: 218, column: 26, scope: !5167)
!5179 = !DILocation(line: 218, column: 33, scope: !5167)
!5180 = !DILocation(line: 218, column: 2, scope: !5167)
!5181 = !DILocation(line: 219, column: 1, scope: !5167)
!5182 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2177, file: !2177, line: 134, type: !5183, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5185)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!240, !147}
!5185 = !{!5186}
!5186 = !DILocalVariable(name: "entry", arg: 1, scope: !5182, file: !2177, line: 134, type: !147)
!5187 = !DILocation(line: 134, column: 61, scope: !5182)
!5188 = !DILocation(line: 136, column: 2, scope: !5182)
!5189 = distinct !DISubprogram(name: "__list_del", scope: !2177, file: !2177, line: 193, type: !2199, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5190)
!5190 = !{!5191, !5192}
!5191 = !DILocalVariable(name: "prev", arg: 1, scope: !5189, file: !2177, line: 193, type: !147)
!5192 = !DILocalVariable(name: "next", arg: 2, scope: !5189, file: !2177, line: 193, type: !147)
!5193 = !DILocation(line: 193, column: 50, scope: !5189)
!5194 = !DILocation(line: 193, column: 75, scope: !5189)
!5195 = !DILocation(line: 195, column: 15, scope: !5189)
!5196 = !DILocation(line: 195, column: 2, scope: !5189)
!5197 = !DILocation(line: 195, column: 8, scope: !5189)
!5198 = !DILocation(line: 195, column: 13, scope: !5189)
!5199 = !DILocation(line: 196, column: 2, scope: !5189)
!5200 = !DILocation(line: 196, column: 2, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5189, file: !2177, line: 196, column: 2)
!5202 = !DILocation(line: 196, column: 2, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5201, file: !2177, line: 196, column: 2)
!5204 = !DILocation(line: 196, column: 2, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5201, file: !2177, line: 196, column: 2)
!5206 = !DILocation(line: 197, column: 1, scope: !5189)
!5207 = !DISubprogram(name: "acpi_device_is_present", scope: !2698, file: !2698, line: 110, type: !5208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!240, !2831}
!5210 = !DISubprogram(name: "acpi_device_get_match_data", scope: !2694, file: !2694, line: 714, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5211 = !DISubprogram(name: "acpi_dma_supported", scope: !141, file: !141, line: 627, type: !5208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5212 = !DISubprogram(name: "acpi_get_dma_attr", scope: !141, file: !141, line: 628, type: !5213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!99, !211}
!5215 = distinct !DISubprogram(name: "acpi_node_prop_read", scope: !2, file: !2, line: 1167, type: !5216, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!67, !242, !150, !120, !138, !377}
!5218 = !{!5219, !5220, !5221, !5222, !5223}
!5219 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5215, file: !2, line: 1167, type: !242)
!5220 = !DILocalVariable(name: "propname", arg: 2, scope: !5215, file: !2, line: 1168, type: !150)
!5221 = !DILocalVariable(name: "proptype", arg: 3, scope: !5215, file: !2, line: 1168, type: !120)
!5222 = !DILocalVariable(name: "val", arg: 4, scope: !5215, file: !2, line: 1169, type: !138)
!5223 = !DILocalVariable(name: "nval", arg: 5, scope: !5215, file: !2, line: 1169, type: !377)
!5224 = !DILocation(line: 1167, column: 60, scope: !5215)
!5225 = !DILocation(line: 1168, column: 23, scope: !5215)
!5226 = !DILocation(line: 1168, column: 52, scope: !5215)
!5227 = !DILocation(line: 1169, column: 17, scope: !5215)
!5228 = !DILocation(line: 1169, column: 29, scope: !5215)
!5229 = !DILocation(line: 1171, column: 54, scope: !5215)
!5230 = !DILocation(line: 1171, column: 29, scope: !5215)
!5231 = !DILocation(line: 1172, column: 8, scope: !5215)
!5232 = !DILocation(line: 1172, column: 18, scope: !5215)
!5233 = !DILocation(line: 1172, column: 28, scope: !5215)
!5234 = !DILocation(line: 1172, column: 33, scope: !5215)
!5235 = !DILocation(line: 1171, column: 9, scope: !5215)
!5236 = !DILocation(line: 1171, column: 2, scope: !5215)
!5237 = distinct !DISubprogram(name: "acpi_data_prop_read", scope: !2, file: !2, line: 1067, type: !5238, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!67, !2853, !150, !120, !138, !377}
!5240 = !{!5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5252, !5253, !5254, !5255, !5256, !5258, !5259, !5260, !5261, !5262, !5264, !5265, !5266, !5267, !5268, !5270, !5271, !5272, !5273, !5274, !5276}
!5241 = !DILocalVariable(name: "data", arg: 1, scope: !5237, file: !2, line: 1067, type: !2853)
!5242 = !DILocalVariable(name: "propname", arg: 2, scope: !5237, file: !2, line: 1068, type: !150)
!5243 = !DILocalVariable(name: "proptype", arg: 3, scope: !5237, file: !2, line: 1069, type: !120)
!5244 = !DILocalVariable(name: "val", arg: 4, scope: !5237, file: !2, line: 1070, type: !138)
!5245 = !DILocalVariable(name: "nval", arg: 5, scope: !5237, file: !2, line: 1070, type: !377)
!5246 = !DILocalVariable(name: "obj", scope: !5237, file: !2, line: 1072, type: !153)
!5247 = !DILocalVariable(name: "items", scope: !5237, file: !2, line: 1073, type: !153)
!5248 = !DILocalVariable(name: "ret", scope: !5237, file: !2, line: 1074, type: !67)
!5249 = !DILocalVariable(name: "__items", scope: !5250, file: !2, line: 1130, type: !153)
!5250 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 1130, column: 9)
!5251 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1128, column: 20)
!5252 = !DILocalVariable(name: "__val", scope: !5250, file: !2, line: 1130, type: !179)
!5253 = !DILocalVariable(name: "__nval", scope: !5250, file: !2, line: 1130, type: !377)
!5254 = !DILocalVariable(name: "i", scope: !5250, file: !2, line: 1130, type: !377)
!5255 = !DILocalVariable(name: "ret", scope: !5250, file: !2, line: 1130, type: !67)
!5256 = !DILocalVariable(name: "__items", scope: !5257, file: !2, line: 1133, type: !153)
!5257 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 1133, column: 9)
!5258 = !DILocalVariable(name: "__val", scope: !5257, file: !2, line: 1133, type: !2021)
!5259 = !DILocalVariable(name: "__nval", scope: !5257, file: !2, line: 1133, type: !377)
!5260 = !DILocalVariable(name: "i", scope: !5257, file: !2, line: 1133, type: !377)
!5261 = !DILocalVariable(name: "ret", scope: !5257, file: !2, line: 1133, type: !67)
!5262 = !DILocalVariable(name: "__items", scope: !5263, file: !2, line: 1136, type: !153)
!5263 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 1136, column: 9)
!5264 = !DILocalVariable(name: "__val", scope: !5263, file: !2, line: 1136, type: !2022)
!5265 = !DILocalVariable(name: "__nval", scope: !5263, file: !2, line: 1136, type: !377)
!5266 = !DILocalVariable(name: "i", scope: !5263, file: !2, line: 1136, type: !377)
!5267 = !DILocalVariable(name: "ret", scope: !5263, file: !2, line: 1136, type: !67)
!5268 = !DILocalVariable(name: "__items", scope: !5269, file: !2, line: 1139, type: !153)
!5269 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 1139, column: 9)
!5270 = !DILocalVariable(name: "__val", scope: !5269, file: !2, line: 1139, type: !1629)
!5271 = !DILocalVariable(name: "__nval", scope: !5269, file: !2, line: 1139, type: !377)
!5272 = !DILocalVariable(name: "i", scope: !5269, file: !2, line: 1139, type: !377)
!5273 = !DILocalVariable(name: "ret", scope: !5269, file: !2, line: 1139, type: !67)
!5274 = !DILocalVariable(name: "__UNIQUE_ID___x208", scope: !5275, file: !2, line: 1142, type: !159)
!5275 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 1142, column: 10)
!5276 = !DILocalVariable(name: "__UNIQUE_ID___y209", scope: !5275, file: !2, line: 1142, type: !159)
!5277 = !DILocation(line: 1067, column: 63, scope: !5237)
!5278 = !DILocation(line: 1068, column: 23, scope: !5237)
!5279 = !DILocation(line: 1069, column: 30, scope: !5237)
!5280 = !DILocation(line: 1070, column: 17, scope: !5237)
!5281 = !DILocation(line: 1070, column: 29, scope: !5237)
!5282 = !DILocation(line: 1072, column: 2, scope: !5237)
!5283 = !DILocation(line: 1072, column: 27, scope: !5237)
!5284 = !DILocation(line: 1073, column: 2, scope: !5237)
!5285 = !DILocation(line: 1073, column: 27, scope: !5237)
!5286 = !DILocation(line: 1074, column: 2, scope: !5237)
!5287 = !DILocation(line: 1074, column: 6, scope: !5237)
!5288 = !DILocation(line: 1076, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1076, column: 6)
!5290 = !DILocation(line: 1076, column: 11, scope: !5289)
!5291 = !DILocation(line: 1076, column: 16, scope: !5289)
!5292 = !DILocation(line: 1076, column: 20, scope: !5289)
!5293 = !DILocation(line: 1076, column: 6, scope: !5237)
!5294 = !DILocation(line: 1077, column: 36, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 1076, column: 25)
!5296 = !DILocation(line: 1077, column: 42, scope: !5295)
!5297 = !DILocation(line: 1077, column: 52, scope: !5295)
!5298 = !DILocation(line: 1077, column: 62, scope: !5295)
!5299 = !DILocation(line: 1077, column: 9, scope: !5295)
!5300 = !DILocation(line: 1077, column: 7, scope: !5295)
!5301 = !DILocation(line: 1082, column: 7, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5295, file: !2, line: 1082, column: 7)
!5303 = !DILocation(line: 1082, column: 11, scope: !5302)
!5304 = !DILocation(line: 1082, column: 16, scope: !5302)
!5305 = !DILocation(line: 1082, column: 19, scope: !5302)
!5306 = !DILocation(line: 1082, column: 23, scope: !5302)
!5307 = !DILocation(line: 1082, column: 7, scope: !5295)
!5308 = !DILocation(line: 1083, column: 11, scope: !5302)
!5309 = !DILocation(line: 1083, column: 4, scope: !5302)
!5310 = !DILocation(line: 1090, column: 2, scope: !5295)
!5311 = !DILocation(line: 1092, column: 37, scope: !5237)
!5312 = !DILocation(line: 1092, column: 43, scope: !5237)
!5313 = !DILocation(line: 1092, column: 8, scope: !5237)
!5314 = !DILocation(line: 1092, column: 6, scope: !5237)
!5315 = !DILocation(line: 1093, column: 6, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1093, column: 6)
!5317 = !DILocation(line: 1093, column: 10, scope: !5316)
!5318 = !DILocation(line: 1093, column: 13, scope: !5316)
!5319 = !DILocation(line: 1093, column: 22, scope: !5316)
!5320 = !DILocation(line: 1093, column: 37, scope: !5316)
!5321 = !DILocation(line: 1093, column: 40, scope: !5316)
!5322 = !DILocation(line: 1093, column: 49, scope: !5316)
!5323 = !DILocation(line: 1093, column: 6, scope: !5237)
!5324 = !DILocation(line: 1094, column: 32, scope: !5316)
!5325 = !DILocation(line: 1094, column: 38, scope: !5316)
!5326 = !DILocation(line: 1094, column: 9, scope: !5316)
!5327 = !DILocation(line: 1094, column: 7, scope: !5316)
!5328 = !DILocation(line: 1094, column: 3, scope: !5316)
!5329 = !DILocation(line: 1096, column: 6, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1096, column: 6)
!5331 = !DILocation(line: 1096, column: 6, scope: !5237)
!5332 = !DILocation(line: 1097, column: 10, scope: !5330)
!5333 = !DILocation(line: 1097, column: 3, scope: !5330)
!5334 = !DILocation(line: 1099, column: 7, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1099, column: 6)
!5336 = !DILocation(line: 1099, column: 6, scope: !5237)
!5337 = !DILocation(line: 1100, column: 7, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !2, line: 1100, column: 7)
!5339 = distinct !DILexicalBlock(scope: !5335, file: !2, line: 1099, column: 12)
!5340 = !DILocation(line: 1100, column: 12, scope: !5338)
!5341 = !DILocation(line: 1100, column: 17, scope: !5338)
!5342 = !DILocation(line: 1100, column: 7, scope: !5339)
!5343 = !DILocation(line: 1101, column: 11, scope: !5338)
!5344 = !DILocation(line: 1101, column: 23, scope: !5338)
!5345 = !DILocation(line: 1101, column: 4, scope: !5338)
!5346 = !DILocation(line: 1103, column: 10, scope: !5339)
!5347 = !DILocation(line: 1103, column: 23, scope: !5339)
!5348 = !DILocation(line: 1103, column: 3, scope: !5339)
!5349 = !DILocation(line: 1106, column: 10, scope: !5237)
!5350 = !DILocation(line: 1106, column: 2, scope: !5237)
!5351 = !DILocation(line: 1110, column: 7, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !2, line: 1110, column: 7)
!5353 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1106, column: 20)
!5354 = !DILocation(line: 1110, column: 12, scope: !5352)
!5355 = !DILocation(line: 1110, column: 17, scope: !5352)
!5356 = !DILocation(line: 1110, column: 7, scope: !5353)
!5357 = !DILocation(line: 1111, column: 8, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !2, line: 1111, column: 8)
!5359 = distinct !DILexicalBlock(scope: !5352, file: !2, line: 1110, column: 38)
!5360 = !DILocation(line: 1111, column: 15, scope: !5358)
!5361 = !DILocation(line: 1111, column: 27, scope: !5358)
!5362 = !DILocation(line: 1111, column: 13, scope: !5358)
!5363 = !DILocation(line: 1111, column: 8, scope: !5359)
!5364 = !DILocation(line: 1112, column: 5, scope: !5358)
!5365 = !DILocation(line: 1113, column: 3, scope: !5359)
!5366 = !DILocation(line: 1114, column: 8, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !2, line: 1114, column: 8)
!5368 = distinct !DILexicalBlock(scope: !5352, file: !2, line: 1113, column: 10)
!5369 = !DILocation(line: 1114, column: 15, scope: !5367)
!5370 = !DILocation(line: 1114, column: 28, scope: !5367)
!5371 = !DILocation(line: 1114, column: 13, scope: !5367)
!5372 = !DILocation(line: 1114, column: 8, scope: !5368)
!5373 = !DILocation(line: 1115, column: 5, scope: !5367)
!5374 = !DILocation(line: 1117, column: 3, scope: !5353)
!5375 = !DILocation(line: 1120, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 1120, column: 6)
!5377 = !DILocation(line: 1120, column: 11, scope: !5376)
!5378 = !DILocation(line: 1120, column: 16, scope: !5376)
!5379 = !DILocation(line: 1120, column: 6, scope: !5237)
!5380 = !DILocation(line: 1121, column: 7, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5382, file: !2, line: 1121, column: 7)
!5382 = distinct !DILexicalBlock(scope: !5376, file: !2, line: 1120, column: 37)
!5383 = !DILocation(line: 1121, column: 16, scope: !5381)
!5384 = !DILocation(line: 1121, column: 7, scope: !5382)
!5385 = !DILocation(line: 1122, column: 4, scope: !5381)
!5386 = !DILocation(line: 1123, column: 11, scope: !5382)
!5387 = !DILocation(line: 1123, column: 9, scope: !5382)
!5388 = !DILocation(line: 1124, column: 2, scope: !5382)
!5389 = !DILocation(line: 1125, column: 11, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5376, file: !2, line: 1124, column: 9)
!5391 = !DILocation(line: 1125, column: 24, scope: !5390)
!5392 = !DILocation(line: 1125, column: 9, scope: !5390)
!5393 = !DILocation(line: 1128, column: 10, scope: !5237)
!5394 = !DILocation(line: 1128, column: 2, scope: !5237)
!5395 = !DILocation(line: 1130, column: 9, scope: !5250)
!5396 = !DILocation(line: 1130, column: 9, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5250, file: !2, line: 1130, column: 9)
!5398 = !DILocation(line: 1130, column: 9, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 1130, column: 9)
!5400 = !DILocation(line: 1130, column: 9, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 1130, column: 9)
!5402 = distinct !DILexicalBlock(scope: !5399, file: !2, line: 1130, column: 9)
!5403 = !DILocation(line: 1130, column: 9, scope: !5402)
!5404 = !DILocation(line: 1130, column: 9, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !2, line: 1130, column: 9)
!5406 = !DILocation(line: 1130, column: 9, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 1130, column: 9)
!5408 = !DILocation(line: 1130, column: 9, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5407, file: !2, line: 1130, column: 9)
!5410 = !DILocation(line: 1130, column: 9, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 1130, column: 9)
!5412 = !DILocation(line: 1130, column: 9, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 1130, column: 9)
!5414 = distinct !{!5414, !5396, !5396, !2268, !2269}
!5415 = !DILocation(line: 1130, column: 9, scope: !5251)
!5416 = !DILocation(line: 1130, column: 7, scope: !5251)
!5417 = !DILocation(line: 1131, column: 3, scope: !5251)
!5418 = !DILocation(line: 1133, column: 9, scope: !5257)
!5419 = !DILocation(line: 1133, column: 9, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5257, file: !2, line: 1133, column: 9)
!5421 = !DILocation(line: 1133, column: 9, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5420, file: !2, line: 1133, column: 9)
!5423 = !DILocation(line: 1133, column: 9, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5425, file: !2, line: 1133, column: 9)
!5425 = distinct !DILexicalBlock(scope: !5422, file: !2, line: 1133, column: 9)
!5426 = !DILocation(line: 1133, column: 9, scope: !5425)
!5427 = !DILocation(line: 1133, column: 9, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5424, file: !2, line: 1133, column: 9)
!5429 = !DILocation(line: 1133, column: 9, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5425, file: !2, line: 1133, column: 9)
!5431 = !DILocation(line: 1133, column: 9, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5430, file: !2, line: 1133, column: 9)
!5433 = !DILocation(line: 1133, column: 9, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5425, file: !2, line: 1133, column: 9)
!5435 = !DILocation(line: 1133, column: 9, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5434, file: !2, line: 1133, column: 9)
!5437 = distinct !{!5437, !5419, !5419, !2268, !2269}
!5438 = !DILocation(line: 1133, column: 9, scope: !5251)
!5439 = !DILocation(line: 1133, column: 7, scope: !5251)
!5440 = !DILocation(line: 1134, column: 3, scope: !5251)
!5441 = !DILocation(line: 1136, column: 9, scope: !5263)
!5442 = !DILocation(line: 1136, column: 9, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5263, file: !2, line: 1136, column: 9)
!5444 = !DILocation(line: 1136, column: 9, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5443, file: !2, line: 1136, column: 9)
!5446 = !DILocation(line: 1136, column: 9, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5448, file: !2, line: 1136, column: 9)
!5448 = distinct !DILexicalBlock(scope: !5445, file: !2, line: 1136, column: 9)
!5449 = !DILocation(line: 1136, column: 9, scope: !5448)
!5450 = !DILocation(line: 1136, column: 9, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5447, file: !2, line: 1136, column: 9)
!5452 = !DILocation(line: 1136, column: 9, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5448, file: !2, line: 1136, column: 9)
!5454 = !DILocation(line: 1136, column: 9, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5453, file: !2, line: 1136, column: 9)
!5456 = !DILocation(line: 1136, column: 9, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5448, file: !2, line: 1136, column: 9)
!5458 = !DILocation(line: 1136, column: 9, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 1136, column: 9)
!5460 = distinct !{!5460, !5442, !5442, !2268, !2269}
!5461 = !DILocation(line: 1136, column: 9, scope: !5251)
!5462 = !DILocation(line: 1136, column: 7, scope: !5251)
!5463 = !DILocation(line: 1137, column: 3, scope: !5251)
!5464 = !DILocation(line: 1139, column: 9, scope: !5269)
!5465 = !DILocation(line: 1139, column: 9, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 1139, column: 9)
!5467 = !DILocation(line: 1139, column: 9, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5466, file: !2, line: 1139, column: 9)
!5469 = !DILocation(line: 1139, column: 9, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5471, file: !2, line: 1139, column: 9)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !2, line: 1139, column: 9)
!5472 = !DILocation(line: 1139, column: 9, scope: !5471)
!5473 = !DILocation(line: 1139, column: 9, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5470, file: !2, line: 1139, column: 9)
!5475 = !DILocation(line: 1139, column: 9, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5471, file: !2, line: 1139, column: 9)
!5477 = !DILocation(line: 1139, column: 9, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5476, file: !2, line: 1139, column: 9)
!5479 = !DILocation(line: 1139, column: 9, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5471, file: !2, line: 1139, column: 9)
!5481 = !DILocation(line: 1139, column: 9, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5480, file: !2, line: 1139, column: 9)
!5483 = distinct !{!5483, !5465, !5465, !2268, !2269}
!5484 = !DILocation(line: 1139, column: 9, scope: !5251)
!5485 = !DILocation(line: 1139, column: 7, scope: !5251)
!5486 = !DILocation(line: 1140, column: 3, scope: !5251)
!5487 = !DILocation(line: 1142, column: 10, scope: !5275)
!5488 = !DILocation(line: 1142, column: 10, scope: !5251)
!5489 = !DILocation(line: 1142, column: 8, scope: !5251)
!5490 = !DILocation(line: 1143, column: 7, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 1143, column: 7)
!5492 = !DILocation(line: 1143, column: 12, scope: !5491)
!5493 = !DILocation(line: 1143, column: 7, scope: !5251)
!5494 = !DILocation(line: 1144, column: 4, scope: !5491)
!5495 = !DILocation(line: 1146, column: 41, scope: !5251)
!5496 = !DILocation(line: 1146, column: 57, scope: !5251)
!5497 = !DILocation(line: 1146, column: 62, scope: !5251)
!5498 = !DILocation(line: 1146, column: 9, scope: !5251)
!5499 = !DILocation(line: 1146, column: 7, scope: !5251)
!5500 = !DILocation(line: 1147, column: 3, scope: !5251)
!5501 = !DILocation(line: 1149, column: 7, scope: !5251)
!5502 = !DILocation(line: 1150, column: 3, scope: !5251)
!5503 = !DILocation(line: 1152, column: 9, scope: !5237)
!5504 = !DILocation(line: 1152, column: 2, scope: !5237)
!5505 = !DILocation(line: 1153, column: 1, scope: !5237)
!5506 = distinct !DISubprogram(name: "acpi_data_prop_read_single", scope: !2, file: !2, line: 973, type: !5507, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5509)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!67, !2853, !150, !120, !138}
!5509 = !{!5510, !5511, !5512, !5513, !5514, !5515}
!5510 = !DILocalVariable(name: "data", arg: 1, scope: !5506, file: !2, line: 973, type: !2853)
!5511 = !DILocalVariable(name: "propname", arg: 2, scope: !5506, file: !2, line: 974, type: !150)
!5512 = !DILocalVariable(name: "proptype", arg: 3, scope: !5506, file: !2, line: 975, type: !120)
!5513 = !DILocalVariable(name: "val", arg: 4, scope: !5506, file: !2, line: 975, type: !138)
!5514 = !DILocalVariable(name: "obj", scope: !5506, file: !2, line: 977, type: !153)
!5515 = !DILocalVariable(name: "ret", scope: !5506, file: !2, line: 978, type: !67)
!5516 = !DILocation(line: 973, column: 70, scope: !5506)
!5517 = !DILocation(line: 974, column: 23, scope: !5506)
!5518 = !DILocation(line: 975, column: 30, scope: !5506)
!5519 = !DILocation(line: 975, column: 46, scope: !5506)
!5520 = !DILocation(line: 977, column: 2, scope: !5506)
!5521 = !DILocation(line: 977, column: 27, scope: !5506)
!5522 = !DILocation(line: 978, column: 2, scope: !5506)
!5523 = !DILocation(line: 978, column: 6, scope: !5506)
!5524 = !DILocation(line: 980, column: 6, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5506, file: !2, line: 980, column: 6)
!5526 = !DILocation(line: 980, column: 15, scope: !5525)
!5527 = !DILocation(line: 980, column: 30, scope: !5525)
!5528 = !DILocation(line: 980, column: 33, scope: !5525)
!5529 = !DILocation(line: 980, column: 42, scope: !5525)
!5530 = !DILocation(line: 980, column: 6, scope: !5506)
!5531 = !DILocation(line: 981, column: 32, scope: !5525)
!5532 = !DILocation(line: 981, column: 38, scope: !5525)
!5533 = !DILocation(line: 981, column: 9, scope: !5525)
!5534 = !DILocation(line: 981, column: 7, scope: !5525)
!5535 = !DILocation(line: 981, column: 3, scope: !5525)
!5536 = !DILocation(line: 982, column: 11, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5525, file: !2, line: 982, column: 11)
!5538 = !DILocation(line: 982, column: 20, scope: !5537)
!5539 = !DILocation(line: 982, column: 11, scope: !5525)
!5540 = !DILocation(line: 983, column: 32, scope: !5537)
!5541 = !DILocation(line: 983, column: 38, scope: !5537)
!5542 = !DILocation(line: 983, column: 9, scope: !5537)
!5543 = !DILocation(line: 983, column: 7, scope: !5537)
!5544 = !DILocation(line: 983, column: 3, scope: !5537)
!5545 = !DILocation(line: 984, column: 6, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5506, file: !2, line: 984, column: 6)
!5547 = !DILocation(line: 984, column: 6, scope: !5506)
!5548 = !DILocation(line: 985, column: 10, scope: !5546)
!5549 = !DILocation(line: 985, column: 3, scope: !5546)
!5550 = !DILocation(line: 987, column: 10, scope: !5506)
!5551 = !DILocation(line: 987, column: 2, scope: !5506)
!5552 = !DILocation(line: 989, column: 7, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 989, column: 7)
!5554 = distinct !DILexicalBlock(scope: !5506, file: !2, line: 987, column: 20)
!5555 = !DILocation(line: 989, column: 20, scope: !5553)
!5556 = !DILocation(line: 989, column: 26, scope: !5553)
!5557 = !DILocation(line: 989, column: 7, scope: !5554)
!5558 = !DILocation(line: 990, column: 4, scope: !5553)
!5559 = !DILocation(line: 991, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 991, column: 7)
!5561 = !DILocation(line: 991, column: 7, scope: !5554)
!5562 = !DILocation(line: 992, column: 17, scope: !5560)
!5563 = !DILocation(line: 992, column: 30, scope: !5560)
!5564 = !DILocation(line: 992, column: 11, scope: !5560)
!5565 = !DILocation(line: 992, column: 15, scope: !5560)
!5566 = !DILocation(line: 992, column: 4, scope: !5560)
!5567 = !DILocation(line: 993, column: 3, scope: !5554)
!5568 = !DILocation(line: 995, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 995, column: 7)
!5570 = !DILocation(line: 995, column: 20, scope: !5569)
!5571 = !DILocation(line: 995, column: 26, scope: !5569)
!5572 = !DILocation(line: 995, column: 7, scope: !5554)
!5573 = !DILocation(line: 996, column: 4, scope: !5569)
!5574 = !DILocation(line: 997, column: 7, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 997, column: 7)
!5576 = !DILocation(line: 997, column: 7, scope: !5554)
!5577 = !DILocation(line: 998, column: 18, scope: !5575)
!5578 = !DILocation(line: 998, column: 31, scope: !5575)
!5579 = !DILocation(line: 998, column: 12, scope: !5575)
!5580 = !DILocation(line: 998, column: 16, scope: !5575)
!5581 = !DILocation(line: 998, column: 4, scope: !5575)
!5582 = !DILocation(line: 999, column: 3, scope: !5554)
!5583 = !DILocation(line: 1001, column: 7, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 1001, column: 7)
!5585 = !DILocation(line: 1001, column: 20, scope: !5584)
!5586 = !DILocation(line: 1001, column: 26, scope: !5584)
!5587 = !DILocation(line: 1001, column: 7, scope: !5554)
!5588 = !DILocation(line: 1002, column: 4, scope: !5584)
!5589 = !DILocation(line: 1003, column: 7, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 1003, column: 7)
!5591 = !DILocation(line: 1003, column: 7, scope: !5554)
!5592 = !DILocation(line: 1004, column: 18, scope: !5590)
!5593 = !DILocation(line: 1004, column: 31, scope: !5590)
!5594 = !DILocation(line: 1004, column: 12, scope: !5590)
!5595 = !DILocation(line: 1004, column: 16, scope: !5590)
!5596 = !DILocation(line: 1004, column: 4, scope: !5590)
!5597 = !DILocation(line: 1005, column: 3, scope: !5554)
!5598 = !DILocation(line: 1007, column: 7, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 1007, column: 7)
!5600 = !DILocation(line: 1007, column: 7, scope: !5554)
!5601 = !DILocation(line: 1008, column: 18, scope: !5599)
!5602 = !DILocation(line: 1008, column: 31, scope: !5599)
!5603 = !DILocation(line: 1008, column: 12, scope: !5599)
!5604 = !DILocation(line: 1008, column: 16, scope: !5599)
!5605 = !DILocation(line: 1008, column: 4, scope: !5599)
!5606 = !DILocation(line: 1009, column: 3, scope: !5554)
!5607 = !DILocation(line: 1011, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 1011, column: 7)
!5609 = !DILocation(line: 1011, column: 7, scope: !5554)
!5610 = !DILocation(line: 1012, column: 20, scope: !5608)
!5611 = !DILocation(line: 1012, column: 32, scope: !5608)
!5612 = !DILocation(line: 1012, column: 14, scope: !5608)
!5613 = !DILocation(line: 1012, column: 18, scope: !5608)
!5614 = !DILocation(line: 1012, column: 4, scope: !5608)
!5615 = !DILocation(line: 1013, column: 3, scope: !5554)
!5616 = !DILocation(line: 1015, column: 3, scope: !5554)
!5617 = !DILocation(line: 1019, column: 9, scope: !5506)
!5618 = !DILocation(line: 1019, column: 2, scope: !5506)
!5619 = !DILocation(line: 1020, column: 1, scope: !5506)
!5620 = distinct !DISubprogram(name: "acpi_copy_property_array_string", scope: !2, file: !2, line: 1053, type: !5621, scopeLine: 1055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!67, !153, !2023, !377}
!5623 = !{!5624, !5625, !5626, !5627}
!5624 = !DILocalVariable(name: "items", arg: 1, scope: !5620, file: !2, line: 1053, type: !153)
!5625 = !DILocalVariable(name: "val", arg: 2, scope: !5620, file: !2, line: 1054, type: !2023)
!5626 = !DILocalVariable(name: "nval", arg: 3, scope: !5620, file: !2, line: 1054, type: !377)
!5627 = !DILocalVariable(name: "i", scope: !5620, file: !2, line: 1056, type: !67)
!5628 = !DILocation(line: 1053, column: 69, scope: !5620)
!5629 = !DILocation(line: 1054, column: 16, scope: !5620)
!5630 = !DILocation(line: 1054, column: 28, scope: !5620)
!5631 = !DILocation(line: 1056, column: 2, scope: !5620)
!5632 = !DILocation(line: 1056, column: 6, scope: !5620)
!5633 = !DILocation(line: 1058, column: 9, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 1058, column: 2)
!5635 = !DILocation(line: 1058, column: 7, scope: !5634)
!5636 = !DILocation(line: 1058, column: 14, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5634, file: !2, line: 1058, column: 2)
!5638 = !DILocation(line: 1058, column: 18, scope: !5637)
!5639 = !DILocation(line: 1058, column: 16, scope: !5637)
!5640 = !DILocation(line: 1058, column: 2, scope: !5634)
!5641 = !DILocation(line: 1059, column: 7, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !2, line: 1059, column: 7)
!5643 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 1058, column: 29)
!5644 = !DILocation(line: 1059, column: 13, scope: !5642)
!5645 = !DILocation(line: 1059, column: 16, scope: !5642)
!5646 = !DILocation(line: 1059, column: 21, scope: !5642)
!5647 = !DILocation(line: 1059, column: 7, scope: !5643)
!5648 = !DILocation(line: 1060, column: 4, scope: !5642)
!5649 = !DILocation(line: 1062, column: 12, scope: !5643)
!5650 = !DILocation(line: 1062, column: 18, scope: !5643)
!5651 = !DILocation(line: 1062, column: 28, scope: !5643)
!5652 = !DILocation(line: 1062, column: 3, scope: !5643)
!5653 = !DILocation(line: 1062, column: 7, scope: !5643)
!5654 = !DILocation(line: 1062, column: 10, scope: !5643)
!5655 = !DILocation(line: 1063, column: 2, scope: !5643)
!5656 = !DILocation(line: 1058, column: 25, scope: !5637)
!5657 = !DILocation(line: 1058, column: 2, scope: !5637)
!5658 = distinct !{!5658, !5640, !5659, !2268, !2269}
!5659 = !DILocation(line: 1063, column: 2, scope: !5634)
!5660 = !DILocation(line: 1064, column: 9, scope: !5620)
!5661 = !DILocation(line: 1064, column: 2, scope: !5620)
!5662 = !DILocation(line: 1065, column: 1, scope: !5620)
!5663 = !DISubprogram(name: "fwnode_get_parent", scope: !100, file: !100, line: 139, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5664 = !DISubprogram(name: "fwnode_handle_put", scope: !100, file: !100, line: 182, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5665 = !DISubprogram(name: "fwnode_get_next_parent", scope: !100, file: !100, line: 140, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5666 = !DISubprogram(name: "fwnode_get_next_child_node", scope: !100, file: !100, line: 151, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5667 = distinct !DISubprogram(name: "acpi_data_node_match", scope: !141, file: !141, line: 444, type: !1722, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5668)
!5668 = !{!5669, !5670, !5671, !5673}
!5669 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5667, file: !141, line: 444, type: !242)
!5670 = !DILocalVariable(name: "name", arg: 2, scope: !5667, file: !141, line: 445, type: !150)
!5671 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !5672, file: !141, line: 448, type: !242)
!5672 = distinct !DILexicalBlock(scope: !5667, file: !141, line: 448, column: 12)
!5673 = !DILocalVariable(name: "__mptr", scope: !5674, file: !141, line: 448, type: !138)
!5674 = distinct !DILexicalBlock(scope: !5672, file: !141, line: 448, column: 12)
!5675 = !DILocation(line: 444, column: 69, scope: !5667)
!5676 = !DILocation(line: 445, column: 18, scope: !5667)
!5677 = !DILocation(line: 447, column: 27, scope: !5667)
!5678 = !DILocation(line: 447, column: 9, scope: !5667)
!5679 = !DILocation(line: 448, column: 12, scope: !5672)
!5680 = !DILocation(line: 448, column: 12, scope: !5674)
!5681 = !DILocation(line: 448, column: 12, scope: !5667)
!5682 = !DILocation(line: 448, column: 39, scope: !5667)
!5683 = !DILocation(line: 448, column: 45, scope: !5667)
!5684 = !DILocation(line: 448, column: 5, scope: !5667)
!5685 = !DILocation(line: 448, column: 4, scope: !5667)
!5686 = !DILocation(line: 447, column: 2, scope: !5667)
!5687 = !DISubprogram(name: "strncmp", scope: !2353, file: !2353, line: 91, type: !5688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!67, !150, !150, !378}
!5690 = distinct !DISubprogram(name: "is_acpi_graph_node", scope: !2, file: !2, line: 1279, type: !5691, scopeLine: 1281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5693)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!240, !222, !150}
!5693 = !{!5694, !5695, !5696, !5697, !5698, !5700}
!5694 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5690, file: !2, line: 1279, type: !222)
!5695 = !DILocalVariable(name: "str", arg: 2, scope: !5690, file: !2, line: 1280, type: !150)
!5696 = !DILocalVariable(name: "len", scope: !5690, file: !2, line: 1282, type: !28)
!5697 = !DILocalVariable(name: "name", scope: !5690, file: !2, line: 1283, type: !150)
!5698 = !DILocalVariable(name: "__to_acpi_data_node_fwnode", scope: !5699, file: !2, line: 1288, type: !222)
!5699 = distinct !DILexicalBlock(scope: !5690, file: !2, line: 1288, column: 9)
!5700 = !DILocalVariable(name: "__mptr", scope: !5701, file: !2, line: 1288, type: !138)
!5701 = distinct !DILexicalBlock(scope: !5699, file: !2, line: 1288, column: 9)
!5702 = !DILocation(line: 1279, column: 54, scope: !5690)
!5703 = !DILocation(line: 1280, column: 23, scope: !5690)
!5704 = !DILocation(line: 1282, column: 2, scope: !5690)
!5705 = !DILocation(line: 1282, column: 15, scope: !5690)
!5706 = !DILocation(line: 1282, column: 28, scope: !5690)
!5707 = !DILocation(line: 1282, column: 21, scope: !5690)
!5708 = !DILocation(line: 1283, column: 2, scope: !5690)
!5709 = !DILocation(line: 1283, column: 14, scope: !5690)
!5710 = !DILocation(line: 1285, column: 7, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5690, file: !2, line: 1285, column: 6)
!5712 = !DILocation(line: 1285, column: 11, scope: !5711)
!5713 = !DILocation(line: 1285, column: 33, scope: !5711)
!5714 = !DILocation(line: 1285, column: 15, scope: !5711)
!5715 = !DILocation(line: 1285, column: 6, scope: !5690)
!5716 = !DILocation(line: 1286, column: 3, scope: !5711)
!5717 = !DILocation(line: 1288, column: 9, scope: !5699)
!5718 = !DILocation(line: 1288, column: 9, scope: !5701)
!5719 = !DILocation(line: 1288, column: 9, scope: !5690)
!5720 = !DILocation(line: 1288, column: 36, scope: !5690)
!5721 = !DILocation(line: 1288, column: 7, scope: !5690)
!5722 = !DILocation(line: 1290, column: 34, scope: !5690)
!5723 = !DILocation(line: 1290, column: 10, scope: !5690)
!5724 = !DILocation(line: 1290, column: 49, scope: !5690)
!5725 = !DILocation(line: 1291, column: 12, scope: !5690)
!5726 = !DILocation(line: 1291, column: 18, scope: !5690)
!5727 = !DILocation(line: 1291, column: 23, scope: !5690)
!5728 = !DILocation(line: 1291, column: 4, scope: !5690)
!5729 = !DILocation(line: 1291, column: 28, scope: !5690)
!5730 = !DILocation(line: 1291, column: 31, scope: !5690)
!5731 = !DILocation(line: 1291, column: 36, scope: !5690)
!5732 = !DILocation(line: 1291, column: 41, scope: !5690)
!5733 = !DILocation(line: 1291, column: 49, scope: !5690)
!5734 = !DILocation(line: 1292, column: 27, scope: !5690)
!5735 = !DILocation(line: 1292, column: 35, scope: !5690)
!5736 = !DILocation(line: 1292, column: 3, scope: !5690)
!5737 = !DILocation(line: 1290, column: 2, scope: !5690)
!5738 = !DILocation(line: 1293, column: 1, scope: !5690)
!5739 = !DISubprogram(name: "strlen", scope: !2353, file: !2353, line: 128, type: !5740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!380, !150}
!5742 = !DISubprogram(name: "fwnode_property_present", scope: !100, file: !100, line: 59, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5743 = distinct !DISubprogram(name: "acpi_node_get_property_reference", scope: !2694, file: !2694, line: 1287, type: !5744, scopeLine: 1291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5746)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!67, !242, !150, !377, !1753}
!5746 = !{!5747, !5748, !5749, !5750}
!5747 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5743, file: !2694, line: 1288, type: !242)
!5748 = !DILocalVariable(name: "name", arg: 2, scope: !5743, file: !2694, line: 1289, type: !150)
!5749 = !DILocalVariable(name: "index", arg: 3, scope: !5743, file: !2694, line: 1289, type: !377)
!5750 = !DILocalVariable(name: "args", arg: 4, scope: !5743, file: !2694, line: 1290, type: !1753)
!5751 = !DILocation(line: 1288, column: 33, scope: !5743)
!5752 = !DILocation(line: 1289, column: 17, scope: !5743)
!5753 = !DILocation(line: 1289, column: 30, scope: !5743)
!5754 = !DILocation(line: 1290, column: 35, scope: !5743)
!5755 = !DILocation(line: 1292, column: 44, scope: !5743)
!5756 = !DILocation(line: 1292, column: 52, scope: !5743)
!5757 = !DILocation(line: 1292, column: 58, scope: !5743)
!5758 = !DILocation(line: 1293, column: 29, scope: !5743)
!5759 = !DILocation(line: 1292, column: 9, scope: !5743)
!5760 = !DILocation(line: 1292, column: 2, scope: !5743)
!5761 = distinct !DISubprogram(name: "acpi_graph_get_child_prop_value", scope: !2, file: !2, line: 1361, type: !5762, scopeLine: 1364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5764)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!222, !242, !150, !28}
!5764 = !{!5765, !5766, !5767, !5768, !5769}
!5765 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5761, file: !2, line: 1362, type: !242)
!5766 = !DILocalVariable(name: "prop_name", arg: 2, scope: !5761, file: !2, line: 1362, type: !150)
!5767 = !DILocalVariable(name: "val", arg: 3, scope: !5761, file: !2, line: 1363, type: !28)
!5768 = !DILocalVariable(name: "child", scope: !5761, file: !2, line: 1365, type: !222)
!5769 = !DILocalVariable(name: "nr", scope: !5770, file: !2, line: 1368, type: !159)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !2, line: 1367, column: 44)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !2, line: 1367, column: 2)
!5772 = distinct !DILexicalBlock(scope: !5761, file: !2, line: 1367, column: 2)
!5773 = !DILocation(line: 1362, column: 30, scope: !5761)
!5774 = !DILocation(line: 1362, column: 50, scope: !5761)
!5775 = !DILocation(line: 1363, column: 15, scope: !5761)
!5776 = !DILocation(line: 1365, column: 2, scope: !5761)
!5777 = !DILocation(line: 1365, column: 24, scope: !5761)
!5778 = !DILocation(line: 1367, column: 2, scope: !5772)
!5779 = !DILocation(line: 1367, column: 2, scope: !5771)
!5780 = !DILocation(line: 1368, column: 3, scope: !5770)
!5781 = !DILocation(line: 1368, column: 7, scope: !5770)
!5782 = !DILocation(line: 1370, column: 32, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5770, file: !2, line: 1370, column: 7)
!5784 = !DILocation(line: 1370, column: 39, scope: !5783)
!5785 = !DILocation(line: 1370, column: 7, scope: !5783)
!5786 = !DILocation(line: 1370, column: 7, scope: !5770)
!5787 = !DILocation(line: 1371, column: 4, scope: !5783)
!5788 = !DILocation(line: 1373, column: 7, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5770, file: !2, line: 1373, column: 7)
!5790 = !DILocation(line: 1373, column: 14, scope: !5789)
!5791 = !DILocation(line: 1373, column: 11, scope: !5789)
!5792 = !DILocation(line: 1373, column: 7, scope: !5770)
!5793 = !DILocation(line: 1374, column: 11, scope: !5789)
!5794 = !DILocation(line: 1374, column: 4, scope: !5789)
!5795 = !DILocation(line: 1375, column: 2, scope: !5771)
!5796 = !DILocation(line: 1375, column: 2, scope: !5770)
!5797 = distinct !{!5797, !5778, !5798, !2268, !2269}
!5798 = !DILocation(line: 1375, column: 2, scope: !5772)
!5799 = !DILocation(line: 1377, column: 2, scope: !5761)
!5800 = !DILocation(line: 1378, column: 1, scope: !5761)
!5801 = distinct !DISubprogram(name: "fwnode_property_read_u32", scope: !100, file: !100, line: 265, type: !5802, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5804)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!67, !242, !150, !2022}
!5804 = !{!5805, !5806, !5807}
!5805 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5801, file: !100, line: 265, type: !242)
!5806 = !DILocalVariable(name: "propname", arg: 2, scope: !5801, file: !100, line: 266, type: !150)
!5807 = !DILocalVariable(name: "val", arg: 3, scope: !5801, file: !100, line: 266, type: !2022)
!5808 = !DILocation(line: 265, column: 72, scope: !5801)
!5809 = !DILocation(line: 266, column: 21, scope: !5801)
!5810 = !DILocation(line: 266, column: 36, scope: !5801)
!5811 = !DILocation(line: 268, column: 40, scope: !5801)
!5812 = !DILocation(line: 268, column: 48, scope: !5801)
!5813 = !DILocation(line: 268, column: 58, scope: !5801)
!5814 = !DILocation(line: 268, column: 9, scope: !5801)
!5815 = !DILocation(line: 268, column: 2, scope: !5801)
!5816 = !DISubprogram(name: "fwnode_property_read_u32_array", scope: !100, file: !100, line: 67, type: !5817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{!67, !242, !150, !2022, !377}
!5819 = distinct !DISubprogram(name: "acpi_irq_get", scope: !2694, file: !2694, line: 1468, type: !5820, scopeLine: 1469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5822)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!67, !196, !28, !4053}
!5822 = !{!5823, !5824, !5825}
!5823 = !DILocalVariable(name: "handle", arg: 1, scope: !5819, file: !2694, line: 1468, type: !196)
!5824 = !DILocalVariable(name: "index", arg: 2, scope: !5819, file: !2694, line: 1468, type: !28)
!5825 = !DILocalVariable(name: "res", arg: 3, scope: !5819, file: !2694, line: 1468, type: !4053)
!5826 = !DILocation(line: 1468, column: 30, scope: !5819)
!5827 = !DILocation(line: 1468, column: 51, scope: !5819)
!5828 = !DILocation(line: 1468, column: 75, scope: !5819)
!5829 = !DILocation(line: 1470, column: 2, scope: !5819)
!5830 = distinct !DISubprogram(name: "acpi_device_handle", scope: !2694, file: !2694, line: 40, type: !5831, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5833)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!196, !211}
!5833 = !{!5834}
!5834 = !DILocalVariable(name: "adev", arg: 1, scope: !5830, file: !2694, line: 40, type: !211)
!5835 = !DILocation(line: 40, column: 66, scope: !5830)
!5836 = !DILocation(line: 42, column: 9, scope: !5830)
!5837 = !DILocation(line: 42, column: 16, scope: !5830)
!5838 = !DILocation(line: 42, column: 22, scope: !5830)
!5839 = !DILocation(line: 42, column: 2, scope: !5830)
