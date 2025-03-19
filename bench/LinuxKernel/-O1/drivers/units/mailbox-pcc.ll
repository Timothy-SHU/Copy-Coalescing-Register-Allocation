; ModuleID = 'drivers/mailbox/pcc.c'
source_filename = "drivers/mailbox/pcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcc_mbox_request_channel: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pcc_mbox_request_channel ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcc_mbox_free_channel: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pcc_mbox_free_channel ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcc_mbox_ioremap: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pcc_mbox_ioremap ; .previous"
module asm ".section\09\22.initcall2.init..kmod_pcc__209_878_pcc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pcc__209_878_pcc_init2:\09\09\09"
module asm ".long\09__initstub__kmod_pcc__209_878_pcc_init2 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcc_chan_info = type { %struct.pcc_mbox_chan, %struct.pcc_chan_reg, %struct.pcc_chan_reg, %struct.pcc_chan_reg, %struct.pcc_chan_reg, %struct.pcc_chan_reg, i32, i8, i32, i8 }
%struct.pcc_mbox_chan = type { ptr, i64, ptr, i64, i32, i32, i16 }
%struct.pcc_chan_reg = type { ptr, ptr, i64, i64, i64 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.acpi_subtable_proc = type { i32, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.pdev_archdata = type {}
%struct.acpi_table_pcct = type { %struct.acpi_table_header, i32, i64 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.spinlock, %struct.list_head }
%struct.acpi_subtable_header = type { i8, i8 }
%struct.acpi_pcct_subspace = type <{ %struct.acpi_subtable_header, [6 x i8], i64, i64, %struct.acpi_generic_address, i64, i64, i32, i32, i16 }>
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_pcct_hw_reduced = type <{ %struct.acpi_subtable_header, i32, i8, i8, i64, i64, %struct.acpi_generic_address, i64, i64, i32, i32, i16 }>
%struct.acpi_pcct_hw_reduced_type2 = type <{ %struct.acpi_subtable_header, i32, i8, i8, i64, i64, %struct.acpi_generic_address, i64, i64, i32, i32, i16, %struct.acpi_generic_address, i64, i64 }>
%struct.acpi_pcct_ext_pcc_master = type <{ %struct.acpi_subtable_header, i32, i8, i8, i64, i32, %struct.acpi_generic_address, i64, i64, i32, i32, i32, %struct.acpi_generic_address, i64, i64, i64, %struct.acpi_generic_address, i64, %struct.acpi_generic_address, i64, i64, %struct.acpi_generic_address, i64 }>
%struct.acpi_pcct_ext_pcc_shared_memory = type { i32, i32, i32, i32 }

@pcc_chan_count = internal global i32 0, align 4, !dbg !0
@chan_info = internal global ptr null, align 8, !dbg !1276
@.str = private unnamed_addr constant [33 x i8] c"\013Channel not found for idx: %d\0A\00", align 1, !dbg !1263
@__UNIQUE_ID___addressable_pcc_mbox_request_channel206 = internal global ptr @pcc_mbox_request_channel, section ".discard.addressable", align 8, !dbg !1268
@__UNIQUE_ID___addressable_pcc_mbox_free_channel207 = internal global ptr @pcc_mbox_free_channel, section ".discard.addressable", align 8, !dbg !1270
@__UNIQUE_ID___addressable_pcc_mbox_ioremap208 = internal global ptr @pcc_mbox_ioremap, section ".discard.addressable", align 8, !dbg !1272
@__UNIQUE_ID___addressable___initstub__kmod_pcc__209_878_pcc_init2210 = internal global ptr @__initstub__kmod_pcc__209_878_pcc_init2, section ".discard.addressable", align 8, !dbg !1274
@acpi_disabled = external dso_local global i32, align 4
@pcc_mbox_driver = internal global %struct.platform_driver { ptr @pcc_mbox_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0, i8 0 }, align 8, !dbg !1977
@.str.1 = private unnamed_addr constant [5 x i8] c"PCCT\00", align 1, !dbg !1962
@.str.2 = private unnamed_addr constant [41 x i8] c"\014Error parsing PCC subspaces from PCCT\0A\00", align 1, !dbg !1967
@.str.3 = private unnamed_addr constant [34 x i8] c"\014Invalid PCCT: %d PCC subspaces\0A\00", align 1, !dbg !1972
@.str.4 = private unnamed_addr constant [43 x i8] c"\013Platform Interrupt flag must be set to 1\00", align 1, !dbg !2039
@.str.5 = private unnamed_addr constant [29 x i8] c"\016Detected %d PCC Subspaces\0A\00", align 1, !dbg !2044
@pcc_chan_ops = internal constant %struct.mbox_chan_ops { ptr @pcc_send_data, ptr null, ptr @pcc_startup, ptr @pcc_shutdown, ptr null, ptr null }, align 8, !dbg !2095
@.str.6 = private unnamed_addr constant [48 x i8] c"\016Registering PCC driver as Mailbox controller\0A\00", align 1, !dbg !2049
@.str.7 = private unnamed_addr constant [49 x i8] c"\013Err registering PCC as Mailbox controller: %d\0A\00", align 1, !dbg !2054
@.str.8 = private unnamed_addr constant [29 x i8] c"\013PCC GSI %d not registered\0A\00", align 1, !dbg !2059
@.str.9 = private unnamed_addr constant [13 x i8] c"PLAT IRQ ACK\00", align 1, !dbg !2061
@.str.10 = private unnamed_addr constant [51 x i8] c"\013PCC subspace has level IRQ with no ACK register\0A\00", align 1, !dbg !2066
@.str.11 = private unnamed_addr constant [48 x i8] c"\013Error: Cannot access register of %u bit width\00", align 1, !dbg !2071
@.str.12 = private unnamed_addr constant [37 x i8] c"\013Failed to ioremap PCC %s register\0A\00", align 1, !dbg !2073
@.str.13 = private unnamed_addr constant [9 x i8] c"Doorbell\00", align 1, !dbg !2078
@.str.14 = private unnamed_addr constant [23 x i8] c"Command Complete Check\00", align 1, !dbg !2083
@.str.15 = private unnamed_addr constant [24 x i8] c"Command Complete Update\00", align 1, !dbg !2088
@.str.16 = private unnamed_addr constant [13 x i8] c"Error Status\00", align 1, !dbg !2093
@.str.17 = private unnamed_addr constant [9 x i8] c"pcc-mbox\00", align 1, !dbg !2097
@.str.18 = private unnamed_addr constant [37 x i8] c"failed to register PCC interrupt %d\0A\00", align 1, !dbg !2099
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_pcc_mbox_request_channel206, ptr @__UNIQUE_ID___addressable_pcc_mbox_free_channel207, ptr @__UNIQUE_ID___addressable_pcc_mbox_ioremap208, ptr @__UNIQUE_ID___addressable___initstub__kmod_pcc__209_878_pcc_init2210], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pcc_mbox_request_channel(ptr noundef %cl, i32 noundef %subspace_id) #0 align 16 !dbg !2110 {
entry:
  %retval = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %subspace_id.addr = alloca i32, align 4
  %pchan = alloca ptr, align 8
  %chan = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %cl, ptr %cl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !2115, metadata !DIExpression()), !dbg !2120
  store i32 %subspace_id, ptr %subspace_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subspace_id.addr, metadata !2116, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan) #11, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %pchan, metadata !2117, metadata !DIExpression()), !dbg !2123
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #11, !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !2118, metadata !DIExpression()), !dbg !2125
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !2126
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2119, metadata !DIExpression()), !dbg !2127
  %0 = load i32, ptr %subspace_id.addr, align 4, !dbg !2128
  %cmp = icmp slt i32 %0, 0, !dbg !2130
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2131

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %subspace_id.addr, align 4, !dbg !2132
  %2 = load i32, ptr @pcc_chan_count, align 4, !dbg !2133
  %cmp1 = icmp sge i32 %1, %2, !dbg !2134
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2135

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @ERR_PTR(i64 noundef -2) #12, !dbg !2136
  store ptr %call, ptr %retval, align 8, !dbg !2137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2137

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @chan_info, align 8, !dbg !2138
  %4 = load i32, ptr %subspace_id.addr, align 4, !dbg !2139
  %idx.ext = sext i32 %4 to i64, !dbg !2140
  %add.ptr = getelementptr %struct.pcc_chan_info, ptr %3, i64 %idx.ext, !dbg !2140
  store ptr %add.ptr, ptr %pchan, align 8, !dbg !2141
  %5 = load ptr, ptr %pchan, align 8, !dbg !2142
  %chan2 = getelementptr inbounds %struct.pcc_chan_info, ptr %5, i32 0, i32 0, !dbg !2143
  %mchan = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan2, i32 0, i32 0, !dbg !2144
  %6 = load ptr, ptr %mchan, align 8, !dbg !2144
  store ptr %6, ptr %chan, align 8, !dbg !2145
  %7 = load ptr, ptr %chan, align 8, !dbg !2146
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %7) #12, !dbg !2148
  br i1 %call3, label %if.then6, label %lor.lhs.false4, !dbg !2149

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load ptr, ptr %chan, align 8, !dbg !2150
  %cl5 = getelementptr inbounds %struct.mbox_chan, ptr %8, i32 0, i32 2, !dbg !2151
  %9 = load ptr, ptr %cl5, align 8, !dbg !2151
  %tobool = icmp ne ptr %9, null, !dbg !2150
  br i1 %tobool, label %if.then6, label %if.end9, !dbg !2152

if.then6:                                         ; preds = %lor.lhs.false4, %if.end
  br label %do.body, !dbg !2153

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !2156

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2156

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr %subspace_id.addr, align 4, !dbg !2153
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %10) #13, !dbg !2153
  store i32 %call7, ptr %tmp, align 4, !dbg !2156
  %11 = load i32, ptr %tmp, align 4, !dbg !2153
  %call8 = call ptr @ERR_PTR(i64 noundef -16) #12, !dbg !2158
  store ptr %call8, ptr %retval, align 8, !dbg !2159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2159

if.end9:                                          ; preds = %lor.lhs.false4
  %12 = load ptr, ptr %chan, align 8, !dbg !2160
  %13 = load ptr, ptr %cl.addr, align 8, !dbg !2161
  %call10 = call i32 @mbox_bind_client(ptr noundef %12, ptr noundef %13) #12, !dbg !2162
  store i32 %call10, ptr %rc, align 4, !dbg !2163
  %14 = load i32, ptr %rc, align 4, !dbg !2164
  %tobool11 = icmp ne i32 %14, 0, !dbg !2164
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !2166

if.then12:                                        ; preds = %if.end9
  %15 = load i32, ptr %rc, align 4, !dbg !2167
  %conv = sext i32 %15 to i64, !dbg !2167
  %call13 = call ptr @ERR_PTR(i64 noundef %conv) #12, !dbg !2168
  store ptr %call13, ptr %retval, align 8, !dbg !2169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2169

if.end14:                                         ; preds = %if.end9
  %16 = load ptr, ptr %pchan, align 8, !dbg !2170
  %chan15 = getelementptr inbounds %struct.pcc_chan_info, ptr %16, i32 0, i32 0, !dbg !2171
  store ptr %chan15, ptr %retval, align 8, !dbg !2172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2172

cleanup:                                          ; preds = %if.end14, %if.then12, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !2173
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #11, !dbg !2173
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan) #11, !dbg !2173
  %17 = load ptr, ptr %retval, align 8, !dbg !2173
  ret ptr %17, !dbg !2173
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !2174 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2179, metadata !DIExpression()), !dbg !2180
  %0 = load i64, ptr %error.addr, align 8, !dbg !2181
  %1 = inttoptr i64 %0 to ptr, !dbg !2182
  ret ptr %1, !dbg !2183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !2184 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2188, metadata !DIExpression()), !dbg !2189
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2190
  %1 = ptrtoint ptr %0 to i64, !dbg !2190
  %2 = inttoptr i64 %1 to ptr, !dbg !2190
  %3 = ptrtoint ptr %2 to i64, !dbg !2190
  %cmp = icmp uge i64 %3, -4095, !dbg !2190
  %lnot = xor i1 %cmp, true, !dbg !2190
  %lnot1 = xor i1 %lnot, true, !dbg !2190
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2190
  %conv = sext i32 %lnot.ext to i64, !dbg !2190
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2190
  %tobool = icmp ne i64 %expval, 0, !dbg !2190
  ret i1 %tobool, !dbg !2191
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2192 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2196 dso_local i32 @mbox_bind_client(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcc_mbox_free_channel(ptr noundef %pchan) #0 align 16 !dbg !2199 {
entry:
  %pchan.addr = alloca ptr, align 8
  %chan = alloca ptr, align 8
  %pchan_info = alloca ptr, align 8
  %pcc_mbox_chan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !2203, metadata !DIExpression()), !dbg !2207
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #11, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !2204, metadata !DIExpression()), !dbg !2209
  %0 = load ptr, ptr %pchan.addr, align 8, !dbg !2210
  %mchan = getelementptr inbounds %struct.pcc_mbox_chan, ptr %0, i32 0, i32 0, !dbg !2211
  %1 = load ptr, ptr %mchan, align 8, !dbg !2211
  store ptr %1, ptr %chan, align 8, !dbg !2209
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan_info) #11, !dbg !2212
  call void @llvm.dbg.declare(metadata ptr %pchan_info, metadata !2205, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcc_mbox_chan) #11, !dbg !2214
  call void @llvm.dbg.declare(metadata ptr %pcc_mbox_chan, metadata !2206, metadata !DIExpression()), !dbg !2215
  %2 = load ptr, ptr %chan, align 8, !dbg !2216
  %tobool = icmp ne ptr %2, null, !dbg !2216
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2218

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %chan, align 8, !dbg !2219
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %3, i32 0, i32 2, !dbg !2220
  %4 = load ptr, ptr %cl, align 8, !dbg !2220
  %tobool1 = icmp ne ptr %4, null, !dbg !2219
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2221

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2222

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %chan, align 8, !dbg !2223
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %5, i32 0, i32 9, !dbg !2224
  %6 = load ptr, ptr %con_priv, align 8, !dbg !2224
  store ptr %6, ptr %pchan_info, align 8, !dbg !2225
  %7 = load ptr, ptr %pchan_info, align 8, !dbg !2226
  %chan2 = getelementptr inbounds %struct.pcc_chan_info, ptr %7, i32 0, i32 0, !dbg !2227
  store ptr %chan2, ptr %pcc_mbox_chan, align 8, !dbg !2228
  %8 = load ptr, ptr %pcc_mbox_chan, align 8, !dbg !2229
  %shmem = getelementptr inbounds %struct.pcc_mbox_chan, ptr %8, i32 0, i32 2, !dbg !2231
  %9 = load ptr, ptr %shmem, align 8, !dbg !2231
  %tobool3 = icmp ne ptr %9, null, !dbg !2229
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !2232

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %pcc_mbox_chan, align 8, !dbg !2233
  %shmem5 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %10, i32 0, i32 2, !dbg !2235
  %11 = load ptr, ptr %shmem5, align 8, !dbg !2235
  call void @iounmap(ptr noundef %11) #12, !dbg !2236
  %12 = load ptr, ptr %pcc_mbox_chan, align 8, !dbg !2237
  %shmem6 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %12, i32 0, i32 2, !dbg !2238
  store ptr null, ptr %shmem6, align 8, !dbg !2239
  br label %if.end7, !dbg !2240

if.end7:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %chan, align 8, !dbg !2241
  call void @mbox_free_channel(ptr noundef %13) #12, !dbg !2242
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2243
  br label %cleanup, !dbg !2243

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcc_mbox_chan) #11, !dbg !2243
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan_info) #11, !dbg !2243
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #11, !dbg !2243
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2243

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2244 dso_local void @iounmap(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2250 dso_local void @mbox_free_channel(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcc_mbox_ioremap(ptr noundef %chan) #0 align 16 !dbg !2251 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %pchan_info = alloca ptr, align 8
  %pcc_mbox_chan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan_info) #11, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %pchan_info, metadata !2254, metadata !DIExpression()), !dbg !2258
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcc_mbox_chan) #11, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %pcc_mbox_chan, metadata !2255, metadata !DIExpression()), !dbg !2260
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !2261
  %tobool = icmp ne ptr %0, null, !dbg !2261
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2263

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !2264
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 2, !dbg !2265
  %2 = load ptr, ptr %cl, align 8, !dbg !2265
  %tobool1 = icmp ne ptr %2, null, !dbg !2264
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2266

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !2267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2267

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %chan.addr, align 8, !dbg !2268
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %3, i32 0, i32 9, !dbg !2269
  %4 = load ptr, ptr %con_priv, align 8, !dbg !2269
  store ptr %4, ptr %pchan_info, align 8, !dbg !2270
  %5 = load ptr, ptr %pchan_info, align 8, !dbg !2271
  %chan2 = getelementptr inbounds %struct.pcc_chan_info, ptr %5, i32 0, i32 0, !dbg !2272
  store ptr %chan2, ptr %pcc_mbox_chan, align 8, !dbg !2273
  %6 = load ptr, ptr %pcc_mbox_chan, align 8, !dbg !2274
  %shmem_base_addr = getelementptr inbounds %struct.pcc_mbox_chan, ptr %6, i32 0, i32 1, !dbg !2275
  %7 = load i64, ptr %shmem_base_addr, align 8, !dbg !2275
  %8 = load ptr, ptr %pcc_mbox_chan, align 8, !dbg !2276
  %shmem_size = getelementptr inbounds %struct.pcc_mbox_chan, ptr %8, i32 0, i32 3, !dbg !2277
  %9 = load i64, ptr %shmem_size, align 8, !dbg !2277
  %call = call ptr @ioremap(i64 noundef %7, i64 noundef %9) #12, !dbg !2278
  %10 = load ptr, ptr %pcc_mbox_chan, align 8, !dbg !2279
  %shmem = getelementptr inbounds %struct.pcc_mbox_chan, ptr %10, i32 0, i32 2, !dbg !2280
  store ptr %call, ptr %shmem, align 8, !dbg !2281
  store i32 0, ptr %retval, align 4, !dbg !2282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2282

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcc_mbox_chan) #11, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan_info) #11, !dbg !2283
  %11 = load i32, ptr %retval, align 4, !dbg !2283
  ret i32 %11, !dbg !2283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2284 dso_local ptr @ioremap(i64 noundef, i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pcc__209_878_pcc_init2() #6 section ".init.text" align 16 !dbg !2287 {
entry:
  %call = call i32 @pcc_init() #13, !dbg !2288
  ret i32 %call, !dbg !2288
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcc_init() #6 section ".init.text" align 16 !dbg !2289 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %pcc_pdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcc_pdev) #11, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %pcc_pdev, metadata !2292, metadata !DIExpression()), !dbg !2296
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !2297
  %tobool = icmp ne i32 %0, 0, !dbg !2297
  br i1 %tobool, label %if.then, label %if.end, !dbg !2299

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2300

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_pcc_probe() #13, !dbg !2301
  store i32 %call, ptr %ret, align 4, !dbg !2302
  %1 = load i32, ptr %ret, align 4, !dbg !2303
  %tobool1 = icmp ne i32 %1, 0, !dbg !2303
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2305

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !2306
  %2 = load i32, ptr %tmp, align 4, !dbg !2310
  store i32 -19, ptr %retval, align 4, !dbg !2311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2311

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @__platform_create_bundle(ptr noundef @pcc_mbox_driver, ptr noundef @pcc_mbox_probe, ptr noundef null, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null) #12, !dbg !2312
  store ptr %call4, ptr %pcc_pdev, align 8, !dbg !2313
  %3 = load ptr, ptr %pcc_pdev, align 8, !dbg !2314
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %3) #12, !dbg !2316
  br i1 %call5, label %if.then6, label %if.end9, !dbg !2317

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %tmp7, align 4, !dbg !2318
  %4 = load i32, ptr %tmp7, align 4, !dbg !2322
  store i32 0, ptr @pcc_chan_count, align 4, !dbg !2323
  %5 = load ptr, ptr %pcc_pdev, align 8, !dbg !2324
  %call8 = call i64 @PTR_ERR(ptr noundef %5) #12, !dbg !2325
  %conv = trunc i64 %call8 to i32, !dbg !2325
  store i32 %conv, ptr %retval, align 4, !dbg !2326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2326

if.end9:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !2327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2327

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcc_pdev) #11, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2328
  %6 = load i32, ptr %retval, align 4, !dbg !2328
  ret i32 %6, !dbg !2328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_pcc_probe() #6 section ".init.text" align 16 !dbg !2329 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %status = alloca i32, align 4
  %pcct_tbl = alloca ptr, align 8
  %proc = alloca [6 x %struct.acpi_subtable_proc], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2331, metadata !DIExpression()), !dbg !2378
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2332, metadata !DIExpression()), !dbg !2379
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2333, metadata !DIExpression()), !dbg !2380
  store i32 0, ptr %rc, align 4, !dbg !2380
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2334, metadata !DIExpression()), !dbg !2382
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_tbl) #11, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %pcct_tbl, metadata !2335, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 240, ptr %proc) #11, !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %proc, metadata !2337, metadata !DIExpression()), !dbg !2386
  %call = call i32 @acpi_get_table(ptr noundef @.str.1, i32 noundef 0, ptr noundef %pcct_tbl) #12, !dbg !2387
  store i32 %call, ptr %status, align 4, !dbg !2388
  %0 = load i32, ptr %status, align 4, !dbg !2389
  %tobool = icmp ne i32 %0, 0, !dbg !2389
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2391

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pcct_tbl, align 8, !dbg !2392
  %tobool1 = icmp ne ptr %1, null, !dbg !2392
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2393

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !2394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2394

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !2395
  br label %for.cond, !dbg !2397

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2398
  %cmp = icmp slt i32 %2, 6, !dbg !2400
  br i1 %cmp, label %for.body, label %for.end, !dbg !2401

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !2402
  %4 = load i32, ptr %i, align 4, !dbg !2404
  %idxprom = sext i32 %4 to i64, !dbg !2405
  %arrayidx = getelementptr [6 x %struct.acpi_subtable_proc], ptr %proc, i64 0, i64 %idxprom, !dbg !2405
  %id = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx, i32 0, i32 0, !dbg !2406
  store i32 %3, ptr %id, align 8, !dbg !2407
  %5 = load i32, ptr %i, align 4, !dbg !2408
  %idxprom2 = sext i32 %5 to i64, !dbg !2409
  %arrayidx3 = getelementptr [6 x %struct.acpi_subtable_proc], ptr %proc, i64 0, i64 %idxprom2, !dbg !2409
  %count4 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx3, i32 0, i32 4, !dbg !2410
  store i32 0, ptr %count4, align 8, !dbg !2411
  %6 = load i32, ptr %i, align 4, !dbg !2412
  %idxprom5 = sext i32 %6 to i64, !dbg !2413
  %arrayidx6 = getelementptr [6 x %struct.acpi_subtable_proc], ptr %proc, i64 0, i64 %idxprom5, !dbg !2413
  %handler = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx6, i32 0, i32 1, !dbg !2414
  store ptr @parse_pcc_subspace, ptr %handler, align 8, !dbg !2415
  br label %for.inc, !dbg !2416

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !2417
  %inc = add i32 %7, 1, !dbg !2417
  store i32 %inc, ptr %i, align 4, !dbg !2417
  br label %for.cond, !dbg !2418, !llvm.loop !2419

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [6 x %struct.acpi_subtable_proc], ptr %proc, i64 0, i64 0, !dbg !2423
  %call7 = call i32 @acpi_table_parse_entries_array(ptr noundef @.str.1, i64 noundef 48, ptr noundef %arraydecay, i32 noundef 6, i32 noundef 256) #13, !dbg !2424
  store i32 %call7, ptr %count, align 4, !dbg !2425
  %8 = load i32, ptr %count, align 4, !dbg !2426
  %cmp8 = icmp sle i32 %8, 0, !dbg !2428
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9, !dbg !2429

lor.lhs.false9:                                   ; preds = %for.end
  %9 = load i32, ptr %count, align 4, !dbg !2430
  %cmp10 = icmp sgt i32 %9, 256, !dbg !2431
  br i1 %cmp10, label %if.then11, label %if.else21, !dbg !2432

if.then11:                                        ; preds = %lor.lhs.false9, %for.end
  %10 = load i32, ptr %count, align 4, !dbg !2433
  %cmp12 = icmp slt i32 %10, 0, !dbg !2436
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !2437

if.then13:                                        ; preds = %if.then11
  br label %do.body, !dbg !2438

do.body:                                          ; preds = %if.then13
  br label %do.cond, !dbg !2440

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2440

do.end:                                           ; preds = %do.cond
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #13, !dbg !2438
  store i32 %call14, ptr %tmp, align 4, !dbg !2440
  %11 = load i32, ptr %tmp, align 4, !dbg !2438
  br label %if.end20, !dbg !2442

if.else:                                          ; preds = %if.then11
  br label %do.body15, !dbg !2443

do.body15:                                        ; preds = %if.else
  br label %do.cond16, !dbg !2445

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2445

do.end17:                                         ; preds = %do.cond16
  %12 = load i32, ptr %count, align 4, !dbg !2443
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %12) #13, !dbg !2443
  store i32 %call19, ptr %tmp18, align 4, !dbg !2445
  %13 = load i32, ptr %tmp18, align 4, !dbg !2443
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %do.end
  store i32 -22, ptr %rc, align 4, !dbg !2447
  br label %if.end22, !dbg !2448

if.else21:                                        ; preds = %lor.lhs.false9
  %14 = load i32, ptr %count, align 4, !dbg !2449
  store i32 %14, ptr @pcc_chan_count, align 4, !dbg !2451
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.end20
  %15 = load ptr, ptr %pcct_tbl, align 8, !dbg !2452
  call void @acpi_put_table(ptr noundef %15) #12, !dbg !2453
  %16 = load i32, ptr %rc, align 4, !dbg !2454
  store i32 %16, ptr %retval, align 4, !dbg !2455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2455

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 240, ptr %proc) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_tbl) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !2456
  %17 = load i32, ptr %retval, align 4, !dbg !2456
  ret i32 %17, !dbg !2456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2457 dso_local ptr @__platform_create_bundle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_mbox_probe(ptr noundef %pdev) #0 align 16 !dbg !2461 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %pcc_mbox_ctrl = alloca ptr, align 8
  %pcc_mbox_channels = alloca ptr, align 8
  %pcct_tbl = alloca ptr, align 8
  %pcct_entry = alloca ptr, align 8
  %acpi_pcct_tbl = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %pchan = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2463, metadata !DIExpression()), !dbg !2479
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #11, !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2464, metadata !DIExpression()), !dbg !2481
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2482
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !2483
  store ptr %dev1, ptr %dev, align 8, !dbg !2481
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcc_mbox_ctrl) #11, !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %pcc_mbox_ctrl, metadata !2465, metadata !DIExpression()), !dbg !2485
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcc_mbox_channels) #11, !dbg !2486
  call void @llvm.dbg.declare(metadata ptr %pcc_mbox_channels, metadata !2466, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_tbl) #11, !dbg !2488
  call void @llvm.dbg.declare(metadata ptr %pcct_tbl, metadata !2467, metadata !DIExpression()), !dbg !2489
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_entry) #11, !dbg !2490
  call void @llvm.dbg.declare(metadata ptr %pcct_entry, metadata !2468, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_pcct_tbl) #11, !dbg !2492
  call void @llvm.dbg.declare(metadata ptr %acpi_pcct_tbl, metadata !2469, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2470, metadata !DIExpression()), !dbg !2495
  store i32 0, ptr %status, align 4, !dbg !2495
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2471, metadata !DIExpression()), !dbg !2497
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2472, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2473, metadata !DIExpression()), !dbg !2499
  %1 = load i32, ptr @pcc_chan_count, align 4, !dbg !2500
  store i32 %1, ptr %count, align 4, !dbg !2499
  %call = call i32 @acpi_get_table(ptr noundef @.str.1, i32 noundef 0, ptr noundef %pcct_tbl) #12, !dbg !2501
  store i32 %call, ptr %status, align 4, !dbg !2502
  %2 = load i32, ptr %status, align 4, !dbg !2503
  %tobool = icmp ne i32 %2, 0, !dbg !2503
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2505

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pcct_tbl, align 8, !dbg !2506
  %tobool2 = icmp ne ptr %3, null, !dbg !2506
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2507

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !2508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2508

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dev, align 8, !dbg !2509
  %5 = load i32, ptr %count, align 4, !dbg !2510
  %conv = sext i32 %5 to i64, !dbg !2510
  %call3 = call ptr @devm_kcalloc(ptr noundef %4, i64 noundef %conv, i64 noundef 248, i32 noundef 3264) #12, !dbg !2511
  store ptr %call3, ptr %pcc_mbox_channels, align 8, !dbg !2512
  %6 = load ptr, ptr %pcc_mbox_channels, align 8, !dbg !2513
  %tobool4 = icmp ne ptr %6, null, !dbg !2513
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2515

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %rc, align 4, !dbg !2516
  br label %err, !dbg !2518

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %dev, align 8, !dbg !2519
  %8 = load i32, ptr %count, align 4, !dbg !2520
  %conv7 = sext i32 %8 to i64, !dbg !2520
  %call8 = call ptr @devm_kcalloc(ptr noundef %7, i64 noundef %conv7, i64 noundef 264, i32 noundef 3264) #12, !dbg !2521
  store ptr %call8, ptr @chan_info, align 8, !dbg !2522
  %9 = load ptr, ptr @chan_info, align 8, !dbg !2523
  %tobool9 = icmp ne ptr %9, null, !dbg !2523
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2525

if.then10:                                        ; preds = %if.end6
  store i32 -12, ptr %rc, align 4, !dbg !2526
  br label %err, !dbg !2528

if.end11:                                         ; preds = %if.end6
  %10 = load ptr, ptr %dev, align 8, !dbg !2529
  %call12 = call ptr @devm_kzalloc(ptr noundef %10, i64 noundef 136, i32 noundef 3264) #12, !dbg !2530
  store ptr %call12, ptr %pcc_mbox_ctrl, align 8, !dbg !2531
  %11 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2532
  %tobool13 = icmp ne ptr %11, null, !dbg !2532
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2534

if.then14:                                        ; preds = %if.end11
  store i32 -12, ptr %rc, align 4, !dbg !2535
  br label %err, !dbg !2537

if.end15:                                         ; preds = %if.end11
  %12 = load ptr, ptr %pcct_tbl, align 8, !dbg !2538
  %13 = ptrtoint ptr %12 to i64, !dbg !2539
  %add = add i64 %13, 48, !dbg !2540
  %14 = inttoptr i64 %add to ptr, !dbg !2541
  store ptr %14, ptr %pcct_entry, align 8, !dbg !2542
  %15 = load ptr, ptr %pcct_tbl, align 8, !dbg !2543
  store ptr %15, ptr %acpi_pcct_tbl, align 8, !dbg !2544
  %16 = load ptr, ptr %acpi_pcct_tbl, align 8, !dbg !2545
  %flags = getelementptr inbounds %struct.acpi_table_pcct, ptr %16, i32 0, i32 1, !dbg !2547
  %17 = load i32, ptr %flags, align 1, !dbg !2547
  %and = and i32 %17, 1, !dbg !2548
  %tobool16 = icmp ne i32 %and, 0, !dbg !2548
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2549

if.then17:                                        ; preds = %if.end15
  %18 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2550
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %18, i32 0, i32 4, !dbg !2551
  store i8 1, ptr %txdone_irq, align 4, !dbg !2552
  br label %if.end18, !dbg !2550

if.end18:                                         ; preds = %if.then17, %if.end15
  store i32 0, ptr %i, align 4, !dbg !2553
  br label %for.cond, !dbg !2554

for.cond:                                         ; preds = %for.inc, %if.end18
  %19 = load i32, ptr %i, align 4, !dbg !2555
  %20 = load i32, ptr %count, align 4, !dbg !2556
  %cmp = icmp slt i32 %19, %20, !dbg !2557
  br i1 %cmp, label %for.body, label %for.end, !dbg !2558

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan) #11, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %pchan, metadata !2474, metadata !DIExpression()), !dbg !2560
  %21 = load ptr, ptr @chan_info, align 8, !dbg !2561
  %22 = load i32, ptr %i, align 4, !dbg !2562
  %idx.ext = sext i32 %22 to i64, !dbg !2563
  %add.ptr = getelementptr %struct.pcc_chan_info, ptr %21, i64 %idx.ext, !dbg !2563
  store ptr %add.ptr, ptr %pchan, align 8, !dbg !2560
  %23 = load ptr, ptr %pchan, align 8, !dbg !2564
  %24 = load ptr, ptr %pcc_mbox_channels, align 8, !dbg !2565
  %25 = load i32, ptr %i, align 4, !dbg !2566
  %idxprom = sext i32 %25 to i64, !dbg !2565
  %arrayidx = getelementptr %struct.mbox_chan, ptr %24, i64 %idxprom, !dbg !2565
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %arrayidx, i32 0, i32 9, !dbg !2567
  store ptr %23, ptr %con_priv, align 8, !dbg !2568
  %26 = load ptr, ptr %pcc_mbox_channels, align 8, !dbg !2569
  %27 = load i32, ptr %i, align 4, !dbg !2570
  %idxprom20 = sext i32 %27 to i64, !dbg !2569
  %arrayidx21 = getelementptr %struct.mbox_chan, ptr %26, i64 %idxprom20, !dbg !2569
  %28 = load ptr, ptr %pchan, align 8, !dbg !2571
  %chan = getelementptr inbounds %struct.pcc_chan_info, ptr %28, i32 0, i32 0, !dbg !2572
  %mchan = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan, i32 0, i32 0, !dbg !2573
  store ptr %arrayidx21, ptr %mchan, align 8, !dbg !2574
  %29 = load ptr, ptr %pcct_entry, align 8, !dbg !2575
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %29, i32 0, i32 0, !dbg !2577
  %30 = load i8, ptr %type, align 1, !dbg !2577
  %conv22 = zext i8 %30 to i32, !dbg !2575
  %cmp23 = icmp eq i32 %conv22, 4, !dbg !2578
  br i1 %cmp23, label %land.lhs.true, label %if.end29, !dbg !2579

land.lhs.true:                                    ; preds = %for.body
  %31 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2580
  %txdone_irq25 = getelementptr inbounds %struct.mbox_controller, ptr %31, i32 0, i32 4, !dbg !2581
  %32 = load i8, ptr %txdone_irq25, align 4, !dbg !2581, !range !2582, !noundef !349
  %tobool26 = trunc i8 %32 to i1, !dbg !2581
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !2583

if.then27:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !2584

do.body:                                          ; preds = %if.then27
  br label %do.cond, !dbg !2587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2587

do.end:                                           ; preds = %do.cond
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !2584
  store i32 %call28, ptr %tmp, align 4, !dbg !2587
  %33 = load i32, ptr %tmp, align 4, !dbg !2584
  store i32 -22, ptr %rc, align 4, !dbg !2589
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2590

if.end29:                                         ; preds = %land.lhs.true, %for.body
  %34 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2591
  %txdone_irq30 = getelementptr inbounds %struct.mbox_controller, ptr %34, i32 0, i32 4, !dbg !2593
  %35 = load i8, ptr %txdone_irq30, align 4, !dbg !2593, !range !2582, !noundef !349
  %tobool31 = trunc i8 %35 to i1, !dbg !2593
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !2594

if.then32:                                        ; preds = %if.end29
  %36 = load ptr, ptr %pchan, align 8, !dbg !2595
  %37 = load ptr, ptr %pcct_entry, align 8, !dbg !2597
  %call33 = call i32 @pcc_parse_subspace_irq(ptr noundef %36, ptr noundef %37) #12, !dbg !2598
  store i32 %call33, ptr %rc, align 4, !dbg !2599
  %38 = load i32, ptr %rc, align 4, !dbg !2600
  %cmp34 = icmp slt i32 %38, 0, !dbg !2602
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !2603

if.then36:                                        ; preds = %if.then32
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2604

if.end37:                                         ; preds = %if.then32
  br label %if.end38, !dbg !2605

if.end38:                                         ; preds = %if.end37, %if.end29
  %39 = load ptr, ptr %pchan, align 8, !dbg !2606
  %40 = load ptr, ptr %pcct_entry, align 8, !dbg !2607
  %call39 = call i32 @pcc_parse_subspace_db_reg(ptr noundef %39, ptr noundef %40) #12, !dbg !2608
  store i32 %call39, ptr %rc, align 4, !dbg !2609
  %41 = load i32, ptr %rc, align 4, !dbg !2610
  %cmp40 = icmp slt i32 %41, 0, !dbg !2612
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !2613

if.then42:                                        ; preds = %if.end38
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2614

if.end43:                                         ; preds = %if.end38
  %42 = load ptr, ptr %pchan, align 8, !dbg !2615
  %43 = load ptr, ptr %pcct_entry, align 8, !dbg !2616
  call void @pcc_parse_subspace_shmem(ptr noundef %42, ptr noundef %43) #12, !dbg !2617
  %44 = load ptr, ptr %pcct_entry, align 8, !dbg !2618
  %type44 = getelementptr inbounds %struct.acpi_subtable_header, ptr %44, i32 0, i32 0, !dbg !2619
  %45 = load i8, ptr %type44, align 1, !dbg !2619
  %46 = load ptr, ptr %pchan, align 8, !dbg !2620
  %type45 = getelementptr inbounds %struct.pcc_chan_info, ptr %46, i32 0, i32 7, !dbg !2621
  store i8 %45, ptr %type45, align 4, !dbg !2622
  %47 = load ptr, ptr %pcct_entry, align 8, !dbg !2623
  %48 = ptrtoint ptr %47 to i64, !dbg !2624
  %49 = load ptr, ptr %pcct_entry, align 8, !dbg !2625
  %length = getelementptr inbounds %struct.acpi_subtable_header, ptr %49, i32 0, i32 1, !dbg !2626
  %50 = load i8, ptr %length, align 1, !dbg !2626
  %conv46 = zext i8 %50 to i64, !dbg !2625
  %add47 = add i64 %48, %conv46, !dbg !2627
  %51 = inttoptr i64 %add47 to ptr, !dbg !2628
  store ptr %51, ptr %pcct_entry, align 8, !dbg !2629
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2630
  br label %cleanup, !dbg !2630

cleanup:                                          ; preds = %if.then42, %if.then36, %do.end, %if.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan) #11, !dbg !2630
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 0, label %cleanup.cont
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2631

for.inc:                                          ; preds = %cleanup.cont
  %52 = load i32, ptr %i, align 4, !dbg !2632
  %inc = add i32 %52, 1, !dbg !2632
  store i32 %inc, ptr %i, align 4, !dbg !2632
  br label %for.cond, !dbg !2633, !llvm.loop !2634

for.end:                                          ; preds = %for.cond
  %53 = load i32, ptr %count, align 4, !dbg !2636
  %54 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2637
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %54, i32 0, i32 3, !dbg !2638
  store i32 %53, ptr %num_chans, align 8, !dbg !2639
  br label %do.body48, !dbg !2640

do.body48:                                        ; preds = %for.end
  br label %do.cond49, !dbg !2642

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !2642

do.end50:                                         ; preds = %do.cond49
  %55 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2640
  %num_chans52 = getelementptr inbounds %struct.mbox_controller, ptr %55, i32 0, i32 3, !dbg !2640
  %56 = load i32, ptr %num_chans52, align 8, !dbg !2640
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %56) #13, !dbg !2640
  store i32 %call53, ptr %tmp51, align 4, !dbg !2642
  %57 = load i32, ptr %tmp51, align 4, !dbg !2640
  %58 = load ptr, ptr %pcc_mbox_channels, align 8, !dbg !2644
  %59 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2645
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %59, i32 0, i32 2, !dbg !2646
  store ptr %58, ptr %chans, align 8, !dbg !2647
  %60 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2648
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %60, i32 0, i32 1, !dbg !2649
  store ptr @pcc_chan_ops, ptr %ops, align 8, !dbg !2650
  %61 = load ptr, ptr %dev, align 8, !dbg !2651
  %62 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2652
  %dev54 = getelementptr inbounds %struct.mbox_controller, ptr %62, i32 0, i32 0, !dbg !2653
  store ptr %61, ptr %dev54, align 8, !dbg !2654
  br label %do.body55, !dbg !2655

do.body55:                                        ; preds = %do.end50
  br label %do.cond56, !dbg !2657

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !2657

do.end57:                                         ; preds = %do.cond56
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #13, !dbg !2655
  store i32 %call59, ptr %tmp58, align 4, !dbg !2657
  %63 = load i32, ptr %tmp58, align 4, !dbg !2655
  %64 = load ptr, ptr %pcc_mbox_ctrl, align 8, !dbg !2659
  %call60 = call i32 @mbox_controller_register(ptr noundef %64) #12, !dbg !2660
  store i32 %call60, ptr %rc, align 4, !dbg !2661
  %65 = load i32, ptr %rc, align 4, !dbg !2662
  %tobool61 = icmp ne i32 %65, 0, !dbg !2662
  br i1 %tobool61, label %if.then62, label %if.else, !dbg !2664

if.then62:                                        ; preds = %do.end57
  br label %do.body63, !dbg !2665

do.body63:                                        ; preds = %if.then62
  br label %do.cond64, !dbg !2667

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !2667

do.end65:                                         ; preds = %do.cond64
  %66 = load i32, ptr %rc, align 4, !dbg !2665
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %66) #13, !dbg !2665
  store i32 %call67, ptr %tmp66, align 4, !dbg !2667
  %67 = load i32, ptr %tmp66, align 4, !dbg !2665
  br label %if.end68, !dbg !2669

if.else:                                          ; preds = %do.end57
  store i32 0, ptr %retval, align 4, !dbg !2670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2670

if.end68:                                         ; preds = %do.end65
  br label %err, !dbg !2662

err:                                              ; preds = %if.end68, %cleanup, %if.then14, %if.then10, %if.then5
  call void @llvm.dbg.label(metadata !2478), !dbg !2671
  %68 = load ptr, ptr %pcct_tbl, align 8, !dbg !2672
  call void @acpi_put_table(ptr noundef %68) #12, !dbg !2673
  %69 = load i32, ptr %rc, align 4, !dbg !2674
  store i32 %69, ptr %retval, align 4, !dbg !2675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2675

cleanup69:                                        ; preds = %err, %if.else, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_pcct_tbl) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_entry) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_tbl) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcc_mbox_channels) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcc_mbox_ctrl) #11, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #11, !dbg !2676
  %70 = load i32, ptr %retval, align 4, !dbg !2676
  ret i32 %70, !dbg !2676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !2677 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2683
  %1 = ptrtoint ptr %0 to i64, !dbg !2684
  ret i64 %1, !dbg !2685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2686 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_pcc_subspace(ptr noundef %header, i64 noundef %end) #0 align 16 !dbg !2692 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %ss = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !2694, metadata !DIExpression()), !dbg !2697
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #11, !dbg !2699
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !2696, metadata !DIExpression()), !dbg !2700
  %0 = load ptr, ptr %header.addr, align 8, !dbg !2701
  store ptr %0, ptr %ss, align 8, !dbg !2700
  %1 = load ptr, ptr %ss, align 8, !dbg !2702
  %header1 = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %1, i32 0, i32 0, !dbg !2704
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %header1, i32 0, i32 0, !dbg !2705
  %2 = load i8, ptr %type, align 1, !dbg !2705
  %conv = zext i8 %2 to i32, !dbg !2702
  %cmp = icmp slt i32 %conv, 6, !dbg !2706
  br i1 %cmp, label %if.then, label %if.end, !dbg !2707

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2708

if.end:                                           ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2709

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #11, !dbg !2710
  %3 = load i32, ptr %retval, align 4, !dbg !2710
  ret i32 %3, !dbg !2710
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2711 dso_local i32 @acpi_table_parse_entries_array(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #4 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2715 dso_local void @acpi_put_table(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kcalloc(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2718 {
entry:
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2722, metadata !DIExpression()), !dbg !2726
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2723, metadata !DIExpression()), !dbg !2727
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2724, metadata !DIExpression()), !dbg !2728
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2725, metadata !DIExpression()), !dbg !2729
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2730
  %1 = load i64, ptr %n.addr, align 8, !dbg !2731
  %2 = load i64, ptr %size.addr, align 8, !dbg !2732
  %3 = load i32, ptr %flags.addr, align 4, !dbg !2733
  %or = or i32 %3, 256, !dbg !2734
  %call = call ptr @devm_kmalloc_array(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %or) #12, !dbg !2735
  ret ptr %call, !dbg !2736
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #3 align 16 !dbg !2737 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2741, metadata !DIExpression()), !dbg !2744
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2742, metadata !DIExpression()), !dbg !2745
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2743, metadata !DIExpression()), !dbg !2746
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2747
  %1 = load i64, ptr %size.addr, align 8, !dbg !2748
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !2749
  %or = or i32 %2, 256, !dbg !2750
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #14, !dbg !2751
  ret ptr %call, !dbg !2752
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_parse_subspace_irq(ptr noundef %pchan, ptr noundef %pcct_entry) #0 align 16 !dbg !2753 {
entry:
  %retval = alloca i32, align 4
  %pchan.addr = alloca ptr, align 8
  %pcct_entry.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pcct_ss = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pcct2_ss = alloca ptr, align 8
  %pcct_ext = alloca ptr, align 8
  %tmp47 = alloca i32, align 4
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !2757, metadata !DIExpression()), !dbg !2785
  store ptr %pcct_entry, ptr %pcct_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcct_entry.addr, metadata !2758, metadata !DIExpression()), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2787
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2759, metadata !DIExpression()), !dbg !2788
  store i32 0, ptr %ret, align 4, !dbg !2788
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_ss) #11, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %pcct_ss, metadata !2760, metadata !DIExpression()), !dbg !2790
  %0 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2791
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %0, i32 0, i32 0, !dbg !2793
  %1 = load i8, ptr %type, align 1, !dbg !2793
  %conv = zext i8 %1 to i32, !dbg !2791
  %cmp = icmp slt i32 %conv, 1, !dbg !2794
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2795

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2796
  %type2 = getelementptr inbounds %struct.acpi_subtable_header, ptr %2, i32 0, i32 0, !dbg !2797
  %3 = load i8, ptr %type2, align 1, !dbg !2797
  %conv3 = zext i8 %3 to i32, !dbg !2796
  %cmp4 = icmp sgt i32 %conv3, 4, !dbg !2798
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2799

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2800

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2801
  store ptr %4, ptr %pcct_ss, align 8, !dbg !2802
  %5 = load ptr, ptr %pcct_ss, align 8, !dbg !2803
  %platform_interrupt = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %5, i32 0, i32 1, !dbg !2804
  %6 = load i32, ptr %platform_interrupt, align 1, !dbg !2804
  %7 = load ptr, ptr %pcct_ss, align 8, !dbg !2805
  %flags = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %7, i32 0, i32 2, !dbg !2806
  %8 = load i8, ptr %flags, align 1, !dbg !2806
  %conv6 = zext i8 %8 to i32, !dbg !2807
  %call = call i32 @pcc_map_interrupt(i32 noundef %6, i32 noundef %conv6) #12, !dbg !2808
  %9 = load ptr, ptr %pchan.addr, align 8, !dbg !2809
  %plat_irq = getelementptr inbounds %struct.pcc_chan_info, ptr %9, i32 0, i32 6, !dbg !2810
  store i32 %call, ptr %plat_irq, align 8, !dbg !2811
  %10 = load ptr, ptr %pchan.addr, align 8, !dbg !2812
  %plat_irq7 = getelementptr inbounds %struct.pcc_chan_info, ptr %10, i32 0, i32 6, !dbg !2814
  %11 = load i32, ptr %plat_irq7, align 8, !dbg !2814
  %cmp8 = icmp sle i32 %11, 0, !dbg !2815
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !2816

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !2817

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !2820

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2820

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %pcct_ss, align 8, !dbg !2817
  %platform_interrupt11 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %12, i32 0, i32 1, !dbg !2817
  %13 = load i32, ptr %platform_interrupt11, align 1, !dbg !2817
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %13) #13, !dbg !2817
  store i32 %call12, ptr %tmp, align 4, !dbg !2820
  %14 = load i32, ptr %tmp, align 4, !dbg !2817
  store i32 -22, ptr %retval, align 4, !dbg !2822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2822

if.end13:                                         ; preds = %if.end
  %15 = load ptr, ptr %pcct_ss, align 8, !dbg !2823
  %flags14 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %15, i32 0, i32 2, !dbg !2824
  %16 = load i8, ptr %flags14, align 1, !dbg !2824
  %conv15 = zext i8 %16 to i32, !dbg !2823
  %17 = load ptr, ptr %pchan.addr, align 8, !dbg !2825
  %plat_irq_flags = getelementptr inbounds %struct.pcc_chan_info, ptr %17, i32 0, i32 8, !dbg !2826
  store i32 %conv15, ptr %plat_irq_flags, align 8, !dbg !2827
  %18 = load ptr, ptr %pcct_ss, align 8, !dbg !2828
  %header = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %18, i32 0, i32 0, !dbg !2829
  %type16 = getelementptr inbounds %struct.acpi_subtable_header, ptr %header, i32 0, i32 0, !dbg !2830
  %19 = load i8, ptr %type16, align 1, !dbg !2830
  %conv17 = zext i8 %19 to i32, !dbg !2828
  %cmp18 = icmp eq i32 %conv17, 2, !dbg !2831
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !2832

if.then20:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct2_ss) #11, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %pcct2_ss, metadata !2761, metadata !DIExpression()), !dbg !2834
  %20 = load ptr, ptr %pcct_ss, align 8, !dbg !2835
  store ptr %20, ptr %pcct2_ss, align 8, !dbg !2834
  %21 = load ptr, ptr %pchan.addr, align 8, !dbg !2836
  %plat_irq_ack = getelementptr inbounds %struct.pcc_chan_info, ptr %21, i32 0, i32 2, !dbg !2837
  %22 = load ptr, ptr %pcct2_ss, align 8, !dbg !2838
  %platform_ack_register = getelementptr inbounds %struct.acpi_pcct_hw_reduced_type2, ptr %22, i32 0, i32 12, !dbg !2839
  %23 = load ptr, ptr %pcct2_ss, align 8, !dbg !2840
  %ack_preserve_mask = getelementptr inbounds %struct.acpi_pcct_hw_reduced_type2, ptr %23, i32 0, i32 13, !dbg !2841
  %24 = load i64, ptr %ack_preserve_mask, align 1, !dbg !2841
  %25 = load ptr, ptr %pcct2_ss, align 8, !dbg !2842
  %ack_write_mask = getelementptr inbounds %struct.acpi_pcct_hw_reduced_type2, ptr %25, i32 0, i32 14, !dbg !2843
  %26 = load i64, ptr %ack_write_mask, align 1, !dbg !2843
  %call21 = call i32 @pcc_chan_reg_init(ptr noundef %plat_irq_ack, ptr noundef %platform_ack_register, i64 noundef %24, i64 noundef %26, i64 noundef 0, ptr noundef @.str.9) #12, !dbg !2844
  store i32 %call21, ptr %ret, align 4, !dbg !2845
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct2_ss) #11, !dbg !2846
  br label %if.end39, !dbg !2847

if.else:                                          ; preds = %if.end13
  %27 = load ptr, ptr %pcct_ss, align 8, !dbg !2848
  %header22 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %27, i32 0, i32 0, !dbg !2849
  %type23 = getelementptr inbounds %struct.acpi_subtable_header, ptr %header22, i32 0, i32 0, !dbg !2850
  %28 = load i8, ptr %type23, align 1, !dbg !2850
  %conv24 = zext i8 %28 to i32, !dbg !2848
  %cmp25 = icmp eq i32 %conv24, 3, !dbg !2851
  br i1 %cmp25, label %if.then33, label %lor.lhs.false27, !dbg !2852

lor.lhs.false27:                                  ; preds = %if.else
  %29 = load ptr, ptr %pcct_ss, align 8, !dbg !2853
  %header28 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, ptr %29, i32 0, i32 0, !dbg !2854
  %type29 = getelementptr inbounds %struct.acpi_subtable_header, ptr %header28, i32 0, i32 0, !dbg !2855
  %30 = load i8, ptr %type29, align 1, !dbg !2855
  %conv30 = zext i8 %30 to i32, !dbg !2853
  %cmp31 = icmp eq i32 %conv30, 4, !dbg !2856
  br i1 %cmp31, label %if.then33, label %if.end38, !dbg !2857

if.then33:                                        ; preds = %lor.lhs.false27, %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_ext) #11, !dbg !2858
  call void @llvm.dbg.declare(metadata ptr %pcct_ext, metadata !2782, metadata !DIExpression()), !dbg !2859
  %31 = load ptr, ptr %pcct_ss, align 8, !dbg !2860
  store ptr %31, ptr %pcct_ext, align 8, !dbg !2859
  %32 = load ptr, ptr %pchan.addr, align 8, !dbg !2861
  %plat_irq_ack34 = getelementptr inbounds %struct.pcc_chan_info, ptr %32, i32 0, i32 2, !dbg !2862
  %33 = load ptr, ptr %pcct_ext, align 8, !dbg !2863
  %platform_ack_register35 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %33, i32 0, i32 12, !dbg !2864
  %34 = load ptr, ptr %pcct_ext, align 8, !dbg !2865
  %ack_preserve_mask36 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %34, i32 0, i32 13, !dbg !2866
  %35 = load i64, ptr %ack_preserve_mask36, align 1, !dbg !2866
  %36 = load ptr, ptr %pcct_ext, align 8, !dbg !2867
  %ack_set_mask = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %36, i32 0, i32 14, !dbg !2868
  %37 = load i64, ptr %ack_set_mask, align 1, !dbg !2868
  %call37 = call i32 @pcc_chan_reg_init(ptr noundef %plat_irq_ack34, ptr noundef %platform_ack_register35, i64 noundef %35, i64 noundef %37, i64 noundef 0, ptr noundef @.str.9) #12, !dbg !2869
  store i32 %call37, ptr %ret, align 4, !dbg !2870
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_ext) #11, !dbg !2871
  br label %if.end38, !dbg !2872

if.end38:                                         ; preds = %if.then33, %lor.lhs.false27
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then20
  %38 = load ptr, ptr %pchan.addr, align 8, !dbg !2873
  %call40 = call zeroext i1 @pcc_chan_plat_irq_can_be_shared(ptr noundef %38) #12, !dbg !2875
  br i1 %call40, label %land.lhs.true, label %if.end49, !dbg !2876

land.lhs.true:                                    ; preds = %if.end39
  %39 = load ptr, ptr %pchan.addr, align 8, !dbg !2877
  %plat_irq_ack42 = getelementptr inbounds %struct.pcc_chan_info, ptr %39, i32 0, i32 2, !dbg !2878
  %gas = getelementptr inbounds %struct.pcc_chan_reg, ptr %plat_irq_ack42, i32 0, i32 1, !dbg !2879
  %40 = load ptr, ptr %gas, align 8, !dbg !2879
  %tobool = icmp ne ptr %40, null, !dbg !2877
  br i1 %tobool, label %if.end49, label %if.then43, !dbg !2880

if.then43:                                        ; preds = %land.lhs.true
  br label %do.body44, !dbg !2881

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !2884

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !2884

do.end46:                                         ; preds = %do.cond45
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #13, !dbg !2881
  store i32 %call48, ptr %tmp47, align 4, !dbg !2884
  %41 = load i32, ptr %tmp47, align 4, !dbg !2881
  store i32 -22, ptr %retval, align 4, !dbg !2886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2886

if.end49:                                         ; preds = %land.lhs.true, %if.end39
  %42 = load i32, ptr %ret, align 4, !dbg !2887
  store i32 %42, ptr %retval, align 4, !dbg !2888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2888

cleanup:                                          ; preds = %if.end49, %do.end46, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_ss) #11, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2889
  %43 = load i32, ptr %retval, align 4, !dbg !2889
  ret i32 %43, !dbg !2889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_parse_subspace_db_reg(ptr noundef %pchan, ptr noundef %pcct_entry) #0 align 16 !dbg !2890 {
entry:
  %retval = alloca i32, align 4
  %pchan.addr = alloca ptr, align 8
  %pcct_entry.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pcct_ss = alloca ptr, align 8
  %pcct_ext = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !2892, metadata !DIExpression()), !dbg !2900
  store ptr %pcct_entry, ptr %pcct_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcct_entry.addr, metadata !2893, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2894, metadata !DIExpression()), !dbg !2903
  store i32 0, ptr %ret, align 4, !dbg !2903
  %0 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2904
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %0, i32 0, i32 0, !dbg !2905
  %1 = load i8, ptr %type, align 1, !dbg !2905
  %conv = zext i8 %1 to i32, !dbg !2904
  %cmp = icmp sle i32 %conv, 2, !dbg !2906
  br i1 %cmp, label %if.then, label %if.else, !dbg !2907

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_ss) #11, !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %pcct_ss, metadata !2895, metadata !DIExpression()), !dbg !2909
  %2 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2910
  store ptr %2, ptr %pcct_ss, align 8, !dbg !2911
  %3 = load ptr, ptr %pchan.addr, align 8, !dbg !2912
  %db = getelementptr inbounds %struct.pcc_chan_info, ptr %3, i32 0, i32 1, !dbg !2913
  %4 = load ptr, ptr %pcct_ss, align 8, !dbg !2914
  %doorbell_register = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %4, i32 0, i32 4, !dbg !2915
  %5 = load ptr, ptr %pcct_ss, align 8, !dbg !2916
  %preserve_mask = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %5, i32 0, i32 5, !dbg !2917
  %6 = load i64, ptr %preserve_mask, align 1, !dbg !2917
  %7 = load ptr, ptr %pcct_ss, align 8, !dbg !2918
  %write_mask = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %7, i32 0, i32 6, !dbg !2919
  %8 = load i64, ptr %write_mask, align 1, !dbg !2919
  %call = call i32 @pcc_chan_reg_init(ptr noundef %db, ptr noundef %doorbell_register, i64 noundef %6, i64 noundef %8, i64 noundef 0, ptr noundef @.str.13) #12, !dbg !2920
  store i32 %call, ptr %ret, align 4, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_ss) #11, !dbg !2922
  br label %if.end17, !dbg !2923

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_ext) #11, !dbg !2924
  call void @llvm.dbg.declare(metadata ptr %pcct_ext, metadata !2898, metadata !DIExpression()), !dbg !2925
  %9 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2926
  store ptr %9, ptr %pcct_ext, align 8, !dbg !2927
  %10 = load ptr, ptr %pchan.addr, align 8, !dbg !2928
  %db2 = getelementptr inbounds %struct.pcc_chan_info, ptr %10, i32 0, i32 1, !dbg !2929
  %11 = load ptr, ptr %pcct_ext, align 8, !dbg !2930
  %doorbell_register3 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %11, i32 0, i32 6, !dbg !2931
  %12 = load ptr, ptr %pcct_ext, align 8, !dbg !2932
  %preserve_mask4 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %12, i32 0, i32 7, !dbg !2933
  %13 = load i64, ptr %preserve_mask4, align 1, !dbg !2933
  %14 = load ptr, ptr %pcct_ext, align 8, !dbg !2934
  %write_mask5 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %14, i32 0, i32 8, !dbg !2935
  %15 = load i64, ptr %write_mask5, align 1, !dbg !2935
  %call6 = call i32 @pcc_chan_reg_init(ptr noundef %db2, ptr noundef %doorbell_register3, i64 noundef %13, i64 noundef %15, i64 noundef 0, ptr noundef @.str.13) #12, !dbg !2936
  store i32 %call6, ptr %ret, align 4, !dbg !2937
  %16 = load i32, ptr %ret, align 4, !dbg !2938
  %tobool = icmp ne i32 %16, 0, !dbg !2938
  br i1 %tobool, label %if.then7, label %if.end, !dbg !2940

if.then7:                                         ; preds = %if.else
  %17 = load i32, ptr %ret, align 4, !dbg !2941
  store i32 %17, ptr %retval, align 4, !dbg !2942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2942

if.end:                                           ; preds = %if.else
  %18 = load ptr, ptr %pchan.addr, align 8, !dbg !2943
  %cmd_complete = getelementptr inbounds %struct.pcc_chan_info, ptr %18, i32 0, i32 3, !dbg !2944
  %19 = load ptr, ptr %pcct_ext, align 8, !dbg !2945
  %cmd_complete_register = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %19, i32 0, i32 16, !dbg !2946
  %20 = load ptr, ptr %pcct_ext, align 8, !dbg !2947
  %cmd_complete_mask = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %20, i32 0, i32 17, !dbg !2948
  %21 = load i64, ptr %cmd_complete_mask, align 1, !dbg !2948
  %call8 = call i32 @pcc_chan_reg_init(ptr noundef %cmd_complete, ptr noundef %cmd_complete_register, i64 noundef 0, i64 noundef 0, i64 noundef %21, ptr noundef @.str.14) #12, !dbg !2949
  store i32 %call8, ptr %ret, align 4, !dbg !2950
  %22 = load i32, ptr %ret, align 4, !dbg !2951
  %tobool9 = icmp ne i32 %22, 0, !dbg !2951
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2953

if.then10:                                        ; preds = %if.end
  %23 = load i32, ptr %ret, align 4, !dbg !2954
  store i32 %23, ptr %retval, align 4, !dbg !2955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2955

if.end11:                                         ; preds = %if.end
  %24 = load ptr, ptr %pchan.addr, align 8, !dbg !2956
  %cmd_update = getelementptr inbounds %struct.pcc_chan_info, ptr %24, i32 0, i32 4, !dbg !2957
  %25 = load ptr, ptr %pcct_ext, align 8, !dbg !2958
  %cmd_update_register = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %25, i32 0, i32 18, !dbg !2959
  %26 = load ptr, ptr %pcct_ext, align 8, !dbg !2960
  %cmd_update_preserve_mask = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %26, i32 0, i32 19, !dbg !2961
  %27 = load i64, ptr %cmd_update_preserve_mask, align 1, !dbg !2961
  %28 = load ptr, ptr %pcct_ext, align 8, !dbg !2962
  %cmd_update_set_mask = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %28, i32 0, i32 20, !dbg !2963
  %29 = load i64, ptr %cmd_update_set_mask, align 1, !dbg !2963
  %call12 = call i32 @pcc_chan_reg_init(ptr noundef %cmd_update, ptr noundef %cmd_update_register, i64 noundef %27, i64 noundef %29, i64 noundef 0, ptr noundef @.str.15) #12, !dbg !2964
  store i32 %call12, ptr %ret, align 4, !dbg !2965
  %30 = load i32, ptr %ret, align 4, !dbg !2966
  %tobool13 = icmp ne i32 %30, 0, !dbg !2966
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2968

if.then14:                                        ; preds = %if.end11
  %31 = load i32, ptr %ret, align 4, !dbg !2969
  store i32 %31, ptr %retval, align 4, !dbg !2970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2970

if.end15:                                         ; preds = %if.end11
  %32 = load ptr, ptr %pchan.addr, align 8, !dbg !2971
  %error = getelementptr inbounds %struct.pcc_chan_info, ptr %32, i32 0, i32 5, !dbg !2972
  %33 = load ptr, ptr %pcct_ext, align 8, !dbg !2973
  %error_status_register = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %33, i32 0, i32 21, !dbg !2974
  %34 = load ptr, ptr %pcct_ext, align 8, !dbg !2975
  %error_status_mask = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %34, i32 0, i32 22, !dbg !2976
  %35 = load i64, ptr %error_status_mask, align 1, !dbg !2976
  %call16 = call i32 @pcc_chan_reg_init(ptr noundef %error, ptr noundef %error_status_register, i64 noundef 0, i64 noundef 0, i64 noundef %35, ptr noundef @.str.16) #12, !dbg !2977
  store i32 %call16, ptr %ret, align 4, !dbg !2978
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2979
  br label %cleanup, !dbg !2979

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_ext) #11, !dbg !2979
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17

if.end17:                                         ; preds = %cleanup.cont, %if.then
  %36 = load i32, ptr %ret, align 4, !dbg !2980
  store i32 %36, ptr %retval, align 4, !dbg !2981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !2981

cleanup18:                                        ; preds = %if.end17, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2982
  %37 = load i32, ptr %retval, align 4, !dbg !2982
  ret i32 %37, !dbg !2982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcc_parse_subspace_shmem(ptr noundef %pchan, ptr noundef %pcct_entry) #0 align 16 !dbg !2983 {
entry:
  %pchan.addr = alloca ptr, align 8
  %pcct_entry.addr = alloca ptr, align 8
  %pcct_ss = alloca ptr, align 8
  %pcct_ext = alloca ptr, align 8
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !2987, metadata !DIExpression()), !dbg !2994
  store ptr %pcct_entry, ptr %pcct_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcct_entry.addr, metadata !2988, metadata !DIExpression()), !dbg !2995
  %0 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !2996
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %0, i32 0, i32 0, !dbg !2997
  %1 = load i8, ptr %type, align 1, !dbg !2997
  %conv = zext i8 %1 to i32, !dbg !2996
  %cmp = icmp sle i32 %conv, 2, !dbg !2998
  br i1 %cmp, label %if.then, label %if.else, !dbg !2999

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_ss) #11, !dbg !3000
  call void @llvm.dbg.declare(metadata ptr %pcct_ss, metadata !2989, metadata !DIExpression()), !dbg !3001
  %2 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !3002
  store ptr %2, ptr %pcct_ss, align 8, !dbg !3001
  %3 = load ptr, ptr %pcct_ss, align 8, !dbg !3003
  %base_address = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %3, i32 0, i32 2, !dbg !3004
  %4 = load i64, ptr %base_address, align 1, !dbg !3004
  %5 = load ptr, ptr %pchan.addr, align 8, !dbg !3005
  %chan = getelementptr inbounds %struct.pcc_chan_info, ptr %5, i32 0, i32 0, !dbg !3006
  %shmem_base_addr = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan, i32 0, i32 1, !dbg !3007
  store i64 %4, ptr %shmem_base_addr, align 8, !dbg !3008
  %6 = load ptr, ptr %pcct_ss, align 8, !dbg !3009
  %length = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %6, i32 0, i32 3, !dbg !3010
  %7 = load i64, ptr %length, align 1, !dbg !3010
  %8 = load ptr, ptr %pchan.addr, align 8, !dbg !3011
  %chan2 = getelementptr inbounds %struct.pcc_chan_info, ptr %8, i32 0, i32 0, !dbg !3012
  %shmem_size = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan2, i32 0, i32 3, !dbg !3013
  store i64 %7, ptr %shmem_size, align 8, !dbg !3014
  %9 = load ptr, ptr %pcct_ss, align 8, !dbg !3015
  %latency = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %9, i32 0, i32 7, !dbg !3016
  %10 = load i32, ptr %latency, align 1, !dbg !3016
  %11 = load ptr, ptr %pchan.addr, align 8, !dbg !3017
  %chan3 = getelementptr inbounds %struct.pcc_chan_info, ptr %11, i32 0, i32 0, !dbg !3018
  %latency4 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan3, i32 0, i32 4, !dbg !3019
  store i32 %10, ptr %latency4, align 8, !dbg !3020
  %12 = load ptr, ptr %pcct_ss, align 8, !dbg !3021
  %max_access_rate = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %12, i32 0, i32 8, !dbg !3022
  %13 = load i32, ptr %max_access_rate, align 1, !dbg !3022
  %14 = load ptr, ptr %pchan.addr, align 8, !dbg !3023
  %chan5 = getelementptr inbounds %struct.pcc_chan_info, ptr %14, i32 0, i32 0, !dbg !3024
  %max_access_rate6 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan5, i32 0, i32 5, !dbg !3025
  store i32 %13, ptr %max_access_rate6, align 4, !dbg !3026
  %15 = load ptr, ptr %pcct_ss, align 8, !dbg !3027
  %min_turnaround_time = getelementptr inbounds %struct.acpi_pcct_subspace, ptr %15, i32 0, i32 9, !dbg !3028
  %16 = load i16, ptr %min_turnaround_time, align 1, !dbg !3028
  %17 = load ptr, ptr %pchan.addr, align 8, !dbg !3029
  %chan7 = getelementptr inbounds %struct.pcc_chan_info, ptr %17, i32 0, i32 0, !dbg !3030
  %min_turnaround_time8 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan7, i32 0, i32 6, !dbg !3031
  store i16 %16, ptr %min_turnaround_time8, align 8, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_ss) #11, !dbg !3033
  br label %if.end, !dbg !3034

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcct_ext) #11, !dbg !3035
  call void @llvm.dbg.declare(metadata ptr %pcct_ext, metadata !2992, metadata !DIExpression()), !dbg !3036
  %18 = load ptr, ptr %pcct_entry.addr, align 8, !dbg !3037
  store ptr %18, ptr %pcct_ext, align 8, !dbg !3036
  %19 = load ptr, ptr %pcct_ext, align 8, !dbg !3038
  %base_address9 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %19, i32 0, i32 4, !dbg !3039
  %20 = load i64, ptr %base_address9, align 1, !dbg !3039
  %21 = load ptr, ptr %pchan.addr, align 8, !dbg !3040
  %chan10 = getelementptr inbounds %struct.pcc_chan_info, ptr %21, i32 0, i32 0, !dbg !3041
  %shmem_base_addr11 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan10, i32 0, i32 1, !dbg !3042
  store i64 %20, ptr %shmem_base_addr11, align 8, !dbg !3043
  %22 = load ptr, ptr %pcct_ext, align 8, !dbg !3044
  %length12 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %22, i32 0, i32 5, !dbg !3045
  %23 = load i32, ptr %length12, align 1, !dbg !3045
  %conv13 = zext i32 %23 to i64, !dbg !3044
  %24 = load ptr, ptr %pchan.addr, align 8, !dbg !3046
  %chan14 = getelementptr inbounds %struct.pcc_chan_info, ptr %24, i32 0, i32 0, !dbg !3047
  %shmem_size15 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan14, i32 0, i32 3, !dbg !3048
  store i64 %conv13, ptr %shmem_size15, align 8, !dbg !3049
  %25 = load ptr, ptr %pcct_ext, align 8, !dbg !3050
  %latency16 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %25, i32 0, i32 9, !dbg !3051
  %26 = load i32, ptr %latency16, align 1, !dbg !3051
  %27 = load ptr, ptr %pchan.addr, align 8, !dbg !3052
  %chan17 = getelementptr inbounds %struct.pcc_chan_info, ptr %27, i32 0, i32 0, !dbg !3053
  %latency18 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan17, i32 0, i32 4, !dbg !3054
  store i32 %26, ptr %latency18, align 8, !dbg !3055
  %28 = load ptr, ptr %pcct_ext, align 8, !dbg !3056
  %max_access_rate19 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %28, i32 0, i32 10, !dbg !3057
  %29 = load i32, ptr %max_access_rate19, align 1, !dbg !3057
  %30 = load ptr, ptr %pchan.addr, align 8, !dbg !3058
  %chan20 = getelementptr inbounds %struct.pcc_chan_info, ptr %30, i32 0, i32 0, !dbg !3059
  %max_access_rate21 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan20, i32 0, i32 5, !dbg !3060
  store i32 %29, ptr %max_access_rate21, align 4, !dbg !3061
  %31 = load ptr, ptr %pcct_ext, align 8, !dbg !3062
  %min_turnaround_time22 = getelementptr inbounds %struct.acpi_pcct_ext_pcc_master, ptr %31, i32 0, i32 11, !dbg !3063
  %32 = load i32, ptr %min_turnaround_time22, align 1, !dbg !3063
  %conv23 = trunc i32 %32 to i16, !dbg !3062
  %33 = load ptr, ptr %pchan.addr, align 8, !dbg !3064
  %chan24 = getelementptr inbounds %struct.pcc_chan_info, ptr %33, i32 0, i32 0, !dbg !3065
  %min_turnaround_time25 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan24, i32 0, i32 6, !dbg !3066
  store i16 %conv23, ptr %min_turnaround_time25, align 8, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcct_ext) #11, !dbg !3068
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3070 dso_local i32 @mbox_controller_register(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kmalloc_array(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !3073 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3075, metadata !DIExpression()), !dbg !3080
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3076, metadata !DIExpression()), !dbg !3081
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3077, metadata !DIExpression()), !dbg !3082
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3078, metadata !DIExpression()), !dbg !3083
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !3084
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !3079, metadata !DIExpression()), !dbg !3085
  %0 = load i64, ptr %n.addr, align 8, !dbg !3086
  %1 = load i64, ptr %size.addr, align 8, !dbg !3086
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !3086
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !3086
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !3086
  store i64 %4, ptr %bytes, align 8, !dbg !3086
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #12, !dbg !3086
  %lnot = xor i1 %call, true, !dbg !3086
  %lnot1 = xor i1 %lnot, true, !dbg !3086
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3086
  %conv = sext i32 %lnot.ext to i64, !dbg !3086
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3086
  %tobool = icmp ne i64 %expval, 0, !dbg !3086
  br i1 %tobool, label %if.then, label %if.end, !dbg !3088

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3089

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !3090
  %6 = load i64, ptr %bytes, align 8, !dbg !3091
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3092
  %call2 = call noalias ptr @devm_kmalloc(ptr noundef %5, i64 noundef %6, i32 noundef %7) #14, !dbg !3093
  store ptr %call2, ptr %retval, align 8, !dbg !3094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3094

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !3095
  %8 = load ptr, ptr %retval, align 8, !dbg !3095
  ret ptr %8, !dbg !3095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !3096 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !3101, metadata !DIExpression()), !dbg !3102
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !3103, !range !2582, !noundef !349
  %tobool = trunc i8 %0 to i1, !dbg !3103
  %lnot = xor i1 %tobool, true, !dbg !3103
  %lnot1 = xor i1 %lnot, true, !dbg !3103
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3103
  %conv = sext i32 %lnot.ext to i64, !dbg !3103
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3103
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3103
  ret i1 %tobool2, !dbg !3104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !3105 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_map_interrupt(i32 noundef %interrupt, i32 noundef %flags) #0 align 16 !dbg !3106 {
entry:
  %retval = alloca i32, align 4
  %interrupt.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %trigger = alloca i32, align 4
  %polarity = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %interrupt, ptr %interrupt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interrupt.addr, metadata !3110, metadata !DIExpression()), !dbg !3114
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3111, metadata !DIExpression()), !dbg !3115
  call void @llvm.lifetime.start.p0(i64 4, ptr %trigger) #11, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %trigger, metadata !3112, metadata !DIExpression()), !dbg !3117
  call void @llvm.lifetime.start.p0(i64 4, ptr %polarity) #11, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %polarity, metadata !3113, metadata !DIExpression()), !dbg !3118
  %0 = load i32, ptr %interrupt.addr, align 4, !dbg !3119
  %tobool = icmp ne i32 %0, 0, !dbg !3119
  br i1 %tobool, label %if.end, label %if.then, !dbg !3121

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3122

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3123
  %and = and i32 %1, 2, !dbg !3124
  %tobool1 = icmp ne i32 %and, 0, !dbg !3125
  %2 = zext i1 %tobool1 to i64, !dbg !3125
  %cond = select i1 %tobool1, i32 1, i32 0, !dbg !3125
  store i32 %cond, ptr %trigger, align 4, !dbg !3126
  %3 = load i32, ptr %flags.addr, align 4, !dbg !3127
  %and2 = and i32 %3, 1, !dbg !3128
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3129
  %4 = zext i1 %tobool3 to i64, !dbg !3129
  %cond4 = select i1 %tobool3, i32 1, i32 0, !dbg !3129
  store i32 %cond4, ptr %polarity, align 4, !dbg !3130
  %5 = load i32, ptr %interrupt.addr, align 4, !dbg !3131
  %6 = load i32, ptr %trigger, align 4, !dbg !3132
  %7 = load i32, ptr %polarity, align 4, !dbg !3133
  %call = call i32 @acpi_register_gsi(ptr noundef null, i32 noundef %5, i32 noundef %6, i32 noundef %7) #12, !dbg !3134
  store i32 %call, ptr %retval, align 4, !dbg !3135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3135

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %polarity) #11, !dbg !3136
  call void @llvm.lifetime.end.p0(i64 4, ptr %trigger) #11, !dbg !3136
  %8 = load i32, ptr %retval, align 4, !dbg !3136
  ret i32 %8, !dbg !3136
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_chan_reg_init(ptr noundef %reg, ptr noundef %gas, i64 noundef %preserve_mask, i64 noundef %set_mask, i64 noundef %status_mask, ptr noundef %name) #0 align 16 !dbg !3137 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %gas.addr = alloca ptr, align 8
  %preserve_mask.addr = alloca i64, align 8
  %set_mask.addr = alloca i64, align 8
  %status_mask.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !3142, metadata !DIExpression()), !dbg !3148
  store ptr %gas, ptr %gas.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gas.addr, metadata !3143, metadata !DIExpression()), !dbg !3149
  store i64 %preserve_mask, ptr %preserve_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %preserve_mask.addr, metadata !3144, metadata !DIExpression()), !dbg !3150
  store i64 %set_mask, ptr %set_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set_mask.addr, metadata !3145, metadata !DIExpression()), !dbg !3151
  store i64 %status_mask, ptr %status_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status_mask.addr, metadata !3146, metadata !DIExpression()), !dbg !3152
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3147, metadata !DIExpression()), !dbg !3153
  %0 = load ptr, ptr %gas.addr, align 8, !dbg !3154
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %0, i32 0, i32 0, !dbg !3156
  %1 = load i8, ptr %space_id, align 1, !dbg !3156
  %conv = zext i8 %1 to i32, !dbg !3154
  %cmp = icmp eq i32 %conv, 0, !dbg !3157
  br i1 %cmp, label %if.then, label %if.end28, !dbg !3158

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %gas.addr, align 8, !dbg !3159
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %2, i32 0, i32 1, !dbg !3162
  %3 = load i8, ptr %bit_width, align 1, !dbg !3162
  %conv2 = zext i8 %3 to i32, !dbg !3159
  %cmp3 = icmp sge i32 %conv2, 8, !dbg !3163
  br i1 %cmp3, label %land.lhs.true, label %if.then13, !dbg !3164

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %gas.addr, align 8, !dbg !3165
  %bit_width5 = getelementptr inbounds %struct.acpi_generic_address, ptr %4, i32 0, i32 1, !dbg !3166
  %5 = load i8, ptr %bit_width5, align 1, !dbg !3166
  %conv6 = zext i8 %5 to i32, !dbg !3165
  %cmp7 = icmp sle i32 %conv6, 64, !dbg !3167
  br i1 %cmp7, label %land.lhs.true9, label %if.then13, !dbg !3168

land.lhs.true9:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %gas.addr, align 8, !dbg !3169
  %bit_width10 = getelementptr inbounds %struct.acpi_generic_address, ptr %6, i32 0, i32 1, !dbg !3170
  %7 = load i8, ptr %bit_width10, align 1, !dbg !3170
  %conv11 = zext i8 %7 to i64, !dbg !3169
  %call = call zeroext i1 @is_power_of_2(i64 noundef %conv11) #15, !dbg !3171
  br i1 %call, label %if.end, label %if.then13, !dbg !3172

if.then13:                                        ; preds = %land.lhs.true9, %land.lhs.true, %if.then
  br label %do.body, !dbg !3173

do.body:                                          ; preds = %if.then13
  br label %do.end, !dbg !3176

do.end:                                           ; preds = %do.body
  %8 = load ptr, ptr %gas.addr, align 8, !dbg !3173
  %bit_width14 = getelementptr inbounds %struct.acpi_generic_address, ptr %8, i32 0, i32 1, !dbg !3173
  %9 = load i8, ptr %bit_width14, align 1, !dbg !3173
  %conv15 = zext i8 %9 to i32, !dbg !3173
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %conv15) #13, !dbg !3173
  store i32 %call16, ptr %tmp, align 4, !dbg !3176
  %10 = load i32, ptr %tmp, align 4, !dbg !3173
  store i32 -14, ptr %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

if.end:                                           ; preds = %land.lhs.true9
  %11 = load ptr, ptr %gas.addr, align 8, !dbg !3179
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %11, i32 0, i32 4, !dbg !3180
  %12 = load i64, ptr %address, align 1, !dbg !3180
  %13 = load ptr, ptr %gas.addr, align 8, !dbg !3181
  %bit_width17 = getelementptr inbounds %struct.acpi_generic_address, ptr %13, i32 0, i32 1, !dbg !3182
  %14 = load i8, ptr %bit_width17, align 1, !dbg !3182
  %conv18 = zext i8 %14 to i32, !dbg !3181
  %div = sdiv i32 %conv18, 8, !dbg !3183
  %conv19 = sext i32 %div to i64, !dbg !3181
  %call20 = call ptr @acpi_os_ioremap(i64 noundef %12, i64 noundef %conv19) #12, !dbg !3184
  %15 = load ptr, ptr %reg.addr, align 8, !dbg !3185
  %vaddr = getelementptr inbounds %struct.pcc_chan_reg, ptr %15, i32 0, i32 0, !dbg !3186
  store ptr %call20, ptr %vaddr, align 8, !dbg !3187
  %16 = load ptr, ptr %reg.addr, align 8, !dbg !3188
  %vaddr21 = getelementptr inbounds %struct.pcc_chan_reg, ptr %16, i32 0, i32 0, !dbg !3190
  %17 = load ptr, ptr %vaddr21, align 8, !dbg !3190
  %tobool = icmp ne ptr %17, null, !dbg !3188
  br i1 %tobool, label %if.end27, label %if.then22, !dbg !3191

if.then22:                                        ; preds = %if.end
  br label %do.body23, !dbg !3192

do.body23:                                        ; preds = %if.then22
  br label %do.end24, !dbg !3195

do.end24:                                         ; preds = %do.body23
  %18 = load ptr, ptr %name.addr, align 8, !dbg !3192
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %18) #13, !dbg !3192
  store i32 %call26, ptr %tmp25, align 4, !dbg !3195
  %19 = load i32, ptr %tmp25, align 4, !dbg !3192
  store i32 -12, ptr %retval, align 4, !dbg !3197
  br label %return, !dbg !3197

if.end27:                                         ; preds = %if.end
  br label %if.end28, !dbg !3198

if.end28:                                         ; preds = %if.end27, %entry
  %20 = load ptr, ptr %gas.addr, align 8, !dbg !3199
  %21 = load ptr, ptr %reg.addr, align 8, !dbg !3200
  %gas29 = getelementptr inbounds %struct.pcc_chan_reg, ptr %21, i32 0, i32 1, !dbg !3201
  store ptr %20, ptr %gas29, align 8, !dbg !3202
  %22 = load i64, ptr %preserve_mask.addr, align 8, !dbg !3203
  %23 = load ptr, ptr %reg.addr, align 8, !dbg !3204
  %preserve_mask30 = getelementptr inbounds %struct.pcc_chan_reg, ptr %23, i32 0, i32 2, !dbg !3205
  store i64 %22, ptr %preserve_mask30, align 8, !dbg !3206
  %24 = load i64, ptr %set_mask.addr, align 8, !dbg !3207
  %25 = load ptr, ptr %reg.addr, align 8, !dbg !3208
  %set_mask31 = getelementptr inbounds %struct.pcc_chan_reg, ptr %25, i32 0, i32 3, !dbg !3209
  store i64 %24, ptr %set_mask31, align 8, !dbg !3210
  %26 = load i64, ptr %status_mask.addr, align 8, !dbg !3211
  %27 = load ptr, ptr %reg.addr, align 8, !dbg !3212
  %status_mask32 = getelementptr inbounds %struct.pcc_chan_reg, ptr %27, i32 0, i32 4, !dbg !3213
  store i64 %26, ptr %status_mask32, align 8, !dbg !3214
  store i32 0, ptr %retval, align 4, !dbg !3215
  br label %return, !dbg !3215

return:                                           ; preds = %if.end28, %do.end24, %do.end
  %28 = load i32, ptr %retval, align 4, !dbg !3216
  ret i32 %28, !dbg !3216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcc_chan_plat_irq_can_be_shared(ptr noundef %pchan) #0 align 16 !dbg !3217 {
entry:
  %pchan.addr = alloca ptr, align 8
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  %0 = load ptr, ptr %pchan.addr, align 8, !dbg !3223
  %plat_irq_flags = getelementptr inbounds %struct.pcc_chan_info, ptr %0, i32 0, i32 8, !dbg !3224
  %1 = load i32, ptr %plat_irq_flags, align 8, !dbg !3224
  %and = and i32 %1, 2, !dbg !3225
  %cmp = icmp eq i32 %and, 0, !dbg !3226
  ret i1 %cmp, !dbg !3227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3228 dso_local i32 @acpi_register_gsi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #9 align 16 !dbg !3231 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  %0 = load i64, ptr %n.addr, align 8, !dbg !3238
  %cmp = icmp ne i64 %0, 0, !dbg !3239
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3240

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !3241
  %2 = load i64, ptr %n.addr, align 8, !dbg !3242
  %sub = sub i64 %2, 1, !dbg !3243
  %and = and i64 %1, %sub, !dbg !3244
  %cmp1 = icmp eq i64 %and, 0, !dbg !3245
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !3246
  ret i1 %3, !dbg !3247
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_ioremap(i64 noundef %phys, i64 noundef %size) #3 align 16 !dbg !3248 {
entry:
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !3255, metadata !DIExpression()), !dbg !3257
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3256, metadata !DIExpression()), !dbg !3258
  %0 = load i64, ptr %phys.addr, align 8, !dbg !3259
  %1 = load i64, ptr %size.addr, align 8, !dbg !3260
  %call = call ptr @ioremap_cache(i64 noundef %0, i64 noundef %1) #12, !dbg !3261
  ret ptr %call, !dbg !3262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3263 dso_local ptr @ioremap_cache(i64 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_send_data(ptr noundef %chan, ptr noundef %data) #0 align 16 !dbg !3264 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pchan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !3266, metadata !DIExpression()), !dbg !3270
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3267, metadata !DIExpression()), !dbg !3271
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3272
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3268, metadata !DIExpression()), !dbg !3273
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan) #11, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %pchan, metadata !3269, metadata !DIExpression()), !dbg !3275
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !3276
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9, !dbg !3277
  %1 = load ptr, ptr %con_priv, align 8, !dbg !3277
  store ptr %1, ptr %pchan, align 8, !dbg !3275
  %2 = load ptr, ptr %pchan, align 8, !dbg !3278
  %cmd_update = getelementptr inbounds %struct.pcc_chan_info, ptr %2, i32 0, i32 4, !dbg !3279
  %call = call i32 @pcc_chan_reg_read_modify_write(ptr noundef %cmd_update) #12, !dbg !3280
  store i32 %call, ptr %ret, align 4, !dbg !3281
  %3 = load i32, ptr %ret, align 4, !dbg !3282
  %tobool = icmp ne i32 %3, 0, !dbg !3282
  br i1 %tobool, label %if.then, label %if.end, !dbg !3284

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !3285
  store i32 %4, ptr %retval, align 4, !dbg !3286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3286

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pchan, align 8, !dbg !3287
  %db = getelementptr inbounds %struct.pcc_chan_info, ptr %5, i32 0, i32 1, !dbg !3288
  %call1 = call i32 @pcc_chan_reg_read_modify_write(ptr noundef %db) #12, !dbg !3289
  store i32 %call1, ptr %ret, align 4, !dbg !3290
  %6 = load i32, ptr %ret, align 4, !dbg !3291
  %tobool2 = icmp ne i32 %6, 0, !dbg !3291
  br i1 %tobool2, label %if.end4, label %land.lhs.true, !dbg !3293

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %pchan, align 8, !dbg !3294
  %plat_irq = getelementptr inbounds %struct.pcc_chan_info, ptr %7, i32 0, i32 6, !dbg !3295
  %8 = load i32, ptr %plat_irq, align 8, !dbg !3295
  %cmp = icmp sgt i32 %8, 0, !dbg !3296
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !3297

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %pchan, align 8, !dbg !3298
  %chan_in_use = getelementptr inbounds %struct.pcc_chan_info, ptr %9, i32 0, i32 9, !dbg !3299
  store i8 1, ptr %chan_in_use, align 4, !dbg !3300
  br label %if.end4, !dbg !3298

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !3301
  store i32 %10, ptr %retval, align 4, !dbg !3302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3302

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan) #11, !dbg !3303
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3303
  %11 = load i32, ptr %retval, align 4, !dbg !3303
  ret i32 %11, !dbg !3303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_startup(ptr noundef %chan) #0 align 16 !dbg !3304 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %pchan = alloca ptr, align 8
  %irqflags = alloca i64, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !3306, metadata !DIExpression()), !dbg !3310
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan) #11, !dbg !3311
  call void @llvm.dbg.declare(metadata ptr %pchan, metadata !3307, metadata !DIExpression()), !dbg !3312
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !3313
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9, !dbg !3314
  %1 = load ptr, ptr %con_priv, align 8, !dbg !3314
  store ptr %1, ptr %pchan, align 8, !dbg !3312
  call void @llvm.lifetime.start.p0(i64 8, ptr %irqflags) #11, !dbg !3315
  call void @llvm.dbg.declare(metadata ptr %irqflags, metadata !3308, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !3309, metadata !DIExpression()), !dbg !3318
  %2 = load ptr, ptr %pchan, align 8, !dbg !3319
  %plat_irq = getelementptr inbounds %struct.pcc_chan_info, ptr %2, i32 0, i32 6, !dbg !3321
  %3 = load i32, ptr %plat_irq, align 8, !dbg !3321
  %cmp = icmp sgt i32 %3, 0, !dbg !3322
  br i1 %cmp, label %if.then, label %if.end10, !dbg !3323

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pchan, align 8, !dbg !3324
  %call = call zeroext i1 @pcc_chan_plat_irq_can_be_shared(ptr noundef %4) #12, !dbg !3326
  %5 = zext i1 %call to i64, !dbg !3326
  %cond = select i1 %call, i32 8320, i32 0, !dbg !3326
  %conv = sext i32 %cond to i64, !dbg !3326
  store i64 %conv, ptr %irqflags, align 8, !dbg !3327
  %6 = load ptr, ptr %chan.addr, align 8, !dbg !3328
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %6, i32 0, i32 0, !dbg !3329
  %7 = load ptr, ptr %mbox, align 8, !dbg !3329
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %7, i32 0, i32 0, !dbg !3330
  %8 = load ptr, ptr %dev, align 8, !dbg !3330
  %9 = load ptr, ptr %pchan, align 8, !dbg !3331
  %plat_irq1 = getelementptr inbounds %struct.pcc_chan_info, ptr %9, i32 0, i32 6, !dbg !3332
  %10 = load i32, ptr %plat_irq1, align 8, !dbg !3332
  %11 = load i64, ptr %irqflags, align 8, !dbg !3333
  %12 = load ptr, ptr %chan.addr, align 8, !dbg !3334
  %call2 = call i32 @devm_request_irq(ptr noundef %8, i32 noundef %10, ptr noundef @pcc_mbox_irq, i64 noundef %11, ptr noundef @.str.17, ptr noundef %12) #12, !dbg !3335
  store i32 %call2, ptr %rc, align 4, !dbg !3336
  %13 = load i32, ptr %rc, align 4, !dbg !3337
  %tobool = icmp ne i32 %13, 0, !dbg !3337
  %lnot = xor i1 %tobool, true, !dbg !3337
  %lnot3 = xor i1 %lnot, true, !dbg !3337
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3337
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3337
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !3337
  %tobool5 = icmp ne i64 %expval, 0, !dbg !3337
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !3339

if.then6:                                         ; preds = %if.then
  br label %do.body, !dbg !3340

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !3343

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3343

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %chan.addr, align 8, !dbg !3340
  %mbox7 = getelementptr inbounds %struct.mbox_chan, ptr %14, i32 0, i32 0, !dbg !3340
  %15 = load ptr, ptr %mbox7, align 8, !dbg !3340
  %dev8 = getelementptr inbounds %struct.mbox_controller, ptr %15, i32 0, i32 0, !dbg !3340
  %16 = load ptr, ptr %dev8, align 8, !dbg !3340
  %17 = load ptr, ptr %pchan, align 8, !dbg !3340
  %plat_irq9 = getelementptr inbounds %struct.pcc_chan_info, ptr %17, i32 0, i32 6, !dbg !3340
  %18 = load i32, ptr %plat_irq9, align 8, !dbg !3340
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef @.str.18, i32 noundef %18) #13, !dbg !3340
  %19 = load i32, ptr %rc, align 4, !dbg !3345
  store i32 %19, ptr %retval, align 4, !dbg !3346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3346

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !3347

if.end10:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !3348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3348

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !3349
  call void @llvm.lifetime.end.p0(i64 8, ptr %irqflags) #11, !dbg !3349
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan) #11, !dbg !3349
  %20 = load i32, ptr %retval, align 4, !dbg !3349
  ret i32 %20, !dbg !3349
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcc_shutdown(ptr noundef %chan) #0 align 16 !dbg !3350 {
entry:
  %chan.addr = alloca ptr, align 8
  %pchan = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan) #11, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %pchan, metadata !3353, metadata !DIExpression()), !dbg !3356
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !3357
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9, !dbg !3358
  %1 = load ptr, ptr %con_priv, align 8, !dbg !3358
  store ptr %1, ptr %pchan, align 8, !dbg !3356
  %2 = load ptr, ptr %pchan, align 8, !dbg !3359
  %plat_irq = getelementptr inbounds %struct.pcc_chan_info, ptr %2, i32 0, i32 6, !dbg !3361
  %3 = load i32, ptr %plat_irq, align 8, !dbg !3361
  %cmp = icmp sgt i32 %3, 0, !dbg !3362
  br i1 %cmp, label %if.then, label %if.end, !dbg !3363

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %chan.addr, align 8, !dbg !3364
  %mbox = getelementptr inbounds %struct.mbox_chan, ptr %4, i32 0, i32 0, !dbg !3365
  %5 = load ptr, ptr %mbox, align 8, !dbg !3365
  %dev = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 0, !dbg !3366
  %6 = load ptr, ptr %dev, align 8, !dbg !3366
  %7 = load ptr, ptr %pchan, align 8, !dbg !3367
  %plat_irq1 = getelementptr inbounds %struct.pcc_chan_info, ptr %7, i32 0, i32 6, !dbg !3368
  %8 = load i32, ptr %plat_irq1, align 8, !dbg !3368
  %9 = load ptr, ptr %chan.addr, align 8, !dbg !3369
  call void @devm_free_irq(ptr noundef %6, i32 noundef %8, ptr noundef %9) #12, !dbg !3370
  br label %if.end, !dbg !3370

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan) #11, !dbg !3371
  ret void, !dbg !3371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_chan_reg_read_modify_write(ptr noundef %reg) #0 align 16 !dbg !3372 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3377, metadata !DIExpression()), !dbg !3381
  store i32 0, ptr %ret, align 4, !dbg !3381
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3378, metadata !DIExpression()), !dbg !3383
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !3384
  %call = call i32 @pcc_chan_reg_read(ptr noundef %0, ptr noundef %val) #12, !dbg !3385
  store i32 %call, ptr %ret, align 4, !dbg !3386
  %1 = load i32, ptr %ret, align 4, !dbg !3387
  %tobool = icmp ne i32 %1, 0, !dbg !3387
  br i1 %tobool, label %if.then, label %if.end, !dbg !3389

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !3390
  store i32 %2, ptr %retval, align 4, !dbg !3391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3391

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %reg.addr, align 8, !dbg !3392
  %preserve_mask = getelementptr inbounds %struct.pcc_chan_reg, ptr %3, i32 0, i32 2, !dbg !3393
  %4 = load i64, ptr %preserve_mask, align 8, !dbg !3393
  %5 = load i64, ptr %val, align 8, !dbg !3394
  %and = and i64 %5, %4, !dbg !3394
  store i64 %and, ptr %val, align 8, !dbg !3394
  %6 = load ptr, ptr %reg.addr, align 8, !dbg !3395
  %set_mask = getelementptr inbounds %struct.pcc_chan_reg, ptr %6, i32 0, i32 3, !dbg !3396
  %7 = load i64, ptr %set_mask, align 8, !dbg !3396
  %8 = load i64, ptr %val, align 8, !dbg !3397
  %or = or i64 %8, %7, !dbg !3397
  store i64 %or, ptr %val, align 8, !dbg !3397
  %9 = load ptr, ptr %reg.addr, align 8, !dbg !3398
  %10 = load i64, ptr %val, align 8, !dbg !3399
  %call1 = call i32 @pcc_chan_reg_write(ptr noundef %9, i64 noundef %10) #12, !dbg !3400
  store i32 %call1, ptr %retval, align 4, !dbg !3401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3401

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !3402
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3402
  %11 = load i32, ptr %retval, align 4, !dbg !3402
  ret i32 %11, !dbg !3402
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_chan_reg_read(ptr noundef %reg, ptr noundef %val) #0 align 16 !dbg !3403 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !3407, metadata !DIExpression()), !dbg !3410
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3408, metadata !DIExpression()), !dbg !3411
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3412
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3409, metadata !DIExpression()), !dbg !3413
  store i32 0, ptr %ret, align 4, !dbg !3413
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !3414
  %gas = getelementptr inbounds %struct.pcc_chan_reg, ptr %0, i32 0, i32 1, !dbg !3416
  %1 = load ptr, ptr %gas, align 8, !dbg !3416
  %tobool = icmp ne ptr %1, null, !dbg !3414
  br i1 %tobool, label %if.end, label %if.then, !dbg !3417

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !dbg !3418
  store i64 0, ptr %2, align 8, !dbg !3420
  store i32 0, ptr %retval, align 4, !dbg !3421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3421

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %reg.addr, align 8, !dbg !3422
  %vaddr = getelementptr inbounds %struct.pcc_chan_reg, ptr %3, i32 0, i32 0, !dbg !3424
  %4 = load ptr, ptr %vaddr, align 8, !dbg !3424
  %tobool1 = icmp ne ptr %4, null, !dbg !3422
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3425

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %reg.addr, align 8, !dbg !3426
  %vaddr3 = getelementptr inbounds %struct.pcc_chan_reg, ptr %5, i32 0, i32 0, !dbg !3427
  %6 = load ptr, ptr %vaddr3, align 8, !dbg !3427
  %7 = load ptr, ptr %val.addr, align 8, !dbg !3428
  %8 = load ptr, ptr %reg.addr, align 8, !dbg !3429
  %gas4 = getelementptr inbounds %struct.pcc_chan_reg, ptr %8, i32 0, i32 1, !dbg !3430
  %9 = load ptr, ptr %gas4, align 8, !dbg !3430
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %9, i32 0, i32 1, !dbg !3431
  %10 = load i8, ptr %bit_width, align 1, !dbg !3431
  %conv = zext i8 %10 to i32, !dbg !3429
  call void @read_register(ptr noundef %6, ptr noundef %7, i32 noundef %conv) #12, !dbg !3432
  br label %if.end6, !dbg !3432

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %val.addr, align 8, !dbg !3433
  %12 = load ptr, ptr %reg.addr, align 8, !dbg !3434
  %gas5 = getelementptr inbounds %struct.pcc_chan_reg, ptr %12, i32 0, i32 1, !dbg !3435
  %13 = load ptr, ptr %gas5, align 8, !dbg !3435
  %call = call i32 @acpi_read(ptr noundef %11, ptr noundef %13) #12, !dbg !3436
  store i32 %call, ptr %ret, align 4, !dbg !3437
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %14 = load i32, ptr %ret, align 4, !dbg !3438
  store i32 %14, ptr %retval, align 4, !dbg !3439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3439

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3440
  %15 = load i32, ptr %retval, align 4, !dbg !3440
  ret i32 %15, !dbg !3440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_chan_reg_write(ptr noundef %reg, i64 noundef %val) #0 align 16 !dbg !3441 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !3445, metadata !DIExpression()), !dbg !3448
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3450
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3447, metadata !DIExpression()), !dbg !3451
  store i32 0, ptr %ret, align 4, !dbg !3451
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !3452
  %gas = getelementptr inbounds %struct.pcc_chan_reg, ptr %0, i32 0, i32 1, !dbg !3454
  %1 = load ptr, ptr %gas, align 8, !dbg !3454
  %tobool = icmp ne ptr %1, null, !dbg !3452
  br i1 %tobool, label %if.end, label %if.then, !dbg !3455

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3456

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %reg.addr, align 8, !dbg !3457
  %vaddr = getelementptr inbounds %struct.pcc_chan_reg, ptr %2, i32 0, i32 0, !dbg !3459
  %3 = load ptr, ptr %vaddr, align 8, !dbg !3459
  %tobool1 = icmp ne ptr %3, null, !dbg !3457
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3460

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %reg.addr, align 8, !dbg !3461
  %vaddr3 = getelementptr inbounds %struct.pcc_chan_reg, ptr %4, i32 0, i32 0, !dbg !3462
  %5 = load ptr, ptr %vaddr3, align 8, !dbg !3462
  %6 = load i64, ptr %val.addr, align 8, !dbg !3463
  %7 = load ptr, ptr %reg.addr, align 8, !dbg !3464
  %gas4 = getelementptr inbounds %struct.pcc_chan_reg, ptr %7, i32 0, i32 1, !dbg !3465
  %8 = load ptr, ptr %gas4, align 8, !dbg !3465
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %8, i32 0, i32 1, !dbg !3466
  %9 = load i8, ptr %bit_width, align 1, !dbg !3466
  %conv = zext i8 %9 to i32, !dbg !3464
  call void @write_register(ptr noundef %5, i64 noundef %6, i32 noundef %conv) #12, !dbg !3467
  br label %if.end6, !dbg !3467

if.else:                                          ; preds = %if.end
  %10 = load i64, ptr %val.addr, align 8, !dbg !3468
  %11 = load ptr, ptr %reg.addr, align 8, !dbg !3469
  %gas5 = getelementptr inbounds %struct.pcc_chan_reg, ptr %11, i32 0, i32 1, !dbg !3470
  %12 = load ptr, ptr %gas5, align 8, !dbg !3470
  %call = call i32 @acpi_write(i64 noundef %10, ptr noundef %12) #12, !dbg !3471
  store i32 %call, ptr %ret, align 4, !dbg !3472
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %13 = load i32, ptr %ret, align 4, !dbg !3473
  store i32 %13, ptr %retval, align 4, !dbg !3474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3474

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3475
  %14 = load i32, ptr %retval, align 4, !dbg !3475
  ret i32 %14, !dbg !3475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @read_register(ptr noundef %vaddr, ptr noundef %val, i32 noundef %bit_width) #0 align 16 !dbg !3476 {
entry:
  %vaddr.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %bit_width.addr = alloca i32, align 4
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !3480, metadata !DIExpression()), !dbg !3483
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3481, metadata !DIExpression()), !dbg !3484
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !3482, metadata !DIExpression()), !dbg !3485
  %0 = load i32, ptr %bit_width.addr, align 4, !dbg !3486
  switch i32 %0, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb4
    i32 64, label %sw.bb7
  ], !dbg !3487

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %vaddr.addr, align 8, !dbg !3488
  %call = call zeroext i8 @readb(ptr noundef %1) #12, !dbg !3490
  %conv = zext i8 %call to i64, !dbg !3490
  %2 = load ptr, ptr %val.addr, align 8, !dbg !3491
  store i64 %conv, ptr %2, align 8, !dbg !3492
  br label %sw.epilog, !dbg !3493

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %vaddr.addr, align 8, !dbg !3494
  %call2 = call zeroext i16 @readw(ptr noundef %3) #12, !dbg !3495
  %conv3 = zext i16 %call2 to i64, !dbg !3495
  %4 = load ptr, ptr %val.addr, align 8, !dbg !3496
  store i64 %conv3, ptr %4, align 8, !dbg !3497
  br label %sw.epilog, !dbg !3498

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %vaddr.addr, align 8, !dbg !3499
  %call5 = call i32 @readl(ptr noundef %5) #12, !dbg !3500
  %conv6 = zext i32 %call5 to i64, !dbg !3500
  %6 = load ptr, ptr %val.addr, align 8, !dbg !3501
  store i64 %conv6, ptr %6, align 8, !dbg !3502
  br label %sw.epilog, !dbg !3503

sw.bb7:                                           ; preds = %entry
  %7 = load ptr, ptr %vaddr.addr, align 8, !dbg !3504
  %call8 = call i64 @readq(ptr noundef %7) #12, !dbg !3505
  %8 = load ptr, ptr %val.addr, align 8, !dbg !3506
  store i64 %call8, ptr %8, align 8, !dbg !3507
  br label %sw.epilog, !dbg !3508

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  ret void, !dbg !3509
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3510 dso_local i32 @acpi_read(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #3 align 16 !dbg !3513 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3519, metadata !DIExpression()), !dbg !3521
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #11, !dbg !3521
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3520, metadata !DIExpression()), !dbg !3521
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3521
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #11, !dbg !3521, !srcloc !3522
  store i8 %1, ptr %ret, align 1, !dbg !3521
  %2 = load i8, ptr %ret, align 1, !dbg !3521
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #11, !dbg !3521
  ret i8 %2, !dbg !3521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @readw(ptr noundef %addr) #3 align 16 !dbg !3523 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3527, metadata !DIExpression()), !dbg !3529
  call void @llvm.lifetime.start.p0(i64 2, ptr %ret) #11, !dbg !3529
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3528, metadata !DIExpression()), !dbg !3529
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3529
  %1 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %0) #11, !dbg !3529, !srcloc !3530
  store i16 %1, ptr %ret, align 2, !dbg !3529
  %2 = load i16, ptr %ret, align 2, !dbg !3529
  call void @llvm.lifetime.end.p0(i64 2, ptr %ret) #11, !dbg !3529
  ret i16 %2, !dbg !3529
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #3 align 16 !dbg !3531 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3535, metadata !DIExpression()), !dbg !3537
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3536, metadata !DIExpression()), !dbg !3537
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3537
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #11, !dbg !3537, !srcloc !3538
  store i32 %1, ptr %ret, align 4, !dbg !3537
  %2 = load i32, ptr %ret, align 4, !dbg !3537
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3537
  ret i32 %2, !dbg !3537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @readq(ptr noundef %addr) #3 align 16 !dbg !3539 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3543, metadata !DIExpression()), !dbg !3545
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !3545
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3544, metadata !DIExpression()), !dbg !3545
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3545
  %1 = call i64 asm sideeffect "movq $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0) #11, !dbg !3545, !srcloc !3546
  store i64 %1, ptr %ret, align 8, !dbg !3545
  %2 = load i64, ptr %ret, align 8, !dbg !3545
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !3545
  ret i64 %2, !dbg !3545
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_register(ptr noundef %vaddr, i64 noundef %val, i32 noundef %bit_width) #0 align 16 !dbg !3547 {
entry:
  %vaddr.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !3551, metadata !DIExpression()), !dbg !3554
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3552, metadata !DIExpression()), !dbg !3555
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !3553, metadata !DIExpression()), !dbg !3556
  %0 = load i32, ptr %bit_width.addr, align 4, !dbg !3557
  switch i32 %0, label %sw.epilog [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb3
    i32 64, label %sw.bb5
  ], !dbg !3558

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !3559
  %conv = trunc i64 %1 to i8, !dbg !3559
  %2 = load ptr, ptr %vaddr.addr, align 8, !dbg !3561
  call void @writeb(i8 noundef zeroext %conv, ptr noundef %2) #12, !dbg !3562
  br label %sw.epilog, !dbg !3563

sw.bb1:                                           ; preds = %entry
  %3 = load i64, ptr %val.addr, align 8, !dbg !3564
  %conv2 = trunc i64 %3 to i16, !dbg !3564
  %4 = load ptr, ptr %vaddr.addr, align 8, !dbg !3565
  call void @writew(i16 noundef zeroext %conv2, ptr noundef %4) #12, !dbg !3566
  br label %sw.epilog, !dbg !3567

sw.bb3:                                           ; preds = %entry
  %5 = load i64, ptr %val.addr, align 8, !dbg !3568
  %conv4 = trunc i64 %5 to i32, !dbg !3568
  %6 = load ptr, ptr %vaddr.addr, align 8, !dbg !3569
  call void @writel(i32 noundef %conv4, ptr noundef %6) #12, !dbg !3570
  br label %sw.epilog, !dbg !3571

sw.bb5:                                           ; preds = %entry
  %7 = load i64, ptr %val.addr, align 8, !dbg !3572
  %8 = load ptr, ptr %vaddr.addr, align 8, !dbg !3573
  call void @writeq(i64 noundef %7, ptr noundef %8) #12, !dbg !3574
  br label %sw.epilog, !dbg !3575

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void, !dbg !3576
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3577 dso_local i32 @acpi_write(i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeb(i8 noundef zeroext %val, ptr noundef %addr) #3 align 16 !dbg !3580 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3584, metadata !DIExpression()), !dbg !3586
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3585, metadata !DIExpression()), !dbg !3586
  %0 = load i8, ptr %val.addr, align 1, !dbg !3586
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3586
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr elementtype(i8) %1) #11, !dbg !3586, !srcloc !3587
  ret void, !dbg !3586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writew(i16 noundef zeroext %val, ptr noundef %addr) #3 align 16 !dbg !3588 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3592, metadata !DIExpression()), !dbg !3594
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3593, metadata !DIExpression()), !dbg !3594
  %0 = load i16, ptr %val.addr, align 2, !dbg !3594
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3594
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr elementtype(i16) %1) #11, !dbg !3594, !srcloc !3595
  ret void, !dbg !3594
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #3 align 16 !dbg !3596 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3600, metadata !DIExpression()), !dbg !3602
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3601, metadata !DIExpression()), !dbg !3602
  %0 = load i32, ptr %val.addr, align 4, !dbg !3602
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3602
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #11, !dbg !3602, !srcloc !3603
  ret void, !dbg !3602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeq(i64 noundef %val, ptr noundef %addr) #3 align 16 !dbg !3604 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3608, metadata !DIExpression()), !dbg !3610
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3609, metadata !DIExpression()), !dbg !3610
  %0 = load i64, ptr %val.addr, align 8, !dbg !3610
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3610
  call void asm sideeffect "movq $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr elementtype(i64) %1) #11, !dbg !3610, !srcloc !3611
  ret void, !dbg !3610
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_request_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, i64 noundef %irqflags, ptr noundef %devname, ptr noundef %dev_id) #3 align 16 !dbg !3612 {
entry:
  %dev.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca ptr, align 8
  %dev_id.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3622, metadata !DIExpression()), !dbg !3628
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3623, metadata !DIExpression()), !dbg !3629
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !3624, metadata !DIExpression()), !dbg !3630
  store i64 %irqflags, ptr %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqflags.addr, metadata !3625, metadata !DIExpression()), !dbg !3631
  store ptr %devname, ptr %devname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devname.addr, metadata !3626, metadata !DIExpression()), !dbg !3632
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !3627, metadata !DIExpression()), !dbg !3633
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3634
  %1 = load i32, ptr %irq.addr, align 4, !dbg !3635
  %2 = load ptr, ptr %handler.addr, align 8, !dbg !3636
  %3 = load i64, ptr %irqflags.addr, align 8, !dbg !3637
  %4 = load ptr, ptr %devname.addr, align 8, !dbg !3638
  %5 = load ptr, ptr %dev_id.addr, align 8, !dbg !3639
  %call = call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null, i64 noundef %3, ptr noundef %4, ptr noundef %5) #12, !dbg !3640
  ret i32 %call, !dbg !3641
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcc_mbox_irq(i32 noundef %irq, ptr noundef %p) #0 align 16 !dbg !3642 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pchan = alloca ptr, align 8
  %chan = alloca ptr, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3644, metadata !DIExpression()), !dbg !3650
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3645, metadata !DIExpression()), !dbg !3651
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchan) #11, !dbg !3652
  call void @llvm.dbg.declare(metadata ptr %pchan, metadata !3646, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #11, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !3647, metadata !DIExpression()), !dbg !3655
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3656
  store ptr %0, ptr %chan, align 8, !dbg !3655
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !3657
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3648, metadata !DIExpression()), !dbg !3658
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3659
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3649, metadata !DIExpression()), !dbg !3660
  %1 = load ptr, ptr %chan, align 8, !dbg !3661
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 9, !dbg !3662
  %2 = load ptr, ptr %con_priv, align 8, !dbg !3662
  store ptr %2, ptr %pchan, align 8, !dbg !3663
  %3 = load ptr, ptr %pchan, align 8, !dbg !3664
  %type = getelementptr inbounds %struct.pcc_chan_info, ptr %3, i32 0, i32 7, !dbg !3666
  %4 = load i8, ptr %type, align 4, !dbg !3666
  %conv = zext i8 %4 to i32, !dbg !3664
  %cmp = icmp eq i32 %conv, 3, !dbg !3667
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3668

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pchan, align 8, !dbg !3669
  %chan_in_use = getelementptr inbounds %struct.pcc_chan_info, ptr %5, i32 0, i32 9, !dbg !3670
  %6 = load i8, ptr %chan_in_use, align 4, !dbg !3670, !range !2582, !noundef !349
  %tobool = trunc i8 %6 to i1, !dbg !3670
  br i1 %tobool, label %if.end, label %if.then, !dbg !3671

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !3672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3672

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %pchan, align 8, !dbg !3673
  %call = call zeroext i1 @pcc_mbox_cmd_complete_check(ptr noundef %7) #12, !dbg !3675
  br i1 %call, label %if.end3, label %if.then2, !dbg !3676

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3677

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %pchan, align 8, !dbg !3678
  %error = getelementptr inbounds %struct.pcc_chan_info, ptr %8, i32 0, i32 5, !dbg !3679
  %call4 = call i32 @pcc_chan_reg_read(ptr noundef %error, ptr noundef %val) #12, !dbg !3680
  store i32 %call4, ptr %ret, align 4, !dbg !3681
  %9 = load i32, ptr %ret, align 4, !dbg !3682
  %tobool5 = icmp ne i32 %9, 0, !dbg !3682
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3684

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !3685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3685

if.end7:                                          ; preds = %if.end3
  %10 = load ptr, ptr %pchan, align 8, !dbg !3686
  %error8 = getelementptr inbounds %struct.pcc_chan_info, ptr %10, i32 0, i32 5, !dbg !3687
  %status_mask = getelementptr inbounds %struct.pcc_chan_reg, ptr %error8, i32 0, i32 4, !dbg !3688
  %11 = load i64, ptr %status_mask, align 8, !dbg !3688
  %12 = load i64, ptr %val, align 8, !dbg !3689
  %and = and i64 %12, %11, !dbg !3689
  store i64 %and, ptr %val, align 8, !dbg !3689
  %13 = load i64, ptr %val, align 8, !dbg !3690
  %tobool9 = icmp ne i64 %13, 0, !dbg !3690
  br i1 %tobool9, label %if.then10, label %if.end16, !dbg !3692

if.then10:                                        ; preds = %if.end7
  %14 = load ptr, ptr %pchan, align 8, !dbg !3693
  %error11 = getelementptr inbounds %struct.pcc_chan_info, ptr %14, i32 0, i32 5, !dbg !3695
  %status_mask12 = getelementptr inbounds %struct.pcc_chan_reg, ptr %error11, i32 0, i32 4, !dbg !3696
  %15 = load i64, ptr %status_mask12, align 8, !dbg !3696
  %not = xor i64 %15, -1, !dbg !3697
  %16 = load i64, ptr %val, align 8, !dbg !3698
  %and13 = and i64 %16, %not, !dbg !3698
  store i64 %and13, ptr %val, align 8, !dbg !3698
  %17 = load ptr, ptr %pchan, align 8, !dbg !3699
  %error14 = getelementptr inbounds %struct.pcc_chan_info, ptr %17, i32 0, i32 5, !dbg !3700
  %18 = load i64, ptr %val, align 8, !dbg !3701
  %call15 = call i32 @pcc_chan_reg_write(ptr noundef %error14, i64 noundef %18) #12, !dbg !3702
  store i32 0, ptr %retval, align 4, !dbg !3703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3703

if.end16:                                         ; preds = %if.end7
  %19 = load ptr, ptr %pchan, align 8, !dbg !3704
  %plat_irq_ack = getelementptr inbounds %struct.pcc_chan_info, ptr %19, i32 0, i32 2, !dbg !3706
  %call17 = call i32 @pcc_chan_reg_read_modify_write(ptr noundef %plat_irq_ack) #12, !dbg !3707
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3707
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3708

if.then19:                                        ; preds = %if.end16
  store i32 0, ptr %retval, align 4, !dbg !3709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3709

if.end20:                                         ; preds = %if.end16
  %20 = load ptr, ptr %chan, align 8, !dbg !3710
  call void @mbox_chan_received_data(ptr noundef %20, ptr noundef null) #12, !dbg !3711
  %21 = load ptr, ptr %pchan, align 8, !dbg !3712
  %22 = load ptr, ptr %chan, align 8, !dbg !3713
  call void @check_and_ack(ptr noundef %21, ptr noundef %22) #12, !dbg !3714
  %23 = load ptr, ptr %pchan, align 8, !dbg !3715
  %chan_in_use21 = getelementptr inbounds %struct.pcc_chan_info, ptr %23, i32 0, i32 9, !dbg !3716
  store i8 0, ptr %chan_in_use21, align 4, !dbg !3717
  store i32 1, ptr %retval, align 4, !dbg !3718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3718

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then10, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #11, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchan) #11, !dbg !3719
  %24 = load i32, ptr %retval, align 4, !dbg !3719
  ret i32 %24, !dbg !3719
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3720 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3724 dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcc_mbox_cmd_complete_check(ptr noundef %pchan) #0 align 16 !dbg !3727 {
entry:
  %retval = alloca i1, align 1
  %pchan.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3730, metadata !DIExpression()), !dbg !3734
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3731, metadata !DIExpression()), !dbg !3736
  %0 = load ptr, ptr %pchan.addr, align 8, !dbg !3737
  %cmd_complete = getelementptr inbounds %struct.pcc_chan_info, ptr %0, i32 0, i32 3, !dbg !3738
  %call = call i32 @pcc_chan_reg_read(ptr noundef %cmd_complete, ptr noundef %val) #12, !dbg !3739
  store i32 %call, ptr %ret, align 4, !dbg !3740
  %1 = load i32, ptr %ret, align 4, !dbg !3741
  %tobool = icmp ne i32 %1, 0, !dbg !3741
  br i1 %tobool, label %if.then, label %if.end, !dbg !3743

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3744

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pchan.addr, align 8, !dbg !3745
  %cmd_complete1 = getelementptr inbounds %struct.pcc_chan_info, ptr %2, i32 0, i32 3, !dbg !3747
  %gas = getelementptr inbounds %struct.pcc_chan_reg, ptr %cmd_complete1, i32 0, i32 1, !dbg !3748
  %3 = load ptr, ptr %gas, align 8, !dbg !3748
  %tobool2 = icmp ne ptr %3, null, !dbg !3745
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3749

if.then3:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !3750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3750

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %pchan.addr, align 8, !dbg !3751
  %cmd_complete5 = getelementptr inbounds %struct.pcc_chan_info, ptr %4, i32 0, i32 3, !dbg !3752
  %status_mask = getelementptr inbounds %struct.pcc_chan_reg, ptr %cmd_complete5, i32 0, i32 4, !dbg !3753
  %5 = load i64, ptr %status_mask, align 8, !dbg !3753
  %6 = load i64, ptr %val, align 8, !dbg !3754
  %and = and i64 %6, %5, !dbg !3754
  store i64 %and, ptr %val, align 8, !dbg !3754
  %7 = load ptr, ptr %pchan.addr, align 8, !dbg !3755
  %type = getelementptr inbounds %struct.pcc_chan_info, ptr %7, i32 0, i32 7, !dbg !3757
  %8 = load i8, ptr %type, align 4, !dbg !3757
  %conv = zext i8 %8 to i32, !dbg !3755
  %cmp = icmp eq i32 %conv, 4, !dbg !3758
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !3759

if.then7:                                         ; preds = %if.end4
  %9 = load i64, ptr %val, align 8, !dbg !3760
  %tobool8 = icmp ne i64 %9, 0, !dbg !3761
  %lnot = xor i1 %tobool8, true, !dbg !3761
  store i1 %lnot, ptr %retval, align 1, !dbg !3762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3762

if.end9:                                          ; preds = %if.end4
  %10 = load i64, ptr %val, align 8, !dbg !3763
  %tobool10 = icmp ne i64 %10, 0, !dbg !3764
  %lnot11 = xor i1 %tobool10, true, !dbg !3764
  %lnot12 = xor i1 %lnot11, true, !dbg !3765
  store i1 %lnot12, ptr %retval, align 1, !dbg !3766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3766

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3767
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !3767
  %11 = load i1, ptr %retval, align 1, !dbg !3767
  ret i1 %11, !dbg !3767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3768 dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_and_ack(ptr noundef %pchan, ptr noundef %chan) #0 align 16 !dbg !3771 {
entry:
  %pchan.addr = alloca ptr, align 8
  %chan.addr = alloca ptr, align 8
  %pcc_hdr = alloca %struct.acpi_pcct_ext_pcc_shared_memory, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pchan, ptr %pchan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pchan.addr, metadata !3775, metadata !DIExpression()), !dbg !3784
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !3776, metadata !DIExpression()), !dbg !3785
  call void @llvm.lifetime.start.p0(i64 16, ptr %pcc_hdr) #11, !dbg !3786
  call void @llvm.dbg.declare(metadata ptr %pcc_hdr, metadata !3777, metadata !DIExpression()), !dbg !3787
  %0 = load ptr, ptr %pchan.addr, align 8, !dbg !3788
  %type = getelementptr inbounds %struct.pcc_chan_info, ptr %0, i32 0, i32 7, !dbg !3790
  %1 = load i8, ptr %type, align 4, !dbg !3790
  %conv = zext i8 %1 to i32, !dbg !3788
  %cmp = icmp ne i32 %conv, 4, !dbg !3791
  br i1 %cmp, label %if.then, label %if.end, !dbg !3792

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3793

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pchan.addr, align 8, !dbg !3794
  %chan2 = getelementptr inbounds %struct.pcc_chan_info, ptr %2, i32 0, i32 0, !dbg !3796
  %shmem = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan2, i32 0, i32 2, !dbg !3797
  %3 = load ptr, ptr %shmem, align 8, !dbg !3797
  %cmp3 = icmp eq ptr %3, null, !dbg !3798
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !3799

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %pchan.addr, align 8, !dbg !3800
  %cmd_update = getelementptr inbounds %struct.pcc_chan_info, ptr %4, i32 0, i32 4, !dbg !3802
  %call = call i32 @pcc_chan_reg_read_modify_write(ptr noundef %cmd_update) #12, !dbg !3803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3804

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %pchan.addr, align 8, !dbg !3805
  %chan7 = getelementptr inbounds %struct.pcc_chan_info, ptr %5, i32 0, i32 0, !dbg !3806
  %shmem8 = getelementptr inbounds %struct.pcc_mbox_chan, ptr %chan7, i32 0, i32 2, !dbg !3807
  %6 = load ptr, ptr %shmem8, align 8, !dbg !3807
  call void @memcpy_fromio(ptr noundef %pcc_hdr, ptr noundef %6, i64 noundef 16) #12, !dbg !3808
  %flags = getelementptr inbounds %struct.acpi_pcct_ext_pcc_shared_memory, ptr %pcc_hdr, i32 0, i32 1, !dbg !3809
  %call9 = call i32 @__le32_to_cpup(ptr noundef %flags) #12, !dbg !3811
  %and = and i32 %call9, 1, !dbg !3812
  %tobool = icmp ne i32 %and, 0, !dbg !3812
  br i1 %tobool, label %if.then10, label %if.else, !dbg !3813

if.then10:                                        ; preds = %if.end6
  %7 = load ptr, ptr %chan.addr, align 8, !dbg !3814
  %call11 = call i32 @pcc_send_data(ptr noundef %7, ptr noundef null) #12, !dbg !3815
  br label %if.end14, !dbg !3815

if.else:                                          ; preds = %if.end6
  %8 = load ptr, ptr %pchan.addr, align 8, !dbg !3816
  %cmd_update12 = getelementptr inbounds %struct.pcc_chan_info, ptr %8, i32 0, i32 4, !dbg !3817
  %call13 = call i32 @pcc_chan_reg_read_modify_write(ptr noundef %cmd_update12) #12, !dbg !3818
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3819
  br label %cleanup, !dbg !3819

cleanup:                                          ; preds = %if.end14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %pcc_hdr) #11, !dbg !3819
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3819

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3820 dso_local void @memcpy_fromio(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__le32_to_cpup(ptr noundef %p) #10 align 16 !dbg !3823 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3831, metadata !DIExpression()), !dbg !3832
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3833
  %1 = load i32, ptr %0, align 4, !dbg !3834
  ret i32 %1, !dbg !3835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3836 dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone allocsize(1) }
attributes #15 = { noredzone nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!llvm.ident = !{!2109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pcc_chan_count", scope: !2, file: !3, line: 118, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/mailbox/.pcc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/mailbox/pcc\22 -D KBUILD_BASENAME=\22pcc\22 -D KBUILD_MODNAME=\22pcc\22 -D __KBUILD_MODNAME=kmod_pcc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/mailbox/pcc.ll drivers/mailbox/pcc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !1262, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mailbox/pcc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff511b450c8bd494241c6024b8b955a1")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !68, !73, !78, !84, !94, !99}
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_pcct_type", file: !85, line: 2155, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!86 = !{!87, !88, !89, !90, !91, !92, !93}
!87 = !DIEnumerator(name: "ACPI_PCCT_TYPE_GENERIC_SUBSPACE", value: 0)
!88 = !DIEnumerator(name: "ACPI_PCCT_TYPE_HW_REDUCED_SUBSPACE", value: 1)
!89 = !DIEnumerator(name: "ACPI_PCCT_TYPE_HW_REDUCED_SUBSPACE_TYPE2", value: 2)
!90 = !DIEnumerator(name: "ACPI_PCCT_TYPE_EXT_PCC_MASTER_SUBSPACE", value: 3)
!91 = !DIEnumerator(name: "ACPI_PCCT_TYPE_EXT_PCC_SLAVE_SUBSPACE", value: 4)
!92 = !DIEnumerator(name: "ACPI_PCCT_TYPE_HW_REG_COMM_SUBSPACE", value: 5)
!93 = !DIEnumerator(name: "ACPI_PCCT_TYPE_RESERVED", value: 6)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 10, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "false", value: 0)
!98 = !DIEnumerator(name: "true", value: 1)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !100, line: 11, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!103 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!104 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!105 = !{!106, !107, !108, !1157, !1186, !1188, !1189, !1190, !1212, !1059, !171, !1227, !1228, !1254, !1256, !1258, !1260, !977, !249}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !110)
!110 = !{!111, !112, !119, !124, !805, !831, !832, !833, !834, !838, !841, !842, !843, !896, !897, !898, !899, !900, !901, !902, !903, !911, !915, !935, !953, !954, !955, !956, !965, !989, !990, !993, !996, !997, !998, !999, !1000, !1001, !1002, !1007, !1008, !1115, !1123, !1124, !1125, !1127, !1131, !1132, !1136, !1137, !1138, !1139, !1141, !1142, !1143, !1150, !1151, !1152, !1156}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !109, file: !13, line: 403, baseType: !12, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !109, file: !13, line: 406, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 190, size: 128, elements: !115)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !114, line: 191, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !114, line: 191, baseType: !117, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !13, line: 409, baseType: !120, size: 448, offset: 192)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 448, elements: !122)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !{!123}
!123 = !DISubrange(count: 56)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !109, file: !13, line: 417, baseType: !125, size: 768, offset: 640)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !126)
!126 = !{!127, !788, !789, !790, !793}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !125, file: !13, line: 46, baseType: !128, size: 512)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !129, line: 64, size: 512, elements: !130)
!129 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!130 = !{!131, !134, !135, !137, !226, !658, !773, !783, !784, !785, !786, !787}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !129, line: 65, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !128, file: !129, line: 66, baseType: !113, size: 128, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !128, file: !129, line: 67, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !128, file: !129, line: 68, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !129, line: 168, size: 768, elements: !140)
!140 = !{!141, !142, !185, !186}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !139, file: !129, line: 169, baseType: !113, size: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !139, file: !129, line: 170, baseType: !143, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !144, line: 29, baseType: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !144, line: 17, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !144, line: 18, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !144, line: 18, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !148, file: !144, line: 19, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !152, line: 14, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !151, file: !152, line: 15, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !156, line: 44, baseType: !157)
!156 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !156, line: 14, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !156, line: 15, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !157, file: !156, line: 15, size: 32, elements: !161)
!161 = !{!162, !167, !177}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !156, line: 16, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 174, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 172, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !164, file: !114, line: 173, baseType: !46, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !156, line: 24, baseType: !168, size: 16)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !156, line: 24, size: 16, elements: !169)
!169 = !{!170, !176}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !168, file: !156, line: 25, baseType: !171, size: 8)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !172, line: 17, baseType: !173)
!172 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !174, line: 21, baseType: !175)
!174 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!175 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !168, file: !156, line: 26, baseType: !171, size: 8, offset: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !156, line: 28, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !156, line: 28, size: 32, elements: !179)
!179 = !{!180, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !178, file: !156, line: 29, baseType: !181, size: 16)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !172, line: 19, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !174, line: 24, baseType: !183)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !178, file: !156, line: 30, baseType: !181, size: 16, offset: 16)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !139, file: !129, line: 171, baseType: !128, size: 512, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !139, file: !129, line: 172, baseType: !187, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !129, line: 133, size: 192, elements: !190)
!190 = !{!191, !198, !203}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !189, file: !129, line: 134, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!46, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !129, line: 135, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!132, !196}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !189, file: !129, line: 136, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!46, !196, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !129, line: 125, size: 20736, elements: !210)
!210 = !{!211, !216, !220, !221, !225}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !209, file: !129, line: 126, baseType: !212, size: 192)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 192, elements: !214)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!214 = !{!215}
!215 = !DISubrange(count: 3)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !209, file: !129, line: 127, baseType: !217, size: 4096, offset: 192)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 4096, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !209, file: !129, line: 128, baseType: !46, size: 32, offset: 4288)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !209, file: !129, line: 129, baseType: !222, size: 16384, offset: 4320)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16384, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 2048)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !209, file: !129, line: 130, baseType: !46, size: 32, offset: 20704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !128, file: !129, line: 69, baseType: !227, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !129, line: 116, size: 384, elements: !230)
!230 = !{!231, !235, !263, !604, !635, !639}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !229, file: !129, line: 117, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !136}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !229, file: !129, line: 118, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !239, line: 254, size: 128, elements: !240)
!239 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!240 = !{!241, !256}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !238, file: !239, line: 255, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !136, !250, !213}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 66, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !247, line: 73, baseType: !248)
!247 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !247, line: 15, baseType: !249)
!249 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !239, line: 30, size: 128, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !239, line: 31, baseType: !132, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !251, file: !239, line: 32, baseType: !255, size: 16, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !114, line: 24, baseType: !183)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !238, file: !239, line: 256, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!245, !136, !250, !132, !260}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 61, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !247, line: 72, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !247, line: 16, baseType: !107)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !229, file: !129, line: 119, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !239, line: 84, size: 320, elements: !268)
!268 = !{!269, !270, !274, !600, !602}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !239, line: 85, baseType: !132, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !267, file: !239, line: 86, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!255, !136, !250, !46}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !267, file: !239, line: 88, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!255, !136, !278, !46}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !239, line: 175, size: 512, elements: !280)
!280 = !{!281, !282, !283, !284, !291, !301, !302}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !279, file: !239, line: 176, baseType: !251, size: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !279, file: !239, line: 177, baseType: !260, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !279, file: !239, line: 178, baseType: !106, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !279, file: !239, line: 179, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !290, line: 351, flags: DIFlagFwdDecl)
!290 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !279, file: !239, line: 180, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!245, !295, !136, !278, !213, !298, !260}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !297, line: 537, flags: DIFlagFwdDecl)
!297 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !114, line: 52, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !247, line: 88, baseType: !300)
!300 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !279, file: !239, line: 182, baseType: !292, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !279, file: !239, line: 184, baseType: !303, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!46, !295, !136, !278, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !308, line: 625, size: 1344, elements: !309)
!308 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!309 = !{!310, !327, !549, !555, !562, !563, !568, !571, !583, !584, !587, !591, !592, !593, !594, !595, !598}
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !308, line: 628, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !308, line: 628, size: 128, elements: !312)
!312 = !{!313, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !308, line: 629, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !308, line: 629, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !314, file: !308, line: 631, baseType: !107, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !314, file: !308, line: 632, baseType: !107, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !311, file: !308, line: 635, baseType: !319, size: 128, align: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !114, line: 232, size: 128, align: 64, elements: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !114, line: 233, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !319, file: !114, line: 234, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !322}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !307, file: !308, line: 639, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !308, line: 733, size: 10240, elements: !330)
!330 = !{!331, !545}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !308, line: 734, baseType: !332, size: 10240)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !308, line: 734, size: 10240, elements: !333)
!333 = !{!334, !338, !352, !356, !357, !358, !359, !360, !361, !369, !370, !371, !380, !381, !390, !391, !392, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !439, !453, !456, !511, !512, !513, !516, !519, !520, !523, !524, !525, !532, !533}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !308, line: 739, baseType: !335, size: 512, align: 512)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !308, line: 739, size: 512, align: 512, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !335, file: !308, line: 747, baseType: !163, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !332, file: !308, line: 750, baseType: !339, size: 128, offset: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !340, line: 218, size: 128, elements: !341)
!340 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!341 = !{!342, !350, !351}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !340, line: 219, baseType: !343, size: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !340, line: 219, size: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !343, file: !340, line: 220, baseType: !143, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !343, file: !340, line: 221, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !340, line: 197, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 197, elements: !349)
!349 = !{}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !339, file: !340, line: 223, baseType: !7, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !339, file: !340, line: 224, baseType: !106, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !332, file: !308, line: 752, baseType: !353, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!107, !295, !107, !107, !107, !107}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !332, file: !308, line: 756, baseType: !107, size: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !332, file: !308, line: 757, baseType: !107, size: 64, offset: 768)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !332, file: !308, line: 760, baseType: !107, size: 64, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !332, file: !308, line: 761, baseType: !107, size: 64, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !332, file: !308, line: 763, baseType: !107, size: 64, offset: 960)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !332, file: !308, line: 764, baseType: !362, size: 64, offset: 1024)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !297, line: 299, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 299, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !364, file: !297, line: 299, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !368, line: 18, baseType: !107)
!368 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !332, file: !308, line: 773, baseType: !163, size: 32, offset: 1088)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !332, file: !308, line: 785, baseType: !163, size: 32, offset: 1120)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !332, file: !308, line: 795, baseType: !372, size: 64, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !308, line: 726, size: 128, elements: !374)
!374 = !{!375, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !373, file: !308, line: 727, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !172, line: 23, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !174, line: 31, baseType: !378)
!378 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !373, file: !308, line: 728, baseType: !46, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !332, file: !308, line: 801, baseType: !107, size: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !332, file: !308, line: 804, baseType: !382, size: 64, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !383, line: 13, baseType: !384)
!383 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 181, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 179, size: 64, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !385, file: !114, line: 180, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !172, line: 22, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !174, line: 30, baseType: !300)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !332, file: !308, line: 806, baseType: !46, size: 32, offset: 1344)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !332, file: !308, line: 808, baseType: !143, size: 32, offset: 1376)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !332, file: !308, line: 823, baseType: !393, size: 320, offset: 1408)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !394, line: 48, size: 320, elements: !395)
!394 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!395 = !{!396, !397, !398, !403, !405}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !393, file: !394, line: 49, baseType: !382, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 55, baseType: !382, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !393, file: !394, line: 57, baseType: !399, size: 32, offset: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !400, line: 15, size: 32, elements: !401)
!400 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !399, file: !400, line: 20, baseType: !163, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 59, baseType: !404, size: 32, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !152, line: 23, baseType: !151)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 60, baseType: !113, size: 128, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !332, file: !308, line: 825, baseType: !113, size: 128, offset: 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !332, file: !308, line: 845, baseType: !46, size: 32, offset: 1856)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !332, file: !308, line: 849, baseType: !107, size: 64, offset: 1920)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !332, file: !308, line: 850, baseType: !107, size: 64, offset: 1984)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !332, file: !308, line: 852, baseType: !107, size: 64, offset: 2048)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !332, file: !308, line: 853, baseType: !107, size: 64, offset: 2112)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !332, file: !308, line: 854, baseType: !384, size: 64, offset: 2176)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !332, file: !308, line: 855, baseType: !107, size: 64, offset: 2240)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !332, file: !308, line: 856, baseType: !107, size: 64, offset: 2304)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !332, file: !308, line: 857, baseType: !107, size: 64, offset: 2368)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !332, file: !308, line: 858, baseType: !107, size: 64, offset: 2432)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !332, file: !308, line: 865, baseType: !418, size: 32, offset: 2496)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !419, line: 69, baseType: !420)
!419 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !419, line: 64, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !419, line: 65, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !332, file: !308, line: 867, baseType: !143, size: 32, offset: 2528)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !332, file: !308, line: 869, baseType: !107, size: 64, offset: 2560)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !332, file: !308, line: 869, baseType: !107, size: 64, offset: 2624)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !332, file: !308, line: 869, baseType: !107, size: 64, offset: 2688)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !332, file: !308, line: 869, baseType: !107, size: 64, offset: 2752)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !332, file: !308, line: 870, baseType: !107, size: 64, offset: 2816)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !332, file: !308, line: 870, baseType: !107, size: 64, offset: 2880)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !332, file: !308, line: 870, baseType: !107, size: 64, offset: 2944)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !332, file: !308, line: 871, baseType: !107, size: 64, offset: 3008)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !332, file: !308, line: 871, baseType: !107, size: 64, offset: 3072)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !332, file: !308, line: 871, baseType: !107, size: 64, offset: 3136)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !332, file: !308, line: 871, baseType: !107, size: 64, offset: 3200)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !332, file: !308, line: 873, baseType: !436, size: 3328, offset: 3264)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3328, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 52)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !332, file: !308, line: 875, baseType: !440, size: 1280, offset: 6592)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 1280, elements: !451)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !442, line: 22, size: 320, elements: !443)
!442 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !441, file: !442, line: 23, baseType: !404, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !442, line: 24, baseType: !388, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !441, file: !442, line: 26, baseType: !113, size: 128, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !441, file: !442, line: 28, baseType: !448, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !172, line: 20, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !174, line: 26, baseType: !46)
!451 = !{!452}
!452 = !DISubrange(count: 4)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !332, file: !308, line: 877, baseType: !454, size: 64, offset: 7872)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !308, line: 877, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !332, file: !308, line: 880, baseType: !457, size: 1088, offset: 7936)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !458, line: 72, baseType: !459)
!458 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 23, size: 1088, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !468, !469, !477, !478, !505, !506, !507}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !459, file: !458, line: 28, baseType: !376, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !459, file: !458, line: 38, baseType: !384, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !459, file: !458, line: 40, baseType: !107, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !459, file: !458, line: 43, baseType: !393, size: 320, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !459, file: !458, line: 44, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !458, line: 44, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !458, line: 48, baseType: !107, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !458, line: 59, baseType: !470, size: 256, offset: 640)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !471, line: 66, size: 256, elements: !472)
!471 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!472 = !{!473, !474, !475, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !470, file: !471, line: 67, baseType: !382, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !470, file: !471, line: 68, baseType: !404, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !470, file: !471, line: 70, baseType: !399, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !470, file: !471, line: 72, baseType: !113, size: 128, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !459, file: !458, line: 60, baseType: !106, size: 64, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !459, file: !458, line: 61, baseType: !479, size: 64, offset: 960)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !482, line: 13, size: 1216, elements: !483)
!482 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!483 = !{!484, !485, !486, !487, !488, !489, !490, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !481, file: !482, line: 14, baseType: !106, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !481, file: !482, line: 15, baseType: !107, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !481, file: !482, line: 17, baseType: !107, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !481, file: !482, line: 17, baseType: !107, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !481, file: !482, line: 18, baseType: !107, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !481, file: !482, line: 18, baseType: !107, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !481, file: !482, line: 19, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !481, file: !482, line: 21, baseType: !249, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !481, file: !482, line: 23, baseType: !249, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !481, file: !482, line: 24, baseType: !249, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !481, file: !482, line: 25, baseType: !249, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !481, file: !482, line: 26, baseType: !249, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !481, file: !482, line: 27, baseType: !249, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !481, file: !482, line: 28, baseType: !249, size: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !481, file: !482, line: 29, baseType: !249, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !481, file: !482, line: 30, baseType: !249, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !481, file: !482, line: 31, baseType: !249, size: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !481, file: !482, line: 32, baseType: !249, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !481, file: !482, line: 33, baseType: !249, size: 64, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !459, file: !458, line: 63, baseType: !163, size: 32, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !459, file: !458, line: 69, baseType: !181, size: 16, offset: 1056)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !459, file: !458, line: 70, baseType: !508, size: 16, offset: 1072)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !172, line: 18, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !174, line: 23, baseType: !510)
!510 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !308, line: 882, baseType: !107, size: 64, offset: 9024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !332, file: !308, line: 885, baseType: !143, size: 32, offset: 9088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !332, file: !308, line: 886, baseType: !514, size: 64, offset: 9152)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !308, line: 732, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !332, file: !308, line: 901, baseType: !517, size: 64, offset: 9216)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !308, line: 901, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !332, file: !308, line: 904, baseType: !295, size: 64, offset: 9280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !332, file: !308, line: 906, baseType: !521, size: 64, offset: 9344)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !308, line: 906, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !332, file: !308, line: 930, baseType: !163, size: 32, offset: 9408)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !332, file: !308, line: 933, baseType: !163, size: 32, offset: 9440)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !332, file: !308, line: 935, baseType: !526, size: 64, offset: 9472)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !527, line: 103, size: 64, elements: !528)
!527 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !526, file: !527, line: 104, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !527, line: 101, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !332, file: !308, line: 940, baseType: !382, size: 64, offset: 9536)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !332, file: !308, line: 942, baseType: !534, size: 256, offset: 9600)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !535, line: 98, size: 256, elements: !536)
!535 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !534, file: !535, line: 99, baseType: !382, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !534, file: !535, line: 100, baseType: !113, size: 128, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !534, file: !535, line: 101, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !535, line: 21, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !329, file: !308, line: 986, baseType: !546, offset: 10240)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: -1)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !307, file: !308, line: 640, baseType: !550, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !297, line: 297, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !297, line: 297, size: 64, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !551, file: !297, line: 297, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !368, line: 19, baseType: !107)
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !308, line: 646, baseType: !556, size: 64, offset: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !308, line: 646, size: 64, elements: !557)
!557 = !{!558, !561}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !556, file: !308, line: 647, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !308, line: 542, baseType: !107)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !556, file: !308, line: 648, baseType: !560, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !307, file: !308, line: 666, baseType: !46, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !307, file: !308, line: 667, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !308, line: 579, size: 320, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !565, file: !308, line: 580, baseType: !393, size: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !307, file: !308, line: 670, baseType: !569, size: 8, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 35, baseType: !570)
!570 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !307, file: !308, line: 681, baseType: !572, size: 256, offset: 512)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !308, line: 678, size: 256, elements: !573)
!573 = !{!574, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !572, file: !308, line: 679, baseType: !575, size: 192, align: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !576, line: 5, size: 192, align: 64, elements: !577)
!576 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!577 = !{!578, !579, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !575, file: !576, line: 6, baseType: !107, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !575, file: !576, line: 7, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !575, file: !576, line: 8, baseType: !580, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !572, file: !308, line: 680, baseType: !107, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !307, file: !308, line: 689, baseType: !113, size: 128, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !307, file: !308, line: 691, baseType: !585, size: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !308, line: 691, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !307, file: !308, line: 694, baseType: !588, size: 64, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !308, line: 694, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !307, file: !308, line: 697, baseType: !107, size: 64, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !307, file: !308, line: 699, baseType: !295, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !307, file: !308, line: 700, baseType: !106, size: 64, offset: 1152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !307, file: !308, line: 711, baseType: !382, size: 64, offset: 1216)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !307, file: !308, line: 717, baseType: !596, size: 64, offset: 1280)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !308, line: 717, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !307, file: !308, line: 722, baseType: !599, offset: 1344)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !308, line: 570, elements: !349)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !267, file: !239, line: 90, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !267, file: !239, line: 91, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !229, file: !129, line: 120, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !196}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !611)
!611 = !{!612, !613, !617, !621, !627, !631}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !6, line: 40, baseType: !5, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !610, file: !6, line: 41, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!569}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !610, file: !6, line: 42, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!106}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !610, file: !6, line: 43, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!491, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !610, file: !6, line: 44, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!491}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !610, file: !6, line: 45, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !106}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !229, file: !129, line: 121, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!491, !196}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !229, file: !129, line: 122, baseType: !640, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !196, !643, !651}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !645, line: 23, baseType: !646)
!645 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !645, line: 21, size: 32, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !646, file: !645, line: 22, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !114, line: 37, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !247, line: 49, baseType: !7)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !645, line: 28, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !645, line: 26, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !653, file: !645, line: 27, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !114, line: 38, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !247, line: 50, baseType: !7)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !128, file: !129, line: 70, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !661, line: 190, size: 1152, elements: !662)
!661 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !765, !766, !767, !768, !769, !772}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !661, line: 191, baseType: !163, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !660, file: !661, line: 192, baseType: !163, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !660, file: !661, line: 202, baseType: !659, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !661, line: 203, baseType: !132, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !660, file: !661, line: 205, baseType: !575, size: 192, align: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !660, file: !661, line: 207, baseType: !491, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !660, file: !661, line: 208, baseType: !7, size: 32, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 209, baseType: !671, size: 256, offset: 512)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 209, size: 256, elements: !672)
!672 = !{!673, !685, !689}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !671, file: !661, line: 210, baseType: !674, size: 256)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !661, line: 153, size: 256, elements: !675)
!675 = !{!676, !677, !681, !684}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !674, file: !661, line: 154, baseType: !107, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !674, file: !661, line: 156, baseType: !678, size: 64, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !576, line: 12, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !678, file: !576, line: 13, baseType: !580, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !674, file: !661, line: 162, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !661, line: 162, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !674, file: !661, line: 167, baseType: !107, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !671, file: !661, line: 211, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !661, line: 170, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !686, file: !661, line: 171, baseType: !659, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !671, file: !661, line: 212, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !661, line: 174, size: 256, elements: !691)
!691 = !{!692, !760, !763, !764}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !690, file: !661, line: 175, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !661, line: 271, size: 768, elements: !696)
!696 = !{!697, !720, !724, !728, !733, !737, !741, !745, !746, !747, !748, !756}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !695, file: !661, line: 276, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!46, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !661, line: 251, size: 1216, elements: !703)
!703 = !{!704, !705, !706, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !702, file: !661, line: 253, baseType: !659, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !702, file: !661, line: 254, baseType: !295, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !702, file: !661, line: 255, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !709, line: 66, flags: DIFlagFwdDecl)
!709 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !702, file: !661, line: 256, baseType: !106, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !702, file: !661, line: 259, baseType: !470, size: 256, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !702, file: !661, line: 260, baseType: !470, size: 256, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !702, file: !661, line: 261, baseType: !46, size: 32, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !702, file: !661, line: 262, baseType: !113, size: 128, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !702, file: !661, line: 263, baseType: !213, size: 64, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !702, file: !661, line: 265, baseType: !260, size: 64, offset: 1024)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !702, file: !661, line: 266, baseType: !569, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !702, file: !661, line: 267, baseType: !569, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !702, file: !661, line: 268, baseType: !588, size: 64, offset: 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !695, file: !661, line: 277, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !701}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !695, file: !661, line: 290, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!46, !707, !106}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !695, file: !661, line: 292, baseType: !729, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!106, !707, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !695, file: !661, line: 293, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!106, !707, !106, !732}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !695, file: !661, line: 294, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !707, !106}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !695, file: !661, line: 296, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!245, !701, !213, !260, !298}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !695, file: !661, line: 306, baseType: !260, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !695, file: !661, line: 313, baseType: !569, size: 8, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !695, file: !661, line: 314, baseType: !742, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !695, file: !661, line: 317, baseType: !749, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!752, !701, !754}
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !753, line: 59, baseType: !7)
!753 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !661, line: 31, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !695, file: !661, line: 320, baseType: !757, size: 64, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!46, !701, !306}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !690, file: !661, line: 176, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !661, line: 35, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !690, file: !661, line: 177, baseType: !298, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !690, file: !661, line: 178, baseType: !659, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !660, file: !661, line: 215, baseType: !106, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !660, file: !661, line: 221, baseType: !376, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !661, line: 223, baseType: !183, size: 16, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !660, file: !661, line: 224, baseType: !255, size: 16, offset: 912)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !660, file: !661, line: 225, baseType: !770, size: 64, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !661, line: 36, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !660, file: !661, line: 227, baseType: !319, size: 128, align: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !128, file: !129, line: 71, baseType: !774, size: 32, offset: 448)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !775, line: 19, size: 32, elements: !776)
!775 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !774, file: !775, line: 20, baseType: !778, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !779, line: 113, baseType: !780)
!779 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !779, line: 111, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !780, file: !779, line: 112, baseType: !163, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !128, file: !129, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !128, file: !129, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !128, file: !129, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !128, file: !129, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !128, file: !129, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !125, file: !13, line: 47, baseType: !108, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !125, file: !13, line: 48, baseType: !136, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !125, file: !13, line: 49, baseType: !791, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !125, file: !13, line: 50, baseType: !794, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !796, line: 26, size: 256, elements: !797)
!796 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !795, file: !796, line: 27, baseType: !7, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !795, file: !796, line: 28, baseType: !800, size: 192, offset: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !801, line: 43, size: 192, elements: !802)
!801 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !800, file: !801, line: 44, baseType: !404, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !800, file: !801, line: 45, baseType: !113, size: 128, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !109, file: !13, line: 418, baseType: !806, size: 64, offset: 1408)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !808)
!808 = !{!809, !810, !815, !819, !823, !827}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !807, file: !13, line: 54, baseType: !251, size: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !807, file: !13, line: 55, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!245, !806, !814, !213}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !807, file: !13, line: 57, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!245, !806, !814, !132, !260}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !807, file: !13, line: 59, baseType: !820, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !108, !132}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !807, file: !13, line: 60, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!46, !108}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !807, file: !13, line: 61, baseType: !828, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !108}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !109, file: !13, line: 419, baseType: !132, size: 64, offset: 1472)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !109, file: !13, line: 420, baseType: !132, size: 64, offset: 1536)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !109, file: !13, line: 421, baseType: !136, size: 64, offset: 1600)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !109, file: !13, line: 424, baseType: !835, size: 64, offset: 1664)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !109, file: !13, line: 425, baseType: !839, size: 64, offset: 1728)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !109, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !109, file: !13, line: 435, baseType: !470, size: 256, offset: 1856)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !109, file: !13, line: 437, baseType: !844, size: 64, offset: 2112)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !846, line: 69, size: 320, elements: !847)
!846 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!847 = !{!848, !849, !850, !867, !869, !873, !874}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !846, line: 70, baseType: !132, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !845, file: !846, line: 71, baseType: !108, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !845, file: !846, line: 72, baseType: !851, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !846, line: 47, size: 256, elements: !854)
!854 = !{!855, !856, !862, !866}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !846, line: 49, baseType: !7, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !853, file: !846, line: 51, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!46, !132, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !853, file: !846, line: 53, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!46, !213, !860}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !853, file: !846, line: 55, baseType: !632, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !845, file: !846, line: 73, baseType: !868, size: 16, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !845, file: !846, line: 74, baseType: !870, size: 8, offset: 208)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !172, line: 16, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !174, line: 20, baseType: !872)
!872 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !846, line: 75, baseType: !171, size: 8, offset: 216)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 76, baseType: !875, size: 64, offset: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 76, size: 64, elements: !876)
!876 = !{!877, !878, !885}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !875, file: !846, line: 77, baseType: !106, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !875, file: !846, line: 78, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !846, line: 86, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !881, file: !846, line: 87, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !881, file: !846, line: 88, baseType: !213, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !875, file: !846, line: 79, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !846, line: 92, size: 256, elements: !889)
!889 = !{!890, !891, !892, !894, !895}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !888, file: !846, line: 94, baseType: !7, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !888, file: !846, line: 95, baseType: !7, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !888, file: !846, line: 96, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !888, file: !846, line: 97, baseType: !851, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !888, file: !846, line: 98, baseType: !106, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !109, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !109, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !109, file: !13, line: 442, baseType: !835, size: 64, offset: 2240)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !109, file: !13, line: 443, baseType: !839, size: 64, offset: 2304)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !109, file: !13, line: 444, baseType: !569, size: 8, offset: 2368)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !109, file: !13, line: 451, baseType: !569, size: 8, offset: 2376)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !109, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !109, file: !13, line: 455, baseType: !904, size: 64, offset: 2432)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !906, line: 23, size: 96, elements: !907)
!906 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !905, file: !906, line: 24, baseType: !46, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !905, file: !906, line: 24, baseType: !46, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !905, file: !906, line: 24, baseType: !46, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !109, file: !13, line: 458, baseType: !912, size: 64, offset: 2496)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!46}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !109, file: !13, line: 460, baseType: !916, size: 4032, align: 512, offset: 2560)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 4032, elements: !933)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !917, file: !13, line: 363, baseType: !106, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !917, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !917, file: !13, line: 367, baseType: !922, size: 448, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !922, file: !13, line: 320, baseType: !108, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !922, file: !13, line: 321, baseType: !926, size: 384, offset: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !927, line: 40, size: 384, elements: !928)
!927 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !926, file: !927, line: 41, baseType: !930, size: 384, align: 64)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 384, align: 64, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 2)
!933 = !{!934}
!934 = !DISubrange(count: 7)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !109, file: !13, line: 463, baseType: !936, size: 192, offset: 6592)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !937, line: 8, size: 192, elements: !938)
!937 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!938 = !{!939, !940, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !936, file: !937, line: 10, baseType: !7, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !936, file: !937, line: 11, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !936, file: !937, line: 12, baseType: !943, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !945, line: 59, size: 48, elements: !946)
!945 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!946 = !{!947, !948, !949, !950, !951, !952}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !944, file: !945, line: 60, baseType: !508, size: 16)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !944, file: !945, line: 61, baseType: !508, size: 16, offset: 16)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !944, file: !945, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !944, file: !945, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !945, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !944, file: !945, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !109, file: !13, line: 465, baseType: !107, size: 64, offset: 6784)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !109, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !109, file: !13, line: 470, baseType: !113, size: 128, offset: 6912)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !109, file: !13, line: 471, baseType: !957, size: 64, offset: 7040)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !959, line: 33, size: 96, elements: !960)
!959 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!960 = !{!961, !962, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !958, file: !959, line: 37, baseType: !46, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !958, file: !959, line: 43, baseType: !46, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !958, file: !959, line: 45, baseType: !183, size: 16, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 47, baseType: !183, size: 16, offset: 80)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !109, file: !13, line: 476, baseType: !966, size: 64, offset: 7104)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !968)
!968 = !{!969, !986, !987, !988}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !967, file: !13, line: 379, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !972, line: 204, baseType: !973)
!972 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !972, line: 197, size: 192, elements: !974)
!974 = !{!975, !978, !979, !980, !982, !984}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !973, file: !972, line: 198, baseType: !976, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !972, line: 21, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !174, line: 27, baseType: !7)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !973, file: !972, line: 199, baseType: !175, size: 8, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !973, file: !972, line: 200, baseType: !175, size: 8, offset: 40)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !973, file: !972, line: 201, baseType: !981, size: 16, offset: 48)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !972, line: 17, baseType: !182)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !973, file: !972, line: 202, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !972, line: 16, baseType: !377)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !973, file: !972, line: 203, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !972, line: 22, baseType: !377)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !967, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !967, file: !13, line: 381, baseType: !213, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !967, file: !13, line: 382, baseType: !213, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !109, file: !13, line: 477, baseType: !967, size: 256, offset: 7168)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !109, file: !13, line: 480, baseType: !991, size: 64, offset: 7424)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !109, file: !13, line: 483, baseType: !994, size: 64, offset: 7488)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !109, file: !13, line: 488, baseType: !213, size: 64, offset: 7552)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !109, file: !13, line: 492, baseType: !106, size: 64, offset: 7616)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !109, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !109, file: !13, line: 495, baseType: !106, size: 64, offset: 7744)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !109, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !109, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !109, file: !13, line: 500, baseType: !1003, size: 64, offset: 7872)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1005, line: 45, baseType: !1006)
!1005 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !109, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !109, file: !13, line: 504, baseType: !1009, size: 64, offset: 8000)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1012, line: 96, size: 192, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1013 = !{!1014, !1015, !1076, !1079}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1011, file: !1012, line: 97, baseType: !7, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1011, file: !1012, line: 98, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1012, line: 24, size: 3072, elements: !1018)
!1018 = !{!1019, !1021, !1022, !1023, !1024, !1038, !1039, !1040, !1041, !1060, !1061, !1062, !1073, !1074, !1075}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1017, file: !1012, line: 26, baseType: !1020, size: 128)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 128, elements: !931)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1017, file: !1012, line: 27, baseType: !1020, size: 128, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1017, file: !1012, line: 28, baseType: !46, size: 32, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1017, file: !1012, line: 31, baseType: !143, size: 32, align: 512, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1017, file: !1012, line: 32, baseType: !1025, size: 960, offset: 576)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1026, line: 206, size: 960, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1027 = !{!1028, !1029, !1032, !1034, !1035, !1037}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1025, file: !1026, line: 207, baseType: !322, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1025, file: !1026, line: 208, baseType: !1030, size: 256, offset: 64)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 256, elements: !451)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1025, file: !1026, line: 209, baseType: !1033, size: 256, offset: 320)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !451)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1025, file: !1026, line: 213, baseType: !249, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1025, file: !1026, line: 215, baseType: !1036, size: 256, offset: 640)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !451)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !1026, line: 216, baseType: !171, size: 8, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1017, file: !1012, line: 33, baseType: !107, size: 64, offset: 1536)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1017, file: !1012, line: 34, baseType: !107, size: 64, offset: 1600)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1017, file: !1012, line: 35, baseType: !569, size: 8, offset: 1664)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1017, file: !1012, line: 36, baseType: !1042, size: 320, offset: 1728)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1043, line: 11, size: 320, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1044 = !{!1045, !1052, !1053, !1058}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1042, file: !1043, line: 16, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !114, line: 198, size: 128, elements: !1047)
!1047 = !{!1048, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1046, file: !114, line: 199, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1046, file: !114, line: 199, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1042, file: !1043, line: 17, baseType: !107, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1042, file: !1043, line: 18, baseType: !1054, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1043, line: 19, baseType: !1059, size: 32, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !172, line: 21, baseType: !977)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1017, file: !1012, line: 37, baseType: !534, size: 256, offset: 2048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1017, file: !1012, line: 38, baseType: !319, size: 128, align: 64, offset: 2304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1017, file: !1012, line: 39, baseType: !1063, size: 64, offset: 2432)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1012, line: 49, size: 768, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !1012, line: 50, baseType: !143, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1064, file: !1012, line: 51, baseType: !1033, size: 256, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1064, file: !1012, line: 53, baseType: !1033, size: 256, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1064, file: !1012, line: 54, baseType: !107, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1064, file: !1012, line: 55, baseType: !1063, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1064, file: !1012, line: 56, baseType: !46, size: 32, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1064, file: !1012, line: 57, baseType: !46, size: 32, offset: 736)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1017, file: !1012, line: 40, baseType: !107, size: 64, offset: 2496)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1017, file: !1012, line: 42, baseType: !46, size: 32, offset: 2560)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1017, file: !1012, line: 43, baseType: !1010, size: 64, offset: 2624)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1011, file: !1012, line: 99, baseType: !1077, offset: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1078, line: 211, elements: !349)
!1078 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1011, file: !1012, line: 100, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1012, line: 63, size: 3008, elements: !1082)
!1082 = !{!1083, !1084, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1114}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1081, file: !1012, line: 64, baseType: !1063, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1081, file: !1012, line: 65, baseType: !1085, size: 192, offset: 64)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 192, elements: !214)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1081, file: !1012, line: 67, baseType: !46, size: 32, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1081, file: !1012, line: 68, baseType: !470, size: 256, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1081, file: !1012, line: 69, baseType: !143, size: 32, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1081, file: !1012, line: 70, baseType: !470, size: 256, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1081, file: !1012, line: 71, baseType: !107, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1081, file: !1012, line: 72, baseType: !107, size: 64, offset: 960)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1081, file: !1012, line: 73, baseType: !107, size: 64, offset: 1024)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1081, file: !1012, line: 74, baseType: !107, size: 64, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1081, file: !1012, line: 75, baseType: !107, size: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1081, file: !1012, line: 76, baseType: !107, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1081, file: !1012, line: 77, baseType: !107, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1081, file: !1012, line: 78, baseType: !107, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1081, file: !1012, line: 79, baseType: !569, size: 8, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1081, file: !1012, line: 80, baseType: !107, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1081, file: !1012, line: 81, baseType: !470, size: 256, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1081, file: !1012, line: 82, baseType: !795, size: 256, offset: 1792)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1081, file: !1012, line: 84, baseType: !163, size: 32, offset: 2048)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1081, file: !1012, line: 87, baseType: !107, size: 64, offset: 2112)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1081, file: !1012, line: 88, baseType: !107, size: 64, offset: 2176)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1081, file: !1012, line: 89, baseType: !1106, size: 704, offset: 2240)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !535, line: 111, size: 704, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1113}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1106, file: !535, line: 112, baseType: !534, size: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1106, file: !535, line: 113, baseType: !1042, size: 320, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1106, file: !535, line: 116, baseType: !1111, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !535, line: 18, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1106, file: !535, line: 117, baseType: !46, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1081, file: !1012, line: 90, baseType: !1010, size: 64, offset: 2944)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !109, file: !13, line: 515, baseType: !1116, size: 64, offset: 8064)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1118, line: 117, size: 128, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1117, file: !1118, line: 118, baseType: !449, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1117, file: !1118, line: 119, baseType: !449, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1117, file: !1118, line: 120, baseType: !249, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !109, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !109, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !109, file: !13, line: 520, baseType: !1126, size: 64, offset: 8192)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !109, file: !13, line: 523, baseType: !1128, size: 64, offset: 8256)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !109, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !109, file: !13, line: 525, baseType: !1133, size: 64, offset: 8384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !109, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !109, file: !13, line: 533, baseType: !106, size: 64, offset: 8512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !109, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !109, file: !13, line: 535, baseType: !1140, size: 64, offset: 8640)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !109, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !109, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !109, file: !13, line: 540, baseType: !1144, size: 64, offset: 8768)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1146, line: 32, size: 64, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1145, file: !1146, line: 33, baseType: !449, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1145, file: !1146, line: 34, baseType: !449, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !109, file: !13, line: 563, baseType: !113, size: 128, offset: 8832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !109, file: !13, line: 565, baseType: !113, size: 128, offset: 8960)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !109, file: !13, line: 568, baseType: !1153, size: 64, offset: 9088)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !109, file: !13, line: 570, baseType: !163, size: 32, offset: 9152)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcct_subspace", file: !85, line: 2171, size: 496, elements: !1159)
!1159 = !{!1160, !1166, !1170, !1171, !1172, !1181, !1182, !1183, !1184, !1185}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1158, file: !85, line: 2172, baseType: !1161, size: 16)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !1162, line: 96, size: 16, elements: !1163)
!1162 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1161, file: !1162, line: 97, baseType: !171, size: 8)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1161, file: !1162, line: 98, baseType: !171, size: 8, offset: 8)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1158, file: !85, line: 2173, baseType: !1167, size: 48, offset: 16)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 6)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !1158, file: !85, line: 2174, baseType: !376, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1158, file: !85, line: 2175, baseType: !376, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell_register", scope: !1158, file: !85, line: 2176, baseType: !1173, size: 96, offset: 192)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !1174, line: 90, size: 96, elements: !1175)
!1174 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!1175 = !{!1176, !1177, !1178, !1179, !1180}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1173, file: !1174, line: 91, baseType: !171, size: 8)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1173, file: !1174, line: 92, baseType: !171, size: 8, offset: 8)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1173, file: !1174, line: 93, baseType: !171, size: 8, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !1173, file: !1174, line: 94, baseType: !171, size: 8, offset: 24)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1173, file: !1174, line: 95, baseType: !376, size: 64, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_mask", scope: !1158, file: !85, line: 2177, baseType: !376, size: 64, offset: 288)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "write_mask", scope: !1158, file: !85, line: 2178, baseType: !376, size: 64, offset: 352)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1158, file: !85, line: 2179, baseType: !1059, size: 32, offset: 416)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "max_access_rate", scope: !1158, file: !85, line: 2180, baseType: !1059, size: 32, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "min_turnaround_time", scope: !1158, file: !85, line: 2181, baseType: !181, size: 16, offset: 480)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1187, line: 421, baseType: !1059)
!1187 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !114, line: 154, baseType: !7)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_pcct", file: !85, line: 2143, size: 384, elements: !1192)
!1192 = !{!1193, !1210, !1211}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1191, file: !85, line: 2144, baseType: !1194, size: 288)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !1174, line: 68, size: 288, elements: !1195)
!1195 = !{!1196, !1198, !1199, !1200, !1201, !1203, !1207, !1208, !1209}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1194, file: !1174, line: 69, baseType: !1197, size: 32)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !451)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1194, file: !1174, line: 70, baseType: !1059, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1194, file: !1174, line: 71, baseType: !171, size: 8, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1194, file: !1174, line: 72, baseType: !171, size: 8, offset: 72)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !1194, file: !1174, line: 73, baseType: !1202, size: 48, offset: 80)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 48, elements: !1168)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !1194, file: !1174, line: 74, baseType: !1204, size: 64, offset: 128)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DISubrange(count: 8)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !1194, file: !1174, line: 75, baseType: !1059, size: 32, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !1194, file: !1174, line: 76, baseType: !1197, size: 32, offset: 224)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !1194, file: !1174, line: 77, baseType: !1059, size: 32, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !85, line: 2145, baseType: !1059, size: 32, offset: 288)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1191, file: !85, line: 2146, baseType: !376, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcct_hw_reduced", file: !85, line: 2186, size: 496, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1213, file: !85, line: 2187, baseType: !1161, size: 16)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "platform_interrupt", scope: !1213, file: !85, line: 2188, baseType: !1059, size: 32, offset: 16)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !85, line: 2189, baseType: !171, size: 8, offset: 48)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1213, file: !85, line: 2190, baseType: !171, size: 8, offset: 56)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !1213, file: !85, line: 2191, baseType: !376, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1213, file: !85, line: 2192, baseType: !376, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell_register", scope: !1213, file: !85, line: 2193, baseType: !1173, size: 96, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_mask", scope: !1213, file: !85, line: 2194, baseType: !376, size: 64, offset: 288)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "write_mask", scope: !1213, file: !85, line: 2195, baseType: !376, size: 64, offset: 352)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1213, file: !85, line: 2196, baseType: !1059, size: 32, offset: 416)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "max_access_rate", scope: !1213, file: !85, line: 2197, baseType: !1059, size: 32, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "min_turnaround_time", scope: !1213, file: !85, line: 2198, baseType: !181, size: 16, offset: 480)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !1187, line: 814, baseType: !171)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcct_ext_pcc_master", file: !85, line: 2223, size: 1312, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1229, file: !85, line: 2224, baseType: !1161, size: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "platform_interrupt", scope: !1229, file: !85, line: 2225, baseType: !1059, size: 32, offset: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !85, line: 2226, baseType: !171, size: 8, offset: 48)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1229, file: !85, line: 2227, baseType: !171, size: 8, offset: 56)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !1229, file: !85, line: 2228, baseType: !376, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1229, file: !85, line: 2229, baseType: !1059, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell_register", scope: !1229, file: !85, line: 2230, baseType: !1173, size: 96, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_mask", scope: !1229, file: !85, line: 2231, baseType: !376, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "write_mask", scope: !1229, file: !85, line: 2232, baseType: !376, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1229, file: !85, line: 2233, baseType: !1059, size: 32, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "max_access_rate", scope: !1229, file: !85, line: 2234, baseType: !1059, size: 32, offset: 416)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "min_turnaround_time", scope: !1229, file: !85, line: 2235, baseType: !1059, size: 32, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "platform_ack_register", scope: !1229, file: !85, line: 2236, baseType: !1173, size: 96, offset: 480)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ack_preserve_mask", scope: !1229, file: !85, line: 2237, baseType: !376, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ack_set_mask", scope: !1229, file: !85, line: 2238, baseType: !376, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1229, file: !85, line: 2239, baseType: !376, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_complete_register", scope: !1229, file: !85, line: 2240, baseType: !1173, size: 96, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_complete_mask", scope: !1229, file: !85, line: 2241, baseType: !376, size: 64, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_update_register", scope: !1229, file: !85, line: 2242, baseType: !1173, size: 96, offset: 928)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_update_preserve_mask", scope: !1229, file: !85, line: 2243, baseType: !376, size: 64, offset: 1024)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_update_set_mask", scope: !1229, file: !85, line: 2244, baseType: !376, size: 64, offset: 1088)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "error_status_register", scope: !1229, file: !85, line: 2245, baseType: !1173, size: 96, offset: 1152)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "error_status_mask", scope: !1229, file: !85, line: 2246, baseType: !376, size: 64, offset: 1248)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !175)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !183)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!1262 = !{!1263, !1268, !1270, !1272, !1274, !1276, !0, !1962, !1967, !1972, !1977, !2039, !2044, !2049, !2054, !2059, !2061, !2066, !2071, !2073, !2078, !2083, !2088, !2093, !2095, !2097, !2099}
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression())
!1264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !1265, isLocal: true, isDefinition: true)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 264, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 33)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcc_mbox_request_channel206", scope: !2, file: !3, line: 379, type: !106, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcc_mbox_free_channel207", scope: !2, file: !3, line: 404, type: !106, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcc_mbox_ioremap208", scope: !2, file: !3, line: 419, type: !106, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pcc__209_878_pcc_init2210", scope: !2, file: !3, line: 878, type: !106, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(name: "chan_info", scope: !2, file: !3, line: 117, type: !1278, isLocal: true, isDefinition: true)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcc_chan_info", file: !3, line: 103, size: 2112, elements: !1280)
!1280 = !{!1281, !1945, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !1279, file: !3, line: 104, baseType: !1282, size: 384)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcc_mbox_chan", file: !1283, line: 12, size: 384, elements: !1284)
!1283 = !DIFile(filename: "./include/acpi/pcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f009a5c28c5aefa0582e3f03172744e")
!1284 = !{!1285, !1939, !1940, !1941, !1942, !1943, !1944}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mchan", scope: !1282, file: !1283, line: 13, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_chan", file: !1288, line: 118, size: 1984, elements: !1289)
!1288 = !DIFile(filename: "./include/linux/mailbox_controller.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8463aab1790a791aaed8ad8f379f1af1")
!1289 = !{!1290, !1910, !1911, !1929, !1930, !1931, !1932, !1933, !1937, !1938}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !1287, file: !1288, line: 119, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_controller", file: !1288, line: 74, size: 1088, elements: !1293)
!1293 = !{!1294, !1863, !1889, !1890, !1891, !1892, !1893, !1894, !1907, !1908, !1909}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1292, file: !1288, line: 75, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1303, !1304, !1357, !1448, !1449, !1450, !1451, !1452, !1459, !1627, !1640, !1650, !1654, !1656, !1657, !1658, !1662, !1669, !1670, !1673, !1676, !1802, !1803, !1804, !1807, !1808, !1809, !1810, !1840, !1841, !1842, !1845, !1848, !1857, !1858, !1859, !1860, !1861, !1862}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1296, file: !26, line: 706, baseType: !128, size: 512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1296, file: !26, line: 707, baseType: !1295, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1296, file: !26, line: 709, baseType: !1301, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1296, file: !26, line: 711, baseType: !132, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1296, file: !26, line: 712, baseType: !1305, size: 64, offset: 704)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1317, !1322, !1326}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1307, file: !26, line: 90, baseType: !132, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1307, file: !26, line: 91, baseType: !264, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1307, file: !26, line: 92, baseType: !1312, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!46, !1315, !208}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1307, file: !26, line: 93, baseType: !1318, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!213, !1315, !1321, !643, !651}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1307, file: !26, line: 95, baseType: !1323, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1295}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1307, file: !26, line: 97, baseType: !1327, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1330)
!1330 = !{!1331, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1329, file: !38, line: 287, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!46, !1295}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1329, file: !38, line: 288, baseType: !1323, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1329, file: !38, line: 289, baseType: !1332, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1329, file: !38, line: 290, baseType: !1332, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1329, file: !38, line: 291, baseType: !1332, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1329, file: !38, line: 292, baseType: !1332, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1329, file: !38, line: 293, baseType: !1332, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1329, file: !38, line: 294, baseType: !1332, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1329, file: !38, line: 295, baseType: !1332, size: 64, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1329, file: !38, line: 296, baseType: !1332, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1329, file: !38, line: 297, baseType: !1332, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1329, file: !38, line: 298, baseType: !1332, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1329, file: !38, line: 299, baseType: !1332, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1329, file: !38, line: 300, baseType: !1332, size: 64, offset: 832)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1329, file: !38, line: 301, baseType: !1332, size: 64, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1329, file: !38, line: 302, baseType: !1332, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1329, file: !38, line: 303, baseType: !1332, size: 64, offset: 1024)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1329, file: !38, line: 304, baseType: !1332, size: 64, offset: 1088)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1329, file: !38, line: 305, baseType: !1332, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1329, file: !38, line: 306, baseType: !1332, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1329, file: !38, line: 307, baseType: !1332, size: 64, offset: 1280)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1329, file: !38, line: 308, baseType: !1332, size: 64, offset: 1344)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1329, file: !38, line: 309, baseType: !1332, size: 64, offset: 1408)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1296, file: !26, line: 714, baseType: !1358, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1361, line: 80, size: 1344, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1447}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1360, file: !1361, line: 81, baseType: !132, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1360, file: !1361, line: 82, baseType: !132, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1360, file: !1361, line: 83, baseType: !264, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1360, file: !1361, line: 84, baseType: !264, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1360, file: !1361, line: 85, baseType: !264, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1360, file: !1361, line: 87, baseType: !1369, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!46, !1295, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1397, !1410, !1411, !1412, !1413, !1414, !1422, !1423, !1424, !1425, !1426, !1427}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1373, file: !20, line: 97, baseType: !132, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1373, file: !20, line: 98, baseType: !1358, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1373, file: !20, line: 100, baseType: !108, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1373, file: !20, line: 101, baseType: !132, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1373, file: !20, line: 103, baseType: !569, size: 8, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1373, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1373, file: !20, line: 106, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1385, line: 282, size: 1600, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1386 = !{!1387, !1391, !1392, !1396}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1384, file: !1385, line: 283, baseType: !1388, size: 256)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1384, file: !1385, line: 284, baseType: !1388, size: 256, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1384, file: !1385, line: 285, baseType: !1393, size: 1024, offset: 512)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1384, file: !1385, line: 286, baseType: !491, size: 64, offset: 1536)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1373, file: !20, line: 107, baseType: !1398, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1385, line: 217, size: 256, elements: !1401)
!1401 = !{!1402, !1406, !1408, !1409}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1400, file: !1385, line: 218, baseType: !1403, size: 128)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 16)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1400, file: !1385, line: 219, baseType: !1407, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1385, line: 15, baseType: !107)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1400, file: !1385, line: 220, baseType: !977, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1400, file: !1385, line: 221, baseType: !977, size: 32, offset: 224)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1373, file: !20, line: 109, baseType: !1332, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1373, file: !20, line: 110, baseType: !1323, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1373, file: !20, line: 111, baseType: !1332, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1373, file: !20, line: 112, baseType: !1323, size: 64, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1373, file: !20, line: 113, baseType: !1415, size: 64, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!46, !1295, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1419, file: !38, line: 59, baseType: !46, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1373, file: !20, line: 114, baseType: !1332, size: 64, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1373, file: !20, line: 115, baseType: !264, size: 64, offset: 832)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1373, file: !20, line: 116, baseType: !264, size: 64, offset: 896)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1373, file: !20, line: 118, baseType: !1327, size: 64, offset: 960)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1373, file: !20, line: 119, baseType: !1323, size: 64, offset: 1024)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1373, file: !20, line: 121, baseType: !1428, size: 64, offset: 1088)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1360, file: !1361, line: 88, baseType: !1312, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1360, file: !1361, line: 89, baseType: !1332, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1360, file: !1361, line: 90, baseType: !1323, size: 64, offset: 512)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1360, file: !1361, line: 91, baseType: !1323, size: 64, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1360, file: !1361, line: 92, baseType: !1323, size: 64, offset: 640)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1360, file: !1361, line: 94, baseType: !1332, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1360, file: !1361, line: 95, baseType: !1332, size: 64, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1360, file: !1361, line: 97, baseType: !1415, size: 64, offset: 832)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1360, file: !1361, line: 98, baseType: !1332, size: 64, offset: 896)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1360, file: !1361, line: 100, baseType: !1332, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1360, file: !1361, line: 102, baseType: !1332, size: 64, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1360, file: !1361, line: 103, baseType: !1323, size: 64, offset: 1088)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1360, file: !1361, line: 105, baseType: !1327, size: 64, offset: 1152)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1360, file: !1361, line: 107, baseType: !1444, size: 64, offset: 1216)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1361, line: 107, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1360, file: !1361, line: 109, baseType: !569, size: 8, offset: 1280)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1296, file: !26, line: 715, baseType: !1372, size: 64, offset: 832)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1296, file: !26, line: 717, baseType: !106, size: 64, offset: 896)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1296, file: !26, line: 719, baseType: !106, size: 64, offset: 960)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1296, file: !26, line: 721, baseType: !470, size: 256, offset: 1024)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1296, file: !26, line: 725, baseType: !1453, size: 448, offset: 1280)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1453, file: !26, line: 518, baseType: !113, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1453, file: !26, line: 519, baseType: !113, size: 128, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1453, file: !26, line: 520, baseType: !113, size: 128, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1453, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1296, file: !26, line: 726, baseType: !1460, size: 2496, offset: 1728)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1506, !1507, !1508, !1509, !1510, !1511, !1580, !1581, !1582, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1620, !1624}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1460, file: !38, line: 664, baseType: !1418, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1460, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1460, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1460, file: !38, line: 667, baseType: !569, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1460, file: !38, line: 668, baseType: !569, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1460, file: !38, line: 669, baseType: !569, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1460, file: !38, line: 670, baseType: !569, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1460, file: !38, line: 671, baseType: !569, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1460, file: !38, line: 672, baseType: !569, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1460, file: !38, line: 673, baseType: !569, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1460, file: !38, line: 674, baseType: !569, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1460, file: !38, line: 675, baseType: !1059, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1460, file: !38, line: 676, baseType: !143, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1460, file: !38, line: 678, baseType: !113, size: 128, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1460, file: !38, line: 679, baseType: !795, size: 256, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1460, file: !38, line: 680, baseType: !1478, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1480, line: 43, size: 1536, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1489, !1490, !1491, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1479, file: !1480, line: 44, baseType: !132, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1479, file: !1480, line: 45, baseType: !46, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1479, file: !1480, line: 46, baseType: !113, size: 128, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1480, line: 47, baseType: !143, size: 32, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1479, file: !1480, line: 48, baseType: !1487, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1479, file: !1480, line: 49, baseType: !1042, size: 320, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1479, file: !1480, line: 50, baseType: !107, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1479, file: !1480, line: 51, baseType: !1492, size: 64, offset: 768)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1493, line: 29, baseType: !388)
!1493 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1479, file: !1480, line: 52, baseType: !1492, size: 64, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1479, file: !1480, line: 53, baseType: !1492, size: 64, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1479, file: !1480, line: 54, baseType: !1492, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1479, file: !1480, line: 55, baseType: !1492, size: 64, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1479, file: !1480, line: 56, baseType: !107, size: 64, offset: 1088)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1479, file: !1480, line: 57, baseType: !107, size: 64, offset: 1152)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1479, file: !1480, line: 58, baseType: !107, size: 64, offset: 1216)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1479, file: !1480, line: 59, baseType: !107, size: 64, offset: 1280)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1479, file: !1480, line: 60, baseType: !107, size: 64, offset: 1344)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1479, file: !1480, line: 61, baseType: !1295, size: 64, offset: 1408)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1479, file: !1480, line: 62, baseType: !569, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1479, file: !1480, line: 63, baseType: !569, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1460, file: !38, line: 681, baseType: !569, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1460, file: !38, line: 682, baseType: !569, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1460, file: !38, line: 683, baseType: !569, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1460, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1460, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1460, file: !38, line: 690, baseType: !1512, size: 512, offset: 640)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1513)
!1513 = !{!1514, !1520, !1521, !1526, !1576, !1577, !1578, !1579}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1512, file: !33, line: 119, baseType: !1515, size: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1516, line: 9, size: 256, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1515, file: !1516, line: 10, baseType: !575, size: 192, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1515, file: !1516, line: 11, baseType: !1492, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1512, file: !33, line: 120, baseType: !1492, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1512, file: !33, line: 121, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!32, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1512, file: !33, line: 122, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1529)
!1529 = !{!1530, !1553, !1554, !1557, !1562, !1563, !1571, !1575}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1528, file: !33, line: 160, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !33, line: 216, baseType: !404, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1532, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1532, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1532, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1532, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1532, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1532, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1532, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1532, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1532, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1532, file: !33, line: 227, baseType: !183, size: 16, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1532, file: !33, line: 228, baseType: !183, size: 16, offset: 208)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1532, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1532, file: !33, line: 235, baseType: !1492, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1532, file: !33, line: 236, baseType: !1525, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1532, file: !33, line: 237, baseType: !1492, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1532, file: !33, line: 238, baseType: !1525, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1532, file: !33, line: 239, baseType: !1552, size: 4096, align: 512, offset: 512)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 4096, align: 512, elements: !1205)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1528, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1528, file: !33, line: 162, baseType: !1555, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !114, line: 32, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !247, line: 96, baseType: !46)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1528, file: !33, line: 163, baseType: !1558, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !419, line: 274, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !419, line: 274, size: 32, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1559, file: !419, line: 274, baseType: !418, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1528, file: !33, line: 164, baseType: !1525, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1528, file: !33, line: 165, baseType: !1564, size: 128, offset: 256)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1516, line: 14, size: 128, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1564, file: !1516, line: 15, baseType: !1567, size: 128)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !576, line: 26, size: 128, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1567, file: !576, line: 27, baseType: !678, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1567, file: !576, line: 28, baseType: !580, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1528, file: !33, line: 166, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1492}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1528, file: !33, line: 167, baseType: !1492, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1512, file: !33, line: 123, baseType: !171, size: 8, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1512, file: !33, line: 124, baseType: !171, size: 8, offset: 456)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1512, file: !33, line: 125, baseType: !171, size: 8, offset: 464)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1512, file: !33, line: 126, baseType: !171, size: 8, offset: 472)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1460, file: !38, line: 691, baseType: !376, size: 64, offset: 1152)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1460, file: !38, line: 692, baseType: !534, size: 256, offset: 1216)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1460, file: !38, line: 693, baseType: !1583, size: 192, offset: 1472)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1584, line: 41, baseType: !1585)
!1584 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1584, line: 37, size: 192, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !1584, line: 38, baseType: !143, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1585, file: !1584, line: 39, baseType: !113, size: 128, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1460, file: !38, line: 694, baseType: !1487, size: 64, offset: 1664)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1460, file: !38, line: 695, baseType: !163, size: 32, offset: 1728)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1460, file: !38, line: 696, baseType: !163, size: 32, offset: 1760)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1460, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1460, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1460, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1460, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1460, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1460, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1460, file: !38, line: 703, baseType: !569, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1460, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1460, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1460, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1460, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1460, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1460, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1460, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1460, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1460, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1460, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1460, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1460, file: !38, line: 715, baseType: !376, size: 64, offset: 2048)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1460, file: !38, line: 716, baseType: !376, size: 64, offset: 2112)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1460, file: !38, line: 717, baseType: !376, size: 64, offset: 2176)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1460, file: !38, line: 718, baseType: !376, size: 64, offset: 2240)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1460, file: !38, line: 720, baseType: !1615, size: 64, offset: 2304)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !38, line: 633, baseType: !143, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1616, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1460, file: !38, line: 721, baseType: !1621, size: 64, offset: 2368)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1295, !449}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1460, file: !38, line: 722, baseType: !1625, size: 64, offset: 2432)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1296, file: !26, line: 727, baseType: !1628, size: 64, offset: 4224)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1637, !1638, !1639}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1629, file: !38, line: 743, baseType: !1329, size: 1472)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1629, file: !38, line: 744, baseType: !1332, size: 64, offset: 1472)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1629, file: !38, line: 745, baseType: !1634, size: 64, offset: 1536)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !1295, !569}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1629, file: !38, line: 746, baseType: !1332, size: 64, offset: 1600)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1629, file: !38, line: 747, baseType: !1323, size: 64, offset: 1664)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1629, file: !38, line: 748, baseType: !1323, size: 64, offset: 1728)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1296, file: !26, line: 736, baseType: !1641, size: 128, offset: 4288)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1642)
!1642 = !{!1643, !1647}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1641, file: !26, line: 531, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1646, line: 13, flags: DIFlagFwdDecl)
!1646 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1641, file: !26, line: 532, baseType: !1648, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1296, file: !26, line: 738, baseType: !1651, size: 64, offset: 4416)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1296, file: !26, line: 740, baseType: !1655, size: 64, offset: 4480)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1296, file: !26, line: 741, baseType: !376, size: 64, offset: 4544)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1296, file: !26, line: 746, baseType: !376, size: 64, offset: 4608)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1296, file: !26, line: 747, baseType: !1659, size: 64, offset: 4672)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1296, file: !26, line: 749, baseType: !1663, size: 64, offset: 4736)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1665)
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1664, file: !26, line: 433, baseType: !7, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1664, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1664, file: !26, line: 435, baseType: !107, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1296, file: !26, line: 751, baseType: !113, size: 128, offset: 4800)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1296, file: !26, line: 762, baseType: !1671, size: 64, offset: 4928)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1296, file: !26, line: 770, baseType: !1674, offset: 4992)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1675, line: 5, elements: !349)
!1675 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1296, file: !26, line: 772, baseType: !1677, size: 64, offset: 4992)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1679, line: 48, size: 1152, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1680 = !{!1681, !1682, !1684, !1685, !1788, !1796, !1797, !1798, !1799, !1800, !1801}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1678, file: !1679, line: 49, baseType: !132, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1678, file: !1679, line: 50, baseType: !1683, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1679, line: 25, baseType: !1059)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1678, file: !1679, line: 51, baseType: !132, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1678, file: !1679, line: 52, baseType: !1686, size: 512, offset: 192)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1687, line: 41, size: 512, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1688 = !{!1689, !1691, !1784, !1785, !1786, !1787}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1686, file: !1687, line: 42, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1686, file: !1687, line: 43, baseType: !1692, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1687, line: 125, size: 1408, elements: !1695)
!1695 = !{!1696, !1700, !1704, !1710, !1714, !1715, !1719, !1723, !1727, !1731, !1735, !1736, !1740, !1744, !1748, !1759, !1760, !1761, !1762, !1772, !1776, !1780}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1694, file: !1687, line: 126, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1690, !1690}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1694, file: !1687, line: 127, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1690}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1694, file: !1687, line: 128, baseType: !1705, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!569, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1694, file: !1687, line: 129, baseType: !1711, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!491, !1708, !1315}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1694, file: !1687, line: 131, baseType: !1705, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1694, file: !1687, line: 133, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!53, !1708}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1694, file: !1687, line: 134, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!569, !1708, !132}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1694, file: !1687, line: 136, baseType: !1724, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!46, !1708, !132, !7, !106, !260}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1694, file: !1687, line: 141, baseType: !1728, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!46, !1708, !132, !1126, !260}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1694, file: !1687, line: 144, baseType: !1732, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!132, !1708}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1694, file: !1687, line: 145, baseType: !1732, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1694, file: !1687, line: 146, baseType: !1737, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1690, !1708}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1694, file: !1687, line: 148, baseType: !1741, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1690, !1708, !1690}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1694, file: !1687, line: 151, baseType: !1745, size: 64, offset: 832)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1690, !1708, !132}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1694, file: !1687, line: 153, baseType: !1749, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!46, !1708, !132, !132, !7, !7, !1752}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1687, line: 94, size: 640, elements: !1754)
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1753, file: !1687, line: 95, baseType: !1690, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1753, file: !1687, line: 96, baseType: !7, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1753, file: !1687, line: 97, baseType: !1758, size: 512, offset: 128)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 512, elements: !1205)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1694, file: !1687, line: 158, baseType: !1741, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1694, file: !1687, line: 161, baseType: !1737, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1694, file: !1687, line: 163, baseType: !1697, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1694, file: !1687, line: 164, baseType: !1763, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!46, !1708, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1687, line: 73, size: 128, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1767, file: !1687, line: 74, baseType: !7, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1767, file: !1687, line: 75, baseType: !7, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1767, file: !1687, line: 76, baseType: !1708, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1694, file: !1687, line: 166, baseType: !1773, size: 64, offset: 1216)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!106, !1690, !46}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1694, file: !1687, line: 167, baseType: !1777, size: 64, offset: 1280)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!46, !1708, !7}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1694, file: !1687, line: 168, baseType: !1781, size: 64, offset: 1344)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!46, !1690}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1686, file: !1687, line: 44, baseType: !1295, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1686, file: !1687, line: 45, baseType: !113, size: 128, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1686, file: !1687, line: 46, baseType: !113, size: 128, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !1687, line: 47, baseType: !171, size: 8, offset: 448)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1678, file: !1679, line: 54, baseType: !1789, size: 64, offset: 704)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1679, line: 28, size: 256, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !1679, line: 29, baseType: !213, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1790, file: !1679, line: 30, baseType: !46, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1790, file: !1679, line: 31, baseType: !106, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1790, file: !1679, line: 32, baseType: !1789, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1678, file: !1679, line: 55, baseType: !1789, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1678, file: !1679, line: 56, baseType: !1677, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1678, file: !1679, line: 57, baseType: !1677, size: 64, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1678, file: !1679, line: 58, baseType: !1677, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1678, file: !1679, line: 62, baseType: !107, size: 64, offset: 1024)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1678, file: !1679, line: 63, baseType: !106, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1296, file: !26, line: 773, baseType: !1690, size: 64, offset: 5056)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1296, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1296, file: !26, line: 778, baseType: !1805, size: 32, offset: 5152)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !114, line: 21, baseType: !1806)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !114, line: 18, baseType: !1059)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1296, file: !26, line: 779, baseType: !1059, size: 32, offset: 5184)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1296, file: !26, line: 781, baseType: !143, size: 32, offset: 5216)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1296, file: !26, line: 782, baseType: !113, size: 128, offset: 5248)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1296, file: !26, line: 784, baseType: !1811, size: 64, offset: 5376)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1814, line: 52, size: 768, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1824, !1828, !1829, !1830, !1831, !1835, !1839}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1813, file: !1814, line: 53, baseType: !132, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1813, file: !1814, line: 55, baseType: !264, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1813, file: !1814, line: 56, baseType: !264, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1813, file: !1814, line: 58, baseType: !1312, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1813, file: !1814, line: 59, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!213, !1315, !1321}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1813, file: !1814, line: 61, baseType: !1825, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1811}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1813, file: !1814, line: 62, baseType: !1323, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1813, file: !1814, line: 64, baseType: !1332, size: 64, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1813, file: !1814, line: 66, baseType: !608, size: 64, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1813, file: !1814, line: 67, baseType: !1832, size: 64, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!491, !1315}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1813, file: !1814, line: 69, baseType: !1836, size: 64, offset: 640)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1315, !643, !651}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1813, file: !1814, line: 71, baseType: !1327, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1296, file: !26, line: 785, baseType: !264, size: 64, offset: 5440)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1296, file: !26, line: 787, baseType: !1323, size: 64, offset: 5504)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1296, file: !26, line: 788, baseType: !1843, size: 64, offset: 5568)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1296, file: !26, line: 789, baseType: !1846, size: 64, offset: 5632)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1296, file: !26, line: 791, baseType: !1849, size: 64, offset: 5696)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1850, file: !26, line: 598, baseType: !59, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1850, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1850, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1850, file: !26, line: 601, baseType: !569, size: 8, offset: 96)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1850, file: !26, line: 602, baseType: !569, size: 8, offset: 104)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1296, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1296, file: !26, line: 795, baseType: !569, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1296, file: !26, line: 796, baseType: !569, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1296, file: !26, line: 797, baseType: !569, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1296, file: !26, line: 798, baseType: !569, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1296, file: !26, line: 799, baseType: !569, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1292, file: !1288, line: 76, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_chan_ops", file: !1288, line: 46, size: 384, elements: !1867)
!1867 = !{!1868, !1872, !1876, !1880, !1884, !1888}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !1866, file: !1288, line: 47, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!46, !1286, !106}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1866, file: !1288, line: 48, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!46, !1286, !107}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1866, file: !1288, line: 49, baseType: !1877, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!46, !1286}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1866, file: !1288, line: 50, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1286}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "last_tx_done", scope: !1866, file: !1288, line: 51, baseType: !1885, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!569, !1286}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "peek_data", scope: !1866, file: !1288, line: 52, baseType: !1885, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "chans", scope: !1292, file: !1288, line: 77, baseType: !1286, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "num_chans", scope: !1292, file: !1288, line: 78, baseType: !46, size: 32, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_irq", scope: !1292, file: !1288, line: 79, baseType: !569, size: 8, offset: 224)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_poll", scope: !1292, file: !1288, line: 80, baseType: !569, size: 8, offset: 232)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "txpoll_period", scope: !1292, file: !1288, line: 81, baseType: !7, size: 32, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !1292, file: !1288, line: 82, baseType: !1895, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1286, !1291, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1679, line: 71, size: 640, elements: !1901)
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1900, file: !1679, line: 72, baseType: !1677, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !1900, file: !1679, line: 73, baseType: !46, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1900, file: !1679, line: 74, baseType: !1905, size: 512, offset: 96)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 512, elements: !1404)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 110, baseType: !1059)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "poll_hrt", scope: !1292, file: !1288, line: 85, baseType: !1512, size: 512, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "poll_hrt_lock", scope: !1292, file: !1288, line: 86, baseType: !143, size: 32, offset: 896)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1292, file: !1288, line: 87, baseType: !113, size: 128, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "txdone_method", scope: !1287, file: !1288, line: 120, baseType: !7, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1287, file: !1288, line: 121, baseType: !1912, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbox_client", file: !1914, line: 29, size: 448, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/mailbox_client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0c6a21194f80ebca47695debe622e85")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1924, !1925}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1913, file: !1914, line: 30, baseType: !1295, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tx_block", scope: !1913, file: !1914, line: 31, baseType: !569, size: 8, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tout", scope: !1913, file: !1914, line: 32, baseType: !107, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "knows_txdone", scope: !1913, file: !1914, line: 33, baseType: !569, size: 8, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "rx_callback", scope: !1913, file: !1914, line: 35, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1912, !106}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tx_prepare", scope: !1913, file: !1914, line: 36, baseType: !1921, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "tx_done", scope: !1913, file: !1914, line: 37, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1912, !106, !46}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "tx_complete", scope: !1287, file: !1288, line: 122, baseType: !795, size: 256, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "active_req", scope: !1287, file: !1288, line: 123, baseType: !106, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !1287, file: !1288, line: 124, baseType: !7, size: 32, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "msg_free", scope: !1287, file: !1288, line: 124, baseType: !7, size: 32, offset: 544)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "msg_data", scope: !1287, file: !1288, line: 125, baseType: !1934, size: 1280, offset: 576)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1280, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 20)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1287, file: !1288, line: 126, baseType: !143, size: 32, offset: 1856)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "con_priv", scope: !1287, file: !1288, line: 127, baseType: !106, size: 64, offset: 1920)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "shmem_base_addr", scope: !1282, file: !1283, line: 14, baseType: !376, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "shmem", scope: !1282, file: !1283, line: 15, baseType: !106, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "shmem_size", scope: !1282, file: !1283, line: 16, baseType: !376, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1282, file: !1283, line: 17, baseType: !1059, size: 32, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "max_access_rate", scope: !1282, file: !1283, line: 18, baseType: !1059, size: 32, offset: 288)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "min_turnaround_time", scope: !1282, file: !1283, line: 19, baseType: !181, size: 16, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1279, file: !3, line: 105, baseType: !1946, size: 320, offset: 384)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcc_chan_reg", file: !3, line: 75, size: 320, elements: !1947)
!1947 = !{!1948, !1949, !1951, !1952, !1953}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1946, file: !3, line: 76, baseType: !106, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gas", scope: !1946, file: !3, line: 77, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_mask", scope: !1946, file: !3, line: 78, baseType: !376, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "set_mask", scope: !1946, file: !3, line: 79, baseType: !376, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "status_mask", scope: !1946, file: !3, line: 80, baseType: !376, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "plat_irq_ack", scope: !1279, file: !3, line: 106, baseType: !1946, size: 320, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_complete", scope: !1279, file: !3, line: 107, baseType: !1946, size: 320, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_update", scope: !1279, file: !3, line: 108, baseType: !1946, size: 320, offset: 1344)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1279, file: !3, line: 109, baseType: !1946, size: 320, offset: 1664)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "plat_irq", scope: !1279, file: !3, line: 110, baseType: !46, size: 32, offset: 1984)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1279, file: !3, line: 111, baseType: !171, size: 8, offset: 2016)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "plat_irq_flags", scope: !1279, file: !3, line: 112, baseType: !7, size: 32, offset: 2048)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "chan_in_use", scope: !1279, file: !3, line: 113, baseType: !569, size: 8, offset: 2080)
!1962 = !DIGlobalVariableExpression(var: !1963, expr: !DIExpression())
!1963 = distinct !DIGlobalVariable(scope: null, file: !3, line: 704, type: !1964, isLocal: true, isDefinition: true)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 40, elements: !1965)
!1965 = !{!1966}
!1966 = !DISubrange(count: 5)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !1969, isLocal: true, isDefinition: true)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 328, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 41)
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !1974, isLocal: true, isDefinition: true)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 272, elements: !1975)
!1975 = !{!1976}
!1976 = !DISubrange(count: 34)
!1977 = !DIGlobalVariableExpression(var: !1978, expr: !DIExpression())
!1978 = distinct !DIGlobalVariable(name: "pcc_mbox_driver", scope: !2, file: !3, line: 838, type: !1979, isLocal: true, isDefinition: true)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !1980, line: 236, size: 1664, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!1981 = !{!1982, !2024, !2025, !2029, !2030, !2034, !2035, !2036, !2037, !2038}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1979, file: !1980, line: 237, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!46, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !1980, line: 23, size: 6464, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !2010, !2018, !2019, !2022}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1987, file: !1980, line: 24, baseType: !132, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1987, file: !1980, line: 25, baseType: !46, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !1987, file: !1980, line: 26, baseType: !569, size: 8, offset: 96)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1987, file: !1980, line: 27, baseType: !1296, size: 5824, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !1987, file: !1980, line: 28, baseType: !376, size: 64, offset: 5952)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1987, file: !1980, line: 29, baseType: !1664, size: 128, offset: 6016)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !1987, file: !1980, line: 30, baseType: !1059, size: 32, offset: 6144)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !1987, file: !1980, line: 31, baseType: !1997, size: 64, offset: 6208)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !290, line: 21, size: 512, elements: !1999)
!1999 = !{!2000, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1998, file: !290, line: 22, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !114, line: 164, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !114, line: 159, baseType: !376)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1998, file: !290, line: 23, baseType: !2001, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1998, file: !290, line: 24, baseType: !132, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1998, file: !290, line: 25, baseType: !107, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1998, file: !290, line: 26, baseType: !107, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1998, file: !290, line: 27, baseType: !1997, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1998, file: !290, line: 27, baseType: !1997, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1998, file: !290, line: 27, baseType: !1997, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !1987, file: !1980, line: 33, baseType: !2011, size: 64, offset: 6272)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1385, line: 607, size: 256, elements: !2014)
!2014 = !{!2015, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2013, file: !1385, line: 608, baseType: !2016, size: 160)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 160, elements: !1935)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2013, file: !1385, line: 609, baseType: !1407, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !1987, file: !1980, line: 38, baseType: !132, size: 64, offset: 6336)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !1987, file: !1980, line: 41, baseType: !2020, size: 64, offset: 6400)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !1980, line: 19, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1987, file: !1980, line: 44, baseType: !2023, offset: 6464)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1675, line: 8, elements: !349)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1979, file: !1980, line: 247, baseType: !1983, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "remove_new", scope: !1979, file: !1980, line: 248, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1986}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1979, file: !1980, line: 250, baseType: !2026, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1979, file: !1980, line: 251, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!46, !1986, !1418}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1979, file: !1980, line: 252, baseType: !1983, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1979, file: !1980, line: 253, baseType: !1373, size: 1152, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1979, file: !1980, line: 254, baseType: !2011, size: 64, offset: 1536)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !1979, file: !1980, line: 255, baseType: !569, size: 8, offset: 1600)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !1979, file: !1980, line: 263, baseType: !569, size: 8, offset: 1608)
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 798, type: !2041, isLocal: true, isDefinition: true)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 344, elements: !2042)
!2042 = !{!2043}
!2043 = !DISubrange(count: 43)
!2044 = !DIGlobalVariableExpression(var: !2045, expr: !DIExpression())
!2045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 821, type: !2046, isLocal: true, isDefinition: true)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 232, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 29)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(scope: null, file: !3, line: 827, type: !2051, isLocal: true, isDefinition: true)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 384, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 48)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(scope: null, file: !3, line: 830, type: !2056, isLocal: true, isDefinition: true)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 392, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 49)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 568, type: !2046, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !2063, isLocal: true, isDefinition: true)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 104, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 13)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 596, type: !2068, isLocal: true, isDefinition: true)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 408, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 51)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !2051, isLocal: true, isDefinition: true)
!2073 = !DIGlobalVariableExpression(var: !2074, expr: !DIExpression())
!2074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 531, type: !2075, isLocal: true, isDefinition: true)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 296, elements: !2076)
!2076 = !{!2077}
!2077 = !DISubrange(count: 37)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(scope: null, file: !3, line: 624, type: !2080, isLocal: true, isDefinition: true)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 72, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 9)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(scope: null, file: !3, line: 641, type: !2085, isLocal: true, isDefinition: true)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 184, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 23)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(scope: null, file: !3, line: 649, type: !2090, isLocal: true, isDefinition: true)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !2091)
!2091 = !{!2092}
!2092 = !DISubrange(count: 24)
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(scope: null, file: !3, line: 656, type: !2063, isLocal: true, isDefinition: true)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "pcc_chan_ops", scope: !2, file: !3, line: 490, type: !1865, isLocal: true, isDefinition: true)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(scope: null, file: !3, line: 466, type: !2080, isLocal: true, isDefinition: true)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !2075, isLocal: true, isDefinition: true)
!2101 = !{i32 7, !"Dwarf Version", i32 5}
!2102 = !{i32 2, !"Debug Info Version", i32 3}
!2103 = !{i32 1, !"wchar_size", i32 2}
!2104 = !{i32 8, !"cf-protection-branch", i32 1}
!2105 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2106 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2107 = !{i32 1, !"Code Model", i32 2}
!2108 = !{i32 1, !"override-stack-alignment", i32 8}
!2109 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2110 = distinct !DISubprogram(name: "pcc_mbox_request_channel", scope: !3, file: !3, line: 357, type: !2111, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2113, !1912, !46}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!2114 = !{!2115, !2116, !2117, !2118, !2119}
!2115 = !DILocalVariable(name: "cl", arg: 1, scope: !2110, file: !3, line: 357, type: !1912)
!2116 = !DILocalVariable(name: "subspace_id", arg: 2, scope: !2110, file: !3, line: 357, type: !46)
!2117 = !DILocalVariable(name: "pchan", scope: !2110, file: !3, line: 359, type: !1278)
!2118 = !DILocalVariable(name: "chan", scope: !2110, file: !3, line: 360, type: !1286)
!2119 = !DILocalVariable(name: "rc", scope: !2110, file: !3, line: 361, type: !46)
!2120 = !DILocation(line: 357, column: 46, scope: !2110)
!2121 = !DILocation(line: 357, column: 54, scope: !2110)
!2122 = !DILocation(line: 359, column: 2, scope: !2110)
!2123 = !DILocation(line: 359, column: 24, scope: !2110)
!2124 = !DILocation(line: 360, column: 2, scope: !2110)
!2125 = !DILocation(line: 360, column: 20, scope: !2110)
!2126 = !DILocation(line: 361, column: 2, scope: !2110)
!2127 = !DILocation(line: 361, column: 6, scope: !2110)
!2128 = !DILocation(line: 363, column: 6, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 363, column: 6)
!2130 = !DILocation(line: 363, column: 18, scope: !2129)
!2131 = !DILocation(line: 363, column: 22, scope: !2129)
!2132 = !DILocation(line: 363, column: 25, scope: !2129)
!2133 = !DILocation(line: 363, column: 40, scope: !2129)
!2134 = !DILocation(line: 363, column: 37, scope: !2129)
!2135 = !DILocation(line: 363, column: 6, scope: !2110)
!2136 = !DILocation(line: 364, column: 10, scope: !2129)
!2137 = !DILocation(line: 364, column: 3, scope: !2129)
!2138 = !DILocation(line: 366, column: 10, scope: !2110)
!2139 = !DILocation(line: 366, column: 22, scope: !2110)
!2140 = !DILocation(line: 366, column: 20, scope: !2110)
!2141 = !DILocation(line: 366, column: 8, scope: !2110)
!2142 = !DILocation(line: 367, column: 9, scope: !2110)
!2143 = !DILocation(line: 367, column: 16, scope: !2110)
!2144 = !DILocation(line: 367, column: 21, scope: !2110)
!2145 = !DILocation(line: 367, column: 7, scope: !2110)
!2146 = !DILocation(line: 368, column: 13, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 368, column: 6)
!2148 = !DILocation(line: 368, column: 6, scope: !2147)
!2149 = !DILocation(line: 368, column: 19, scope: !2147)
!2150 = !DILocation(line: 368, column: 22, scope: !2147)
!2151 = !DILocation(line: 368, column: 28, scope: !2147)
!2152 = !DILocation(line: 368, column: 6, scope: !2110)
!2153 = !DILocation(line: 369, column: 3, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 369, column: 3)
!2155 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 368, column: 32)
!2156 = !DILocation(line: 369, column: 3, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 369, column: 3)
!2158 = !DILocation(line: 370, column: 10, scope: !2155)
!2159 = !DILocation(line: 370, column: 3, scope: !2155)
!2160 = !DILocation(line: 373, column: 24, scope: !2110)
!2161 = !DILocation(line: 373, column: 30, scope: !2110)
!2162 = !DILocation(line: 373, column: 7, scope: !2110)
!2163 = !DILocation(line: 373, column: 5, scope: !2110)
!2164 = !DILocation(line: 374, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 374, column: 6)
!2166 = !DILocation(line: 374, column: 6, scope: !2110)
!2167 = !DILocation(line: 375, column: 18, scope: !2165)
!2168 = !DILocation(line: 375, column: 10, scope: !2165)
!2169 = !DILocation(line: 375, column: 3, scope: !2165)
!2170 = !DILocation(line: 377, column: 10, scope: !2110)
!2171 = !DILocation(line: 377, column: 17, scope: !2110)
!2172 = !DILocation(line: 377, column: 2, scope: !2110)
!2173 = !DILocation(line: 378, column: 1, scope: !2110)
!2174 = distinct !DISubprogram(name: "ERR_PTR", scope: !2175, file: !2175, line: 39, type: !2176, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2178)
!2175 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!106, !249}
!2178 = !{!2179}
!2179 = !DILocalVariable(name: "error", arg: 1, scope: !2174, file: !2175, line: 39, type: !249)
!2180 = !DILocation(line: 39, column: 48, scope: !2174)
!2181 = !DILocation(line: 41, column: 18, scope: !2174)
!2182 = !DILocation(line: 41, column: 9, scope: !2174)
!2183 = !DILocation(line: 41, column: 2, scope: !2174)
!2184 = distinct !DISubprogram(name: "IS_ERR", scope: !2175, file: !2175, line: 59, type: !2185, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!569, !491}
!2187 = !{!2188}
!2188 = !DILocalVariable(name: "ptr", arg: 1, scope: !2184, file: !2175, line: 59, type: !491)
!2189 = !DILocation(line: 59, column: 60, scope: !2184)
!2190 = !DILocation(line: 61, column: 9, scope: !2184)
!2191 = !DILocation(line: 61, column: 2, scope: !2184)
!2192 = !DISubprogram(name: "_printk", scope: !2193, file: !2193, line: 153, type: !2194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2193 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!46, !132, null}
!2196 = !DISubprogram(name: "mbox_bind_client", scope: !1914, file: !1914, line: 40, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!46, !1286, !1912}
!2199 = distinct !DISubprogram(name: "pcc_mbox_free_channel", scope: !3, file: !3, line: 387, type: !2200, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2113}
!2202 = !{!2203, !2204, !2205, !2206}
!2203 = !DILocalVariable(name: "pchan", arg: 1, scope: !2199, file: !3, line: 387, type: !2113)
!2204 = !DILocalVariable(name: "chan", scope: !2199, file: !3, line: 389, type: !1286)
!2205 = !DILocalVariable(name: "pchan_info", scope: !2199, file: !3, line: 390, type: !1278)
!2206 = !DILocalVariable(name: "pcc_mbox_chan", scope: !2199, file: !3, line: 391, type: !2113)
!2207 = !DILocation(line: 387, column: 50, scope: !2199)
!2208 = !DILocation(line: 389, column: 2, scope: !2199)
!2209 = !DILocation(line: 389, column: 20, scope: !2199)
!2210 = !DILocation(line: 389, column: 27, scope: !2199)
!2211 = !DILocation(line: 389, column: 34, scope: !2199)
!2212 = !DILocation(line: 390, column: 2, scope: !2199)
!2213 = !DILocation(line: 390, column: 24, scope: !2199)
!2214 = !DILocation(line: 391, column: 2, scope: !2199)
!2215 = !DILocation(line: 391, column: 24, scope: !2199)
!2216 = !DILocation(line: 393, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 393, column: 6)
!2218 = !DILocation(line: 393, column: 12, scope: !2217)
!2219 = !DILocation(line: 393, column: 16, scope: !2217)
!2220 = !DILocation(line: 393, column: 22, scope: !2217)
!2221 = !DILocation(line: 393, column: 6, scope: !2199)
!2222 = !DILocation(line: 394, column: 3, scope: !2217)
!2223 = !DILocation(line: 395, column: 15, scope: !2199)
!2224 = !DILocation(line: 395, column: 21, scope: !2199)
!2225 = !DILocation(line: 395, column: 13, scope: !2199)
!2226 = !DILocation(line: 396, column: 19, scope: !2199)
!2227 = !DILocation(line: 396, column: 31, scope: !2199)
!2228 = !DILocation(line: 396, column: 16, scope: !2199)
!2229 = !DILocation(line: 397, column: 6, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 397, column: 6)
!2231 = !DILocation(line: 397, column: 21, scope: !2230)
!2232 = !DILocation(line: 397, column: 6, scope: !2199)
!2233 = !DILocation(line: 398, column: 11, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 397, column: 28)
!2235 = !DILocation(line: 398, column: 26, scope: !2234)
!2236 = !DILocation(line: 398, column: 3, scope: !2234)
!2237 = !DILocation(line: 399, column: 3, scope: !2234)
!2238 = !DILocation(line: 399, column: 18, scope: !2234)
!2239 = !DILocation(line: 399, column: 24, scope: !2234)
!2240 = !DILocation(line: 400, column: 2, scope: !2234)
!2241 = !DILocation(line: 402, column: 20, scope: !2199)
!2242 = !DILocation(line: 402, column: 2, scope: !2199)
!2243 = !DILocation(line: 403, column: 1, scope: !2199)
!2244 = !DISubprogram(name: "iounmap", scope: !2245, file: !2245, line: 199, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2245 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2250 = !DISubprogram(name: "mbox_free_channel", scope: !1914, file: !1914, line: 48, type: !1882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2251 = distinct !DISubprogram(name: "pcc_mbox_ioremap", scope: !3, file: !3, line: 406, type: !1878, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "chan", arg: 1, scope: !2251, file: !3, line: 406, type: !1286)
!2254 = !DILocalVariable(name: "pchan_info", scope: !2251, file: !3, line: 408, type: !1278)
!2255 = !DILocalVariable(name: "pcc_mbox_chan", scope: !2251, file: !3, line: 409, type: !2113)
!2256 = !DILocation(line: 406, column: 40, scope: !2251)
!2257 = !DILocation(line: 408, column: 2, scope: !2251)
!2258 = !DILocation(line: 408, column: 24, scope: !2251)
!2259 = !DILocation(line: 409, column: 2, scope: !2251)
!2260 = !DILocation(line: 409, column: 24, scope: !2251)
!2261 = !DILocation(line: 411, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 411, column: 6)
!2263 = !DILocation(line: 411, column: 12, scope: !2262)
!2264 = !DILocation(line: 411, column: 16, scope: !2262)
!2265 = !DILocation(line: 411, column: 22, scope: !2262)
!2266 = !DILocation(line: 411, column: 6, scope: !2251)
!2267 = !DILocation(line: 412, column: 3, scope: !2262)
!2268 = !DILocation(line: 413, column: 15, scope: !2251)
!2269 = !DILocation(line: 413, column: 21, scope: !2251)
!2270 = !DILocation(line: 413, column: 13, scope: !2251)
!2271 = !DILocation(line: 414, column: 19, scope: !2251)
!2272 = !DILocation(line: 414, column: 31, scope: !2251)
!2273 = !DILocation(line: 414, column: 16, scope: !2251)
!2274 = !DILocation(line: 415, column: 33, scope: !2251)
!2275 = !DILocation(line: 415, column: 48, scope: !2251)
!2276 = !DILocation(line: 416, column: 12, scope: !2251)
!2277 = !DILocation(line: 416, column: 27, scope: !2251)
!2278 = !DILocation(line: 415, column: 25, scope: !2251)
!2279 = !DILocation(line: 415, column: 2, scope: !2251)
!2280 = !DILocation(line: 415, column: 17, scope: !2251)
!2281 = !DILocation(line: 415, column: 23, scope: !2251)
!2282 = !DILocation(line: 417, column: 2, scope: !2251)
!2283 = !DILocation(line: 418, column: 1, scope: !2251)
!2284 = !DISubprogram(name: "ioremap", scope: !2245, file: !2245, line: 196, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!106, !2001, !107}
!2287 = distinct !DISubprogram(name: "__initstub__kmod_pcc__209_878_pcc_init2", scope: !3, file: !3, line: 878, type: !913, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2288 = !DILocation(line: 878, column: 1, scope: !2287)
!2289 = distinct !DISubprogram(name: "pcc_init", scope: !3, file: !3, line: 845, type: !913, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2290)
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "ret", scope: !2289, file: !3, line: 847, type: !46)
!2292 = !DILocalVariable(name: "pcc_pdev", scope: !2289, file: !3, line: 848, type: !1986)
!2293 = !DILocation(line: 847, column: 2, scope: !2289)
!2294 = !DILocation(line: 847, column: 6, scope: !2289)
!2295 = !DILocation(line: 848, column: 2, scope: !2289)
!2296 = !DILocation(line: 848, column: 26, scope: !2289)
!2297 = !DILocation(line: 850, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 850, column: 6)
!2299 = !DILocation(line: 850, column: 6, scope: !2289)
!2300 = !DILocation(line: 851, column: 3, scope: !2298)
!2301 = !DILocation(line: 854, column: 8, scope: !2289)
!2302 = !DILocation(line: 854, column: 6, scope: !2289)
!2303 = !DILocation(line: 856, column: 6, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 856, column: 6)
!2305 = !DILocation(line: 856, column: 6, scope: !2289)
!2306 = !DILocation(line: 857, column: 3, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 857, column: 3)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 857, column: 3)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 856, column: 11)
!2310 = !DILocation(line: 857, column: 3, scope: !2308)
!2311 = !DILocation(line: 858, column: 3, scope: !2309)
!2312 = !DILocation(line: 861, column: 13, scope: !2289)
!2313 = !DILocation(line: 861, column: 11, scope: !2289)
!2314 = !DILocation(line: 864, column: 13, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 864, column: 6)
!2316 = !DILocation(line: 864, column: 6, scope: !2315)
!2317 = !DILocation(line: 864, column: 6, scope: !2289)
!2318 = !DILocation(line: 865, column: 3, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 865, column: 3)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 865, column: 3)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 864, column: 24)
!2322 = !DILocation(line: 865, column: 3, scope: !2320)
!2323 = !DILocation(line: 866, column: 18, scope: !2321)
!2324 = !DILocation(line: 867, column: 18, scope: !2321)
!2325 = !DILocation(line: 867, column: 10, scope: !2321)
!2326 = !DILocation(line: 867, column: 3, scope: !2321)
!2327 = !DILocation(line: 870, column: 2, scope: !2289)
!2328 = !DILocation(line: 871, column: 1, scope: !2289)
!2329 = distinct !DISubprogram(name: "acpi_pcc_probe", scope: !3, file: !3, line: 697, type: !913, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2337}
!2331 = !DILocalVariable(name: "count", scope: !2329, file: !3, line: 699, type: !46)
!2332 = !DILocalVariable(name: "i", scope: !2329, file: !3, line: 699, type: !46)
!2333 = !DILocalVariable(name: "rc", scope: !2329, file: !3, line: 699, type: !46)
!2334 = !DILocalVariable(name: "status", scope: !2329, file: !3, line: 700, type: !1186)
!2335 = !DILocalVariable(name: "pcct_tbl", scope: !2329, file: !3, line: 701, type: !2336)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!2337 = !DILocalVariable(name: "proc", scope: !2329, file: !3, line: 702, type: !2338)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2339, size: 1920, elements: !1168)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_proc", file: !2340, line: 210, size: 320, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2341 = !{!2342, !2343, !2370, !2375, !2376}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2339, file: !2340, line: 211, baseType: !46, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2339, file: !2340, line: 212, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler", file: !2340, line: 131, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!46, !2348, !2369}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_subtable_headers", file: !2340, line: 122, size: 64, elements: !2350)
!2350 = !{!2351, !2352, !2358, !2363}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2349, file: !2340, line: 123, baseType: !1161, size: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "hmat", scope: !2349, file: !2340, line: 124, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hmat_structure", file: !1162, line: 1712, size: 64, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2353, file: !1162, line: 1713, baseType: !181, size: 16)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2353, file: !1162, line: 1714, baseType: !181, size: 16, offset: 16)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2353, file: !1162, line: 1715, baseType: !1059, size: 32, offset: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "prmt", scope: !2349, file: !2340, line: 125, baseType: !2359, size: 32)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prmt_module_header", file: !85, line: 2625, size: 32, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2359, file: !85, line: 2626, baseType: !181, size: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2359, file: !85, line: 2627, baseType: !181, size: 16, offset: 16)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cedt", scope: !2349, file: !2340, line: 126, baseType: !2364, size: 32)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_cedt_header", file: !1162, line: 483, size: 32, elements: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2364, file: !1162, line: 484, baseType: !171, size: 8)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2364, file: !1162, line: 485, baseType: !171, size: 8, offset: 8)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2364, file: !1162, line: 486, baseType: !181, size: 16, offset: 16)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !2339, file: !2340, line: 213, baseType: !2371, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler_arg", file: !2340, line: 134, baseType: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!46, !2348, !106, !2369}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2339, file: !2340, line: 214, baseType: !106, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2339, file: !2340, line: 215, baseType: !46, size: 32, offset: 256)
!2377 = !DILocation(line: 699, column: 2, scope: !2329)
!2378 = !DILocation(line: 699, column: 6, scope: !2329)
!2379 = !DILocation(line: 699, column: 13, scope: !2329)
!2380 = !DILocation(line: 699, column: 16, scope: !2329)
!2381 = !DILocation(line: 700, column: 2, scope: !2329)
!2382 = !DILocation(line: 700, column: 14, scope: !2329)
!2383 = !DILocation(line: 701, column: 2, scope: !2329)
!2384 = !DILocation(line: 701, column: 28, scope: !2329)
!2385 = !DILocation(line: 702, column: 2, scope: !2329)
!2386 = !DILocation(line: 702, column: 28, scope: !2329)
!2387 = !DILocation(line: 704, column: 11, scope: !2329)
!2388 = !DILocation(line: 704, column: 9, scope: !2329)
!2389 = !DILocation(line: 705, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 705, column: 6)
!2391 = !DILocation(line: 705, column: 27, scope: !2390)
!2392 = !DILocation(line: 705, column: 31, scope: !2390)
!2393 = !DILocation(line: 705, column: 6, scope: !2329)
!2394 = !DILocation(line: 706, column: 3, scope: !2390)
!2395 = !DILocation(line: 709, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 709, column: 2)
!2397 = !DILocation(line: 709, column: 7, scope: !2396)
!2398 = !DILocation(line: 710, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 709, column: 2)
!2400 = !DILocation(line: 710, column: 9, scope: !2399)
!2401 = !DILocation(line: 709, column: 2, scope: !2396)
!2402 = !DILocation(line: 711, column: 16, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 710, column: 41)
!2404 = !DILocation(line: 711, column: 8, scope: !2403)
!2405 = !DILocation(line: 711, column: 3, scope: !2403)
!2406 = !DILocation(line: 711, column: 11, scope: !2403)
!2407 = !DILocation(line: 711, column: 14, scope: !2403)
!2408 = !DILocation(line: 712, column: 8, scope: !2403)
!2409 = !DILocation(line: 712, column: 3, scope: !2403)
!2410 = !DILocation(line: 712, column: 11, scope: !2403)
!2411 = !DILocation(line: 712, column: 17, scope: !2403)
!2412 = !DILocation(line: 713, column: 8, scope: !2403)
!2413 = !DILocation(line: 713, column: 3, scope: !2403)
!2414 = !DILocation(line: 713, column: 11, scope: !2403)
!2415 = !DILocation(line: 713, column: 19, scope: !2403)
!2416 = !DILocation(line: 714, column: 2, scope: !2403)
!2417 = !DILocation(line: 710, column: 37, scope: !2399)
!2418 = !DILocation(line: 709, column: 2, scope: !2399)
!2419 = distinct !{!2419, !2401, !2420, !2421, !2422}
!2420 = !DILocation(line: 714, column: 2, scope: !2396)
!2421 = !{!"llvm.loop.mustprogress"}
!2422 = !{!"llvm.loop.unroll.disable"}
!2423 = !DILocation(line: 717, column: 36, scope: !2329)
!2424 = !DILocation(line: 716, column: 10, scope: !2329)
!2425 = !DILocation(line: 716, column: 8, scope: !2329)
!2426 = !DILocation(line: 719, column: 6, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 719, column: 6)
!2428 = !DILocation(line: 719, column: 12, scope: !2427)
!2429 = !DILocation(line: 719, column: 17, scope: !2427)
!2430 = !DILocation(line: 719, column: 20, scope: !2427)
!2431 = !DILocation(line: 719, column: 26, scope: !2427)
!2432 = !DILocation(line: 719, column: 6, scope: !2329)
!2433 = !DILocation(line: 720, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 720, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 719, column: 47)
!2436 = !DILocation(line: 720, column: 13, scope: !2434)
!2437 = !DILocation(line: 720, column: 7, scope: !2435)
!2438 = !DILocation(line: 721, column: 4, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 721, column: 4)
!2440 = !DILocation(line: 721, column: 4, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 721, column: 4)
!2442 = !DILocation(line: 721, column: 4, scope: !2434)
!2443 = !DILocation(line: 723, column: 4, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 723, column: 4)
!2445 = !DILocation(line: 723, column: 4, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 723, column: 4)
!2447 = !DILocation(line: 725, column: 6, scope: !2435)
!2448 = !DILocation(line: 726, column: 2, scope: !2435)
!2449 = !DILocation(line: 727, column: 20, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 726, column: 9)
!2451 = !DILocation(line: 727, column: 18, scope: !2450)
!2452 = !DILocation(line: 730, column: 17, scope: !2329)
!2453 = !DILocation(line: 730, column: 2, scope: !2329)
!2454 = !DILocation(line: 732, column: 9, scope: !2329)
!2455 = !DILocation(line: 732, column: 2, scope: !2329)
!2456 = !DILocation(line: 733, column: 1, scope: !2329)
!2457 = !DISubprogram(name: "__platform_create_bundle", scope: !1980, file: !1980, line: 349, type: !2458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!1986, !2460, !1983, !1997, !7, !491, !260, !108}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!2461 = distinct !DISubprogram(name: "pcc_mbox_probe", scope: !3, file: !3, line: 746, type: !1984, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2478}
!2463 = !DILocalVariable(name: "pdev", arg: 1, scope: !2461, file: !3, line: 746, type: !1986)
!2464 = !DILocalVariable(name: "dev", scope: !2461, file: !3, line: 748, type: !1295)
!2465 = !DILocalVariable(name: "pcc_mbox_ctrl", scope: !2461, file: !3, line: 749, type: !1291)
!2466 = !DILocalVariable(name: "pcc_mbox_channels", scope: !2461, file: !3, line: 750, type: !1286)
!2467 = !DILocalVariable(name: "pcct_tbl", scope: !2461, file: !3, line: 751, type: !2336)
!2468 = !DILocalVariable(name: "pcct_entry", scope: !2461, file: !3, line: 752, type: !1189)
!2469 = !DILocalVariable(name: "acpi_pcct_tbl", scope: !2461, file: !3, line: 753, type: !1190)
!2470 = !DILocalVariable(name: "status", scope: !2461, file: !3, line: 754, type: !1186)
!2471 = !DILocalVariable(name: "i", scope: !2461, file: !3, line: 755, type: !46)
!2472 = !DILocalVariable(name: "rc", scope: !2461, file: !3, line: 755, type: !46)
!2473 = !DILocalVariable(name: "count", scope: !2461, file: !3, line: 755, type: !46)
!2474 = !DILocalVariable(name: "pchan", scope: !2475, file: !3, line: 791, type: !1278)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 790, column: 30)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 790, column: 2)
!2477 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 790, column: 2)
!2478 = !DILabel(scope: !2461, name: "err", file: !3, line: 833)
!2479 = !DILocation(line: 746, column: 51, scope: !2461)
!2480 = !DILocation(line: 748, column: 2, scope: !2461)
!2481 = !DILocation(line: 748, column: 17, scope: !2461)
!2482 = !DILocation(line: 748, column: 24, scope: !2461)
!2483 = !DILocation(line: 748, column: 30, scope: !2461)
!2484 = !DILocation(line: 749, column: 2, scope: !2461)
!2485 = !DILocation(line: 749, column: 26, scope: !2461)
!2486 = !DILocation(line: 750, column: 2, scope: !2461)
!2487 = !DILocation(line: 750, column: 20, scope: !2461)
!2488 = !DILocation(line: 751, column: 2, scope: !2461)
!2489 = !DILocation(line: 751, column: 28, scope: !2461)
!2490 = !DILocation(line: 752, column: 2, scope: !2461)
!2491 = !DILocation(line: 752, column: 31, scope: !2461)
!2492 = !DILocation(line: 753, column: 2, scope: !2461)
!2493 = !DILocation(line: 753, column: 26, scope: !2461)
!2494 = !DILocation(line: 754, column: 2, scope: !2461)
!2495 = !DILocation(line: 754, column: 14, scope: !2461)
!2496 = !DILocation(line: 755, column: 2, scope: !2461)
!2497 = !DILocation(line: 755, column: 6, scope: !2461)
!2498 = !DILocation(line: 755, column: 9, scope: !2461)
!2499 = !DILocation(line: 755, column: 13, scope: !2461)
!2500 = !DILocation(line: 755, column: 21, scope: !2461)
!2501 = !DILocation(line: 758, column: 11, scope: !2461)
!2502 = !DILocation(line: 758, column: 9, scope: !2461)
!2503 = !DILocation(line: 760, column: 6, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 760, column: 6)
!2505 = !DILocation(line: 760, column: 27, scope: !2504)
!2506 = !DILocation(line: 760, column: 31, scope: !2504)
!2507 = !DILocation(line: 760, column: 6, scope: !2461)
!2508 = !DILocation(line: 761, column: 3, scope: !2504)
!2509 = !DILocation(line: 763, column: 35, scope: !2461)
!2510 = !DILocation(line: 763, column: 40, scope: !2461)
!2511 = !DILocation(line: 763, column: 22, scope: !2461)
!2512 = !DILocation(line: 763, column: 20, scope: !2461)
!2513 = !DILocation(line: 765, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 765, column: 6)
!2515 = !DILocation(line: 765, column: 6, scope: !2461)
!2516 = !DILocation(line: 766, column: 6, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 765, column: 26)
!2518 = !DILocation(line: 767, column: 3, scope: !2517)
!2519 = !DILocation(line: 770, column: 27, scope: !2461)
!2520 = !DILocation(line: 770, column: 32, scope: !2461)
!2521 = !DILocation(line: 770, column: 14, scope: !2461)
!2522 = !DILocation(line: 770, column: 12, scope: !2461)
!2523 = !DILocation(line: 771, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 771, column: 6)
!2525 = !DILocation(line: 771, column: 6, scope: !2461)
!2526 = !DILocation(line: 772, column: 6, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 771, column: 18)
!2528 = !DILocation(line: 773, column: 3, scope: !2527)
!2529 = !DILocation(line: 776, column: 31, scope: !2461)
!2530 = !DILocation(line: 776, column: 18, scope: !2461)
!2531 = !DILocation(line: 776, column: 16, scope: !2461)
!2532 = !DILocation(line: 777, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 777, column: 6)
!2534 = !DILocation(line: 777, column: 6, scope: !2461)
!2535 = !DILocation(line: 778, column: 6, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 777, column: 22)
!2537 = !DILocation(line: 779, column: 3, scope: !2536)
!2538 = !DILocation(line: 784, column: 19, scope: !2461)
!2539 = !DILocation(line: 784, column: 3, scope: !2461)
!2540 = !DILocation(line: 784, column: 28, scope: !2461)
!2541 = !DILocation(line: 783, column: 15, scope: !2461)
!2542 = !DILocation(line: 783, column: 13, scope: !2461)
!2543 = !DILocation(line: 786, column: 45, scope: !2461)
!2544 = !DILocation(line: 786, column: 16, scope: !2461)
!2545 = !DILocation(line: 787, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 787, column: 6)
!2547 = !DILocation(line: 787, column: 21, scope: !2546)
!2548 = !DILocation(line: 787, column: 27, scope: !2546)
!2549 = !DILocation(line: 787, column: 6, scope: !2461)
!2550 = !DILocation(line: 788, column: 3, scope: !2546)
!2551 = !DILocation(line: 788, column: 18, scope: !2546)
!2552 = !DILocation(line: 788, column: 29, scope: !2546)
!2553 = !DILocation(line: 790, column: 9, scope: !2477)
!2554 = !DILocation(line: 790, column: 7, scope: !2477)
!2555 = !DILocation(line: 790, column: 14, scope: !2476)
!2556 = !DILocation(line: 790, column: 18, scope: !2476)
!2557 = !DILocation(line: 790, column: 16, scope: !2476)
!2558 = !DILocation(line: 790, column: 2, scope: !2477)
!2559 = !DILocation(line: 791, column: 3, scope: !2475)
!2560 = !DILocation(line: 791, column: 25, scope: !2475)
!2561 = !DILocation(line: 791, column: 33, scope: !2475)
!2562 = !DILocation(line: 791, column: 45, scope: !2475)
!2563 = !DILocation(line: 791, column: 43, scope: !2475)
!2564 = !DILocation(line: 793, column: 35, scope: !2475)
!2565 = !DILocation(line: 793, column: 3, scope: !2475)
!2566 = !DILocation(line: 793, column: 21, scope: !2475)
!2567 = !DILocation(line: 793, column: 24, scope: !2475)
!2568 = !DILocation(line: 793, column: 33, scope: !2475)
!2569 = !DILocation(line: 794, column: 24, scope: !2475)
!2570 = !DILocation(line: 794, column: 42, scope: !2475)
!2571 = !DILocation(line: 794, column: 3, scope: !2475)
!2572 = !DILocation(line: 794, column: 10, scope: !2475)
!2573 = !DILocation(line: 794, column: 15, scope: !2475)
!2574 = !DILocation(line: 794, column: 21, scope: !2475)
!2575 = !DILocation(line: 796, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 796, column: 7)
!2577 = !DILocation(line: 796, column: 19, scope: !2576)
!2578 = !DILocation(line: 796, column: 24, scope: !2576)
!2579 = !DILocation(line: 796, column: 65, scope: !2576)
!2580 = !DILocation(line: 797, column: 8, scope: !2576)
!2581 = !DILocation(line: 797, column: 23, scope: !2576)
!2582 = !{i8 0, i8 2}
!2583 = !DILocation(line: 796, column: 7, scope: !2475)
!2584 = !DILocation(line: 798, column: 4, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 798, column: 4)
!2586 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 797, column: 35)
!2587 = !DILocation(line: 798, column: 4, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 798, column: 4)
!2589 = !DILocation(line: 799, column: 7, scope: !2586)
!2590 = !DILocation(line: 800, column: 4, scope: !2586)
!2591 = !DILocation(line: 803, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 803, column: 7)
!2593 = !DILocation(line: 803, column: 22, scope: !2592)
!2594 = !DILocation(line: 803, column: 7, scope: !2475)
!2595 = !DILocation(line: 804, column: 32, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 803, column: 34)
!2597 = !DILocation(line: 804, column: 39, scope: !2596)
!2598 = !DILocation(line: 804, column: 9, scope: !2596)
!2599 = !DILocation(line: 804, column: 7, scope: !2596)
!2600 = !DILocation(line: 805, column: 8, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 805, column: 8)
!2602 = !DILocation(line: 805, column: 11, scope: !2601)
!2603 = !DILocation(line: 805, column: 8, scope: !2596)
!2604 = !DILocation(line: 806, column: 5, scope: !2601)
!2605 = !DILocation(line: 807, column: 3, scope: !2596)
!2606 = !DILocation(line: 808, column: 34, scope: !2475)
!2607 = !DILocation(line: 808, column: 41, scope: !2475)
!2608 = !DILocation(line: 808, column: 8, scope: !2475)
!2609 = !DILocation(line: 808, column: 6, scope: !2475)
!2610 = !DILocation(line: 809, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 809, column: 7)
!2612 = !DILocation(line: 809, column: 10, scope: !2611)
!2613 = !DILocation(line: 809, column: 7, scope: !2475)
!2614 = !DILocation(line: 810, column: 4, scope: !2611)
!2615 = !DILocation(line: 812, column: 28, scope: !2475)
!2616 = !DILocation(line: 812, column: 35, scope: !2475)
!2617 = !DILocation(line: 812, column: 3, scope: !2475)
!2618 = !DILocation(line: 814, column: 17, scope: !2475)
!2619 = !DILocation(line: 814, column: 29, scope: !2475)
!2620 = !DILocation(line: 814, column: 3, scope: !2475)
!2621 = !DILocation(line: 814, column: 10, scope: !2475)
!2622 = !DILocation(line: 814, column: 15, scope: !2475)
!2623 = !DILocation(line: 816, column: 21, scope: !2475)
!2624 = !DILocation(line: 816, column: 5, scope: !2475)
!2625 = !DILocation(line: 816, column: 34, scope: !2475)
!2626 = !DILocation(line: 816, column: 46, scope: !2475)
!2627 = !DILocation(line: 816, column: 32, scope: !2475)
!2628 = !DILocation(line: 815, column: 16, scope: !2475)
!2629 = !DILocation(line: 815, column: 14, scope: !2475)
!2630 = !DILocation(line: 817, column: 2, scope: !2476)
!2631 = !DILocation(line: 817, column: 2, scope: !2475)
!2632 = !DILocation(line: 790, column: 26, scope: !2476)
!2633 = !DILocation(line: 790, column: 2, scope: !2476)
!2634 = distinct !{!2634, !2558, !2635, !2421, !2422}
!2635 = !DILocation(line: 817, column: 2, scope: !2477)
!2636 = !DILocation(line: 819, column: 29, scope: !2461)
!2637 = !DILocation(line: 819, column: 2, scope: !2461)
!2638 = !DILocation(line: 819, column: 17, scope: !2461)
!2639 = !DILocation(line: 819, column: 27, scope: !2461)
!2640 = !DILocation(line: 821, column: 2, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 821, column: 2)
!2642 = !DILocation(line: 821, column: 2, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 821, column: 2)
!2644 = !DILocation(line: 823, column: 25, scope: !2461)
!2645 = !DILocation(line: 823, column: 2, scope: !2461)
!2646 = !DILocation(line: 823, column: 17, scope: !2461)
!2647 = !DILocation(line: 823, column: 23, scope: !2461)
!2648 = !DILocation(line: 824, column: 2, scope: !2461)
!2649 = !DILocation(line: 824, column: 17, scope: !2461)
!2650 = !DILocation(line: 824, column: 21, scope: !2461)
!2651 = !DILocation(line: 825, column: 23, scope: !2461)
!2652 = !DILocation(line: 825, column: 2, scope: !2461)
!2653 = !DILocation(line: 825, column: 17, scope: !2461)
!2654 = !DILocation(line: 825, column: 21, scope: !2461)
!2655 = !DILocation(line: 827, column: 2, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 827, column: 2)
!2657 = !DILocation(line: 827, column: 2, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 827, column: 2)
!2659 = !DILocation(line: 828, column: 32, scope: !2461)
!2660 = !DILocation(line: 828, column: 7, scope: !2461)
!2661 = !DILocation(line: 828, column: 5, scope: !2461)
!2662 = !DILocation(line: 829, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 829, column: 6)
!2664 = !DILocation(line: 829, column: 6, scope: !2461)
!2665 = !DILocation(line: 830, column: 3, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 830, column: 3)
!2667 = !DILocation(line: 830, column: 3, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 830, column: 3)
!2669 = !DILocation(line: 830, column: 3, scope: !2663)
!2670 = !DILocation(line: 832, column: 3, scope: !2663)
!2671 = !DILocation(line: 833, column: 1, scope: !2461)
!2672 = !DILocation(line: 834, column: 17, scope: !2461)
!2673 = !DILocation(line: 834, column: 2, scope: !2461)
!2674 = !DILocation(line: 835, column: 9, scope: !2461)
!2675 = !DILocation(line: 835, column: 2, scope: !2461)
!2676 = !DILocation(line: 836, column: 1, scope: !2461)
!2677 = distinct !DISubprogram(name: "PTR_ERR", scope: !2175, file: !2175, line: 49, type: !2678, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!249, !491}
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "ptr", arg: 1, scope: !2677, file: !2175, line: 49, type: !491)
!2682 = !DILocation(line: 49, column: 61, scope: !2677)
!2683 = !DILocation(line: 51, column: 16, scope: !2677)
!2684 = !DILocation(line: 51, column: 9, scope: !2677)
!2685 = !DILocation(line: 51, column: 2, scope: !2677)
!2686 = !DISubprogram(name: "acpi_get_table", scope: !2687, file: !2687, line: 489, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2687 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!1186, !2690, !1059, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1187, line: 423, baseType: !213)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2692 = distinct !DISubprogram(name: "parse_pcc_subspace", scope: !3, file: !3, line: 506, type: !2346, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "header", arg: 1, scope: !2692, file: !3, line: 506, type: !2348)
!2695 = !DILocalVariable(name: "end", arg: 2, scope: !2692, file: !3, line: 507, type: !2369)
!2696 = !DILocalVariable(name: "ss", scope: !2692, file: !3, line: 509, type: !1157)
!2697 = !DILocation(line: 506, column: 60, scope: !2692)
!2698 = !DILocation(line: 507, column: 23, scope: !2692)
!2699 = !DILocation(line: 509, column: 2, scope: !2692)
!2700 = !DILocation(line: 509, column: 29, scope: !2692)
!2701 = !DILocation(line: 509, column: 64, scope: !2692)
!2702 = !DILocation(line: 511, column: 6, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 511, column: 6)
!2704 = !DILocation(line: 511, column: 10, scope: !2703)
!2705 = !DILocation(line: 511, column: 17, scope: !2703)
!2706 = !DILocation(line: 511, column: 22, scope: !2703)
!2707 = !DILocation(line: 511, column: 6, scope: !2692)
!2708 = !DILocation(line: 512, column: 3, scope: !2703)
!2709 = !DILocation(line: 514, column: 2, scope: !2692)
!2710 = !DILocation(line: 515, column: 1, scope: !2692)
!2711 = !DISubprogram(name: "acpi_table_parse_entries_array", scope: !2340, file: !2340, line: 246, type: !2712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!46, !213, !107, !2714, !46, !7}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2715 = !DISubprogram(name: "acpi_put_table", scope: !2687, file: !2687, line: 493, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2336}
!2718 = distinct !DISubprogram(name: "devm_kcalloc", scope: !26, file: !26, line: 326, type: !2719, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!106, !1295, !260, !260, !1188}
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "dev", arg: 1, scope: !2718, file: !26, line: 326, type: !1295)
!2723 = !DILocalVariable(name: "n", arg: 2, scope: !2718, file: !26, line: 327, type: !260)
!2724 = !DILocalVariable(name: "size", arg: 3, scope: !2718, file: !26, line: 327, type: !260)
!2725 = !DILocalVariable(name: "flags", arg: 4, scope: !2718, file: !26, line: 327, type: !1188)
!2726 = !DILocation(line: 326, column: 49, scope: !2718)
!2727 = !DILocation(line: 327, column: 13, scope: !2718)
!2728 = !DILocation(line: 327, column: 23, scope: !2718)
!2729 = !DILocation(line: 327, column: 35, scope: !2718)
!2730 = !DILocation(line: 329, column: 28, scope: !2718)
!2731 = !DILocation(line: 329, column: 33, scope: !2718)
!2732 = !DILocation(line: 329, column: 36, scope: !2718)
!2733 = !DILocation(line: 329, column: 42, scope: !2718)
!2734 = !DILocation(line: 329, column: 48, scope: !2718)
!2735 = !DILocation(line: 329, column: 9, scope: !2718)
!2736 = !DILocation(line: 329, column: 2, scope: !2718)
!2737 = distinct !DISubprogram(name: "devm_kzalloc", scope: !26, file: !26, line: 312, type: !2738, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!106, !1295, !260, !1188}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "dev", arg: 1, scope: !2737, file: !26, line: 312, type: !1295)
!2742 = !DILocalVariable(name: "size", arg: 2, scope: !2737, file: !26, line: 312, type: !260)
!2743 = !DILocalVariable(name: "gfp", arg: 3, scope: !2737, file: !26, line: 312, type: !1188)
!2744 = !DILocation(line: 312, column: 49, scope: !2737)
!2745 = !DILocation(line: 312, column: 61, scope: !2737)
!2746 = !DILocation(line: 312, column: 73, scope: !2737)
!2747 = !DILocation(line: 314, column: 22, scope: !2737)
!2748 = !DILocation(line: 314, column: 27, scope: !2737)
!2749 = !DILocation(line: 314, column: 33, scope: !2737)
!2750 = !DILocation(line: 314, column: 37, scope: !2737)
!2751 = !DILocation(line: 314, column: 9, scope: !2737)
!2752 = !DILocation(line: 314, column: 2, scope: !2737)
!2753 = distinct !DISubprogram(name: "pcc_parse_subspace_irq", scope: !3, file: !3, line: 554, type: !2754, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!46, !1278, !1189}
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2782}
!2757 = !DILocalVariable(name: "pchan", arg: 1, scope: !2753, file: !3, line: 554, type: !1278)
!2758 = !DILocalVariable(name: "pcct_entry", arg: 2, scope: !2753, file: !3, line: 555, type: !1189)
!2759 = !DILocalVariable(name: "ret", scope: !2753, file: !3, line: 557, type: !46)
!2760 = !DILocalVariable(name: "pcct_ss", scope: !2753, file: !3, line: 558, type: !1212)
!2761 = !DILocalVariable(name: "pcct2_ss", scope: !2762, file: !3, line: 575, type: !2764)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 574, column: 72)
!2763 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 574, column: 6)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcct_hw_reduced_type2", file: !85, line: 2203, size: 720, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2765, file: !85, line: 2204, baseType: !1161, size: 16)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "platform_interrupt", scope: !2765, file: !85, line: 2205, baseType: !1059, size: 32, offset: 16)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2765, file: !85, line: 2206, baseType: !171, size: 8, offset: 48)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2765, file: !85, line: 2207, baseType: !171, size: 8, offset: 56)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !2765, file: !85, line: 2208, baseType: !376, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2765, file: !85, line: 2209, baseType: !376, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell_register", scope: !2765, file: !85, line: 2210, baseType: !1173, size: 96, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_mask", scope: !2765, file: !85, line: 2211, baseType: !376, size: 64, offset: 288)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "write_mask", scope: !2765, file: !85, line: 2212, baseType: !376, size: 64, offset: 352)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2765, file: !85, line: 2213, baseType: !1059, size: 32, offset: 416)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "max_access_rate", scope: !2765, file: !85, line: 2214, baseType: !1059, size: 32, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "min_turnaround_time", scope: !2765, file: !85, line: 2215, baseType: !181, size: 16, offset: 480)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "platform_ack_register", scope: !2765, file: !85, line: 2216, baseType: !1173, size: 96, offset: 496)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ack_preserve_mask", scope: !2765, file: !85, line: 2217, baseType: !376, size: 64, offset: 592)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ack_write_mask", scope: !2765, file: !85, line: 2218, baseType: !376, size: 64, offset: 656)
!2782 = !DILocalVariable(name: "pcct_ext", scope: !2783, file: !3, line: 585, type: !1228)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 584, column: 69)
!2784 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 583, column: 13)
!2785 = !DILocation(line: 554, column: 57, scope: !2753)
!2786 = !DILocation(line: 555, column: 36, scope: !2753)
!2787 = !DILocation(line: 557, column: 2, scope: !2753)
!2788 = !DILocation(line: 557, column: 6, scope: !2753)
!2789 = !DILocation(line: 558, column: 2, scope: !2753)
!2790 = !DILocation(line: 558, column: 31, scope: !2753)
!2791 = !DILocation(line: 560, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 560, column: 6)
!2793 = !DILocation(line: 560, column: 18, scope: !2792)
!2794 = !DILocation(line: 560, column: 23, scope: !2792)
!2795 = !DILocation(line: 560, column: 60, scope: !2792)
!2796 = !DILocation(line: 561, column: 6, scope: !2792)
!2797 = !DILocation(line: 561, column: 18, scope: !2792)
!2798 = !DILocation(line: 561, column: 23, scope: !2792)
!2799 = !DILocation(line: 560, column: 6, scope: !2753)
!2800 = !DILocation(line: 562, column: 3, scope: !2792)
!2801 = !DILocation(line: 564, column: 43, scope: !2753)
!2802 = !DILocation(line: 564, column: 10, scope: !2753)
!2803 = !DILocation(line: 565, column: 38, scope: !2753)
!2804 = !DILocation(line: 565, column: 47, scope: !2753)
!2805 = !DILocation(line: 566, column: 15, scope: !2753)
!2806 = !DILocation(line: 566, column: 24, scope: !2753)
!2807 = !DILocation(line: 566, column: 10, scope: !2753)
!2808 = !DILocation(line: 565, column: 20, scope: !2753)
!2809 = !DILocation(line: 565, column: 2, scope: !2753)
!2810 = !DILocation(line: 565, column: 9, scope: !2753)
!2811 = !DILocation(line: 565, column: 18, scope: !2753)
!2812 = !DILocation(line: 567, column: 6, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 567, column: 6)
!2814 = !DILocation(line: 567, column: 13, scope: !2813)
!2815 = !DILocation(line: 567, column: 22, scope: !2813)
!2816 = !DILocation(line: 567, column: 6, scope: !2753)
!2817 = !DILocation(line: 568, column: 3, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 568, column: 3)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 567, column: 28)
!2820 = !DILocation(line: 568, column: 3, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 568, column: 3)
!2822 = !DILocation(line: 570, column: 3, scope: !2819)
!2823 = !DILocation(line: 572, column: 26, scope: !2753)
!2824 = !DILocation(line: 572, column: 35, scope: !2753)
!2825 = !DILocation(line: 572, column: 2, scope: !2753)
!2826 = !DILocation(line: 572, column: 9, scope: !2753)
!2827 = !DILocation(line: 572, column: 24, scope: !2753)
!2828 = !DILocation(line: 574, column: 6, scope: !2763)
!2829 = !DILocation(line: 574, column: 15, scope: !2763)
!2830 = !DILocation(line: 574, column: 22, scope: !2763)
!2831 = !DILocation(line: 574, column: 27, scope: !2763)
!2832 = !DILocation(line: 574, column: 6, scope: !2753)
!2833 = !DILocation(line: 575, column: 3, scope: !2762)
!2834 = !DILocation(line: 575, column: 38, scope: !2762)
!2835 = !DILocation(line: 575, column: 57, scope: !2762)
!2836 = !DILocation(line: 577, column: 28, scope: !2762)
!2837 = !DILocation(line: 577, column: 35, scope: !2762)
!2838 = !DILocation(line: 578, column: 7, scope: !2762)
!2839 = !DILocation(line: 578, column: 17, scope: !2762)
!2840 = !DILocation(line: 579, column: 6, scope: !2762)
!2841 = !DILocation(line: 579, column: 16, scope: !2762)
!2842 = !DILocation(line: 580, column: 6, scope: !2762)
!2843 = !DILocation(line: 580, column: 16, scope: !2762)
!2844 = !DILocation(line: 577, column: 9, scope: !2762)
!2845 = !DILocation(line: 577, column: 7, scope: !2762)
!2846 = !DILocation(line: 583, column: 2, scope: !2763)
!2847 = !DILocation(line: 583, column: 2, scope: !2762)
!2848 = !DILocation(line: 583, column: 13, scope: !2784)
!2849 = !DILocation(line: 583, column: 22, scope: !2784)
!2850 = !DILocation(line: 583, column: 29, scope: !2784)
!2851 = !DILocation(line: 583, column: 34, scope: !2784)
!2852 = !DILocation(line: 583, column: 76, scope: !2784)
!2853 = !DILocation(line: 584, column: 6, scope: !2784)
!2854 = !DILocation(line: 584, column: 15, scope: !2784)
!2855 = !DILocation(line: 584, column: 22, scope: !2784)
!2856 = !DILocation(line: 584, column: 27, scope: !2784)
!2857 = !DILocation(line: 583, column: 13, scope: !2763)
!2858 = !DILocation(line: 585, column: 3, scope: !2783)
!2859 = !DILocation(line: 585, column: 36, scope: !2783)
!2860 = !DILocation(line: 585, column: 55, scope: !2783)
!2861 = !DILocation(line: 587, column: 28, scope: !2783)
!2862 = !DILocation(line: 587, column: 35, scope: !2783)
!2863 = !DILocation(line: 588, column: 7, scope: !2783)
!2864 = !DILocation(line: 588, column: 17, scope: !2783)
!2865 = !DILocation(line: 589, column: 6, scope: !2783)
!2866 = !DILocation(line: 589, column: 16, scope: !2783)
!2867 = !DILocation(line: 590, column: 6, scope: !2783)
!2868 = !DILocation(line: 590, column: 16, scope: !2783)
!2869 = !DILocation(line: 587, column: 9, scope: !2783)
!2870 = !DILocation(line: 587, column: 7, scope: !2783)
!2871 = !DILocation(line: 592, column: 2, scope: !2784)
!2872 = !DILocation(line: 592, column: 2, scope: !2783)
!2873 = !DILocation(line: 594, column: 38, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 594, column: 6)
!2875 = !DILocation(line: 594, column: 6, scope: !2874)
!2876 = !DILocation(line: 594, column: 45, scope: !2874)
!2877 = !DILocation(line: 595, column: 7, scope: !2874)
!2878 = !DILocation(line: 595, column: 14, scope: !2874)
!2879 = !DILocation(line: 595, column: 27, scope: !2874)
!2880 = !DILocation(line: 594, column: 6, scope: !2753)
!2881 = !DILocation(line: 596, column: 3, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 596, column: 3)
!2883 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 595, column: 32)
!2884 = !DILocation(line: 596, column: 3, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 596, column: 3)
!2886 = !DILocation(line: 597, column: 3, scope: !2883)
!2887 = !DILocation(line: 600, column: 9, scope: !2753)
!2888 = !DILocation(line: 600, column: 2, scope: !2753)
!2889 = !DILocation(line: 601, column: 1, scope: !2753)
!2890 = distinct !DISubprogram(name: "pcc_parse_subspace_db_reg", scope: !3, file: !3, line: 611, type: !2754, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2891)
!2891 = !{!2892, !2893, !2894, !2895, !2898}
!2892 = !DILocalVariable(name: "pchan", arg: 1, scope: !2890, file: !3, line: 611, type: !1278)
!2893 = !DILocalVariable(name: "pcct_entry", arg: 2, scope: !2890, file: !3, line: 612, type: !1189)
!2894 = !DILocalVariable(name: "ret", scope: !2890, file: !3, line: 614, type: !46)
!2895 = !DILocalVariable(name: "pcct_ss", scope: !2896, file: !3, line: 617, type: !1157)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 616, column: 68)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 616, column: 6)
!2898 = !DILocalVariable(name: "pcct_ext", scope: !2899, file: !3, line: 627, type: !1228)
!2899 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 626, column: 9)
!2900 = !DILocation(line: 611, column: 60, scope: !2890)
!2901 = !DILocation(line: 612, column: 39, scope: !2890)
!2902 = !DILocation(line: 614, column: 2, scope: !2890)
!2903 = !DILocation(line: 614, column: 6, scope: !2890)
!2904 = !DILocation(line: 616, column: 6, scope: !2897)
!2905 = !DILocation(line: 616, column: 18, scope: !2897)
!2906 = !DILocation(line: 616, column: 23, scope: !2897)
!2907 = !DILocation(line: 616, column: 6, scope: !2890)
!2908 = !DILocation(line: 617, column: 3, scope: !2896)
!2909 = !DILocation(line: 617, column: 30, scope: !2896)
!2910 = !DILocation(line: 619, column: 42, scope: !2896)
!2911 = !DILocation(line: 619, column: 11, scope: !2896)
!2912 = !DILocation(line: 621, column: 28, scope: !2896)
!2913 = !DILocation(line: 621, column: 35, scope: !2896)
!2914 = !DILocation(line: 622, column: 7, scope: !2896)
!2915 = !DILocation(line: 622, column: 16, scope: !2896)
!2916 = !DILocation(line: 623, column: 6, scope: !2896)
!2917 = !DILocation(line: 623, column: 15, scope: !2896)
!2918 = !DILocation(line: 624, column: 6, scope: !2896)
!2919 = !DILocation(line: 624, column: 15, scope: !2896)
!2920 = !DILocation(line: 621, column: 9, scope: !2896)
!2921 = !DILocation(line: 621, column: 7, scope: !2896)
!2922 = !DILocation(line: 626, column: 2, scope: !2897)
!2923 = !DILocation(line: 626, column: 2, scope: !2896)
!2924 = !DILocation(line: 627, column: 3, scope: !2899)
!2925 = !DILocation(line: 627, column: 36, scope: !2899)
!2926 = !DILocation(line: 629, column: 49, scope: !2899)
!2927 = !DILocation(line: 629, column: 12, scope: !2899)
!2928 = !DILocation(line: 631, column: 28, scope: !2899)
!2929 = !DILocation(line: 631, column: 35, scope: !2899)
!2930 = !DILocation(line: 632, column: 7, scope: !2899)
!2931 = !DILocation(line: 632, column: 17, scope: !2899)
!2932 = !DILocation(line: 633, column: 6, scope: !2899)
!2933 = !DILocation(line: 633, column: 16, scope: !2899)
!2934 = !DILocation(line: 634, column: 6, scope: !2899)
!2935 = !DILocation(line: 634, column: 16, scope: !2899)
!2936 = !DILocation(line: 631, column: 9, scope: !2899)
!2937 = !DILocation(line: 631, column: 7, scope: !2899)
!2938 = !DILocation(line: 635, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 635, column: 7)
!2940 = !DILocation(line: 635, column: 7, scope: !2899)
!2941 = !DILocation(line: 636, column: 11, scope: !2939)
!2942 = !DILocation(line: 636, column: 4, scope: !2939)
!2943 = !DILocation(line: 638, column: 28, scope: !2899)
!2944 = !DILocation(line: 638, column: 35, scope: !2899)
!2945 = !DILocation(line: 639, column: 7, scope: !2899)
!2946 = !DILocation(line: 639, column: 17, scope: !2899)
!2947 = !DILocation(line: 640, column: 12, scope: !2899)
!2948 = !DILocation(line: 640, column: 22, scope: !2899)
!2949 = !DILocation(line: 638, column: 9, scope: !2899)
!2950 = !DILocation(line: 638, column: 7, scope: !2899)
!2951 = !DILocation(line: 642, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 642, column: 7)
!2953 = !DILocation(line: 642, column: 7, scope: !2899)
!2954 = !DILocation(line: 643, column: 11, scope: !2952)
!2955 = !DILocation(line: 643, column: 4, scope: !2952)
!2956 = !DILocation(line: 645, column: 28, scope: !2899)
!2957 = !DILocation(line: 645, column: 35, scope: !2899)
!2958 = !DILocation(line: 646, column: 7, scope: !2899)
!2959 = !DILocation(line: 646, column: 17, scope: !2899)
!2960 = !DILocation(line: 647, column: 6, scope: !2899)
!2961 = !DILocation(line: 647, column: 16, scope: !2899)
!2962 = !DILocation(line: 648, column: 6, scope: !2899)
!2963 = !DILocation(line: 648, column: 16, scope: !2899)
!2964 = !DILocation(line: 645, column: 9, scope: !2899)
!2965 = !DILocation(line: 645, column: 7, scope: !2899)
!2966 = !DILocation(line: 650, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 650, column: 7)
!2968 = !DILocation(line: 650, column: 7, scope: !2899)
!2969 = !DILocation(line: 651, column: 11, scope: !2967)
!2970 = !DILocation(line: 651, column: 4, scope: !2967)
!2971 = !DILocation(line: 653, column: 28, scope: !2899)
!2972 = !DILocation(line: 653, column: 35, scope: !2899)
!2973 = !DILocation(line: 654, column: 7, scope: !2899)
!2974 = !DILocation(line: 654, column: 17, scope: !2899)
!2975 = !DILocation(line: 655, column: 12, scope: !2899)
!2976 = !DILocation(line: 655, column: 22, scope: !2899)
!2977 = !DILocation(line: 653, column: 9, scope: !2899)
!2978 = !DILocation(line: 653, column: 7, scope: !2899)
!2979 = !DILocation(line: 657, column: 2, scope: !2897)
!2980 = !DILocation(line: 658, column: 9, scope: !2890)
!2981 = !DILocation(line: 658, column: 2, scope: !2890)
!2982 = !DILocation(line: 659, column: 1, scope: !2890)
!2983 = distinct !DISubprogram(name: "pcc_parse_subspace_shmem", scope: !3, file: !3, line: 668, type: !2984, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !1278, !1189}
!2986 = !{!2987, !2988, !2989, !2992}
!2987 = !DILocalVariable(name: "pchan", arg: 1, scope: !2983, file: !3, line: 668, type: !1278)
!2988 = !DILocalVariable(name: "pcct_entry", arg: 2, scope: !2983, file: !3, line: 669, type: !1189)
!2989 = !DILocalVariable(name: "pcct_ss", scope: !2990, file: !3, line: 672, type: !1157)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 671, column: 68)
!2991 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 671, column: 6)
!2992 = !DILocalVariable(name: "pcct_ext", scope: !2993, file: !3, line: 681, type: !1228)
!2993 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 680, column: 9)
!2994 = !DILocation(line: 668, column: 60, scope: !2983)
!2995 = !DILocation(line: 669, column: 39, scope: !2983)
!2996 = !DILocation(line: 671, column: 6, scope: !2991)
!2997 = !DILocation(line: 671, column: 18, scope: !2991)
!2998 = !DILocation(line: 671, column: 23, scope: !2991)
!2999 = !DILocation(line: 671, column: 6, scope: !2983)
!3000 = !DILocation(line: 672, column: 3, scope: !2990)
!3001 = !DILocation(line: 672, column: 30, scope: !2990)
!3002 = !DILocation(line: 673, column: 33, scope: !2990)
!3003 = !DILocation(line: 675, column: 33, scope: !2990)
!3004 = !DILocation(line: 675, column: 42, scope: !2990)
!3005 = !DILocation(line: 675, column: 3, scope: !2990)
!3006 = !DILocation(line: 675, column: 10, scope: !2990)
!3007 = !DILocation(line: 675, column: 15, scope: !2990)
!3008 = !DILocation(line: 675, column: 31, scope: !2990)
!3009 = !DILocation(line: 676, column: 28, scope: !2990)
!3010 = !DILocation(line: 676, column: 37, scope: !2990)
!3011 = !DILocation(line: 676, column: 3, scope: !2990)
!3012 = !DILocation(line: 676, column: 10, scope: !2990)
!3013 = !DILocation(line: 676, column: 15, scope: !2990)
!3014 = !DILocation(line: 676, column: 26, scope: !2990)
!3015 = !DILocation(line: 677, column: 25, scope: !2990)
!3016 = !DILocation(line: 677, column: 34, scope: !2990)
!3017 = !DILocation(line: 677, column: 3, scope: !2990)
!3018 = !DILocation(line: 677, column: 10, scope: !2990)
!3019 = !DILocation(line: 677, column: 15, scope: !2990)
!3020 = !DILocation(line: 677, column: 23, scope: !2990)
!3021 = !DILocation(line: 678, column: 33, scope: !2990)
!3022 = !DILocation(line: 678, column: 42, scope: !2990)
!3023 = !DILocation(line: 678, column: 3, scope: !2990)
!3024 = !DILocation(line: 678, column: 10, scope: !2990)
!3025 = !DILocation(line: 678, column: 15, scope: !2990)
!3026 = !DILocation(line: 678, column: 31, scope: !2990)
!3027 = !DILocation(line: 679, column: 37, scope: !2990)
!3028 = !DILocation(line: 679, column: 46, scope: !2990)
!3029 = !DILocation(line: 679, column: 3, scope: !2990)
!3030 = !DILocation(line: 679, column: 10, scope: !2990)
!3031 = !DILocation(line: 679, column: 15, scope: !2990)
!3032 = !DILocation(line: 679, column: 35, scope: !2990)
!3033 = !DILocation(line: 680, column: 2, scope: !2991)
!3034 = !DILocation(line: 680, column: 2, scope: !2990)
!3035 = !DILocation(line: 681, column: 3, scope: !2993)
!3036 = !DILocation(line: 681, column: 36, scope: !2993)
!3037 = !DILocation(line: 682, column: 39, scope: !2993)
!3038 = !DILocation(line: 684, column: 33, scope: !2993)
!3039 = !DILocation(line: 684, column: 43, scope: !2993)
!3040 = !DILocation(line: 684, column: 3, scope: !2993)
!3041 = !DILocation(line: 684, column: 10, scope: !2993)
!3042 = !DILocation(line: 684, column: 15, scope: !2993)
!3043 = !DILocation(line: 684, column: 31, scope: !2993)
!3044 = !DILocation(line: 685, column: 28, scope: !2993)
!3045 = !DILocation(line: 685, column: 38, scope: !2993)
!3046 = !DILocation(line: 685, column: 3, scope: !2993)
!3047 = !DILocation(line: 685, column: 10, scope: !2993)
!3048 = !DILocation(line: 685, column: 15, scope: !2993)
!3049 = !DILocation(line: 685, column: 26, scope: !2993)
!3050 = !DILocation(line: 686, column: 25, scope: !2993)
!3051 = !DILocation(line: 686, column: 35, scope: !2993)
!3052 = !DILocation(line: 686, column: 3, scope: !2993)
!3053 = !DILocation(line: 686, column: 10, scope: !2993)
!3054 = !DILocation(line: 686, column: 15, scope: !2993)
!3055 = !DILocation(line: 686, column: 23, scope: !2993)
!3056 = !DILocation(line: 687, column: 33, scope: !2993)
!3057 = !DILocation(line: 687, column: 43, scope: !2993)
!3058 = !DILocation(line: 687, column: 3, scope: !2993)
!3059 = !DILocation(line: 687, column: 10, scope: !2993)
!3060 = !DILocation(line: 687, column: 15, scope: !2993)
!3061 = !DILocation(line: 687, column: 31, scope: !2993)
!3062 = !DILocation(line: 688, column: 37, scope: !2993)
!3063 = !DILocation(line: 688, column: 47, scope: !2993)
!3064 = !DILocation(line: 688, column: 3, scope: !2993)
!3065 = !DILocation(line: 688, column: 10, scope: !2993)
!3066 = !DILocation(line: 688, column: 15, scope: !2993)
!3067 = !DILocation(line: 688, column: 35, scope: !2993)
!3068 = !DILocation(line: 689, column: 2, scope: !2991)
!3069 = !DILocation(line: 690, column: 1, scope: !2983)
!3070 = !DISubprogram(name: "mbox_controller_register", scope: !1288, file: !1288, line: 130, type: !3071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!46, !1291}
!3073 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !26, file: !26, line: 316, type: !2719, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079}
!3075 = !DILocalVariable(name: "dev", arg: 1, scope: !3073, file: !26, line: 316, type: !1295)
!3076 = !DILocalVariable(name: "n", arg: 2, scope: !3073, file: !26, line: 317, type: !260)
!3077 = !DILocalVariable(name: "size", arg: 3, scope: !3073, file: !26, line: 317, type: !260)
!3078 = !DILocalVariable(name: "flags", arg: 4, scope: !3073, file: !26, line: 317, type: !1188)
!3079 = !DILocalVariable(name: "bytes", scope: !3073, file: !26, line: 319, type: !260)
!3080 = !DILocation(line: 316, column: 55, scope: !3073)
!3081 = !DILocation(line: 317, column: 19, scope: !3073)
!3082 = !DILocation(line: 317, column: 29, scope: !3073)
!3083 = !DILocation(line: 317, column: 41, scope: !3073)
!3084 = !DILocation(line: 319, column: 2, scope: !3073)
!3085 = !DILocation(line: 319, column: 9, scope: !3073)
!3086 = !DILocation(line: 321, column: 6, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3073, file: !26, line: 321, column: 6)
!3088 = !DILocation(line: 321, column: 6, scope: !3073)
!3089 = !DILocation(line: 322, column: 3, scope: !3087)
!3090 = !DILocation(line: 324, column: 22, scope: !3073)
!3091 = !DILocation(line: 324, column: 27, scope: !3073)
!3092 = !DILocation(line: 324, column: 34, scope: !3073)
!3093 = !DILocation(line: 324, column: 9, scope: !3073)
!3094 = !DILocation(line: 324, column: 2, scope: !3073)
!3095 = !DILocation(line: 325, column: 1, scope: !3073)
!3096 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3097, file: !3097, line: 51, type: !3098, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3100)
!3097 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!569, !569}
!3100 = !{!3101}
!3101 = !DILocalVariable(name: "overflow", arg: 1, scope: !3096, file: !3097, line: 51, type: !569)
!3102 = !DILocation(line: 51, column: 60, scope: !3096)
!3103 = !DILocation(line: 53, column: 9, scope: !3096)
!3104 = !DILocation(line: 53, column: 2, scope: !3096)
!3105 = !DISubprogram(name: "devm_kmalloc", scope: !26, file: !26, line: 305, type: !2738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3106 = distinct !DISubprogram(name: "pcc_map_interrupt", scope: !3, file: !3, line: 221, type: !3107, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!46, !1059, !1059}
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DILocalVariable(name: "interrupt", arg: 1, scope: !3106, file: !3, line: 221, type: !1059)
!3111 = !DILocalVariable(name: "flags", arg: 2, scope: !3106, file: !3, line: 221, type: !1059)
!3112 = !DILocalVariable(name: "trigger", scope: !3106, file: !3, line: 223, type: !46)
!3113 = !DILocalVariable(name: "polarity", scope: !3106, file: !3, line: 223, type: !46)
!3114 = !DILocation(line: 221, column: 34, scope: !3106)
!3115 = !DILocation(line: 221, column: 49, scope: !3106)
!3116 = !DILocation(line: 223, column: 2, scope: !3106)
!3117 = !DILocation(line: 223, column: 6, scope: !3106)
!3118 = !DILocation(line: 223, column: 15, scope: !3106)
!3119 = !DILocation(line: 225, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 225, column: 6)
!3121 = !DILocation(line: 225, column: 6, scope: !3106)
!3122 = !DILocation(line: 226, column: 3, scope: !3120)
!3123 = !DILocation(line: 228, column: 13, scope: !3106)
!3124 = !DILocation(line: 228, column: 19, scope: !3106)
!3125 = !DILocation(line: 228, column: 12, scope: !3106)
!3126 = !DILocation(line: 228, column: 10, scope: !3106)
!3127 = !DILocation(line: 231, column: 14, scope: !3106)
!3128 = !DILocation(line: 231, column: 20, scope: !3106)
!3129 = !DILocation(line: 231, column: 13, scope: !3106)
!3130 = !DILocation(line: 231, column: 11, scope: !3106)
!3131 = !DILocation(line: 234, column: 33, scope: !3106)
!3132 = !DILocation(line: 234, column: 44, scope: !3106)
!3133 = !DILocation(line: 234, column: 53, scope: !3106)
!3134 = !DILocation(line: 234, column: 9, scope: !3106)
!3135 = !DILocation(line: 234, column: 2, scope: !3106)
!3136 = !DILocation(line: 235, column: 1, scope: !3106)
!3137 = distinct !DISubprogram(name: "pcc_chan_reg_init", scope: !3, file: !3, line: 518, type: !3138, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3141)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!46, !3140, !1950, !376, !376, !376, !213}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147}
!3142 = !DILocalVariable(name: "reg", arg: 1, scope: !3137, file: !3, line: 518, type: !3140)
!3143 = !DILocalVariable(name: "gas", arg: 2, scope: !3137, file: !3, line: 518, type: !1950)
!3144 = !DILocalVariable(name: "preserve_mask", arg: 3, scope: !3137, file: !3, line: 519, type: !376)
!3145 = !DILocalVariable(name: "set_mask", arg: 4, scope: !3137, file: !3, line: 519, type: !376)
!3146 = !DILocalVariable(name: "status_mask", arg: 5, scope: !3137, file: !3, line: 519, type: !376)
!3147 = !DILocalVariable(name: "name", arg: 6, scope: !3137, file: !3, line: 519, type: !213)
!3148 = !DILocation(line: 518, column: 40, scope: !3137)
!3149 = !DILocation(line: 518, column: 74, scope: !3137)
!3150 = !DILocation(line: 519, column: 9, scope: !3137)
!3151 = !DILocation(line: 519, column: 28, scope: !3137)
!3152 = !DILocation(line: 519, column: 42, scope: !3137)
!3153 = !DILocation(line: 519, column: 61, scope: !3137)
!3154 = !DILocation(line: 521, column: 6, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 521, column: 6)
!3156 = !DILocation(line: 521, column: 11, scope: !3155)
!3157 = !DILocation(line: 521, column: 20, scope: !3155)
!3158 = !DILocation(line: 521, column: 6, scope: !3137)
!3159 = !DILocation(line: 522, column: 9, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 522, column: 7)
!3161 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 521, column: 53)
!3162 = !DILocation(line: 522, column: 14, scope: !3160)
!3163 = !DILocation(line: 522, column: 24, scope: !3160)
!3164 = !DILocation(line: 522, column: 29, scope: !3160)
!3165 = !DILocation(line: 522, column: 32, scope: !3160)
!3166 = !DILocation(line: 522, column: 37, scope: !3160)
!3167 = !DILocation(line: 522, column: 47, scope: !3160)
!3168 = !DILocation(line: 522, column: 53, scope: !3160)
!3169 = !DILocation(line: 523, column: 23, scope: !3160)
!3170 = !DILocation(line: 523, column: 28, scope: !3160)
!3171 = !DILocation(line: 523, column: 9, scope: !3160)
!3172 = !DILocation(line: 522, column: 7, scope: !3161)
!3173 = !DILocation(line: 524, column: 4, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 524, column: 4)
!3175 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 523, column: 41)
!3176 = !DILocation(line: 524, column: 4, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 524, column: 4)
!3178 = !DILocation(line: 526, column: 4, scope: !3175)
!3179 = !DILocation(line: 529, column: 32, scope: !3161)
!3180 = !DILocation(line: 529, column: 37, scope: !3161)
!3181 = !DILocation(line: 529, column: 46, scope: !3161)
!3182 = !DILocation(line: 529, column: 51, scope: !3161)
!3183 = !DILocation(line: 529, column: 61, scope: !3161)
!3184 = !DILocation(line: 529, column: 16, scope: !3161)
!3185 = !DILocation(line: 529, column: 3, scope: !3161)
!3186 = !DILocation(line: 529, column: 8, scope: !3161)
!3187 = !DILocation(line: 529, column: 14, scope: !3161)
!3188 = !DILocation(line: 530, column: 8, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 530, column: 7)
!3190 = !DILocation(line: 530, column: 13, scope: !3189)
!3191 = !DILocation(line: 530, column: 7, scope: !3161)
!3192 = !DILocation(line: 531, column: 4, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 531, column: 4)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 530, column: 20)
!3195 = !DILocation(line: 531, column: 4, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 531, column: 4)
!3197 = !DILocation(line: 532, column: 4, scope: !3194)
!3198 = !DILocation(line: 534, column: 2, scope: !3161)
!3199 = !DILocation(line: 535, column: 13, scope: !3137)
!3200 = !DILocation(line: 535, column: 2, scope: !3137)
!3201 = !DILocation(line: 535, column: 7, scope: !3137)
!3202 = !DILocation(line: 535, column: 11, scope: !3137)
!3203 = !DILocation(line: 536, column: 23, scope: !3137)
!3204 = !DILocation(line: 536, column: 2, scope: !3137)
!3205 = !DILocation(line: 536, column: 7, scope: !3137)
!3206 = !DILocation(line: 536, column: 21, scope: !3137)
!3207 = !DILocation(line: 537, column: 18, scope: !3137)
!3208 = !DILocation(line: 537, column: 2, scope: !3137)
!3209 = !DILocation(line: 537, column: 7, scope: !3137)
!3210 = !DILocation(line: 537, column: 16, scope: !3137)
!3211 = !DILocation(line: 538, column: 21, scope: !3137)
!3212 = !DILocation(line: 538, column: 2, scope: !3137)
!3213 = !DILocation(line: 538, column: 7, scope: !3137)
!3214 = !DILocation(line: 538, column: 19, scope: !3137)
!3215 = !DILocation(line: 539, column: 2, scope: !3137)
!3216 = !DILocation(line: 540, column: 1, scope: !3137)
!3217 = distinct !DISubprogram(name: "pcc_chan_plat_irq_can_be_shared", scope: !3, file: !3, line: 237, type: !3218, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!569, !1278}
!3220 = !{!3221}
!3221 = !DILocalVariable(name: "pchan", arg: 1, scope: !3217, file: !3, line: 237, type: !1278)
!3222 = !DILocation(line: 237, column: 67, scope: !3217)
!3223 = !DILocation(line: 239, column: 10, scope: !3217)
!3224 = !DILocation(line: 239, column: 17, scope: !3217)
!3225 = !DILocation(line: 239, column: 32, scope: !3217)
!3226 = !DILocation(line: 239, column: 60, scope: !3217)
!3227 = !DILocation(line: 239, column: 2, scope: !3217)
!3228 = !DISubprogram(name: "acpi_register_gsi", scope: !2340, file: !2340, line: 347, type: !3229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!46, !1295, !1059, !46, !46}
!3231 = distinct !DISubprogram(name: "is_power_of_2", scope: !3232, file: !3232, line: 45, type: !3233, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3235)
!3232 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!569, !107}
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !3232, line: 45, type: !107)
!3237 = !DILocation(line: 45, column: 34, scope: !3231)
!3238 = !DILocation(line: 47, column: 10, scope: !3231)
!3239 = !DILocation(line: 47, column: 12, scope: !3231)
!3240 = !DILocation(line: 47, column: 17, scope: !3231)
!3241 = !DILocation(line: 47, column: 22, scope: !3231)
!3242 = !DILocation(line: 47, column: 27, scope: !3231)
!3243 = !DILocation(line: 47, column: 29, scope: !3231)
!3244 = !DILocation(line: 47, column: 24, scope: !3231)
!3245 = !DILocation(line: 47, column: 35, scope: !3231)
!3246 = !DILocation(line: 0, scope: !3231)
!3247 = !DILocation(line: 47, column: 2, scope: !3231)
!3248 = distinct !DISubprogram(name: "acpi_os_ioremap", scope: !3249, file: !3249, line: 10, type: !3250, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3254)
!3249 = !DIFile(filename: "./include/acpi/acpi_io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15c88ad459b9755ee19dd3f691b85d66")
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!106, !3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !1187, line: 129, baseType: !376)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !1187, line: 127, baseType: !376)
!3254 = !{!3255, !3256}
!3255 = !DILocalVariable(name: "phys", arg: 1, scope: !3248, file: !3249, line: 10, type: !3252)
!3256 = !DILocalVariable(name: "size", arg: 2, scope: !3248, file: !3249, line: 11, type: !3253)
!3257 = !DILocation(line: 10, column: 67, scope: !3248)
!3258 = !DILocation(line: 11, column: 20, scope: !3248)
!3259 = !DILocation(line: 13, column: 29, scope: !3248)
!3260 = !DILocation(line: 13, column: 35, scope: !3248)
!3261 = !DILocation(line: 13, column: 15, scope: !3248)
!3262 = !DILocation(line: 13, column: 8, scope: !3248)
!3263 = !DISubprogram(name: "ioremap_cache", scope: !2245, file: !2245, line: 175, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3264 = distinct !DISubprogram(name: "pcc_send_data", scope: !3, file: !3, line: 433, type: !1870, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3265 = !{!3266, !3267, !3268, !3269}
!3266 = !DILocalVariable(name: "chan", arg: 1, scope: !3264, file: !3, line: 433, type: !1286)
!3267 = !DILocalVariable(name: "data", arg: 2, scope: !3264, file: !3, line: 433, type: !106)
!3268 = !DILocalVariable(name: "ret", scope: !3264, file: !3, line: 435, type: !46)
!3269 = !DILocalVariable(name: "pchan", scope: !3264, file: !3, line: 436, type: !1278)
!3270 = !DILocation(line: 433, column: 44, scope: !3264)
!3271 = !DILocation(line: 433, column: 56, scope: !3264)
!3272 = !DILocation(line: 435, column: 2, scope: !3264)
!3273 = !DILocation(line: 435, column: 6, scope: !3264)
!3274 = !DILocation(line: 436, column: 2, scope: !3264)
!3275 = !DILocation(line: 436, column: 24, scope: !3264)
!3276 = !DILocation(line: 436, column: 32, scope: !3264)
!3277 = !DILocation(line: 436, column: 38, scope: !3264)
!3278 = !DILocation(line: 438, column: 40, scope: !3264)
!3279 = !DILocation(line: 438, column: 47, scope: !3264)
!3280 = !DILocation(line: 438, column: 8, scope: !3264)
!3281 = !DILocation(line: 438, column: 6, scope: !3264)
!3282 = !DILocation(line: 439, column: 6, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 439, column: 6)
!3284 = !DILocation(line: 439, column: 6, scope: !3264)
!3285 = !DILocation(line: 440, column: 10, scope: !3283)
!3286 = !DILocation(line: 440, column: 3, scope: !3283)
!3287 = !DILocation(line: 442, column: 40, scope: !3264)
!3288 = !DILocation(line: 442, column: 47, scope: !3264)
!3289 = !DILocation(line: 442, column: 8, scope: !3264)
!3290 = !DILocation(line: 442, column: 6, scope: !3264)
!3291 = !DILocation(line: 443, column: 7, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 443, column: 6)
!3293 = !DILocation(line: 443, column: 11, scope: !3292)
!3294 = !DILocation(line: 443, column: 14, scope: !3292)
!3295 = !DILocation(line: 443, column: 21, scope: !3292)
!3296 = !DILocation(line: 443, column: 30, scope: !3292)
!3297 = !DILocation(line: 443, column: 6, scope: !3264)
!3298 = !DILocation(line: 444, column: 3, scope: !3292)
!3299 = !DILocation(line: 444, column: 10, scope: !3292)
!3300 = !DILocation(line: 444, column: 22, scope: !3292)
!3301 = !DILocation(line: 446, column: 9, scope: !3264)
!3302 = !DILocation(line: 446, column: 2, scope: !3264)
!3303 = !DILocation(line: 447, column: 1, scope: !3264)
!3304 = distinct !DISubprogram(name: "pcc_startup", scope: !3, file: !3, line: 456, type: !1878, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3305 = !{!3306, !3307, !3308, !3309}
!3306 = !DILocalVariable(name: "chan", arg: 1, scope: !3304, file: !3, line: 456, type: !1286)
!3307 = !DILocalVariable(name: "pchan", scope: !3304, file: !3, line: 458, type: !1278)
!3308 = !DILocalVariable(name: "irqflags", scope: !3304, file: !3, line: 459, type: !107)
!3309 = !DILocalVariable(name: "rc", scope: !3304, file: !3, line: 460, type: !46)
!3310 = !DILocation(line: 456, column: 42, scope: !3304)
!3311 = !DILocation(line: 458, column: 2, scope: !3304)
!3312 = !DILocation(line: 458, column: 24, scope: !3304)
!3313 = !DILocation(line: 458, column: 32, scope: !3304)
!3314 = !DILocation(line: 458, column: 38, scope: !3304)
!3315 = !DILocation(line: 459, column: 2, scope: !3304)
!3316 = !DILocation(line: 459, column: 16, scope: !3304)
!3317 = !DILocation(line: 460, column: 2, scope: !3304)
!3318 = !DILocation(line: 460, column: 6, scope: !3304)
!3319 = !DILocation(line: 462, column: 6, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 462, column: 6)
!3321 = !DILocation(line: 462, column: 13, scope: !3320)
!3322 = !DILocation(line: 462, column: 22, scope: !3320)
!3323 = !DILocation(line: 462, column: 6, scope: !3304)
!3324 = !DILocation(line: 463, column: 46, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 462, column: 27)
!3326 = !DILocation(line: 463, column: 14, scope: !3325)
!3327 = !DILocation(line: 463, column: 12, scope: !3325)
!3328 = !DILocation(line: 465, column: 25, scope: !3325)
!3329 = !DILocation(line: 465, column: 31, scope: !3325)
!3330 = !DILocation(line: 465, column: 37, scope: !3325)
!3331 = !DILocation(line: 465, column: 42, scope: !3325)
!3332 = !DILocation(line: 465, column: 49, scope: !3325)
!3333 = !DILocation(line: 466, column: 11, scope: !3325)
!3334 = !DILocation(line: 466, column: 36, scope: !3325)
!3335 = !DILocation(line: 465, column: 8, scope: !3325)
!3336 = !DILocation(line: 465, column: 6, scope: !3325)
!3337 = !DILocation(line: 467, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 467, column: 7)
!3339 = !DILocation(line: 467, column: 7, scope: !3325)
!3340 = !DILocation(line: 468, column: 4, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 468, column: 4)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 467, column: 21)
!3343 = !DILocation(line: 468, column: 4, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 468, column: 4)
!3345 = !DILocation(line: 470, column: 11, scope: !3342)
!3346 = !DILocation(line: 470, column: 4, scope: !3342)
!3347 = !DILocation(line: 472, column: 2, scope: !3325)
!3348 = !DILocation(line: 474, column: 2, scope: !3304)
!3349 = !DILocation(line: 475, column: 1, scope: !3304)
!3350 = distinct !DISubprogram(name: "pcc_shutdown", scope: !3, file: !3, line: 482, type: !1882, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3351)
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "chan", arg: 1, scope: !3350, file: !3, line: 482, type: !1286)
!3353 = !DILocalVariable(name: "pchan", scope: !3350, file: !3, line: 484, type: !1278)
!3354 = !DILocation(line: 482, column: 44, scope: !3350)
!3355 = !DILocation(line: 484, column: 2, scope: !3350)
!3356 = !DILocation(line: 484, column: 24, scope: !3350)
!3357 = !DILocation(line: 484, column: 32, scope: !3350)
!3358 = !DILocation(line: 484, column: 38, scope: !3350)
!3359 = !DILocation(line: 486, column: 6, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 486, column: 6)
!3361 = !DILocation(line: 486, column: 13, scope: !3360)
!3362 = !DILocation(line: 486, column: 22, scope: !3360)
!3363 = !DILocation(line: 486, column: 6, scope: !3350)
!3364 = !DILocation(line: 487, column: 17, scope: !3360)
!3365 = !DILocation(line: 487, column: 23, scope: !3360)
!3366 = !DILocation(line: 487, column: 29, scope: !3360)
!3367 = !DILocation(line: 487, column: 34, scope: !3360)
!3368 = !DILocation(line: 487, column: 41, scope: !3360)
!3369 = !DILocation(line: 487, column: 51, scope: !3360)
!3370 = !DILocation(line: 487, column: 3, scope: !3360)
!3371 = !DILocation(line: 488, column: 1, scope: !3350)
!3372 = distinct !DISubprogram(name: "pcc_chan_reg_read_modify_write", scope: !3, file: !3, line: 198, type: !3373, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!46, !3140}
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "reg", arg: 1, scope: !3372, file: !3, line: 198, type: !3140)
!3377 = !DILocalVariable(name: "ret", scope: !3372, file: !3, line: 200, type: !46)
!3378 = !DILocalVariable(name: "val", scope: !3372, file: !3, line: 201, type: !376)
!3379 = !DILocation(line: 198, column: 64, scope: !3372)
!3380 = !DILocation(line: 200, column: 2, scope: !3372)
!3381 = !DILocation(line: 200, column: 6, scope: !3372)
!3382 = !DILocation(line: 201, column: 2, scope: !3372)
!3383 = !DILocation(line: 201, column: 6, scope: !3372)
!3384 = !DILocation(line: 203, column: 26, scope: !3372)
!3385 = !DILocation(line: 203, column: 8, scope: !3372)
!3386 = !DILocation(line: 203, column: 6, scope: !3372)
!3387 = !DILocation(line: 204, column: 6, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 204, column: 6)
!3389 = !DILocation(line: 204, column: 6, scope: !3372)
!3390 = !DILocation(line: 205, column: 10, scope: !3388)
!3391 = !DILocation(line: 205, column: 3, scope: !3388)
!3392 = !DILocation(line: 207, column: 9, scope: !3372)
!3393 = !DILocation(line: 207, column: 14, scope: !3372)
!3394 = !DILocation(line: 207, column: 6, scope: !3372)
!3395 = !DILocation(line: 208, column: 9, scope: !3372)
!3396 = !DILocation(line: 208, column: 14, scope: !3372)
!3397 = !DILocation(line: 208, column: 6, scope: !3372)
!3398 = !DILocation(line: 210, column: 28, scope: !3372)
!3399 = !DILocation(line: 210, column: 33, scope: !3372)
!3400 = !DILocation(line: 210, column: 9, scope: !3372)
!3401 = !DILocation(line: 210, column: 2, scope: !3372)
!3402 = !DILocation(line: 211, column: 1, scope: !3372)
!3403 = distinct !DISubprogram(name: "pcc_chan_reg_read", scope: !3, file: !3, line: 166, type: !3404, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!46, !3140, !1655}
!3406 = !{!3407, !3408, !3409}
!3407 = !DILocalVariable(name: "reg", arg: 1, scope: !3403, file: !3, line: 166, type: !3140)
!3408 = !DILocalVariable(name: "val", arg: 2, scope: !3403, file: !3, line: 166, type: !1655)
!3409 = !DILocalVariable(name: "ret", scope: !3403, file: !3, line: 168, type: !46)
!3410 = !DILocation(line: 166, column: 51, scope: !3403)
!3411 = !DILocation(line: 166, column: 61, scope: !3403)
!3412 = !DILocation(line: 168, column: 2, scope: !3403)
!3413 = !DILocation(line: 168, column: 6, scope: !3403)
!3414 = !DILocation(line: 170, column: 7, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 170, column: 6)
!3416 = !DILocation(line: 170, column: 12, scope: !3415)
!3417 = !DILocation(line: 170, column: 6, scope: !3403)
!3418 = !DILocation(line: 171, column: 4, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 170, column: 17)
!3420 = !DILocation(line: 171, column: 8, scope: !3419)
!3421 = !DILocation(line: 172, column: 3, scope: !3419)
!3422 = !DILocation(line: 175, column: 6, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 175, column: 6)
!3424 = !DILocation(line: 175, column: 11, scope: !3423)
!3425 = !DILocation(line: 175, column: 6, scope: !3403)
!3426 = !DILocation(line: 176, column: 17, scope: !3423)
!3427 = !DILocation(line: 176, column: 22, scope: !3423)
!3428 = !DILocation(line: 176, column: 29, scope: !3423)
!3429 = !DILocation(line: 176, column: 34, scope: !3423)
!3430 = !DILocation(line: 176, column: 39, scope: !3423)
!3431 = !DILocation(line: 176, column: 44, scope: !3423)
!3432 = !DILocation(line: 176, column: 3, scope: !3423)
!3433 = !DILocation(line: 178, column: 19, scope: !3423)
!3434 = !DILocation(line: 178, column: 24, scope: !3423)
!3435 = !DILocation(line: 178, column: 29, scope: !3423)
!3436 = !DILocation(line: 178, column: 9, scope: !3423)
!3437 = !DILocation(line: 178, column: 7, scope: !3423)
!3438 = !DILocation(line: 180, column: 9, scope: !3403)
!3439 = !DILocation(line: 180, column: 2, scope: !3403)
!3440 = !DILocation(line: 181, column: 1, scope: !3403)
!3441 = distinct !DISubprogram(name: "pcc_chan_reg_write", scope: !3, file: !3, line: 183, type: !3442, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!46, !3140, !376}
!3444 = !{!3445, !3446, !3447}
!3445 = !DILocalVariable(name: "reg", arg: 1, scope: !3441, file: !3, line: 183, type: !3140)
!3446 = !DILocalVariable(name: "val", arg: 2, scope: !3441, file: !3, line: 183, type: !376)
!3447 = !DILocalVariable(name: "ret", scope: !3441, file: !3, line: 185, type: !46)
!3448 = !DILocation(line: 183, column: 52, scope: !3441)
!3449 = !DILocation(line: 183, column: 61, scope: !3441)
!3450 = !DILocation(line: 185, column: 2, scope: !3441)
!3451 = !DILocation(line: 185, column: 6, scope: !3441)
!3452 = !DILocation(line: 187, column: 7, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 187, column: 6)
!3454 = !DILocation(line: 187, column: 12, scope: !3453)
!3455 = !DILocation(line: 187, column: 6, scope: !3441)
!3456 = !DILocation(line: 188, column: 3, scope: !3453)
!3457 = !DILocation(line: 190, column: 6, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 190, column: 6)
!3459 = !DILocation(line: 190, column: 11, scope: !3458)
!3460 = !DILocation(line: 190, column: 6, scope: !3441)
!3461 = !DILocation(line: 191, column: 18, scope: !3458)
!3462 = !DILocation(line: 191, column: 23, scope: !3458)
!3463 = !DILocation(line: 191, column: 30, scope: !3458)
!3464 = !DILocation(line: 191, column: 35, scope: !3458)
!3465 = !DILocation(line: 191, column: 40, scope: !3458)
!3466 = !DILocation(line: 191, column: 45, scope: !3458)
!3467 = !DILocation(line: 191, column: 3, scope: !3458)
!3468 = !DILocation(line: 193, column: 20, scope: !3458)
!3469 = !DILocation(line: 193, column: 25, scope: !3458)
!3470 = !DILocation(line: 193, column: 30, scope: !3458)
!3471 = !DILocation(line: 193, column: 9, scope: !3458)
!3472 = !DILocation(line: 193, column: 7, scope: !3458)
!3473 = !DILocation(line: 195, column: 9, scope: !3441)
!3474 = !DILocation(line: 195, column: 2, scope: !3441)
!3475 = !DILocation(line: 196, column: 1, scope: !3441)
!3476 = distinct !DISubprogram(name: "read_register", scope: !3, file: !3, line: 130, type: !3477, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !106, !1655, !7}
!3479 = !{!3480, !3481, !3482}
!3480 = !DILocalVariable(name: "vaddr", arg: 1, scope: !3476, file: !3, line: 130, type: !106)
!3481 = !DILocalVariable(name: "val", arg: 2, scope: !3476, file: !3, line: 130, type: !1655)
!3482 = !DILocalVariable(name: "bit_width", arg: 3, scope: !3476, file: !3, line: 130, type: !7)
!3483 = !DILocation(line: 130, column: 41, scope: !3476)
!3484 = !DILocation(line: 130, column: 53, scope: !3476)
!3485 = !DILocation(line: 130, column: 71, scope: !3476)
!3486 = !DILocation(line: 132, column: 10, scope: !3476)
!3487 = !DILocation(line: 132, column: 2, scope: !3476)
!3488 = !DILocation(line: 134, column: 16, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 132, column: 21)
!3490 = !DILocation(line: 134, column: 10, scope: !3489)
!3491 = !DILocation(line: 134, column: 4, scope: !3489)
!3492 = !DILocation(line: 134, column: 8, scope: !3489)
!3493 = !DILocation(line: 135, column: 3, scope: !3489)
!3494 = !DILocation(line: 137, column: 16, scope: !3489)
!3495 = !DILocation(line: 137, column: 10, scope: !3489)
!3496 = !DILocation(line: 137, column: 4, scope: !3489)
!3497 = !DILocation(line: 137, column: 8, scope: !3489)
!3498 = !DILocation(line: 138, column: 3, scope: !3489)
!3499 = !DILocation(line: 140, column: 16, scope: !3489)
!3500 = !DILocation(line: 140, column: 10, scope: !3489)
!3501 = !DILocation(line: 140, column: 4, scope: !3489)
!3502 = !DILocation(line: 140, column: 8, scope: !3489)
!3503 = !DILocation(line: 141, column: 3, scope: !3489)
!3504 = !DILocation(line: 143, column: 16, scope: !3489)
!3505 = !DILocation(line: 143, column: 10, scope: !3489)
!3506 = !DILocation(line: 143, column: 4, scope: !3489)
!3507 = !DILocation(line: 143, column: 8, scope: !3489)
!3508 = !DILocation(line: 144, column: 3, scope: !3489)
!3509 = !DILocation(line: 146, column: 1, scope: !3476)
!3510 = !DISubprogram(name: "acpi_read", scope: !2687, file: !2687, line: 848, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!1186, !1655, !1950}
!3513 = distinct !DISubprogram(name: "readb", scope: !2245, file: !2245, line: 56, type: !3514, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!175, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "addr", arg: 1, scope: !3513, file: !2245, line: 56, type: !3516)
!3520 = !DILocalVariable(name: "ret", scope: !3513, file: !2245, line: 56, type: !175)
!3521 = !DILocation(line: 56, column: 1, scope: !3513)
!3522 = !{i64 2153254223}
!3523 = distinct !DISubprogram(name: "readw", scope: !2245, file: !2245, line: 57, type: !3524, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!183, !3516}
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "addr", arg: 1, scope: !3523, file: !2245, line: 57, type: !3516)
!3528 = !DILocalVariable(name: "ret", scope: !3523, file: !2245, line: 57, type: !183)
!3529 = !DILocation(line: 57, column: 1, scope: !3523)
!3530 = !{i64 2153254637}
!3531 = distinct !DISubprogram(name: "readl", scope: !2245, file: !2245, line: 58, type: !3532, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!7, !3516}
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "addr", arg: 1, scope: !3531, file: !2245, line: 58, type: !3516)
!3536 = !DILocalVariable(name: "ret", scope: !3531, file: !2245, line: 58, type: !7)
!3537 = !DILocation(line: 58, column: 1, scope: !3531)
!3538 = !{i64 2153255054}
!3539 = distinct !DISubprogram(name: "readq", scope: !2245, file: !2245, line: 94, type: !3540, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!376, !3516}
!3542 = !{!3543, !3544}
!3543 = !DILocalVariable(name: "addr", arg: 1, scope: !3539, file: !2245, line: 94, type: !3516)
!3544 = !DILocalVariable(name: "ret", scope: !3539, file: !2245, line: 94, type: !376)
!3545 = !DILocation(line: 94, column: 1, scope: !3539)
!3546 = !{i64 2153258963}
!3547 = distinct !DISubprogram(name: "write_register", scope: !3, file: !3, line: 148, type: !3548, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !106, !376, !7}
!3550 = !{!3551, !3552, !3553}
!3551 = !DILocalVariable(name: "vaddr", arg: 1, scope: !3547, file: !3, line: 148, type: !106)
!3552 = !DILocalVariable(name: "val", arg: 2, scope: !3547, file: !3, line: 148, type: !376)
!3553 = !DILocalVariable(name: "bit_width", arg: 3, scope: !3547, file: !3, line: 148, type: !7)
!3554 = !DILocation(line: 148, column: 42, scope: !3547)
!3555 = !DILocation(line: 148, column: 53, scope: !3547)
!3556 = !DILocation(line: 148, column: 71, scope: !3547)
!3557 = !DILocation(line: 150, column: 10, scope: !3547)
!3558 = !DILocation(line: 150, column: 2, scope: !3547)
!3559 = !DILocation(line: 152, column: 10, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 150, column: 21)
!3561 = !DILocation(line: 152, column: 15, scope: !3560)
!3562 = !DILocation(line: 152, column: 3, scope: !3560)
!3563 = !DILocation(line: 153, column: 3, scope: !3560)
!3564 = !DILocation(line: 155, column: 10, scope: !3560)
!3565 = !DILocation(line: 155, column: 15, scope: !3560)
!3566 = !DILocation(line: 155, column: 3, scope: !3560)
!3567 = !DILocation(line: 156, column: 3, scope: !3560)
!3568 = !DILocation(line: 158, column: 10, scope: !3560)
!3569 = !DILocation(line: 158, column: 15, scope: !3560)
!3570 = !DILocation(line: 158, column: 3, scope: !3560)
!3571 = !DILocation(line: 159, column: 3, scope: !3560)
!3572 = !DILocation(line: 161, column: 10, scope: !3560)
!3573 = !DILocation(line: 161, column: 15, scope: !3560)
!3574 = !DILocation(line: 161, column: 3, scope: !3560)
!3575 = !DILocation(line: 162, column: 3, scope: !3560)
!3576 = !DILocation(line: 164, column: 1, scope: !3547)
!3577 = !DISubprogram(name: "acpi_write", scope: !2687, file: !2687, line: 852, type: !3578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!1186, !376, !1950}
!3580 = distinct !DISubprogram(name: "writeb", scope: !2245, file: !2245, line: 64, type: !3581, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !175, !2248}
!3583 = !{!3584, !3585}
!3584 = !DILocalVariable(name: "val", arg: 1, scope: !3580, file: !2245, line: 64, type: !175)
!3585 = !DILocalVariable(name: "addr", arg: 2, scope: !3580, file: !2245, line: 64, type: !2248)
!3586 = !DILocation(line: 64, column: 1, scope: !3580)
!3587 = !{i64 2153256677}
!3588 = distinct !DISubprogram(name: "writew", scope: !2245, file: !2245, line: 65, type: !3589, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !183, !2248}
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "val", arg: 1, scope: !3588, file: !2245, line: 65, type: !183)
!3593 = !DILocalVariable(name: "addr", arg: 2, scope: !3588, file: !2245, line: 65, type: !2248)
!3594 = !DILocation(line: 65, column: 1, scope: !3588)
!3595 = !{i64 2153257061}
!3596 = distinct !DISubprogram(name: "writel", scope: !2245, file: !2245, line: 66, type: !3597, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !7, !2248}
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "val", arg: 1, scope: !3596, file: !2245, line: 66, type: !7)
!3601 = !DILocalVariable(name: "addr", arg: 2, scope: !3596, file: !2245, line: 66, type: !2248)
!3602 = !DILocation(line: 66, column: 1, scope: !3596)
!3603 = !{i64 2153257447}
!3604 = distinct !DISubprogram(name: "writeq", scope: !2245, file: !2245, line: 96, type: !3605, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !376, !2248}
!3607 = !{!3608, !3609}
!3608 = !DILocalVariable(name: "val", arg: 1, scope: !3604, file: !2245, line: 96, type: !376)
!3609 = !DILocalVariable(name: "addr", arg: 2, scope: !3604, file: !2245, line: 96, type: !2248)
!3610 = !DILocation(line: 96, column: 1, scope: !3604)
!3611 = !{i64 2153259717}
!3612 = distinct !DISubprogram(name: "devm_request_irq", scope: !3613, file: !3613, line: 211, type: !3614, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3621)
!3613 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!46, !1295, !7, !3616, !107, !132, !106}
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !3613, line: 100, baseType: !3617)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!3620, !46, !106}
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !100, line: 17, baseType: !99)
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3627}
!3622 = !DILocalVariable(name: "dev", arg: 1, scope: !3612, file: !3613, line: 211, type: !1295)
!3623 = !DILocalVariable(name: "irq", arg: 2, scope: !3612, file: !3613, line: 211, type: !7)
!3624 = !DILocalVariable(name: "handler", arg: 3, scope: !3612, file: !3613, line: 211, type: !3616)
!3625 = !DILocalVariable(name: "irqflags", arg: 4, scope: !3612, file: !3613, line: 212, type: !107)
!3626 = !DILocalVariable(name: "devname", arg: 5, scope: !3612, file: !3613, line: 212, type: !132)
!3627 = !DILocalVariable(name: "dev_id", arg: 6, scope: !3612, file: !3613, line: 212, type: !106)
!3628 = !DILocation(line: 211, column: 33, scope: !3612)
!3629 = !DILocation(line: 211, column: 51, scope: !3612)
!3630 = !DILocation(line: 211, column: 70, scope: !3612)
!3631 = !DILocation(line: 212, column: 18, scope: !3612)
!3632 = !DILocation(line: 212, column: 40, scope: !3612)
!3633 = !DILocation(line: 212, column: 55, scope: !3612)
!3634 = !DILocation(line: 214, column: 35, scope: !3612)
!3635 = !DILocation(line: 214, column: 40, scope: !3612)
!3636 = !DILocation(line: 214, column: 45, scope: !3612)
!3637 = !DILocation(line: 214, column: 60, scope: !3612)
!3638 = !DILocation(line: 215, column: 7, scope: !3612)
!3639 = !DILocation(line: 215, column: 16, scope: !3612)
!3640 = !DILocation(line: 214, column: 9, scope: !3612)
!3641 = !DILocation(line: 214, column: 2, scope: !3612)
!3642 = distinct !DISubprogram(name: "pcc_mbox_irq", scope: !3, file: !3, line: 308, type: !3618, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649}
!3644 = !DILocalVariable(name: "irq", arg: 1, scope: !3642, file: !3, line: 308, type: !46)
!3645 = !DILocalVariable(name: "p", arg: 2, scope: !3642, file: !3, line: 308, type: !106)
!3646 = !DILocalVariable(name: "pchan", scope: !3642, file: !3, line: 310, type: !1278)
!3647 = !DILocalVariable(name: "chan", scope: !3642, file: !3, line: 311, type: !1286)
!3648 = !DILocalVariable(name: "val", scope: !3642, file: !3, line: 312, type: !376)
!3649 = !DILocalVariable(name: "ret", scope: !3642, file: !3, line: 313, type: !46)
!3650 = !DILocation(line: 308, column: 37, scope: !3642)
!3651 = !DILocation(line: 308, column: 48, scope: !3642)
!3652 = !DILocation(line: 310, column: 2, scope: !3642)
!3653 = !DILocation(line: 310, column: 24, scope: !3642)
!3654 = !DILocation(line: 311, column: 2, scope: !3642)
!3655 = !DILocation(line: 311, column: 20, scope: !3642)
!3656 = !DILocation(line: 311, column: 27, scope: !3642)
!3657 = !DILocation(line: 312, column: 2, scope: !3642)
!3658 = !DILocation(line: 312, column: 6, scope: !3642)
!3659 = !DILocation(line: 313, column: 2, scope: !3642)
!3660 = !DILocation(line: 313, column: 6, scope: !3642)
!3661 = !DILocation(line: 315, column: 10, scope: !3642)
!3662 = !DILocation(line: 315, column: 16, scope: !3642)
!3663 = !DILocation(line: 315, column: 8, scope: !3642)
!3664 = !DILocation(line: 316, column: 6, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 316, column: 6)
!3666 = !DILocation(line: 316, column: 13, scope: !3665)
!3667 = !DILocation(line: 316, column: 18, scope: !3665)
!3668 = !DILocation(line: 316, column: 60, scope: !3665)
!3669 = !DILocation(line: 317, column: 7, scope: !3665)
!3670 = !DILocation(line: 317, column: 14, scope: !3665)
!3671 = !DILocation(line: 316, column: 6, scope: !3642)
!3672 = !DILocation(line: 318, column: 3, scope: !3665)
!3673 = !DILocation(line: 320, column: 35, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 320, column: 6)
!3675 = !DILocation(line: 320, column: 7, scope: !3674)
!3676 = !DILocation(line: 320, column: 6, scope: !3642)
!3677 = !DILocation(line: 321, column: 3, scope: !3674)
!3678 = !DILocation(line: 323, column: 27, scope: !3642)
!3679 = !DILocation(line: 323, column: 34, scope: !3642)
!3680 = !DILocation(line: 323, column: 8, scope: !3642)
!3681 = !DILocation(line: 323, column: 6, scope: !3642)
!3682 = !DILocation(line: 324, column: 6, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 324, column: 6)
!3684 = !DILocation(line: 324, column: 6, scope: !3642)
!3685 = !DILocation(line: 325, column: 3, scope: !3683)
!3686 = !DILocation(line: 326, column: 9, scope: !3642)
!3687 = !DILocation(line: 326, column: 16, scope: !3642)
!3688 = !DILocation(line: 326, column: 22, scope: !3642)
!3689 = !DILocation(line: 326, column: 6, scope: !3642)
!3690 = !DILocation(line: 327, column: 6, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 327, column: 6)
!3692 = !DILocation(line: 327, column: 6, scope: !3642)
!3693 = !DILocation(line: 328, column: 11, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 327, column: 11)
!3695 = !DILocation(line: 328, column: 18, scope: !3694)
!3696 = !DILocation(line: 328, column: 24, scope: !3694)
!3697 = !DILocation(line: 328, column: 10, scope: !3694)
!3698 = !DILocation(line: 328, column: 7, scope: !3694)
!3699 = !DILocation(line: 329, column: 23, scope: !3694)
!3700 = !DILocation(line: 329, column: 30, scope: !3694)
!3701 = !DILocation(line: 329, column: 37, scope: !3694)
!3702 = !DILocation(line: 329, column: 3, scope: !3694)
!3703 = !DILocation(line: 330, column: 3, scope: !3694)
!3704 = !DILocation(line: 333, column: 38, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 333, column: 6)
!3706 = !DILocation(line: 333, column: 45, scope: !3705)
!3707 = !DILocation(line: 333, column: 6, scope: !3705)
!3708 = !DILocation(line: 333, column: 6, scope: !3642)
!3709 = !DILocation(line: 334, column: 3, scope: !3705)
!3710 = !DILocation(line: 336, column: 26, scope: !3642)
!3711 = !DILocation(line: 336, column: 2, scope: !3642)
!3712 = !DILocation(line: 338, column: 16, scope: !3642)
!3713 = !DILocation(line: 338, column: 23, scope: !3642)
!3714 = !DILocation(line: 338, column: 2, scope: !3642)
!3715 = !DILocation(line: 339, column: 2, scope: !3642)
!3716 = !DILocation(line: 339, column: 9, scope: !3642)
!3717 = !DILocation(line: 339, column: 21, scope: !3642)
!3718 = !DILocation(line: 341, column: 2, scope: !3642)
!3719 = !DILocation(line: 342, column: 1, scope: !3642)
!3720 = !DISubprogram(name: "_dev_err", scope: !3721, file: !3721, line: 50, type: !3722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3721 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !1315, !132, null}
!3724 = !DISubprogram(name: "devm_request_threaded_irq", scope: !3613, file: !3613, line: 205, type: !3725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!46, !1295, !7, !3616, !3616, !107, !132, !106}
!3727 = distinct !DISubprogram(name: "pcc_mbox_cmd_complete_check", scope: !3, file: !3, line: 243, type: !3218, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3728)
!3728 = !{!3729, !3730, !3731}
!3729 = !DILocalVariable(name: "pchan", arg: 1, scope: !3727, file: !3, line: 243, type: !1278)
!3730 = !DILocalVariable(name: "val", scope: !3727, file: !3, line: 245, type: !376)
!3731 = !DILocalVariable(name: "ret", scope: !3727, file: !3, line: 246, type: !46)
!3732 = !DILocation(line: 243, column: 63, scope: !3727)
!3733 = !DILocation(line: 245, column: 2, scope: !3727)
!3734 = !DILocation(line: 245, column: 6, scope: !3727)
!3735 = !DILocation(line: 246, column: 2, scope: !3727)
!3736 = !DILocation(line: 246, column: 6, scope: !3727)
!3737 = !DILocation(line: 248, column: 27, scope: !3727)
!3738 = !DILocation(line: 248, column: 34, scope: !3727)
!3739 = !DILocation(line: 248, column: 8, scope: !3727)
!3740 = !DILocation(line: 248, column: 6, scope: !3727)
!3741 = !DILocation(line: 249, column: 6, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 249, column: 6)
!3743 = !DILocation(line: 249, column: 6, scope: !3727)
!3744 = !DILocation(line: 250, column: 3, scope: !3742)
!3745 = !DILocation(line: 252, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 252, column: 6)
!3747 = !DILocation(line: 252, column: 14, scope: !3746)
!3748 = !DILocation(line: 252, column: 27, scope: !3746)
!3749 = !DILocation(line: 252, column: 6, scope: !3727)
!3750 = !DILocation(line: 253, column: 3, scope: !3746)
!3751 = !DILocation(line: 259, column: 9, scope: !3727)
!3752 = !DILocation(line: 259, column: 16, scope: !3727)
!3753 = !DILocation(line: 259, column: 29, scope: !3727)
!3754 = !DILocation(line: 259, column: 6, scope: !3727)
!3755 = !DILocation(line: 266, column: 6, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 266, column: 6)
!3757 = !DILocation(line: 266, column: 13, scope: !3756)
!3758 = !DILocation(line: 266, column: 18, scope: !3756)
!3759 = !DILocation(line: 266, column: 6, scope: !3727)
!3760 = !DILocation(line: 267, column: 11, scope: !3756)
!3761 = !DILocation(line: 267, column: 10, scope: !3756)
!3762 = !DILocation(line: 267, column: 3, scope: !3756)
!3763 = !DILocation(line: 269, column: 11, scope: !3727)
!3764 = !DILocation(line: 269, column: 10, scope: !3727)
!3765 = !DILocation(line: 269, column: 9, scope: !3727)
!3766 = !DILocation(line: 269, column: 2, scope: !3727)
!3767 = !DILocation(line: 270, column: 1, scope: !3727)
!3768 = !DISubprogram(name: "mbox_chan_received_data", scope: !1288, file: !1288, line: 132, type: !3769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !1286, !106}
!3771 = distinct !DISubprogram(name: "check_and_ack", scope: !3, file: !3, line: 272, type: !3772, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !1278, !1286}
!3774 = !{!3775, !3776, !3777}
!3775 = !DILocalVariable(name: "pchan", arg: 1, scope: !3771, file: !3, line: 272, type: !1278)
!3776 = !DILocalVariable(name: "chan", arg: 2, scope: !3771, file: !3, line: 272, type: !1286)
!3777 = !DILocalVariable(name: "pcc_hdr", scope: !3771, file: !3, line: 274, type: !3778)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcct_ext_pcc_shared_memory", file: !85, line: 2314, size: 128, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !3778, file: !85, line: 2315, baseType: !1059, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3778, file: !85, line: 2316, baseType: !1059, size: 32, offset: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3778, file: !85, line: 2317, baseType: !1059, size: 32, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !3778, file: !85, line: 2318, baseType: !1059, size: 32, offset: 96)
!3784 = !DILocation(line: 272, column: 49, scope: !3771)
!3785 = !DILocation(line: 272, column: 74, scope: !3771)
!3786 = !DILocation(line: 274, column: 2, scope: !3771)
!3787 = !DILocation(line: 274, column: 41, scope: !3771)
!3788 = !DILocation(line: 276, column: 6, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 276, column: 6)
!3790 = !DILocation(line: 276, column: 13, scope: !3789)
!3791 = !DILocation(line: 276, column: 18, scope: !3789)
!3792 = !DILocation(line: 276, column: 6, scope: !3771)
!3793 = !DILocation(line: 277, column: 3, scope: !3789)
!3794 = !DILocation(line: 282, column: 6, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 282, column: 6)
!3796 = !DILocation(line: 282, column: 13, scope: !3795)
!3797 = !DILocation(line: 282, column: 18, scope: !3795)
!3798 = !DILocation(line: 282, column: 24, scope: !3795)
!3799 = !DILocation(line: 282, column: 6, scope: !3771)
!3800 = !DILocation(line: 283, column: 35, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 282, column: 33)
!3802 = !DILocation(line: 283, column: 42, scope: !3801)
!3803 = !DILocation(line: 283, column: 3, scope: !3801)
!3804 = !DILocation(line: 284, column: 3, scope: !3801)
!3805 = !DILocation(line: 286, column: 26, scope: !3771)
!3806 = !DILocation(line: 286, column: 33, scope: !3771)
!3807 = !DILocation(line: 286, column: 38, scope: !3771)
!3808 = !DILocation(line: 286, column: 2, scope: !3771)
!3809 = !DILocation(line: 295, column: 28, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 295, column: 6)
!3811 = !DILocation(line: 295, column: 6, scope: !3810)
!3812 = !DILocation(line: 295, column: 35, scope: !3810)
!3813 = !DILocation(line: 295, column: 6, scope: !3771)
!3814 = !DILocation(line: 296, column: 17, scope: !3810)
!3815 = !DILocation(line: 296, column: 3, scope: !3810)
!3816 = !DILocation(line: 298, column: 35, scope: !3810)
!3817 = !DILocation(line: 298, column: 42, scope: !3810)
!3818 = !DILocation(line: 298, column: 3, scope: !3810)
!3819 = !DILocation(line: 299, column: 1, scope: !3771)
!3820 = !DISubprogram(name: "memcpy_fromio", scope: !2245, file: !2245, line: 204, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !106, !3516, !260}
!3823 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !3824, file: !3824, line: 57, type: !3825, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3830)
!3824 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e83ca9c46c7eccd1fa31a0d39b270d0a")
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!977, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !753, line: 38, baseType: !977)
!3830 = !{!3831}
!3831 = !DILocalVariable(name: "p", arg: 1, scope: !3823, file: !3824, line: 57, type: !3827)
!3832 = !DILocation(line: 57, column: 59, scope: !3823)
!3833 = !DILocation(line: 59, column: 25, scope: !3823)
!3834 = !DILocation(line: 59, column: 24, scope: !3823)
!3835 = !DILocation(line: 59, column: 2, scope: !3823)
!3836 = !DISubprogram(name: "devm_free_irq", scope: !3613, file: !3613, line: 223, type: !3837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !1295, !7, !106}
