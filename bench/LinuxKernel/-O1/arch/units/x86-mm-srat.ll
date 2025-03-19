; ModuleID = 'arch/x86/mm/srat.c'
source_filename = "arch/x86/mm/srat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodemask_t = type { [1 x i64] }
%struct.acpi_srat_x2apic_cpu_affinity = type { %struct.acpi_subtable_header, i16, i32, i32, i32, i32, i32 }
%struct.acpi_subtable_header = type { i8, i8 }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_srat_cpu_affinity = type { %struct.acpi_subtable_header, i8, i8, i32, i8, [3 x i8], i32 }

@.str = private unnamed_addr constant [41 x i8] c"\016SRAT: PXM %u -> X2APIC 0x%04x ignored\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [39 x i8] c"\013SRAT: Too many proximity domains %x\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [73 x i8] c"\016SRAT: PXM %u -> APIC 0x%04x -> Node %u skipped apicid that is too big\0A\00", align 1, !dbg !12
@numa_nodes_parsed = external dso_local global %struct.nodemask_t, section ".init.data", align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"\016SRAT: PXM %u -> APIC 0x%04x -> Node %u\0A\00", align 1, !dbg !17
@acpi_srat_revision = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"\016SRAT: PXM %u -> APIC 0x%02x -> Node %u skipped apicid that is too big\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [42 x i8] c"\016SRAT: PXM %u -> APIC 0x%02x -> Node %u\0A\00", align 1, !dbg !24
@apic = external dso_local global ptr, align 8
@__apicid_to_node = external dso_local global [32768 x i16], align 16

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_numa_x2apic_affinity_init(ptr noundef %pa) #0 section ".init.text" align 16 !dbg !58 {
entry:
  %pa.addr = alloca ptr, align 8
  %pxm = alloca i32, align 4
  %node = alloca i32, align 4
  %apic_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  store ptr %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !88, metadata !DIExpression()), !dbg !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %pxm) #8, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %pxm, metadata !89, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #8, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %node, metadata !91, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %apic_id) #8, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %apic_id, metadata !92, metadata !DIExpression()), !dbg !98
  %call = call i32 @srat_disabled() #9, !dbg !99
  %tobool = icmp ne i32 %call, 0, !dbg !99
  br i1 %tobool, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !102

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pa.addr, align 8, !dbg !103
  %header = getelementptr inbounds %struct.acpi_srat_x2apic_cpu_affinity, ptr %0, i32 0, i32 0, !dbg !105
  %length = getelementptr inbounds %struct.acpi_subtable_header, ptr %header, i32 0, i32 1, !dbg !106
  %1 = load i8, ptr %length, align 1, !dbg !106
  %conv = zext i8 %1 to i64, !dbg !103
  %cmp = icmp ult i64 %conv, 24, !dbg !107
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !108

if.then2:                                         ; preds = %if.end
  call void @bad_srat() #9, !dbg !109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !111

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pa.addr, align 8, !dbg !112
  %flags = getelementptr inbounds %struct.acpi_srat_x2apic_cpu_affinity, ptr %2, i32 0, i32 4, !dbg !114
  %3 = load i32, ptr %flags, align 1, !dbg !114
  %and = and i32 %3, 1, !dbg !115
  %cmp4 = icmp eq i32 %and, 0, !dbg !116
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !117

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

if.end7:                                          ; preds = %if.end3
  %4 = load ptr, ptr %pa.addr, align 8, !dbg !119
  %proximity_domain = getelementptr inbounds %struct.acpi_srat_x2apic_cpu_affinity, ptr %4, i32 0, i32 2, !dbg !120
  %5 = load i32, ptr %proximity_domain, align 1, !dbg !120
  store i32 %5, ptr %pxm, align 4, !dbg !121
  %6 = load ptr, ptr %pa.addr, align 8, !dbg !122
  %apic_id8 = getelementptr inbounds %struct.acpi_srat_x2apic_cpu_affinity, ptr %6, i32 0, i32 3, !dbg !123
  %7 = load i32, ptr %apic_id8, align 1, !dbg !123
  store i32 %7, ptr %apic_id, align 4, !dbg !124
  %8 = load i32, ptr %apic_id, align 4, !dbg !125
  %call9 = call zeroext i1 @apic_id_valid(i32 noundef %8) #9, !dbg !127
  br i1 %call9, label %if.end12, label %if.then10, !dbg !128

if.then10:                                        ; preds = %if.end7
  br label %do.body, !dbg !129

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !132

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %pxm, align 4, !dbg !129
  %10 = load i32, ptr %apic_id, align 4, !dbg !129
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %9, i32 noundef %10) #10, !dbg !129
  store i32 %call11, ptr %tmp, align 4, !dbg !132
  %11 = load i32, ptr %tmp, align 4, !dbg !129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !134

if.end12:                                         ; preds = %if.end7
  %12 = load i32, ptr %pxm, align 4, !dbg !135
  %call13 = call i32 @acpi_map_pxm_to_node(i32 noundef %12) #9, !dbg !136
  store i32 %call13, ptr %node, align 4, !dbg !137
  %13 = load i32, ptr %node, align 4, !dbg !138
  %cmp14 = icmp slt i32 %13, 0, !dbg !140
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !141

if.then16:                                        ; preds = %if.end12
  br label %do.body17, !dbg !142

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !145

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !145

do.end19:                                         ; preds = %do.cond18
  %14 = load i32, ptr %pxm, align 4, !dbg !142
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %14) #10, !dbg !142
  store i32 %call21, ptr %tmp20, align 4, !dbg !145
  %15 = load i32, ptr %tmp20, align 4, !dbg !142
  call void @bad_srat() #9, !dbg !147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !148

if.end22:                                         ; preds = %if.end12
  %16 = load i32, ptr %apic_id, align 4, !dbg !149
  %cmp23 = icmp sge i32 %16, 32768, !dbg !151
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !152

if.then25:                                        ; preds = %if.end22
  br label %do.body26, !dbg !153

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !156

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !156

do.end28:                                         ; preds = %do.cond27
  %17 = load i32, ptr %pxm, align 4, !dbg !153
  %18 = load i32, ptr %apic_id, align 4, !dbg !153
  %19 = load i32, ptr %node, align 4, !dbg !153
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %17, i32 noundef %18, i32 noundef %19) #10, !dbg !153
  store i32 %call30, ptr %tmp29, align 4, !dbg !156
  %20 = load i32, ptr %tmp29, align 4, !dbg !153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !158

if.end31:                                         ; preds = %if.end22
  %21 = load i32, ptr %apic_id, align 4, !dbg !159
  %22 = load i32, ptr %node, align 4, !dbg !160
  %conv32 = trunc i32 %22 to i16, !dbg !160
  call void @set_apicid_to_node(i32 noundef %21, i16 noundef signext %conv32) #9, !dbg !161
  %23 = load i32, ptr %node, align 4, !dbg !162
  call void @__node_set(i32 noundef %23, ptr noundef @numa_nodes_parsed) #9, !dbg !162
  br label %do.body33, !dbg !163

do.body33:                                        ; preds = %if.end31
  br label %do.cond34, !dbg !165

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !165

do.end35:                                         ; preds = %do.cond34
  %24 = load i32, ptr %pxm, align 4, !dbg !163
  %25 = load i32, ptr %apic_id, align 4, !dbg !163
  %26 = load i32, ptr %node, align 4, !dbg !163
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %24, i32 noundef %25, i32 noundef %26) #10, !dbg !163
  store i32 %call37, ptr %tmp36, align 4, !dbg !165
  %27 = load i32, ptr %tmp36, align 4, !dbg !163
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !167
  br label %cleanup, !dbg !167

cleanup:                                          ; preds = %do.end35, %do.end28, %do.end19, %do.end, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %apic_id) #8, !dbg !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #8, !dbg !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %pxm) #8, !dbg !167
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !167

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !168 dso_local i32 @srat_disabled() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !172 dso_local void @bad_srat() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @apic_id_valid(i32 noundef %apic_id) #4 align 16 !dbg !175 {
entry:
  %apic_id.addr = alloca i32, align 4
  store i32 %apic_id, ptr %apic_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apic_id.addr, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = load i32, ptr %apic_id.addr, align 4, !dbg !185
  %1 = load ptr, ptr @apic, align 8, !dbg !186
  %max_apic_id = getelementptr inbounds %struct.apic, ptr %1, i32 0, i32 17, !dbg !187
  %2 = load i32, ptr %max_apic_id, align 8, !dbg !187
  %cmp = icmp ule i32 %0, %2, !dbg !188
  ret i1 %cmp, !dbg !189
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !190 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !196 dso_local i32 @acpi_map_pxm_to_node(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_apicid_to_node(i32 noundef %apicid, i16 noundef signext %node) #6 align 16 !dbg !200 {
entry:
  %apicid.addr = alloca i32, align 4
  %node.addr = alloca i16, align 2
  store i32 %apicid, ptr %apicid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apicid.addr, metadata !208, metadata !DIExpression()), !dbg !210
  store i16 %node, ptr %node.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !209, metadata !DIExpression()), !dbg !211
  %0 = load i16, ptr %node.addr, align 2, !dbg !212
  %1 = load i32, ptr %apicid.addr, align 4, !dbg !213
  %idxprom = sext i32 %1 to i64, !dbg !214
  %arrayidx = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom, !dbg !214
  store i16 %0, ptr %arrayidx, align 2, !dbg !215
  ret void, !dbg !216
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__node_set(i32 noundef %node, ptr noundef %dstp) #4 align 16 !dbg !217 {
entry:
  %node.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !232, metadata !DIExpression()), !dbg !234
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !233, metadata !DIExpression()), !dbg !235
  %0 = load i32, ptr %node.addr, align 4, !dbg !236
  %conv = sext i32 %0 to i64, !dbg !236
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !237
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %1, i32 0, i32 0, !dbg !238
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !237
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #9, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_numa_processor_affinity_init(ptr noundef %pa) #0 section ".init.text" align 16 !dbg !241 {
entry:
  %pa.addr = alloca ptr, align 8
  %pxm = alloca i32, align 4
  %node = alloca i32, align 4
  %apic_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store ptr %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !258, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %pxm) #8, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %pxm, metadata !259, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #8, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %node, metadata !260, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %apic_id) #8, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %apic_id, metadata !261, metadata !DIExpression()), !dbg !267
  %call = call i32 @srat_disabled() #9, !dbg !268
  %tobool = icmp ne i32 %call, 0, !dbg !268
  br i1 %tobool, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !271

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pa.addr, align 8, !dbg !272
  %header = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %0, i32 0, i32 0, !dbg !274
  %length = getelementptr inbounds %struct.acpi_subtable_header, ptr %header, i32 0, i32 1, !dbg !275
  %1 = load i8, ptr %length, align 1, !dbg !275
  %conv = zext i8 %1 to i64, !dbg !272
  %cmp = icmp ne i64 %conv, 16, !dbg !276
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !277

if.then2:                                         ; preds = %if.end
  call void @bad_srat() #9, !dbg !278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !280

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pa.addr, align 8, !dbg !281
  %flags = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %2, i32 0, i32 3, !dbg !283
  %3 = load i32, ptr %flags, align 1, !dbg !283
  %and = and i32 %3, 1, !dbg !284
  %cmp4 = icmp eq i32 %and, 0, !dbg !285
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !286

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !287

if.end7:                                          ; preds = %if.end3
  %4 = load ptr, ptr %pa.addr, align 8, !dbg !288
  %proximity_domain_lo = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %4, i32 0, i32 1, !dbg !289
  %5 = load i8, ptr %proximity_domain_lo, align 1, !dbg !289
  %conv8 = zext i8 %5 to i32, !dbg !288
  store i32 %conv8, ptr %pxm, align 4, !dbg !290
  %6 = load i8, ptr @acpi_srat_revision, align 1, !dbg !291
  %conv9 = zext i8 %6 to i32, !dbg !291
  %cmp10 = icmp sge i32 %conv9, 2, !dbg !293
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !294

if.then12:                                        ; preds = %if.end7
  %7 = load ptr, ptr %pa.addr, align 8, !dbg !295
  %proximity_domain_hi = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %7, i32 0, i32 5, !dbg !296
  %arraydecay = getelementptr inbounds [3 x i8], ptr %proximity_domain_hi, i64 0, i64 0, !dbg !297
  %8 = load i32, ptr %arraydecay, align 1, !dbg !297
  %shl = shl i32 %8, 8, !dbg !298
  %9 = load i32, ptr %pxm, align 4, !dbg !299
  %or = or i32 %9, %shl, !dbg !299
  store i32 %or, ptr %pxm, align 4, !dbg !299
  br label %if.end13, !dbg !300

if.end13:                                         ; preds = %if.then12, %if.end7
  %10 = load i32, ptr %pxm, align 4, !dbg !301
  %call14 = call i32 @acpi_map_pxm_to_node(i32 noundef %10) #9, !dbg !302
  store i32 %call14, ptr %node, align 4, !dbg !303
  %11 = load i32, ptr %node, align 4, !dbg !304
  %cmp15 = icmp slt i32 %11, 0, !dbg !306
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !307

if.then17:                                        ; preds = %if.end13
  br label %do.body, !dbg !308

do.body:                                          ; preds = %if.then17
  br label %do.cond, !dbg !311

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !311

do.end:                                           ; preds = %do.cond
  %12 = load i32, ptr %pxm, align 4, !dbg !308
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %12) #10, !dbg !308
  store i32 %call18, ptr %tmp, align 4, !dbg !311
  %13 = load i32, ptr %tmp, align 4, !dbg !308
  call void @bad_srat() #9, !dbg !313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !314

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @get_uv_system_type() #9, !dbg !315
  %cmp21 = icmp uge i32 %call20, 2, !dbg !317
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !318

if.then23:                                        ; preds = %if.end19
  %14 = load ptr, ptr %pa.addr, align 8, !dbg !319
  %apic_id24 = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %14, i32 0, i32 2, !dbg !320
  %15 = load i8, ptr %apic_id24, align 1, !dbg !320
  %conv25 = zext i8 %15 to i32, !dbg !319
  %shl26 = shl i32 %conv25, 8, !dbg !321
  %16 = load ptr, ptr %pa.addr, align 8, !dbg !322
  %local_sapic_eid = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %16, i32 0, i32 4, !dbg !323
  %17 = load i8, ptr %local_sapic_eid, align 1, !dbg !323
  %conv27 = zext i8 %17 to i32, !dbg !322
  %or28 = or i32 %shl26, %conv27, !dbg !324
  store i32 %or28, ptr %apic_id, align 4, !dbg !325
  br label %if.end31, !dbg !326

if.else:                                          ; preds = %if.end19
  %18 = load ptr, ptr %pa.addr, align 8, !dbg !327
  %apic_id29 = getelementptr inbounds %struct.acpi_srat_cpu_affinity, ptr %18, i32 0, i32 2, !dbg !328
  %19 = load i8, ptr %apic_id29, align 1, !dbg !328
  %conv30 = zext i8 %19 to i32, !dbg !327
  store i32 %conv30, ptr %apic_id, align 4, !dbg !329
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then23
  %20 = load i32, ptr %apic_id, align 4, !dbg !330
  %cmp32 = icmp sge i32 %20, 32768, !dbg !332
  br i1 %cmp32, label %if.then34, label %if.end40, !dbg !333

if.then34:                                        ; preds = %if.end31
  br label %do.body35, !dbg !334

do.body35:                                        ; preds = %if.then34
  br label %do.cond36, !dbg !337

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !337

do.end37:                                         ; preds = %do.cond36
  %21 = load i32, ptr %pxm, align 4, !dbg !334
  %22 = load i32, ptr %apic_id, align 4, !dbg !334
  %23 = load i32, ptr %node, align 4, !dbg !334
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %21, i32 noundef %22, i32 noundef %23) #10, !dbg !334
  store i32 %call39, ptr %tmp38, align 4, !dbg !337
  %24 = load i32, ptr %tmp38, align 4, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !339

if.end40:                                         ; preds = %if.end31
  %25 = load i32, ptr %apic_id, align 4, !dbg !340
  %26 = load i32, ptr %node, align 4, !dbg !341
  %conv41 = trunc i32 %26 to i16, !dbg !341
  call void @set_apicid_to_node(i32 noundef %25, i16 noundef signext %conv41) #9, !dbg !342
  %27 = load i32, ptr %node, align 4, !dbg !343
  call void @__node_set(i32 noundef %27, ptr noundef @numa_nodes_parsed) #9, !dbg !343
  br label %do.body42, !dbg !344

do.body42:                                        ; preds = %if.end40
  br label %do.cond43, !dbg !346

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !346

do.end44:                                         ; preds = %do.cond43
  %28 = load i32, ptr %pxm, align 4, !dbg !344
  %29 = load i32, ptr %apic_id, align 4, !dbg !344
  %30 = load i32, ptr %node, align 4, !dbg !344
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %28, i32 noundef %29, i32 noundef %30) #10, !dbg !344
  store i32 %call46, ptr %tmp45, align 4, !dbg !346
  %31 = load i32, ptr %tmp45, align 4, !dbg !344
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !348
  br label %cleanup, !dbg !348

cleanup:                                          ; preds = %do.end44, %do.end37, %do.end, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %apic_id) #8, !dbg !348
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #8, !dbg !348
  call void @llvm.lifetime.end.p0(i64 4, ptr %pxm) #8, !dbg !348
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !348

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_uv_system_type() #6 align 16 !dbg !349 {
entry:
  ret i32 0, !dbg !352
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @x86_acpi_numa_init() #0 section ".init.text" align 16 !dbg !353 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !355, metadata !DIExpression()), !dbg !357
  %call = call i32 @acpi_numa_init() #9, !dbg !358
  store i32 %call, ptr %ret, align 4, !dbg !359
  %0 = load i32, ptr %ret, align 4, !dbg !360
  %cmp = icmp slt i32 %0, 0, !dbg !362
  br i1 %cmp, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !364
  store i32 %1, ptr %retval, align 4, !dbg !365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !365

if.end:                                           ; preds = %entry
  %call1 = call i32 @srat_disabled() #9, !dbg !366
  %tobool = icmp ne i32 %call1, 0, !dbg !366
  %2 = zext i1 %tobool to i64, !dbg !366
  %cond = select i1 %tobool, i32 -22, i32 0, !dbg !366
  store i32 %cond, ptr %retval, align 4, !dbg !367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !367

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !368
  %3 = load i32, ptr %retval, align 4, !dbg !368
  ret i32 %3, !dbg !368
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !369 dso_local i32 @acpi_numa_init() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !370 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !377, metadata !DIExpression()), !dbg !379
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !378, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !381
  %1 = load i64, ptr %nr.addr, align 8, !dbg !382
  %div = sdiv i64 %1, 64, !dbg !382
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !383
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !384
  %2 = load i64, ptr %nr.addr, align 8, !dbg !385
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !386
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !387
  ret void, !dbg !388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !389 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !401, metadata !DIExpression()), !dbg !403
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !402, metadata !DIExpression()), !dbg !404
  %0 = load ptr, ptr %v.addr, align 8, !dbg !405
  %1 = load i64, ptr %size.addr, align 8, !dbg !406
  %conv = trunc i64 %1 to i32, !dbg !406
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !407
  %2 = load ptr, ptr %v.addr, align 8, !dbg !408
  %3 = load i64, ptr %size.addr, align 8, !dbg !408
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !408
  ret void, !dbg !409
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !410 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !413, metadata !DIExpression()), !dbg !415
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !414, metadata !DIExpression()), !dbg !416
  %0 = load i64, ptr %nr.addr, align 8, !dbg !417
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !419
  br i1 %1, label %if.then, label %if.else, !dbg !420

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !421
  %3 = load i64, ptr %nr.addr, align 8, !dbg !421
  %shr = ashr i64 %3, 3, !dbg !421
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !421
  %4 = load i64, ptr %nr.addr, align 8, !dbg !423
  %and = and i64 %4, 7, !dbg !423
  %sh_prom = trunc i64 %and to i32, !dbg !423
  %shl = shl i32 1, %sh_prom, !dbg !423
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #8, !dbg !424, !srcloc !425
  br label %if.end, !dbg !426

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !427
  %6 = load i64, ptr %nr.addr, align 8, !dbg !429
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #8, !dbg !430, !srcloc !431
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !433 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !438, metadata !DIExpression()), !dbg !440
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !439, metadata !DIExpression()), !dbg !441
  ret i1 true, !dbg !442
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !443 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !448, metadata !DIExpression()), !dbg !451
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !449, metadata !DIExpression()), !dbg !452
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !450, metadata !DIExpression()), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/mm/srat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d92791621ff9e901c61002e94c2911a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 39)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 73)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 42)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !14, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !19, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.srat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/srat\22 -D KBUILD_BASENAME=\22srat\22 -D KBUILD_MODNAME=\22srat\22 -D __KBUILD_MODNAME=kmod_srat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/srat.ll arch/x86/mm/srat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !40, globals: !48, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28, !35}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uv_system_type", file: !29, line: 5, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "./arch/x86/include/asm/uv/uv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5e58d40ef5631aa3d35cdd3bfd24fd0")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "UV_NONE", value: 0)
!33 = !DIEnumerator(name: "UV_LEGACY_APIC", value: 1)
!34 = !DIEnumerator(name: "UV_X2APIC", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, baseType: !30, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "false", value: 0)
!39 = !DIEnumerator(name: "true", value: 1)
!40 = !{!41, !42, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !{!0, !7, !12, !17, !22, !24}
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 8, !"cf-protection-branch", i32 1}
!53 = !{i32 4, !"function_return_thunk_extern", i32 1}
!54 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!55 = !{i32 1, !"Code Model", i32 2}
!56 = !{i32 1, !"override-stack-alignment", i32 8}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = distinct !DISubprogram(name: "acpi_numa_x2apic_affinity_init", scope: !2, file: !2, line: 28, type: !59, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !87)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_x2apic_cpu_affinity", file: !63, line: 239, size: 192, elements: !64)
!63 = !DIFile(filename: "./include/acpi/actbl3.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae5563d00103906288df21d0542d6a3a")
!64 = !{!65, !76, !80, !83, !84, !85, !86}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !62, file: !63, line: 240, baseType: !66, size: 16)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !67, line: 96, size: 16, elements: !68)
!67 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!68 = !{!69, !75}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !67, line: 97, baseType: !70, size: 8)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !71, line: 17, baseType: !72)
!71 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !73, line: 21, baseType: !74)
!73 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !67, line: 98, baseType: !70, size: 8, offset: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !62, file: !63, line: 241, baseType: !77, size: 16, offset: 16)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !71, line: 19, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !73, line: 24, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain", scope: !62, file: !63, line: 242, baseType: !81, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !71, line: 21, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !73, line: 27, baseType: !30)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !62, file: !63, line: 243, baseType: !81, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !63, line: 244, baseType: !81, size: 32, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "clock_domain", scope: !62, file: !63, line: 245, baseType: !81, size: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !62, file: !63, line: 246, baseType: !81, size: 32, offset: 160)
!87 = !{!88, !89, !91, !92}
!88 = !DILocalVariable(name: "pa", arg: 1, scope: !58, file: !2, line: 28, type: !61)
!89 = !DILocalVariable(name: "pxm", scope: !58, file: !2, line: 30, type: !90)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DILocalVariable(name: "node", scope: !58, file: !2, line: 30, type: !90)
!92 = !DILocalVariable(name: "apic_id", scope: !58, file: !2, line: 31, type: !90)
!93 = !DILocation(line: 28, column: 70, scope: !58)
!94 = !DILocation(line: 30, column: 2, scope: !58)
!95 = !DILocation(line: 30, column: 6, scope: !58)
!96 = !DILocation(line: 30, column: 11, scope: !58)
!97 = !DILocation(line: 31, column: 2, scope: !58)
!98 = !DILocation(line: 31, column: 6, scope: !58)
!99 = !DILocation(line: 33, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !58, file: !2, line: 33, column: 6)
!101 = !DILocation(line: 33, column: 6, scope: !58)
!102 = !DILocation(line: 34, column: 3, scope: !100)
!103 = !DILocation(line: 35, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !58, file: !2, line: 35, column: 6)
!105 = !DILocation(line: 35, column: 10, scope: !104)
!106 = !DILocation(line: 35, column: 17, scope: !104)
!107 = !DILocation(line: 35, column: 24, scope: !104)
!108 = !DILocation(line: 35, column: 6, scope: !58)
!109 = !DILocation(line: 36, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !2, line: 35, column: 72)
!111 = !DILocation(line: 37, column: 3, scope: !110)
!112 = !DILocation(line: 39, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !58, file: !2, line: 39, column: 6)
!114 = !DILocation(line: 39, column: 11, scope: !113)
!115 = !DILocation(line: 39, column: 17, scope: !113)
!116 = !DILocation(line: 39, column: 42, scope: !113)
!117 = !DILocation(line: 39, column: 6, scope: !58)
!118 = !DILocation(line: 40, column: 3, scope: !113)
!119 = !DILocation(line: 41, column: 8, scope: !58)
!120 = !DILocation(line: 41, column: 12, scope: !58)
!121 = !DILocation(line: 41, column: 6, scope: !58)
!122 = !DILocation(line: 42, column: 12, scope: !58)
!123 = !DILocation(line: 42, column: 16, scope: !58)
!124 = !DILocation(line: 42, column: 10, scope: !58)
!125 = !DILocation(line: 43, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !58, file: !2, line: 43, column: 6)
!127 = !DILocation(line: 43, column: 7, scope: !126)
!128 = !DILocation(line: 43, column: 6, scope: !58)
!129 = !DILocation(line: 44, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 44, column: 3)
!131 = distinct !DILexicalBlock(scope: !126, file: !2, line: 43, column: 31)
!132 = !DILocation(line: 44, column: 3, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !2, line: 44, column: 3)
!134 = !DILocation(line: 45, column: 3, scope: !131)
!135 = !DILocation(line: 47, column: 30, scope: !58)
!136 = !DILocation(line: 47, column: 9, scope: !58)
!137 = !DILocation(line: 47, column: 7, scope: !58)
!138 = !DILocation(line: 48, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !58, file: !2, line: 48, column: 6)
!140 = !DILocation(line: 48, column: 11, scope: !139)
!141 = !DILocation(line: 48, column: 6, scope: !58)
!142 = !DILocation(line: 49, column: 3, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 49, column: 3)
!144 = distinct !DILexicalBlock(scope: !139, file: !2, line: 48, column: 16)
!145 = !DILocation(line: 49, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !2, line: 49, column: 3)
!147 = !DILocation(line: 50, column: 3, scope: !144)
!148 = !DILocation(line: 51, column: 3, scope: !144)
!149 = !DILocation(line: 54, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !58, file: !2, line: 54, column: 6)
!151 = !DILocation(line: 54, column: 14, scope: !150)
!152 = !DILocation(line: 54, column: 6, scope: !58)
!153 = !DILocation(line: 55, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 55, column: 3)
!155 = distinct !DILexicalBlock(scope: !150, file: !2, line: 54, column: 33)
!156 = !DILocation(line: 55, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !2, line: 55, column: 3)
!158 = !DILocation(line: 56, column: 3, scope: !155)
!159 = !DILocation(line: 58, column: 21, scope: !58)
!160 = !DILocation(line: 58, column: 30, scope: !58)
!161 = !DILocation(line: 58, column: 2, scope: !58)
!162 = !DILocation(line: 59, column: 2, scope: !58)
!163 = !DILocation(line: 60, column: 2, scope: !164)
!164 = distinct !DILexicalBlock(scope: !58, file: !2, line: 60, column: 2)
!165 = !DILocation(line: 60, column: 2, scope: !166)
!166 = distinct !DILexicalBlock(scope: !164, file: !2, line: 60, column: 2)
!167 = !DILocation(line: 62, column: 1, scope: !58)
!168 = !DISubprogram(name: "srat_disabled", scope: !169, file: !169, line: 22, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIFile(filename: "./include/acpi/acpi_numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e32f349aba46443cc0234aa43f68da7")
!170 = !DISubroutineType(types: !171)
!171 = !{!90}
!172 = !DISubprogram(name: "bad_srat", scope: !169, file: !169, line: 21, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = distinct !DISubprogram(name: "apic_id_valid", scope: !176, file: !176, line: 467, type: !177, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !182)
!176 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !81}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !180, line: 35, baseType: !181)
!180 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!181 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!182 = !{!183}
!183 = !DILocalVariable(name: "apic_id", arg: 1, scope: !175, file: !176, line: 467, type: !81)
!184 = !DILocation(line: 467, column: 47, scope: !175)
!185 = !DILocation(line: 469, column: 9, scope: !175)
!186 = !DILocation(line: 469, column: 20, scope: !175)
!187 = !DILocation(line: 469, column: 26, scope: !175)
!188 = !DILocation(line: 469, column: 17, scope: !175)
!189 = !DILocation(line: 469, column: 2, scope: !175)
!190 = !DISubprogram(name: "_printk", scope: !191, file: !191, line: 153, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!192 = !DISubroutineType(types: !193)
!193 = !{!90, !194, null}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!196 = !DISubprogram(name: "acpi_map_pxm_to_node", scope: !197, file: !197, line: 443, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!198 = !DISubroutineType(types: !199)
!199 = !{!90, !90}
!200 = distinct !DISubprogram(name: "set_apicid_to_node", scope: !201, file: !201, line: 31, type: !202, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !207)
!201 = !DIFile(filename: "./arch/x86/include/asm/numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd854ea31756e2db308aa8bc404b389b")
!202 = !DISubroutineType(types: !203)
!203 = !{null, !90, !204}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !71, line: 18, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !73, line: 23, baseType: !206)
!206 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!207 = !{!208, !209}
!208 = !DILocalVariable(name: "apicid", arg: 1, scope: !200, file: !201, line: 31, type: !90)
!209 = !DILocalVariable(name: "node", arg: 2, scope: !200, file: !201, line: 31, type: !204)
!210 = !DILocation(line: 31, column: 43, scope: !200)
!211 = !DILocation(line: 31, column: 55, scope: !200)
!212 = !DILocation(line: 33, column: 29, scope: !200)
!213 = !DILocation(line: 33, column: 19, scope: !200)
!214 = !DILocation(line: 33, column: 2, scope: !200)
!215 = !DILocation(line: 33, column: 27, scope: !200)
!216 = !DILocation(line: 34, column: 1, scope: !200)
!217 = distinct !DISubprogram(name: "__node_set", scope: !218, file: !218, line: 129, type: !219, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !231)
!218 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!219 = !DISubroutineType(types: !220)
!220 = !{null, !90, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !218, line: 99, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 99, size: 64, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !224, file: !218, line: 99, baseType: !227, size: 64)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 64, elements: !229)
!228 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!229 = !{!230}
!230 = !DISubrange(count: 1)
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "node", arg: 1, scope: !217, file: !218, line: 129, type: !90)
!233 = !DILocalVariable(name: "dstp", arg: 2, scope: !217, file: !218, line: 129, type: !221)
!234 = !DILocation(line: 129, column: 44, scope: !217)
!235 = !DILocation(line: 129, column: 71, scope: !217)
!236 = !DILocation(line: 131, column: 10, scope: !217)
!237 = !DILocation(line: 131, column: 16, scope: !217)
!238 = !DILocation(line: 131, column: 22, scope: !217)
!239 = !DILocation(line: 131, column: 2, scope: !217)
!240 = !DILocation(line: 132, column: 1, scope: !217)
!241 = distinct !DISubprogram(name: "acpi_numa_processor_affinity_init", scope: !2, file: !2, line: 66, type: !242, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !257)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_srat_cpu_affinity", file: !63, line: 204, size: 128, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !256}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !245, file: !63, line: 205, baseType: !66, size: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain_lo", scope: !245, file: !63, line: 206, baseType: !70, size: 8, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !245, file: !63, line: 207, baseType: !70, size: 8, offset: 24)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !63, line: 208, baseType: !81, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "local_sapic_eid", scope: !245, file: !63, line: 209, baseType: !70, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "proximity_domain_hi", scope: !245, file: !63, line: 210, baseType: !253, size: 24, offset: 72)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 24, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 3)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "clock_domain", scope: !245, file: !63, line: 211, baseType: !81, size: 32, offset: 96)
!257 = !{!258, !259, !260, !261}
!258 = !DILocalVariable(name: "pa", arg: 1, scope: !241, file: !2, line: 66, type: !244)
!259 = !DILocalVariable(name: "pxm", scope: !241, file: !2, line: 68, type: !90)
!260 = !DILocalVariable(name: "node", scope: !241, file: !2, line: 68, type: !90)
!261 = !DILocalVariable(name: "apic_id", scope: !241, file: !2, line: 69, type: !90)
!262 = !DILocation(line: 66, column: 66, scope: !241)
!263 = !DILocation(line: 68, column: 2, scope: !241)
!264 = !DILocation(line: 68, column: 6, scope: !241)
!265 = !DILocation(line: 68, column: 11, scope: !241)
!266 = !DILocation(line: 69, column: 2, scope: !241)
!267 = !DILocation(line: 69, column: 6, scope: !241)
!268 = !DILocation(line: 71, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !241, file: !2, line: 71, column: 6)
!270 = !DILocation(line: 71, column: 6, scope: !241)
!271 = !DILocation(line: 72, column: 3, scope: !269)
!272 = !DILocation(line: 73, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !241, file: !2, line: 73, column: 6)
!274 = !DILocation(line: 73, column: 10, scope: !273)
!275 = !DILocation(line: 73, column: 17, scope: !273)
!276 = !DILocation(line: 73, column: 24, scope: !273)
!277 = !DILocation(line: 73, column: 6, scope: !241)
!278 = !DILocation(line: 74, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !273, file: !2, line: 73, column: 66)
!280 = !DILocation(line: 75, column: 3, scope: !279)
!281 = !DILocation(line: 77, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !241, file: !2, line: 77, column: 6)
!283 = !DILocation(line: 77, column: 11, scope: !282)
!284 = !DILocation(line: 77, column: 17, scope: !282)
!285 = !DILocation(line: 77, column: 42, scope: !282)
!286 = !DILocation(line: 77, column: 6, scope: !241)
!287 = !DILocation(line: 78, column: 3, scope: !282)
!288 = !DILocation(line: 79, column: 8, scope: !241)
!289 = !DILocation(line: 79, column: 12, scope: !241)
!290 = !DILocation(line: 79, column: 6, scope: !241)
!291 = !DILocation(line: 80, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !241, file: !2, line: 80, column: 6)
!293 = !DILocation(line: 80, column: 25, scope: !292)
!294 = !DILocation(line: 80, column: 6, scope: !241)
!295 = !DILocation(line: 81, column: 27, scope: !292)
!296 = !DILocation(line: 81, column: 31, scope: !292)
!297 = !DILocation(line: 81, column: 10, scope: !292)
!298 = !DILocation(line: 81, column: 52, scope: !292)
!299 = !DILocation(line: 81, column: 7, scope: !292)
!300 = !DILocation(line: 81, column: 3, scope: !292)
!301 = !DILocation(line: 82, column: 30, scope: !241)
!302 = !DILocation(line: 82, column: 9, scope: !241)
!303 = !DILocation(line: 82, column: 7, scope: !241)
!304 = !DILocation(line: 83, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !241, file: !2, line: 83, column: 6)
!306 = !DILocation(line: 83, column: 11, scope: !305)
!307 = !DILocation(line: 83, column: 6, scope: !241)
!308 = !DILocation(line: 84, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 84, column: 3)
!310 = distinct !DILexicalBlock(scope: !305, file: !2, line: 83, column: 16)
!311 = !DILocation(line: 84, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !2, line: 84, column: 3)
!313 = !DILocation(line: 85, column: 3, scope: !310)
!314 = !DILocation(line: 86, column: 3, scope: !310)
!315 = !DILocation(line: 89, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !241, file: !2, line: 89, column: 6)
!317 = !DILocation(line: 89, column: 27, scope: !316)
!318 = !DILocation(line: 89, column: 6, scope: !241)
!319 = !DILocation(line: 90, column: 14, scope: !316)
!320 = !DILocation(line: 90, column: 18, scope: !316)
!321 = !DILocation(line: 90, column: 26, scope: !316)
!322 = !DILocation(line: 90, column: 34, scope: !316)
!323 = !DILocation(line: 90, column: 38, scope: !316)
!324 = !DILocation(line: 90, column: 32, scope: !316)
!325 = !DILocation(line: 90, column: 11, scope: !316)
!326 = !DILocation(line: 90, column: 3, scope: !316)
!327 = !DILocation(line: 92, column: 13, scope: !316)
!328 = !DILocation(line: 92, column: 17, scope: !316)
!329 = !DILocation(line: 92, column: 11, scope: !316)
!330 = !DILocation(line: 94, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !241, file: !2, line: 94, column: 6)
!332 = !DILocation(line: 94, column: 14, scope: !331)
!333 = !DILocation(line: 94, column: 6, scope: !241)
!334 = !DILocation(line: 95, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 95, column: 3)
!336 = distinct !DILexicalBlock(scope: !331, file: !2, line: 94, column: 33)
!337 = !DILocation(line: 95, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !2, line: 95, column: 3)
!339 = !DILocation(line: 96, column: 3, scope: !336)
!340 = !DILocation(line: 99, column: 21, scope: !241)
!341 = !DILocation(line: 99, column: 30, scope: !241)
!342 = !DILocation(line: 99, column: 2, scope: !241)
!343 = !DILocation(line: 100, column: 2, scope: !241)
!344 = !DILocation(line: 101, column: 2, scope: !345)
!345 = distinct !DILexicalBlock(scope: !241, file: !2, line: 101, column: 2)
!346 = !DILocation(line: 101, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !345, file: !2, line: 101, column: 2)
!348 = !DILocation(line: 103, column: 1, scope: !241)
!349 = distinct !DISubprogram(name: "get_uv_system_type", scope: !29, file: !29, line: 35, type: !350, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!350 = !DISubroutineType(types: !351)
!351 = !{!28}
!352 = !DILocation(line: 35, column: 62, scope: !349)
!353 = distinct !DISubprogram(name: "x86_acpi_numa_init", scope: !2, file: !2, line: 105, type: !170, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !354)
!354 = !{!355}
!355 = !DILocalVariable(name: "ret", scope: !353, file: !2, line: 107, type: !90)
!356 = !DILocation(line: 107, column: 2, scope: !353)
!357 = !DILocation(line: 107, column: 6, scope: !353)
!358 = !DILocation(line: 109, column: 8, scope: !353)
!359 = !DILocation(line: 109, column: 6, scope: !353)
!360 = !DILocation(line: 110, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !353, file: !2, line: 110, column: 6)
!362 = !DILocation(line: 110, column: 10, scope: !361)
!363 = !DILocation(line: 110, column: 6, scope: !353)
!364 = !DILocation(line: 111, column: 10, scope: !361)
!365 = !DILocation(line: 111, column: 3, scope: !361)
!366 = !DILocation(line: 112, column: 9, scope: !353)
!367 = !DILocation(line: 112, column: 2, scope: !353)
!368 = !DILocation(line: 113, column: 1, scope: !353)
!369 = !DISubprogram(name: "acpi_numa_init", scope: !197, file: !197, line: 225, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = distinct !DISubprogram(name: "set_bit", scope: !371, file: !371, line: 26, type: !372, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !376)
!371 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!372 = !DISubroutineType(types: !373)
!373 = !{null, !47, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !228)
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "nr", arg: 1, scope: !370, file: !371, line: 26, type: !47)
!378 = !DILocalVariable(name: "addr", arg: 2, scope: !370, file: !371, line: 26, type: !374)
!379 = !DILocation(line: 26, column: 42, scope: !370)
!380 = !DILocation(line: 26, column: 70, scope: !370)
!381 = !DILocation(line: 28, column: 26, scope: !370)
!382 = !DILocation(line: 28, column: 33, scope: !370)
!383 = !DILocation(line: 28, column: 31, scope: !370)
!384 = !DILocation(line: 28, column: 2, scope: !370)
!385 = !DILocation(line: 29, column: 15, scope: !370)
!386 = !DILocation(line: 29, column: 19, scope: !370)
!387 = !DILocation(line: 29, column: 2, scope: !370)
!388 = !DILocation(line: 30, column: 1, scope: !370)
!389 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !390, file: !390, line: 80, type: !391, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !400)
!390 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !396}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 61, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !398, line: 72, baseType: !399)
!398 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !398, line: 16, baseType: !228)
!400 = !{!401, !402}
!401 = !DILocalVariable(name: "v", arg: 1, scope: !389, file: !390, line: 80, type: !393)
!402 = !DILocalVariable(name: "size", arg: 2, scope: !389, file: !390, line: 80, type: !396)
!403 = !DILocation(line: 80, column: 74, scope: !389)
!404 = !DILocation(line: 80, column: 84, scope: !389)
!405 = !DILocation(line: 82, column: 20, scope: !389)
!406 = !DILocation(line: 82, column: 23, scope: !389)
!407 = !DILocation(line: 82, column: 2, scope: !389)
!408 = !DILocation(line: 83, column: 2, scope: !389)
!409 = !DILocation(line: 84, column: 1, scope: !389)
!410 = distinct !DISubprogram(name: "arch_set_bit", scope: !411, file: !411, line: 52, type: !372, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !412)
!411 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!412 = !{!413, !414}
!413 = !DILocalVariable(name: "nr", arg: 1, scope: !410, file: !411, line: 52, type: !47)
!414 = !DILocalVariable(name: "addr", arg: 2, scope: !410, file: !411, line: 52, type: !374)
!415 = !DILocation(line: 52, column: 19, scope: !410)
!416 = !DILocation(line: 52, column: 47, scope: !410)
!417 = !DILocation(line: 54, column: 27, scope: !418)
!418 = distinct !DILexicalBlock(scope: !410, file: !411, line: 54, column: 6)
!419 = !DILocation(line: 54, column: 6, scope: !418)
!420 = !DILocation(line: 54, column: 6, scope: !410)
!421 = !DILocation(line: 56, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !411, line: 54, column: 32)
!423 = !DILocation(line: 57, column: 12, scope: !422)
!424 = !DILocation(line: 55, column: 3, scope: !422)
!425 = !{i64 2147787215, i64 2147787254, i64 2147787275, i64 2147787312, i64 2147787335, i64 2147787205}
!426 = !DILocation(line: 59, column: 2, scope: !422)
!427 = !DILocation(line: 61, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !418, file: !411, line: 59, column: 9)
!429 = !DILocation(line: 61, column: 32, scope: !428)
!430 = !DILocation(line: 60, column: 3, scope: !428)
!431 = !{i64 2147787500, i64 2147787539, i64 2147787560, i64 2147787597, i64 2147787620, i64 2147787490}
!432 = !DILocation(line: 63, column: 1, scope: !410)
!433 = distinct !DISubprogram(name: "kasan_check_write", scope: !434, file: !434, line: 44, type: !435, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !437)
!434 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!435 = !DISubroutineType(types: !436)
!436 = !{!179, !393, !30}
!437 = !{!438, !439}
!438 = !DILocalVariable(name: "p", arg: 1, scope: !433, file: !434, line: 44, type: !393)
!439 = !DILocalVariable(name: "size", arg: 2, scope: !433, file: !434, line: 44, type: !30)
!440 = !DILocation(line: 44, column: 59, scope: !433)
!441 = !DILocation(line: 44, column: 75, scope: !433)
!442 = !DILocation(line: 46, column: 2, scope: !433)
!443 = distinct !DISubprogram(name: "kcsan_check_access", scope: !444, file: !444, line: 229, type: !445, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !447)
!444 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!445 = !DISubroutineType(types: !446)
!446 = !{null, !393, !396, !90}
!447 = !{!448, !449, !450}
!448 = !DILocalVariable(name: "ptr", arg: 1, scope: !443, file: !444, line: 229, type: !393)
!449 = !DILocalVariable(name: "size", arg: 2, scope: !443, file: !444, line: 229, type: !396)
!450 = !DILocalVariable(name: "type", arg: 3, scope: !443, file: !444, line: 230, type: !90)
!451 = !DILocation(line: 229, column: 60, scope: !443)
!452 = !DILocation(line: 229, column: 72, scope: !443)
!453 = !DILocation(line: 230, column: 15, scope: !443)
!454 = !DILocation(line: 230, column: 23, scope: !443)
