; ModuleID = 'drivers/acpi/processor_core.c'
source_filename = "drivers/acpi/processor_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_phys_id: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_phys_id ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_cpuid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_cpuid ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_table_madt = type { %struct.acpi_table_header, i32, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_subtable_header = type { i8, i8 }
%struct.anon.1 = type { i32, i32, ptr }
%struct.acpi_madt_local_apic = type { %struct.acpi_subtable_header, i8, i8, i32 }
%struct.acpi_madt_local_x2apic = type { %struct.acpi_subtable_header, i16, i32, i32, i32 }
%struct.acpi_madt_local_sapic = type { %struct.acpi_subtable_header, i8, i8, i8, [3 x i8], i32, i32, [0 x i8] }
%struct.acpi_madt_generic_interrupt = type <{ %struct.acpi_subtable_header, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i8, [1 x i8], i16, i16 }>
%struct.acpi_madt_rintc = type <{ %struct.acpi_subtable_header, i8, i8, i32, i64, i32, i32, i64, i32 }>
%struct.acpi_madt_core_pic = type <{ %struct.acpi_subtable_header, i8, i32, i32, i32 }>
%struct.acpi_madt_io_apic = type { %struct.acpi_subtable_header, i8, i8, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"APIC\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_acpi_get_phys_id224 = internal global ptr @acpi_get_phys_id, section ".discard.addressable", align 8, !dbg !7
@nr_cpu_ids = external dso_local global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@x86_cpu_to_apicid = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_acpi_get_cpuid225 = internal global ptr @acpi_get_cpuid, section ".discard.addressable", align 8, !dbg !188
@__const.map_mat_entry.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_MAT\00", align 1, !dbg !190
@get_madt_table.madt = internal global ptr null, align 8, !dbg !192
@get_madt_table.read_madt = internal global i32 0, align 4, !dbg !203
@__const.parse_mat_ioapic_entry.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_get_phys_id224, ptr @__UNIQUE_ID___addressable_acpi_get_cpuid225], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_map_madt_entry(i32 noundef %acpi_id) #0 section ".init.text" align 16 !dbg !214 {
entry:
  %retval = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %madt = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !218, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %madt) #10, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %madt, metadata !219, metadata !DIExpression()), !dbg !223
  store ptr null, ptr %madt, align 8, !dbg !223
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #10, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !220, metadata !DIExpression()), !dbg !225
  %call = call i32 @acpi_get_table(ptr noundef @.str, i32 noundef 0, ptr noundef %madt) #11, !dbg !226
  %0 = load ptr, ptr %madt, align 8, !dbg !227
  %tobool = icmp ne ptr %0, null, !dbg !227
  br i1 %tobool, label %if.end, label %if.then, !dbg !229

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !230

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %madt, align 8, !dbg !231
  %2 = load i32, ptr %acpi_id.addr, align 4, !dbg !232
  %call1 = call i32 @map_madt_entry(ptr noundef %1, i32 noundef 1, i32 noundef %2) #11, !dbg !233
  store i32 %call1, ptr %rv, align 4, !dbg !234
  %3 = load ptr, ptr %madt, align 8, !dbg !235
  call void @acpi_put_table(ptr noundef %3) #11, !dbg !236
  %4 = load i32, ptr %rv, align 4, !dbg !237
  store i32 %4, ptr %retval, align 4, !dbg !238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !238

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #10, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr %madt) #10, !dbg !239
  %5 = load i32, ptr %retval, align 4, !dbg !239
  ret i32 %5, !dbg !239
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !240 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_madt_entry(ptr noundef %madt, i32 noundef %type, i32 noundef %acpi_id) #4 align 16 !dbg !247 {
entry:
  %retval = alloca i32, align 4
  %madt.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %madt_end = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %phys_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %header5 = alloca ptr, align 8
  store ptr %madt, ptr %madt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %madt.addr, metadata !251, metadata !DIExpression()), !dbg !259
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !252, metadata !DIExpression()), !dbg !260
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !253, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 8, ptr %madt_end) #10, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %madt_end, metadata !254, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #10, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !255, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 4, ptr %phys_id) #10, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %phys_id, metadata !256, metadata !DIExpression()), !dbg !266
  store i32 -1, ptr %phys_id, align 4, !dbg !266
  %0 = load ptr, ptr %madt.addr, align 8, !dbg !267
  %tobool = icmp ne ptr %0, null, !dbg !267
  br i1 %tobool, label %if.end, label %if.then, !dbg !269

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %phys_id, align 4, !dbg !270
  store i32 %1, ptr %retval, align 4, !dbg !271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup72, !dbg !271

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %madt.addr, align 8, !dbg !272
  %3 = ptrtoint ptr %2 to i64, !dbg !273
  store i64 %3, ptr %entry1, align 8, !dbg !274
  %4 = load i64, ptr %entry1, align 8, !dbg !275
  %5 = load ptr, ptr %madt.addr, align 8, !dbg !276
  %header = getelementptr inbounds %struct.acpi_table_madt, ptr %5, i32 0, i32 0, !dbg !277
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !278
  %6 = load i32, ptr %length, align 1, !dbg !278
  %conv = zext i32 %6 to i64, !dbg !276
  %add = add i64 %4, %conv, !dbg !279
  store i64 %add, ptr %madt_end, align 8, !dbg !280
  %7 = load i64, ptr %entry1, align 8, !dbg !281
  %add2 = add i64 %7, 44, !dbg !281
  store i64 %add2, ptr %entry1, align 8, !dbg !281
  br label %while.cond, !dbg !282

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %8 = load i64, ptr %entry1, align 8, !dbg !283
  %add3 = add i64 %8, 2, !dbg !284
  %9 = load i64, ptr %madt_end, align 8, !dbg !285
  %cmp = icmp ult i64 %add3, %9, !dbg !286
  br i1 %cmp, label %while.body, label %while.end, !dbg !282

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %header5) #10, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %header5, metadata !257, metadata !DIExpression()), !dbg !288
  %10 = load i64, ptr %entry1, align 8, !dbg !289
  %11 = inttoptr i64 %10 to ptr, !dbg !290
  store ptr %11, ptr %header5, align 8, !dbg !288
  %12 = load ptr, ptr %header5, align 8, !dbg !291
  %type6 = getelementptr inbounds %struct.acpi_subtable_header, ptr %12, i32 0, i32 0, !dbg !293
  %13 = load i8, ptr %type6, align 1, !dbg !293
  %conv7 = zext i8 %13 to i32, !dbg !291
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !294
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !295

if.then10:                                        ; preds = %while.body
  %14 = load ptr, ptr %header5, align 8, !dbg !296
  %15 = load i32, ptr %acpi_id.addr, align 4, !dbg !299
  %call = call i32 @map_lapic_id(ptr noundef %14, i32 noundef %15, ptr noundef %phys_id) #11, !dbg !300
  %tobool11 = icmp ne i32 %call, 0, !dbg !300
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !301

if.then12:                                        ; preds = %if.then10
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !302

if.end13:                                         ; preds = %if.then10
  br label %if.end68, !dbg !303

if.else:                                          ; preds = %while.body
  %16 = load ptr, ptr %header5, align 8, !dbg !304
  %type14 = getelementptr inbounds %struct.acpi_subtable_header, ptr %16, i32 0, i32 0, !dbg !306
  %17 = load i8, ptr %type14, align 1, !dbg !306
  %conv15 = zext i8 %17 to i32, !dbg !304
  %cmp16 = icmp eq i32 %conv15, 9, !dbg !307
  br i1 %cmp16, label %if.then18, label %if.else23, !dbg !308

if.then18:                                        ; preds = %if.else
  %18 = load ptr, ptr %header5, align 8, !dbg !309
  %19 = load i32, ptr %type.addr, align 4, !dbg !312
  %20 = load i32, ptr %acpi_id.addr, align 4, !dbg !313
  %call19 = call i32 @map_x2apic_id(ptr noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %phys_id) #11, !dbg !314
  %tobool20 = icmp ne i32 %call19, 0, !dbg !314
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !315

if.then21:                                        ; preds = %if.then18
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end22:                                         ; preds = %if.then18
  br label %if.end67, !dbg !317

if.else23:                                        ; preds = %if.else
  %21 = load ptr, ptr %header5, align 8, !dbg !318
  %type24 = getelementptr inbounds %struct.acpi_subtable_header, ptr %21, i32 0, i32 0, !dbg !320
  %22 = load i8, ptr %type24, align 1, !dbg !320
  %conv25 = zext i8 %22 to i32, !dbg !318
  %cmp26 = icmp eq i32 %conv25, 7, !dbg !321
  br i1 %cmp26, label %if.then28, label %if.else33, !dbg !322

if.then28:                                        ; preds = %if.else23
  %23 = load ptr, ptr %header5, align 8, !dbg !323
  %24 = load i32, ptr %type.addr, align 4, !dbg !326
  %25 = load i32, ptr %acpi_id.addr, align 4, !dbg !327
  %call29 = call i32 @map_lsapic_id(ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %phys_id) #11, !dbg !328
  %tobool30 = icmp ne i32 %call29, 0, !dbg !328
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !329

if.then31:                                        ; preds = %if.then28
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !330

if.end32:                                         ; preds = %if.then28
  br label %if.end66, !dbg !331

if.else33:                                        ; preds = %if.else23
  %26 = load ptr, ptr %header5, align 8, !dbg !332
  %type34 = getelementptr inbounds %struct.acpi_subtable_header, ptr %26, i32 0, i32 0, !dbg !334
  %27 = load i8, ptr %type34, align 1, !dbg !334
  %conv35 = zext i8 %27 to i32, !dbg !332
  %cmp36 = icmp eq i32 %conv35, 11, !dbg !335
  br i1 %cmp36, label %if.then38, label %if.else43, !dbg !336

if.then38:                                        ; preds = %if.else33
  %28 = load ptr, ptr %header5, align 8, !dbg !337
  %29 = load i32, ptr %type.addr, align 4, !dbg !340
  %30 = load i32, ptr %acpi_id.addr, align 4, !dbg !341
  %call39 = call i32 @map_gicc_mpidr(ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %phys_id) #11, !dbg !342
  %tobool40 = icmp ne i32 %call39, 0, !dbg !342
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !343

if.then41:                                        ; preds = %if.then38
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !344

if.end42:                                         ; preds = %if.then38
  br label %if.end65, !dbg !345

if.else43:                                        ; preds = %if.else33
  %31 = load ptr, ptr %header5, align 8, !dbg !346
  %type44 = getelementptr inbounds %struct.acpi_subtable_header, ptr %31, i32 0, i32 0, !dbg !348
  %32 = load i8, ptr %type44, align 1, !dbg !348
  %conv45 = zext i8 %32 to i32, !dbg !346
  %cmp46 = icmp eq i32 %conv45, 24, !dbg !349
  br i1 %cmp46, label %if.then48, label %if.else53, !dbg !350

if.then48:                                        ; preds = %if.else43
  %33 = load ptr, ptr %header5, align 8, !dbg !351
  %34 = load i32, ptr %type.addr, align 4, !dbg !354
  %35 = load i32, ptr %acpi_id.addr, align 4, !dbg !355
  %call49 = call i32 @map_rintc_hartid(ptr noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %phys_id) #11, !dbg !356
  %tobool50 = icmp ne i32 %call49, 0, !dbg !356
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !357

if.then51:                                        ; preds = %if.then48
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !358

if.end52:                                         ; preds = %if.then48
  br label %if.end64, !dbg !359

if.else53:                                        ; preds = %if.else43
  %36 = load ptr, ptr %header5, align 8, !dbg !360
  %type54 = getelementptr inbounds %struct.acpi_subtable_header, ptr %36, i32 0, i32 0, !dbg !362
  %37 = load i8, ptr %type54, align 1, !dbg !362
  %conv55 = zext i8 %37 to i32, !dbg !360
  %cmp56 = icmp eq i32 %conv55, 17, !dbg !363
  br i1 %cmp56, label %if.then58, label %if.end63, !dbg !364

if.then58:                                        ; preds = %if.else53
  %38 = load ptr, ptr %header5, align 8, !dbg !365
  %39 = load i32, ptr %type.addr, align 4, !dbg !368
  %40 = load i32, ptr %acpi_id.addr, align 4, !dbg !369
  %call59 = call i32 @map_core_pic_id(ptr noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef %phys_id) #11, !dbg !370
  %tobool60 = icmp ne i32 %call59, 0, !dbg !370
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !371

if.then61:                                        ; preds = %if.then58
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !372

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !373

if.end63:                                         ; preds = %if.end62, %if.else53
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end52
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end42
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end32
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end22
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end13
  %41 = load ptr, ptr %header5, align 8, !dbg !374
  %length69 = getelementptr inbounds %struct.acpi_subtable_header, ptr %41, i32 0, i32 1, !dbg !375
  %42 = load i8, ptr %length69, align 1, !dbg !375
  %conv70 = zext i8 %42 to i64, !dbg !374
  %43 = load i64, ptr %entry1, align 8, !dbg !376
  %add71 = add i64 %43, %conv70, !dbg !376
  store i64 %add71, ptr %entry1, align 8, !dbg !376
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !377
  br label %cleanup, !dbg !377

cleanup:                                          ; preds = %if.end68, %if.then61, %if.then51, %if.then41, %if.then31, %if.then21, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %header5) #10, !dbg !377
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !282, !llvm.loop !378

while.end:                                        ; preds = %cleanup, %while.cond
  %44 = load i32, ptr %phys_id, align 4, !dbg !381
  store i32 %44, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup72, !dbg !382

cleanup72:                                        ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %phys_id) #10, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #10, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %madt_end) #10, !dbg !383
  %45 = load i32, ptr %retval, align 4, !dbg !383
  ret i32 %45, !dbg !383

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !384 dso_local void @acpi_put_table(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_phys_id(ptr noundef %handle, i32 noundef %type, i32 noundef %acpi_id) #4 align 16 !dbg !387 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %phys_id = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !392, metadata !DIExpression()), !dbg !396
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !393, metadata !DIExpression()), !dbg !397
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 4, ptr %phys_id) #10, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %phys_id, metadata !395, metadata !DIExpression()), !dbg !400
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !401
  %1 = load i32, ptr %type.addr, align 4, !dbg !402
  %2 = load i32, ptr %acpi_id.addr, align 4, !dbg !403
  %call = call i32 @map_mat_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !404
  store i32 %call, ptr %phys_id, align 4, !dbg !405
  %3 = load i32, ptr %phys_id, align 4, !dbg !406
  %call1 = call zeroext i1 @invalid_phys_cpuid(i32 noundef %3) #11, !dbg !408
  br i1 %call1, label %if.then, label %if.end, !dbg !409

if.then:                                          ; preds = %entry
  %call2 = call ptr @get_madt_table() #11, !dbg !410
  %4 = load i32, ptr %type.addr, align 4, !dbg !411
  %5 = load i32, ptr %acpi_id.addr, align 4, !dbg !412
  %call3 = call i32 @map_madt_entry(ptr noundef %call2, i32 noundef %4, i32 noundef %5) #11, !dbg !413
  store i32 %call3, ptr %phys_id, align 4, !dbg !414
  br label %if.end, !dbg !415

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %phys_id, align 4, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %phys_id) #10, !dbg !417
  ret i32 %6, !dbg !418
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_mat_entry(ptr noundef %handle, i32 noundef %type, i32 noundef %acpi_id) #4 align 16 !dbg !419 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca ptr, align 8
  %header = alloca ptr, align 8
  %phys_id = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !421, metadata !DIExpression()), !dbg !482
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !422, metadata !DIExpression()), !dbg !483
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !423, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #10, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !424, metadata !DIExpression()), !dbg !486
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.map_mat_entry.buffer, i64 16, i1 false), !dbg !486
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #10, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !429, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #10, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %header, metadata !479, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 4, ptr %phys_id) #10, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %phys_id, metadata !480, metadata !DIExpression()), !dbg !492
  store i32 -1, ptr %phys_id, align 4, !dbg !492
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !493
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str.1, ptr noundef null, ptr noundef %buffer) #11, !dbg !493
  %tobool = icmp ne i32 %call, 0, !dbg !493
  br i1 %tobool, label %if.then, label %if.end, !dbg !495

if.then:                                          ; preds = %entry
  br label %exit, !dbg !496

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !497
  %1 = load i64, ptr %length, align 8, !dbg !497
  %tobool1 = icmp ne i64 %1, 0, !dbg !499
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !500

lor.lhs.false:                                    ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !501
  %2 = load ptr, ptr %pointer, align 8, !dbg !501
  %tobool2 = icmp ne ptr %2, null, !dbg !502
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !503

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %exit, !dbg !504

if.end4:                                          ; preds = %lor.lhs.false
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !505
  %3 = load ptr, ptr %pointer5, align 8, !dbg !505
  store ptr %3, ptr %obj, align 8, !dbg !506
  %4 = load ptr, ptr %obj, align 8, !dbg !507
  %5 = load i32, ptr %4, align 8, !dbg !509
  %cmp = icmp ne i32 %5, 3, !dbg !510
  br i1 %cmp, label %if.then10, label %lor.lhs.false6, !dbg !511

lor.lhs.false6:                                   ; preds = %if.end4
  %6 = load ptr, ptr %obj, align 8, !dbg !512
  %length7 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 1, !dbg !513
  %7 = load i32, ptr %length7, align 4, !dbg !513
  %conv = zext i32 %7 to i64, !dbg !512
  %cmp8 = icmp ult i64 %conv, 2, !dbg !514
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !515

if.then10:                                        ; preds = %lor.lhs.false6, %if.end4
  br label %exit, !dbg !516

if.end11:                                         ; preds = %lor.lhs.false6
  %8 = load ptr, ptr %obj, align 8, !dbg !518
  %pointer12 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 2, !dbg !519
  %9 = load ptr, ptr %pointer12, align 8, !dbg !519
  store ptr %9, ptr %header, align 8, !dbg !520
  %10 = load ptr, ptr %header, align 8, !dbg !521
  %type13 = getelementptr inbounds %struct.acpi_subtable_header, ptr %10, i32 0, i32 0, !dbg !523
  %11 = load i8, ptr %type13, align 1, !dbg !523
  %conv14 = zext i8 %11 to i32, !dbg !521
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !524
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !525

if.then17:                                        ; preds = %if.end11
  %12 = load ptr, ptr %header, align 8, !dbg !526
  %13 = load i32, ptr %acpi_id.addr, align 4, !dbg !527
  %call18 = call i32 @map_lapic_id(ptr noundef %12, i32 noundef %13, ptr noundef %phys_id) #11, !dbg !528
  br label %if.end50, !dbg !528

if.else:                                          ; preds = %if.end11
  %14 = load ptr, ptr %header, align 8, !dbg !529
  %type19 = getelementptr inbounds %struct.acpi_subtable_header, ptr %14, i32 0, i32 0, !dbg !531
  %15 = load i8, ptr %type19, align 1, !dbg !531
  %conv20 = zext i8 %15 to i32, !dbg !529
  %cmp21 = icmp eq i32 %conv20, 7, !dbg !532
  br i1 %cmp21, label %if.then23, label %if.else25, !dbg !533

if.then23:                                        ; preds = %if.else
  %16 = load ptr, ptr %header, align 8, !dbg !534
  %17 = load i32, ptr %type.addr, align 4, !dbg !535
  %18 = load i32, ptr %acpi_id.addr, align 4, !dbg !536
  %call24 = call i32 @map_lsapic_id(ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %phys_id) #11, !dbg !537
  br label %if.end49, !dbg !537

if.else25:                                        ; preds = %if.else
  %19 = load ptr, ptr %header, align 8, !dbg !538
  %type26 = getelementptr inbounds %struct.acpi_subtable_header, ptr %19, i32 0, i32 0, !dbg !540
  %20 = load i8, ptr %type26, align 1, !dbg !540
  %conv27 = zext i8 %20 to i32, !dbg !538
  %cmp28 = icmp eq i32 %conv27, 9, !dbg !541
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !542

if.then30:                                        ; preds = %if.else25
  %21 = load ptr, ptr %header, align 8, !dbg !543
  %22 = load i32, ptr %type.addr, align 4, !dbg !544
  %23 = load i32, ptr %acpi_id.addr, align 4, !dbg !545
  %call31 = call i32 @map_x2apic_id(ptr noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef %phys_id) #11, !dbg !546
  br label %if.end48, !dbg !546

if.else32:                                        ; preds = %if.else25
  %24 = load ptr, ptr %header, align 8, !dbg !547
  %type33 = getelementptr inbounds %struct.acpi_subtable_header, ptr %24, i32 0, i32 0, !dbg !549
  %25 = load i8, ptr %type33, align 1, !dbg !549
  %conv34 = zext i8 %25 to i32, !dbg !547
  %cmp35 = icmp eq i32 %conv34, 11, !dbg !550
  br i1 %cmp35, label %if.then37, label %if.else39, !dbg !551

if.then37:                                        ; preds = %if.else32
  %26 = load ptr, ptr %header, align 8, !dbg !552
  %27 = load i32, ptr %type.addr, align 4, !dbg !553
  %28 = load i32, ptr %acpi_id.addr, align 4, !dbg !554
  %call38 = call i32 @map_gicc_mpidr(ptr noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef %phys_id) #11, !dbg !555
  br label %if.end47, !dbg !555

if.else39:                                        ; preds = %if.else32
  %29 = load ptr, ptr %header, align 8, !dbg !556
  %type40 = getelementptr inbounds %struct.acpi_subtable_header, ptr %29, i32 0, i32 0, !dbg !558
  %30 = load i8, ptr %type40, align 1, !dbg !558
  %conv41 = zext i8 %30 to i32, !dbg !556
  %cmp42 = icmp eq i32 %conv41, 17, !dbg !559
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !560

if.then44:                                        ; preds = %if.else39
  %31 = load ptr, ptr %header, align 8, !dbg !561
  %32 = load i32, ptr %type.addr, align 4, !dbg !562
  %33 = load i32, ptr %acpi_id.addr, align 4, !dbg !563
  %call45 = call i32 @map_core_pic_id(ptr noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %phys_id) #11, !dbg !564
  br label %if.end46, !dbg !564

if.end46:                                         ; preds = %if.then44, %if.else39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then37
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then30
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then23
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then17
  br label %exit, !dbg !565

exit:                                             ; preds = %if.end50, %if.then10, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !481), !dbg !566
  %pointer51 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !567
  %34 = load ptr, ptr %pointer51, align 8, !dbg !567
  call void @kfree(ptr noundef %34) #11, !dbg !568
  %35 = load i32, ptr %phys_id, align 4, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %phys_id) #10, !dbg !570
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #10, !dbg !570
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #10, !dbg !570
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #10, !dbg !570
  ret i32 %35, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @invalid_phys_cpuid(i32 noundef %phys_id) #5 align 16 !dbg !572 {
entry:
  %phys_id.addr = alloca i32, align 4
  store i32 %phys_id, ptr %phys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %phys_id.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i32, ptr %phys_id.addr, align 4, !dbg !581
  %cmp = icmp eq i32 %0, -1, !dbg !582
  ret i1 %cmp, !dbg !583
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_madt_table() #4 align 16 !dbg !194 {
entry:
  %0 = load i32, ptr @get_madt_table.read_madt, align 4, !dbg !584
  %tobool = icmp ne i32 %0, 0, !dbg !584
  br i1 %tobool, label %if.end3, label %if.then, !dbg !586

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_get_table(ptr noundef @.str, i32 noundef 0, ptr noundef @get_madt_table.madt) #11, !dbg !587
  %tobool1 = icmp ne i32 %call, 0, !dbg !587
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !590

if.then2:                                         ; preds = %if.then
  store ptr null, ptr @get_madt_table.madt, align 8, !dbg !591
  br label %if.end, !dbg !592

if.end:                                           ; preds = %if.then2, %if.then
  %1 = load i32, ptr @get_madt_table.read_madt, align 4, !dbg !593
  %inc = add i32 %1, 1, !dbg !593
  store i32 %inc, ptr @get_madt_table.read_madt, align 4, !dbg !593
  br label %if.end3, !dbg !594

if.end3:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr @get_madt_table.madt, align 8, !dbg !595
  ret ptr %2, !dbg !596
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_map_cpuid(i32 noundef %phys_id, i32 noundef %acpi_id) #4 align 16 !dbg !597 {
entry:
  %retval = alloca i32, align 4
  %phys_id.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  store i32 %phys_id, ptr %phys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %phys_id.addr, metadata !601, metadata !DIExpression()), !dbg !615
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !602, metadata !DIExpression()), !dbg !616
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !617
  call void @llvm.dbg.declare(metadata ptr %i, metadata !603, metadata !DIExpression()), !dbg !618
  %0 = load i32, ptr %phys_id.addr, align 4, !dbg !619
  %call = call zeroext i1 @invalid_phys_cpuid(i32 noundef %0) #11, !dbg !621
  br i1 %call, label %if.then, label %if.end, !dbg !622

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !623
  %cmp = icmp ule i32 %1, 1, !dbg !626
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !627

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, ptr %acpi_id.addr, align 4, !dbg !628
  %cmp1 = icmp eq i32 %2, 0, !dbg !629
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !630

if.then2:                                         ; preds = %land.lhs.true
  %3 = load i32, ptr %acpi_id.addr, align 4, !dbg !631
  store i32 %3, ptr %retval, align 4, !dbg !632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !632

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 -22, ptr %retval, align 4, !dbg !633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !633

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !634
  br label %for.cond, !dbg !634

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !635
  %conv = sext i32 %4 to i64, !dbg !635
  %call3 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #11, !dbg !635
  %conv4 = trunc i64 %call3 to i32, !dbg !635
  store i32 %conv4, ptr %i, align 4, !dbg !635
  %5 = load i32, ptr %i, align 4, !dbg !635
  %cmp5 = icmp ult i32 %5, 64, !dbg !635
  br i1 %cmp5, label %for.body, label %for.end, !dbg !634

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !636

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !604, metadata !DIExpression()), !dbg !637
  store ptr null, ptr %__vpp_verify, align 8, !dbg !637
  %6 = load ptr, ptr %__vpp_verify, align 8, !dbg !637
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !636
  br label %do.cond, !dbg !637

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !637

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !613, metadata !DIExpression()), !dbg !638
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr, align 8, !dbg !638
  %7 = load i64, ptr %__ptr, align 8, !dbg !638
  %8 = load i32, ptr %i, align 4, !dbg !638
  %idxprom = sext i32 %8 to i64, !dbg !638
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !638
  %9 = load i64, ptr %arrayidx, align 8, !dbg !638
  %add = add i64 %7, %9, !dbg !638
  %10 = inttoptr i64 %add to ptr, !dbg !638
  store ptr %10, ptr %tmp7, align 8, !dbg !638
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !636
  %11 = load ptr, ptr %tmp7, align 8, !dbg !638
  store ptr %11, ptr %tmp, align 8, !dbg !637
  %12 = load ptr, ptr %tmp, align 8, !dbg !636
  %13 = load i16, ptr %12, align 2, !dbg !639
  %conv8 = zext i16 %13 to i32, !dbg !639
  %14 = load i32, ptr %phys_id.addr, align 4, !dbg !640
  %cmp9 = icmp eq i32 %conv8, %14, !dbg !641
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !642

if.then11:                                        ; preds = %do.end
  %15 = load i32, ptr %i, align 4, !dbg !643
  store i32 %15, ptr %retval, align 4, !dbg !644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !644

if.end12:                                         ; preds = %do.end
  br label %for.inc, !dbg !645

for.inc:                                          ; preds = %if.end12
  %16 = load i32, ptr %i, align 4, !dbg !635
  %inc = add i32 %16, 1, !dbg !635
  store i32 %inc, ptr %i, align 4, !dbg !635
  br label %for.cond, !dbg !635, !llvm.loop !646

for.end:                                          ; preds = %for.cond
  store i32 -19, ptr %retval, align 4, !dbg !648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !648

cleanup:                                          ; preds = %for.end, %if.then11, %if.else, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !649
  %17 = load i32, ptr %retval, align 4, !dbg !649
  ret i32 %17, !dbg !649
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !650 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !657, metadata !DIExpression()), !dbg !663
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !658, metadata !DIExpression()), !dbg !664
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !659, metadata !DIExpression()), !dbg !665
  %0 = load i64, ptr %size.addr, align 8, !dbg !666
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !666
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !666

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !666
  %cmp = icmp ule i64 %2, 64, !dbg !666
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !666

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !666
  %cmp2 = icmp ugt i64 %3, 0, !dbg !666
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !667

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !668
  call void @llvm.dbg.declare(metadata ptr %val, metadata !660, metadata !DIExpression()), !dbg !669
  %4 = load i64, ptr %offset.addr, align 8, !dbg !670
  %5 = load i64, ptr %size.addr, align 8, !dbg !670
  %cmp3 = icmp uge i64 %4, %5, !dbg !670
  %lnot = xor i1 %cmp3, true, !dbg !670
  %lnot4 = xor i1 %lnot, true, !dbg !670
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !670
  %conv = sext i32 %lnot.ext to i64, !dbg !670
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !670
  %tobool = icmp ne i64 %expval, 0, !dbg !670
  br i1 %tobool, label %if.then5, label %if.end, !dbg !672

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !673
  store i64 %6, ptr %retval, align 8, !dbg !674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !674

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !675
  %8 = load i64, ptr %7, align 8, !dbg !676
  %9 = load i64, ptr %offset.addr, align 8, !dbg !677
  %shl = shl i64 1, %9, !dbg !677
  %sub = sub i64 -1, %shl, !dbg !677
  %add = add i64 %sub, 1, !dbg !677
  %10 = load i64, ptr %size.addr, align 8, !dbg !677
  %sub6 = sub i64 %10, 1, !dbg !677
  %sub7 = sub i64 63, %sub6, !dbg !677
  %shr = lshr i64 -1, %sub7, !dbg !677
  %and = and i64 %add, %shr, !dbg !677
  %add8 = add i64 0, %and, !dbg !677
  %and9 = and i64 %8, %add8, !dbg !678
  store i64 %and9, ptr %val, align 8, !dbg !679
  %11 = load i64, ptr %val, align 8, !dbg !680
  %tobool10 = icmp ne i64 %11, 0, !dbg !680
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !680

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !681
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !681
  br i1 %13, label %cond.true11, label %cond.false, !dbg !681

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !681
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !681
  %cast = trunc i64 %15 to i32, !dbg !681
  %conv12 = sext i32 %cast to i64, !dbg !681
  br label %cond.end, !dbg !681

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !681
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !681
  br label %cond.end, !dbg !681

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !681
  br label %cond.end14, !dbg !680

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !682
  br label %cond.end14, !dbg !680

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !680
  store i64 %cond15, ptr %retval, align 8, !dbg !683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !683

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !684
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !685
  %19 = load i64, ptr %size.addr, align 8, !dbg !686
  %20 = load i64, ptr %offset.addr, align 8, !dbg !687
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !688
  store i64 %call17, ptr %retval, align 8, !dbg !689
  br label %return, !dbg !689

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !690
  ret i64 %21, !dbg !690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_cpuid(ptr noundef %handle, i32 noundef %type, i32 noundef %acpi_id) #4 align 16 !dbg !691 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %phys_id = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !695, metadata !DIExpression()), !dbg !699
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !696, metadata !DIExpression()), !dbg !700
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !697, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 4, ptr %phys_id) #10, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %phys_id, metadata !698, metadata !DIExpression()), !dbg !703
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !704
  %1 = load i32, ptr %type.addr, align 4, !dbg !705
  %2 = load i32, ptr %acpi_id.addr, align 4, !dbg !706
  %call = call i32 @acpi_get_phys_id(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !707
  store i32 %call, ptr %phys_id, align 4, !dbg !708
  %3 = load i32, ptr %phys_id, align 4, !dbg !709
  %4 = load i32, ptr %acpi_id.addr, align 4, !dbg !710
  %call1 = call i32 @acpi_map_cpuid(i32 noundef %3, i32 noundef %4) #11, !dbg !711
  call void @llvm.lifetime.end.p0(i64 4, ptr %phys_id) #10, !dbg !712
  ret i32 %call1, !dbg !713
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_ioapic_id(ptr noundef %handle, i32 noundef %gsi_base, ptr noundef %phys_addr) #4 align 16 !dbg !714 {
entry:
  %handle.addr = alloca ptr, align 8
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca ptr, align 8
  %apic_id = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !719, metadata !DIExpression()), !dbg !723
  store i32 %gsi_base, ptr %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gsi_base.addr, metadata !720, metadata !DIExpression()), !dbg !724
  store ptr %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !721, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 4, ptr %apic_id) #10, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %apic_id, metadata !722, metadata !DIExpression()), !dbg !727
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !728
  %1 = load i32, ptr %gsi_base.addr, align 4, !dbg !729
  %2 = load ptr, ptr %phys_addr.addr, align 8, !dbg !730
  %call = call i32 @parse_mat_ioapic_entry(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11, !dbg !731
  store i32 %call, ptr %apic_id, align 4, !dbg !732
  %3 = load i32, ptr %apic_id, align 4, !dbg !733
  %cmp = icmp eq i32 %3, -1, !dbg !735
  br i1 %cmp, label %if.then, label %if.end, !dbg !736

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %gsi_base.addr, align 4, !dbg !737
  %5 = load ptr, ptr %phys_addr.addr, align 8, !dbg !738
  %call1 = call i32 @parse_madt_ioapic_entry(i32 noundef %4, ptr noundef %5) #11, !dbg !739
  store i32 %call1, ptr %apic_id, align 4, !dbg !740
  br label %if.end, !dbg !741

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %apic_id, align 4, !dbg !742
  call void @llvm.lifetime.end.p0(i64 4, ptr %apic_id) #10, !dbg !743
  ret i32 %6, !dbg !744
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_mat_ioapic_entry(ptr noundef %handle, i32 noundef %gsi_base, ptr noundef %phys_addr) #4 align 16 !dbg !745 {
entry:
  %handle.addr = alloca ptr, align 8
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %header = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %apic_id = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !747, metadata !DIExpression()), !dbg !755
  store i32 %gsi_base, ptr %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gsi_base.addr, metadata !748, metadata !DIExpression()), !dbg !756
  store ptr %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !749, metadata !DIExpression()), !dbg !757
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #10, !dbg !758
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.parse_mat_ioapic_entry.buffer, i64 16, i1 false), !dbg !759
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #10, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %header, metadata !751, metadata !DIExpression()), !dbg !761
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #10, !dbg !762
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !752, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.start.p0(i64 4, ptr %apic_id) #10, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %apic_id, metadata !753, metadata !DIExpression()), !dbg !765
  store i32 -1, ptr %apic_id, align 4, !dbg !765
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !766
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str.1, ptr noundef null, ptr noundef %buffer) #11, !dbg !766
  %tobool = icmp ne i32 %call, 0, !dbg !766
  br i1 %tobool, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  br label %exit, !dbg !769

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !770
  %1 = load i64, ptr %length, align 8, !dbg !770
  %tobool1 = icmp ne i64 %1, 0, !dbg !772
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !773

lor.lhs.false:                                    ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !774
  %2 = load ptr, ptr %pointer, align 8, !dbg !774
  %tobool2 = icmp ne ptr %2, null, !dbg !775
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !776

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %exit, !dbg !777

if.end4:                                          ; preds = %lor.lhs.false
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !778
  %3 = load ptr, ptr %pointer5, align 8, !dbg !778
  store ptr %3, ptr %obj, align 8, !dbg !779
  %4 = load ptr, ptr %obj, align 8, !dbg !780
  %5 = load i32, ptr %4, align 8, !dbg !782
  %cmp = icmp ne i32 %5, 3, !dbg !783
  br i1 %cmp, label %if.then10, label %lor.lhs.false6, !dbg !784

lor.lhs.false6:                                   ; preds = %if.end4
  %6 = load ptr, ptr %obj, align 8, !dbg !785
  %length7 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 1, !dbg !786
  %7 = load i32, ptr %length7, align 4, !dbg !786
  %conv = zext i32 %7 to i64, !dbg !785
  %cmp8 = icmp ult i64 %conv, 2, !dbg !787
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !788

if.then10:                                        ; preds = %lor.lhs.false6, %if.end4
  br label %exit, !dbg !789

if.end11:                                         ; preds = %lor.lhs.false6
  %8 = load ptr, ptr %obj, align 8, !dbg !790
  %pointer12 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 2, !dbg !791
  %9 = load ptr, ptr %pointer12, align 8, !dbg !791
  store ptr %9, ptr %header, align 8, !dbg !792
  %10 = load ptr, ptr %header, align 8, !dbg !793
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %10, i32 0, i32 0, !dbg !795
  %11 = load i8, ptr %type, align 1, !dbg !795
  %conv13 = zext i8 %11 to i32, !dbg !793
  %cmp14 = icmp eq i32 %conv13, 1, !dbg !796
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !797

if.then16:                                        ; preds = %if.end11
  %12 = load ptr, ptr %header, align 8, !dbg !798
  %13 = load i32, ptr %gsi_base.addr, align 4, !dbg !799
  %14 = load ptr, ptr %phys_addr.addr, align 8, !dbg !800
  %call17 = call i32 @get_ioapic_id(ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %apic_id) #11, !dbg !801
  br label %if.end18, !dbg !801

if.end18:                                         ; preds = %if.then16, %if.end11
  br label %exit, !dbg !802

exit:                                             ; preds = %if.end18, %if.then10, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !754), !dbg !803
  %pointer19 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !804
  %15 = load ptr, ptr %pointer19, align 8, !dbg !804
  call void @kfree(ptr noundef %15) #11, !dbg !805
  %16 = load i32, ptr %apic_id, align 4, !dbg !806
  call void @llvm.lifetime.end.p0(i64 4, ptr %apic_id) #10, !dbg !807
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #10, !dbg !807
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #10, !dbg !807
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #10, !dbg !807
  ret i32 %16, !dbg !808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_madt_ioapic_entry(i32 noundef %gsi_base, ptr noundef %phys_addr) #4 align 16 !dbg !809 {
entry:
  %retval = alloca i32, align 4
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca ptr, align 8
  %hdr = alloca ptr, align 8
  %madt_end = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %madt = alloca ptr, align 8
  %apic_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gsi_base, ptr %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gsi_base.addr, metadata !813, metadata !DIExpression()), !dbg !820
  store ptr %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !814, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #10, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !815, metadata !DIExpression()), !dbg !823
  call void @llvm.lifetime.start.p0(i64 8, ptr %madt_end) #10, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %madt_end, metadata !816, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #10, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !817, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %madt) #10, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %madt, metadata !818, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 4, ptr %apic_id) #10, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %apic_id, metadata !819, metadata !DIExpression()), !dbg !830
  store i32 -1, ptr %apic_id, align 4, !dbg !830
  %call = call ptr @get_madt_table() #11, !dbg !831
  store ptr %call, ptr %madt, align 8, !dbg !832
  %0 = load ptr, ptr %madt, align 8, !dbg !833
  %tobool = icmp ne ptr %0, null, !dbg !833
  br i1 %tobool, label %if.end, label %if.then, !dbg !835

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %apic_id, align 4, !dbg !836
  store i32 %1, ptr %retval, align 4, !dbg !837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !837

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %madt, align 8, !dbg !838
  %3 = ptrtoint ptr %2 to i64, !dbg !839
  store i64 %3, ptr %entry1, align 8, !dbg !840
  %4 = load i64, ptr %entry1, align 8, !dbg !841
  %5 = load ptr, ptr %madt, align 8, !dbg !842
  %header = getelementptr inbounds %struct.acpi_table_madt, ptr %5, i32 0, i32 0, !dbg !843
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !844
  %6 = load i32, ptr %length, align 1, !dbg !844
  %conv = zext i32 %6 to i64, !dbg !842
  %add = add i64 %4, %conv, !dbg !845
  store i64 %add, ptr %madt_end, align 8, !dbg !846
  %7 = load i64, ptr %entry1, align 8, !dbg !847
  %add2 = add i64 %7, 44, !dbg !847
  store i64 %add2, ptr %entry1, align 8, !dbg !847
  br label %while.cond, !dbg !848

while.cond:                                       ; preds = %if.end14, %if.end
  %8 = load i64, ptr %entry1, align 8, !dbg !849
  %add3 = add i64 %8, 2, !dbg !850
  %9 = load i64, ptr %madt_end, align 8, !dbg !851
  %cmp = icmp ult i64 %add3, %9, !dbg !852
  br i1 %cmp, label %while.body, label %while.end, !dbg !848

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %entry1, align 8, !dbg !853
  %11 = inttoptr i64 %10 to ptr, !dbg !855
  store ptr %11, ptr %hdr, align 8, !dbg !856
  %12 = load ptr, ptr %hdr, align 8, !dbg !857
  %type = getelementptr inbounds %struct.acpi_subtable_header, ptr %12, i32 0, i32 0, !dbg !859
  %13 = load i8, ptr %type, align 1, !dbg !859
  %conv5 = zext i8 %13 to i32, !dbg !857
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !860
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !861

land.lhs.true:                                    ; preds = %while.body
  %14 = load ptr, ptr %hdr, align 8, !dbg !862
  %15 = load i32, ptr %gsi_base.addr, align 4, !dbg !863
  %16 = load ptr, ptr %phys_addr.addr, align 8, !dbg !864
  %call8 = call i32 @get_ioapic_id(ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %apic_id) #11, !dbg !865
  %tobool9 = icmp ne i32 %call8, 0, !dbg !865
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !866

if.then10:                                        ; preds = %land.lhs.true
  br label %while.end, !dbg !867

if.else:                                          ; preds = %land.lhs.true, %while.body
  %17 = load ptr, ptr %hdr, align 8, !dbg !868
  %length11 = getelementptr inbounds %struct.acpi_subtable_header, ptr %17, i32 0, i32 1, !dbg !869
  %18 = load i8, ptr %length11, align 1, !dbg !869
  %conv12 = zext i8 %18 to i64, !dbg !868
  %19 = load i64, ptr %entry1, align 8, !dbg !870
  %add13 = add i64 %19, %conv12, !dbg !870
  store i64 %add13, ptr %entry1, align 8, !dbg !870
  br label %if.end14

if.end14:                                         ; preds = %if.else
  br label %while.cond, !dbg !848, !llvm.loop !871

while.end:                                        ; preds = %if.then10, %while.cond
  %20 = load i32, ptr %apic_id, align 4, !dbg !873
  store i32 %20, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !874

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %apic_id) #10, !dbg !875
  call void @llvm.lifetime.end.p0(i64 8, ptr %madt) #10, !dbg !875
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #10, !dbg !875
  call void @llvm.lifetime.end.p0(i64 8, ptr %madt_end) #10, !dbg !875
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #10, !dbg !875
  %21 = load i32, ptr %retval, align 4, !dbg !875
  ret i32 %21, !dbg !875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_lapic_id(ptr noundef %entry1, i32 noundef %acpi_id, ptr noundef %apic_id) #4 align 16 !dbg !876 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %acpi_id.addr = alloca i32, align 4
  %apic_id.addr = alloca ptr, align 8
  %lapic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !881, metadata !DIExpression()), !dbg !887
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !882, metadata !DIExpression()), !dbg !888
  store ptr %apic_id, ptr %apic_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %apic_id.addr, metadata !883, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %lapic) #10, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %lapic, metadata !884, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !885, metadata !DIExpression()), !dbg !892
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !892
  store ptr %0, ptr %__mptr, align 8, !dbg !892
  %1 = load ptr, ptr %__mptr, align 8, !dbg !892
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !892
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !892
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !893
  %2 = load ptr, ptr %tmp, align 8, !dbg !892
  store ptr %2, ptr %lapic, align 8, !dbg !891
  %3 = load ptr, ptr %lapic, align 8, !dbg !894
  %lapic_flags = getelementptr inbounds %struct.acpi_madt_local_apic, ptr %3, i32 0, i32 3, !dbg !896
  %4 = load i32, ptr %lapic_flags, align 1, !dbg !896
  %and = and i32 %4, 1, !dbg !897
  %tobool = icmp ne i32 %and, 0, !dbg !897
  br i1 %tobool, label %if.end, label %if.then, !dbg !898

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !899

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %lapic, align 8, !dbg !900
  %processor_id = getelementptr inbounds %struct.acpi_madt_local_apic, ptr %5, i32 0, i32 1, !dbg !902
  %6 = load i8, ptr %processor_id, align 1, !dbg !902
  %conv = zext i8 %6 to i32, !dbg !900
  %7 = load i32, ptr %acpi_id.addr, align 4, !dbg !903
  %cmp = icmp ne i32 %conv, %7, !dbg !904
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !905

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !906

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %lapic, align 8, !dbg !907
  %id = getelementptr inbounds %struct.acpi_madt_local_apic, ptr %8, i32 0, i32 2, !dbg !908
  %9 = load i8, ptr %id, align 1, !dbg !908
  %conv5 = zext i8 %9 to i32, !dbg !907
  %10 = load ptr, ptr %apic_id.addr, align 8, !dbg !909
  store i32 %conv5, ptr %10, align 4, !dbg !910
  store i32 0, ptr %retval, align 4, !dbg !911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !911

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lapic) #10, !dbg !912
  %11 = load i32, ptr %retval, align 4, !dbg !912
  ret i32 %11, !dbg !912
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_x2apic_id(ptr noundef %entry1, i32 noundef %device_declaration, i32 noundef %acpi_id, ptr noundef %apic_id) #4 align 16 !dbg !913 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %apic_id.addr = alloca ptr, align 8
  %apic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !917, metadata !DIExpression()), !dbg !924
  store i32 %device_declaration, ptr %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device_declaration.addr, metadata !918, metadata !DIExpression()), !dbg !925
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !919, metadata !DIExpression()), !dbg !926
  store ptr %apic_id, ptr %apic_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %apic_id.addr, metadata !920, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 8, ptr %apic) #10, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %apic, metadata !921, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !922, metadata !DIExpression()), !dbg !930
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !930
  store ptr %0, ptr %__mptr, align 8, !dbg !930
  %1 = load ptr, ptr %__mptr, align 8, !dbg !930
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !930
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !931
  %2 = load ptr, ptr %tmp, align 8, !dbg !930
  store ptr %2, ptr %apic, align 8, !dbg !929
  %3 = load ptr, ptr %apic, align 8, !dbg !932
  %lapic_flags = getelementptr inbounds %struct.acpi_madt_local_x2apic, ptr %3, i32 0, i32 3, !dbg !934
  %4 = load i32, ptr %lapic_flags, align 1, !dbg !934
  %and = and i32 %4, 1, !dbg !935
  %tobool = icmp ne i32 %and, 0, !dbg !935
  br i1 %tobool, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %device_declaration.addr, align 4, !dbg !938
  %tobool2 = icmp ne i32 %5, 0, !dbg !938
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !940

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %apic, align 8, !dbg !941
  %uid = getelementptr inbounds %struct.acpi_madt_local_x2apic, ptr %6, i32 0, i32 4, !dbg !942
  %7 = load i32, ptr %uid, align 1, !dbg !942
  %8 = load i32, ptr %acpi_id.addr, align 4, !dbg !943
  %cmp = icmp eq i32 %7, %8, !dbg !944
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !945

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %apic, align 8, !dbg !946
  %local_apic_id = getelementptr inbounds %struct.acpi_madt_local_x2apic, ptr %9, i32 0, i32 2, !dbg !948
  %10 = load i32, ptr %local_apic_id, align 1, !dbg !948
  %11 = load ptr, ptr %apic_id.addr, align 8, !dbg !949
  store i32 %10, ptr %11, align 4, !dbg !950
  store i32 0, ptr %retval, align 4, !dbg !951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !951

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !952

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %apic) #10, !dbg !953
  %12 = load i32, ptr %retval, align 4, !dbg !953
  ret i32 %12, !dbg !953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_lsapic_id(ptr noundef %entry1, i32 noundef %device_declaration, i32 noundef %acpi_id, ptr noundef %apic_id) #4 align 16 !dbg !954 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %apic_id.addr = alloca ptr, align 8
  %lsapic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !956, metadata !DIExpression()), !dbg !963
  store i32 %device_declaration, ptr %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device_declaration.addr, metadata !957, metadata !DIExpression()), !dbg !964
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !958, metadata !DIExpression()), !dbg !965
  store ptr %apic_id, ptr %apic_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %apic_id.addr, metadata !959, metadata !DIExpression()), !dbg !966
  call void @llvm.lifetime.start.p0(i64 8, ptr %lsapic) #10, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %lsapic, metadata !960, metadata !DIExpression()), !dbg !968
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !961, metadata !DIExpression()), !dbg !969
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !969
  store ptr %0, ptr %__mptr, align 8, !dbg !969
  %1 = load ptr, ptr %__mptr, align 8, !dbg !969
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !969
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !970
  %2 = load ptr, ptr %tmp, align 8, !dbg !969
  store ptr %2, ptr %lsapic, align 8, !dbg !968
  %3 = load ptr, ptr %lsapic, align 8, !dbg !971
  %lapic_flags = getelementptr inbounds %struct.acpi_madt_local_sapic, ptr %3, i32 0, i32 5, !dbg !973
  %4 = load i32, ptr %lapic_flags, align 1, !dbg !973
  %and = and i32 %4, 1, !dbg !974
  %tobool = icmp ne i32 %and, 0, !dbg !974
  br i1 %tobool, label %if.end, label %if.then, !dbg !975

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %device_declaration.addr, align 4, !dbg !977
  %tobool2 = icmp ne i32 %5, 0, !dbg !977
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !979

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !980
  %length = getelementptr inbounds %struct.acpi_subtable_header, ptr %6, i32 0, i32 1, !dbg !983
  %7 = load i8, ptr %length, align 1, !dbg !983
  %conv = zext i8 %7 to i32, !dbg !980
  %cmp = icmp slt i32 %conv, 16, !dbg !984
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !985

lor.lhs.false:                                    ; preds = %if.then3
  %8 = load ptr, ptr %lsapic, align 8, !dbg !986
  %uid = getelementptr inbounds %struct.acpi_madt_local_sapic, ptr %8, i32 0, i32 6, !dbg !987
  %9 = load i32, ptr %uid, align 1, !dbg !987
  %10 = load i32, ptr %acpi_id.addr, align 4, !dbg !988
  %cmp5 = icmp ne i32 %9, %10, !dbg !989
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !990

if.then7:                                         ; preds = %lor.lhs.false, %if.then3
  store i32 -22, ptr %retval, align 4, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

if.end8:                                          ; preds = %lor.lhs.false
  br label %if.end14, !dbg !992

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %lsapic, align 8, !dbg !993
  %processor_id = getelementptr inbounds %struct.acpi_madt_local_sapic, ptr %11, i32 0, i32 1, !dbg !995
  %12 = load i8, ptr %processor_id, align 1, !dbg !995
  %conv9 = zext i8 %12 to i32, !dbg !993
  %13 = load i32, ptr %acpi_id.addr, align 4, !dbg !996
  %cmp10 = icmp ne i32 %conv9, %13, !dbg !997
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !998

if.then12:                                        ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !999

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end8
  %14 = load ptr, ptr %lsapic, align 8, !dbg !1000
  %id = getelementptr inbounds %struct.acpi_madt_local_sapic, ptr %14, i32 0, i32 2, !dbg !1001
  %15 = load i8, ptr %id, align 1, !dbg !1001
  %conv15 = zext i8 %15 to i32, !dbg !1000
  %shl = shl i32 %conv15, 8, !dbg !1002
  %16 = load ptr, ptr %lsapic, align 8, !dbg !1003
  %eid = getelementptr inbounds %struct.acpi_madt_local_sapic, ptr %16, i32 0, i32 3, !dbg !1004
  %17 = load i8, ptr %eid, align 1, !dbg !1004
  %conv16 = zext i8 %17 to i32, !dbg !1003
  %or = or i32 %shl, %conv16, !dbg !1005
  %18 = load ptr, ptr %apic_id.addr, align 8, !dbg !1006
  store i32 %or, ptr %18, align 4, !dbg !1007
  store i32 0, ptr %retval, align 4, !dbg !1008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1008

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lsapic) #10, !dbg !1009
  %19 = load i32, ptr %retval, align 4, !dbg !1009
  ret i32 %19, !dbg !1009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_gicc_mpidr(ptr noundef %entry1, i32 noundef %device_declaration, i32 noundef %acpi_id, ptr noundef %mpidr) #4 align 16 !dbg !1010 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %mpidr.addr = alloca ptr, align 8
  %gicc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1012, metadata !DIExpression()), !dbg !1019
  store i32 %device_declaration, ptr %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device_declaration.addr, metadata !1013, metadata !DIExpression()), !dbg !1020
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !1014, metadata !DIExpression()), !dbg !1021
  store ptr %mpidr, ptr %mpidr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mpidr.addr, metadata !1015, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 8, ptr %gicc) #10, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %gicc, metadata !1016, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1017, metadata !DIExpression()), !dbg !1025
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1025
  store ptr %0, ptr %__mptr, align 8, !dbg !1025
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1025
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1025
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !1026
  %2 = load ptr, ptr %tmp, align 8, !dbg !1025
  store ptr %2, ptr %gicc, align 8, !dbg !1024
  %3 = load ptr, ptr %gicc, align 8, !dbg !1027
  %flags = getelementptr inbounds %struct.acpi_madt_generic_interrupt, ptr %3, i32 0, i32 4, !dbg !1029
  %4 = load i32, ptr %flags, align 1, !dbg !1029
  %and = and i32 %4, 1, !dbg !1030
  %tobool = icmp ne i32 %and, 0, !dbg !1030
  br i1 %tobool, label %if.end, label %if.then, !dbg !1031

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %device_declaration.addr, align 4, !dbg !1033
  %tobool2 = icmp ne i32 %5, 0, !dbg !1033
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !1035

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %gicc, align 8, !dbg !1036
  %uid = getelementptr inbounds %struct.acpi_madt_generic_interrupt, ptr %6, i32 0, i32 3, !dbg !1037
  %7 = load i32, ptr %uid, align 1, !dbg !1037
  %8 = load i32, ptr %acpi_id.addr, align 4, !dbg !1038
  %cmp = icmp eq i32 %7, %8, !dbg !1039
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1040

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %gicc, align 8, !dbg !1041
  %arm_mpidr = getelementptr inbounds %struct.acpi_madt_generic_interrupt, ptr %9, i32 0, i32 13, !dbg !1043
  %10 = load i64, ptr %arm_mpidr, align 1, !dbg !1043
  %conv = trunc i64 %10 to i32, !dbg !1041
  %11 = load ptr, ptr %mpidr.addr, align 8, !dbg !1044
  store i32 %conv, ptr %11, align 4, !dbg !1045
  store i32 0, ptr %retval, align 4, !dbg !1046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1046

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gicc) #10, !dbg !1048
  %12 = load i32, ptr %retval, align 4, !dbg !1048
  ret i32 %12, !dbg !1048
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_rintc_hartid(ptr noundef %entry1, i32 noundef %device_declaration, i32 noundef %acpi_id, ptr noundef %hartid) #4 align 16 !dbg !1049 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %hartid.addr = alloca ptr, align 8
  %rintc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1051, metadata !DIExpression()), !dbg !1058
  store i32 %device_declaration, ptr %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device_declaration.addr, metadata !1052, metadata !DIExpression()), !dbg !1059
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !1053, metadata !DIExpression()), !dbg !1060
  store ptr %hartid, ptr %hartid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hartid.addr, metadata !1054, metadata !DIExpression()), !dbg !1061
  call void @llvm.lifetime.start.p0(i64 8, ptr %rintc) #10, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %rintc, metadata !1055, metadata !DIExpression()), !dbg !1063
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1056, metadata !DIExpression()), !dbg !1064
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1064
  store ptr %0, ptr %__mptr, align 8, !dbg !1064
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1064
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1064
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1064
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !1065
  %2 = load ptr, ptr %tmp, align 8, !dbg !1064
  store ptr %2, ptr %rintc, align 8, !dbg !1063
  %3 = load ptr, ptr %rintc, align 8, !dbg !1066
  %flags = getelementptr inbounds %struct.acpi_madt_rintc, ptr %3, i32 0, i32 3, !dbg !1068
  %4 = load i32, ptr %flags, align 1, !dbg !1068
  %and = and i32 %4, 1, !dbg !1069
  %tobool = icmp ne i32 %and, 0, !dbg !1069
  br i1 %tobool, label %if.end, label %if.then, !dbg !1070

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !1071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1071

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %device_declaration.addr, align 4, !dbg !1072
  %tobool2 = icmp ne i32 %5, 0, !dbg !1072
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !1074

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %rintc, align 8, !dbg !1075
  %uid = getelementptr inbounds %struct.acpi_madt_rintc, ptr %6, i32 0, i32 5, !dbg !1076
  %7 = load i32, ptr %uid, align 1, !dbg !1076
  %8 = load i32, ptr %acpi_id.addr, align 4, !dbg !1077
  %cmp = icmp eq i32 %7, %8, !dbg !1078
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1079

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %rintc, align 8, !dbg !1080
  %hart_id = getelementptr inbounds %struct.acpi_madt_rintc, ptr %9, i32 0, i32 4, !dbg !1082
  %10 = load i64, ptr %hart_id, align 1, !dbg !1082
  %conv = trunc i64 %10 to i32, !dbg !1080
  %11 = load ptr, ptr %hartid.addr, align 8, !dbg !1083
  store i32 %conv, ptr %11, align 4, !dbg !1084
  store i32 0, ptr %retval, align 4, !dbg !1085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1085

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1086

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rintc) #10, !dbg !1087
  %12 = load i32, ptr %retval, align 4, !dbg !1087
  ret i32 %12, !dbg !1087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_core_pic_id(ptr noundef %entry1, i32 noundef %device_declaration, i32 noundef %acpi_id, ptr noundef %phys_id) #4 align 16 !dbg !1088 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %phys_id.addr = alloca ptr, align 8
  %core_pic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1090, metadata !DIExpression()), !dbg !1097
  store i32 %device_declaration, ptr %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device_declaration.addr, metadata !1091, metadata !DIExpression()), !dbg !1098
  store i32 %acpi_id, ptr %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acpi_id.addr, metadata !1092, metadata !DIExpression()), !dbg !1099
  store ptr %phys_id, ptr %phys_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_id.addr, metadata !1093, metadata !DIExpression()), !dbg !1100
  call void @llvm.lifetime.start.p0(i64 8, ptr %core_pic) #10, !dbg !1101
  call void @llvm.dbg.declare(metadata ptr %core_pic, metadata !1094, metadata !DIExpression()), !dbg !1102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !1103
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1095, metadata !DIExpression()), !dbg !1103
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1103
  store ptr %0, ptr %__mptr, align 8, !dbg !1103
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1103
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1103
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !1104
  %2 = load ptr, ptr %tmp, align 8, !dbg !1103
  store ptr %2, ptr %core_pic, align 8, !dbg !1102
  %3 = load ptr, ptr %core_pic, align 8, !dbg !1105
  %flags = getelementptr inbounds %struct.acpi_madt_core_pic, ptr %3, i32 0, i32 4, !dbg !1107
  %4 = load i32, ptr %flags, align 1, !dbg !1107
  %and = and i32 %4, 1, !dbg !1108
  %tobool = icmp ne i32 %and, 0, !dbg !1108
  br i1 %tobool, label %if.end, label %if.then, !dbg !1109

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1110

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %device_declaration.addr, align 4, !dbg !1111
  %tobool2 = icmp ne i32 %5, 0, !dbg !1111
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !1113

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %core_pic, align 8, !dbg !1114
  %processor_id = getelementptr inbounds %struct.acpi_madt_core_pic, ptr %6, i32 0, i32 2, !dbg !1115
  %7 = load i32, ptr %processor_id, align 1, !dbg !1115
  %8 = load i32, ptr %acpi_id.addr, align 4, !dbg !1116
  %cmp = icmp eq i32 %7, %8, !dbg !1117
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1118

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %core_pic, align 8, !dbg !1119
  %core_id = getelementptr inbounds %struct.acpi_madt_core_pic, ptr %9, i32 0, i32 3, !dbg !1121
  %10 = load i32, ptr %core_id, align 1, !dbg !1121
  %11 = load ptr, ptr %phys_id.addr, align 8, !dbg !1122
  store i32 %10, ptr %11, align 4, !dbg !1123
  store i32 0, ptr %retval, align 4, !dbg !1124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1124

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1125

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %core_pic) #10, !dbg !1126
  %12 = load i32, ptr %retval, align 4, !dbg !1126
  ret i32 %12, !dbg !1126
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1127 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1136 dso_local void @kfree(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #9 align 16 !dbg !1140 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  %0 = load i64, ptr %word.addr, align 8, !dbg !1147
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !1148, !srcloc !1149
  store i64 %1, ptr %word.addr, align 8, !dbg !1148
  %2 = load i64, ptr %word.addr, align 8, !dbg !1150
  ret i64 %2, !dbg !1151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1152 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_ioapic_id(ptr noundef %entry1, i32 noundef %gsi_base, ptr noundef %phys_addr, ptr noundef %ioapic_id) #4 align 16 !dbg !1153 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca ptr, align 8
  %ioapic_id.addr = alloca ptr, align 8
  %ioapic = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1158, metadata !DIExpression()), !dbg !1163
  store i32 %gsi_base, ptr %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gsi_base.addr, metadata !1159, metadata !DIExpression()), !dbg !1164
  store ptr %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !1160, metadata !DIExpression()), !dbg !1165
  store ptr %ioapic_id, ptr %ioapic_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ioapic_id.addr, metadata !1161, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioapic) #10, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %ioapic, metadata !1162, metadata !DIExpression()), !dbg !1168
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1169
  store ptr %0, ptr %ioapic, align 8, !dbg !1168
  %1 = load ptr, ptr %ioapic, align 8, !dbg !1170
  %global_irq_base = getelementptr inbounds %struct.acpi_madt_io_apic, ptr %1, i32 0, i32 4, !dbg !1172
  %2 = load i32, ptr %global_irq_base, align 1, !dbg !1172
  %3 = load i32, ptr %gsi_base.addr, align 4, !dbg !1173
  %cmp = icmp ne i32 %2, %3, !dbg !1174
  br i1 %cmp, label %if.then, label %if.end, !dbg !1175

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1176

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ioapic, align 8, !dbg !1177
  %address = getelementptr inbounds %struct.acpi_madt_io_apic, ptr %4, i32 0, i32 3, !dbg !1178
  %5 = load i32, ptr %address, align 1, !dbg !1178
  %conv = zext i32 %5 to i64, !dbg !1177
  %6 = load ptr, ptr %phys_addr.addr, align 8, !dbg !1179
  store i64 %conv, ptr %6, align 8, !dbg !1180
  %7 = load ptr, ptr %ioapic, align 8, !dbg !1181
  %id = getelementptr inbounds %struct.acpi_madt_io_apic, ptr %7, i32 0, i32 1, !dbg !1182
  %8 = load i8, ptr %id, align 1, !dbg !1182
  %conv2 = zext i8 %8 to i32, !dbg !1181
  %9 = load ptr, ptr %ioapic_id.addr, align 8, !dbg !1183
  store i32 %conv2, ptr %9, align 4, !dbg !1184
  store i32 1, ptr %retval, align 4, !dbg !1185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1185

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioapic) #10, !dbg !1186
  %10 = load i32, ptr %retval, align 4, !dbg !1186
  ret i32 %10, !dbg !1186
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/processor_core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8c889cc7f788c55f3ef45c0b19c6a37")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_phys_id224", scope: !9, file: !2, line: 264, type: !78, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.processor_core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22processor_core\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/processor_core.ll drivers/acpi/processor_core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !45, globals: !187, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_madt_type", file: !12, line: 870, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!15 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC", value: 0)
!16 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_APIC", value: 1)
!17 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_OVERRIDE", value: 2)
!18 = !DIEnumerator(name: "ACPI_MADT_TYPE_NMI_SOURCE", value: 3)
!19 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_NMI", value: 4)
!20 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_OVERRIDE", value: 5)
!21 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_SAPIC", value: 6)
!22 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_SAPIC", value: 7)
!23 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_SOURCE", value: 8)
!24 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC", value: 9)
!25 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC_NMI", value: 10)
!26 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_INTERRUPT", value: 11)
!27 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_DISTRIBUTOR", value: 12)
!28 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_MSI_FRAME", value: 13)
!29 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_REDISTRIBUTOR", value: 14)
!30 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_TRANSLATOR", value: 15)
!31 = !DIEnumerator(name: "ACPI_MADT_TYPE_MULTIPROC_WAKEUP", value: 16)
!32 = !DIEnumerator(name: "ACPI_MADT_TYPE_CORE_PIC", value: 17)
!33 = !DIEnumerator(name: "ACPI_MADT_TYPE_LIO_PIC", value: 18)
!34 = !DIEnumerator(name: "ACPI_MADT_TYPE_HT_PIC", value: 19)
!35 = !DIEnumerator(name: "ACPI_MADT_TYPE_EIO_PIC", value: 20)
!36 = !DIEnumerator(name: "ACPI_MADT_TYPE_MSI_PIC", value: 21)
!37 = !DIEnumerator(name: "ACPI_MADT_TYPE_BIO_PIC", value: 22)
!38 = !DIEnumerator(name: "ACPI_MADT_TYPE_LPC_PIC", value: 23)
!39 = !DIEnumerator(name: "ACPI_MADT_TYPE_RINTC", value: 24)
!40 = !DIEnumerator(name: "ACPI_MADT_TYPE_IMSIC", value: 25)
!41 = !DIEnumerator(name: "ACPI_MADT_TYPE_APLIC", value: 26)
!42 = !DIEnumerator(name: "ACPI_MADT_TYPE_PLIC", value: 27)
!43 = !DIEnumerator(name: "ACPI_MADT_TYPE_RESERVED", value: 28)
!44 = !DIEnumerator(name: "ACPI_MADT_TYPE_OEM_RESERVED", value: 128)
!45 = !{!46, !76, !47, !78, !79, !13, !89, !86, !93, !99, !106, !114, !131, !156, !168, !176, !178, !179}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !49, line: 68, size: 288, elements: !50)
!49 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!50 = !{!51, !55, !60, !64, !65, !69, !73, !74, !75}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !48, file: !49, line: 69, baseType: !52, size: 32)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !48, file: !49, line: 70, baseType: !56, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !57, line: 21, baseType: !58)
!57 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !59, line: 27, baseType: !13)
!59 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !48, file: !49, line: 71, baseType: !61, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !57, line: 17, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !59, line: 21, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !48, file: !49, line: 72, baseType: !61, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !48, file: !49, line: 73, baseType: !66, size: 48, offset: 80)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 6)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !48, file: !49, line: 74, baseType: !70, size: 64, offset: 128)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !48, file: !49, line: 75, baseType: !56, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !48, file: !49, line: 76, baseType: !52, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !48, file: !49, line: 77, baseType: !56, size: 32, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !77, line: 287, baseType: !56)
!77 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !82, line: 19, size: 64, elements: !83)
!82 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !81, file: !82, line: 19, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !87)
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !57, line: 19, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !59, line: 24, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !95, line: 96, size: 16, elements: !96)
!95 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 97, baseType: !61, size: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !95, line: 98, baseType: !61, size: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic", file: !12, line: 909, size: 64, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !100, file: !12, line: 910, baseType: !94, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !100, file: !12, line: 911, baseType: !61, size: 8, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !100, file: !12, line: 912, baseType: !61, size: 8, offset: 24)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !100, file: !12, line: 913, baseType: !56, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_x2apic", file: !12, line: 1003, size: 128, elements: !108)
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !107, file: !12, line: 1004, baseType: !94, size: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !107, file: !12, line: 1005, baseType: !90, size: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "local_apic_id", scope: !107, file: !12, line: 1006, baseType: !56, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !107, file: !12, line: 1007, baseType: !56, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !107, file: !12, line: 1008, baseType: !56, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_sapic", file: !12, line: 973, size: 128, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !125, !126, !127}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !115, file: !12, line: 974, baseType: !94, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !115, file: !12, line: 975, baseType: !61, size: 8, offset: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !115, file: !12, line: 976, baseType: !61, size: 8, offset: 24)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !115, file: !12, line: 977, baseType: !61, size: 8, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !115, file: !12, line: 978, baseType: !122, size: 24, offset: 40)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 24, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !115, file: !12, line: 979, baseType: !56, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !115, file: !12, line: 980, baseType: !56, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "uid_string", scope: !115, file: !12, line: 981, baseType: !128, offset: 128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: -1)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_generic_interrupt", file: !12, line: 1023, size: 656, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !132, file: !12, line: 1024, baseType: !94, size: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !132, file: !12, line: 1025, baseType: !90, size: 16, offset: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_interface_number", scope: !132, file: !12, line: 1026, baseType: !56, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !132, file: !12, line: 1027, baseType: !56, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !12, line: 1028, baseType: !56, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "parking_version", scope: !132, file: !12, line: 1029, baseType: !56, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "performance_interrupt", scope: !132, file: !12, line: 1030, baseType: !56, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parked_address", scope: !132, file: !12, line: 1031, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !57, line: 23, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !59, line: 31, baseType: !144)
!144 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !132, file: !12, line: 1032, baseType: !142, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "gicv_base_address", scope: !132, file: !12, line: 1033, baseType: !142, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "gich_base_address", scope: !132, file: !12, line: 1034, baseType: !142, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "vgic_interrupt", scope: !132, file: !12, line: 1035, baseType: !56, size: 32, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "gicr_base_address", scope: !132, file: !12, line: 1036, baseType: !142, size: 64, offset: 480)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "arm_mpidr", scope: !132, file: !12, line: 1037, baseType: !142, size: 64, offset: 544)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "efficiency_class", scope: !132, file: !12, line: 1038, baseType: !61, size: 8, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !132, file: !12, line: 1039, baseType: !153, size: 8, offset: 616)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8, elements: !87)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "spe_interrupt", scope: !132, file: !12, line: 1040, baseType: !90, size: 16, offset: 624)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "trbe_interrupt", scope: !132, file: !12, line: 1041, baseType: !90, size: 16, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_rintc", file: !12, line: 1260, size: 288, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !157, file: !12, line: 1261, baseType: !94, size: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !157, file: !12, line: 1262, baseType: !61, size: 8, offset: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !157, file: !12, line: 1263, baseType: !61, size: 8, offset: 24)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !12, line: 1264, baseType: !56, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "hart_id", scope: !157, file: !12, line: 1265, baseType: !142, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !157, file: !12, line: 1266, baseType: !56, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ext_intc_id", scope: !157, file: !12, line: 1267, baseType: !56, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "imsic_addr", scope: !157, file: !12, line: 1268, baseType: !142, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "imsic_size", scope: !157, file: !12, line: 1269, baseType: !56, size: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_core_pic", file: !12, line: 1133, size: 120, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !169, file: !12, line: 1134, baseType: !94, size: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !169, file: !12, line: 1135, baseType: !61, size: 8, offset: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !169, file: !12, line: 1136, baseType: !56, size: 32, offset: 24)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !169, file: !12, line: 1137, baseType: !56, size: 32, offset: 56)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !12, line: 1138, baseType: !56, size: 32, offset: 88)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !177, line: 127, baseType: !142)
!177 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!178 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_io_apic", file: !12, line: 918, size: 96, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !180, file: !12, line: 919, baseType: !94, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !180, file: !12, line: 920, baseType: !61, size: 8, offset: 16)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !180, file: !12, line: 921, baseType: !61, size: 8, offset: 24)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !180, file: !12, line: 922, baseType: !56, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !180, file: !12, line: 923, baseType: !56, size: 32, offset: 64)
!187 = !{!0, !7, !188, !190, !192, !203}
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_cpuid225", scope: !9, file: !2, line: 320, type: !78, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !3, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "madt", scope: !194, file: !2, line: 19, type: !197, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "get_madt_table", scope: !2, file: !2, line: 17, type: !195, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!195 = !DISubroutineType(types: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_madt", file: !12, line: 853, size: 352, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !198, file: !12, line: 854, baseType: !48, size: 288)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !198, file: !12, line: 855, baseType: !56, size: 32, offset: 288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !12, line: 856, baseType: !56, size: 32, offset: 320)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "read_madt", scope: !194, file: !2, line: 20, type: !178, isLocal: true, isDefinition: true)
!205 = !{i32 7, !"Dwarf Version", i32 5}
!206 = !{i32 2, !"Debug Info Version", i32 3}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 8, !"cf-protection-branch", i32 1}
!209 = !{i32 4, !"function_return_thunk_extern", i32 1}
!210 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!211 = !{i32 1, !"Code Model", i32 2}
!212 = !{i32 1, !"override-stack-alignment", i32 8}
!213 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!214 = distinct !DISubprogram(name: "acpi_map_madt_entry", scope: !2, file: !2, line: 201, type: !215, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!76, !56}
!217 = !{!218, !219, !220}
!218 = !DILocalVariable(name: "acpi_id", arg: 1, scope: !214, file: !2, line: 201, type: !56)
!219 = !DILocalVariable(name: "madt", scope: !214, file: !2, line: 203, type: !197)
!220 = !DILocalVariable(name: "rv", scope: !214, file: !2, line: 204, type: !76)
!221 = !DILocation(line: 201, column: 45, scope: !214)
!222 = !DILocation(line: 203, column: 2, scope: !214)
!223 = !DILocation(line: 203, column: 26, scope: !214)
!224 = !DILocation(line: 204, column: 2, scope: !214)
!225 = !DILocation(line: 204, column: 15, scope: !214)
!226 = !DILocation(line: 206, column: 2, scope: !214)
!227 = !DILocation(line: 208, column: 7, scope: !228)
!228 = distinct !DILexicalBlock(scope: !214, file: !2, line: 208, column: 6)
!229 = !DILocation(line: 208, column: 6, scope: !214)
!230 = !DILocation(line: 209, column: 3, scope: !228)
!231 = !DILocation(line: 211, column: 22, scope: !214)
!232 = !DILocation(line: 211, column: 31, scope: !214)
!233 = !DILocation(line: 211, column: 7, scope: !214)
!234 = !DILocation(line: 211, column: 5, scope: !214)
!235 = !DILocation(line: 213, column: 45, scope: !214)
!236 = !DILocation(line: 213, column: 2, scope: !214)
!237 = !DILocation(line: 215, column: 9, scope: !214)
!238 = !DILocation(line: 215, column: 2, scope: !214)
!239 = !DILocation(line: 216, column: 1, scope: !214)
!240 = !DISubprogram(name: "acpi_get_table", scope: !241, file: !241, line: 489, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !245, !56, !46}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !177, line: 421, baseType: !56)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !177, line: 423, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!247 = distinct !DISubprogram(name: "map_madt_entry", scope: !2, file: !2, line: 159, type: !248, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!76, !197, !178, !56}
!250 = !{!251, !252, !253, !254, !255, !256, !257}
!251 = !DILocalVariable(name: "madt", arg: 1, scope: !247, file: !2, line: 159, type: !197)
!252 = !DILocalVariable(name: "type", arg: 2, scope: !247, file: !2, line: 160, type: !178)
!253 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !247, file: !2, line: 160, type: !56)
!254 = !DILocalVariable(name: "madt_end", scope: !247, file: !2, line: 162, type: !86)
!255 = !DILocalVariable(name: "entry", scope: !247, file: !2, line: 162, type: !86)
!256 = !DILocalVariable(name: "phys_id", scope: !247, file: !2, line: 163, type: !76)
!257 = !DILocalVariable(name: "header", scope: !258, file: !2, line: 175, type: !93)
!258 = distinct !DILexicalBlock(scope: !247, file: !2, line: 174, column: 65)
!259 = !DILocation(line: 159, column: 60, scope: !247)
!260 = !DILocation(line: 160, column: 12, scope: !247)
!261 = !DILocation(line: 160, column: 22, scope: !247)
!262 = !DILocation(line: 162, column: 2, scope: !247)
!263 = !DILocation(line: 162, column: 16, scope: !247)
!264 = !DILocation(line: 162, column: 26, scope: !247)
!265 = !DILocation(line: 163, column: 2, scope: !247)
!266 = !DILocation(line: 163, column: 15, scope: !247)
!267 = !DILocation(line: 165, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !247, file: !2, line: 165, column: 6)
!269 = !DILocation(line: 165, column: 6, scope: !247)
!270 = !DILocation(line: 166, column: 10, scope: !268)
!271 = !DILocation(line: 166, column: 3, scope: !268)
!272 = !DILocation(line: 168, column: 25, scope: !247)
!273 = !DILocation(line: 168, column: 10, scope: !247)
!274 = !DILocation(line: 168, column: 8, scope: !247)
!275 = !DILocation(line: 169, column: 13, scope: !247)
!276 = !DILocation(line: 169, column: 21, scope: !247)
!277 = !DILocation(line: 169, column: 27, scope: !247)
!278 = !DILocation(line: 169, column: 34, scope: !247)
!279 = !DILocation(line: 169, column: 19, scope: !247)
!280 = !DILocation(line: 169, column: 11, scope: !247)
!281 = !DILocation(line: 173, column: 8, scope: !247)
!282 = !DILocation(line: 174, column: 2, scope: !247)
!283 = !DILocation(line: 174, column: 9, scope: !247)
!284 = !DILocation(line: 174, column: 15, scope: !247)
!285 = !DILocation(line: 174, column: 55, scope: !247)
!286 = !DILocation(line: 174, column: 53, scope: !247)
!287 = !DILocation(line: 175, column: 3, scope: !258)
!288 = !DILocation(line: 175, column: 32, scope: !258)
!289 = !DILocation(line: 176, column: 35, scope: !258)
!290 = !DILocation(line: 176, column: 4, scope: !258)
!291 = !DILocation(line: 177, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !258, file: !2, line: 177, column: 7)
!293 = !DILocation(line: 177, column: 15, scope: !292)
!294 = !DILocation(line: 177, column: 20, scope: !292)
!295 = !DILocation(line: 177, column: 7, scope: !258)
!296 = !DILocation(line: 178, column: 22, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 178, column: 8)
!298 = distinct !DILexicalBlock(scope: !292, file: !2, line: 177, column: 50)
!299 = !DILocation(line: 178, column: 30, scope: !297)
!300 = !DILocation(line: 178, column: 9, scope: !297)
!301 = !DILocation(line: 178, column: 8, scope: !298)
!302 = !DILocation(line: 179, column: 5, scope: !297)
!303 = !DILocation(line: 180, column: 3, scope: !298)
!304 = !DILocation(line: 180, column: 14, scope: !305)
!305 = distinct !DILexicalBlock(scope: !292, file: !2, line: 180, column: 14)
!306 = !DILocation(line: 180, column: 22, scope: !305)
!307 = !DILocation(line: 180, column: 27, scope: !305)
!308 = !DILocation(line: 180, column: 14, scope: !292)
!309 = !DILocation(line: 181, column: 23, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 181, column: 8)
!311 = distinct !DILexicalBlock(scope: !305, file: !2, line: 180, column: 59)
!312 = !DILocation(line: 181, column: 31, scope: !310)
!313 = !DILocation(line: 181, column: 37, scope: !310)
!314 = !DILocation(line: 181, column: 9, scope: !310)
!315 = !DILocation(line: 181, column: 8, scope: !311)
!316 = !DILocation(line: 182, column: 5, scope: !310)
!317 = !DILocation(line: 183, column: 3, scope: !311)
!318 = !DILocation(line: 183, column: 14, scope: !319)
!319 = distinct !DILexicalBlock(scope: !305, file: !2, line: 183, column: 14)
!320 = !DILocation(line: 183, column: 22, scope: !319)
!321 = !DILocation(line: 183, column: 27, scope: !319)
!322 = !DILocation(line: 183, column: 14, scope: !305)
!323 = !DILocation(line: 184, column: 23, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 184, column: 8)
!325 = distinct !DILexicalBlock(scope: !319, file: !2, line: 183, column: 58)
!326 = !DILocation(line: 184, column: 31, scope: !324)
!327 = !DILocation(line: 184, column: 37, scope: !324)
!328 = !DILocation(line: 184, column: 9, scope: !324)
!329 = !DILocation(line: 184, column: 8, scope: !325)
!330 = !DILocation(line: 185, column: 5, scope: !324)
!331 = !DILocation(line: 186, column: 3, scope: !325)
!332 = !DILocation(line: 186, column: 14, scope: !333)
!333 = distinct !DILexicalBlock(scope: !319, file: !2, line: 186, column: 14)
!334 = !DILocation(line: 186, column: 22, scope: !333)
!335 = !DILocation(line: 186, column: 27, scope: !333)
!336 = !DILocation(line: 186, column: 14, scope: !319)
!337 = !DILocation(line: 187, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 187, column: 8)
!339 = distinct !DILexicalBlock(scope: !333, file: !2, line: 186, column: 64)
!340 = !DILocation(line: 187, column: 32, scope: !338)
!341 = !DILocation(line: 187, column: 38, scope: !338)
!342 = !DILocation(line: 187, column: 9, scope: !338)
!343 = !DILocation(line: 187, column: 8, scope: !339)
!344 = !DILocation(line: 188, column: 5, scope: !338)
!345 = !DILocation(line: 189, column: 3, scope: !339)
!346 = !DILocation(line: 189, column: 14, scope: !347)
!347 = distinct !DILexicalBlock(scope: !333, file: !2, line: 189, column: 14)
!348 = !DILocation(line: 189, column: 22, scope: !347)
!349 = !DILocation(line: 189, column: 27, scope: !347)
!350 = !DILocation(line: 189, column: 14, scope: !333)
!351 = !DILocation(line: 190, column: 26, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 190, column: 8)
!353 = distinct !DILexicalBlock(scope: !347, file: !2, line: 189, column: 52)
!354 = !DILocation(line: 190, column: 34, scope: !352)
!355 = !DILocation(line: 190, column: 40, scope: !352)
!356 = !DILocation(line: 190, column: 9, scope: !352)
!357 = !DILocation(line: 190, column: 8, scope: !353)
!358 = !DILocation(line: 191, column: 5, scope: !352)
!359 = !DILocation(line: 192, column: 3, scope: !353)
!360 = !DILocation(line: 192, column: 14, scope: !361)
!361 = distinct !DILexicalBlock(scope: !347, file: !2, line: 192, column: 14)
!362 = !DILocation(line: 192, column: 22, scope: !361)
!363 = !DILocation(line: 192, column: 27, scope: !361)
!364 = !DILocation(line: 192, column: 14, scope: !347)
!365 = !DILocation(line: 193, column: 25, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 193, column: 8)
!367 = distinct !DILexicalBlock(scope: !361, file: !2, line: 192, column: 55)
!368 = !DILocation(line: 193, column: 33, scope: !366)
!369 = !DILocation(line: 193, column: 39, scope: !366)
!370 = !DILocation(line: 193, column: 9, scope: !366)
!371 = !DILocation(line: 193, column: 8, scope: !367)
!372 = !DILocation(line: 194, column: 5, scope: !366)
!373 = !DILocation(line: 195, column: 3, scope: !367)
!374 = !DILocation(line: 196, column: 12, scope: !258)
!375 = !DILocation(line: 196, column: 20, scope: !258)
!376 = !DILocation(line: 196, column: 9, scope: !258)
!377 = !DILocation(line: 197, column: 2, scope: !247)
!378 = distinct !{!378, !282, !377, !379, !380}
!379 = !{!"llvm.loop.mustprogress"}
!380 = !{!"llvm.loop.unroll.disable"}
!381 = !DILocation(line: 198, column: 9, scope: !247)
!382 = !DILocation(line: 198, column: 2, scope: !247)
!383 = !DILocation(line: 199, column: 1, scope: !247)
!384 = !DISubprogram(name: "acpi_put_table", scope: !241, file: !241, line: 493, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !47}
!387 = distinct !DISubprogram(name: "acpi_get_phys_id", scope: !2, file: !2, line: 254, type: !388, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !391)
!388 = !DISubroutineType(types: !389)
!389 = !{!76, !390, !178, !56}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !177, line: 424, baseType: !78)
!391 = !{!392, !393, !394, !395}
!392 = !DILocalVariable(name: "handle", arg: 1, scope: !387, file: !2, line: 254, type: !390)
!393 = !DILocalVariable(name: "type", arg: 2, scope: !387, file: !2, line: 254, type: !178)
!394 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !387, file: !2, line: 254, type: !56)
!395 = !DILocalVariable(name: "phys_id", scope: !387, file: !2, line: 256, type: !76)
!396 = !DILocation(line: 254, column: 43, scope: !387)
!397 = !DILocation(line: 254, column: 55, scope: !387)
!398 = !DILocation(line: 254, column: 65, scope: !387)
!399 = !DILocation(line: 256, column: 2, scope: !387)
!400 = !DILocation(line: 256, column: 15, scope: !387)
!401 = !DILocation(line: 258, column: 26, scope: !387)
!402 = !DILocation(line: 258, column: 34, scope: !387)
!403 = !DILocation(line: 258, column: 40, scope: !387)
!404 = !DILocation(line: 258, column: 12, scope: !387)
!405 = !DILocation(line: 258, column: 10, scope: !387)
!406 = !DILocation(line: 259, column: 25, scope: !407)
!407 = distinct !DILexicalBlock(scope: !387, file: !2, line: 259, column: 6)
!408 = !DILocation(line: 259, column: 6, scope: !407)
!409 = !DILocation(line: 259, column: 6, scope: !387)
!410 = !DILocation(line: 260, column: 28, scope: !407)
!411 = !DILocation(line: 260, column: 46, scope: !407)
!412 = !DILocation(line: 260, column: 52, scope: !407)
!413 = !DILocation(line: 260, column: 13, scope: !407)
!414 = !DILocation(line: 260, column: 11, scope: !407)
!415 = !DILocation(line: 260, column: 3, scope: !407)
!416 = !DILocation(line: 262, column: 9, scope: !387)
!417 = !DILocation(line: 263, column: 1, scope: !387)
!418 = !DILocation(line: 262, column: 2, scope: !387)
!419 = distinct !DISubprogram(name: "map_mat_entry", scope: !2, file: !2, line: 218, type: !388, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !420)
!420 = !{!421, !422, !423, !424, !429, !479, !480, !481}
!421 = !DILocalVariable(name: "handle", arg: 1, scope: !419, file: !2, line: 218, type: !390)
!422 = !DILocalVariable(name: "type", arg: 2, scope: !419, file: !2, line: 218, type: !178)
!423 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !419, file: !2, line: 218, type: !56)
!424 = !DILocalVariable(name: "buffer", scope: !419, file: !2, line: 220, type: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !177, line: 978, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !425, file: !177, line: 979, baseType: !176, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !425, file: !177, line: 980, baseType: !78, size: 64, offset: 64)
!429 = !DILocalVariable(name: "obj", scope: !419, file: !2, line: 221, type: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !177, line: 908, size: 192, elements: !432)
!432 = !{!433, !435, !440, !446, !453, !459, !465, !473}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !177, line: 909, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !177, line: 644, baseType: !56)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !431, file: !177, line: 913, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 910, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !177, line: 911, baseType: !434, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !177, line: 912, baseType: !142, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !431, file: !177, line: 919, baseType: !441, size: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 915, size: 128, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !177, line: 916, baseType: !434, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !441, file: !177, line: 917, baseType: !56, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !441, file: !177, line: 918, baseType: !246, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !431, file: !177, line: 925, baseType: !447, size: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 921, size: 128, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !177, line: 922, baseType: !434, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !447, file: !177, line: 923, baseType: !56, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !447, file: !177, line: 924, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !431, file: !177, line: 931, baseType: !454, size: 128)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 927, size: 128, elements: !455)
!455 = !{!456, !457, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !177, line: 928, baseType: !434, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !177, line: 929, baseType: !56, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !454, file: !177, line: 930, baseType: !430, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !431, file: !177, line: 937, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 933, size: 128, elements: !461)
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !177, line: 934, baseType: !434, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !460, file: !177, line: 935, baseType: !434, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !460, file: !177, line: 936, baseType: !390, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !431, file: !177, line: 944, baseType: !466, size: 192)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 939, size: 192, elements: !467)
!467 = !{!468, !469, !470, !472}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !177, line: 940, baseType: !434, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !466, file: !177, line: 941, baseType: !56, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !466, file: !177, line: 942, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !177, line: 128, baseType: !142)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !466, file: !177, line: 943, baseType: !56, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !431, file: !177, line: 950, baseType: !474, size: 96)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !177, line: 946, size: 96, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !177, line: 947, baseType: !434, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !474, file: !177, line: 948, baseType: !56, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !474, file: !177, line: 949, baseType: !56, size: 32, offset: 64)
!479 = !DILocalVariable(name: "header", scope: !419, file: !2, line: 222, type: !93)
!480 = !DILocalVariable(name: "phys_id", scope: !419, file: !2, line: 223, type: !76)
!481 = !DILabel(scope: !419, name: "exit", file: !2, line: 249)
!482 = !DILocation(line: 218, column: 47, scope: !419)
!483 = !DILocation(line: 218, column: 59, scope: !419)
!484 = !DILocation(line: 218, column: 69, scope: !419)
!485 = !DILocation(line: 220, column: 2, scope: !419)
!486 = !DILocation(line: 220, column: 21, scope: !419)
!487 = !DILocation(line: 221, column: 2, scope: !419)
!488 = !DILocation(line: 221, column: 21, scope: !419)
!489 = !DILocation(line: 222, column: 2, scope: !419)
!490 = !DILocation(line: 222, column: 31, scope: !419)
!491 = !DILocation(line: 223, column: 2, scope: !419)
!492 = !DILocation(line: 223, column: 15, scope: !419)
!493 = !DILocation(line: 225, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !419, file: !2, line: 225, column: 6)
!495 = !DILocation(line: 225, column: 6, scope: !419)
!496 = !DILocation(line: 226, column: 3, scope: !494)
!497 = !DILocation(line: 228, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !419, file: !2, line: 228, column: 6)
!499 = !DILocation(line: 228, column: 7, scope: !498)
!500 = !DILocation(line: 228, column: 21, scope: !498)
!501 = !DILocation(line: 228, column: 32, scope: !498)
!502 = !DILocation(line: 228, column: 25, scope: !498)
!503 = !DILocation(line: 228, column: 6, scope: !419)
!504 = !DILocation(line: 229, column: 3, scope: !498)
!505 = !DILocation(line: 231, column: 15, scope: !419)
!506 = !DILocation(line: 231, column: 6, scope: !419)
!507 = !DILocation(line: 232, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !419, file: !2, line: 232, column: 6)
!509 = !DILocation(line: 232, column: 11, scope: !508)
!510 = !DILocation(line: 232, column: 16, scope: !508)
!511 = !DILocation(line: 232, column: 36, scope: !508)
!512 = !DILocation(line: 233, column: 6, scope: !508)
!513 = !DILocation(line: 233, column: 18, scope: !508)
!514 = !DILocation(line: 233, column: 25, scope: !508)
!515 = !DILocation(line: 232, column: 6, scope: !419)
!516 = !DILocation(line: 234, column: 3, scope: !517)
!517 = distinct !DILexicalBlock(scope: !508, file: !2, line: 233, column: 64)
!518 = !DILocation(line: 237, column: 42, scope: !419)
!519 = !DILocation(line: 237, column: 54, scope: !419)
!520 = !DILocation(line: 237, column: 9, scope: !419)
!521 = !DILocation(line: 238, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !419, file: !2, line: 238, column: 6)
!523 = !DILocation(line: 238, column: 14, scope: !522)
!524 = !DILocation(line: 238, column: 19, scope: !522)
!525 = !DILocation(line: 238, column: 6, scope: !419)
!526 = !DILocation(line: 239, column: 16, scope: !522)
!527 = !DILocation(line: 239, column: 24, scope: !522)
!528 = !DILocation(line: 239, column: 3, scope: !522)
!529 = !DILocation(line: 240, column: 11, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !2, line: 240, column: 11)
!531 = !DILocation(line: 240, column: 19, scope: !530)
!532 = !DILocation(line: 240, column: 24, scope: !530)
!533 = !DILocation(line: 240, column: 11, scope: !522)
!534 = !DILocation(line: 241, column: 17, scope: !530)
!535 = !DILocation(line: 241, column: 25, scope: !530)
!536 = !DILocation(line: 241, column: 31, scope: !530)
!537 = !DILocation(line: 241, column: 3, scope: !530)
!538 = !DILocation(line: 242, column: 11, scope: !539)
!539 = distinct !DILexicalBlock(scope: !530, file: !2, line: 242, column: 11)
!540 = !DILocation(line: 242, column: 19, scope: !539)
!541 = !DILocation(line: 242, column: 24, scope: !539)
!542 = !DILocation(line: 242, column: 11, scope: !530)
!543 = !DILocation(line: 243, column: 17, scope: !539)
!544 = !DILocation(line: 243, column: 25, scope: !539)
!545 = !DILocation(line: 243, column: 31, scope: !539)
!546 = !DILocation(line: 243, column: 3, scope: !539)
!547 = !DILocation(line: 244, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !539, file: !2, line: 244, column: 11)
!549 = !DILocation(line: 244, column: 19, scope: !548)
!550 = !DILocation(line: 244, column: 24, scope: !548)
!551 = !DILocation(line: 244, column: 11, scope: !539)
!552 = !DILocation(line: 245, column: 18, scope: !548)
!553 = !DILocation(line: 245, column: 26, scope: !548)
!554 = !DILocation(line: 245, column: 32, scope: !548)
!555 = !DILocation(line: 245, column: 3, scope: !548)
!556 = !DILocation(line: 246, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !2, line: 246, column: 11)
!558 = !DILocation(line: 246, column: 19, scope: !557)
!559 = !DILocation(line: 246, column: 24, scope: !557)
!560 = !DILocation(line: 246, column: 11, scope: !548)
!561 = !DILocation(line: 247, column: 19, scope: !557)
!562 = !DILocation(line: 247, column: 27, scope: !557)
!563 = !DILocation(line: 247, column: 33, scope: !557)
!564 = !DILocation(line: 247, column: 3, scope: !557)
!565 = !DILocation(line: 238, column: 22, scope: !522)
!566 = !DILocation(line: 249, column: 1, scope: !419)
!567 = !DILocation(line: 250, column: 15, scope: !419)
!568 = !DILocation(line: 250, column: 2, scope: !419)
!569 = !DILocation(line: 251, column: 9, scope: !419)
!570 = !DILocation(line: 252, column: 1, scope: !419)
!571 = !DILocation(line: 251, column: 2, scope: !419)
!572 = distinct !DISubprogram(name: "invalid_phys_cpuid", scope: !77, file: !77, line: 296, type: !573, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !578)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !76}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !576, line: 35, baseType: !577)
!576 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!577 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!578 = !{!579}
!579 = !DILocalVariable(name: "phys_id", arg: 1, scope: !572, file: !77, line: 296, type: !76)
!580 = !DILocation(line: 296, column: 52, scope: !572)
!581 = !DILocation(line: 298, column: 9, scope: !572)
!582 = !DILocation(line: 298, column: 17, scope: !572)
!583 = !DILocation(line: 298, column: 2, scope: !572)
!584 = !DILocation(line: 22, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !194, file: !2, line: 22, column: 6)
!586 = !DILocation(line: 22, column: 6, scope: !194)
!587 = !DILocation(line: 23, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !2, line: 23, column: 7)
!589 = distinct !DILexicalBlock(scope: !585, file: !2, line: 22, column: 18)
!590 = !DILocation(line: 23, column: 7, scope: !589)
!591 = !DILocation(line: 25, column: 9, scope: !588)
!592 = !DILocation(line: 25, column: 4, scope: !588)
!593 = !DILocation(line: 26, column: 12, scope: !589)
!594 = !DILocation(line: 27, column: 2, scope: !589)
!595 = !DILocation(line: 29, column: 9, scope: !194)
!596 = !DILocation(line: 29, column: 2, scope: !194)
!597 = distinct !DISubprogram(name: "acpi_map_cpuid", scope: !2, file: !2, line: 266, type: !598, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!178, !76, !56}
!600 = !{!601, !602, !603, !604, !613}
!601 = !DILocalVariable(name: "phys_id", arg: 1, scope: !597, file: !2, line: 266, type: !76)
!602 = !DILocalVariable(name: "acpi_id", arg: 2, scope: !597, file: !2, line: 266, type: !56)
!603 = !DILocalVariable(name: "i", scope: !597, file: !2, line: 269, type: !178)
!604 = !DILocalVariable(name: "__vpp_verify", scope: !605, file: !2, line: 301, type: !611)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 301, column: 7)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 301, column: 7)
!607 = distinct !DILexicalBlock(scope: !608, file: !2, line: 301, column: 7)
!608 = distinct !DILexicalBlock(scope: !609, file: !2, line: 300, column: 27)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 300, column: 2)
!610 = distinct !DILexicalBlock(scope: !597, file: !2, line: 300, column: 2)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!613 = !DILocalVariable(name: "__ptr", scope: !614, file: !2, line: 301, type: !86)
!614 = distinct !DILexicalBlock(scope: !606, file: !2, line: 301, column: 7)
!615 = !DILocation(line: 266, column: 33, scope: !597)
!616 = !DILocation(line: 266, column: 46, scope: !597)
!617 = !DILocation(line: 269, column: 2, scope: !597)
!618 = !DILocation(line: 269, column: 6, scope: !597)
!619 = !DILocation(line: 272, column: 25, scope: !620)
!620 = distinct !DILexicalBlock(scope: !597, file: !2, line: 272, column: 6)
!621 = !DILocation(line: 272, column: 6, scope: !620)
!622 = !DILocation(line: 272, column: 6, scope: !597)
!623 = !DILocation(line: 293, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 293, column: 7)
!625 = distinct !DILexicalBlock(scope: !620, file: !2, line: 272, column: 35)
!626 = !DILocation(line: 293, column: 18, scope: !624)
!627 = !DILocation(line: 293, column: 23, scope: !624)
!628 = !DILocation(line: 293, column: 26, scope: !624)
!629 = !DILocation(line: 293, column: 34, scope: !624)
!630 = !DILocation(line: 293, column: 7, scope: !625)
!631 = !DILocation(line: 294, column: 11, scope: !624)
!632 = !DILocation(line: 294, column: 4, scope: !624)
!633 = !DILocation(line: 296, column: 4, scope: !624)
!634 = !DILocation(line: 300, column: 2, scope: !610)
!635 = !DILocation(line: 300, column: 2, scope: !609)
!636 = !DILocation(line: 301, column: 7, scope: !606)
!637 = !DILocation(line: 301, column: 7, scope: !605)
!638 = !DILocation(line: 301, column: 7, scope: !614)
!639 = !DILocation(line: 301, column: 7, scope: !607)
!640 = !DILocation(line: 301, column: 29, scope: !607)
!641 = !DILocation(line: 301, column: 26, scope: !607)
!642 = !DILocation(line: 301, column: 7, scope: !608)
!643 = !DILocation(line: 302, column: 11, scope: !607)
!644 = !DILocation(line: 302, column: 4, scope: !607)
!645 = !DILocation(line: 303, column: 2, scope: !608)
!646 = distinct !{!646, !634, !647, !379, !380}
!647 = !DILocation(line: 303, column: 2, scope: !610)
!648 = !DILocation(line: 309, column: 2, scope: !597)
!649 = !DILocation(line: 310, column: 1, scope: !597)
!650 = distinct !DISubprogram(name: "find_next_bit", scope: !651, file: !651, line: 54, type: !652, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !656)
!651 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!652 = !DISubroutineType(types: !653)
!653 = !{!86, !654, !86, !86}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!656 = !{!657, !658, !659, !660}
!657 = !DILocalVariable(name: "addr", arg: 1, scope: !650, file: !651, line: 54, type: !654)
!658 = !DILocalVariable(name: "size", arg: 2, scope: !650, file: !651, line: 54, type: !86)
!659 = !DILocalVariable(name: "offset", arg: 3, scope: !650, file: !651, line: 55, type: !86)
!660 = !DILocalVariable(name: "val", scope: !661, file: !651, line: 58, type: !86)
!661 = distinct !DILexicalBlock(scope: !662, file: !651, line: 57, column: 31)
!662 = distinct !DILexicalBlock(scope: !650, file: !651, line: 57, column: 6)
!663 = !DILocation(line: 54, column: 50, scope: !650)
!664 = !DILocation(line: 54, column: 70, scope: !650)
!665 = !DILocation(line: 55, column: 22, scope: !650)
!666 = !DILocation(line: 57, column: 6, scope: !662)
!667 = !DILocation(line: 57, column: 6, scope: !650)
!668 = !DILocation(line: 58, column: 3, scope: !661)
!669 = !DILocation(line: 58, column: 17, scope: !661)
!670 = !DILocation(line: 60, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !661, file: !651, line: 60, column: 7)
!672 = !DILocation(line: 60, column: 7, scope: !661)
!673 = !DILocation(line: 61, column: 11, scope: !671)
!674 = !DILocation(line: 61, column: 4, scope: !671)
!675 = !DILocation(line: 63, column: 10, scope: !661)
!676 = !DILocation(line: 63, column: 9, scope: !661)
!677 = !DILocation(line: 63, column: 17, scope: !661)
!678 = !DILocation(line: 63, column: 15, scope: !661)
!679 = !DILocation(line: 63, column: 7, scope: !661)
!680 = !DILocation(line: 64, column: 10, scope: !661)
!681 = !DILocation(line: 64, column: 16, scope: !661)
!682 = !DILocation(line: 64, column: 29, scope: !661)
!683 = !DILocation(line: 64, column: 3, scope: !661)
!684 = !DILocation(line: 65, column: 2, scope: !662)
!685 = !DILocation(line: 67, column: 24, scope: !650)
!686 = !DILocation(line: 67, column: 30, scope: !650)
!687 = !DILocation(line: 67, column: 36, scope: !650)
!688 = !DILocation(line: 67, column: 9, scope: !650)
!689 = !DILocation(line: 67, column: 2, scope: !650)
!690 = !DILocation(line: 68, column: 1, scope: !650)
!691 = distinct !DISubprogram(name: "acpi_get_cpuid", scope: !2, file: !2, line: 312, type: !692, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!178, !390, !178, !56}
!694 = !{!695, !696, !697, !698}
!695 = !DILocalVariable(name: "handle", arg: 1, scope: !691, file: !2, line: 312, type: !390)
!696 = !DILocalVariable(name: "type", arg: 2, scope: !691, file: !2, line: 312, type: !178)
!697 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !691, file: !2, line: 312, type: !56)
!698 = !DILocalVariable(name: "phys_id", scope: !691, file: !2, line: 314, type: !76)
!699 = !DILocation(line: 312, column: 32, scope: !691)
!700 = !DILocation(line: 312, column: 44, scope: !691)
!701 = !DILocation(line: 312, column: 54, scope: !691)
!702 = !DILocation(line: 314, column: 2, scope: !691)
!703 = !DILocation(line: 314, column: 15, scope: !691)
!704 = !DILocation(line: 316, column: 29, scope: !691)
!705 = !DILocation(line: 316, column: 37, scope: !691)
!706 = !DILocation(line: 316, column: 43, scope: !691)
!707 = !DILocation(line: 316, column: 12, scope: !691)
!708 = !DILocation(line: 316, column: 10, scope: !691)
!709 = !DILocation(line: 318, column: 24, scope: !691)
!710 = !DILocation(line: 318, column: 33, scope: !691)
!711 = !DILocation(line: 318, column: 9, scope: !691)
!712 = !DILocation(line: 319, column: 1, scope: !691)
!713 = !DILocation(line: 318, column: 2, scope: !691)
!714 = distinct !DISubprogram(name: "acpi_get_ioapic_id", scope: !2, file: !2, line: 403, type: !715, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !718)
!715 = !DISubroutineType(types: !716)
!716 = !{!178, !390, !56, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!718 = !{!719, !720, !721, !722}
!719 = !DILocalVariable(name: "handle", arg: 1, scope: !714, file: !2, line: 403, type: !390)
!720 = !DILocalVariable(name: "gsi_base", arg: 2, scope: !714, file: !2, line: 403, type: !56)
!721 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !714, file: !2, line: 403, type: !717)
!722 = !DILocalVariable(name: "apic_id", scope: !714, file: !2, line: 405, type: !178)
!723 = !DILocation(line: 403, column: 36, scope: !714)
!724 = !DILocation(line: 403, column: 48, scope: !714)
!725 = !DILocation(line: 403, column: 63, scope: !714)
!726 = !DILocation(line: 405, column: 2, scope: !714)
!727 = !DILocation(line: 405, column: 6, scope: !714)
!728 = !DILocation(line: 407, column: 35, scope: !714)
!729 = !DILocation(line: 407, column: 43, scope: !714)
!730 = !DILocation(line: 407, column: 53, scope: !714)
!731 = !DILocation(line: 407, column: 12, scope: !714)
!732 = !DILocation(line: 407, column: 10, scope: !714)
!733 = !DILocation(line: 408, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !714, file: !2, line: 408, column: 6)
!735 = !DILocation(line: 408, column: 14, scope: !734)
!736 = !DILocation(line: 408, column: 6, scope: !714)
!737 = !DILocation(line: 409, column: 37, scope: !734)
!738 = !DILocation(line: 409, column: 47, scope: !734)
!739 = !DILocation(line: 409, column: 13, scope: !734)
!740 = !DILocation(line: 409, column: 11, scope: !734)
!741 = !DILocation(line: 409, column: 3, scope: !734)
!742 = !DILocation(line: 411, column: 9, scope: !714)
!743 = !DILocation(line: 412, column: 1, scope: !714)
!744 = !DILocation(line: 411, column: 2, scope: !714)
!745 = distinct !DISubprogram(name: "parse_mat_ioapic_entry", scope: !2, file: !2, line: 364, type: !715, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754}
!747 = !DILocalVariable(name: "handle", arg: 1, scope: !745, file: !2, line: 364, type: !390)
!748 = !DILocalVariable(name: "gsi_base", arg: 2, scope: !745, file: !2, line: 364, type: !56)
!749 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !745, file: !2, line: 365, type: !717)
!750 = !DILocalVariable(name: "buffer", scope: !745, file: !2, line: 367, type: !425)
!751 = !DILocalVariable(name: "header", scope: !745, file: !2, line: 368, type: !93)
!752 = !DILocalVariable(name: "obj", scope: !745, file: !2, line: 369, type: !430)
!753 = !DILocalVariable(name: "apic_id", scope: !745, file: !2, line: 370, type: !178)
!754 = !DILabel(scope: !745, name: "exit", file: !2, line: 387)
!755 = !DILocation(line: 364, column: 47, scope: !745)
!756 = !DILocation(line: 364, column: 59, scope: !745)
!757 = !DILocation(line: 365, column: 12, scope: !745)
!758 = !DILocation(line: 367, column: 2, scope: !745)
!759 = !DILocation(line: 367, column: 21, scope: !745)
!760 = !DILocation(line: 368, column: 2, scope: !745)
!761 = !DILocation(line: 368, column: 31, scope: !745)
!762 = !DILocation(line: 369, column: 2, scope: !745)
!763 = !DILocation(line: 369, column: 21, scope: !745)
!764 = !DILocation(line: 370, column: 2, scope: !745)
!765 = !DILocation(line: 370, column: 6, scope: !745)
!766 = !DILocation(line: 372, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !745, file: !2, line: 372, column: 6)
!768 = !DILocation(line: 372, column: 6, scope: !745)
!769 = !DILocation(line: 373, column: 3, scope: !767)
!770 = !DILocation(line: 375, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !745, file: !2, line: 375, column: 6)
!772 = !DILocation(line: 375, column: 7, scope: !771)
!773 = !DILocation(line: 375, column: 21, scope: !771)
!774 = !DILocation(line: 375, column: 32, scope: !771)
!775 = !DILocation(line: 375, column: 25, scope: !771)
!776 = !DILocation(line: 375, column: 6, scope: !745)
!777 = !DILocation(line: 376, column: 3, scope: !771)
!778 = !DILocation(line: 378, column: 15, scope: !745)
!779 = !DILocation(line: 378, column: 6, scope: !745)
!780 = !DILocation(line: 379, column: 6, scope: !781)
!781 = distinct !DILexicalBlock(scope: !745, file: !2, line: 379, column: 6)
!782 = !DILocation(line: 379, column: 11, scope: !781)
!783 = !DILocation(line: 379, column: 16, scope: !781)
!784 = !DILocation(line: 379, column: 36, scope: !781)
!785 = !DILocation(line: 380, column: 6, scope: !781)
!786 = !DILocation(line: 380, column: 18, scope: !781)
!787 = !DILocation(line: 380, column: 25, scope: !781)
!788 = !DILocation(line: 379, column: 6, scope: !745)
!789 = !DILocation(line: 381, column: 3, scope: !781)
!790 = !DILocation(line: 383, column: 42, scope: !745)
!791 = !DILocation(line: 383, column: 54, scope: !745)
!792 = !DILocation(line: 383, column: 9, scope: !745)
!793 = !DILocation(line: 384, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !745, file: !2, line: 384, column: 6)
!795 = !DILocation(line: 384, column: 14, scope: !794)
!796 = !DILocation(line: 384, column: 19, scope: !794)
!797 = !DILocation(line: 384, column: 6, scope: !745)
!798 = !DILocation(line: 385, column: 17, scope: !794)
!799 = !DILocation(line: 385, column: 25, scope: !794)
!800 = !DILocation(line: 385, column: 35, scope: !794)
!801 = !DILocation(line: 385, column: 3, scope: !794)
!802 = !DILocation(line: 384, column: 22, scope: !794)
!803 = !DILocation(line: 387, column: 1, scope: !745)
!804 = !DILocation(line: 388, column: 15, scope: !745)
!805 = !DILocation(line: 388, column: 2, scope: !745)
!806 = !DILocation(line: 389, column: 9, scope: !745)
!807 = !DILocation(line: 390, column: 1, scope: !745)
!808 = !DILocation(line: 389, column: 2, scope: !745)
!809 = distinct !DISubprogram(name: "parse_madt_ioapic_entry", scope: !2, file: !2, line: 336, type: !810, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!178, !56, !717}
!812 = !{!813, !814, !815, !816, !817, !818, !819}
!813 = !DILocalVariable(name: "gsi_base", arg: 1, scope: !809, file: !2, line: 336, type: !56)
!814 = !DILocalVariable(name: "phys_addr", arg: 2, scope: !809, file: !2, line: 336, type: !717)
!815 = !DILocalVariable(name: "hdr", scope: !809, file: !2, line: 338, type: !93)
!816 = !DILocalVariable(name: "madt_end", scope: !809, file: !2, line: 339, type: !86)
!817 = !DILocalVariable(name: "entry", scope: !809, file: !2, line: 339, type: !86)
!818 = !DILocalVariable(name: "madt", scope: !809, file: !2, line: 340, type: !197)
!819 = !DILocalVariable(name: "apic_id", scope: !809, file: !2, line: 341, type: !178)
!820 = !DILocation(line: 336, column: 40, scope: !809)
!821 = !DILocation(line: 336, column: 55, scope: !809)
!822 = !DILocation(line: 338, column: 2, scope: !809)
!823 = !DILocation(line: 338, column: 31, scope: !809)
!824 = !DILocation(line: 339, column: 2, scope: !809)
!825 = !DILocation(line: 339, column: 16, scope: !809)
!826 = !DILocation(line: 339, column: 26, scope: !809)
!827 = !DILocation(line: 340, column: 2, scope: !809)
!828 = !DILocation(line: 340, column: 26, scope: !809)
!829 = !DILocation(line: 341, column: 2, scope: !809)
!830 = !DILocation(line: 341, column: 6, scope: !809)
!831 = !DILocation(line: 343, column: 9, scope: !809)
!832 = !DILocation(line: 343, column: 7, scope: !809)
!833 = !DILocation(line: 344, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !809, file: !2, line: 344, column: 6)
!835 = !DILocation(line: 344, column: 6, scope: !809)
!836 = !DILocation(line: 345, column: 10, scope: !834)
!837 = !DILocation(line: 345, column: 3, scope: !834)
!838 = !DILocation(line: 347, column: 25, scope: !809)
!839 = !DILocation(line: 347, column: 10, scope: !809)
!840 = !DILocation(line: 347, column: 8, scope: !809)
!841 = !DILocation(line: 348, column: 13, scope: !809)
!842 = !DILocation(line: 348, column: 21, scope: !809)
!843 = !DILocation(line: 348, column: 27, scope: !809)
!844 = !DILocation(line: 348, column: 34, scope: !809)
!845 = !DILocation(line: 348, column: 19, scope: !809)
!846 = !DILocation(line: 348, column: 11, scope: !809)
!847 = !DILocation(line: 351, column: 8, scope: !809)
!848 = !DILocation(line: 352, column: 2, scope: !809)
!849 = !DILocation(line: 352, column: 9, scope: !809)
!850 = !DILocation(line: 352, column: 15, scope: !809)
!851 = !DILocation(line: 352, column: 55, scope: !809)
!852 = !DILocation(line: 352, column: 53, scope: !809)
!853 = !DILocation(line: 353, column: 40, scope: !854)
!854 = distinct !DILexicalBlock(scope: !809, file: !2, line: 352, column: 65)
!855 = !DILocation(line: 353, column: 9, scope: !854)
!856 = !DILocation(line: 353, column: 7, scope: !854)
!857 = !DILocation(line: 354, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !2, line: 354, column: 7)
!859 = !DILocation(line: 354, column: 12, scope: !858)
!860 = !DILocation(line: 354, column: 17, scope: !858)
!861 = !DILocation(line: 354, column: 43, scope: !858)
!862 = !DILocation(line: 355, column: 21, scope: !858)
!863 = !DILocation(line: 355, column: 26, scope: !858)
!864 = !DILocation(line: 355, column: 36, scope: !858)
!865 = !DILocation(line: 355, column: 7, scope: !858)
!866 = !DILocation(line: 354, column: 7, scope: !854)
!867 = !DILocation(line: 356, column: 4, scope: !858)
!868 = !DILocation(line: 358, column: 13, scope: !858)
!869 = !DILocation(line: 358, column: 18, scope: !858)
!870 = !DILocation(line: 358, column: 10, scope: !858)
!871 = distinct !{!871, !848, !872, !379, !380}
!872 = !DILocation(line: 359, column: 2, scope: !809)
!873 = !DILocation(line: 361, column: 9, scope: !809)
!874 = !DILocation(line: 361, column: 2, scope: !809)
!875 = !DILocation(line: 362, column: 1, scope: !809)
!876 = distinct !DISubprogram(name: "map_lapic_id", scope: !2, file: !2, line: 32, type: !877, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !880)
!877 = !DISubroutineType(types: !878)
!878 = !{!178, !93, !56, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!880 = !{!881, !882, !883, !884, !885}
!881 = !DILocalVariable(name: "entry", arg: 1, scope: !876, file: !2, line: 32, type: !93)
!882 = !DILocalVariable(name: "acpi_id", arg: 2, scope: !876, file: !2, line: 33, type: !56)
!883 = !DILocalVariable(name: "apic_id", arg: 3, scope: !876, file: !2, line: 33, type: !879)
!884 = !DILocalVariable(name: "lapic", scope: !876, file: !2, line: 35, type: !99)
!885 = !DILocalVariable(name: "__mptr", scope: !886, file: !2, line: 36, type: !78)
!886 = distinct !DILexicalBlock(scope: !876, file: !2, line: 36, column: 3)
!887 = !DILocation(line: 32, column: 54, scope: !876)
!888 = !DILocation(line: 33, column: 8, scope: !876)
!889 = !DILocation(line: 33, column: 31, scope: !876)
!890 = !DILocation(line: 35, column: 2, scope: !876)
!891 = !DILocation(line: 35, column: 31, scope: !876)
!892 = !DILocation(line: 36, column: 3, scope: !886)
!893 = !DILocation(line: 36, column: 3, scope: !876)
!894 = !DILocation(line: 38, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !876, file: !2, line: 38, column: 6)
!896 = !DILocation(line: 38, column: 15, scope: !895)
!897 = !DILocation(line: 38, column: 27, scope: !895)
!898 = !DILocation(line: 38, column: 6, scope: !876)
!899 = !DILocation(line: 39, column: 3, scope: !895)
!900 = !DILocation(line: 41, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !876, file: !2, line: 41, column: 6)
!902 = !DILocation(line: 41, column: 13, scope: !901)
!903 = !DILocation(line: 41, column: 29, scope: !901)
!904 = !DILocation(line: 41, column: 26, scope: !901)
!905 = !DILocation(line: 41, column: 6, scope: !876)
!906 = !DILocation(line: 42, column: 3, scope: !901)
!907 = !DILocation(line: 44, column: 13, scope: !876)
!908 = !DILocation(line: 44, column: 20, scope: !876)
!909 = !DILocation(line: 44, column: 3, scope: !876)
!910 = !DILocation(line: 44, column: 11, scope: !876)
!911 = !DILocation(line: 45, column: 2, scope: !876)
!912 = !DILocation(line: 46, column: 1, scope: !876)
!913 = distinct !DISubprogram(name: "map_x2apic_id", scope: !2, file: !2, line: 48, type: !914, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!178, !93, !178, !56, !879}
!916 = !{!917, !918, !919, !920, !921, !922}
!917 = !DILocalVariable(name: "entry", arg: 1, scope: !913, file: !2, line: 48, type: !93)
!918 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !913, file: !2, line: 49, type: !178)
!919 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !913, file: !2, line: 49, type: !56)
!920 = !DILocalVariable(name: "apic_id", arg: 4, scope: !913, file: !2, line: 49, type: !879)
!921 = !DILocalVariable(name: "apic", scope: !913, file: !2, line: 51, type: !106)
!922 = !DILocalVariable(name: "__mptr", scope: !923, file: !2, line: 52, type: !78)
!923 = distinct !DILexicalBlock(scope: !913, file: !2, line: 52, column: 3)
!924 = !DILocation(line: 48, column: 55, scope: !913)
!925 = !DILocation(line: 49, column: 7, scope: !913)
!926 = !DILocation(line: 49, column: 31, scope: !913)
!927 = !DILocation(line: 49, column: 54, scope: !913)
!928 = !DILocation(line: 51, column: 2, scope: !913)
!929 = !DILocation(line: 51, column: 33, scope: !913)
!930 = !DILocation(line: 52, column: 3, scope: !923)
!931 = !DILocation(line: 52, column: 3, scope: !913)
!932 = !DILocation(line: 54, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !913, file: !2, line: 54, column: 6)
!934 = !DILocation(line: 54, column: 14, scope: !933)
!935 = !DILocation(line: 54, column: 26, scope: !933)
!936 = !DILocation(line: 54, column: 6, scope: !913)
!937 = !DILocation(line: 55, column: 3, scope: !933)
!938 = !DILocation(line: 57, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !913, file: !2, line: 57, column: 6)
!940 = !DILocation(line: 57, column: 25, scope: !939)
!941 = !DILocation(line: 57, column: 29, scope: !939)
!942 = !DILocation(line: 57, column: 35, scope: !939)
!943 = !DILocation(line: 57, column: 42, scope: !939)
!944 = !DILocation(line: 57, column: 39, scope: !939)
!945 = !DILocation(line: 57, column: 6, scope: !913)
!946 = !DILocation(line: 58, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !939, file: !2, line: 57, column: 52)
!948 = !DILocation(line: 58, column: 20, scope: !947)
!949 = !DILocation(line: 58, column: 4, scope: !947)
!950 = !DILocation(line: 58, column: 12, scope: !947)
!951 = !DILocation(line: 59, column: 3, scope: !947)
!952 = !DILocation(line: 62, column: 2, scope: !913)
!953 = !DILocation(line: 63, column: 1, scope: !913)
!954 = distinct !DISubprogram(name: "map_lsapic_id", scope: !2, file: !2, line: 65, type: !914, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !955)
!955 = !{!956, !957, !958, !959, !960, !961}
!956 = !DILocalVariable(name: "entry", arg: 1, scope: !954, file: !2, line: 65, type: !93)
!957 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !954, file: !2, line: 66, type: !178)
!958 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !954, file: !2, line: 66, type: !56)
!959 = !DILocalVariable(name: "apic_id", arg: 4, scope: !954, file: !2, line: 66, type: !879)
!960 = !DILocalVariable(name: "lsapic", scope: !954, file: !2, line: 68, type: !114)
!961 = !DILocalVariable(name: "__mptr", scope: !962, file: !2, line: 69, type: !78)
!962 = distinct !DILexicalBlock(scope: !954, file: !2, line: 69, column: 3)
!963 = !DILocation(line: 65, column: 55, scope: !954)
!964 = !DILocation(line: 66, column: 7, scope: !954)
!965 = !DILocation(line: 66, column: 31, scope: !954)
!966 = !DILocation(line: 66, column: 54, scope: !954)
!967 = !DILocation(line: 68, column: 2, scope: !954)
!968 = !DILocation(line: 68, column: 32, scope: !954)
!969 = !DILocation(line: 69, column: 3, scope: !962)
!970 = !DILocation(line: 69, column: 3, scope: !954)
!971 = !DILocation(line: 71, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !954, file: !2, line: 71, column: 6)
!973 = !DILocation(line: 71, column: 16, scope: !972)
!974 = !DILocation(line: 71, column: 28, scope: !972)
!975 = !DILocation(line: 71, column: 6, scope: !954)
!976 = !DILocation(line: 72, column: 3, scope: !972)
!977 = !DILocation(line: 74, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !954, file: !2, line: 74, column: 6)
!979 = !DILocation(line: 74, column: 6, scope: !954)
!980 = !DILocation(line: 75, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !2, line: 75, column: 7)
!982 = distinct !DILexicalBlock(scope: !978, file: !2, line: 74, column: 26)
!983 = !DILocation(line: 75, column: 15, scope: !981)
!984 = !DILocation(line: 75, column: 22, scope: !981)
!985 = !DILocation(line: 75, column: 28, scope: !981)
!986 = !DILocation(line: 75, column: 32, scope: !981)
!987 = !DILocation(line: 75, column: 40, scope: !981)
!988 = !DILocation(line: 75, column: 47, scope: !981)
!989 = !DILocation(line: 75, column: 44, scope: !981)
!990 = !DILocation(line: 75, column: 7, scope: !982)
!991 = !DILocation(line: 76, column: 4, scope: !981)
!992 = !DILocation(line: 77, column: 2, scope: !982)
!993 = !DILocation(line: 77, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !978, file: !2, line: 77, column: 13)
!995 = !DILocation(line: 77, column: 21, scope: !994)
!996 = !DILocation(line: 77, column: 37, scope: !994)
!997 = !DILocation(line: 77, column: 34, scope: !994)
!998 = !DILocation(line: 77, column: 13, scope: !978)
!999 = !DILocation(line: 78, column: 3, scope: !994)
!1000 = !DILocation(line: 80, column: 14, scope: !954)
!1001 = !DILocation(line: 80, column: 22, scope: !954)
!1002 = !DILocation(line: 80, column: 25, scope: !954)
!1003 = !DILocation(line: 80, column: 33, scope: !954)
!1004 = !DILocation(line: 80, column: 41, scope: !954)
!1005 = !DILocation(line: 80, column: 31, scope: !954)
!1006 = !DILocation(line: 80, column: 3, scope: !954)
!1007 = !DILocation(line: 80, column: 11, scope: !954)
!1008 = !DILocation(line: 81, column: 2, scope: !954)
!1009 = !DILocation(line: 82, column: 1, scope: !954)
!1010 = distinct !DISubprogram(name: "map_gicc_mpidr", scope: !2, file: !2, line: 87, type: !914, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017}
!1012 = !DILocalVariable(name: "entry", arg: 1, scope: !1010, file: !2, line: 87, type: !93)
!1013 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !1010, file: !2, line: 88, type: !178)
!1014 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !1010, file: !2, line: 88, type: !56)
!1015 = !DILocalVariable(name: "mpidr", arg: 4, scope: !1010, file: !2, line: 88, type: !879)
!1016 = !DILocalVariable(name: "gicc", scope: !1010, file: !2, line: 90, type: !131)
!1017 = !DILocalVariable(name: "__mptr", scope: !1018, file: !2, line: 91, type: !78)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 91, column: 6)
!1019 = !DILocation(line: 87, column: 56, scope: !1010)
!1020 = !DILocation(line: 88, column: 7, scope: !1010)
!1021 = !DILocation(line: 88, column: 31, scope: !1010)
!1022 = !DILocation(line: 88, column: 54, scope: !1010)
!1023 = !DILocation(line: 90, column: 2, scope: !1010)
!1024 = !DILocation(line: 90, column: 38, scope: !1010)
!1025 = !DILocation(line: 91, column: 6, scope: !1018)
!1026 = !DILocation(line: 91, column: 6, scope: !1010)
!1027 = !DILocation(line: 93, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 93, column: 6)
!1029 = !DILocation(line: 93, column: 14, scope: !1028)
!1030 = !DILocation(line: 93, column: 20, scope: !1028)
!1031 = !DILocation(line: 93, column: 6, scope: !1010)
!1032 = !DILocation(line: 94, column: 3, scope: !1028)
!1033 = !DILocation(line: 101, column: 6, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 101, column: 6)
!1035 = !DILocation(line: 101, column: 25, scope: !1034)
!1036 = !DILocation(line: 101, column: 29, scope: !1034)
!1037 = !DILocation(line: 101, column: 35, scope: !1034)
!1038 = !DILocation(line: 101, column: 42, scope: !1034)
!1039 = !DILocation(line: 101, column: 39, scope: !1034)
!1040 = !DILocation(line: 101, column: 6, scope: !1010)
!1041 = !DILocation(line: 102, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 101, column: 52)
!1043 = !DILocation(line: 102, column: 18, scope: !1042)
!1044 = !DILocation(line: 102, column: 4, scope: !1042)
!1045 = !DILocation(line: 102, column: 10, scope: !1042)
!1046 = !DILocation(line: 103, column: 3, scope: !1042)
!1047 = !DILocation(line: 106, column: 2, scope: !1010)
!1048 = !DILocation(line: 107, column: 1, scope: !1010)
!1049 = distinct !DISubprogram(name: "map_rintc_hartid", scope: !2, file: !2, line: 112, type: !914, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056}
!1051 = !DILocalVariable(name: "entry", arg: 1, scope: !1049, file: !2, line: 112, type: !93)
!1052 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !1049, file: !2, line: 113, type: !178)
!1053 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !1049, file: !2, line: 113, type: !56)
!1054 = !DILocalVariable(name: "hartid", arg: 4, scope: !1049, file: !2, line: 114, type: !879)
!1055 = !DILocalVariable(name: "rintc", scope: !1049, file: !2, line: 116, type: !156)
!1056 = !DILocalVariable(name: "__mptr", scope: !1057, file: !2, line: 117, type: !78)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 117, column: 6)
!1058 = !DILocation(line: 112, column: 58, scope: !1049)
!1059 = !DILocation(line: 113, column: 12, scope: !1049)
!1060 = !DILocation(line: 113, column: 36, scope: !1049)
!1061 = !DILocation(line: 114, column: 22, scope: !1049)
!1062 = !DILocation(line: 116, column: 2, scope: !1049)
!1063 = !DILocation(line: 116, column: 26, scope: !1049)
!1064 = !DILocation(line: 117, column: 6, scope: !1057)
!1065 = !DILocation(line: 117, column: 6, scope: !1049)
!1066 = !DILocation(line: 119, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 119, column: 6)
!1068 = !DILocation(line: 119, column: 15, scope: !1067)
!1069 = !DILocation(line: 119, column: 21, scope: !1067)
!1070 = !DILocation(line: 119, column: 6, scope: !1049)
!1071 = !DILocation(line: 120, column: 3, scope: !1067)
!1072 = !DILocation(line: 127, column: 6, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 127, column: 6)
!1074 = !DILocation(line: 127, column: 25, scope: !1073)
!1075 = !DILocation(line: 127, column: 28, scope: !1073)
!1076 = !DILocation(line: 127, column: 35, scope: !1073)
!1077 = !DILocation(line: 127, column: 42, scope: !1073)
!1078 = !DILocation(line: 127, column: 39, scope: !1073)
!1079 = !DILocation(line: 127, column: 6, scope: !1049)
!1080 = !DILocation(line: 128, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 127, column: 51)
!1082 = !DILocation(line: 128, column: 20, scope: !1081)
!1083 = !DILocation(line: 128, column: 4, scope: !1081)
!1084 = !DILocation(line: 128, column: 11, scope: !1081)
!1085 = !DILocation(line: 129, column: 3, scope: !1081)
!1086 = !DILocation(line: 132, column: 2, scope: !1049)
!1087 = !DILocation(line: 133, column: 1, scope: !1049)
!1088 = distinct !DISubprogram(name: "map_core_pic_id", scope: !2, file: !2, line: 138, type: !914, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095}
!1090 = !DILocalVariable(name: "entry", arg: 1, scope: !1088, file: !2, line: 138, type: !93)
!1091 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !1088, file: !2, line: 139, type: !178)
!1092 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !1088, file: !2, line: 139, type: !56)
!1093 = !DILocalVariable(name: "phys_id", arg: 4, scope: !1088, file: !2, line: 139, type: !879)
!1094 = !DILocalVariable(name: "core_pic", scope: !1088, file: !2, line: 141, type: !168)
!1095 = !DILocalVariable(name: "__mptr", scope: !1096, file: !2, line: 142, type: !78)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 142, column: 3)
!1097 = !DILocation(line: 138, column: 57, scope: !1088)
!1098 = !DILocation(line: 139, column: 7, scope: !1088)
!1099 = !DILocation(line: 139, column: 31, scope: !1088)
!1100 = !DILocation(line: 139, column: 54, scope: !1088)
!1101 = !DILocation(line: 141, column: 2, scope: !1088)
!1102 = !DILocation(line: 141, column: 29, scope: !1088)
!1103 = !DILocation(line: 142, column: 3, scope: !1096)
!1104 = !DILocation(line: 142, column: 3, scope: !1088)
!1105 = !DILocation(line: 144, column: 8, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 144, column: 6)
!1107 = !DILocation(line: 144, column: 18, scope: !1106)
!1108 = !DILocation(line: 144, column: 24, scope: !1106)
!1109 = !DILocation(line: 144, column: 6, scope: !1088)
!1110 = !DILocation(line: 145, column: 3, scope: !1106)
!1111 = !DILocation(line: 151, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 151, column: 6)
!1113 = !DILocation(line: 151, column: 25, scope: !1112)
!1114 = !DILocation(line: 151, column: 29, scope: !1112)
!1115 = !DILocation(line: 151, column: 39, scope: !1112)
!1116 = !DILocation(line: 151, column: 55, scope: !1112)
!1117 = !DILocation(line: 151, column: 52, scope: !1112)
!1118 = !DILocation(line: 151, column: 6, scope: !1088)
!1119 = !DILocation(line: 152, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 151, column: 65)
!1121 = !DILocation(line: 152, column: 24, scope: !1120)
!1122 = !DILocation(line: 152, column: 4, scope: !1120)
!1123 = !DILocation(line: 152, column: 12, scope: !1120)
!1124 = !DILocation(line: 153, column: 3, scope: !1120)
!1125 = !DILocation(line: 156, column: 2, scope: !1088)
!1126 = !DILocation(line: 157, column: 1, scope: !1088)
!1127 = !DISubprogram(name: "acpi_evaluate_object", scope: !241, file: !241, line: 549, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!244, !390, !245, !1130, !1135}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !177, line: 956, size: 128, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !177, line: 957, baseType: !56, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1131, file: !177, line: 958, baseType: !430, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1136 = !DISubprogram(name: "kfree", scope: !1137, file: !1137, line: 227, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !611}
!1140 = distinct !DISubprogram(name: "variable__ffs", scope: !1141, file: !1141, line: 250, type: !1142, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1144)
!1141 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!86, !86}
!1144 = !{!1145}
!1145 = !DILocalVariable(name: "word", arg: 1, scope: !1140, file: !1141, line: 250, type: !86)
!1146 = !DILocation(line: 250, column: 66, scope: !1140)
!1147 = !DILocation(line: 254, column: 11, scope: !1140)
!1148 = !DILocation(line: 252, column: 2, scope: !1140)
!1149 = !{i64 698675}
!1150 = !DILocation(line: 255, column: 9, scope: !1140)
!1151 = !DILocation(line: 255, column: 2, scope: !1140)
!1152 = !DISubprogram(name: "_find_next_bit", scope: !651, file: !651, line: 11, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = distinct !DISubprogram(name: "get_ioapic_id", scope: !2, file: !2, line: 323, type: !1154, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1157)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!178, !93, !56, !717, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1157 = !{!1158, !1159, !1160, !1161, !1162}
!1158 = !DILocalVariable(name: "entry", arg: 1, scope: !1153, file: !2, line: 323, type: !93)
!1159 = !DILocalVariable(name: "gsi_base", arg: 2, scope: !1153, file: !2, line: 323, type: !56)
!1160 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !1153, file: !2, line: 324, type: !717)
!1161 = !DILocalVariable(name: "ioapic_id", arg: 4, scope: !1153, file: !2, line: 324, type: !1156)
!1162 = !DILocalVariable(name: "ioapic", scope: !1153, file: !2, line: 326, type: !179)
!1163 = !DILocation(line: 323, column: 55, scope: !1153)
!1164 = !DILocation(line: 323, column: 66, scope: !1153)
!1165 = !DILocation(line: 324, column: 10, scope: !1153)
!1166 = !DILocation(line: 324, column: 26, scope: !1153)
!1167 = !DILocation(line: 326, column: 2, scope: !1153)
!1168 = !DILocation(line: 326, column: 28, scope: !1153)
!1169 = !DILocation(line: 326, column: 65, scope: !1153)
!1170 = !DILocation(line: 328, column: 6, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 328, column: 6)
!1172 = !DILocation(line: 328, column: 14, scope: !1171)
!1173 = !DILocation(line: 328, column: 33, scope: !1171)
!1174 = !DILocation(line: 328, column: 30, scope: !1171)
!1175 = !DILocation(line: 328, column: 6, scope: !1153)
!1176 = !DILocation(line: 329, column: 3, scope: !1171)
!1177 = !DILocation(line: 331, column: 15, scope: !1153)
!1178 = !DILocation(line: 331, column: 23, scope: !1153)
!1179 = !DILocation(line: 331, column: 3, scope: !1153)
!1180 = !DILocation(line: 331, column: 13, scope: !1153)
!1181 = !DILocation(line: 332, column: 15, scope: !1153)
!1182 = !DILocation(line: 332, column: 23, scope: !1153)
!1183 = !DILocation(line: 332, column: 3, scope: !1153)
!1184 = !DILocation(line: 332, column: 13, scope: !1153)
!1185 = !DILocation(line: 333, column: 2, scope: !1153)
!1186 = !DILocation(line: 334, column: 1, scope: !1153)
