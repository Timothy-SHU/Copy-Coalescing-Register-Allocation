; ModuleID = 'drivers/acpi/numa/srat.c'
source_filename = "drivers/acpi/numa/srat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pxm_to_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pxm_to_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_map_pxm_to_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_map_pxm_to_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_node ; .previous"

%struct.nodemask_t = type { [1 x i64] }
%struct.acpi_table_slit = type <{ %struct.acpi_table_header, i64, [0 x i8] }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_srat_mem_affinity = type <{ %struct.acpi_subtable_header, i32, i16, i64, i64, i32, i32, i64 }>
%struct.acpi_subtable_header = type { i8, i8 }
%struct.acpi_srat_x2apic_cpu_affinity = type { %struct.acpi_subtable_header, i16, i32, i32, i32, i32, i32 }
%struct.acpi_subtable_proc = type { i32, ptr, ptr, ptr, i32 }
%struct.acpi_table_srat = type { %struct.acpi_table_header, i32, i64 }
%struct.acpi_srat_generic_affinity = type { %struct.acpi_subtable_header, i8, i8, i32, [16 x i8], i32, i32 }
%struct.acpi_cedt_cfmws = type <{ %struct.acpi_cedt_header, i32, i64, i64, i8, i8, i16, i32, i16, i16, [0 x i32] }>
%struct.acpi_cedt_header = type { i8, i8, i16 }

@acpi_numa = internal global i32 0, section ".init.data", align 4, !dbg !0
@numa_off = external dso_local global i32, align 4
@pxm_to_node_map = internal global [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !247
@__UNIQUE_ID___addressable_pxm_to_node287 = internal global ptr @pxm_to_node, section ".discard.addressable", align 8, !dbg !180
@node_to_pxm_map = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !252
@nodes_found_map = internal global %struct.nodemask_t zeroinitializer, align 8, !dbg !257
@__UNIQUE_ID___addressable_acpi_map_pxm_to_node288 = internal global ptr @acpi_map_pxm_to_node, section ".discard.addressable", align 8, !dbg !182
@.str = private unnamed_addr constant [30 x i8] c"\013ACPI: SRAT: SRAT not used.\0A\00", align 1, !dbg !184
@.str.1 = private unnamed_addr constant [44 x i8] c"\013ACPI: SRAT: Unexpected header length: %d\0A\00", align 1, !dbg !189
@acpi_srat_revision = hidden global i8 0, section ".init.data", align 1, !dbg !243
@.str.2 = private unnamed_addr constant [43 x i8] c"\013ACPI: SRAT: Too many proximity domains.\0A\00", align 1, !dbg !194
@.str.3 = private unnamed_addr constant [69 x i8] c"\013ACPI: SRAT: Failed to add memblk to node %u [mem %#010Lx-%#010Lx]\0A\00", align 1, !dbg !199
@numa_nodes_parsed = external dso_local global %struct.nodemask_t, section ".init.data", align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"\016ACPI: SRAT: Node %u PXM %u [mem %#010Lx-%#010Lx]%s%s\0A\00", align 1, !dbg !204
@.str.5 = private unnamed_addr constant [9 x i8] c" hotplug\00", align 1, !dbg !209
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !214
@.str.7 = private unnamed_addr constant [14 x i8] c" non-volatile\00", align 1, !dbg !219
@.str.8 = private unnamed_addr constant [78 x i8] c"\014ACPI: SRAT: Failed to mark hotplug range [mem %#010Lx-%#010Lx] in memblock\0A\00", align 1, !dbg !224
@max_possible_pfn = external dso_local global i64, align 8
@.str.9 = private unnamed_addr constant [54 x i8] c"\014ACPI: Found unsupported x2apic [0x%08x] SRAT entry\0A\00", align 1, !dbg !229
@acpi_disabled = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"SRAT\00", align 1, !dbg !234
@.str.11 = private unnamed_addr constant [5 x i8] c"SLIT\00", align 1, !dbg !239
@parsed_numa_memblks = internal global i32 0, section ".init.data", align 4, !dbg !245
@__UNIQUE_ID___addressable_acpi_get_node291 = internal global ptr @acpi_get_node, section ".discard.addressable", align 8, !dbg !241
@.str.12 = private unnamed_addr constant [52 x i8] c"\014ACPI: Found unsupported SRAT entry (type = 0x%x)\0A\00", align 1, !dbg !264
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@.str.13 = private unnamed_addr constant [45 x i8] c"\016ACPI: SLIT table looks invalid. Not used.\0A\00", align 1, !dbg !269
@.str.14 = private unnamed_addr constant [71 x i8] c"\013ACPI: ACPI NUMA: Too many proximity domains while processing CFMWS.\0A\00", align 1, !dbg !274
@.str.15 = private unnamed_addr constant [77 x i8] c"\014ACPI: ACPI NUMA: Failed to add memblk for CFMWS node %d [mem %#llx-%#llx]\0A\00", align 1, !dbg !279
@.str.16 = private unnamed_addr constant [5 x i8] c"_PXM\00", align 1, !dbg !284
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_pxm_to_node287, ptr @__UNIQUE_ID___addressable_acpi_map_pxm_to_node288, ptr @__UNIQUE_ID___addressable_acpi_get_node291], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @disable_srat() #0 section ".init.text" align 16 !dbg !295 {
entry:
  store i32 -1, ptr @acpi_numa, align 4, !dbg !298
  ret void, !dbg !299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pxm_to_node(i32 noundef %pxm) #1 align 16 !dbg !300 {
entry:
  %retval = alloca i32, align 4
  %pxm.addr = alloca i32, align 4
  store i32 %pxm, ptr %pxm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pxm.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load i32, ptr %pxm.addr, align 4, !dbg !306
  %cmp = icmp slt i32 %0, 0, !dbg !308
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !309

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pxm.addr, align 4, !dbg !310
  %cmp1 = icmp sge i32 %1, 256, !dbg !311
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !312

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr @numa_off, align 4, !dbg !313
  %tobool = icmp ne i32 %2, 0, !dbg !313
  br i1 %tobool, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !315
  br label %return, !dbg !315

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i32, ptr %pxm.addr, align 4, !dbg !316
  %idxprom = sext i32 %3 to i64, !dbg !317
  %arrayidx = getelementptr [256 x i32], ptr @pxm_to_node_map, i64 0, i64 %idxprom, !dbg !317
  %4 = load i32, ptr %arrayidx, align 4, !dbg !317
  store i32 %4, ptr %retval, align 4, !dbg !318
  br label %return, !dbg !318

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !319
  ret i32 %5, !dbg !319
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @node_to_pxm(i32 noundef %node) #1 align 16 !dbg !320 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i32, ptr %node.addr, align 4, !dbg !324
  %cmp = icmp slt i32 %0, 0, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !328
  br label %return, !dbg !328

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %node.addr, align 4, !dbg !329
  %idxprom = sext i32 %1 to i64, !dbg !330
  %arrayidx = getelementptr [64 x i32], ptr @node_to_pxm_map, i64 0, i64 %idxprom, !dbg !330
  %2 = load i32, ptr %arrayidx, align 4, !dbg !330
  store i32 %2, ptr %retval, align 4, !dbg !331
  br label %return, !dbg !331

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !332
  ret i32 %3, !dbg !332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_map_pxm_to_node(i32 noundef %pxm) #1 align 16 !dbg !333 {
entry:
  %retval = alloca i32, align 4
  %pxm.addr = alloca i32, align 4
  %node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pxm, ptr %pxm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pxm.addr, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #10, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %node, metadata !336, metadata !DIExpression()), !dbg !339
  %0 = load i32, ptr %pxm.addr, align 4, !dbg !340
  %cmp = icmp slt i32 %0, 0, !dbg !342
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !343

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pxm.addr, align 4, !dbg !344
  %cmp1 = icmp sge i32 %1, 256, !dbg !345
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !346

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr @numa_off, align 4, !dbg !347
  %tobool = icmp ne i32 %2, 0, !dbg !347
  br i1 %tobool, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !349

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i32, ptr %pxm.addr, align 4, !dbg !350
  %idxprom = sext i32 %3 to i64, !dbg !351
  %arrayidx = getelementptr [256 x i32], ptr @pxm_to_node_map, i64 0, i64 %idxprom, !dbg !351
  %4 = load i32, ptr %arrayidx, align 4, !dbg !351
  store i32 %4, ptr %node, align 4, !dbg !352
  %5 = load i32, ptr %node, align 4, !dbg !353
  %cmp3 = icmp eq i32 %5, -1, !dbg !355
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !356

if.then4:                                         ; preds = %if.end
  %call = call i32 @__nodes_weight(ptr noundef @nodes_found_map, i32 noundef 64) #11, !dbg !357
  %cmp5 = icmp sge i32 %call, 64, !dbg !360
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !361

if.then6:                                         ; preds = %if.then4
  store i32 -1, ptr %retval, align 4, !dbg !362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end7:                                          ; preds = %if.then4
  %call8 = call i32 @__first_unset_node(ptr noundef @nodes_found_map) #11, !dbg !363
  store i32 %call8, ptr %node, align 4, !dbg !364
  %6 = load i32, ptr %pxm.addr, align 4, !dbg !365
  %7 = load i32, ptr %node, align 4, !dbg !366
  call void @__acpi_map_pxm_to_node(i32 noundef %6, i32 noundef %7) #11, !dbg !367
  %8 = load i32, ptr %node, align 4, !dbg !368
  call void @__node_set(i32 noundef %8, ptr noundef @nodes_found_map) #11, !dbg !368
  br label %if.end9, !dbg !369

if.end9:                                          ; preds = %if.end7, %if.end
  %9 = load i32, ptr %node, align 4, !dbg !370
  store i32 %9, ptr %retval, align 4, !dbg !371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !371

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #10, !dbg !372
  %10 = load i32, ptr %retval, align 4, !dbg !372
  ret i32 %10, !dbg !372
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__nodes_weight(ptr noundef %srcp, i32 noundef %nbits) #4 align 16 !dbg !373 {
entry:
  %srcp.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !379, metadata !DIExpression()), !dbg !381
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !380, metadata !DIExpression()), !dbg !382
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !383
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !384
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !383
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !385
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef %1) #11, !dbg !386
  ret i32 %call, !dbg !387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_unset_node(ptr noundef %maskp) #4 align 16 !dbg !388 {
entry:
  %maskp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x102 = alloca i32, align 4
  %__UNIQUE_ID___y103 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %maskp, ptr %maskp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maskp.addr, metadata !392, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x102) #10, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x102, metadata !393, metadata !DIExpression()), !dbg !397
  store i32 64, ptr %__UNIQUE_ID___x102, align 4, !dbg !397
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y103) #10, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y103, metadata !395, metadata !DIExpression()), !dbg !397
  %0 = load ptr, ptr %maskp.addr, align 8, !dbg !397
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !397
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !397
  %call = call i64 @find_first_zero_bit(ptr noundef %arraydecay, i64 noundef 64) #11, !dbg !397
  %conv = trunc i64 %call to i32, !dbg !397
  store i32 %conv, ptr %__UNIQUE_ID___y103, align 4, !dbg !397
  %1 = load i32, ptr %__UNIQUE_ID___x102, align 4, !dbg !397
  %2 = load i32, ptr %__UNIQUE_ID___y103, align 4, !dbg !397
  %cmp = icmp ult i32 %1, %2, !dbg !397
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !397

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x102, align 4, !dbg !397
  br label %cond.end, !dbg !397

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y103, align 4, !dbg !397
  br label %cond.end, !dbg !397

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !397
  store i32 %cond, ptr %tmp, align 4, !dbg !397
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y103) #10, !dbg !398
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x102) #10, !dbg !398
  %5 = load i32, ptr %tmp, align 4, !dbg !397
  ret i32 %5, !dbg !399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__acpi_map_pxm_to_node(i32 noundef %pxm, i32 noundef %node) #1 align 16 !dbg !400 {
entry:
  %pxm.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i32 %pxm, ptr %pxm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pxm.addr, metadata !404, metadata !DIExpression()), !dbg !406
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !405, metadata !DIExpression()), !dbg !407
  %0 = load i32, ptr %pxm.addr, align 4, !dbg !408
  %idxprom = sext i32 %0 to i64, !dbg !410
  %arrayidx = getelementptr [256 x i32], ptr @pxm_to_node_map, i64 0, i64 %idxprom, !dbg !410
  %1 = load i32, ptr %arrayidx, align 4, !dbg !410
  %cmp = icmp eq i32 %1, -1, !dbg !411
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !412

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %node.addr, align 4, !dbg !413
  %3 = load i32, ptr %pxm.addr, align 4, !dbg !414
  %idxprom1 = sext i32 %3 to i64, !dbg !415
  %arrayidx2 = getelementptr [256 x i32], ptr @pxm_to_node_map, i64 0, i64 %idxprom1, !dbg !415
  %4 = load i32, ptr %arrayidx2, align 4, !dbg !415
  %cmp3 = icmp slt i32 %2, %4, !dbg !416
  br i1 %cmp3, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, ptr %node.addr, align 4, !dbg !418
  %6 = load i32, ptr %pxm.addr, align 4, !dbg !419
  %idxprom4 = sext i32 %6 to i64, !dbg !420
  %arrayidx5 = getelementptr [256 x i32], ptr @pxm_to_node_map, i64 0, i64 %idxprom4, !dbg !420
  store i32 %5, ptr %arrayidx5, align 4, !dbg !421
  br label %if.end, !dbg !420

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load i32, ptr %node.addr, align 4, !dbg !422
  %idxprom6 = sext i32 %7 to i64, !dbg !424
  %arrayidx7 = getelementptr [64 x i32], ptr @node_to_pxm_map, i64 0, i64 %idxprom6, !dbg !424
  %8 = load i32, ptr %arrayidx7, align 4, !dbg !424
  %cmp8 = icmp eq i32 %8, -1, !dbg !425
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !426

lor.lhs.false9:                                   ; preds = %if.end
  %9 = load i32, ptr %pxm.addr, align 4, !dbg !427
  %10 = load i32, ptr %node.addr, align 4, !dbg !428
  %idxprom10 = sext i32 %10 to i64, !dbg !429
  %arrayidx11 = getelementptr [64 x i32], ptr @node_to_pxm_map, i64 0, i64 %idxprom10, !dbg !429
  %11 = load i32, ptr %arrayidx11, align 4, !dbg !429
  %cmp12 = icmp slt i32 %9, %11, !dbg !430
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !431

if.then13:                                        ; preds = %lor.lhs.false9, %if.end
  %12 = load i32, ptr %pxm.addr, align 4, !dbg !432
  %13 = load i32, ptr %node.addr, align 4, !dbg !433
  %idxprom14 = sext i32 %13 to i64, !dbg !434
  %arrayidx15 = getelementptr [64 x i32], ptr @node_to_pxm_map, i64 0, i64 %idxprom14, !dbg !434
  store i32 %12, ptr %arrayidx15, align 4, !dbg !435
  br label %if.end16, !dbg !434

if.end16:                                         ; preds = %if.then13, %lor.lhs.false9
  ret void, !dbg !436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__node_set(i32 noundef %node, ptr noundef %dstp) #5 align 16 !dbg !437 {
entry:
  %node.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !443, metadata !DIExpression()), !dbg !445
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !444, metadata !DIExpression()), !dbg !446
  %0 = load i32, ptr %node.addr, align 4, !dbg !447
  %conv = sext i32 %0 to i64, !dbg !447
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !448
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %1, i32 0, i32 0, !dbg !449
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !448
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #11, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @bad_srat() #0 section ".init.text" align 16 !dbg !452 {
entry:
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !453

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !455

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #12, !dbg !453
  store i32 %call, ptr %tmp, align 4, !dbg !455
  %0 = load i32, ptr %tmp, align 4, !dbg !453
  call void @disable_srat() #12, !dbg !457
  ret void, !dbg !458
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !459 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @srat_disabled() #0 section ".init.text" align 16 !dbg !465 {
entry:
  %0 = load i32, ptr @acpi_numa, align 4, !dbg !468
  %cmp = icmp slt i32 %0, 0, !dbg !469
  %conv = zext i1 %cmp to i32, !dbg !469
  ret i32 %conv, !dbg !470
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden i32 @numa_fill_memblks(i64 noundef %start, i64 noundef %end) #0 section ".init.text" align 16 !dbg !471 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !475, metadata !DIExpression()), !dbg !477
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !476, metadata !DIExpression()), !dbg !478
  ret i32 -1, !dbg !479
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_numa_slit_init(ptr noundef %slit) #0 section ".init.text" align 16 !dbg !480 {
entry:
  %slit.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %from_node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %to_node = alloca i32, align 4
  store ptr %slit, ptr %slit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slit.addr, metadata !484, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %i, metadata !485, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %j, metadata !486, metadata !DIExpression()), !dbg !499
  store i32 0, ptr %i, align 4, !dbg !500
  br label %for.cond, !dbg !501

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4, !dbg !502
  %conv = sext i32 %0 to i64, !dbg !502
  %1 = load ptr, ptr %slit.addr, align 8, !dbg !503
  %locality_count = getelementptr inbounds %struct.acpi_table_slit, ptr %1, i32 0, i32 1, !dbg !504
  %2 = load i64, ptr %locality_count, align 1, !dbg !504
  %cmp = icmp ult i64 %conv, %2, !dbg !505
  br i1 %cmp, label %for.body, label %for.end25, !dbg !506

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %from_node) #10, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %from_node, metadata !487, metadata !DIExpression()), !dbg !508
  %3 = load i32, ptr %i, align 4, !dbg !509
  %call = call i32 @pxm_to_node(i32 noundef %3) #11, !dbg !510
  store i32 %call, ptr %from_node, align 4, !dbg !508
  %4 = load i32, ptr %from_node, align 4, !dbg !511
  %cmp2 = icmp eq i32 %4, -1, !dbg !513
  br i1 %cmp2, label %if.then, label %if.end, !dbg !514

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !515

if.end:                                           ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !516
  br label %for.cond4, !dbg !517

for.cond4:                                        ; preds = %for.inc, %if.end
  %5 = load i32, ptr %j, align 4, !dbg !518
  %conv5 = sext i32 %5 to i64, !dbg !518
  %6 = load ptr, ptr %slit.addr, align 8, !dbg !519
  %locality_count6 = getelementptr inbounds %struct.acpi_table_slit, ptr %6, i32 0, i32 1, !dbg !520
  %7 = load i64, ptr %locality_count6, align 1, !dbg !520
  %cmp7 = icmp ult i64 %conv5, %7, !dbg !521
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !522

for.body9:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %to_node) #10, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %to_node, metadata !492, metadata !DIExpression()), !dbg !524
  %8 = load i32, ptr %j, align 4, !dbg !525
  %call10 = call i32 @pxm_to_node(i32 noundef %8) #11, !dbg !526
  store i32 %call10, ptr %to_node, align 4, !dbg !524
  %9 = load i32, ptr %to_node, align 4, !dbg !527
  %cmp11 = icmp eq i32 %9, -1, !dbg !529
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !530

if.then13:                                        ; preds = %for.body9
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !531

if.end14:                                         ; preds = %for.body9
  %10 = load i32, ptr %from_node, align 4, !dbg !532
  %11 = load i32, ptr %to_node, align 4, !dbg !533
  %12 = load ptr, ptr %slit.addr, align 8, !dbg !534
  %entry15 = getelementptr inbounds %struct.acpi_table_slit, ptr %12, i32 0, i32 2, !dbg !535
  %13 = load ptr, ptr %slit.addr, align 8, !dbg !536
  %locality_count16 = getelementptr inbounds %struct.acpi_table_slit, ptr %13, i32 0, i32 1, !dbg !537
  %14 = load i64, ptr %locality_count16, align 1, !dbg !537
  %15 = load i32, ptr %i, align 4, !dbg !538
  %conv17 = sext i32 %15 to i64, !dbg !538
  %mul = mul i64 %14, %conv17, !dbg !539
  %16 = load i32, ptr %j, align 4, !dbg !540
  %conv18 = sext i32 %16 to i64, !dbg !540
  %add = add i64 %mul, %conv18, !dbg !541
  %arrayidx = getelementptr [0 x i8], ptr %entry15, i64 0, i64 %add, !dbg !534
  %17 = load i8, ptr %arrayidx, align 1, !dbg !534
  %conv19 = zext i8 %17 to i32, !dbg !534
  call void @numa_set_distance(i32 noundef %10, i32 noundef %11, i32 noundef %conv19) #12, !dbg !542
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !543
  br label %cleanup, !dbg !543

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %to_node) #10, !dbg !543
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !544

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %18 = load i32, ptr %j, align 4, !dbg !545
  %inc = add i32 %18, 1, !dbg !545
  store i32 %inc, ptr %j, align 4, !dbg !545
  br label %for.cond4, !dbg !546, !llvm.loop !547

for.end:                                          ; preds = %for.cond4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !551
  br label %cleanup20, !dbg !551

cleanup20:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %from_node) #10, !dbg !551
  %cleanup.dest21 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest21, label %unreachable [
    i32 0, label %cleanup.cont22
    i32 4, label %for.inc23
  ]

cleanup.cont22:                                   ; preds = %cleanup20
  br label %for.inc23, !dbg !552

for.inc23:                                        ; preds = %cleanup.cont22, %cleanup20
  %19 = load i32, ptr %i, align 4, !dbg !553
  %inc24 = add i32 %19, 1, !dbg !553
  store i32 %inc24, ptr %i, align 4, !dbg !553
  br label %for.cond, !dbg !554, !llvm.loop !555

for.end25:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !557
  ret void, !dbg !557

unreachable:                                      ; preds = %cleanup20, %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !558 dso_local void @numa_set_distance(i32 noundef, i32 noundef, i32 noundef) #6 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_numa_memory_affinity_init(ptr noundef %ma) #0 section ".init.text" align 16 !dbg !562 {
entry:
  %retval = alloca i32, align 4
  %ma.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %hotpluggable = alloca i32, align 4
  %node = alloca i32, align 4
  %pxm = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %__UNIQUE_ID___x289 = alloca i64, align 8
  %__UNIQUE_ID___y290 = alloca i64, align 8
  %tmp65 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ma, ptr %ma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ma.addr, metadata !566, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %start, metadata !567, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %end, metadata !568, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 4, ptr %hotpluggable) #10, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %hotpluggable, metadata !569, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #10, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %node, metadata !570, metadata !DIExpression()), !dbg !584
  call void @llvm.lifetime.start.p0(i64 4, ptr %pxm) #10, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %pxm, metadata !571, metadata !DIExpression()), !dbg !585
  %call = call i32 @srat_disabled() #12, !dbg !586
  %tobool = icmp ne i32 %call, 0, !dbg !586
  br i1 %tobool, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !589

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %ma.addr, align 8, !dbg !590
  %header = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %0, i32 0, i32 0, !dbg !592
  %length = getelementptr inbounds %struct.acpi_subtable_header, ptr %header, i32 0, i32 1, !dbg !593
  %1 = load i8, ptr %length, align 1, !dbg !593
  %conv = zext i8 %1 to i64, !dbg !590
  %cmp = icmp ult i64 %conv, 40, !dbg !594
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !595

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !596

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !599

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !599

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %ma.addr, align 8, !dbg !596
  %header3 = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %2, i32 0, i32 0, !dbg !596
  %length4 = getelementptr inbounds %struct.acpi_subtable_header, ptr %header3, i32 0, i32 1, !dbg !596
  %3 = load i8, ptr %length4, align 1, !dbg !596
  %conv5 = zext i8 %3 to i32, !dbg !596
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %conv5) #12, !dbg !596
  store i32 %call6, ptr %tmp, align 4, !dbg !599
  %4 = load i32, ptr %tmp, align 4, !dbg !596
  br label %out_err_bad_srat, !dbg !601

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %ma.addr, align 8, !dbg !602
  %flags = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %5, i32 0, i32 6, !dbg !604
  %6 = load i32, ptr %flags, align 1, !dbg !604
  %and = and i32 %6, 1, !dbg !605
  %cmp8 = icmp eq i32 %and, 0, !dbg !606
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !607

if.then10:                                        ; preds = %if.end7
  br label %out_err, !dbg !608

if.end11:                                         ; preds = %if.end7
  store i32 0, ptr %hotpluggable, align 4, !dbg !609
  %7 = load ptr, ptr %ma.addr, align 8, !dbg !610
  %base_address = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %7, i32 0, i32 3, !dbg !611
  %8 = load i64, ptr %base_address, align 1, !dbg !611
  store i64 %8, ptr %start, align 8, !dbg !612
  %9 = load i64, ptr %start, align 8, !dbg !613
  %10 = load ptr, ptr %ma.addr, align 8, !dbg !614
  %length12 = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %10, i32 0, i32 4, !dbg !615
  %11 = load i64, ptr %length12, align 1, !dbg !615
  %add = add i64 %9, %11, !dbg !616
  store i64 %add, ptr %end, align 8, !dbg !617
  %12 = load ptr, ptr %ma.addr, align 8, !dbg !618
  %proximity_domain = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %12, i32 0, i32 1, !dbg !619
  %13 = load i32, ptr %proximity_domain, align 1, !dbg !619
  store i32 %13, ptr %pxm, align 4, !dbg !620
  %14 = load i8, ptr @acpi_srat_revision, align 1, !dbg !621
  %conv13 = zext i8 %14 to i32, !dbg !621
  %cmp14 = icmp sle i32 %conv13, 1, !dbg !623
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !624

if.then16:                                        ; preds = %if.end11
  %15 = load i32, ptr %pxm, align 4, !dbg !625
  %and17 = and i32 %15, 255, !dbg !625
  store i32 %and17, ptr %pxm, align 4, !dbg !625
  br label %if.end18, !dbg !626

if.end18:                                         ; preds = %if.then16, %if.end11
  %16 = load i32, ptr %pxm, align 4, !dbg !627
  %call19 = call i32 @acpi_map_pxm_to_node(i32 noundef %16) #11, !dbg !628
  store i32 %call19, ptr %node, align 4, !dbg !629
  %17 = load i32, ptr %node, align 4, !dbg !630
  %cmp20 = icmp eq i32 %17, -1, !dbg !632
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !633

if.then22:                                        ; preds = %if.end18
  br label %do.body23, !dbg !634

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !637

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !637

do.end25:                                         ; preds = %do.cond24
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #12, !dbg !634
  store i32 %call27, ptr %tmp26, align 4, !dbg !637
  %18 = load i32, ptr %tmp26, align 4, !dbg !634
  br label %out_err_bad_srat, !dbg !639

if.end28:                                         ; preds = %if.end18
  %19 = load i32, ptr %node, align 4, !dbg !640
  %20 = load i64, ptr %start, align 8, !dbg !642
  %21 = load i64, ptr %end, align 8, !dbg !643
  %call29 = call i32 @numa_add_memblk(i32 noundef %19, i64 noundef %20, i64 noundef %21) #12, !dbg !644
  %cmp30 = icmp slt i32 %call29, 0, !dbg !645
  br i1 %cmp30, label %if.then32, label %if.end38, !dbg !646

if.then32:                                        ; preds = %if.end28
  br label %do.body33, !dbg !647

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !650

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !650

do.end35:                                         ; preds = %do.cond34
  %22 = load i32, ptr %node, align 4, !dbg !647
  %23 = load i64, ptr %start, align 8, !dbg !647
  %24 = load i64, ptr %end, align 8, !dbg !647
  %sub = sub i64 %24, 1, !dbg !647
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %22, i64 noundef %23, i64 noundef %sub) #12, !dbg !647
  store i32 %call37, ptr %tmp36, align 4, !dbg !650
  %25 = load i32, ptr %tmp36, align 4, !dbg !647
  br label %out_err_bad_srat, !dbg !652

if.end38:                                         ; preds = %if.end28
  %26 = load i32, ptr %node, align 4, !dbg !653
  call void @__node_set(i32 noundef %26, ptr noundef @numa_nodes_parsed) #11, !dbg !653
  br label %do.body39, !dbg !654

do.body39:                                        ; preds = %if.end38
  br label %do.cond40, !dbg !656

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !656

do.end41:                                         ; preds = %do.cond40
  %27 = load i32, ptr %node, align 4, !dbg !654
  %28 = load i32, ptr %pxm, align 4, !dbg !654
  %29 = load i64, ptr %start, align 8, !dbg !654
  %30 = load i64, ptr %end, align 8, !dbg !654
  %sub43 = sub i64 %30, 1, !dbg !654
  %31 = load i32, ptr %hotpluggable, align 4, !dbg !654
  %tobool44 = icmp ne i32 %31, 0, !dbg !654
  %32 = zext i1 %tobool44 to i64, !dbg !654
  %cond = select i1 %tobool44, ptr @.str.5, ptr @.str.6, !dbg !654
  %33 = load ptr, ptr %ma.addr, align 8, !dbg !654
  %flags45 = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %33, i32 0, i32 6, !dbg !654
  %34 = load i32, ptr %flags45, align 1, !dbg !654
  %and46 = and i32 %34, 4, !dbg !654
  %tobool47 = icmp ne i32 %and46, 0, !dbg !654
  %35 = zext i1 %tobool47 to i64, !dbg !654
  %cond48 = select i1 %tobool47, ptr @.str.7, ptr @.str.6, !dbg !654
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %27, i32 noundef %28, i64 noundef %29, i64 noundef %sub43, ptr noundef %cond, ptr noundef %cond48) #12, !dbg !654
  store i32 %call49, ptr %tmp42, align 4, !dbg !656
  %36 = load i32, ptr %tmp42, align 4, !dbg !654
  %37 = load i32, ptr %hotpluggable, align 4, !dbg !658
  %tobool50 = icmp ne i32 %37, 0, !dbg !658
  br i1 %tobool50, label %land.lhs.true, label %if.end61, !dbg !660

land.lhs.true:                                    ; preds = %do.end41
  %38 = load i64, ptr %start, align 8, !dbg !661
  %39 = load ptr, ptr %ma.addr, align 8, !dbg !662
  %length51 = getelementptr inbounds %struct.acpi_srat_mem_affinity, ptr %39, i32 0, i32 4, !dbg !663
  %40 = load i64, ptr %length51, align 1, !dbg !663
  %call52 = call i32 @memblock_mark_hotplug(i64 noundef %38, i64 noundef %40) #11, !dbg !664
  %tobool53 = icmp ne i32 %call52, 0, !dbg !664
  br i1 %tobool53, label %if.then54, label %if.end61, !dbg !665

if.then54:                                        ; preds = %land.lhs.true
  br label %do.body55, !dbg !666

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !668

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !668

do.end57:                                         ; preds = %do.cond56
  %41 = load i64, ptr %start, align 8, !dbg !666
  %42 = load i64, ptr %end, align 8, !dbg !666
  %sub59 = sub i64 %42, 1, !dbg !666
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i64 noundef %41, i64 noundef %sub59) #12, !dbg !666
  store i32 %call60, ptr %tmp58, align 4, !dbg !668
  %43 = load i32, ptr %tmp58, align 4, !dbg !666
  br label %if.end61, !dbg !670

if.end61:                                         ; preds = %do.end57, %land.lhs.true, %do.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x289) #10, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x289, metadata !572, metadata !DIExpression()), !dbg !671
  %44 = load i64, ptr @max_possible_pfn, align 8, !dbg !671
  store i64 %44, ptr %__UNIQUE_ID___x289, align 8, !dbg !671
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y290) #10, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y290, metadata !574, metadata !DIExpression()), !dbg !671
  %45 = load i64, ptr %end, align 8, !dbg !671
  %sub62 = sub i64 %45, 1, !dbg !671
  %add63 = add i64 %sub62, 4096, !dbg !671
  %sub64 = sub i64 %add63, 1, !dbg !671
  %shr = lshr i64 %sub64, 12, !dbg !671
  store i64 %shr, ptr %__UNIQUE_ID___y290, align 8, !dbg !671
  %46 = load i64, ptr %__UNIQUE_ID___x289, align 8, !dbg !671
  %47 = load i64, ptr %__UNIQUE_ID___y290, align 8, !dbg !671
  %cmp66 = icmp ugt i64 %46, %47, !dbg !671
  br i1 %cmp66, label %cond.true, label %cond.false, !dbg !671

cond.true:                                        ; preds = %if.end61
  %48 = load i64, ptr %__UNIQUE_ID___x289, align 8, !dbg !671
  br label %cond.end, !dbg !671

cond.false:                                       ; preds = %if.end61
  %49 = load i64, ptr %__UNIQUE_ID___y290, align 8, !dbg !671
  br label %cond.end, !dbg !671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond68 = phi i64 [ %48, %cond.true ], [ %49, %cond.false ], !dbg !671
  store i64 %cond68, ptr %tmp65, align 8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y290) #10, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x289) #10, !dbg !672
  %50 = load i64, ptr %tmp65, align 8, !dbg !671
  store i64 %50, ptr @max_possible_pfn, align 8, !dbg !673
  store i32 0, ptr %retval, align 4, !dbg !674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !674

out_err_bad_srat:                                 ; preds = %do.end35, %do.end25, %do.end
  call void @llvm.dbg.label(metadata !575), !dbg !675
  call void @bad_srat() #12, !dbg !676
  br label %out_err, !dbg !676

out_err:                                          ; preds = %out_err_bad_srat, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !576), !dbg !677
  store i32 -22, ptr %retval, align 4, !dbg !678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !678

cleanup:                                          ; preds = %out_err, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %pxm) #10, !dbg !679
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #10, !dbg !679
  call void @llvm.lifetime.end.p0(i64 4, ptr %hotpluggable) #10, !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !679
  %51 = load i32, ptr %retval, align 4, !dbg !679
  ret i32 %51, !dbg !679
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !680 dso_local i32 @numa_add_memblk(i32 noundef, i64 noundef, i64 noundef) #6 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !683 dso_local i32 @memblock_mark_hotplug(i64 noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden void @acpi_numa_x2apic_affinity_init(ptr noundef %pa) #0 section ".init.text" align 16 !dbg !689 {
entry:
  %pa.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !693, metadata !DIExpression()), !dbg !694
  br label %do.body, !dbg !695

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !697

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pa.addr, align 8, !dbg !695
  %apic_id = getelementptr inbounds %struct.acpi_srat_x2apic_cpu_affinity, ptr %0, i32 0, i32 3, !dbg !695
  %1 = load i32, ptr %apic_id, align 1, !dbg !695
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %1) #12, !dbg !695
  store i32 %call, ptr %tmp, align 4, !dbg !697
  %2 = load i32, ptr %tmp, align 4, !dbg !695
  ret void, !dbg !699
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_numa_init() #0 section ".init.text" align 16 !dbg !700 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %fake_pxm = alloca i32, align 4
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %srat_proc = alloca [4 x %struct.acpi_subtable_proc], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %i, metadata !702, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 4, ptr %fake_pxm) #10, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %fake_pxm, metadata !703, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #10, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !704, metadata !DIExpression()), !dbg !746
  store i32 0, ptr %cnt, align 4, !dbg !746
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !747
  %tobool = icmp ne i32 %0, 0, !dbg !747
  br i1 %tobool, label %if.then, label %if.end, !dbg !749

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !750

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_table_parse(ptr noundef @.str.10, ptr noundef @acpi_parse_srat) #11, !dbg !751
  %tobool1 = icmp ne i32 %call, 0, !dbg !751
  br i1 %tobool1, label %if.end19, label %if.then2, !dbg !752

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 160, ptr %srat_proc) #10, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %srat_proc, metadata !705, metadata !DIExpression()), !dbg !754
  %arraydecay = getelementptr inbounds [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 0, !dbg !755
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 160, i1 false), !dbg !755
  %arrayidx = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 0, !dbg !756
  %id = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx, i32 0, i32 0, !dbg !757
  store i32 0, ptr %id, align 16, !dbg !758
  %arrayidx3 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 0, !dbg !759
  %handler = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx3, i32 0, i32 1, !dbg !760
  store ptr @acpi_parse_processor_affinity, ptr %handler, align 8, !dbg !761
  %arrayidx4 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 1, !dbg !762
  %id5 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx4, i32 0, i32 0, !dbg !763
  store i32 2, ptr %id5, align 8, !dbg !764
  %arrayidx6 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 1, !dbg !765
  %handler7 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx6, i32 0, i32 1, !dbg !766
  store ptr @acpi_parse_x2apic_affinity, ptr %handler7, align 8, !dbg !767
  %arrayidx8 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 2, !dbg !768
  %id9 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx8, i32 0, i32 0, !dbg !769
  store i32 3, ptr %id9, align 16, !dbg !770
  %arrayidx10 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 2, !dbg !771
  %handler11 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx10, i32 0, i32 1, !dbg !772
  store ptr @acpi_parse_gicc_affinity, ptr %handler11, align 8, !dbg !773
  %arrayidx12 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 3, !dbg !774
  %id13 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx12, i32 0, i32 0, !dbg !775
  store i32 5, ptr %id13, align 8, !dbg !776
  %arrayidx14 = getelementptr [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 3, !dbg !777
  %handler15 = getelementptr inbounds %struct.acpi_subtable_proc, ptr %arrayidx14, i32 0, i32 1, !dbg !778
  store ptr @acpi_parse_gi_affinity, ptr %handler15, align 8, !dbg !779
  %arraydecay16 = getelementptr inbounds [4 x %struct.acpi_subtable_proc], ptr %srat_proc, i64 0, i64 0, !dbg !780
  %call17 = call i32 @acpi_table_parse_entries_array(ptr noundef @.str.10, i64 noundef 48, ptr noundef %arraydecay16, i32 noundef 4, i32 noundef 0) #12, !dbg !781
  %call18 = call i32 @acpi_table_parse_srat(i32 noundef 1, ptr noundef @acpi_parse_memory_affinity, i32 noundef 0) #12, !dbg !782
  store i32 %call18, ptr %cnt, align 4, !dbg !783
  call void @llvm.lifetime.end.p0(i64 160, ptr %srat_proc) #10, !dbg !784
  br label %if.end19, !dbg !785

if.end19:                                         ; preds = %if.then2, %if.end
  %call20 = call i32 @acpi_table_parse(ptr noundef @.str.11, ptr noundef @acpi_parse_slit) #11, !dbg !786
  store i32 0, ptr %i, align 4, !dbg !787
  store i32 -1, ptr %fake_pxm, align 4, !dbg !789
  br label %for.cond, !dbg !790

for.cond:                                         ; preds = %for.inc, %if.end19
  %1 = load i32, ptr %i, align 4, !dbg !791
  %cmp = icmp slt i32 %1, 64, !dbg !793
  br i1 %cmp, label %for.body, label %for.end, !dbg !794

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !795
  %idxprom = sext i32 %2 to i64, !dbg !798
  %arrayidx21 = getelementptr [64 x i32], ptr @node_to_pxm_map, i64 0, i64 %idxprom, !dbg !798
  %3 = load i32, ptr %arrayidx21, align 4, !dbg !798
  %4 = load i32, ptr %fake_pxm, align 4, !dbg !799
  %cmp22 = icmp sgt i32 %3, %4, !dbg !800
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !801

if.then23:                                        ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !802
  %idxprom24 = sext i32 %5 to i64, !dbg !803
  %arrayidx25 = getelementptr [64 x i32], ptr @node_to_pxm_map, i64 0, i64 %idxprom24, !dbg !803
  %6 = load i32, ptr %arrayidx25, align 4, !dbg !803
  store i32 %6, ptr %fake_pxm, align 4, !dbg !804
  br label %if.end26, !dbg !805

if.end26:                                         ; preds = %if.then23, %for.body
  br label %for.inc, !dbg !806

for.inc:                                          ; preds = %if.end26
  %7 = load i32, ptr %i, align 4, !dbg !807
  %inc = add i32 %7, 1, !dbg !807
  store i32 %inc, ptr %i, align 4, !dbg !807
  br label %for.cond, !dbg !808, !llvm.loop !809

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %fake_pxm, align 4, !dbg !811
  %inc27 = add i32 %8, 1, !dbg !811
  store i32 %inc27, ptr %fake_pxm, align 4, !dbg !811
  %call28 = call i32 @acpi_table_parse_cedt(i32 noundef 1, ptr noundef @acpi_parse_cfmws, ptr noundef %fake_pxm) #12, !dbg !812
  %9 = load i32, ptr %cnt, align 4, !dbg !813
  %cmp29 = icmp slt i32 %9, 0, !dbg !815
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !816

if.then30:                                        ; preds = %for.end
  %10 = load i32, ptr %cnt, align 4, !dbg !817
  store i32 %10, ptr %retval, align 4, !dbg !818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !818

if.else:                                          ; preds = %for.end
  %11 = load i32, ptr @parsed_numa_memblks, align 4, !dbg !819
  %tobool31 = icmp ne i32 %11, 0, !dbg !819
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !821

if.then32:                                        ; preds = %if.else
  store i32 -2, ptr %retval, align 4, !dbg !822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !822

if.end33:                                         ; preds = %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  store i32 0, ptr %retval, align 4, !dbg !823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !823

cleanup:                                          ; preds = %if.end34, %if.then32, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #10, !dbg !824
  call void @llvm.lifetime.end.p0(i64 4, ptr %fake_pxm) #10, !dbg !824
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !824
  %12 = load i32, ptr %retval, align 4, !dbg !824
  ret i32 %12, !dbg !824
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !825 dso_local i32 @acpi_table_parse(ptr noundef, ptr noundef) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_srat(ptr noundef %table) #0 section ".init.text" align 16 !dbg !834 {
entry:
  %table.addr = alloca ptr, align 8
  %srat = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %srat) #10, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %srat, metadata !837, metadata !DIExpression()), !dbg !840
  %0 = load ptr, ptr %table.addr, align 8, !dbg !841
  store ptr %0, ptr %srat, align 8, !dbg !840
  %1 = load ptr, ptr %srat, align 8, !dbg !842
  %header = getelementptr inbounds %struct.acpi_table_srat, ptr %1, i32 0, i32 0, !dbg !843
  %revision = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 2, !dbg !844
  %2 = load i8, ptr %revision, align 1, !dbg !844
  store i8 %2, ptr @acpi_srat_revision, align 1, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %srat) #10, !dbg !846
  ret i32 0, !dbg !847
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_processor_affinity(ptr noundef %header, i64 noundef %end) #0 section ".init.text" align 16 !dbg !848 {
entry:
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %processor_affinity = alloca ptr, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !850, metadata !DIExpression()), !dbg !853
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !851, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %processor_affinity) #10, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %processor_affinity, metadata !852, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %header.addr, align 8, !dbg !857
  store ptr %0, ptr %processor_affinity, align 8, !dbg !858
  %1 = load ptr, ptr %header.addr, align 8, !dbg !859
  call void @acpi_table_print_srat_entry(ptr noundef %1) #12, !dbg !860
  %2 = load ptr, ptr %processor_affinity, align 8, !dbg !861
  call void @acpi_numa_processor_affinity_init(ptr noundef %2) #11, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %processor_affinity) #10, !dbg !863
  ret i32 0, !dbg !864
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_x2apic_affinity(ptr noundef %header, i64 noundef %end) #0 section ".init.text" align 16 !dbg !865 {
entry:
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %processor_affinity = alloca ptr, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !867, metadata !DIExpression()), !dbg !870
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !868, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 8, ptr %processor_affinity) #10, !dbg !872
  call void @llvm.dbg.declare(metadata ptr %processor_affinity, metadata !869, metadata !DIExpression()), !dbg !873
  %0 = load ptr, ptr %header.addr, align 8, !dbg !874
  store ptr %0, ptr %processor_affinity, align 8, !dbg !875
  %1 = load ptr, ptr %header.addr, align 8, !dbg !876
  call void @acpi_table_print_srat_entry(ptr noundef %1) #12, !dbg !877
  %2 = load ptr, ptr %processor_affinity, align 8, !dbg !878
  call void @acpi_numa_x2apic_affinity_init(ptr noundef %2) #12, !dbg !879
  call void @llvm.lifetime.end.p0(i64 8, ptr %processor_affinity) #10, !dbg !880
  ret i32 0, !dbg !881
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_gicc_affinity(ptr noundef %header, i64 noundef %end) #0 section ".init.text" align 16 !dbg !882 {
entry:
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %processor_affinity = alloca ptr, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !884, metadata !DIExpression()), !dbg !887
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !885, metadata !DIExpression()), !dbg !888
  call void @llvm.lifetime.start.p0(i64 8, ptr %processor_affinity) #10, !dbg !889
  call void @llvm.dbg.declare(metadata ptr %processor_affinity, metadata !886, metadata !DIExpression()), !dbg !890
  %0 = load ptr, ptr %header.addr, align 8, !dbg !891
  store ptr %0, ptr %processor_affinity, align 8, !dbg !892
  %1 = load ptr, ptr %header.addr, align 8, !dbg !893
  call void @acpi_table_print_srat_entry(ptr noundef %1) #12, !dbg !894
  %2 = load ptr, ptr %processor_affinity, align 8, !dbg !895
  call void @acpi_numa_gicc_affinity_init(ptr noundef %2) #11, !dbg !896
  call void @llvm.lifetime.end.p0(i64 8, ptr %processor_affinity) #10, !dbg !897
  ret i32 0, !dbg !898
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_gi_affinity(ptr noundef %header, i64 noundef %end) #0 section ".init.text" align 16 !dbg !899 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %gi_affinity = alloca ptr, align 8
  %node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !901, metadata !DIExpression()), !dbg !905
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 8, ptr %gi_affinity) #10, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %gi_affinity, metadata !903, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #10, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %node, metadata !904, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %header.addr, align 8, !dbg !911
  store ptr %0, ptr %gi_affinity, align 8, !dbg !912
  %1 = load ptr, ptr %gi_affinity, align 8, !dbg !913
  %tobool = icmp ne ptr %1, null, !dbg !913
  br i1 %tobool, label %if.end, label %if.then, !dbg !915

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !916

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %header.addr, align 8, !dbg !917
  call void @acpi_table_print_srat_entry(ptr noundef %2) #12, !dbg !918
  %3 = load ptr, ptr %gi_affinity, align 8, !dbg !919
  %flags = getelementptr inbounds %struct.acpi_srat_generic_affinity, ptr %3, i32 0, i32 5, !dbg !921
  %4 = load i32, ptr %flags, align 1, !dbg !921
  %and = and i32 %4, 1, !dbg !922
  %tobool1 = icmp ne i32 %and, 0, !dbg !922
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !923

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !924

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %gi_affinity, align 8, !dbg !925
  %proximity_domain = getelementptr inbounds %struct.acpi_srat_generic_affinity, ptr %5, i32 0, i32 3, !dbg !926
  %6 = load i32, ptr %proximity_domain, align 1, !dbg !926
  %call = call i32 @acpi_map_pxm_to_node(i32 noundef %6) #11, !dbg !927
  store i32 %call, ptr %node, align 4, !dbg !928
  %7 = load i32, ptr %node, align 4, !dbg !929
  %cmp = icmp eq i32 %7, -1, !dbg !931
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !932

lor.lhs.false:                                    ; preds = %if.end3
  %8 = load i32, ptr %node, align 4, !dbg !933
  %cmp4 = icmp sge i32 %8, 64, !dbg !934
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !935

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  br label %do.body, !dbg !936

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !939

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !939

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #12, !dbg !936
  store i32 %call6, ptr %tmp, align 4, !dbg !939
  %9 = load i32, ptr %tmp, align 4, !dbg !936
  store i32 -22, ptr %retval, align 4, !dbg !941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !941

if.end7:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr %node, align 4, !dbg !942
  call void @__node_set(i32 noundef %10, ptr noundef @numa_nodes_parsed) #11, !dbg !942
  %11 = load i32, ptr %node, align 4, !dbg !943
  call void @node_set_state(i32 noundef %11, i32 noundef 5) #11, !dbg !944
  store i32 0, ptr %retval, align 4, !dbg !945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #10, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %gi_affinity) #10, !dbg !946
  %12 = load i32, ptr %retval, align 4, !dbg !946
  ret i32 %12, !dbg !946
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !947 dso_local i32 @acpi_table_parse_entries_array(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #6 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_table_parse_srat(i32 noundef %id, ptr noundef %handler, i32 noundef %max_entries) #0 section ".init.text" align 16 !dbg !951 {
entry:
  %id.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %max_entries.addr = alloca i32, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !955, metadata !DIExpression()), !dbg !958
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !956, metadata !DIExpression()), !dbg !959
  store i32 %max_entries, ptr %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_entries.addr, metadata !957, metadata !DIExpression()), !dbg !960
  %0 = load i32, ptr %id.addr, align 4, !dbg !961
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !962
  %2 = load i32, ptr %max_entries.addr, align 4, !dbg !963
  %call = call i32 @acpi_table_parse_entries(ptr noundef @.str.10, i64 noundef 48, i32 noundef %0, ptr noundef %1, i32 noundef %2) #12, !dbg !964
  ret i32 %call, !dbg !965
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_memory_affinity(ptr noundef %header, i64 noundef %end) #0 section ".init.text" align 16 !dbg !966 {
entry:
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %memory_affinity = alloca ptr, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !968, metadata !DIExpression()), !dbg !971
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !969, metadata !DIExpression()), !dbg !972
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory_affinity) #10, !dbg !973
  call void @llvm.dbg.declare(metadata ptr %memory_affinity, metadata !970, metadata !DIExpression()), !dbg !974
  %0 = load ptr, ptr %header.addr, align 8, !dbg !975
  store ptr %0, ptr %memory_affinity, align 8, !dbg !976
  %1 = load ptr, ptr %header.addr, align 8, !dbg !977
  call void @acpi_table_print_srat_entry(ptr noundef %1) #12, !dbg !978
  %2 = load ptr, ptr %memory_affinity, align 8, !dbg !979
  %call = call i32 @acpi_numa_memory_affinity_init(ptr noundef %2) #12, !dbg !981
  %tobool = icmp ne i32 %call, 0, !dbg !981
  br i1 %tobool, label %if.end, label %if.then, !dbg !982

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @parsed_numa_memblks, align 4, !dbg !983
  %inc = add i32 %3, 1, !dbg !983
  store i32 %inc, ptr @parsed_numa_memblks, align 4, !dbg !983
  br label %if.end, !dbg !984

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory_affinity) #10, !dbg !985
  ret i32 0, !dbg !986
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_slit(ptr noundef %table) #0 section ".init.text" align 16 !dbg !987 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %slit = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !989, metadata !DIExpression()), !dbg !991
  call void @llvm.lifetime.start.p0(i64 8, ptr %slit) #10, !dbg !992
  call void @llvm.dbg.declare(metadata ptr %slit, metadata !990, metadata !DIExpression()), !dbg !993
  %0 = load ptr, ptr %table.addr, align 8, !dbg !994
  store ptr %0, ptr %slit, align 8, !dbg !993
  %1 = load ptr, ptr %slit, align 8, !dbg !995
  %call = call i32 @slit_valid(ptr noundef %1) #12, !dbg !997
  %tobool = icmp ne i32 %call, 0, !dbg !997
  br i1 %tobool, label %if.end, label %if.then, !dbg !998

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !999

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1002

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1002

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #12, !dbg !999
  store i32 %call1, ptr %tmp, align 4, !dbg !1002
  %2 = load i32, ptr %tmp, align 4, !dbg !999
  store i32 -22, ptr %retval, align 4, !dbg !1004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1004

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %slit, align 8, !dbg !1005
  call void @acpi_numa_slit_init(ptr noundef %3) #12, !dbg !1006
  store i32 0, ptr %retval, align 4, !dbg !1007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %slit) #10, !dbg !1008
  %4 = load i32, ptr %retval, align 4, !dbg !1008
  ret i32 %4, !dbg !1008
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1009 dso_local i32 @acpi_table_parse_cedt(i32 noundef, ptr noundef, ptr noundef) #6 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_cfmws(ptr noundef %header, ptr noundef %arg, i64 noundef %table_end) #0 section ".init.text" align 16 !dbg !1012 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %table_end.addr = alloca i64, align 8
  %cfmws = alloca ptr, align 8
  %fake_pxm = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !1014, metadata !DIExpression()), !dbg !1023
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1015, metadata !DIExpression()), !dbg !1024
  store i64 %table_end, ptr %table_end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_end.addr, metadata !1016, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfmws) #10, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %cfmws, metadata !1017, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %fake_pxm) #10, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %fake_pxm, metadata !1018, metadata !DIExpression()), !dbg !1029
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !1030
  store ptr %0, ptr %fake_pxm, align 8, !dbg !1029
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1020, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1021, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #10, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1022, metadata !DIExpression()), !dbg !1035
  %1 = load ptr, ptr %header.addr, align 8, !dbg !1036
  store ptr %1, ptr %cfmws, align 8, !dbg !1037
  %2 = load ptr, ptr %cfmws, align 8, !dbg !1038
  %base_hpa = getelementptr inbounds %struct.acpi_cedt_cfmws, ptr %2, i32 0, i32 2, !dbg !1039
  %3 = load i64, ptr %base_hpa, align 1, !dbg !1039
  store i64 %3, ptr %start, align 8, !dbg !1040
  %4 = load ptr, ptr %cfmws, align 8, !dbg !1041
  %base_hpa1 = getelementptr inbounds %struct.acpi_cedt_cfmws, ptr %4, i32 0, i32 2, !dbg !1042
  %5 = load i64, ptr %base_hpa1, align 1, !dbg !1042
  %6 = load ptr, ptr %cfmws, align 8, !dbg !1043
  %window_size = getelementptr inbounds %struct.acpi_cedt_cfmws, ptr %6, i32 0, i32 3, !dbg !1044
  %7 = load i64, ptr %window_size, align 1, !dbg !1044
  %add = add i64 %5, %7, !dbg !1045
  store i64 %add, ptr %end, align 8, !dbg !1046
  %8 = load i64, ptr %start, align 8, !dbg !1047
  %9 = load i64, ptr %end, align 8, !dbg !1049
  %call = call i32 @numa_fill_memblks(i64 noundef %8, i64 noundef %9) #12, !dbg !1050
  %tobool = icmp ne i32 %call, 0, !dbg !1050
  br i1 %tobool, label %if.end, label %if.then, !dbg !1051

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %fake_pxm, align 8, !dbg !1053
  %11 = load i32, ptr %10, align 4, !dbg !1054
  %call2 = call i32 @acpi_map_pxm_to_node(i32 noundef %11) #11, !dbg !1055
  store i32 %call2, ptr %node, align 4, !dbg !1056
  %12 = load i32, ptr %node, align 4, !dbg !1057
  %cmp = icmp eq i32 %12, -1, !dbg !1059
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1060

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !1061

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !1064

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1064

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #12, !dbg !1061
  store i32 %call4, ptr %tmp, align 4, !dbg !1064
  %13 = load i32, ptr %tmp, align 4, !dbg !1061
  store i32 -22, ptr %retval, align 4, !dbg !1066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1066

if.end5:                                          ; preds = %if.end
  %14 = load i32, ptr %node, align 4, !dbg !1067
  %15 = load i64, ptr %start, align 8, !dbg !1069
  %16 = load i64, ptr %end, align 8, !dbg !1070
  %call6 = call i32 @numa_add_memblk(i32 noundef %14, i64 noundef %15, i64 noundef %16) #12, !dbg !1071
  %cmp7 = icmp slt i32 %call6, 0, !dbg !1072
  br i1 %cmp7, label %if.then8, label %if.end14, !dbg !1073

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !1074

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !1077

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1077

do.end11:                                         ; preds = %do.cond10
  %17 = load i32, ptr %node, align 4, !dbg !1074
  %18 = load i64, ptr %start, align 8, !dbg !1074
  %19 = load i64, ptr %end, align 8, !dbg !1074
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i32 noundef %17, i64 noundef %18, i64 noundef %19) #12, !dbg !1074
  store i32 %call13, ptr %tmp12, align 4, !dbg !1077
  %20 = load i32, ptr %tmp12, align 4, !dbg !1074
  br label %if.end14, !dbg !1079

if.end14:                                         ; preds = %do.end11, %if.end5
  %21 = load i32, ptr %node, align 4, !dbg !1080
  call void @__node_set(i32 noundef %21, ptr noundef @numa_nodes_parsed) #11, !dbg !1080
  %22 = load ptr, ptr %fake_pxm, align 8, !dbg !1081
  %23 = load i32, ptr %22, align 4, !dbg !1082
  %inc = add i32 %23, 1, !dbg !1082
  store i32 %inc, ptr %22, align 4, !dbg !1082
  store i32 0, ptr %retval, align 4, !dbg !1083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1083

cleanup:                                          ; preds = %if.end14, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #10, !dbg !1084
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !1084
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !1084
  call void @llvm.lifetime.end.p0(i64 8, ptr %fake_pxm) #10, !dbg !1084
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfmws) #10, !dbg !1084
  %24 = load i32, ptr %retval, align 4, !dbg !1084
  ret i32 %24, !dbg !1084
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_node(ptr noundef %handle) #1 align 16 !dbg !1085 {
entry:
  %handle.addr = alloca ptr, align 8
  %pxm = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1091, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 4, ptr %pxm) #10, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %pxm, metadata !1092, metadata !DIExpression()), !dbg !1095
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1096
  %call = call i32 @acpi_get_pxm(ptr noundef %0) #11, !dbg !1097
  store i32 %call, ptr %pxm, align 4, !dbg !1098
  %1 = load i32, ptr %pxm, align 4, !dbg !1099
  %call1 = call i32 @pxm_to_node(i32 noundef %1) #11, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 4, ptr %pxm) #10, !dbg !1101
  ret i32 %call1, !dbg !1102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_get_pxm(ptr noundef %h) #1 align 16 !dbg !1103 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %pxm = alloca i64, align 8
  %status = alloca i32, align 4
  %handle = alloca ptr, align 8
  %phandle = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1105, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 8, ptr %pxm) #10, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %pxm, metadata !1106, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1107, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #10, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !1109, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 8, ptr %phandle) #10, !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %phandle, metadata !1110, metadata !DIExpression()), !dbg !1119
  %0 = load ptr, ptr %h.addr, align 8, !dbg !1120
  store ptr %0, ptr %phandle, align 8, !dbg !1119
  br label %do.body, !dbg !1121

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %phandle, align 8, !dbg !1122
  store ptr %1, ptr %handle, align 8, !dbg !1124
  %2 = load ptr, ptr %handle, align 8, !dbg !1125
  %call = call i32 @acpi_evaluate_integer(ptr noundef %2, ptr noundef @.str.16, ptr noundef null, ptr noundef %pxm) #11, !dbg !1126
  store i32 %call, ptr %status, align 4, !dbg !1127
  %3 = load i32, ptr %status, align 4, !dbg !1128
  %tobool = icmp ne i32 %3, 0, !dbg !1128
  br i1 %tobool, label %if.end, label %if.then, !dbg !1130

if.then:                                          ; preds = %do.body
  %4 = load i64, ptr %pxm, align 8, !dbg !1131
  %conv = trunc i64 %4 to i32, !dbg !1131
  store i32 %conv, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1132

if.end:                                           ; preds = %do.body
  %5 = load ptr, ptr %handle, align 8, !dbg !1133
  %call1 = call i32 @acpi_get_parent(ptr noundef %5, ptr noundef %phandle) #11, !dbg !1134
  store i32 %call1, ptr %status, align 4, !dbg !1135
  br label %do.cond, !dbg !1136

do.cond:                                          ; preds = %if.end
  %6 = load i32, ptr %status, align 4, !dbg !1137
  %tobool2 = icmp ne i32 %6, 0, !dbg !1137
  %lnot = xor i1 %tobool2, true, !dbg !1137
  br i1 %lnot, label %do.body, label %do.end, !dbg !1136, !llvm.loop !1138

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %phandle) #10, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #10, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 8, ptr %pxm) #10, !dbg !1141
  %7 = load i32, ptr %retval, align 4, !dbg !1141
  ret i32 %7, !dbg !1141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !1142 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1148, metadata !DIExpression()), !dbg !1150
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1149, metadata !DIExpression()), !dbg !1151
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1152
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1152
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1152

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1152
  %cmp = icmp ule i32 %2, 64, !dbg !1152
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1152

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1152
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1152
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1154

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1155
  %5 = load i64, ptr %4, align 8, !dbg !1156
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !1157
  %sub = sub i32 0, %6, !dbg !1157
  %and = and i32 %sub, 63, !dbg !1157
  %sh_prom = zext i32 %and to i64, !dbg !1157
  %shr = lshr i64 -1, %sh_prom, !dbg !1157
  %and3 = and i64 %5, %shr, !dbg !1158
  %call = call i64 @hweight_long(i64 noundef %and3) #11, !dbg !1159
  %conv = trunc i64 %call to i32, !dbg !1159
  store i32 %conv, ptr %retval, align 4, !dbg !1160
  br label %return, !dbg !1160

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1161
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1162
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #11, !dbg !1163
  store i32 %call4, ptr %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1165
  ret i32 %9, !dbg !1165
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #5 align 16 !dbg !1166 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  %0 = load i64, ptr %w.addr, align 8, !dbg !1173
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1173
  br i1 %1, label %cond.true, label %cond.false, !dbg !1173

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and = and i64 %2, 1, !dbg !1173
  %tobool = icmp ne i64 %and, 0, !dbg !1173
  %lnot = xor i1 %tobool, true, !dbg !1173
  %lnot1 = xor i1 %lnot, true, !dbg !1173
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1173
  %3 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and2 = and i64 %3, 2, !dbg !1173
  %tobool3 = icmp ne i64 %and2, 0, !dbg !1173
  %lnot4 = xor i1 %tobool3, true, !dbg !1173
  %lnot6 = xor i1 %lnot4, true, !dbg !1173
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1173
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !1173
  %4 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and8 = and i64 %4, 4, !dbg !1173
  %tobool9 = icmp ne i64 %and8, 0, !dbg !1173
  %lnot10 = xor i1 %tobool9, true, !dbg !1173
  %lnot12 = xor i1 %lnot10, true, !dbg !1173
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !1173
  %add14 = add i32 %add, %lnot.ext13, !dbg !1173
  %5 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and15 = and i64 %5, 8, !dbg !1173
  %tobool16 = icmp ne i64 %and15, 0, !dbg !1173
  %lnot17 = xor i1 %tobool16, true, !dbg !1173
  %lnot19 = xor i1 %lnot17, true, !dbg !1173
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1173
  %add21 = add i32 %add14, %lnot.ext20, !dbg !1173
  %6 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and22 = and i64 %6, 16, !dbg !1173
  %tobool23 = icmp ne i64 %and22, 0, !dbg !1173
  %lnot24 = xor i1 %tobool23, true, !dbg !1173
  %lnot26 = xor i1 %lnot24, true, !dbg !1173
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !1173
  %add28 = add i32 %add21, %lnot.ext27, !dbg !1173
  %7 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and29 = and i64 %7, 32, !dbg !1173
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1173
  %lnot31 = xor i1 %tobool30, true, !dbg !1173
  %lnot33 = xor i1 %lnot31, true, !dbg !1173
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !1173
  %add35 = add i32 %add28, %lnot.ext34, !dbg !1173
  %8 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and36 = and i64 %8, 64, !dbg !1173
  %tobool37 = icmp ne i64 %and36, 0, !dbg !1173
  %lnot38 = xor i1 %tobool37, true, !dbg !1173
  %lnot40 = xor i1 %lnot38, true, !dbg !1173
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !1173
  %add42 = add i32 %add35, %lnot.ext41, !dbg !1173
  %9 = load i64, ptr %w.addr, align 8, !dbg !1173
  %and43 = and i64 %9, 128, !dbg !1173
  %tobool44 = icmp ne i64 %and43, 0, !dbg !1173
  %lnot45 = xor i1 %tobool44, true, !dbg !1173
  %lnot47 = xor i1 %lnot45, true, !dbg !1173
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !1173
  %add49 = add i32 %add42, %lnot.ext48, !dbg !1173
  %10 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr = lshr i64 %10, 8, !dbg !1173
  %and50 = and i64 %shr, 1, !dbg !1173
  %tobool51 = icmp ne i64 %and50, 0, !dbg !1173
  %lnot52 = xor i1 %tobool51, true, !dbg !1173
  %lnot54 = xor i1 %lnot52, true, !dbg !1173
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !1173
  %11 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr56 = lshr i64 %11, 8, !dbg !1173
  %and57 = and i64 %shr56, 2, !dbg !1173
  %tobool58 = icmp ne i64 %and57, 0, !dbg !1173
  %lnot59 = xor i1 %tobool58, true, !dbg !1173
  %lnot61 = xor i1 %lnot59, true, !dbg !1173
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !1173
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !1173
  %12 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr64 = lshr i64 %12, 8, !dbg !1173
  %and65 = and i64 %shr64, 4, !dbg !1173
  %tobool66 = icmp ne i64 %and65, 0, !dbg !1173
  %lnot67 = xor i1 %tobool66, true, !dbg !1173
  %lnot69 = xor i1 %lnot67, true, !dbg !1173
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !1173
  %add71 = add i32 %add63, %lnot.ext70, !dbg !1173
  %13 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr72 = lshr i64 %13, 8, !dbg !1173
  %and73 = and i64 %shr72, 8, !dbg !1173
  %tobool74 = icmp ne i64 %and73, 0, !dbg !1173
  %lnot75 = xor i1 %tobool74, true, !dbg !1173
  %lnot77 = xor i1 %lnot75, true, !dbg !1173
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !1173
  %add79 = add i32 %add71, %lnot.ext78, !dbg !1173
  %14 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr80 = lshr i64 %14, 8, !dbg !1173
  %and81 = and i64 %shr80, 16, !dbg !1173
  %tobool82 = icmp ne i64 %and81, 0, !dbg !1173
  %lnot83 = xor i1 %tobool82, true, !dbg !1173
  %lnot85 = xor i1 %lnot83, true, !dbg !1173
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1173
  %add87 = add i32 %add79, %lnot.ext86, !dbg !1173
  %15 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr88 = lshr i64 %15, 8, !dbg !1173
  %and89 = and i64 %shr88, 32, !dbg !1173
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1173
  %lnot91 = xor i1 %tobool90, true, !dbg !1173
  %lnot93 = xor i1 %lnot91, true, !dbg !1173
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !1173
  %add95 = add i32 %add87, %lnot.ext94, !dbg !1173
  %16 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr96 = lshr i64 %16, 8, !dbg !1173
  %and97 = and i64 %shr96, 64, !dbg !1173
  %tobool98 = icmp ne i64 %and97, 0, !dbg !1173
  %lnot99 = xor i1 %tobool98, true, !dbg !1173
  %lnot101 = xor i1 %lnot99, true, !dbg !1173
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !1173
  %add103 = add i32 %add95, %lnot.ext102, !dbg !1173
  %17 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr104 = lshr i64 %17, 8, !dbg !1173
  %and105 = and i64 %shr104, 128, !dbg !1173
  %tobool106 = icmp ne i64 %and105, 0, !dbg !1173
  %lnot107 = xor i1 %tobool106, true, !dbg !1173
  %lnot109 = xor i1 %lnot107, true, !dbg !1173
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !1173
  %add111 = add i32 %add103, %lnot.ext110, !dbg !1173
  %add112 = add i32 %add49, %add111, !dbg !1173
  %18 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr113 = lshr i64 %18, 16, !dbg !1173
  %and114 = and i64 %shr113, 1, !dbg !1173
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1173
  %lnot116 = xor i1 %tobool115, true, !dbg !1173
  %lnot118 = xor i1 %lnot116, true, !dbg !1173
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !1173
  %19 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr120 = lshr i64 %19, 16, !dbg !1173
  %and121 = and i64 %shr120, 2, !dbg !1173
  %tobool122 = icmp ne i64 %and121, 0, !dbg !1173
  %lnot123 = xor i1 %tobool122, true, !dbg !1173
  %lnot125 = xor i1 %lnot123, true, !dbg !1173
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !1173
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !1173
  %20 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr128 = lshr i64 %20, 16, !dbg !1173
  %and129 = and i64 %shr128, 4, !dbg !1173
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1173
  %lnot131 = xor i1 %tobool130, true, !dbg !1173
  %lnot133 = xor i1 %lnot131, true, !dbg !1173
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !1173
  %add135 = add i32 %add127, %lnot.ext134, !dbg !1173
  %21 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr136 = lshr i64 %21, 16, !dbg !1173
  %and137 = and i64 %shr136, 8, !dbg !1173
  %tobool138 = icmp ne i64 %and137, 0, !dbg !1173
  %lnot139 = xor i1 %tobool138, true, !dbg !1173
  %lnot141 = xor i1 %lnot139, true, !dbg !1173
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !1173
  %add143 = add i32 %add135, %lnot.ext142, !dbg !1173
  %22 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr144 = lshr i64 %22, 16, !dbg !1173
  %and145 = and i64 %shr144, 16, !dbg !1173
  %tobool146 = icmp ne i64 %and145, 0, !dbg !1173
  %lnot147 = xor i1 %tobool146, true, !dbg !1173
  %lnot149 = xor i1 %lnot147, true, !dbg !1173
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !1173
  %add151 = add i32 %add143, %lnot.ext150, !dbg !1173
  %23 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr152 = lshr i64 %23, 16, !dbg !1173
  %and153 = and i64 %shr152, 32, !dbg !1173
  %tobool154 = icmp ne i64 %and153, 0, !dbg !1173
  %lnot155 = xor i1 %tobool154, true, !dbg !1173
  %lnot157 = xor i1 %lnot155, true, !dbg !1173
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !1173
  %add159 = add i32 %add151, %lnot.ext158, !dbg !1173
  %24 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr160 = lshr i64 %24, 16, !dbg !1173
  %and161 = and i64 %shr160, 64, !dbg !1173
  %tobool162 = icmp ne i64 %and161, 0, !dbg !1173
  %lnot163 = xor i1 %tobool162, true, !dbg !1173
  %lnot165 = xor i1 %lnot163, true, !dbg !1173
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !1173
  %add167 = add i32 %add159, %lnot.ext166, !dbg !1173
  %25 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr168 = lshr i64 %25, 16, !dbg !1173
  %and169 = and i64 %shr168, 128, !dbg !1173
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1173
  %lnot171 = xor i1 %tobool170, true, !dbg !1173
  %lnot173 = xor i1 %lnot171, true, !dbg !1173
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !1173
  %add175 = add i32 %add167, %lnot.ext174, !dbg !1173
  %26 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr176 = lshr i64 %26, 16, !dbg !1173
  %shr177 = lshr i64 %shr176, 8, !dbg !1173
  %and178 = and i64 %shr177, 1, !dbg !1173
  %tobool179 = icmp ne i64 %and178, 0, !dbg !1173
  %lnot180 = xor i1 %tobool179, true, !dbg !1173
  %lnot182 = xor i1 %lnot180, true, !dbg !1173
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !1173
  %27 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr184 = lshr i64 %27, 16, !dbg !1173
  %shr185 = lshr i64 %shr184, 8, !dbg !1173
  %and186 = and i64 %shr185, 2, !dbg !1173
  %tobool187 = icmp ne i64 %and186, 0, !dbg !1173
  %lnot188 = xor i1 %tobool187, true, !dbg !1173
  %lnot190 = xor i1 %lnot188, true, !dbg !1173
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !1173
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !1173
  %28 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr193 = lshr i64 %28, 16, !dbg !1173
  %shr194 = lshr i64 %shr193, 8, !dbg !1173
  %and195 = and i64 %shr194, 4, !dbg !1173
  %tobool196 = icmp ne i64 %and195, 0, !dbg !1173
  %lnot197 = xor i1 %tobool196, true, !dbg !1173
  %lnot199 = xor i1 %lnot197, true, !dbg !1173
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !1173
  %add201 = add i32 %add192, %lnot.ext200, !dbg !1173
  %29 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr202 = lshr i64 %29, 16, !dbg !1173
  %shr203 = lshr i64 %shr202, 8, !dbg !1173
  %and204 = and i64 %shr203, 8, !dbg !1173
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1173
  %lnot206 = xor i1 %tobool205, true, !dbg !1173
  %lnot208 = xor i1 %lnot206, true, !dbg !1173
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !1173
  %add210 = add i32 %add201, %lnot.ext209, !dbg !1173
  %30 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr211 = lshr i64 %30, 16, !dbg !1173
  %shr212 = lshr i64 %shr211, 8, !dbg !1173
  %and213 = and i64 %shr212, 16, !dbg !1173
  %tobool214 = icmp ne i64 %and213, 0, !dbg !1173
  %lnot215 = xor i1 %tobool214, true, !dbg !1173
  %lnot217 = xor i1 %lnot215, true, !dbg !1173
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !1173
  %add219 = add i32 %add210, %lnot.ext218, !dbg !1173
  %31 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr220 = lshr i64 %31, 16, !dbg !1173
  %shr221 = lshr i64 %shr220, 8, !dbg !1173
  %and222 = and i64 %shr221, 32, !dbg !1173
  %tobool223 = icmp ne i64 %and222, 0, !dbg !1173
  %lnot224 = xor i1 %tobool223, true, !dbg !1173
  %lnot226 = xor i1 %lnot224, true, !dbg !1173
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !1173
  %add228 = add i32 %add219, %lnot.ext227, !dbg !1173
  %32 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr229 = lshr i64 %32, 16, !dbg !1173
  %shr230 = lshr i64 %shr229, 8, !dbg !1173
  %and231 = and i64 %shr230, 64, !dbg !1173
  %tobool232 = icmp ne i64 %and231, 0, !dbg !1173
  %lnot233 = xor i1 %tobool232, true, !dbg !1173
  %lnot235 = xor i1 %lnot233, true, !dbg !1173
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !1173
  %add237 = add i32 %add228, %lnot.ext236, !dbg !1173
  %33 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr238 = lshr i64 %33, 16, !dbg !1173
  %shr239 = lshr i64 %shr238, 8, !dbg !1173
  %and240 = and i64 %shr239, 128, !dbg !1173
  %tobool241 = icmp ne i64 %and240, 0, !dbg !1173
  %lnot242 = xor i1 %tobool241, true, !dbg !1173
  %lnot244 = xor i1 %lnot242, true, !dbg !1173
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !1173
  %add246 = add i32 %add237, %lnot.ext245, !dbg !1173
  %add247 = add i32 %add175, %add246, !dbg !1173
  %add248 = add i32 %add112, %add247, !dbg !1173
  %34 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr249 = lshr i64 %34, 32, !dbg !1173
  %and250 = and i64 %shr249, 1, !dbg !1173
  %tobool251 = icmp ne i64 %and250, 0, !dbg !1173
  %lnot252 = xor i1 %tobool251, true, !dbg !1173
  %lnot254 = xor i1 %lnot252, true, !dbg !1173
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !1173
  %35 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr256 = lshr i64 %35, 32, !dbg !1173
  %and257 = and i64 %shr256, 2, !dbg !1173
  %tobool258 = icmp ne i64 %and257, 0, !dbg !1173
  %lnot259 = xor i1 %tobool258, true, !dbg !1173
  %lnot261 = xor i1 %lnot259, true, !dbg !1173
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !1173
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !1173
  %36 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr264 = lshr i64 %36, 32, !dbg !1173
  %and265 = and i64 %shr264, 4, !dbg !1173
  %tobool266 = icmp ne i64 %and265, 0, !dbg !1173
  %lnot267 = xor i1 %tobool266, true, !dbg !1173
  %lnot269 = xor i1 %lnot267, true, !dbg !1173
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !1173
  %add271 = add i32 %add263, %lnot.ext270, !dbg !1173
  %37 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr272 = lshr i64 %37, 32, !dbg !1173
  %and273 = and i64 %shr272, 8, !dbg !1173
  %tobool274 = icmp ne i64 %and273, 0, !dbg !1173
  %lnot275 = xor i1 %tobool274, true, !dbg !1173
  %lnot277 = xor i1 %lnot275, true, !dbg !1173
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !1173
  %add279 = add i32 %add271, %lnot.ext278, !dbg !1173
  %38 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr280 = lshr i64 %38, 32, !dbg !1173
  %and281 = and i64 %shr280, 16, !dbg !1173
  %tobool282 = icmp ne i64 %and281, 0, !dbg !1173
  %lnot283 = xor i1 %tobool282, true, !dbg !1173
  %lnot285 = xor i1 %lnot283, true, !dbg !1173
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !1173
  %add287 = add i32 %add279, %lnot.ext286, !dbg !1173
  %39 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr288 = lshr i64 %39, 32, !dbg !1173
  %and289 = and i64 %shr288, 32, !dbg !1173
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1173
  %lnot291 = xor i1 %tobool290, true, !dbg !1173
  %lnot293 = xor i1 %lnot291, true, !dbg !1173
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !1173
  %add295 = add i32 %add287, %lnot.ext294, !dbg !1173
  %40 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr296 = lshr i64 %40, 32, !dbg !1173
  %and297 = and i64 %shr296, 64, !dbg !1173
  %tobool298 = icmp ne i64 %and297, 0, !dbg !1173
  %lnot299 = xor i1 %tobool298, true, !dbg !1173
  %lnot301 = xor i1 %lnot299, true, !dbg !1173
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !1173
  %add303 = add i32 %add295, %lnot.ext302, !dbg !1173
  %41 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr304 = lshr i64 %41, 32, !dbg !1173
  %and305 = and i64 %shr304, 128, !dbg !1173
  %tobool306 = icmp ne i64 %and305, 0, !dbg !1173
  %lnot307 = xor i1 %tobool306, true, !dbg !1173
  %lnot309 = xor i1 %lnot307, true, !dbg !1173
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !1173
  %add311 = add i32 %add303, %lnot.ext310, !dbg !1173
  %42 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr312 = lshr i64 %42, 32, !dbg !1173
  %shr313 = lshr i64 %shr312, 8, !dbg !1173
  %and314 = and i64 %shr313, 1, !dbg !1173
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1173
  %lnot316 = xor i1 %tobool315, true, !dbg !1173
  %lnot318 = xor i1 %lnot316, true, !dbg !1173
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !1173
  %43 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr320 = lshr i64 %43, 32, !dbg !1173
  %shr321 = lshr i64 %shr320, 8, !dbg !1173
  %and322 = and i64 %shr321, 2, !dbg !1173
  %tobool323 = icmp ne i64 %and322, 0, !dbg !1173
  %lnot324 = xor i1 %tobool323, true, !dbg !1173
  %lnot326 = xor i1 %lnot324, true, !dbg !1173
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !1173
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !1173
  %44 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr329 = lshr i64 %44, 32, !dbg !1173
  %shr330 = lshr i64 %shr329, 8, !dbg !1173
  %and331 = and i64 %shr330, 4, !dbg !1173
  %tobool332 = icmp ne i64 %and331, 0, !dbg !1173
  %lnot333 = xor i1 %tobool332, true, !dbg !1173
  %lnot335 = xor i1 %lnot333, true, !dbg !1173
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !1173
  %add337 = add i32 %add328, %lnot.ext336, !dbg !1173
  %45 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr338 = lshr i64 %45, 32, !dbg !1173
  %shr339 = lshr i64 %shr338, 8, !dbg !1173
  %and340 = and i64 %shr339, 8, !dbg !1173
  %tobool341 = icmp ne i64 %and340, 0, !dbg !1173
  %lnot342 = xor i1 %tobool341, true, !dbg !1173
  %lnot344 = xor i1 %lnot342, true, !dbg !1173
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !1173
  %add346 = add i32 %add337, %lnot.ext345, !dbg !1173
  %46 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr347 = lshr i64 %46, 32, !dbg !1173
  %shr348 = lshr i64 %shr347, 8, !dbg !1173
  %and349 = and i64 %shr348, 16, !dbg !1173
  %tobool350 = icmp ne i64 %and349, 0, !dbg !1173
  %lnot351 = xor i1 %tobool350, true, !dbg !1173
  %lnot353 = xor i1 %lnot351, true, !dbg !1173
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !1173
  %add355 = add i32 %add346, %lnot.ext354, !dbg !1173
  %47 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr356 = lshr i64 %47, 32, !dbg !1173
  %shr357 = lshr i64 %shr356, 8, !dbg !1173
  %and358 = and i64 %shr357, 32, !dbg !1173
  %tobool359 = icmp ne i64 %and358, 0, !dbg !1173
  %lnot360 = xor i1 %tobool359, true, !dbg !1173
  %lnot362 = xor i1 %lnot360, true, !dbg !1173
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !1173
  %add364 = add i32 %add355, %lnot.ext363, !dbg !1173
  %48 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr365 = lshr i64 %48, 32, !dbg !1173
  %shr366 = lshr i64 %shr365, 8, !dbg !1173
  %and367 = and i64 %shr366, 64, !dbg !1173
  %tobool368 = icmp ne i64 %and367, 0, !dbg !1173
  %lnot369 = xor i1 %tobool368, true, !dbg !1173
  %lnot371 = xor i1 %lnot369, true, !dbg !1173
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !1173
  %add373 = add i32 %add364, %lnot.ext372, !dbg !1173
  %49 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr374 = lshr i64 %49, 32, !dbg !1173
  %shr375 = lshr i64 %shr374, 8, !dbg !1173
  %and376 = and i64 %shr375, 128, !dbg !1173
  %tobool377 = icmp ne i64 %and376, 0, !dbg !1173
  %lnot378 = xor i1 %tobool377, true, !dbg !1173
  %lnot380 = xor i1 %lnot378, true, !dbg !1173
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !1173
  %add382 = add i32 %add373, %lnot.ext381, !dbg !1173
  %add383 = add i32 %add311, %add382, !dbg !1173
  %50 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr384 = lshr i64 %50, 32, !dbg !1173
  %shr385 = lshr i64 %shr384, 16, !dbg !1173
  %and386 = and i64 %shr385, 1, !dbg !1173
  %tobool387 = icmp ne i64 %and386, 0, !dbg !1173
  %lnot388 = xor i1 %tobool387, true, !dbg !1173
  %lnot390 = xor i1 %lnot388, true, !dbg !1173
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !1173
  %51 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr392 = lshr i64 %51, 32, !dbg !1173
  %shr393 = lshr i64 %shr392, 16, !dbg !1173
  %and394 = and i64 %shr393, 2, !dbg !1173
  %tobool395 = icmp ne i64 %and394, 0, !dbg !1173
  %lnot396 = xor i1 %tobool395, true, !dbg !1173
  %lnot398 = xor i1 %lnot396, true, !dbg !1173
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !1173
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !1173
  %52 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr401 = lshr i64 %52, 32, !dbg !1173
  %shr402 = lshr i64 %shr401, 16, !dbg !1173
  %and403 = and i64 %shr402, 4, !dbg !1173
  %tobool404 = icmp ne i64 %and403, 0, !dbg !1173
  %lnot405 = xor i1 %tobool404, true, !dbg !1173
  %lnot407 = xor i1 %lnot405, true, !dbg !1173
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !1173
  %add409 = add i32 %add400, %lnot.ext408, !dbg !1173
  %53 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr410 = lshr i64 %53, 32, !dbg !1173
  %shr411 = lshr i64 %shr410, 16, !dbg !1173
  %and412 = and i64 %shr411, 8, !dbg !1173
  %tobool413 = icmp ne i64 %and412, 0, !dbg !1173
  %lnot414 = xor i1 %tobool413, true, !dbg !1173
  %lnot416 = xor i1 %lnot414, true, !dbg !1173
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !1173
  %add418 = add i32 %add409, %lnot.ext417, !dbg !1173
  %54 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr419 = lshr i64 %54, 32, !dbg !1173
  %shr420 = lshr i64 %shr419, 16, !dbg !1173
  %and421 = and i64 %shr420, 16, !dbg !1173
  %tobool422 = icmp ne i64 %and421, 0, !dbg !1173
  %lnot423 = xor i1 %tobool422, true, !dbg !1173
  %lnot425 = xor i1 %lnot423, true, !dbg !1173
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !1173
  %add427 = add i32 %add418, %lnot.ext426, !dbg !1173
  %55 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr428 = lshr i64 %55, 32, !dbg !1173
  %shr429 = lshr i64 %shr428, 16, !dbg !1173
  %and430 = and i64 %shr429, 32, !dbg !1173
  %tobool431 = icmp ne i64 %and430, 0, !dbg !1173
  %lnot432 = xor i1 %tobool431, true, !dbg !1173
  %lnot434 = xor i1 %lnot432, true, !dbg !1173
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !1173
  %add436 = add i32 %add427, %lnot.ext435, !dbg !1173
  %56 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr437 = lshr i64 %56, 32, !dbg !1173
  %shr438 = lshr i64 %shr437, 16, !dbg !1173
  %and439 = and i64 %shr438, 64, !dbg !1173
  %tobool440 = icmp ne i64 %and439, 0, !dbg !1173
  %lnot441 = xor i1 %tobool440, true, !dbg !1173
  %lnot443 = xor i1 %lnot441, true, !dbg !1173
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !1173
  %add445 = add i32 %add436, %lnot.ext444, !dbg !1173
  %57 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr446 = lshr i64 %57, 32, !dbg !1173
  %shr447 = lshr i64 %shr446, 16, !dbg !1173
  %and448 = and i64 %shr447, 128, !dbg !1173
  %tobool449 = icmp ne i64 %and448, 0, !dbg !1173
  %lnot450 = xor i1 %tobool449, true, !dbg !1173
  %lnot452 = xor i1 %lnot450, true, !dbg !1173
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !1173
  %add454 = add i32 %add445, %lnot.ext453, !dbg !1173
  %58 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr455 = lshr i64 %58, 32, !dbg !1173
  %shr456 = lshr i64 %shr455, 16, !dbg !1173
  %shr457 = lshr i64 %shr456, 8, !dbg !1173
  %and458 = and i64 %shr457, 1, !dbg !1173
  %tobool459 = icmp ne i64 %and458, 0, !dbg !1173
  %lnot460 = xor i1 %tobool459, true, !dbg !1173
  %lnot462 = xor i1 %lnot460, true, !dbg !1173
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !1173
  %59 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr464 = lshr i64 %59, 32, !dbg !1173
  %shr465 = lshr i64 %shr464, 16, !dbg !1173
  %shr466 = lshr i64 %shr465, 8, !dbg !1173
  %and467 = and i64 %shr466, 2, !dbg !1173
  %tobool468 = icmp ne i64 %and467, 0, !dbg !1173
  %lnot469 = xor i1 %tobool468, true, !dbg !1173
  %lnot471 = xor i1 %lnot469, true, !dbg !1173
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !1173
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !1173
  %60 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr474 = lshr i64 %60, 32, !dbg !1173
  %shr475 = lshr i64 %shr474, 16, !dbg !1173
  %shr476 = lshr i64 %shr475, 8, !dbg !1173
  %and477 = and i64 %shr476, 4, !dbg !1173
  %tobool478 = icmp ne i64 %and477, 0, !dbg !1173
  %lnot479 = xor i1 %tobool478, true, !dbg !1173
  %lnot481 = xor i1 %lnot479, true, !dbg !1173
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !1173
  %add483 = add i32 %add473, %lnot.ext482, !dbg !1173
  %61 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr484 = lshr i64 %61, 32, !dbg !1173
  %shr485 = lshr i64 %shr484, 16, !dbg !1173
  %shr486 = lshr i64 %shr485, 8, !dbg !1173
  %and487 = and i64 %shr486, 8, !dbg !1173
  %tobool488 = icmp ne i64 %and487, 0, !dbg !1173
  %lnot489 = xor i1 %tobool488, true, !dbg !1173
  %lnot491 = xor i1 %lnot489, true, !dbg !1173
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !1173
  %add493 = add i32 %add483, %lnot.ext492, !dbg !1173
  %62 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr494 = lshr i64 %62, 32, !dbg !1173
  %shr495 = lshr i64 %shr494, 16, !dbg !1173
  %shr496 = lshr i64 %shr495, 8, !dbg !1173
  %and497 = and i64 %shr496, 16, !dbg !1173
  %tobool498 = icmp ne i64 %and497, 0, !dbg !1173
  %lnot499 = xor i1 %tobool498, true, !dbg !1173
  %lnot501 = xor i1 %lnot499, true, !dbg !1173
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !1173
  %add503 = add i32 %add493, %lnot.ext502, !dbg !1173
  %63 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr504 = lshr i64 %63, 32, !dbg !1173
  %shr505 = lshr i64 %shr504, 16, !dbg !1173
  %shr506 = lshr i64 %shr505, 8, !dbg !1173
  %and507 = and i64 %shr506, 32, !dbg !1173
  %tobool508 = icmp ne i64 %and507, 0, !dbg !1173
  %lnot509 = xor i1 %tobool508, true, !dbg !1173
  %lnot511 = xor i1 %lnot509, true, !dbg !1173
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !1173
  %add513 = add i32 %add503, %lnot.ext512, !dbg !1173
  %64 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr514 = lshr i64 %64, 32, !dbg !1173
  %shr515 = lshr i64 %shr514, 16, !dbg !1173
  %shr516 = lshr i64 %shr515, 8, !dbg !1173
  %and517 = and i64 %shr516, 64, !dbg !1173
  %tobool518 = icmp ne i64 %and517, 0, !dbg !1173
  %lnot519 = xor i1 %tobool518, true, !dbg !1173
  %lnot521 = xor i1 %lnot519, true, !dbg !1173
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !1173
  %add523 = add i32 %add513, %lnot.ext522, !dbg !1173
  %65 = load i64, ptr %w.addr, align 8, !dbg !1173
  %shr524 = lshr i64 %65, 32, !dbg !1173
  %shr525 = lshr i64 %shr524, 16, !dbg !1173
  %shr526 = lshr i64 %shr525, 8, !dbg !1173
  %and527 = and i64 %shr526, 128, !dbg !1173
  %tobool528 = icmp ne i64 %and527, 0, !dbg !1173
  %lnot529 = xor i1 %tobool528, true, !dbg !1173
  %lnot531 = xor i1 %lnot529, true, !dbg !1173
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !1173
  %add533 = add i32 %add523, %lnot.ext532, !dbg !1173
  %add534 = add i32 %add454, %add533, !dbg !1173
  %add535 = add i32 %add383, %add534, !dbg !1173
  %add536 = add i32 %add248, %add535, !dbg !1173
  %conv = zext i32 %add536 to i64, !dbg !1173
  br label %cond.end, !dbg !1173

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !1173
  %call = call i64 @__arch_hweight64(i64 noundef %66) #11, !dbg !1173
  br label %cond.end, !dbg !1173

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !1173
  ret i64 %cond, !dbg !1174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1175 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #5 align 16 !dbg !1176 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1181, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1184
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1182, metadata !DIExpression()), !dbg !1185
  %0 = load i64, ptr %w.addr, align 8, !dbg !1186
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !1187, !srcloc !1188
  store i64 %1, ptr %res, align 8, !dbg !1187
  %2 = load i64, ptr %res, align 8, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1190
  ret i64 %2, !dbg !1191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_zero_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !1192 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1197, metadata !DIExpression()), !dbg !1202
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1198, metadata !DIExpression()), !dbg !1203
  %0 = load i64, ptr %size.addr, align 8, !dbg !1204
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1204
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1204

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1204
  %cmp = icmp ule i64 %2, 64, !dbg !1204
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1204

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1204
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1204
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1205

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1199, metadata !DIExpression()), !dbg !1207
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !1208
  %5 = load i64, ptr %4, align 8, !dbg !1209
  %6 = load i64, ptr %size.addr, align 8, !dbg !1210
  %sub = sub i64 %6, 1, !dbg !1210
  %sub3 = sub i64 63, %sub, !dbg !1210
  %shr = lshr i64 -1, %sub3, !dbg !1210
  %and = and i64 -1, %shr, !dbg !1210
  %add = add i64 0, %and, !dbg !1210
  %not = xor i64 %add, -1, !dbg !1211
  %or = or i64 %5, %not, !dbg !1212
  store i64 %or, ptr %val, align 8, !dbg !1207
  %7 = load i64, ptr %val, align 8, !dbg !1213
  %cmp4 = icmp eq i64 %7, -1, !dbg !1214
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1213

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %size.addr, align 8, !dbg !1215
  br label %cond.end8, !dbg !1213

cond.false:                                       ; preds = %if.then
  %9 = load i64, ptr %val, align 8, !dbg !1216
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !1216
  br i1 %10, label %cond.true5, label %cond.false7, !dbg !1216

cond.true5:                                       ; preds = %cond.false
  %11 = load i64, ptr %val, align 8, !dbg !1216
  %not6 = xor i64 %11, -1, !dbg !1216
  %12 = call i64 @llvm.cttz.i64(i64 %not6, i1 true), !dbg !1216
  %cast = trunc i64 %12 to i32, !dbg !1216
  %conv = sext i32 %cast to i64, !dbg !1216
  br label %cond.end, !dbg !1216

cond.false7:                                      ; preds = %cond.false
  %13 = load i64, ptr %val, align 8, !dbg !1216
  %call = call i64 @variable_ffz(i64 noundef %13) #11, !dbg !1216
  br label %cond.end, !dbg !1216

cond.end:                                         ; preds = %cond.false7, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false7 ], !dbg !1216
  br label %cond.end8, !dbg !1213

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ %8, %cond.true ], [ %cond, %cond.end ], !dbg !1213
  store i64 %cond9, ptr %retval, align 8, !dbg !1217
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !1218
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !1219
  %15 = load i64, ptr %size.addr, align 8, !dbg !1220
  %call10 = call i64 @_find_first_zero_bit(ptr noundef %14, i64 noundef %15) #11, !dbg !1221
  store i64 %call10, ptr %retval, align 8, !dbg !1222
  br label %return, !dbg !1222

return:                                           ; preds = %if.end, %cond.end8
  %16 = load i64, ptr %retval, align 8, !dbg !1223
  ret i64 %16, !dbg !1223
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable_ffz(i64 noundef %word) #5 align 16 !dbg !1224 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  %0 = load i64, ptr %word.addr, align 8, !dbg !1229
  %not = xor i64 %0, -1, !dbg !1230
  %1 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %not) #13, !dbg !1231, !srcloc !1232
  store i64 %1, ptr %word.addr, align 8, !dbg !1231
  %2 = load i64, ptr %word.addr, align 8, !dbg !1233
  ret i64 %2, !dbg !1234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1235 dso_local i64 @_find_first_zero_bit(ptr noundef, i64 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1236 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1243, metadata !DIExpression()), !dbg !1245
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1244, metadata !DIExpression()), !dbg !1246
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1247
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1248
  %div = sdiv i64 %1, 64, !dbg !1248
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1249
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !1250
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1251
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1252
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !1253
  ret void, !dbg !1254
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !1255 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1267, metadata !DIExpression()), !dbg !1269
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1268, metadata !DIExpression()), !dbg !1270
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1271
  %1 = load i64, ptr %size.addr, align 8, !dbg !1272
  %conv = trunc i64 %1 to i32, !dbg !1272
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !1273
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1274
  %3 = load i64, ptr %size.addr, align 8, !dbg !1274
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !1274
  ret void, !dbg !1275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !1276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1278, metadata !DIExpression()), !dbg !1280
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1279, metadata !DIExpression()), !dbg !1281
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1282
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1284
  br i1 %1, label %if.then, label %if.else, !dbg !1285

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1286
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1286
  %shr = ashr i64 %3, 3, !dbg !1286
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1286
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1288
  %and = and i64 %4, 7, !dbg !1288
  %sh_prom = trunc i64 %and to i32, !dbg !1288
  %shl = shl i32 1, %sh_prom, !dbg !1288
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !1289, !srcloc !1290
  br label %if.end, !dbg !1291

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1292
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1294
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !1295, !srcloc !1296
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !1298 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1305, metadata !DIExpression()), !dbg !1307
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1306, metadata !DIExpression()), !dbg !1308
  ret i1 true, !dbg !1309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !1310 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1315, metadata !DIExpression()), !dbg !1318
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1316, metadata !DIExpression()), !dbg !1319
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1317, metadata !DIExpression()), !dbg !1320
  ret void, !dbg !1321
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_table_print_srat_entry(ptr noundef %header) #0 section ".init.text" align 16 !dbg !1322 {
entry:
  %header.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %p2 = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  %p5 = alloca ptr, align 8
  %tmp6 = alloca i32, align 4
  %p8 = alloca ptr, align 8
  %tmp9 = alloca i32, align 4
  %p11 = alloca ptr, align 8
  %tmp14 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !1327, metadata !DIExpression()), !dbg !1339
  %0 = load ptr, ptr %header.addr, align 8, !dbg !1340
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %0, i32 0, i32 0, !dbg !1341
  %1 = load i8, ptr %type, align 1, !dbg !1341
  %conv = zext i8 %1 to i32, !dbg !1340
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 5, label %sw.bb10
  ], !dbg !1342

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1328, metadata !DIExpression()), !dbg !1344
  %2 = load ptr, ptr %header.addr, align 8, !dbg !1345
  store ptr %2, ptr %p, align 8, !dbg !1344
  store i32 0, ptr %tmp, align 4, !dbg !1346
  %3 = load i32, ptr %tmp, align 4, !dbg !1349
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1350
  br label %sw.epilog, !dbg !1351

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #10, !dbg !1352
  call void @llvm.dbg.declare(metadata ptr %p2, metadata !1331, metadata !DIExpression()), !dbg !1353
  %4 = load ptr, ptr %header.addr, align 8, !dbg !1354
  store ptr %4, ptr %p2, align 8, !dbg !1353
  store i32 0, ptr %tmp3, align 4, !dbg !1355
  %5 = load i32, ptr %tmp3, align 4, !dbg !1358
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #10, !dbg !1359
  br label %sw.epilog, !dbg !1360

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p5) #10, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %p5, metadata !1333, metadata !DIExpression()), !dbg !1362
  %6 = load ptr, ptr %header.addr, align 8, !dbg !1363
  store ptr %6, ptr %p5, align 8, !dbg !1362
  store i32 0, ptr %tmp6, align 4, !dbg !1364
  %7 = load i32, ptr %tmp6, align 4, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %p5) #10, !dbg !1368
  br label %sw.epilog, !dbg !1369

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p8) #10, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %p8, metadata !1335, metadata !DIExpression()), !dbg !1371
  %8 = load ptr, ptr %header.addr, align 8, !dbg !1372
  store ptr %8, ptr %p8, align 8, !dbg !1371
  store i32 0, ptr %tmp9, align 4, !dbg !1373
  %9 = load i32, ptr %tmp9, align 4, !dbg !1376
  call void @llvm.lifetime.end.p0(i64 8, ptr %p8) #10, !dbg !1377
  br label %sw.epilog, !dbg !1378

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p11) #10, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %p11, metadata !1337, metadata !DIExpression()), !dbg !1380
  %10 = load ptr, ptr %header.addr, align 8, !dbg !1381
  store ptr %10, ptr %p11, align 8, !dbg !1380
  %11 = load ptr, ptr %p11, align 8, !dbg !1382
  %device_handle_type = getelementptr inbounds %struct.acpi_srat_generic_affinity, ptr %11, i32 0, i32 2, !dbg !1384
  %12 = load i8, ptr %device_handle_type, align 1, !dbg !1384
  %conv12 = zext i8 %12 to i32, !dbg !1382
  %cmp = icmp eq i32 %conv12, 0, !dbg !1385
  br i1 %cmp, label %if.then, label %if.else, !dbg !1386

if.then:                                          ; preds = %sw.bb10
  store i32 0, ptr %tmp14, align 4, !dbg !1387
  %13 = load i32, ptr %tmp14, align 4, !dbg !1391
  br label %if.end, !dbg !1392

if.else:                                          ; preds = %sw.bb10
  store i32 0, ptr %tmp15, align 4, !dbg !1393
  %14 = load i32, ptr %tmp15, align 4, !dbg !1397
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p11) #10, !dbg !1398
  br label %sw.epilog, !dbg !1399

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1400

do.body:                                          ; preds = %sw.default
  br label %do.end, !dbg !1402

do.end:                                           ; preds = %do.body
  %15 = load ptr, ptr %header.addr, align 8, !dbg !1400
  %type17 = getelementptr inbounds %struct.acpi_subtable_header, ptr %15, i32 0, i32 0, !dbg !1400
  %16 = load i8, ptr %type17, align 1, !dbg !1400
  %conv18 = zext i8 %16 to i32, !dbg !1400
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i32 noundef %conv18) #12, !dbg !1400
  store i32 %call, ptr %tmp16, align 4, !dbg !1402
  %17 = load i32, ptr %tmp16, align 4, !dbg !1400
  br label %sw.epilog, !dbg !1404

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  ret void, !dbg !1405
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1406 dso_local void @acpi_numa_processor_affinity_init(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_numa_gicc_affinity_init(ptr noundef %pa) #4 align 16 !dbg !1409 {
entry:
  %pa.addr = alloca ptr, align 8
  store ptr %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !1413, metadata !DIExpression()), !dbg !1414
  ret void, !dbg !1415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_set_state(i32 noundef %node, i32 noundef %state) #4 align 16 !dbg !1416 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1420, metadata !DIExpression()), !dbg !1422
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1421, metadata !DIExpression()), !dbg !1423
  %0 = load i32, ptr %node.addr, align 4, !dbg !1424
  %1 = load i32, ptr %state.addr, align 4, !dbg !1425
  %idxprom = zext i32 %1 to i64, !dbg !1426
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !1426
  call void @__node_set(i32 noundef %0, ptr noundef %arrayidx) #11, !dbg !1427
  ret void, !dbg !1428
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1429 dso_local i32 @acpi_table_parse_entries(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #6 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @slit_valid(ptr noundef %slit) #0 section ".init.text" align 16 !dbg !1432 {
entry:
  %retval = alloca i32, align 4
  %slit.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %val = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slit, ptr %slit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slit.addr, metadata !1436, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1448
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1437, metadata !DIExpression()), !dbg !1449
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !1448
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1438, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1439, metadata !DIExpression()), !dbg !1452
  %0 = load ptr, ptr %slit.addr, align 8, !dbg !1453
  %locality_count = getelementptr inbounds %struct.acpi_table_slit, ptr %0, i32 0, i32 1, !dbg !1454
  %1 = load i64, ptr %locality_count, align 1, !dbg !1454
  %conv = trunc i64 %1 to i32, !dbg !1453
  store i32 %conv, ptr %d, align 4, !dbg !1452
  store i32 0, ptr %i, align 4, !dbg !1455
  br label %for.cond, !dbg !1456

for.cond:                                         ; preds = %for.inc19, %entry
  %2 = load i32, ptr %i, align 4, !dbg !1457
  %3 = load i32, ptr %d, align 4, !dbg !1458
  %cmp = icmp slt i32 %2, %3, !dbg !1459
  br i1 %cmp, label %for.body, label %for.end21, !dbg !1460

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !1461
  br label %for.cond2, !dbg !1462

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !dbg !1463
  %5 = load i32, ptr %d, align 4, !dbg !1464
  %cmp3 = icmp slt i32 %4, %5, !dbg !1465
  br i1 %cmp3, label %for.body5, label %for.end, !dbg !1466

for.body5:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #10, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1440, metadata !DIExpression()), !dbg !1468
  %6 = load ptr, ptr %slit.addr, align 8, !dbg !1469
  %entry6 = getelementptr inbounds %struct.acpi_table_slit, ptr %6, i32 0, i32 2, !dbg !1470
  %7 = load i32, ptr %d, align 4, !dbg !1471
  %8 = load i32, ptr %i, align 4, !dbg !1472
  %mul = mul i32 %7, %8, !dbg !1473
  %9 = load i32, ptr %j, align 4, !dbg !1474
  %add = add i32 %mul, %9, !dbg !1475
  %idxprom = sext i32 %add to i64, !dbg !1469
  %arrayidx = getelementptr [0 x i8], ptr %entry6, i64 0, i64 %idxprom, !dbg !1469
  %10 = load i8, ptr %arrayidx, align 1, !dbg !1469
  store i8 %10, ptr %val, align 1, !dbg !1468
  %11 = load i32, ptr %i, align 4, !dbg !1476
  %12 = load i32, ptr %j, align 4, !dbg !1478
  %cmp7 = icmp eq i32 %11, %12, !dbg !1479
  br i1 %cmp7, label %if.then, label %if.else, !dbg !1480

if.then:                                          ; preds = %for.body5
  %13 = load i8, ptr %val, align 1, !dbg !1481
  %conv9 = zext i8 %13 to i32, !dbg !1481
  %cmp10 = icmp ne i32 %conv9, 10, !dbg !1484
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !1485

if.then12:                                        ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !1486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1486

if.end:                                           ; preds = %if.then
  br label %if.end18, !dbg !1487

if.else:                                          ; preds = %for.body5
  %14 = load i8, ptr %val, align 1, !dbg !1488
  %conv13 = zext i8 %14 to i32, !dbg !1488
  %cmp14 = icmp sle i32 %conv13, 10, !dbg !1490
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1491

if.then16:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !1492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1492

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1493
  br label %cleanup, !dbg !1493

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #10, !dbg !1493
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1494

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i32, ptr %j, align 4, !dbg !1495
  %inc = add i32 %15, 1, !dbg !1495
  store i32 %inc, ptr %j, align 4, !dbg !1495
  br label %for.cond2, !dbg !1496, !llvm.loop !1497

for.end:                                          ; preds = %for.cond2
  br label %for.inc19, !dbg !1499

for.inc19:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !dbg !1500
  %inc20 = add i32 %16, 1, !dbg !1500
  store i32 %inc20, ptr %i, align 4, !dbg !1500
  br label %for.cond, !dbg !1501, !llvm.loop !1502

for.end21:                                        ; preds = %for.cond
  store i32 1, ptr %retval, align 4, !dbg !1504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !1504

cleanup22:                                        ; preds = %for.end21, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1505
  %17 = load i32, ptr %retval, align 4, !dbg !1505
  ret i32 %17, !dbg !1505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1506 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1566 dso_local i32 @acpi_get_parent(ptr noundef, ptr noundef) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_numa", scope: !2, file: !3, line: 30, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/numa/.srat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/numa/srat\22 -D KBUILD_BASENAME=\22srat\22 -D KBUILD_MODNAME=\22srat\22 -D __KBUILD_MODNAME=kmod_srat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/numa/srat.ll drivers/acpi/numa/srat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !179, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/numa/srat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a80d5859f3b3334c6b264751d3dfb20e")
!4 = !{!5, !17, !25, !30}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_srat_type", file: !6, line: 187, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/actbl3.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae5563d00103906288df21d0542d6a3a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_SRAT_TYPE_CPU_AFFINITY", value: 0)
!10 = !DIEnumerator(name: "ACPI_SRAT_TYPE_MEMORY_AFFINITY", value: 1)
!11 = !DIEnumerator(name: "ACPI_SRAT_TYPE_X2APIC_CPU_AFFINITY", value: 2)
!12 = !DIEnumerator(name: "ACPI_SRAT_TYPE_GICC_AFFINITY", value: 3)
!13 = !DIEnumerator(name: "ACPI_SRAT_TYPE_GIC_ITS_AFFINITY", value: 4)
!14 = !DIEnumerator(name: "ACPI_SRAT_TYPE_GENERIC_AFFINITY", value: 5)
!15 = !DIEnumerator(name: "ACPI_SRAT_TYPE_GENERIC_PORT_AFFINITY", value: 6)
!16 = !DIEnumerator(name: "ACPI_SRAT_TYPE_RESERVED", value: 7)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_cedt_type", file: !18, line: 491, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!19 = !{!20, !21, !22, !23, !24}
!20 = !DIEnumerator(name: "ACPI_CEDT_TYPE_CHBS", value: 0)
!21 = !DIEnumerator(name: "ACPI_CEDT_TYPE_CFMWS", value: 1)
!22 = !DIEnumerator(name: "ACPI_CEDT_TYPE_CXIMS", value: 2)
!23 = !DIEnumerator(name: "ACPI_CEDT_TYPE_RDPAS", value: 3)
!24 = !DIEnumerator(name: "ACPI_CEDT_TYPE_RESERVED", value: 4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 10, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "false", value: 0)
!29 = !DIEnumerator(name: "true", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !31, line: 398, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40}
!33 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!34 = !DIEnumerator(name: "N_ONLINE", value: 1)
!35 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!36 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!37 = !DIEnumerator(name: "N_MEMORY", value: 3)
!38 = !DIEnumerator(name: "N_CPU", value: 4)
!39 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!40 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!41 = !{!42, !43, !44, !45, !7, !47, !48, !51, !54, !88, !105, !119, !129, !137, !150, !159}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !43)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!53 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_srat", file: !6, line: 179, size: 384, elements: !56)
!56 = !{!57, !85, !86}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !55, file: !6, line: 180, baseType: !58, size: 288)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !59, line: 68, size: 288, elements: !60)
!59 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!60 = !{!61, !65, !69, !73, !74, !78, !82, !83, !84}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !58, file: !59, line: 69, baseType: !62, size: 32)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 4)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !59, line: 70, baseType: !66, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !67, line: 21, baseType: !68)
!67 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !7)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !58, file: !59, line: 71, baseType: !70, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !67, line: 17, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !46, line: 21, baseType: !72)
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !58, file: !59, line: 72, baseType: !70, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !58, file: !59, line: 73, baseType: !75, size: 48, offset: 80)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 48, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 6)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !58, file: !59, line: 74, baseType: !79, size: 64, offset: 128)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !58, file: !59, line: 75, baseType: !66, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !58, file: !59, line: 76, baseType: !62, size: 32, offset: 224)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !58, file: !59, line: 77, baseType: !66, size: 32, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "table_revision", scope: !55, file: !6, line: 181, baseType: !66, size: 32, offset: 288)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !55, file: !6, line: 182, baseType: !87, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !67, line: 23, baseType: !45)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_cpu_affinity", file: !6, line: 204, size: 128, elements: !90)
!90 = !{!91, !96, !97, !98, !99, !100, !104}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !89, file: !6, line: 205, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !18, line: 96, size: 16, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !18, line: 97, baseType: !70, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !92, file: !18, line: 98, baseType: !70, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain_lo", scope: !89, file: !6, line: 206, baseType: !70, size: 8, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !89, file: !6, line: 207, baseType: !70, size: 8, offset: 24)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !6, line: 208, baseType: !66, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "local_sapic_eid", scope: !89, file: !6, line: 209, baseType: !70, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain_hi", scope: !89, file: !6, line: 210, baseType: !101, size: 24, offset: 72)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 24, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 3)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "clock_domain", scope: !89, file: !6, line: 211, baseType: !66, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_mem_affinity", file: !6, line: 220, size: 320, elements: !107)
!107 = !{!108, !109, !110, !114, !115, !116, !117, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !106, file: !6, line: 221, baseType: !92, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain", scope: !106, file: !6, line: 222, baseType: !66, size: 32, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !106, file: !6, line: 223, baseType: !111, size: 16, offset: 48)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !67, line: 19, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !46, line: 24, baseType: !113)
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !106, file: !6, line: 224, baseType: !87, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !106, file: !6, line: 225, baseType: !87, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !106, file: !6, line: 226, baseType: !66, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !6, line: 227, baseType: !66, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !106, file: !6, line: 228, baseType: !87, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_x2apic_cpu_affinity", file: !6, line: 239, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !120, file: !6, line: 240, baseType: !92, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !120, file: !6, line: 241, baseType: !111, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain", scope: !120, file: !6, line: 242, baseType: !66, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !120, file: !6, line: 243, baseType: !66, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !6, line: 244, baseType: !66, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "clock_domain", scope: !120, file: !6, line: 245, baseType: !66, size: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !120, file: !6, line: 246, baseType: !66, size: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_gicc_affinity", file: !6, line: 255, size: 144, elements: !131)
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !130, file: !6, line: 256, baseType: !92, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain", scope: !130, file: !6, line: 257, baseType: !66, size: 32, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_uid", scope: !130, file: !6, line: 258, baseType: !66, size: 32, offset: 48)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 259, baseType: !66, size: 32, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "clock_domain", scope: !130, file: !6, line: 260, baseType: !66, size: 32, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_generic_affinity", file: !6, line: 284, size: 256, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !148, !149}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !138, file: !6, line: 285, baseType: !92, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !138, file: !6, line: 286, baseType: !70, size: 8, offset: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle_type", scope: !138, file: !6, line: 287, baseType: !70, size: 8, offset: 24)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain", scope: !138, file: !6, line: 288, baseType: !66, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !138, file: !6, line: 289, baseType: !145, size: 128, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !6, line: 290, baseType: !66, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !138, file: !6, line: 291, baseType: !66, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_slit", file: !6, line: 86, size: 352, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !151, file: !6, line: 87, baseType: !58, size: 288)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "locality_count", scope: !151, file: !6, line: 88, baseType: !87, size: 64, offset: 288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !151, file: !6, line: 89, baseType: !156, offset: 352)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: -1)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_cedt_cfmws", file: !18, line: 526, size: 288, elements: !161)
!161 = !{!162, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !160, file: !18, line: 527, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_cedt_header", file: !18, line: 483, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !18, line: 484, baseType: !70, size: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !163, file: !18, line: 485, baseType: !70, size: 8, offset: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !163, file: !18, line: 486, baseType: !111, size: 16, offset: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !160, file: !18, line: 528, baseType: !66, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "base_hpa", scope: !160, file: !18, line: 529, baseType: !87, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "window_size", scope: !160, file: !18, line: 530, baseType: !87, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_ways", scope: !160, file: !18, line: 531, baseType: !70, size: 8, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_arithmetic", scope: !160, file: !18, line: 532, baseType: !70, size: 8, offset: 200)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !160, file: !18, line: 533, baseType: !111, size: 16, offset: 208)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !160, file: !18, line: 534, baseType: !66, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "restrictions", scope: !160, file: !18, line: 535, baseType: !111, size: 16, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "qtg_id", scope: !160, file: !18, line: 536, baseType: !111, size: 16, offset: 272)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_targets", scope: !160, file: !18, line: 537, baseType: !178, offset: 288)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, elements: !157)
!179 = !{!180, !182, !184, !189, !194, !199, !204, !209, !214, !219, !224, !229, !234, !239, !241, !243, !0, !245, !247, !252, !257, !264, !269, !274, !279, !284}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pxm_to_node287", scope: !2, file: !3, line: 43, type: !42, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_map_pxm_to_node288", scope: !2, file: !3, line: 79, type: !42, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 240, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 30)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 352, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 44)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 344, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 43)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 552, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 69)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 448, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 56)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 72, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 9)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 1)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 112, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 14)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 294, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 624, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 78)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 432, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 54)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 40, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 5)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 530, type: !236, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_node291", scope: !2, file: !3, line: 580, type: !42, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "acpi_srat_revision", scope: !2, file: !3, line: 29, type: !72, isLocal: false, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "parsed_numa_memblks", scope: !2, file: !3, line: 456, type: !44, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "pxm_to_node_map", scope: !2, file: !3, line: 24, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8192, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 256)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "node_to_pxm_map", scope: !2, file: !3, line: 26, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "nodes_found_map", scope: !2, file: !3, line: 21, type: !259, isLocal: true, isDefinition: true)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !31, line: 99, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 99, size: 64, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !260, file: !31, line: 99, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !217)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 416, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 52)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 360, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 45)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 568, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 71)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 616, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 77)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !236, isLocal: true, isDefinition: true)
!286 = !{i32 7, !"Dwarf Version", i32 5}
!287 = !{i32 2, !"Debug Info Version", i32 3}
!288 = !{i32 1, !"wchar_size", i32 2}
!289 = !{i32 8, !"cf-protection-branch", i32 1}
!290 = !{i32 4, !"function_return_thunk_extern", i32 1}
!291 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!292 = !{i32 1, !"Code Model", i32 2}
!293 = !{i32 1, !"override-stack-alignment", i32 8}
!294 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!295 = distinct !DISubprogram(name: "disable_srat", scope: !3, file: !3, line: 32, type: !296, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !DILocation(line: 34, column: 12, scope: !295)
!299 = !DILocation(line: 35, column: 1, scope: !295)
!300 = distinct !DISubprogram(name: "pxm_to_node", scope: !3, file: !3, line: 37, type: !301, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!44, !44}
!303 = !{!304}
!304 = !DILocalVariable(name: "pxm", arg: 1, scope: !300, file: !3, line: 37, type: !44)
!305 = !DILocation(line: 37, column: 21, scope: !300)
!306 = !DILocation(line: 39, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !3, line: 39, column: 6)
!308 = !DILocation(line: 39, column: 10, scope: !307)
!309 = !DILocation(line: 39, column: 14, scope: !307)
!310 = !DILocation(line: 39, column: 17, scope: !307)
!311 = !DILocation(line: 39, column: 21, scope: !307)
!312 = !DILocation(line: 39, column: 40, scope: !307)
!313 = !DILocation(line: 39, column: 43, scope: !307)
!314 = !DILocation(line: 39, column: 6, scope: !300)
!315 = !DILocation(line: 40, column: 3, scope: !307)
!316 = !DILocation(line: 41, column: 25, scope: !300)
!317 = !DILocation(line: 41, column: 9, scope: !300)
!318 = !DILocation(line: 41, column: 2, scope: !300)
!319 = !DILocation(line: 42, column: 1, scope: !300)
!320 = distinct !DISubprogram(name: "node_to_pxm", scope: !3, file: !3, line: 45, type: !301, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !321)
!321 = !{!322}
!322 = !DILocalVariable(name: "node", arg: 1, scope: !320, file: !3, line: 45, type: !44)
!323 = !DILocation(line: 45, column: 21, scope: !320)
!324 = !DILocation(line: 47, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !3, line: 47, column: 6)
!326 = !DILocation(line: 47, column: 11, scope: !325)
!327 = !DILocation(line: 47, column: 6, scope: !320)
!328 = !DILocation(line: 48, column: 3, scope: !325)
!329 = !DILocation(line: 49, column: 25, scope: !320)
!330 = !DILocation(line: 49, column: 9, scope: !320)
!331 = !DILocation(line: 49, column: 2, scope: !320)
!332 = !DILocation(line: 50, column: 1, scope: !320)
!333 = distinct !DISubprogram(name: "acpi_map_pxm_to_node", scope: !3, file: !3, line: 60, type: !301, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!334 = !{!335, !336}
!335 = !DILocalVariable(name: "pxm", arg: 1, scope: !333, file: !3, line: 60, type: !44)
!336 = !DILocalVariable(name: "node", scope: !333, file: !3, line: 62, type: !44)
!337 = !DILocation(line: 60, column: 30, scope: !333)
!338 = !DILocation(line: 62, column: 2, scope: !333)
!339 = !DILocation(line: 62, column: 6, scope: !333)
!340 = !DILocation(line: 64, column: 6, scope: !341)
!341 = distinct !DILexicalBlock(scope: !333, file: !3, line: 64, column: 6)
!342 = !DILocation(line: 64, column: 10, scope: !341)
!343 = !DILocation(line: 64, column: 14, scope: !341)
!344 = !DILocation(line: 64, column: 17, scope: !341)
!345 = !DILocation(line: 64, column: 21, scope: !341)
!346 = !DILocation(line: 64, column: 40, scope: !341)
!347 = !DILocation(line: 64, column: 43, scope: !341)
!348 = !DILocation(line: 64, column: 6, scope: !333)
!349 = !DILocation(line: 65, column: 3, scope: !341)
!350 = !DILocation(line: 67, column: 25, scope: !333)
!351 = !DILocation(line: 67, column: 9, scope: !333)
!352 = !DILocation(line: 67, column: 7, scope: !333)
!353 = !DILocation(line: 69, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !333, file: !3, line: 69, column: 6)
!355 = !DILocation(line: 69, column: 11, scope: !354)
!356 = !DILocation(line: 69, column: 6, scope: !333)
!357 = !DILocation(line: 70, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 70, column: 7)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 69, column: 28)
!360 = !DILocation(line: 70, column: 37, scope: !358)
!361 = !DILocation(line: 70, column: 7, scope: !359)
!362 = !DILocation(line: 71, column: 4, scope: !358)
!363 = !DILocation(line: 72, column: 10, scope: !359)
!364 = !DILocation(line: 72, column: 8, scope: !359)
!365 = !DILocation(line: 73, column: 26, scope: !359)
!366 = !DILocation(line: 73, column: 31, scope: !359)
!367 = !DILocation(line: 73, column: 3, scope: !359)
!368 = !DILocation(line: 74, column: 3, scope: !359)
!369 = !DILocation(line: 75, column: 2, scope: !359)
!370 = !DILocation(line: 77, column: 9, scope: !333)
!371 = !DILocation(line: 77, column: 2, scope: !333)
!372 = !DILocation(line: 78, column: 1, scope: !333)
!373 = distinct !DISubprogram(name: "__nodes_weight", scope: !31, file: !31, line: 239, type: !374, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!374 = !DISubroutineType(types: !375)
!375 = !{!44, !376, !7}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!378 = !{!379, !380}
!379 = !DILocalVariable(name: "srcp", arg: 1, scope: !373, file: !31, line: 239, type: !376)
!380 = !DILocalVariable(name: "nbits", arg: 2, scope: !373, file: !31, line: 239, type: !7)
!381 = !DILocation(line: 239, column: 52, scope: !373)
!382 = !DILocation(line: 239, column: 71, scope: !373)
!383 = !DILocation(line: 241, column: 23, scope: !373)
!384 = !DILocation(line: 241, column: 29, scope: !373)
!385 = !DILocation(line: 241, column: 35, scope: !373)
!386 = !DILocation(line: 241, column: 9, scope: !373)
!387 = !DILocation(line: 241, column: 2, scope: !373)
!388 = distinct !DISubprogram(name: "__first_unset_node", scope: !31, file: !31, line: 307, type: !389, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!7, !376}
!391 = !{!392, !393, !395}
!392 = !DILocalVariable(name: "maskp", arg: 1, scope: !388, file: !31, line: 307, type: !376)
!393 = !DILocalVariable(name: "__UNIQUE_ID___x102", scope: !394, file: !31, line: 309, type: !7)
!394 = distinct !DILexicalBlock(scope: !388, file: !31, line: 309, column: 9)
!395 = !DILocalVariable(name: "__UNIQUE_ID___y103", scope: !394, file: !31, line: 309, type: !7)
!396 = !DILocation(line: 307, column: 65, scope: !388)
!397 = !DILocation(line: 309, column: 9, scope: !394)
!398 = !DILocation(line: 309, column: 9, scope: !388)
!399 = !DILocation(line: 309, column: 2, scope: !388)
!400 = distinct !DISubprogram(name: "__acpi_map_pxm_to_node", scope: !3, file: !3, line: 52, type: !401, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !44, !44}
!403 = !{!404, !405}
!404 = !DILocalVariable(name: "pxm", arg: 1, scope: !400, file: !3, line: 52, type: !44)
!405 = !DILocalVariable(name: "node", arg: 2, scope: !400, file: !3, line: 52, type: !44)
!406 = !DILocation(line: 52, column: 40, scope: !400)
!407 = !DILocation(line: 52, column: 49, scope: !400)
!408 = !DILocation(line: 54, column: 22, scope: !409)
!409 = distinct !DILexicalBlock(scope: !400, file: !3, line: 54, column: 6)
!410 = !DILocation(line: 54, column: 6, scope: !409)
!411 = !DILocation(line: 54, column: 27, scope: !409)
!412 = !DILocation(line: 54, column: 43, scope: !409)
!413 = !DILocation(line: 54, column: 46, scope: !409)
!414 = !DILocation(line: 54, column: 69, scope: !409)
!415 = !DILocation(line: 54, column: 53, scope: !409)
!416 = !DILocation(line: 54, column: 51, scope: !409)
!417 = !DILocation(line: 54, column: 6, scope: !400)
!418 = !DILocation(line: 55, column: 26, scope: !409)
!419 = !DILocation(line: 55, column: 19, scope: !409)
!420 = !DILocation(line: 55, column: 3, scope: !409)
!421 = !DILocation(line: 55, column: 24, scope: !409)
!422 = !DILocation(line: 56, column: 22, scope: !423)
!423 = distinct !DILexicalBlock(scope: !400, file: !3, line: 56, column: 6)
!424 = !DILocation(line: 56, column: 6, scope: !423)
!425 = !DILocation(line: 56, column: 28, scope: !423)
!426 = !DILocation(line: 56, column: 41, scope: !423)
!427 = !DILocation(line: 56, column: 44, scope: !423)
!428 = !DILocation(line: 56, column: 66, scope: !423)
!429 = !DILocation(line: 56, column: 50, scope: !423)
!430 = !DILocation(line: 56, column: 48, scope: !423)
!431 = !DILocation(line: 56, column: 6, scope: !400)
!432 = !DILocation(line: 57, column: 27, scope: !423)
!433 = !DILocation(line: 57, column: 19, scope: !423)
!434 = !DILocation(line: 57, column: 3, scope: !423)
!435 = !DILocation(line: 57, column: 25, scope: !423)
!436 = !DILocation(line: 58, column: 1, scope: !400)
!437 = distinct !DISubprogram(name: "__node_set", scope: !31, file: !31, line: 129, type: !438, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !44, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !259)
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "node", arg: 1, scope: !437, file: !31, line: 129, type: !44)
!444 = !DILocalVariable(name: "dstp", arg: 2, scope: !437, file: !31, line: 129, type: !440)
!445 = !DILocation(line: 129, column: 44, scope: !437)
!446 = !DILocation(line: 129, column: 71, scope: !437)
!447 = !DILocation(line: 131, column: 10, scope: !437)
!448 = !DILocation(line: 131, column: 16, scope: !437)
!449 = !DILocation(line: 131, column: 22, scope: !437)
!450 = !DILocation(line: 131, column: 2, scope: !437)
!451 = !DILocation(line: 132, column: 1, scope: !437)
!452 = distinct !DISubprogram(name: "bad_srat", scope: !3, file: !3, line: 198, type: !296, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!453 = !DILocation(line: 200, column: 2, scope: !454)
!454 = distinct !DILexicalBlock(scope: !452, file: !3, line: 200, column: 2)
!455 = !DILocation(line: 200, column: 2, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !3, line: 200, column: 2)
!457 = !DILocation(line: 201, column: 2, scope: !452)
!458 = !DILocation(line: 202, column: 1, scope: !452)
!459 = !DISubprogram(name: "_printk", scope: !460, file: !460, line: 153, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!461 = !DISubroutineType(types: !462)
!462 = !{!44, !463, null}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!465 = distinct !DISubprogram(name: "srat_disabled", scope: !3, file: !3, line: 204, type: !466, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!466 = !DISubroutineType(types: !467)
!467 = !{!44}
!468 = !DILocation(line: 206, column: 9, scope: !465)
!469 = !DILocation(line: 206, column: 19, scope: !465)
!470 = !DILocation(line: 206, column: 2, scope: !465)
!471 = distinct !DISubprogram(name: "numa_fill_memblks", scope: !3, file: !3, line: 209, type: !472, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!44, !87, !87}
!474 = !{!475, !476}
!475 = !DILocalVariable(name: "start", arg: 1, scope: !471, file: !3, line: 209, type: !87)
!476 = !DILocalVariable(name: "end", arg: 2, scope: !471, file: !3, line: 209, type: !87)
!477 = !DILocation(line: 209, column: 41, scope: !471)
!478 = !DILocation(line: 209, column: 52, scope: !471)
!479 = !DILocation(line: 211, column: 2, scope: !471)
!480 = distinct !DISubprogram(name: "acpi_numa_slit_init", scope: !3, file: !3, line: 220, type: !481, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !150}
!483 = !{!484, !485, !486, !487, !492}
!484 = !DILocalVariable(name: "slit", arg: 1, scope: !480, file: !3, line: 220, type: !150)
!485 = !DILocalVariable(name: "i", scope: !480, file: !3, line: 222, type: !44)
!486 = !DILocalVariable(name: "j", scope: !480, file: !3, line: 222, type: !44)
!487 = !DILocalVariable(name: "from_node", scope: !488, file: !3, line: 225, type: !491)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 224, column: 45)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 224, column: 2)
!490 = distinct !DILexicalBlock(scope: !480, file: !3, line: 224, column: 2)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!492 = !DILocalVariable(name: "to_node", scope: !493, file: !3, line: 231, type: !491)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 230, column: 46)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 230, column: 3)
!495 = distinct !DILexicalBlock(scope: !488, file: !3, line: 230, column: 3)
!496 = !DILocation(line: 220, column: 57, scope: !480)
!497 = !DILocation(line: 222, column: 2, scope: !480)
!498 = !DILocation(line: 222, column: 6, scope: !480)
!499 = !DILocation(line: 222, column: 9, scope: !480)
!500 = !DILocation(line: 224, column: 9, scope: !490)
!501 = !DILocation(line: 224, column: 7, scope: !490)
!502 = !DILocation(line: 224, column: 14, scope: !489)
!503 = !DILocation(line: 224, column: 18, scope: !489)
!504 = !DILocation(line: 224, column: 24, scope: !489)
!505 = !DILocation(line: 224, column: 16, scope: !489)
!506 = !DILocation(line: 224, column: 2, scope: !490)
!507 = !DILocation(line: 225, column: 3, scope: !488)
!508 = !DILocation(line: 225, column: 13, scope: !488)
!509 = !DILocation(line: 225, column: 37, scope: !488)
!510 = !DILocation(line: 225, column: 25, scope: !488)
!511 = !DILocation(line: 227, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !488, file: !3, line: 227, column: 7)
!513 = !DILocation(line: 227, column: 17, scope: !512)
!514 = !DILocation(line: 227, column: 7, scope: !488)
!515 = !DILocation(line: 228, column: 4, scope: !512)
!516 = !DILocation(line: 230, column: 10, scope: !495)
!517 = !DILocation(line: 230, column: 8, scope: !495)
!518 = !DILocation(line: 230, column: 15, scope: !494)
!519 = !DILocation(line: 230, column: 19, scope: !494)
!520 = !DILocation(line: 230, column: 25, scope: !494)
!521 = !DILocation(line: 230, column: 17, scope: !494)
!522 = !DILocation(line: 230, column: 3, scope: !495)
!523 = !DILocation(line: 231, column: 4, scope: !493)
!524 = !DILocation(line: 231, column: 14, scope: !493)
!525 = !DILocation(line: 231, column: 36, scope: !493)
!526 = !DILocation(line: 231, column: 24, scope: !493)
!527 = !DILocation(line: 233, column: 8, scope: !528)
!528 = distinct !DILexicalBlock(scope: !493, file: !3, line: 233, column: 8)
!529 = !DILocation(line: 233, column: 16, scope: !528)
!530 = !DILocation(line: 233, column: 8, scope: !493)
!531 = !DILocation(line: 234, column: 5, scope: !528)
!532 = !DILocation(line: 236, column: 22, scope: !493)
!533 = !DILocation(line: 236, column: 33, scope: !493)
!534 = !DILocation(line: 237, column: 5, scope: !493)
!535 = !DILocation(line: 237, column: 11, scope: !493)
!536 = !DILocation(line: 237, column: 17, scope: !493)
!537 = !DILocation(line: 237, column: 23, scope: !493)
!538 = !DILocation(line: 237, column: 40, scope: !493)
!539 = !DILocation(line: 237, column: 38, scope: !493)
!540 = !DILocation(line: 237, column: 44, scope: !493)
!541 = !DILocation(line: 237, column: 42, scope: !493)
!542 = !DILocation(line: 236, column: 4, scope: !493)
!543 = !DILocation(line: 238, column: 3, scope: !494)
!544 = !DILocation(line: 238, column: 3, scope: !493)
!545 = !DILocation(line: 230, column: 42, scope: !494)
!546 = !DILocation(line: 230, column: 3, scope: !494)
!547 = distinct !{!547, !522, !548, !549, !550}
!548 = !DILocation(line: 238, column: 3, scope: !495)
!549 = !{!"llvm.loop.mustprogress"}
!550 = !{!"llvm.loop.unroll.disable"}
!551 = !DILocation(line: 239, column: 2, scope: !489)
!552 = !DILocation(line: 239, column: 2, scope: !488)
!553 = !DILocation(line: 224, column: 41, scope: !489)
!554 = !DILocation(line: 224, column: 2, scope: !489)
!555 = distinct !{!555, !506, !556, !549, !550}
!556 = !DILocation(line: 239, column: 2, scope: !490)
!557 = !DILocation(line: 240, column: 1, scope: !480)
!558 = !DISubprogram(name: "numa_set_distance", scope: !559, file: !559, line: 29, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DIFile(filename: "./arch/x86/include/asm/numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd854ea31756e2db308aa8bc404b389b")
!560 = !DISubroutineType(types: !561)
!561 = !{null, !44, !44, !44}
!562 = distinct !DISubprogram(name: "acpi_numa_memory_affinity_init", scope: !3, file: !3, line: 247, type: !563, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!44, !105}
!565 = !{!566, !567, !568, !569, !570, !571, !572, !574, !575, !576}
!566 = !DILocalVariable(name: "ma", arg: 1, scope: !562, file: !3, line: 247, type: !105)
!567 = !DILocalVariable(name: "start", scope: !562, file: !3, line: 249, type: !87)
!568 = !DILocalVariable(name: "end", scope: !562, file: !3, line: 249, type: !87)
!569 = !DILocalVariable(name: "hotpluggable", scope: !562, file: !3, line: 250, type: !66)
!570 = !DILocalVariable(name: "node", scope: !562, file: !3, line: 251, type: !44)
!571 = !DILocalVariable(name: "pxm", scope: !562, file: !3, line: 251, type: !44)
!572 = !DILocalVariable(name: "__UNIQUE_ID___x289", scope: !573, file: !3, line: 297, type: !43)
!573 = distinct !DILexicalBlock(scope: !562, file: !3, line: 297, column: 21)
!574 = !DILocalVariable(name: "__UNIQUE_ID___y290", scope: !573, file: !3, line: 297, type: !87)
!575 = !DILabel(scope: !562, name: "out_err_bad_srat", file: !3, line: 300)
!576 = !DILabel(scope: !562, name: "out_err", file: !3, line: 302)
!577 = !DILocation(line: 247, column: 63, scope: !562)
!578 = !DILocation(line: 249, column: 2, scope: !562)
!579 = !DILocation(line: 249, column: 6, scope: !562)
!580 = !DILocation(line: 249, column: 13, scope: !562)
!581 = !DILocation(line: 250, column: 2, scope: !562)
!582 = !DILocation(line: 250, column: 6, scope: !562)
!583 = !DILocation(line: 251, column: 2, scope: !562)
!584 = !DILocation(line: 251, column: 6, scope: !562)
!585 = !DILocation(line: 251, column: 12, scope: !562)
!586 = !DILocation(line: 253, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !562, file: !3, line: 253, column: 6)
!588 = !DILocation(line: 253, column: 6, scope: !562)
!589 = !DILocation(line: 254, column: 3, scope: !587)
!590 = !DILocation(line: 255, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !562, file: !3, line: 255, column: 6)
!592 = !DILocation(line: 255, column: 10, scope: !591)
!593 = !DILocation(line: 255, column: 17, scope: !591)
!594 = !DILocation(line: 255, column: 24, scope: !591)
!595 = !DILocation(line: 255, column: 6, scope: !562)
!596 = !DILocation(line: 256, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 256, column: 3)
!598 = distinct !DILexicalBlock(scope: !591, file: !3, line: 255, column: 65)
!599 = !DILocation(line: 256, column: 3, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 256, column: 3)
!601 = !DILocation(line: 258, column: 3, scope: !598)
!602 = !DILocation(line: 260, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !562, file: !3, line: 260, column: 6)
!604 = !DILocation(line: 260, column: 11, scope: !603)
!605 = !DILocation(line: 260, column: 17, scope: !603)
!606 = !DILocation(line: 260, column: 42, scope: !603)
!607 = !DILocation(line: 260, column: 6, scope: !562)
!608 = !DILocation(line: 261, column: 3, scope: !603)
!609 = !DILocation(line: 262, column: 15, scope: !562)
!610 = !DILocation(line: 265, column: 10, scope: !562)
!611 = !DILocation(line: 265, column: 14, scope: !562)
!612 = !DILocation(line: 265, column: 8, scope: !562)
!613 = !DILocation(line: 266, column: 8, scope: !562)
!614 = !DILocation(line: 266, column: 16, scope: !562)
!615 = !DILocation(line: 266, column: 20, scope: !562)
!616 = !DILocation(line: 266, column: 14, scope: !562)
!617 = !DILocation(line: 266, column: 6, scope: !562)
!618 = !DILocation(line: 267, column: 8, scope: !562)
!619 = !DILocation(line: 267, column: 12, scope: !562)
!620 = !DILocation(line: 267, column: 6, scope: !562)
!621 = !DILocation(line: 268, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !562, file: !3, line: 268, column: 6)
!623 = !DILocation(line: 268, column: 25, scope: !622)
!624 = !DILocation(line: 268, column: 6, scope: !562)
!625 = !DILocation(line: 269, column: 7, scope: !622)
!626 = !DILocation(line: 269, column: 3, scope: !622)
!627 = !DILocation(line: 271, column: 30, scope: !562)
!628 = !DILocation(line: 271, column: 9, scope: !562)
!629 = !DILocation(line: 271, column: 7, scope: !562)
!630 = !DILocation(line: 272, column: 6, scope: !631)
!631 = distinct !DILexicalBlock(scope: !562, file: !3, line: 272, column: 6)
!632 = !DILocation(line: 272, column: 11, scope: !631)
!633 = !DILocation(line: 272, column: 6, scope: !562)
!634 = !DILocation(line: 273, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 273, column: 3)
!636 = distinct !DILexicalBlock(scope: !631, file: !3, line: 272, column: 28)
!637 = !DILocation(line: 273, column: 3, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 273, column: 3)
!639 = !DILocation(line: 274, column: 3, scope: !636)
!640 = !DILocation(line: 277, column: 22, scope: !641)
!641 = distinct !DILexicalBlock(scope: !562, file: !3, line: 277, column: 6)
!642 = !DILocation(line: 277, column: 28, scope: !641)
!643 = !DILocation(line: 277, column: 35, scope: !641)
!644 = !DILocation(line: 277, column: 6, scope: !641)
!645 = !DILocation(line: 277, column: 40, scope: !641)
!646 = !DILocation(line: 277, column: 6, scope: !562)
!647 = !DILocation(line: 278, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 278, column: 3)
!649 = distinct !DILexicalBlock(scope: !641, file: !3, line: 277, column: 45)
!650 = !DILocation(line: 278, column: 3, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 278, column: 3)
!652 = !DILocation(line: 281, column: 3, scope: !649)
!653 = !DILocation(line: 284, column: 2, scope: !562)
!654 = !DILocation(line: 286, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !562, file: !3, line: 286, column: 2)
!656 = !DILocation(line: 286, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !3, line: 286, column: 2)
!658 = !DILocation(line: 293, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !562, file: !3, line: 293, column: 6)
!660 = !DILocation(line: 293, column: 19, scope: !659)
!661 = !DILocation(line: 293, column: 44, scope: !659)
!662 = !DILocation(line: 293, column: 51, scope: !659)
!663 = !DILocation(line: 293, column: 55, scope: !659)
!664 = !DILocation(line: 293, column: 22, scope: !659)
!665 = !DILocation(line: 293, column: 6, scope: !562)
!666 = !DILocation(line: 294, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !3, line: 294, column: 3)
!668 = !DILocation(line: 294, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !667, file: !3, line: 294, column: 3)
!670 = !DILocation(line: 294, column: 3, scope: !659)
!671 = !DILocation(line: 297, column: 21, scope: !573)
!672 = !DILocation(line: 297, column: 21, scope: !562)
!673 = !DILocation(line: 297, column: 19, scope: !562)
!674 = !DILocation(line: 299, column: 2, scope: !562)
!675 = !DILocation(line: 300, column: 1, scope: !562)
!676 = !DILocation(line: 301, column: 2, scope: !562)
!677 = !DILocation(line: 302, column: 1, scope: !562)
!678 = !DILocation(line: 303, column: 2, scope: !562)
!679 = !DILocation(line: 304, column: 1, scope: !562)
!680 = !DISubprogram(name: "numa_add_memblk", scope: !559, file: !559, line: 28, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DISubroutineType(types: !682)
!682 = !{!44, !44, !87, !87}
!683 = !DISubprogram(name: "memblock_mark_hotplug", scope: !684, file: !684, line: 126, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!685 = !DISubroutineType(types: !686)
!686 = !{!44, !687, !687}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !688, line: 159, baseType: !87)
!688 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!689 = distinct !DISubprogram(name: "acpi_numa_x2apic_affinity_init", scope: !3, file: !3, line: 368, type: !690, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !119}
!692 = !{!693}
!693 = !DILocalVariable(name: "pa", arg: 1, scope: !689, file: !3, line: 368, type: !119)
!694 = !DILocation(line: 368, column: 70, scope: !689)
!695 = !DILocation(line: 370, column: 2, scope: !696)
!696 = distinct !DILexicalBlock(scope: !689, file: !3, line: 370, column: 2)
!697 = !DILocation(line: 370, column: 2, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !3, line: 370, column: 2)
!699 = !DILocation(line: 371, column: 1, scope: !689)
!700 = distinct !DISubprogram(name: "acpi_numa_init", scope: !3, file: !3, line: 494, type: !466, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "i", scope: !700, file: !3, line: 496, type: !44)
!703 = !DILocalVariable(name: "fake_pxm", scope: !700, file: !3, line: 496, type: !44)
!704 = !DILocalVariable(name: "cnt", scope: !700, file: !3, line: 496, type: !44)
!705 = !DILocalVariable(name: "srat_proc", scope: !706, file: !3, line: 509, type: !708)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 508, column: 57)
!707 = distinct !DILexicalBlock(scope: !700, file: !3, line: 508, column: 6)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 1280, elements: !63)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_proc", file: !710, line: 210, size: 320, elements: !711)
!710 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!711 = !{!712, !713, !736, !741, !742}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !709, file: !710, line: 211, baseType: !44, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !710, line: 212, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler", file: !710, line: 131, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!44, !718, !735}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_subtable_headers", file: !710, line: 122, size: 64, elements: !720)
!720 = !{!721, !722, !728, !734}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !719, file: !710, line: 123, baseType: !92, size: 16)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "hmat", scope: !719, file: !710, line: 124, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hmat_structure", file: !18, line: 1712, size: 64, elements: !724)
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !18, line: 1713, baseType: !111, size: 16)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !723, file: !18, line: 1714, baseType: !111, size: 16, offset: 16)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !723, file: !18, line: 1715, baseType: !66, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prmt", scope: !719, file: !710, line: 125, baseType: !729, size: 32)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prmt_module_header", file: !730, line: 2625, size: 32, elements: !731)
!730 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !729, file: !730, line: 2626, baseType: !111, size: 16)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !729, file: !730, line: 2627, baseType: !111, size: 16, offset: 16)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cedt", scope: !719, file: !710, line: 126, baseType: !163, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !709, file: !710, line: 213, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler_arg", file: !710, line: 134, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!44, !718, !42, !735}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !709, file: !710, line: 214, baseType: !42, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !710, line: 215, baseType: !44, size: 32, offset: 256)
!743 = !DILocation(line: 496, column: 2, scope: !700)
!744 = !DILocation(line: 496, column: 6, scope: !700)
!745 = !DILocation(line: 496, column: 9, scope: !700)
!746 = !DILocation(line: 496, column: 19, scope: !700)
!747 = !DILocation(line: 498, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !700, file: !3, line: 498, column: 6)
!749 = !DILocation(line: 498, column: 6, scope: !700)
!750 = !DILocation(line: 499, column: 3, scope: !748)
!751 = !DILocation(line: 508, column: 7, scope: !707)
!752 = !DILocation(line: 508, column: 6, scope: !700)
!753 = !DILocation(line: 509, column: 3, scope: !706)
!754 = !DILocation(line: 509, column: 29, scope: !706)
!755 = !DILocation(line: 511, column: 3, scope: !706)
!756 = !DILocation(line: 512, column: 3, scope: !706)
!757 = !DILocation(line: 512, column: 16, scope: !706)
!758 = !DILocation(line: 512, column: 19, scope: !706)
!759 = !DILocation(line: 513, column: 3, scope: !706)
!760 = !DILocation(line: 513, column: 16, scope: !706)
!761 = !DILocation(line: 513, column: 24, scope: !706)
!762 = !DILocation(line: 514, column: 3, scope: !706)
!763 = !DILocation(line: 514, column: 16, scope: !706)
!764 = !DILocation(line: 514, column: 19, scope: !706)
!765 = !DILocation(line: 515, column: 3, scope: !706)
!766 = !DILocation(line: 515, column: 16, scope: !706)
!767 = !DILocation(line: 515, column: 24, scope: !706)
!768 = !DILocation(line: 516, column: 3, scope: !706)
!769 = !DILocation(line: 516, column: 16, scope: !706)
!770 = !DILocation(line: 516, column: 19, scope: !706)
!771 = !DILocation(line: 517, column: 3, scope: !706)
!772 = !DILocation(line: 517, column: 16, scope: !706)
!773 = !DILocation(line: 517, column: 24, scope: !706)
!774 = !DILocation(line: 518, column: 3, scope: !706)
!775 = !DILocation(line: 518, column: 16, scope: !706)
!776 = !DILocation(line: 518, column: 19, scope: !706)
!777 = !DILocation(line: 519, column: 3, scope: !706)
!778 = !DILocation(line: 519, column: 16, scope: !706)
!779 = !DILocation(line: 519, column: 24, scope: !706)
!780 = !DILocation(line: 523, column: 6, scope: !706)
!781 = !DILocation(line: 521, column: 3, scope: !706)
!782 = !DILocation(line: 525, column: 9, scope: !706)
!783 = !DILocation(line: 525, column: 7, scope: !706)
!784 = !DILocation(line: 527, column: 2, scope: !707)
!785 = !DILocation(line: 527, column: 2, scope: !706)
!786 = !DILocation(line: 530, column: 2, scope: !700)
!787 = !DILocation(line: 540, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !700, file: !3, line: 540, column: 2)
!789 = !DILocation(line: 540, column: 23, scope: !788)
!790 = !DILocation(line: 540, column: 7, scope: !788)
!791 = !DILocation(line: 540, column: 29, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !3, line: 540, column: 2)
!793 = !DILocation(line: 540, column: 31, scope: !792)
!794 = !DILocation(line: 540, column: 2, scope: !788)
!795 = !DILocation(line: 541, column: 23, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 541, column: 7)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 540, column: 52)
!798 = !DILocation(line: 541, column: 7, scope: !796)
!799 = !DILocation(line: 541, column: 28, scope: !796)
!800 = !DILocation(line: 541, column: 26, scope: !796)
!801 = !DILocation(line: 541, column: 7, scope: !797)
!802 = !DILocation(line: 542, column: 31, scope: !796)
!803 = !DILocation(line: 542, column: 15, scope: !796)
!804 = !DILocation(line: 542, column: 13, scope: !796)
!805 = !DILocation(line: 542, column: 4, scope: !796)
!806 = !DILocation(line: 543, column: 2, scope: !797)
!807 = !DILocation(line: 540, column: 48, scope: !792)
!808 = !DILocation(line: 540, column: 2, scope: !792)
!809 = distinct !{!809, !794, !810, !549, !550}
!810 = !DILocation(line: 543, column: 2, scope: !788)
!811 = !DILocation(line: 544, column: 10, scope: !700)
!812 = !DILocation(line: 545, column: 2, scope: !700)
!813 = !DILocation(line: 548, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !700, file: !3, line: 548, column: 6)
!815 = !DILocation(line: 548, column: 10, scope: !814)
!816 = !DILocation(line: 548, column: 6, scope: !700)
!817 = !DILocation(line: 549, column: 10, scope: !814)
!818 = !DILocation(line: 549, column: 3, scope: !814)
!819 = !DILocation(line: 550, column: 12, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !3, line: 550, column: 11)
!821 = !DILocation(line: 550, column: 11, scope: !814)
!822 = !DILocation(line: 551, column: 3, scope: !820)
!823 = !DILocation(line: 552, column: 2, scope: !700)
!824 = !DILocation(line: 553, column: 1, scope: !700)
!825 = !DISubprogram(name: "acpi_table_parse", scope: !710, file: !710, line: 242, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DISubroutineType(types: !827)
!827 = !{!44, !828, !829}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_table_handler", file: !710, line: 129, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!44, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!834 = distinct !DISubprogram(name: "acpi_parse_srat", scope: !3, file: !3, line: 474, type: !831, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!835 = !{!836, !837}
!836 = !DILocalVariable(name: "table", arg: 1, scope: !834, file: !3, line: 474, type: !833)
!837 = !DILocalVariable(name: "srat", scope: !834, file: !3, line: 476, type: !54)
!838 = !DILocation(line: 474, column: 61, scope: !834)
!839 = !DILocation(line: 476, column: 2, scope: !834)
!840 = !DILocation(line: 476, column: 26, scope: !834)
!841 = !DILocation(line: 476, column: 59, scope: !834)
!842 = !DILocation(line: 478, column: 23, scope: !834)
!843 = !DILocation(line: 478, column: 29, scope: !834)
!844 = !DILocation(line: 478, column: 36, scope: !834)
!845 = !DILocation(line: 478, column: 21, scope: !834)
!846 = !DILocation(line: 483, column: 1, scope: !834)
!847 = !DILocation(line: 482, column: 2, scope: !834)
!848 = distinct !DISubprogram(name: "acpi_parse_processor_affinity", scope: !3, file: !3, line: 390, type: !716, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!849 = !{!850, !851, !852}
!850 = !DILocalVariable(name: "header", arg: 1, scope: !848, file: !3, line: 390, type: !718)
!851 = !DILocalVariable(name: "end", arg: 2, scope: !848, file: !3, line: 391, type: !735)
!852 = !DILocalVariable(name: "processor_affinity", scope: !848, file: !3, line: 393, type: !88)
!853 = !DILocation(line: 390, column: 60, scope: !848)
!854 = !DILocation(line: 391, column: 30, scope: !848)
!855 = !DILocation(line: 393, column: 2, scope: !848)
!856 = !DILocation(line: 393, column: 33, scope: !848)
!857 = !DILocation(line: 395, column: 56, scope: !848)
!858 = !DILocation(line: 395, column: 21, scope: !848)
!859 = !DILocation(line: 397, column: 31, scope: !848)
!860 = !DILocation(line: 397, column: 2, scope: !848)
!861 = !DILocation(line: 400, column: 36, scope: !848)
!862 = !DILocation(line: 400, column: 2, scope: !848)
!863 = !DILocation(line: 403, column: 1, scope: !848)
!864 = !DILocation(line: 402, column: 2, scope: !848)
!865 = distinct !DISubprogram(name: "acpi_parse_x2apic_affinity", scope: !3, file: !3, line: 374, type: !716, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !866)
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "header", arg: 1, scope: !865, file: !3, line: 374, type: !718)
!868 = !DILocalVariable(name: "end", arg: 2, scope: !865, file: !3, line: 375, type: !735)
!869 = !DILocalVariable(name: "processor_affinity", scope: !865, file: !3, line: 377, type: !119)
!870 = !DILocation(line: 374, column: 57, scope: !865)
!871 = !DILocation(line: 375, column: 27, scope: !865)
!872 = !DILocation(line: 377, column: 2, scope: !865)
!873 = !DILocation(line: 377, column: 40, scope: !865)
!874 = !DILocation(line: 379, column: 63, scope: !865)
!875 = !DILocation(line: 379, column: 21, scope: !865)
!876 = !DILocation(line: 381, column: 31, scope: !865)
!877 = !DILocation(line: 381, column: 2, scope: !865)
!878 = !DILocation(line: 384, column: 33, scope: !865)
!879 = !DILocation(line: 384, column: 2, scope: !865)
!880 = !DILocation(line: 387, column: 1, scope: !865)
!881 = !DILocation(line: 386, column: 2, scope: !865)
!882 = distinct !DISubprogram(name: "acpi_parse_gicc_affinity", scope: !3, file: !3, line: 406, type: !716, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!883 = !{!884, !885, !886}
!884 = !DILocalVariable(name: "header", arg: 1, scope: !882, file: !3, line: 406, type: !718)
!885 = !DILocalVariable(name: "end", arg: 2, scope: !882, file: !3, line: 407, type: !735)
!886 = !DILocalVariable(name: "processor_affinity", scope: !882, file: !3, line: 409, type: !129)
!887 = !DILocation(line: 406, column: 55, scope: !882)
!888 = !DILocation(line: 407, column: 25, scope: !882)
!889 = !DILocation(line: 409, column: 2, scope: !882)
!890 = !DILocation(line: 409, column: 34, scope: !882)
!891 = !DILocation(line: 411, column: 57, scope: !882)
!892 = !DILocation(line: 411, column: 21, scope: !882)
!893 = !DILocation(line: 413, column: 31, scope: !882)
!894 = !DILocation(line: 413, column: 2, scope: !882)
!895 = !DILocation(line: 416, column: 31, scope: !882)
!896 = !DILocation(line: 416, column: 2, scope: !882)
!897 = !DILocation(line: 419, column: 1, scope: !882)
!898 = !DILocation(line: 418, column: 2, scope: !882)
!899 = distinct !DISubprogram(name: "acpi_parse_gi_affinity", scope: !3, file: !3, line: 423, type: !716, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !900)
!900 = !{!901, !902, !903, !904}
!901 = !DILocalVariable(name: "header", arg: 1, scope: !899, file: !3, line: 423, type: !718)
!902 = !DILocalVariable(name: "end", arg: 2, scope: !899, file: !3, line: 424, type: !735)
!903 = !DILocalVariable(name: "gi_affinity", scope: !899, file: !3, line: 426, type: !137)
!904 = !DILocalVariable(name: "node", scope: !899, file: !3, line: 427, type: !44)
!905 = !DILocation(line: 423, column: 53, scope: !899)
!906 = !DILocation(line: 424, column: 30, scope: !899)
!907 = !DILocation(line: 426, column: 2, scope: !899)
!908 = !DILocation(line: 426, column: 37, scope: !899)
!909 = !DILocation(line: 427, column: 2, scope: !899)
!910 = !DILocation(line: 427, column: 6, scope: !899)
!911 = !DILocation(line: 429, column: 53, scope: !899)
!912 = !DILocation(line: 429, column: 14, scope: !899)
!913 = !DILocation(line: 430, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !899, file: !3, line: 430, column: 6)
!915 = !DILocation(line: 430, column: 6, scope: !899)
!916 = !DILocation(line: 431, column: 3, scope: !914)
!917 = !DILocation(line: 432, column: 31, scope: !899)
!918 = !DILocation(line: 432, column: 2, scope: !899)
!919 = !DILocation(line: 434, column: 8, scope: !920)
!920 = distinct !DILexicalBlock(scope: !899, file: !3, line: 434, column: 6)
!921 = !DILocation(line: 434, column: 21, scope: !920)
!922 = !DILocation(line: 434, column: 27, scope: !920)
!923 = !DILocation(line: 434, column: 6, scope: !899)
!924 = !DILocation(line: 435, column: 3, scope: !920)
!925 = !DILocation(line: 437, column: 30, scope: !899)
!926 = !DILocation(line: 437, column: 43, scope: !899)
!927 = !DILocation(line: 437, column: 9, scope: !899)
!928 = !DILocation(line: 437, column: 7, scope: !899)
!929 = !DILocation(line: 438, column: 6, scope: !930)
!930 = distinct !DILexicalBlock(scope: !899, file: !3, line: 438, column: 6)
!931 = !DILocation(line: 438, column: 11, scope: !930)
!932 = !DILocation(line: 438, column: 27, scope: !930)
!933 = !DILocation(line: 438, column: 30, scope: !930)
!934 = !DILocation(line: 438, column: 35, scope: !930)
!935 = !DILocation(line: 438, column: 6, scope: !899)
!936 = !DILocation(line: 439, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 439, column: 3)
!938 = distinct !DILexicalBlock(scope: !930, file: !3, line: 438, column: 52)
!939 = !DILocation(line: 439, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 439, column: 3)
!941 = !DILocation(line: 440, column: 3, scope: !938)
!942 = !DILocation(line: 442, column: 2, scope: !899)
!943 = !DILocation(line: 443, column: 17, scope: !899)
!944 = !DILocation(line: 443, column: 2, scope: !899)
!945 = !DILocation(line: 445, column: 2, scope: !899)
!946 = !DILocation(line: 446, column: 1, scope: !899)
!947 = !DISubprogram(name: "acpi_table_parse_entries_array", scope: !710, file: !710, line: 246, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{!44, !828, !47, !950, !44, !7}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!951 = distinct !DISubprogram(name: "acpi_table_parse_srat", scope: !3, file: !3, line: 486, type: !952, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !954)
!952 = !DISubroutineType(types: !953)
!953 = !{!44, !5, !714, !7}
!954 = !{!955, !956, !957}
!955 = !DILocalVariable(name: "id", arg: 1, scope: !951, file: !3, line: 486, type: !5)
!956 = !DILocalVariable(name: "handler", arg: 2, scope: !951, file: !3, line: 487, type: !714)
!957 = !DILocalVariable(name: "max_entries", arg: 3, scope: !951, file: !3, line: 487, type: !7)
!958 = !DILocation(line: 486, column: 43, scope: !951)
!959 = !DILocation(line: 487, column: 32, scope: !951)
!960 = !DILocation(line: 487, column: 54, scope: !951)
!961 = !DILocation(line: 490, column: 42, scope: !951)
!962 = !DILocation(line: 491, column: 10, scope: !951)
!963 = !DILocation(line: 491, column: 19, scope: !951)
!964 = !DILocation(line: 489, column: 9, scope: !951)
!965 = !DILocation(line: 489, column: 2, scope: !951)
!966 = distinct !DISubprogram(name: "acpi_parse_memory_affinity", scope: !3, file: !3, line: 459, type: !716, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!967 = !{!968, !969, !970}
!968 = !DILocalVariable(name: "header", arg: 1, scope: !966, file: !3, line: 459, type: !718)
!969 = !DILocalVariable(name: "end", arg: 2, scope: !966, file: !3, line: 460, type: !735)
!970 = !DILocalVariable(name: "memory_affinity", scope: !966, file: !3, line: 462, type: !105)
!971 = !DILocation(line: 459, column: 58, scope: !966)
!972 = !DILocation(line: 460, column: 27, scope: !966)
!973 = !DILocation(line: 462, column: 2, scope: !966)
!974 = !DILocation(line: 462, column: 33, scope: !966)
!975 = !DILocation(line: 464, column: 53, scope: !966)
!976 = !DILocation(line: 464, column: 18, scope: !966)
!977 = !DILocation(line: 466, column: 31, scope: !966)
!978 = !DILocation(line: 466, column: 2, scope: !966)
!979 = !DILocation(line: 469, column: 38, scope: !980)
!980 = distinct !DILexicalBlock(scope: !966, file: !3, line: 469, column: 6)
!981 = !DILocation(line: 469, column: 7, scope: !980)
!982 = !DILocation(line: 469, column: 6, scope: !966)
!983 = !DILocation(line: 470, column: 22, scope: !980)
!984 = !DILocation(line: 470, column: 3, scope: !980)
!985 = !DILocation(line: 472, column: 1, scope: !966)
!986 = !DILocation(line: 471, column: 2, scope: !966)
!987 = distinct !DISubprogram(name: "acpi_parse_slit", scope: !3, file: !3, line: 354, type: !831, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !988)
!988 = !{!989, !990}
!989 = !DILocalVariable(name: "table", arg: 1, scope: !987, file: !3, line: 354, type: !833)
!990 = !DILocalVariable(name: "slit", scope: !987, file: !3, line: 356, type: !150)
!991 = !DILocation(line: 354, column: 61, scope: !987)
!992 = !DILocation(line: 356, column: 2, scope: !987)
!993 = !DILocation(line: 356, column: 26, scope: !987)
!994 = !DILocation(line: 356, column: 59, scope: !987)
!995 = !DILocation(line: 358, column: 18, scope: !996)
!996 = distinct !DILexicalBlock(scope: !987, file: !3, line: 358, column: 6)
!997 = !DILocation(line: 358, column: 7, scope: !996)
!998 = !DILocation(line: 358, column: 6, scope: !987)
!999 = !DILocation(line: 359, column: 3, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 359, column: 3)
!1001 = distinct !DILexicalBlock(scope: !996, file: !3, line: 358, column: 25)
!1002 = !DILocation(line: 359, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 359, column: 3)
!1004 = !DILocation(line: 360, column: 3, scope: !1001)
!1005 = !DILocation(line: 362, column: 22, scope: !987)
!1006 = !DILocation(line: 362, column: 2, scope: !987)
!1007 = !DILocation(line: 364, column: 2, scope: !987)
!1008 = !DILocation(line: 365, column: 1, scope: !987)
!1009 = !DISubprogram(name: "acpi_table_parse_cedt", scope: !710, file: !710, line: 253, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!44, !17, !737, !42}
!1012 = distinct !DISubprogram(name: "acpi_parse_cfmws", scope: !3, file: !3, line: 306, type: !739, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1020, !1021, !1022}
!1014 = !DILocalVariable(name: "header", arg: 1, scope: !1012, file: !3, line: 306, type: !718)
!1015 = !DILocalVariable(name: "arg", arg: 2, scope: !1012, file: !3, line: 307, type: !42)
!1016 = !DILocalVariable(name: "table_end", arg: 3, scope: !1012, file: !3, line: 307, type: !735)
!1017 = !DILocalVariable(name: "cfmws", scope: !1012, file: !3, line: 309, type: !159)
!1018 = !DILocalVariable(name: "fake_pxm", scope: !1012, file: !3, line: 310, type: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1020 = !DILocalVariable(name: "start", scope: !1012, file: !3, line: 311, type: !87)
!1021 = !DILocalVariable(name: "end", scope: !1012, file: !3, line: 311, type: !87)
!1022 = !DILocalVariable(name: "node", scope: !1012, file: !3, line: 312, type: !44)
!1023 = !DILocation(line: 306, column: 65, scope: !1012)
!1024 = !DILocation(line: 307, column: 14, scope: !1012)
!1025 = !DILocation(line: 307, column: 39, scope: !1012)
!1026 = !DILocation(line: 309, column: 2, scope: !1012)
!1027 = !DILocation(line: 309, column: 26, scope: !1012)
!1028 = !DILocation(line: 310, column: 2, scope: !1012)
!1029 = !DILocation(line: 310, column: 7, scope: !1012)
!1030 = !DILocation(line: 310, column: 18, scope: !1012)
!1031 = !DILocation(line: 311, column: 2, scope: !1012)
!1032 = !DILocation(line: 311, column: 6, scope: !1012)
!1033 = !DILocation(line: 311, column: 13, scope: !1012)
!1034 = !DILocation(line: 312, column: 2, scope: !1012)
!1035 = !DILocation(line: 312, column: 6, scope: !1012)
!1036 = !DILocation(line: 314, column: 36, scope: !1012)
!1037 = !DILocation(line: 314, column: 8, scope: !1012)
!1038 = !DILocation(line: 315, column: 10, scope: !1012)
!1039 = !DILocation(line: 315, column: 17, scope: !1012)
!1040 = !DILocation(line: 315, column: 8, scope: !1012)
!1041 = !DILocation(line: 316, column: 8, scope: !1012)
!1042 = !DILocation(line: 316, column: 15, scope: !1012)
!1043 = !DILocation(line: 316, column: 26, scope: !1012)
!1044 = !DILocation(line: 316, column: 33, scope: !1012)
!1045 = !DILocation(line: 316, column: 24, scope: !1012)
!1046 = !DILocation(line: 316, column: 6, scope: !1012)
!1047 = !DILocation(line: 324, column: 25, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 324, column: 6)
!1049 = !DILocation(line: 324, column: 32, scope: !1048)
!1050 = !DILocation(line: 324, column: 7, scope: !1048)
!1051 = !DILocation(line: 324, column: 6, scope: !1012)
!1052 = !DILocation(line: 325, column: 3, scope: !1048)
!1053 = !DILocation(line: 328, column: 31, scope: !1012)
!1054 = !DILocation(line: 328, column: 30, scope: !1012)
!1055 = !DILocation(line: 328, column: 9, scope: !1012)
!1056 = !DILocation(line: 328, column: 7, scope: !1012)
!1057 = !DILocation(line: 330, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 330, column: 6)
!1059 = !DILocation(line: 330, column: 11, scope: !1058)
!1060 = !DILocation(line: 330, column: 6, scope: !1012)
!1061 = !DILocation(line: 331, column: 3, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 331, column: 3)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 330, column: 28)
!1064 = !DILocation(line: 331, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 331, column: 3)
!1066 = !DILocation(line: 332, column: 3, scope: !1063)
!1067 = !DILocation(line: 335, column: 22, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 335, column: 6)
!1069 = !DILocation(line: 335, column: 28, scope: !1068)
!1070 = !DILocation(line: 335, column: 35, scope: !1068)
!1071 = !DILocation(line: 335, column: 6, scope: !1068)
!1072 = !DILocation(line: 335, column: 40, scope: !1068)
!1073 = !DILocation(line: 335, column: 6, scope: !1012)
!1074 = !DILocation(line: 337, column: 3, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 337, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 335, column: 45)
!1077 = !DILocation(line: 337, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 337, column: 3)
!1079 = !DILocation(line: 339, column: 2, scope: !1076)
!1080 = !DILocation(line: 340, column: 2, scope: !1012)
!1081 = !DILocation(line: 343, column: 4, scope: !1012)
!1082 = !DILocation(line: 343, column: 13, scope: !1012)
!1083 = !DILocation(line: 344, column: 2, scope: !1012)
!1084 = !DILocation(line: 345, column: 1, scope: !1012)
!1085 = distinct !DISubprogram(name: "acpi_get_node", scope: !3, file: !3, line: 572, type: !1086, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!44, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1089, line: 424, baseType: !42)
!1089 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1090 = !{!1091, !1092}
!1091 = !DILocalVariable(name: "handle", arg: 1, scope: !1085, file: !3, line: 572, type: !1088)
!1092 = !DILocalVariable(name: "pxm", scope: !1085, file: !3, line: 574, type: !44)
!1093 = !DILocation(line: 572, column: 31, scope: !1085)
!1094 = !DILocation(line: 574, column: 2, scope: !1085)
!1095 = !DILocation(line: 574, column: 6, scope: !1085)
!1096 = !DILocation(line: 576, column: 21, scope: !1085)
!1097 = !DILocation(line: 576, column: 8, scope: !1085)
!1098 = !DILocation(line: 576, column: 6, scope: !1085)
!1099 = !DILocation(line: 578, column: 21, scope: !1085)
!1100 = !DILocation(line: 578, column: 9, scope: !1085)
!1101 = !DILocation(line: 579, column: 1, scope: !1085)
!1102 = !DILocation(line: 578, column: 2, scope: !1085)
!1103 = distinct !DISubprogram(name: "acpi_get_pxm", scope: !3, file: !3, line: 555, type: !1086, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1104)
!1104 = !{!1105, !1106, !1107, !1109, !1110}
!1105 = !DILocalVariable(name: "h", arg: 1, scope: !1103, file: !3, line: 555, type: !1088)
!1106 = !DILocalVariable(name: "pxm", scope: !1103, file: !3, line: 557, type: !43)
!1107 = !DILocalVariable(name: "status", scope: !1103, file: !3, line: 558, type: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1089, line: 421, baseType: !66)
!1109 = !DILocalVariable(name: "handle", scope: !1103, file: !3, line: 559, type: !1088)
!1110 = !DILocalVariable(name: "phandle", scope: !1103, file: !3, line: 560, type: !1088)
!1111 = !DILocation(line: 555, column: 37, scope: !1103)
!1112 = !DILocation(line: 557, column: 2, scope: !1103)
!1113 = !DILocation(line: 557, column: 21, scope: !1103)
!1114 = !DILocation(line: 558, column: 2, scope: !1103)
!1115 = !DILocation(line: 558, column: 14, scope: !1103)
!1116 = !DILocation(line: 559, column: 2, scope: !1103)
!1117 = !DILocation(line: 559, column: 14, scope: !1103)
!1118 = !DILocation(line: 560, column: 2, scope: !1103)
!1119 = !DILocation(line: 560, column: 14, scope: !1103)
!1120 = !DILocation(line: 560, column: 24, scope: !1103)
!1121 = !DILocation(line: 562, column: 2, scope: !1103)
!1122 = !DILocation(line: 563, column: 12, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 562, column: 5)
!1124 = !DILocation(line: 563, column: 10, scope: !1123)
!1125 = !DILocation(line: 564, column: 34, scope: !1123)
!1126 = !DILocation(line: 564, column: 12, scope: !1123)
!1127 = !DILocation(line: 564, column: 10, scope: !1123)
!1128 = !DILocation(line: 565, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 565, column: 7)
!1130 = !DILocation(line: 565, column: 7, scope: !1123)
!1131 = !DILocation(line: 566, column: 11, scope: !1129)
!1132 = !DILocation(line: 566, column: 4, scope: !1129)
!1133 = !DILocation(line: 567, column: 28, scope: !1123)
!1134 = !DILocation(line: 567, column: 12, scope: !1123)
!1135 = !DILocation(line: 567, column: 10, scope: !1123)
!1136 = !DILocation(line: 568, column: 2, scope: !1123)
!1137 = !DILocation(line: 568, column: 11, scope: !1103)
!1138 = distinct !{!1138, !1121, !1139, !549, !550}
!1139 = !DILocation(line: 568, column: 31, scope: !1103)
!1140 = !DILocation(line: 569, column: 2, scope: !1103)
!1141 = !DILocation(line: 570, column: 1, scope: !1103)
!1142 = distinct !DISubprogram(name: "bitmap_weight", scope: !1143, file: !1143, line: 453, type: !1144, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1147)
!1143 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!7, !1146, !7}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!1147 = !{!1148, !1149}
!1148 = !DILocalVariable(name: "src", arg: 1, scope: !1142, file: !1143, line: 453, type: !1146)
!1149 = !DILocalVariable(name: "nbits", arg: 2, scope: !1142, file: !1143, line: 453, type: !7)
!1150 = !DILocation(line: 453, column: 49, scope: !1142)
!1151 = !DILocation(line: 453, column: 67, scope: !1142)
!1152 = !DILocation(line: 455, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1142, file: !1143, line: 455, column: 6)
!1154 = !DILocation(line: 455, column: 6, scope: !1142)
!1155 = !DILocation(line: 456, column: 24, scope: !1153)
!1156 = !DILocation(line: 456, column: 23, scope: !1153)
!1157 = !DILocation(line: 456, column: 30, scope: !1153)
!1158 = !DILocation(line: 456, column: 28, scope: !1153)
!1159 = !DILocation(line: 456, column: 10, scope: !1153)
!1160 = !DILocation(line: 456, column: 3, scope: !1153)
!1161 = !DILocation(line: 457, column: 25, scope: !1142)
!1162 = !DILocation(line: 457, column: 30, scope: !1142)
!1163 = !DILocation(line: 457, column: 9, scope: !1142)
!1164 = !DILocation(line: 457, column: 2, scope: !1142)
!1165 = !DILocation(line: 458, column: 1, scope: !1142)
!1166 = distinct !DISubprogram(name: "hweight_long", scope: !1167, file: !1167, line: 95, type: !1168, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1167 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!47, !47}
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "w", arg: 1, scope: !1166, file: !1167, line: 95, type: !47)
!1172 = !DILocation(line: 95, column: 65, scope: !1166)
!1173 = !DILocation(line: 97, column: 41, scope: !1166)
!1174 = !DILocation(line: 97, column: 2, scope: !1166)
!1175 = !DISubprogram(name: "__bitmap_weight", scope: !1143, file: !1143, line: 171, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = distinct !DISubprogram(name: "__arch_hweight64", scope: !1177, file: !1177, line: 43, type: !1178, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1177 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!47, !45}
!1180 = !{!1181, !1182}
!1181 = !DILocalVariable(name: "w", arg: 1, scope: !1176, file: !1177, line: 43, type: !45)
!1182 = !DILocalVariable(name: "res", scope: !1176, file: !1177, line: 45, type: !47)
!1183 = !DILocation(line: 43, column: 61, scope: !1176)
!1184 = !DILocation(line: 45, column: 2, scope: !1176)
!1185 = !DILocation(line: 45, column: 16, scope: !1176)
!1186 = !DILocation(line: 49, column: 15, scope: !1176)
!1187 = !DILocation(line: 47, column: 2, scope: !1176)
!1188 = !{i64 2148362032, i64 2148362060, i64 2148362066, i64 2148362082, i64 2148362098, i64 2148362125, i64 2148362458, i64 2148361758, i64 2148362464, i64 2148362512, i64 2148362576, i64 2148362640, i64 2148362697, i64 2148361839, i64 2148361864, i64 2148362904, i64 2148363034, i64 2148362965, i64 2148363048, i64 2148361956}
!1189 = !DILocation(line: 51, column: 9, scope: !1176)
!1190 = !DILocation(line: 52, column: 1, scope: !1176)
!1191 = !DILocation(line: 51, column: 2, scope: !1176)
!1192 = distinct !DISubprogram(name: "find_first_zero_bit", scope: !1193, file: !1193, line: 358, type: !1194, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1193 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!47, !1146, !47}
!1196 = !{!1197, !1198, !1199}
!1197 = !DILocalVariable(name: "addr", arg: 1, scope: !1192, file: !1193, line: 358, type: !1146)
!1198 = !DILocalVariable(name: "size", arg: 2, scope: !1192, file: !1193, line: 358, type: !47)
!1199 = !DILocalVariable(name: "val", scope: !1200, file: !1193, line: 361, type: !47)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !1193, line: 360, column: 31)
!1201 = distinct !DILexicalBlock(scope: !1192, file: !1193, line: 360, column: 6)
!1202 = !DILocation(line: 358, column: 56, scope: !1192)
!1203 = !DILocation(line: 358, column: 76, scope: !1192)
!1204 = !DILocation(line: 360, column: 6, scope: !1201)
!1205 = !DILocation(line: 360, column: 6, scope: !1192)
!1206 = !DILocation(line: 361, column: 3, scope: !1200)
!1207 = !DILocation(line: 361, column: 17, scope: !1200)
!1208 = !DILocation(line: 361, column: 24, scope: !1200)
!1209 = !DILocation(line: 361, column: 23, scope: !1200)
!1210 = !DILocation(line: 361, column: 32, scope: !1200)
!1211 = !DILocation(line: 361, column: 31, scope: !1200)
!1212 = !DILocation(line: 361, column: 29, scope: !1200)
!1213 = !DILocation(line: 363, column: 10, scope: !1200)
!1214 = !DILocation(line: 363, column: 14, scope: !1200)
!1215 = !DILocation(line: 363, column: 24, scope: !1200)
!1216 = !DILocation(line: 363, column: 31, scope: !1200)
!1217 = !DILocation(line: 363, column: 3, scope: !1200)
!1218 = !DILocation(line: 364, column: 2, scope: !1201)
!1219 = !DILocation(line: 366, column: 30, scope: !1192)
!1220 = !DILocation(line: 366, column: 36, scope: !1192)
!1221 = !DILocation(line: 366, column: 9, scope: !1192)
!1222 = !DILocation(line: 366, column: 2, scope: !1192)
!1223 = !DILocation(line: 367, column: 1, scope: !1192)
!1224 = distinct !DISubprogram(name: "variable_ffz", scope: !1225, file: !1225, line: 269, type: !1168, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1226)
!1225 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1226 = !{!1227}
!1227 = !DILocalVariable(name: "word", arg: 1, scope: !1224, file: !1225, line: 269, type: !47)
!1228 = !DILocation(line: 269, column: 65, scope: !1224)
!1229 = !DILocation(line: 273, column: 11, scope: !1224)
!1230 = !DILocation(line: 273, column: 10, scope: !1224)
!1231 = !DILocation(line: 271, column: 2, scope: !1224)
!1232 = !{i64 851075}
!1233 = !DILocation(line: 274, column: 9, scope: !1224)
!1234 = !DILocation(line: 274, column: 2, scope: !1224)
!1235 = !DISubprogram(name: "_find_first_zero_bit", scope: !1193, file: !1193, line: 32, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = distinct !DISubprogram(name: "set_bit", scope: !1237, file: !1237, line: 26, type: !1238, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1237 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !53, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!1242 = !{!1243, !1244}
!1243 = !DILocalVariable(name: "nr", arg: 1, scope: !1236, file: !1237, line: 26, type: !53)
!1244 = !DILocalVariable(name: "addr", arg: 2, scope: !1236, file: !1237, line: 26, type: !1240)
!1245 = !DILocation(line: 26, column: 42, scope: !1236)
!1246 = !DILocation(line: 26, column: 70, scope: !1236)
!1247 = !DILocation(line: 28, column: 26, scope: !1236)
!1248 = !DILocation(line: 28, column: 33, scope: !1236)
!1249 = !DILocation(line: 28, column: 31, scope: !1236)
!1250 = !DILocation(line: 28, column: 2, scope: !1236)
!1251 = !DILocation(line: 29, column: 15, scope: !1236)
!1252 = !DILocation(line: 29, column: 19, scope: !1236)
!1253 = !DILocation(line: 29, column: 2, scope: !1236)
!1254 = !DILocation(line: 30, column: 1, scope: !1236)
!1255 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1256, file: !1256, line: 80, type: !1257, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1256 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1259, !1262}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !688, line: 61, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1264, line: 72, baseType: !1265)
!1264 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1264, line: 16, baseType: !47)
!1266 = !{!1267, !1268}
!1267 = !DILocalVariable(name: "v", arg: 1, scope: !1255, file: !1256, line: 80, type: !1259)
!1268 = !DILocalVariable(name: "size", arg: 2, scope: !1255, file: !1256, line: 80, type: !1262)
!1269 = !DILocation(line: 80, column: 74, scope: !1255)
!1270 = !DILocation(line: 80, column: 84, scope: !1255)
!1271 = !DILocation(line: 82, column: 20, scope: !1255)
!1272 = !DILocation(line: 82, column: 23, scope: !1255)
!1273 = !DILocation(line: 82, column: 2, scope: !1255)
!1274 = !DILocation(line: 83, column: 2, scope: !1255)
!1275 = !DILocation(line: 84, column: 1, scope: !1255)
!1276 = distinct !DISubprogram(name: "arch_set_bit", scope: !1225, file: !1225, line: 52, type: !1238, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1278, !1279}
!1278 = !DILocalVariable(name: "nr", arg: 1, scope: !1276, file: !1225, line: 52, type: !53)
!1279 = !DILocalVariable(name: "addr", arg: 2, scope: !1276, file: !1225, line: 52, type: !1240)
!1280 = !DILocation(line: 52, column: 19, scope: !1276)
!1281 = !DILocation(line: 52, column: 47, scope: !1276)
!1282 = !DILocation(line: 54, column: 27, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !1225, line: 54, column: 6)
!1284 = !DILocation(line: 54, column: 6, scope: !1283)
!1285 = !DILocation(line: 54, column: 6, scope: !1276)
!1286 = !DILocation(line: 56, column: 6, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !1225, line: 54, column: 32)
!1288 = !DILocation(line: 57, column: 12, scope: !1287)
!1289 = !DILocation(line: 55, column: 3, scope: !1287)
!1290 = !{i64 2148341971, i64 2148342010, i64 2148342031, i64 2148342068, i64 2148342091, i64 2148341961}
!1291 = !DILocation(line: 59, column: 2, scope: !1287)
!1292 = !DILocation(line: 61, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1283, file: !1225, line: 59, column: 9)
!1294 = !DILocation(line: 61, column: 32, scope: !1293)
!1295 = !DILocation(line: 60, column: 3, scope: !1293)
!1296 = !{i64 2148342256, i64 2148342295, i64 2148342316, i64 2148342353, i64 2148342376, i64 2148342246}
!1297 = !DILocation(line: 63, column: 1, scope: !1276)
!1298 = distinct !DISubprogram(name: "kasan_check_write", scope: !1299, file: !1299, line: 44, type: !1300, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1304)
!1299 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!1302, !1259, !7}
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !688, line: 35, baseType: !1303)
!1303 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1304 = !{!1305, !1306}
!1305 = !DILocalVariable(name: "p", arg: 1, scope: !1298, file: !1299, line: 44, type: !1259)
!1306 = !DILocalVariable(name: "size", arg: 2, scope: !1298, file: !1299, line: 44, type: !7)
!1307 = !DILocation(line: 44, column: 59, scope: !1298)
!1308 = !DILocation(line: 44, column: 75, scope: !1298)
!1309 = !DILocation(line: 46, column: 2, scope: !1298)
!1310 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1311, file: !1311, line: 229, type: !1312, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1311 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1259, !1262, !44}
!1314 = !{!1315, !1316, !1317}
!1315 = !DILocalVariable(name: "ptr", arg: 1, scope: !1310, file: !1311, line: 229, type: !1259)
!1316 = !DILocalVariable(name: "size", arg: 2, scope: !1310, file: !1311, line: 229, type: !1262)
!1317 = !DILocalVariable(name: "type", arg: 3, scope: !1310, file: !1311, line: 230, type: !44)
!1318 = !DILocation(line: 229, column: 60, scope: !1310)
!1319 = !DILocation(line: 229, column: 72, scope: !1310)
!1320 = !DILocation(line: 230, column: 15, scope: !1310)
!1321 = !DILocation(line: 230, column: 23, scope: !1310)
!1322 = distinct !DISubprogram(name: "acpi_table_print_srat_entry", scope: !3, file: !3, line: 82, type: !1323, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1326 = !{!1327, !1328, !1331, !1333, !1335, !1337}
!1327 = !DILocalVariable(name: "header", arg: 1, scope: !1322, file: !3, line: 82, type: !1325)
!1328 = !DILocalVariable(name: "p", scope: !1329, file: !3, line: 87, type: !88)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 86, column: 3)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 84, column: 24)
!1331 = !DILocalVariable(name: "p", scope: !1332, file: !3, line: 99, type: !105)
!1332 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 98, column: 3)
!1333 = !DILocalVariable(name: "p", scope: !1334, file: !3, line: 116, type: !119)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 115, column: 3)
!1335 = !DILocalVariable(name: "p", scope: !1336, file: !3, line: 128, type: !129)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 127, column: 3)
!1337 = !DILocalVariable(name: "p", scope: !1338, file: !3, line: 140, type: !137)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 139, column: 2)
!1339 = !DILocation(line: 82, column: 58, scope: !1322)
!1340 = !DILocation(line: 84, column: 10, scope: !1322)
!1341 = !DILocation(line: 84, column: 18, scope: !1322)
!1342 = !DILocation(line: 84, column: 2, scope: !1322)
!1343 = !DILocation(line: 87, column: 4, scope: !1329)
!1344 = !DILocation(line: 87, column: 35, scope: !1329)
!1345 = !DILocation(line: 88, column: 41, scope: !1329)
!1346 = !DILocation(line: 89, column: 4, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 89, column: 4)
!1348 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 89, column: 4)
!1349 = !DILocation(line: 89, column: 4, scope: !1348)
!1350 = !DILocation(line: 94, column: 3, scope: !1330)
!1351 = !DILocation(line: 95, column: 3, scope: !1330)
!1352 = !DILocation(line: 99, column: 4, scope: !1332)
!1353 = !DILocation(line: 99, column: 35, scope: !1332)
!1354 = !DILocation(line: 100, column: 41, scope: !1332)
!1355 = !DILocation(line: 101, column: 4, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 101, column: 4)
!1357 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 101, column: 4)
!1358 = !DILocation(line: 101, column: 4, scope: !1357)
!1359 = !DILocation(line: 111, column: 3, scope: !1330)
!1360 = !DILocation(line: 112, column: 3, scope: !1330)
!1361 = !DILocation(line: 116, column: 4, scope: !1334)
!1362 = !DILocation(line: 116, column: 42, scope: !1334)
!1363 = !DILocation(line: 117, column: 48, scope: !1334)
!1364 = !DILocation(line: 118, column: 4, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 118, column: 4)
!1366 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 118, column: 4)
!1367 = !DILocation(line: 118, column: 4, scope: !1366)
!1368 = !DILocation(line: 123, column: 3, scope: !1330)
!1369 = !DILocation(line: 124, column: 3, scope: !1330)
!1370 = !DILocation(line: 128, column: 4, scope: !1336)
!1371 = !DILocation(line: 128, column: 36, scope: !1336)
!1372 = !DILocation(line: 129, column: 42, scope: !1336)
!1373 = !DILocation(line: 130, column: 4, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 130, column: 4)
!1375 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 130, column: 4)
!1376 = !DILocation(line: 130, column: 4, scope: !1375)
!1377 = !DILocation(line: 135, column: 3, scope: !1330)
!1378 = !DILocation(line: 136, column: 3, scope: !1330)
!1379 = !DILocation(line: 140, column: 3, scope: !1338)
!1380 = !DILocation(line: 140, column: 38, scope: !1338)
!1381 = !DILocation(line: 141, column: 41, scope: !1338)
!1382 = !DILocation(line: 143, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 143, column: 7)
!1384 = !DILocation(line: 143, column: 10, scope: !1383)
!1385 = !DILocation(line: 143, column: 29, scope: !1383)
!1386 = !DILocation(line: 143, column: 7, scope: !1338)
!1387 = !DILocation(line: 148, column: 4, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 148, column: 4)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 148, column: 4)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 143, column: 35)
!1391 = !DILocation(line: 148, column: 4, scope: !1389)
!1392 = !DILocation(line: 154, column: 3, scope: !1390)
!1393 = !DILocation(line: 159, column: 4, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 159, column: 4)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 159, column: 4)
!1396 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 154, column: 10)
!1397 = !DILocation(line: 159, column: 4, scope: !1395)
!1398 = !DILocation(line: 166, column: 2, scope: !1330)
!1399 = !DILocation(line: 167, column: 2, scope: !1330)
!1400 = !DILocation(line: 169, column: 3, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 169, column: 3)
!1402 = !DILocation(line: 169, column: 3, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 169, column: 3)
!1404 = !DILocation(line: 171, column: 3, scope: !1330)
!1405 = !DILocation(line: 173, column: 1, scope: !1322)
!1406 = !DISubprogram(name: "acpi_numa_processor_affinity_init", scope: !710, file: !710, line: 263, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !88}
!1409 = distinct !DISubprogram(name: "acpi_numa_gicc_affinity_init", scope: !710, file: !710, line: 281, type: !1410, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !129}
!1412 = !{!1413}
!1413 = !DILocalVariable(name: "pa", arg: 1, scope: !1409, file: !710, line: 281, type: !129)
!1414 = !DILocation(line: 281, column: 62, scope: !1409)
!1415 = !DILocation(line: 281, column: 68, scope: !1409)
!1416 = distinct !DISubprogram(name: "node_set_state", scope: !31, file: !31, line: 426, type: !1417, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !44, !30}
!1419 = !{!1420, !1421}
!1420 = !DILocalVariable(name: "node", arg: 1, scope: !1416, file: !31, line: 426, type: !44)
!1421 = !DILocalVariable(name: "state", arg: 2, scope: !1416, file: !31, line: 426, type: !30)
!1422 = !DILocation(line: 426, column: 39, scope: !1416)
!1423 = !DILocation(line: 426, column: 62, scope: !1416)
!1424 = !DILocation(line: 428, column: 13, scope: !1416)
!1425 = !DILocation(line: 428, column: 32, scope: !1416)
!1426 = !DILocation(line: 428, column: 20, scope: !1416)
!1427 = !DILocation(line: 428, column: 2, scope: !1416)
!1428 = !DILocation(line: 429, column: 1, scope: !1416)
!1429 = !DISubprogram(name: "acpi_table_parse_entries", scope: !710, file: !710, line: 243, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!44, !828, !47, !44, !714, !7}
!1432 = distinct !DISubprogram(name: "slit_valid", scope: !3, file: !3, line: 181, type: !1433, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!44, !150}
!1435 = !{!1436, !1437, !1438, !1439, !1440}
!1436 = !DILocalVariable(name: "slit", arg: 1, scope: !1432, file: !3, line: 181, type: !150)
!1437 = !DILocalVariable(name: "i", scope: !1432, file: !3, line: 183, type: !44)
!1438 = !DILocalVariable(name: "j", scope: !1432, file: !3, line: 183, type: !44)
!1439 = !DILocalVariable(name: "d", scope: !1432, file: !3, line: 184, type: !44)
!1440 = !DILocalVariable(name: "val", scope: !1441, file: !3, line: 187, type: !70)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 186, column: 27)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 186, column: 3)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 186, column: 3)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 185, column: 26)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 185, column: 2)
!1446 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 185, column: 2)
!1447 = !DILocation(line: 181, column: 54, scope: !1432)
!1448 = !DILocation(line: 183, column: 2, scope: !1432)
!1449 = !DILocation(line: 183, column: 6, scope: !1432)
!1450 = !DILocation(line: 183, column: 9, scope: !1432)
!1451 = !DILocation(line: 184, column: 2, scope: !1432)
!1452 = !DILocation(line: 184, column: 6, scope: !1432)
!1453 = !DILocation(line: 184, column: 10, scope: !1432)
!1454 = !DILocation(line: 184, column: 16, scope: !1432)
!1455 = !DILocation(line: 185, column: 9, scope: !1446)
!1456 = !DILocation(line: 185, column: 7, scope: !1446)
!1457 = !DILocation(line: 185, column: 14, scope: !1445)
!1458 = !DILocation(line: 185, column: 18, scope: !1445)
!1459 = !DILocation(line: 185, column: 16, scope: !1445)
!1460 = !DILocation(line: 185, column: 2, scope: !1446)
!1461 = !DILocation(line: 186, column: 10, scope: !1443)
!1462 = !DILocation(line: 186, column: 8, scope: !1443)
!1463 = !DILocation(line: 186, column: 15, scope: !1442)
!1464 = !DILocation(line: 186, column: 19, scope: !1442)
!1465 = !DILocation(line: 186, column: 17, scope: !1442)
!1466 = !DILocation(line: 186, column: 3, scope: !1443)
!1467 = !DILocation(line: 187, column: 4, scope: !1441)
!1468 = !DILocation(line: 187, column: 7, scope: !1441)
!1469 = !DILocation(line: 187, column: 13, scope: !1441)
!1470 = !DILocation(line: 187, column: 19, scope: !1441)
!1471 = !DILocation(line: 187, column: 25, scope: !1441)
!1472 = !DILocation(line: 187, column: 27, scope: !1441)
!1473 = !DILocation(line: 187, column: 26, scope: !1441)
!1474 = !DILocation(line: 187, column: 31, scope: !1441)
!1475 = !DILocation(line: 187, column: 29, scope: !1441)
!1476 = !DILocation(line: 188, column: 8, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 188, column: 8)
!1478 = !DILocation(line: 188, column: 13, scope: !1477)
!1479 = !DILocation(line: 188, column: 10, scope: !1477)
!1480 = !DILocation(line: 188, column: 8, scope: !1441)
!1481 = !DILocation(line: 189, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 189, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 188, column: 16)
!1484 = !DILocation(line: 189, column: 13, scope: !1482)
!1485 = !DILocation(line: 189, column: 9, scope: !1483)
!1486 = !DILocation(line: 190, column: 6, scope: !1482)
!1487 = !DILocation(line: 191, column: 4, scope: !1483)
!1488 = !DILocation(line: 191, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 191, column: 15)
!1490 = !DILocation(line: 191, column: 19, scope: !1489)
!1491 = !DILocation(line: 191, column: 15, scope: !1477)
!1492 = !DILocation(line: 192, column: 5, scope: !1489)
!1493 = !DILocation(line: 193, column: 3, scope: !1442)
!1494 = !DILocation(line: 193, column: 3, scope: !1441)
!1495 = !DILocation(line: 186, column: 23, scope: !1442)
!1496 = !DILocation(line: 186, column: 3, scope: !1442)
!1497 = distinct !{!1497, !1466, !1498, !549, !550}
!1498 = !DILocation(line: 193, column: 3, scope: !1443)
!1499 = !DILocation(line: 194, column: 2, scope: !1444)
!1500 = !DILocation(line: 185, column: 22, scope: !1445)
!1501 = !DILocation(line: 185, column: 2, scope: !1445)
!1502 = distinct !{!1502, !1460, !1503, !549, !550}
!1503 = !DILocation(line: 194, column: 2, scope: !1446)
!1504 = !DILocation(line: 195, column: 2, scope: !1432)
!1505 = !DILocation(line: 196, column: 1, scope: !1432)
!1506 = !DISubprogram(name: "acpi_evaluate_integer", scope: !1507, file: !1507, line: 27, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1108, !1088, !1510, !1511, !1565}
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1089, line: 423, baseType: !828)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !1089, line: 956, size: 128, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1512, file: !1089, line: 957, baseType: !66, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1512, file: !1089, line: 958, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1089, line: 908, size: 192, elements: !1518)
!1518 = !{!1519, !1521, !1526, !1532, !1539, !1545, !1551, !1559}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1517, file: !1089, line: 909, baseType: !1520, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1089, line: 644, baseType: !66)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1517, file: !1089, line: 913, baseType: !1522, size: 128)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 910, size: 128, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !1089, line: 911, baseType: !1520, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1522, file: !1089, line: 912, baseType: !87, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1517, file: !1089, line: 919, baseType: !1527, size: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 915, size: 128, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1527, file: !1089, line: 916, baseType: !1520, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1527, file: !1089, line: 917, baseType: !66, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1527, file: !1089, line: 918, baseType: !828, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1517, file: !1089, line: 925, baseType: !1533, size: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 921, size: 128, elements: !1534)
!1534 = !{!1535, !1536, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1533, file: !1089, line: 922, baseType: !1520, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1533, file: !1089, line: 923, baseType: !66, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1533, file: !1089, line: 924, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1517, file: !1089, line: 931, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 927, size: 128, elements: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1540, file: !1089, line: 928, baseType: !1520, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1540, file: !1089, line: 929, baseType: !66, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1540, file: !1089, line: 930, baseType: !1516, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1517, file: !1089, line: 937, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 933, size: 128, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1546, file: !1089, line: 934, baseType: !1520, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1546, file: !1089, line: 935, baseType: !1520, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1546, file: !1089, line: 936, baseType: !1088, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1517, file: !1089, line: 944, baseType: !1552, size: 192)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 939, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1558}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1552, file: !1089, line: 940, baseType: !1520, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1552, file: !1089, line: 941, baseType: !66, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1552, file: !1089, line: 942, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1089, line: 128, baseType: !87)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1552, file: !1089, line: 943, baseType: !66, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1517, file: !1089, line: 950, baseType: !1560, size: 96)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1089, line: 946, size: 96, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1560, file: !1089, line: 947, baseType: !1520, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1560, file: !1089, line: 948, baseType: !66, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1560, file: !1089, line: 949, baseType: !66, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1566 = !DISubprogram(name: "acpi_get_parent", scope: !1567, file: !1567, line: 581, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1108, !1088, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
