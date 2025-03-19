; ModuleID = 'drivers/firmware/efi/libstub/tpm.c'
source_filename = "drivers/firmware/efi/libstub/tpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcpa_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.efi_tcg2_final_events_table = type { i64, i64, [0 x i8] }
%struct.linux_efi_tpm_eventlog = type { i32, i32, i8, [0 x i8] }
%struct.tcg_pcr_event2_head = type { i32, i32, i32, [0 x %struct.tpm_digest] }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tcg_pcr_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcg_efi_specid_event_head = type { [16 x i8], i32, i8, i8, i8, i8, i32, [0 x %struct.tcg_efi_specid_event_algs] }
%struct.tcg_efi_specid_event_algs = type { i16, i16 }
%struct.tcg_event_field = type { i32, [0 x i8] }

@__const.efi_retrieve_tpm2_eventlog.tcg2_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"lv\7F`Ut\BEB\93\0B\E4\D7m\B2r\0F" }, align 4
@__const.efi_retrieve_tpm2_eventlog.linux_eventlog_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\B0\9Cy\B7\A2\ECCI\96g\1F\AE\07\B7G\FA" }, align 4
@efi_system_table = external hidden global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"\013ERROR: Unable to allocate memory for event log\0A\00", align 1, !dbg !0
@efi_is64 = external hidden constant i8, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Spec ID Event03\00", align 1, !dbg !7

; Function Attrs: noredzone nounwind
define hidden void @efi_retrieve_tpm2_eventlog() #0 !dbg !347 {
entry:
  %tcg2_guid = alloca %struct.guid_t, align 4
  %linux_eventlog_guid = alloca %struct.guid_t, align 4
  %status = alloca i64, align 8
  %log_location = alloca i64, align 8
  %log_last_entry = alloca i64, align 8
  %log_tbl = alloca ptr, align 8
  %final_events_table = alloca ptr, align 8
  %first_entry_addr = alloca i64, align 8
  %last_entry_addr = alloca i64, align 8
  %log_size = alloca i64, align 8
  %last_entry_size = alloca i64, align 8
  %truncated = alloca i8, align 1
  %version = alloca i32, align 4
  %tcg2_protocol = alloca ptr, align 8
  %final_events_size = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__inst = alloca ptr, align 8
  %tmp22 = alloca i64, align 8
  %__pad28 = alloca [3 x i64], align 16
  %tmp32 = alloca i64, align 8
  %__inst42 = alloca ptr, align 8
  %tmp43 = alloca i64, align 8
  %__pad50 = alloca [3 x i64], align 16
  %tmp54 = alloca i64, align 8
  %__pad95 = alloca [3 x i64], align 16
  %tmp99 = alloca i64, align 8
  %.compoundliteral = alloca %struct.guid_t, align 4
  %header = alloca ptr, align 8
  %offset = alloca i32, align 4
  %data = alloca ptr, align 8
  %event_size144 = alloca i32, align 4
  %i = alloca i32, align 4
  %__pad175 = alloca [3 x i64], align 16
  %tmp179 = alloca i64, align 8
  %__pad213 = alloca [3 x i64], align 16
  %tmp217 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %tcg2_guid) #8, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %tcg2_guid, metadata !351, metadata !DIExpression()), !dbg !459
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tcg2_guid, ptr align 4 @__const.efi_retrieve_tpm2_eventlog.tcg2_guid, i64 16, i1 false), !dbg !459
  call void @llvm.lifetime.start.p0(i64 16, ptr %linux_eventlog_guid) #8, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %linux_eventlog_guid, metadata !352, metadata !DIExpression()), !dbg !461
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %linux_eventlog_guid, ptr align 4 @__const.efi_retrieve_tpm2_eventlog.linux_eventlog_guid, i64 16, i1 false), !dbg !461
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #8, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %status, metadata !353, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_location) #8, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %log_location, metadata !354, metadata !DIExpression()), !dbg !465
  store i64 0, ptr %log_location, align 8, !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_last_entry) #8, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %log_last_entry, metadata !355, metadata !DIExpression()), !dbg !466
  store i64 0, ptr %log_last_entry, align 8, !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_tbl) #8, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %log_tbl, metadata !356, metadata !DIExpression()), !dbg !468
  store ptr null, ptr %log_tbl, align 8, !dbg !468
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_events_table) #8, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %final_events_table, metadata !364, metadata !DIExpression()), !dbg !470
  store ptr null, ptr %final_events_table, align 8, !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_entry_addr) #8, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %first_entry_addr, metadata !371, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_entry_addr) #8, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %last_entry_addr, metadata !372, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_size) #8, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %log_size, metadata !373, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_entry_size) #8, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %last_entry_size, metadata !378, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 1, ptr %truncated) #8, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %truncated, metadata !379, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #8, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %version, metadata !381, metadata !DIExpression()), !dbg !480
  store i32 2, ptr %version, align 4, !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcg2_protocol) #8, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %tcg2_protocol, metadata !382, metadata !DIExpression()), !dbg !482
  store ptr null, ptr %tcg2_protocol, align 8, !dbg !482
  call void @llvm.lifetime.start.p0(i64 4, ptr %final_events_size) #8, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %final_events_size, metadata !428, metadata !DIExpression()), !dbg !484
  store i32 0, ptr %final_events_size, align 4, !dbg !484
  %call = call zeroext i1 @efi_is_native() #9, !dbg !485
  br i1 %call, label %cond.true, label %cond.false5, !dbg !485

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #9, !dbg !485
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !485

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !485
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !485
  %1 = load ptr, ptr %boottime, align 8, !dbg !485
  br label %cond.end, !dbg !485

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !485
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !485
  %3 = load i32, ptr %boottime3, align 4, !dbg !485
  %conv = zext i32 %3 to i64, !dbg !485
  %4 = inttoptr i64 %conv to ptr, !dbg !485
  br label %cond.end, !dbg !485

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !485
  %locate_protocol = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 38, !dbg !485
  %5 = load ptr, ptr %locate_protocol, align 8, !dbg !485
  %call4 = call win64cc i64 %5(ptr noundef %tcg2_guid, ptr noundef null, ptr noundef %tcg2_protocol) #9, !dbg !485
  br label %cond.end19, !dbg !485

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #8, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !429, metadata !DIExpression()), !dbg !486
  br label %do.body, !dbg !487

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !489

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !489

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #9, !dbg !486
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !486

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !486
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !486
  %7 = load ptr, ptr %boottime9, align 8, !dbg !486
  br label %cond.end13, !dbg !486

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !486
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !486
  %9 = load i32, ptr %boottime11, align 4, !dbg !486
  %conv12 = zext i32 %9 to i64, !dbg !486
  %10 = inttoptr i64 %conv12 to ptr, !dbg !486
  br label %cond.end13, !dbg !486

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !486
  %locate_protocol15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 38, !dbg !486
  %11 = load i32, ptr %locate_protocol15, align 4, !dbg !486
  %call16 = call ptr @efi64_zero_upper(ptr noundef %tcg2_protocol) #9, !dbg !486
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !486
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, ptr noundef %tcg2_guid, ptr noundef null, ptr noundef %call16, ptr noundef %arraydecay) #9, !dbg !486
  store i64 %call17, ptr %tmp, align 8, !dbg !486
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #8, !dbg !485
  %12 = load i64, ptr %tmp, align 8, !dbg !486
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #9, !dbg !485
  br label %cond.end19, !dbg !485

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !485
  store i64 %cond20, ptr %status, align 8, !dbg !491
  %13 = load i64, ptr %status, align 8, !dbg !492
  %cmp = icmp ne i64 %13, 0, !dbg !494
  br i1 %cmp, label %if.then, label %if.end, !dbg !495

if.then:                                          ; preds = %cond.end19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !496

if.end:                                           ; preds = %cond.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #8, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !434, metadata !DIExpression()), !dbg !497
  %14 = load ptr, ptr %tcg2_protocol, align 8, !dbg !497
  store ptr %14, ptr %__inst, align 8, !dbg !497
  %call23 = call zeroext i1 @efi_is_native() #9, !dbg !497
  br i1 %call23, label %cond.true25, label %cond.false27, !dbg !497

cond.true25:                                      ; preds = %if.end
  %15 = load ptr, ptr %__inst, align 8, !dbg !497
  %get_event_log = getelementptr inbounds %struct.anon.2, ptr %15, i32 0, i32 1, !dbg !497
  %16 = load ptr, ptr %get_event_log, align 8, !dbg !497
  %17 = load ptr, ptr %__inst, align 8, !dbg !497
  %18 = load i32, ptr %version, align 4, !dbg !497
  %call26 = call win64cc i64 %16(ptr noundef %17, i32 noundef %18, ptr noundef %log_location, ptr noundef %log_last_entry, ptr noundef %truncated) #9, !dbg !497
  br label %cond.end37, !dbg !497

cond.false27:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad28) #8, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %__pad28, metadata !436, metadata !DIExpression()), !dbg !498
  br label %do.body29, !dbg !499

do.body29:                                        ; preds = %cond.false27
  br label %do.cond30, !dbg !501

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !501

do.end31:                                         ; preds = %do.cond30
  %19 = load ptr, ptr %__inst, align 8, !dbg !498
  %get_event_log33 = getelementptr inbounds %struct.anon.3, ptr %19, i32 0, i32 1, !dbg !498
  %20 = load i32, ptr %get_event_log33, align 4, !dbg !498
  %21 = load ptr, ptr %__inst, align 8, !dbg !498
  %22 = load i32, ptr %version, align 4, !dbg !498
  %arraydecay34 = getelementptr inbounds [3 x i64], ptr %__pad28, i64 0, i64 0, !dbg !498
  %call35 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %log_location, ptr noundef %log_last_entry, ptr noundef %truncated, ptr noundef %arraydecay34) #9, !dbg !498
  store i64 %call35, ptr %tmp32, align 8, !dbg !498
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad28) #8, !dbg !497
  %23 = load i64, ptr %tmp32, align 8, !dbg !498
  %call36 = call i64 @__efi64_widen_efi_status(i64 noundef %23) #9, !dbg !497
  br label %cond.end37, !dbg !497

cond.end37:                                       ; preds = %do.end31, %cond.true25
  %cond38 = phi i64 [ %call26, %cond.true25 ], [ %call36, %do.end31 ], !dbg !497
  store i64 %cond38, ptr %tmp22, align 8, !dbg !497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #8, !dbg !503
  %24 = load i64, ptr %tmp22, align 8, !dbg !497
  store i64 %24, ptr %status, align 8, !dbg !504
  %25 = load i64, ptr %status, align 8, !dbg !505
  %cmp39 = icmp ne i64 %25, 0, !dbg !506
  br i1 %cmp39, label %if.then41, label %lor.lhs.false, !dbg !507

lor.lhs.false:                                    ; preds = %cond.end37
  %26 = load i64, ptr %log_location, align 8, !dbg !508
  %tobool = icmp ne i64 %26, 0, !dbg !508
  br i1 %tobool, label %if.end67, label %if.then41, !dbg !509

if.then41:                                        ; preds = %lor.lhs.false, %cond.end37
  store i32 1, ptr %version, align 4, !dbg !510
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst42) #8, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %__inst42, metadata !438, metadata !DIExpression()), !dbg !511
  %27 = load ptr, ptr %tcg2_protocol, align 8, !dbg !511
  store ptr %27, ptr %__inst42, align 8, !dbg !511
  %call44 = call zeroext i1 @efi_is_native() #9, !dbg !511
  br i1 %call44, label %cond.true46, label %cond.false49, !dbg !511

cond.true46:                                      ; preds = %if.then41
  %28 = load ptr, ptr %__inst42, align 8, !dbg !511
  %get_event_log47 = getelementptr inbounds %struct.anon.2, ptr %28, i32 0, i32 1, !dbg !511
  %29 = load ptr, ptr %get_event_log47, align 8, !dbg !511
  %30 = load ptr, ptr %__inst42, align 8, !dbg !511
  %31 = load i32, ptr %version, align 4, !dbg !511
  %call48 = call win64cc i64 %29(ptr noundef %30, i32 noundef %31, ptr noundef %log_location, ptr noundef %log_last_entry, ptr noundef %truncated) #9, !dbg !511
  br label %cond.end59, !dbg !511

cond.false49:                                     ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad50) #8, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %__pad50, metadata !442, metadata !DIExpression()), !dbg !512
  br label %do.body51, !dbg !513

do.body51:                                        ; preds = %cond.false49
  br label %do.cond52, !dbg !515

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !515

do.end53:                                         ; preds = %do.cond52
  %32 = load ptr, ptr %__inst42, align 8, !dbg !512
  %get_event_log55 = getelementptr inbounds %struct.anon.3, ptr %32, i32 0, i32 1, !dbg !512
  %33 = load i32, ptr %get_event_log55, align 4, !dbg !512
  %34 = load ptr, ptr %__inst42, align 8, !dbg !512
  %35 = load i32, ptr %version, align 4, !dbg !512
  %arraydecay56 = getelementptr inbounds [3 x i64], ptr %__pad50, i64 0, i64 0, !dbg !512
  %call57 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %log_location, ptr noundef %log_last_entry, ptr noundef %truncated, ptr noundef %arraydecay56) #9, !dbg !512
  store i64 %call57, ptr %tmp54, align 8, !dbg !512
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad50) #8, !dbg !511
  %36 = load i64, ptr %tmp54, align 8, !dbg !512
  %call58 = call i64 @__efi64_widen_efi_status(i64 noundef %36) #9, !dbg !511
  br label %cond.end59, !dbg !511

cond.end59:                                       ; preds = %do.end53, %cond.true46
  %cond60 = phi i64 [ %call48, %cond.true46 ], [ %call58, %do.end53 ], !dbg !511
  store i64 %cond60, ptr %tmp43, align 8, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst42) #8, !dbg !517
  %37 = load i64, ptr %tmp43, align 8, !dbg !511
  store i64 %37, ptr %status, align 8, !dbg !518
  %38 = load i64, ptr %status, align 8, !dbg !519
  %cmp61 = icmp ne i64 %38, 0, !dbg !521
  br i1 %cmp61, label %if.then65, label %lor.lhs.false63, !dbg !522

lor.lhs.false63:                                  ; preds = %cond.end59
  %39 = load i64, ptr %log_location, align 8, !dbg !523
  %tobool64 = icmp ne i64 %39, 0, !dbg !523
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !524

if.then65:                                        ; preds = %lor.lhs.false63, %cond.end59
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !525

if.end66:                                         ; preds = %lor.lhs.false63
  br label %if.end67, !dbg !526

if.end67:                                         ; preds = %if.end66, %lor.lhs.false
  %40 = load i64, ptr %log_location, align 8, !dbg !527
  store i64 %40, ptr %first_entry_addr, align 8, !dbg !528
  %41 = load i64, ptr %log_last_entry, align 8, !dbg !529
  %tobool68 = icmp ne i64 %41, 0, !dbg !529
  br i1 %tobool68, label %if.else, label %if.then69, !dbg !531

if.then69:                                        ; preds = %if.end67
  store i64 0, ptr %log_size, align 8, !dbg !532
  br label %if.end79, !dbg !534

if.else:                                          ; preds = %if.end67
  %42 = load i64, ptr %log_last_entry, align 8, !dbg !535
  store i64 %42, ptr %last_entry_addr, align 8, !dbg !537
  %43 = load i32, ptr %version, align 4, !dbg !538
  %cmp70 = icmp eq i32 %43, 2, !dbg !540
  br i1 %cmp70, label %if.then72, label %if.else75, !dbg !541

if.then72:                                        ; preds = %if.else
  %44 = load i64, ptr %last_entry_addr, align 8, !dbg !542
  %45 = inttoptr i64 %44 to ptr, !dbg !544
  %46 = load i64, ptr %log_location, align 8, !dbg !545
  %47 = inttoptr i64 %46 to ptr, !dbg !546
  %call73 = call i32 @__calc_tpm2_event_size(ptr noundef %45, ptr noundef %47, i1 noundef zeroext false) #9, !dbg !547
  %conv74 = sext i32 %call73 to i64, !dbg !547
  store i64 %conv74, ptr %last_entry_size, align 8, !dbg !548
  br label %if.end77, !dbg !549

if.else75:                                        ; preds = %if.else
  %48 = load i64, ptr %last_entry_addr, align 8, !dbg !550
  %49 = inttoptr i64 %48 to ptr, !dbg !552
  %event_size = getelementptr inbounds %struct.tcpa_event, ptr %49, i32 0, i32 3, !dbg !553
  %50 = load i32, ptr %event_size, align 4, !dbg !553
  %conv76 = zext i32 %50 to i64, !dbg !554
  %add = add i64 32, %conv76, !dbg !555
  store i64 %add, ptr %last_entry_size, align 8, !dbg !556
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then72
  %51 = load i64, ptr %log_last_entry, align 8, !dbg !557
  %52 = load i64, ptr %log_location, align 8, !dbg !558
  %sub = sub i64 %51, %52, !dbg !559
  %53 = load i64, ptr %last_entry_size, align 8, !dbg !560
  %add78 = add i64 %sub, %53, !dbg !561
  store i64 %add78, ptr %log_size, align 8, !dbg !562
  br label %if.end79

if.end79:                                         ; preds = %if.end77, %if.then69
  %call80 = call zeroext i1 @efi_is_native() #9, !dbg !563
  br i1 %call80, label %cond.true82, label %cond.false94, !dbg !563

cond.true82:                                      ; preds = %if.end79
  %call83 = call zeroext i1 @efi_is_native() #9, !dbg !563
  br i1 %call83, label %cond.true85, label %cond.false87, !dbg !563

cond.true85:                                      ; preds = %cond.true82
  %54 = load ptr, ptr @efi_system_table, align 8, !dbg !563
  %boottime86 = getelementptr inbounds %struct.anon.1, ptr %54, i32 0, i32 10, !dbg !563
  %55 = load ptr, ptr %boottime86, align 8, !dbg !563
  br label %cond.end90, !dbg !563

cond.false87:                                     ; preds = %cond.true82
  %56 = load ptr, ptr @efi_system_table, align 8, !dbg !563
  %boottime88 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %56, i32 0, i32 10, !dbg !563
  %57 = load i32, ptr %boottime88, align 4, !dbg !563
  %conv89 = zext i32 %57 to i64, !dbg !563
  %58 = inttoptr i64 %conv89 to ptr, !dbg !563
  br label %cond.end90, !dbg !563

cond.end90:                                       ; preds = %cond.false87, %cond.true85
  %cond91 = phi ptr [ %55, %cond.true85 ], [ %58, %cond.false87 ], !dbg !563
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond91, i32 0, i32 6, !dbg !563
  %59 = load ptr, ptr %allocate_pool, align 8, !dbg !563
  %60 = load i64, ptr %log_size, align 8, !dbg !563
  %add92 = add i64 12, %60, !dbg !563
  %call93 = call win64cc i64 %59(i32 noundef 9, i64 noundef %add92, ptr noundef %log_tbl) #9, !dbg !563
  br label %cond.end115, !dbg !563

cond.false94:                                     ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad95) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %__pad95, metadata !444, metadata !DIExpression()), !dbg !564
  br label %do.body96, !dbg !565

do.body96:                                        ; preds = %cond.false94
  br label %do.cond97, !dbg !567

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !567

do.end98:                                         ; preds = %do.cond97
  %call100 = call zeroext i1 @efi_is_native() #9, !dbg !564
  br i1 %call100, label %cond.true102, label %cond.false104, !dbg !564

cond.true102:                                     ; preds = %do.end98
  %61 = load ptr, ptr @efi_system_table, align 8, !dbg !564
  %boottime103 = getelementptr inbounds %struct.anon.1, ptr %61, i32 0, i32 10, !dbg !564
  %62 = load ptr, ptr %boottime103, align 8, !dbg !564
  br label %cond.end107, !dbg !564

cond.false104:                                    ; preds = %do.end98
  %63 = load ptr, ptr @efi_system_table, align 8, !dbg !564
  %boottime105 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %63, i32 0, i32 10, !dbg !564
  %64 = load i32, ptr %boottime105, align 4, !dbg !564
  %conv106 = zext i32 %64 to i64, !dbg !564
  %65 = inttoptr i64 %conv106 to ptr, !dbg !564
  br label %cond.end107, !dbg !564

cond.end107:                                      ; preds = %cond.false104, %cond.true102
  %cond108 = phi ptr [ %62, %cond.true102 ], [ %65, %cond.false104 ], !dbg !564
  %allocate_pool109 = getelementptr inbounds %struct.anon.0, ptr %cond108, i32 0, i32 6, !dbg !564
  %66 = load i32, ptr %allocate_pool109, align 4, !dbg !564
  %67 = load i64, ptr %log_size, align 8, !dbg !564
  %add110 = add i64 12, %67, !dbg !564
  %call111 = call ptr @efi64_zero_upper(ptr noundef %log_tbl) #9, !dbg !564
  %arraydecay112 = getelementptr inbounds [3 x i64], ptr %__pad95, i64 0, i64 0, !dbg !564
  %call113 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %66, i32 noundef 9, i64 noundef %add110, ptr noundef %call111, ptr noundef %arraydecay112) #9, !dbg !564
  store i64 %call113, ptr %tmp99, align 8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad95) #8, !dbg !563
  %68 = load i64, ptr %tmp99, align 8, !dbg !564
  %call114 = call i64 @__efi64_widen_efi_status(i64 noundef %68) #9, !dbg !563
  br label %cond.end115, !dbg !563

cond.end115:                                      ; preds = %cond.end107, %cond.end90
  %cond116 = phi i64 [ %call93, %cond.end90 ], [ %call114, %cond.end107 ], !dbg !563
  store i64 %cond116, ptr %status, align 8, !dbg !569
  %69 = load i64, ptr %status, align 8, !dbg !570
  %cmp117 = icmp ne i64 %69, 0, !dbg !572
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !573

if.then119:                                       ; preds = %cond.end115
  %call120 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #9, !dbg !574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !576

if.end121:                                        ; preds = %cond.end115
  %70 = load i32, ptr %version, align 4, !dbg !577
  %cmp122 = icmp eq i32 %70, 2, !dbg !579
  br i1 %cmp122, label %if.then124, label %if.end140, !dbg !580

if.then124:                                       ; preds = %if.end121
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !581
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !581
  store i8 -106, ptr %arrayinit.begin, align 1, !dbg !581
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !581
  store i8 -48, ptr %arrayinit.element, align 1, !dbg !581
  %arrayinit.element125 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !581
  store i8 46, ptr %arrayinit.element125, align 1, !dbg !581
  %arrayinit.element126 = getelementptr inbounds i8, ptr %arrayinit.element125, i64 1, !dbg !581
  store i8 30, ptr %arrayinit.element126, align 1, !dbg !581
  %arrayinit.element127 = getelementptr inbounds i8, ptr %arrayinit.element126, i64 1, !dbg !581
  store i8 -30, ptr %arrayinit.element127, align 1, !dbg !581
  %arrayinit.element128 = getelementptr inbounds i8, ptr %arrayinit.element127, i64 1, !dbg !581
  store i8 48, ptr %arrayinit.element128, align 1, !dbg !581
  %arrayinit.element129 = getelementptr inbounds i8, ptr %arrayinit.element128, i64 1, !dbg !581
  store i8 84, ptr %arrayinit.element129, align 1, !dbg !581
  %arrayinit.element130 = getelementptr inbounds i8, ptr %arrayinit.element129, i64 1, !dbg !581
  store i8 66, ptr %arrayinit.element130, align 1, !dbg !581
  %arrayinit.element131 = getelementptr inbounds i8, ptr %arrayinit.element130, i64 1, !dbg !581
  store i8 -67, ptr %arrayinit.element131, align 1, !dbg !581
  %arrayinit.element132 = getelementptr inbounds i8, ptr %arrayinit.element131, i64 1, !dbg !581
  store i8 -119, ptr %arrayinit.element132, align 1, !dbg !581
  %arrayinit.element133 = getelementptr inbounds i8, ptr %arrayinit.element132, i64 1, !dbg !581
  store i8 -122, ptr %arrayinit.element133, align 1, !dbg !581
  %arrayinit.element134 = getelementptr inbounds i8, ptr %arrayinit.element133, i64 1, !dbg !581
  store i8 59, ptr %arrayinit.element134, align 1, !dbg !581
  %arrayinit.element135 = getelementptr inbounds i8, ptr %arrayinit.element134, i64 1, !dbg !581
  store i8 -66, ptr %arrayinit.element135, align 1, !dbg !581
  %arrayinit.element136 = getelementptr inbounds i8, ptr %arrayinit.element135, i64 1, !dbg !581
  store i8 -8, ptr %arrayinit.element136, align 1, !dbg !581
  %arrayinit.element137 = getelementptr inbounds i8, ptr %arrayinit.element136, i64 1, !dbg !581
  store i8 35, ptr %arrayinit.element137, align 1, !dbg !581
  %arrayinit.element138 = getelementptr inbounds i8, ptr %arrayinit.element137, i64 1, !dbg !581
  store i8 37, ptr %arrayinit.element138, align 1, !dbg !581
  %71 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !582
  %72 = load i64, ptr %71, align 4, !dbg !582
  %73 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !582
  %74 = load i64, ptr %73, align 4, !dbg !582
  %call139 = call ptr @get_efi_config_table(i64 %72, i64 %74) #9, !dbg !582
  store ptr %call139, ptr %final_events_table, align 8, !dbg !583
  br label %if.end140, !dbg !584

if.end140:                                        ; preds = %if.then124, %if.end121
  %75 = load ptr, ptr %final_events_table, align 8, !dbg !585
  %tobool141 = icmp ne ptr %75, null, !dbg !585
  br i1 %tobool141, label %land.lhs.true, label %if.end153, !dbg !586

land.lhs.true:                                    ; preds = %if.end140
  %76 = load ptr, ptr %final_events_table, align 8, !dbg !587
  %nr_events = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %76, i32 0, i32 1, !dbg !588
  %77 = load i64, ptr %nr_events, align 8, !dbg !588
  %tobool142 = icmp ne i64 %77, 0, !dbg !587
  br i1 %tobool142, label %if.then143, label %if.end153, !dbg !589

if.then143:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #8, !dbg !590
  call void @llvm.dbg.declare(metadata ptr %header, metadata !446, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #8, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !449, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %data, metadata !450, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_size144) #8, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %event_size144, metadata !451, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %i, metadata !452, metadata !DIExpression()), !dbg !599
  %78 = load ptr, ptr %final_events_table, align 8, !dbg !600
  %nr_events145 = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %78, i32 0, i32 1, !dbg !601
  %79 = load i64, ptr %nr_events145, align 8, !dbg !601
  %conv146 = trunc i64 %79 to i32, !dbg !600
  store i32 %conv146, ptr %i, align 4, !dbg !599
  %80 = load ptr, ptr %final_events_table, align 8, !dbg !602
  store ptr %80, ptr %data, align 8, !dbg !603
  store i32 16, ptr %offset, align 4, !dbg !604
  br label %while.cond, !dbg !605

while.cond:                                       ; preds = %while.body, %if.then143
  %81 = load i32, ptr %i, align 4, !dbg !606
  %cmp147 = icmp sgt i32 %81, 0, !dbg !607
  br i1 %cmp147, label %while.body, label %while.end, !dbg !605

while.body:                                       ; preds = %while.cond
  %82 = load ptr, ptr %data, align 8, !dbg !608
  %83 = load i32, ptr %offset, align 4, !dbg !610
  %idx.ext = sext i32 %83 to i64, !dbg !611
  %add.ptr = getelementptr inbounds i8, ptr %82, i64 %idx.ext, !dbg !611
  %84 = load i32, ptr %final_events_size, align 4, !dbg !612
  %idx.ext149 = sext i32 %84 to i64, !dbg !613
  %add.ptr150 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext149, !dbg !613
  store ptr %add.ptr150, ptr %header, align 8, !dbg !614
  %85 = load ptr, ptr %header, align 8, !dbg !615
  %86 = load i64, ptr %log_location, align 8, !dbg !616
  %87 = inttoptr i64 %86 to ptr, !dbg !617
  %call151 = call i32 @__calc_tpm2_event_size(ptr noundef %85, ptr noundef %87, i1 noundef zeroext false) #9, !dbg !618
  store i32 %call151, ptr %event_size144, align 4, !dbg !619
  %88 = load i32, ptr %event_size144, align 4, !dbg !620
  %89 = load i32, ptr %final_events_size, align 4, !dbg !621
  %add152 = add nsw i32 %89, %88, !dbg !621
  store i32 %add152, ptr %final_events_size, align 4, !dbg !621
  %90 = load i32, ptr %i, align 4, !dbg !622
  %dec = add nsw i32 %90, -1, !dbg !622
  store i32 %dec, ptr %i, align 4, !dbg !622
  br label %while.cond, !dbg !605, !llvm.loop !623

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !627
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_size144) #8, !dbg !627
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8, !dbg !627
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #8, !dbg !627
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #8, !dbg !627
  br label %if.end153, !dbg !628

if.end153:                                        ; preds = %while.end, %land.lhs.true, %if.end140
  %91 = load ptr, ptr %log_tbl, align 8, !dbg !629
  %92 = load i64, ptr %log_size, align 8, !dbg !630
  %add154 = add i64 12, %92, !dbg !631
  %call155 = call ptr @memset(ptr noundef %91, i32 noundef 0, i64 noundef %add154) #9, !dbg !632
  %93 = load i64, ptr %log_size, align 8, !dbg !633
  %conv156 = trunc i64 %93 to i32, !dbg !633
  %94 = load ptr, ptr %log_tbl, align 8, !dbg !634
  %size = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %94, i32 0, i32 0, !dbg !635
  store i32 %conv156, ptr %size, align 4, !dbg !636
  %95 = load i32, ptr %final_events_size, align 4, !dbg !637
  %96 = load ptr, ptr %log_tbl, align 8, !dbg !638
  %final_events_preboot_size = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %96, i32 0, i32 1, !dbg !639
  store i32 %95, ptr %final_events_preboot_size, align 4, !dbg !640
  %97 = load i32, ptr %version, align 4, !dbg !641
  %conv157 = trunc i32 %97 to i8, !dbg !641
  %98 = load ptr, ptr %log_tbl, align 8, !dbg !642
  %version158 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %98, i32 0, i32 2, !dbg !643
  store i8 %conv157, ptr %version158, align 4, !dbg !644
  %99 = load ptr, ptr %log_tbl, align 8, !dbg !645
  %log = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %99, i32 0, i32 3, !dbg !646
  %arraydecay159 = getelementptr inbounds [0 x i8], ptr %log, i64 0, i64 0, !dbg !645
  %100 = load i64, ptr %first_entry_addr, align 8, !dbg !647
  %101 = inttoptr i64 %100 to ptr, !dbg !648
  %102 = load i64, ptr %log_size, align 8, !dbg !649
  %call160 = call ptr @memcpy(ptr noundef %arraydecay159, ptr noundef %101, i64 noundef %102) #9, !dbg !650
  %call161 = call zeroext i1 @efi_is_native() #9, !dbg !651
  br i1 %call161, label %cond.true163, label %cond.false174, !dbg !651

cond.true163:                                     ; preds = %if.end153
  %call164 = call zeroext i1 @efi_is_native() #9, !dbg !651
  br i1 %call164, label %cond.true166, label %cond.false168, !dbg !651

cond.true166:                                     ; preds = %cond.true163
  %103 = load ptr, ptr @efi_system_table, align 8, !dbg !651
  %boottime167 = getelementptr inbounds %struct.anon.1, ptr %103, i32 0, i32 10, !dbg !651
  %104 = load ptr, ptr %boottime167, align 8, !dbg !651
  br label %cond.end171, !dbg !651

cond.false168:                                    ; preds = %cond.true163
  %105 = load ptr, ptr @efi_system_table, align 8, !dbg !651
  %boottime169 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %105, i32 0, i32 10, !dbg !651
  %106 = load i32, ptr %boottime169, align 4, !dbg !651
  %conv170 = zext i32 %106 to i64, !dbg !651
  %107 = inttoptr i64 %conv170 to ptr, !dbg !651
  br label %cond.end171, !dbg !651

cond.end171:                                      ; preds = %cond.false168, %cond.true166
  %cond172 = phi ptr [ %104, %cond.true166 ], [ %107, %cond.false168 ], !dbg !651
  %install_configuration_table = getelementptr inbounds %struct.anon, ptr %cond172, i32 0, i32 22, !dbg !651
  %108 = load ptr, ptr %install_configuration_table, align 8, !dbg !651
  %109 = load ptr, ptr %log_tbl, align 8, !dbg !651
  %call173 = call win64cc i64 %108(ptr noundef %linux_eventlog_guid, ptr noundef %109) #9, !dbg !651
  br label %cond.end193, !dbg !651

cond.false174:                                    ; preds = %if.end153
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad175) #8, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %__pad175, metadata !453, metadata !DIExpression()), !dbg !652
  br label %do.body176, !dbg !653

do.body176:                                       ; preds = %cond.false174
  br label %do.cond177, !dbg !655

do.cond177:                                       ; preds = %do.body176
  br label %do.end178, !dbg !655

do.end178:                                        ; preds = %do.cond177
  %call180 = call zeroext i1 @efi_is_native() #9, !dbg !652
  br i1 %call180, label %cond.true182, label %cond.false184, !dbg !652

cond.true182:                                     ; preds = %do.end178
  %110 = load ptr, ptr @efi_system_table, align 8, !dbg !652
  %boottime183 = getelementptr inbounds %struct.anon.1, ptr %110, i32 0, i32 10, !dbg !652
  %111 = load ptr, ptr %boottime183, align 8, !dbg !652
  br label %cond.end187, !dbg !652

cond.false184:                                    ; preds = %do.end178
  %112 = load ptr, ptr @efi_system_table, align 8, !dbg !652
  %boottime185 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %112, i32 0, i32 10, !dbg !652
  %113 = load i32, ptr %boottime185, align 4, !dbg !652
  %conv186 = zext i32 %113 to i64, !dbg !652
  %114 = inttoptr i64 %conv186 to ptr, !dbg !652
  br label %cond.end187, !dbg !652

cond.end187:                                      ; preds = %cond.false184, %cond.true182
  %cond188 = phi ptr [ %111, %cond.true182 ], [ %114, %cond.false184 ], !dbg !652
  %install_configuration_table189 = getelementptr inbounds %struct.anon.0, ptr %cond188, i32 0, i32 22, !dbg !652
  %115 = load i32, ptr %install_configuration_table189, align 4, !dbg !652
  %116 = load ptr, ptr %log_tbl, align 8, !dbg !652
  %arraydecay190 = getelementptr inbounds [3 x i64], ptr %__pad175, i64 0, i64 0, !dbg !652
  %call191 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %115, ptr noundef %linux_eventlog_guid, ptr noundef %116, ptr noundef %arraydecay190) #9, !dbg !652
  store i64 %call191, ptr %tmp179, align 8, !dbg !652
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad175) #8, !dbg !651
  %117 = load i64, ptr %tmp179, align 8, !dbg !652
  %call192 = call i64 @__efi64_widen_efi_status(i64 noundef %117) #9, !dbg !651
  br label %cond.end193, !dbg !651

cond.end193:                                      ; preds = %cond.end187, %cond.end171
  %cond194 = phi i64 [ %call173, %cond.end171 ], [ %call192, %cond.end187 ], !dbg !651
  store i64 %cond194, ptr %status, align 8, !dbg !657
  %118 = load i64, ptr %status, align 8, !dbg !658
  %cmp195 = icmp ne i64 %118, 0, !dbg !660
  br i1 %cmp195, label %if.then197, label %if.end198, !dbg !661

if.then197:                                       ; preds = %cond.end193
  br label %err_free, !dbg !662

if.end198:                                        ; preds = %cond.end193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !663

err_free:                                         ; preds = %if.then197
  call void @llvm.dbg.label(metadata !455), !dbg !664
  %call199 = call zeroext i1 @efi_is_native() #9, !dbg !665
  br i1 %call199, label %cond.true201, label %cond.false212, !dbg !665

cond.true201:                                     ; preds = %err_free
  %call202 = call zeroext i1 @efi_is_native() #9, !dbg !665
  br i1 %call202, label %cond.true204, label %cond.false206, !dbg !665

cond.true204:                                     ; preds = %cond.true201
  %119 = load ptr, ptr @efi_system_table, align 8, !dbg !665
  %boottime205 = getelementptr inbounds %struct.anon.1, ptr %119, i32 0, i32 10, !dbg !665
  %120 = load ptr, ptr %boottime205, align 8, !dbg !665
  br label %cond.end209, !dbg !665

cond.false206:                                    ; preds = %cond.true201
  %121 = load ptr, ptr @efi_system_table, align 8, !dbg !665
  %boottime207 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %121, i32 0, i32 10, !dbg !665
  %122 = load i32, ptr %boottime207, align 4, !dbg !665
  %conv208 = zext i32 %122 to i64, !dbg !665
  %123 = inttoptr i64 %conv208 to ptr, !dbg !665
  br label %cond.end209, !dbg !665

cond.end209:                                      ; preds = %cond.false206, %cond.true204
  %cond210 = phi ptr [ %120, %cond.true204 ], [ %123, %cond.false206 ], !dbg !665
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond210, i32 0, i32 7, !dbg !665
  %124 = load ptr, ptr %free_pool, align 8, !dbg !665
  %125 = load ptr, ptr %log_tbl, align 8, !dbg !665
  %call211 = call win64cc i64 %124(ptr noundef %125) #9, !dbg !665
  br label %cond.end231, !dbg !665

cond.false212:                                    ; preds = %err_free
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad213) #8, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %__pad213, metadata !456, metadata !DIExpression()), !dbg !666
  br label %do.body214, !dbg !667

do.body214:                                       ; preds = %cond.false212
  br label %do.cond215, !dbg !669

do.cond215:                                       ; preds = %do.body214
  br label %do.end216, !dbg !669

do.end216:                                        ; preds = %do.cond215
  %call218 = call zeroext i1 @efi_is_native() #9, !dbg !666
  br i1 %call218, label %cond.true220, label %cond.false222, !dbg !666

cond.true220:                                     ; preds = %do.end216
  %126 = load ptr, ptr @efi_system_table, align 8, !dbg !666
  %boottime221 = getelementptr inbounds %struct.anon.1, ptr %126, i32 0, i32 10, !dbg !666
  %127 = load ptr, ptr %boottime221, align 8, !dbg !666
  br label %cond.end225, !dbg !666

cond.false222:                                    ; preds = %do.end216
  %128 = load ptr, ptr @efi_system_table, align 8, !dbg !666
  %boottime223 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %128, i32 0, i32 10, !dbg !666
  %129 = load i32, ptr %boottime223, align 4, !dbg !666
  %conv224 = zext i32 %129 to i64, !dbg !666
  %130 = inttoptr i64 %conv224 to ptr, !dbg !666
  br label %cond.end225, !dbg !666

cond.end225:                                      ; preds = %cond.false222, %cond.true220
  %cond226 = phi ptr [ %127, %cond.true220 ], [ %130, %cond.false222 ], !dbg !666
  %free_pool227 = getelementptr inbounds %struct.anon.0, ptr %cond226, i32 0, i32 7, !dbg !666
  %131 = load i32, ptr %free_pool227, align 8, !dbg !666
  %132 = load ptr, ptr %log_tbl, align 8, !dbg !666
  %arraydecay228 = getelementptr inbounds [3 x i64], ptr %__pad213, i64 0, i64 0, !dbg !666
  %call229 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %131, ptr noundef %132, ptr noundef %arraydecay228) #9, !dbg !666
  store i64 %call229, ptr %tmp217, align 8, !dbg !666
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad213) #8, !dbg !665
  %133 = load i64, ptr %tmp217, align 8, !dbg !666
  %call230 = call i64 @__efi64_widen_efi_status(i64 noundef %133) #9, !dbg !665
  br label %cond.end231, !dbg !665

cond.end231:                                      ; preds = %cond.end225, %cond.end209
  %cond232 = phi i64 [ %call211, %cond.end209 ], [ %call230, %cond.end225 ], !dbg !665
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !671
  br label %cleanup, !dbg !671

cleanup:                                          ; preds = %cond.end231, %if.end198, %if.then119, %if.then65, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %final_events_size) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcg2_protocol) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 1, ptr %truncated) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_entry_size) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_size) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_entry_addr) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_entry_addr) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_events_table) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_tbl) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_last_entry) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_location) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 16, ptr %linux_eventlog_guid) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 16, ptr %tcg2_guid) #8, !dbg !671
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !671

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #4 !dbg !672 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #9, !dbg !676
  ret i1 %call, !dbg !677
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #4 !dbg !678 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !682, metadata !DIExpression()), !dbg !683
  %0 = load i64, ptr %status.addr, align 8, !dbg !684
  %conv = trunc i64 %0 to i32, !dbg !684
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #9, !dbg !685
  %conv1 = zext i32 %call to i64, !dbg !685
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #9, !dbg !686
  ret i64 %call2, !dbg !687
}

; Function Attrs: noredzone
declare !dbg !688 hidden i64 @__efi64_thunk(i32 noundef, ...) #5

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #4 !dbg !691 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !695, metadata !DIExpression()), !dbg !696
  %0 = load ptr, ptr %p.addr, align 8, !dbg !697
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !698
  store i32 0, ptr %arrayidx, align 4, !dbg !699
  %1 = load ptr, ptr %p.addr, align 8, !dbg !700
  ret ptr %1, !dbg !701
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline noredzone nounwind
define internal i32 @__calc_tpm2_event_size(ptr noundef %event, ptr noundef %event_header, i1 noundef zeroext %do_mapping) #6 !dbg !702 {
entry:
  %event.addr = alloca ptr, align 8
  %event_header.addr = alloca ptr, align 8
  %do_mapping.addr = alloca i8, align 1
  %efispecid = alloca ptr, align 8
  %event_field = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %mapping_size = alloca i32, align 4
  %marker = alloca ptr, align 8
  %marker_start = alloca ptr, align 8
  %halg_size = alloca i32, align 4
  %size = alloca i64, align 8
  %halg = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %event_type = alloca i32, align 4
  %zero_digest = alloca [20 x i8], align 16
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !714, metadata !DIExpression()), !dbg !734
  store ptr %event_header, ptr %event_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event_header.addr, metadata !715, metadata !DIExpression()), !dbg !735
  %frombool = zext i1 %do_mapping to i8
  store i8 %frombool, ptr %do_mapping.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %do_mapping.addr, metadata !716, metadata !DIExpression()), !dbg !736
  call void @llvm.lifetime.start.p0(i64 8, ptr %efispecid) #8, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %efispecid, metadata !717, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_field) #8, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %event_field, metadata !718, metadata !DIExpression()), !dbg !740
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #8, !dbg !741
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !719, metadata !DIExpression()), !dbg !742
  store ptr null, ptr %mapping, align 8, !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %mapping_size) #8, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %mapping_size, metadata !720, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #8, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %marker, metadata !721, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker_start) #8, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %marker_start, metadata !722, metadata !DIExpression()), !dbg !748
  call void @llvm.lifetime.start.p0(i64 4, ptr %halg_size) #8, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %halg_size, metadata !723, metadata !DIExpression()), !dbg !750
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !751
  call void @llvm.dbg.declare(metadata ptr %size, metadata !724, metadata !DIExpression()), !dbg !752
  call void @llvm.lifetime.start.p0(i64 2, ptr %halg) #8, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %halg, metadata !725, metadata !DIExpression()), !dbg !754
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %i, metadata !726, metadata !DIExpression()), !dbg !756
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %j, metadata !727, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #8, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %count, metadata !728, metadata !DIExpression()), !dbg !760
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_type) #8, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %event_type, metadata !729, metadata !DIExpression()), !dbg !761
  call void @llvm.lifetime.start.p0(i64 20, ptr %zero_digest) #8, !dbg !762
  call void @llvm.dbg.declare(metadata ptr %zero_digest, metadata !730, metadata !DIExpression()), !dbg !763
  call void @llvm.memset.p0.i64(ptr align 16 %zero_digest, i8 0, i64 20, i1 false), !dbg !763
  %0 = load ptr, ptr %event.addr, align 8, !dbg !764
  store ptr %0, ptr %marker, align 8, !dbg !765
  %1 = load ptr, ptr %marker, align 8, !dbg !766
  store ptr %1, ptr %marker_start, align 8, !dbg !767
  %2 = load ptr, ptr %marker, align 8, !dbg !768
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 4, !dbg !769
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !770
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr1, i64 4, !dbg !771
  store ptr %add.ptr2, ptr %marker, align 8, !dbg !772
  %3 = load i8, ptr %do_mapping.addr, align 1, !dbg !773, !range !775, !noundef !776
  %tobool = trunc i8 %3 to i1, !dbg !773
  br i1 %tobool, label %if.then, label %if.else, !dbg !777

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %marker, align 8, !dbg !778
  %5 = load ptr, ptr %marker_start, align 8, !dbg !780
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !781
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !781
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !781
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !778
  store i32 %conv, ptr %mapping_size, align 4, !dbg !782
  store ptr null, ptr %mapping, align 8, !dbg !783
  %6 = load ptr, ptr %mapping, align 8, !dbg !784
  %tobool3 = icmp ne ptr %6, null, !dbg !784
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !786

if.then4:                                         ; preds = %if.then
  store i64 0, ptr %size, align 8, !dbg !787
  br label %out, !dbg !789

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !790

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %marker_start, align 8, !dbg !791
  store ptr %7, ptr %mapping, align 8, !dbg !793
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %8 = load ptr, ptr %mapping, align 8, !dbg !794
  store ptr %8, ptr %event.addr, align 8, !dbg !795
  %9 = load ptr, ptr %event.addr, align 8, !dbg !796
  %count6 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %9, i32 0, i32 2, !dbg !797
  %10 = load i32, ptr %count6, align 1, !dbg !797
  store i32 %10, ptr %count, align 4, !dbg !798
  %11 = load ptr, ptr %event.addr, align 8, !dbg !799
  %event_type7 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %11, i32 0, i32 1, !dbg !800
  %12 = load i32, ptr %event_type7, align 1, !dbg !800
  store i32 %12, ptr %event_type, align 4, !dbg !801
  %13 = load ptr, ptr %event_header.addr, align 8, !dbg !802
  %pcr_idx = getelementptr inbounds %struct.tcg_pcr_event, ptr %13, i32 0, i32 0, !dbg !804
  %14 = load i32, ptr %pcr_idx, align 1, !dbg !804
  %cmp = icmp ne i32 %14, 0, !dbg !805
  br i1 %cmp, label %if.then15, label %lor.lhs.false, !dbg !806

lor.lhs.false:                                    ; preds = %if.end5
  %15 = load ptr, ptr %event_header.addr, align 8, !dbg !807
  %event_type9 = getelementptr inbounds %struct.tcg_pcr_event, ptr %15, i32 0, i32 1, !dbg !808
  %16 = load i32, ptr %event_type9, align 1, !dbg !808
  %cmp10 = icmp ne i32 %16, 3, !dbg !809
  br i1 %cmp10, label %if.then15, label %lor.lhs.false12, !dbg !810

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %17 = load ptr, ptr %event_header.addr, align 8, !dbg !811
  %digest = getelementptr inbounds %struct.tcg_pcr_event, ptr %17, i32 0, i32 2, !dbg !812
  %arraydecay = getelementptr inbounds [20 x i8], ptr %digest, i64 0, i64 0, !dbg !811
  %arraydecay13 = getelementptr inbounds [20 x i8], ptr %zero_digest, i64 0, i64 0, !dbg !813
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %arraydecay13, i64 noundef 20) #9, !dbg !814
  %tobool14 = icmp ne i32 %call, 0, !dbg !814
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !815

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %if.end5
  store i64 0, ptr %size, align 8, !dbg !816
  br label %out, !dbg !818

if.end16:                                         ; preds = %lor.lhs.false12
  %18 = load ptr, ptr %event_header.addr, align 8, !dbg !819
  %event17 = getelementptr inbounds %struct.tcg_pcr_event, ptr %18, i32 0, i32 4, !dbg !820
  %arraydecay18 = getelementptr inbounds [0 x i8], ptr %event17, i64 0, i64 0, !dbg !819
  store ptr %arraydecay18, ptr %efispecid, align 8, !dbg !821
  %19 = load ptr, ptr %efispecid, align 8, !dbg !822
  %signature = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %19, i32 0, i32 0, !dbg !824
  %arraydecay19 = getelementptr inbounds [16 x i8], ptr %signature, i64 0, i64 0, !dbg !822
  %call20 = call i32 @memcmp(ptr noundef %arraydecay19, ptr noundef @.str.1, i64 noundef 16) #9, !dbg !825
  %tobool21 = icmp ne i32 %call20, 0, !dbg !825
  br i1 %tobool21, label %if.then28, label %lor.lhs.false22, !dbg !826

lor.lhs.false22:                                  ; preds = %if.end16
  %20 = load ptr, ptr %efispecid, align 8, !dbg !827
  %num_algs = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %20, i32 0, i32 6, !dbg !828
  %21 = load i32, ptr %num_algs, align 1, !dbg !828
  %tobool23 = icmp ne i32 %21, 0, !dbg !827
  br i1 %tobool23, label %lor.lhs.false24, label %if.then28, !dbg !829

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %22 = load i32, ptr %count, align 4, !dbg !830
  %23 = load ptr, ptr %efispecid, align 8, !dbg !831
  %num_algs25 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %23, i32 0, i32 6, !dbg !832
  %24 = load i32, ptr %num_algs25, align 1, !dbg !832
  %cmp26 = icmp ne i32 %22, %24, !dbg !833
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !834

if.then28:                                        ; preds = %lor.lhs.false24, %lor.lhs.false22, %if.end16
  store i64 0, ptr %size, align 8, !dbg !835
  br label %out, !dbg !837

if.end29:                                         ; preds = %lor.lhs.false24
  store i32 0, ptr %i, align 4, !dbg !838
  br label %for.cond, !dbg !840

for.cond:                                         ; preds = %for.inc64, %if.end29
  %25 = load i32, ptr %i, align 4, !dbg !841
  %26 = load i32, ptr %count, align 4, !dbg !843
  %cmp30 = icmp ult i32 %25, %26, !dbg !844
  br i1 %cmp30, label %for.body, label %for.end66, !dbg !845

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %halg_size, align 4, !dbg !846
  %27 = load i8, ptr %do_mapping.addr, align 1, !dbg !848, !range !775, !noundef !776
  %tobool32 = trunc i8 %27 to i1, !dbg !848
  br i1 %tobool32, label %if.then33, label %if.else37, !dbg !850

if.then33:                                        ; preds = %for.body
  br label %do.body, !dbg !851

do.body:                                          ; preds = %if.then33
  br label %do.cond, !dbg !853

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !853

do.end:                                           ; preds = %do.cond
  %28 = load i32, ptr %halg_size, align 4, !dbg !855
  store i32 %28, ptr %mapping_size, align 4, !dbg !856
  store ptr null, ptr %mapping, align 8, !dbg !857
  %29 = load ptr, ptr %mapping, align 8, !dbg !858
  %tobool34 = icmp ne ptr %29, null, !dbg !858
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !860

if.then35:                                        ; preds = %do.end
  store i64 0, ptr %size, align 8, !dbg !861
  br label %out, !dbg !863

if.end36:                                         ; preds = %do.end
  br label %if.end38, !dbg !864

if.else37:                                        ; preds = %for.body
  %30 = load ptr, ptr %marker, align 8, !dbg !865
  store ptr %30, ptr %mapping, align 8, !dbg !867
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.end36
  %31 = load ptr, ptr %mapping, align 8, !dbg !868
  %32 = load i32, ptr %halg_size, align 4, !dbg !869
  %conv39 = zext i32 %32 to i64, !dbg !869
  %call40 = call ptr @memcpy(ptr noundef %halg, ptr noundef %31, i64 noundef %conv39) #9, !dbg !870
  %33 = load ptr, ptr %marker, align 8, !dbg !871
  %34 = load i32, ptr %halg_size, align 4, !dbg !872
  %idx.ext = zext i32 %34 to i64, !dbg !873
  %add.ptr41 = getelementptr inbounds i8, ptr %33, i64 %idx.ext, !dbg !873
  store ptr %add.ptr41, ptr %marker, align 8, !dbg !874
  store i32 0, ptr %j, align 4, !dbg !875
  br label %for.cond42, !dbg !877

for.cond42:                                       ; preds = %for.inc, %if.end38
  %35 = load i32, ptr %j, align 4, !dbg !878
  %36 = load ptr, ptr %efispecid, align 8, !dbg !880
  %num_algs43 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %36, i32 0, i32 6, !dbg !881
  %37 = load i32, ptr %num_algs43, align 1, !dbg !881
  %cmp44 = icmp ult i32 %35, %37, !dbg !882
  br i1 %cmp44, label %for.body46, label %for.end, !dbg !883

for.body46:                                       ; preds = %for.cond42
  %38 = load i16, ptr %halg, align 2, !dbg !884
  %conv47 = zext i16 %38 to i32, !dbg !884
  %39 = load ptr, ptr %efispecid, align 8, !dbg !887
  %digest_sizes = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %39, i32 0, i32 7, !dbg !888
  %40 = load i32, ptr %j, align 4, !dbg !889
  %idxprom = sext i32 %40 to i64, !dbg !887
  %arrayidx = getelementptr inbounds [0 x %struct.tcg_efi_specid_event_algs], ptr %digest_sizes, i64 0, i64 %idxprom, !dbg !887
  %alg_id = getelementptr inbounds %struct.tcg_efi_specid_event_algs, ptr %arrayidx, i32 0, i32 0, !dbg !890
  %41 = load i16, ptr %alg_id, align 1, !dbg !890
  %conv48 = zext i16 %41 to i32, !dbg !887
  %cmp49 = icmp eq i32 %conv47, %conv48, !dbg !891
  br i1 %cmp49, label %if.then51, label %if.end58, !dbg !892

if.then51:                                        ; preds = %for.body46
  %42 = load ptr, ptr %efispecid, align 8, !dbg !893
  %digest_sizes52 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %42, i32 0, i32 7, !dbg !895
  %43 = load i32, ptr %j, align 4, !dbg !896
  %idxprom53 = sext i32 %43 to i64, !dbg !893
  %arrayidx54 = getelementptr inbounds [0 x %struct.tcg_efi_specid_event_algs], ptr %digest_sizes52, i64 0, i64 %idxprom53, !dbg !893
  %digest_size = getelementptr inbounds %struct.tcg_efi_specid_event_algs, ptr %arrayidx54, i32 0, i32 1, !dbg !897
  %44 = load i16, ptr %digest_size, align 1, !dbg !897
  %conv55 = zext i16 %44 to i32, !dbg !893
  %45 = load ptr, ptr %marker, align 8, !dbg !898
  %idx.ext56 = sext i32 %conv55 to i64, !dbg !898
  %add.ptr57 = getelementptr inbounds i8, ptr %45, i64 %idx.ext56, !dbg !898
  store ptr %add.ptr57, ptr %marker, align 8, !dbg !898
  br label %for.end, !dbg !899

if.end58:                                         ; preds = %for.body46
  br label %for.inc, !dbg !900

for.inc:                                          ; preds = %if.end58
  %46 = load i32, ptr %j, align 4, !dbg !901
  %inc = add nsw i32 %46, 1, !dbg !901
  store i32 %inc, ptr %j, align 4, !dbg !901
  br label %for.cond42, !dbg !902, !llvm.loop !903

for.end:                                          ; preds = %if.then51, %for.cond42
  %47 = load i32, ptr %j, align 4, !dbg !905
  %48 = load ptr, ptr %efispecid, align 8, !dbg !907
  %num_algs59 = getelementptr inbounds %struct.tcg_efi_specid_event_head, ptr %48, i32 0, i32 6, !dbg !908
  %49 = load i32, ptr %num_algs59, align 1, !dbg !908
  %cmp60 = icmp eq i32 %47, %49, !dbg !909
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !910

if.then62:                                        ; preds = %for.end
  store i64 0, ptr %size, align 8, !dbg !911
  br label %out, !dbg !913

if.end63:                                         ; preds = %for.end
  br label %for.inc64, !dbg !914

for.inc64:                                        ; preds = %if.end63
  %50 = load i32, ptr %i, align 4, !dbg !915
  %inc65 = add nsw i32 %50, 1, !dbg !915
  store i32 %inc65, ptr %i, align 4, !dbg !915
  br label %for.cond, !dbg !916, !llvm.loop !917

for.end66:                                        ; preds = %for.cond
  %51 = load i8, ptr %do_mapping.addr, align 1, !dbg !919, !range !775, !noundef !776
  %tobool67 = trunc i8 %51 to i1, !dbg !919
  br i1 %tobool67, label %if.then68, label %if.else77, !dbg !921

if.then68:                                        ; preds = %for.end66
  br label %do.body69, !dbg !922

do.body69:                                        ; preds = %if.then68
  br label %do.cond70, !dbg !924

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !924

do.end71:                                         ; preds = %do.cond70
  %52 = load i32, ptr %mapping_size, align 4, !dbg !926
  %conv72 = sext i32 %52 to i64, !dbg !926
  %add = add i64 %conv72, 4, !dbg !926
  %conv73 = trunc i64 %add to i32, !dbg !926
  store i32 %conv73, ptr %mapping_size, align 4, !dbg !926
  store ptr null, ptr %mapping, align 8, !dbg !927
  %53 = load ptr, ptr %mapping, align 8, !dbg !928
  %tobool74 = icmp ne ptr %53, null, !dbg !928
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !930

if.then75:                                        ; preds = %do.end71
  store i64 0, ptr %size, align 8, !dbg !931
  br label %out, !dbg !933

if.end76:                                         ; preds = %do.end71
  br label %if.end78, !dbg !934

if.else77:                                        ; preds = %for.end66
  %54 = load ptr, ptr %marker, align 8, !dbg !935
  store ptr %54, ptr %mapping, align 8, !dbg !937
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.end76
  %55 = load ptr, ptr %mapping, align 8, !dbg !938
  store ptr %55, ptr %event_field, align 8, !dbg !939
  %56 = load ptr, ptr %marker, align 8, !dbg !940
  %add.ptr79 = getelementptr inbounds i8, ptr %56, i64 4, !dbg !941
  %57 = load ptr, ptr %event_field, align 8, !dbg !942
  %event_size = getelementptr inbounds %struct.tcg_event_field, ptr %57, i32 0, i32 0, !dbg !943
  %58 = load i32, ptr %event_size, align 1, !dbg !943
  %idx.ext80 = zext i32 %58 to i64, !dbg !944
  %add.ptr81 = getelementptr inbounds i8, ptr %add.ptr79, i64 %idx.ext80, !dbg !944
  store ptr %add.ptr81, ptr %marker, align 8, !dbg !945
  %59 = load ptr, ptr %marker, align 8, !dbg !946
  %60 = load ptr, ptr %marker_start, align 8, !dbg !947
  %sub.ptr.lhs.cast82 = ptrtoint ptr %59 to i64, !dbg !948
  %sub.ptr.rhs.cast83 = ptrtoint ptr %60 to i64, !dbg !948
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83, !dbg !948
  store i64 %sub.ptr.sub84, ptr %size, align 8, !dbg !949
  %61 = load i32, ptr %event_type, align 4, !dbg !950
  %cmp85 = icmp eq i32 %61, 0, !dbg !952
  br i1 %cmp85, label %land.lhs.true, label %if.end91, !dbg !953

land.lhs.true:                                    ; preds = %if.end78
  %62 = load ptr, ptr %event_field, align 8, !dbg !954
  %event_size87 = getelementptr inbounds %struct.tcg_event_field, ptr %62, i32 0, i32 0, !dbg !955
  %63 = load i32, ptr %event_size87, align 1, !dbg !955
  %cmp88 = icmp eq i32 %63, 0, !dbg !956
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !957

if.then90:                                        ; preds = %land.lhs.true
  store i64 0, ptr %size, align 8, !dbg !958
  br label %if.end91, !dbg !959

if.end91:                                         ; preds = %if.then90, %land.lhs.true, %if.end78
  br label %out, !dbg !960

out:                                              ; preds = %if.end91, %if.then75, %if.then62, %if.then35, %if.then28, %if.then15, %if.then4
  call void @llvm.dbg.label(metadata !733), !dbg !961
  %64 = load i8, ptr %do_mapping.addr, align 1, !dbg !962, !range !775, !noundef !776
  %tobool92 = trunc i8 %64 to i1, !dbg !962
  br i1 %tobool92, label %if.then93, label %if.end97, !dbg !964

if.then93:                                        ; preds = %out
  br label %do.body94, !dbg !965

do.body94:                                        ; preds = %if.then93
  br label %do.cond95, !dbg !966

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !966

do.end96:                                         ; preds = %do.cond95
  br label %if.end97, !dbg !966

if.end97:                                         ; preds = %do.end96, %out
  %65 = load i64, ptr %size, align 8, !dbg !968
  %conv98 = trunc i64 %65 to i32, !dbg !968
  call void @llvm.lifetime.end.p0(i64 20, ptr %zero_digest) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_type) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 2, ptr %halg) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 4, ptr %halg_size) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker_start) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 4, ptr %mapping_size) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_field) #8, !dbg !969
  call void @llvm.lifetime.end.p0(i64 8, ptr %efispecid) #8, !dbg !969
  ret i32 %conv98, !dbg !970
}

; Function Attrs: noredzone
declare !dbg !971 hidden i32 @efi_printk(ptr noundef, ...) #5

; Function Attrs: noredzone
declare !dbg !976 hidden ptr @get_efi_config_table(i64, i64) #5

; Function Attrs: noredzone
declare !dbg !979 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: noredzone
declare !dbg !983 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #4 !dbg !986 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !987, !range !775, !noundef !776
  %tobool = trunc i8 %0 to i1, !dbg !987
  ret i1 %tobool, !dbg !988
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #4 !dbg !989 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !994, metadata !DIExpression()), !dbg !996
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !995, metadata !DIExpression()), !dbg !997
  %0 = load i64, ptr %word.addr, align 8, !dbg !998
  %1 = load i32, ptr %shift.addr, align 4, !dbg !999
  %and = and i32 %1, 63, !dbg !1000
  %sh_prom = zext i32 %and to i64, !dbg !1001
  %shr = lshr i64 %0, %sh_prom, !dbg !1001
  %2 = load i64, ptr %word.addr, align 8, !dbg !1002
  %3 = load i32, ptr %shift.addr, align 4, !dbg !1003
  %sub = sub i32 0, %3, !dbg !1004
  %and1 = and i32 %sub, 63, !dbg !1005
  %sh_prom2 = zext i32 %and1 to i64, !dbg !1006
  %shl = shl i64 %2, %sh_prom2, !dbg !1006
  %or = or i64 %shr, %shl, !dbg !1007
  ret i64 %or, !dbg !1008
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 !dbg !1009 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1013, metadata !DIExpression()), !dbg !1015
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !1014, metadata !DIExpression()), !dbg !1016
  %0 = load i32, ptr %word.addr, align 4, !dbg !1017
  %1 = load i32, ptr %shift.addr, align 4, !dbg !1018
  %and = and i32 %1, 31, !dbg !1019
  %shl = shl i32 %0, %and, !dbg !1020
  %2 = load i32, ptr %word.addr, align 4, !dbg !1021
  %3 = load i32, ptr %shift.addr, align 4, !dbg !1022
  %sub = sub i32 0, %3, !dbg !1023
  %and1 = and i32 %sub, 31, !dbg !1024
  %shr = lshr i32 %2, %and1, !dbg !1025
  %or = or i32 %shl, %shr, !dbg !1026
  ret i32 %or, !dbg !1027
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone
declare !dbg !1028 hidden i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!341, !342, !343, !344, !345}
!llvm.ident = !{!346}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/tpm.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e53466f15a96350d49fc48466efac75")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 50)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 221, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/tpm_eventlog.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecfe360a18317d4461a8f564b255c7bd")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 16)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.tpm.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/tpm\22 -D KBUILD_BASENAME=\22tpm\22 -D KBUILD_MODNAME=\22tpm\22 -D __KBUILD_MODNAME=kmod_tpm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/tpm.ll drivers/firmware/efi/libstub/tpm.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !47, globals: !340, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !22, !27}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 243, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!20 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!21 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 10, baseType: !17, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "false", value: 0)
!26 = !DIEnumerator(name: "true", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcpa_event_types", file: !9, line: 34, baseType: !17, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!29 = !DIEnumerator(name: "PREBOOT", value: 0)
!30 = !DIEnumerator(name: "POST_CODE", value: 1)
!31 = !DIEnumerator(name: "UNUSED", value: 2)
!32 = !DIEnumerator(name: "NO_ACTION", value: 3)
!33 = !DIEnumerator(name: "SEPARATOR", value: 4)
!34 = !DIEnumerator(name: "ACTION", value: 5)
!35 = !DIEnumerator(name: "EVENT_TAG", value: 6)
!36 = !DIEnumerator(name: "SCRTM_CONTENTS", value: 7)
!37 = !DIEnumerator(name: "SCRTM_VERSION", value: 8)
!38 = !DIEnumerator(name: "CPU_MICROCODE", value: 9)
!39 = !DIEnumerator(name: "PLATFORM_CONFIG_FLAGS", value: 10)
!40 = !DIEnumerator(name: "TABLE_OF_DEVICES", value: 11)
!41 = !DIEnumerator(name: "COMPACT_HASH", value: 12)
!42 = !DIEnumerator(name: "IPL", value: 13)
!43 = !DIEnumerator(name: "IPL_PARTITION_DATA", value: 14)
!44 = !DIEnumerator(name: "NONHOST_CODE", value: 15)
!45 = !DIEnumerator(name: "NONHOST_CONFIG", value: 16)
!46 = !DIEnumerator(name: "NONHOST_INFO", value: 17)
!47 = !{!48, !80, !73, !98, !287, !288, !93, !302, !318, !335}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !50, line: 250, baseType: !51)
!50 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !16, line: 252, size: 3008, elements: !52)
!52 = !{!53, !239}
!53 = !DIDerivedType(tag: DW_TAG_member, scope: !51, file: !16, line: 253, baseType: !54, size: 3008)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !16, line: 253, size: 3008, elements: !55)
!55 = !{!56, !72, !74, !75, !84, !88, !94, !99, !103, !113, !118, !122, !123, !127, !128, !129, !130, !131, !146, !147, !148, !153, !169, !173, !180, !187, !191, !195, !199, !200, !204, !205, !206, !210, !211, !212, !213, !214, !215, !219, !223, !227, !228, !234, !238}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !54, file: !16, line: 254, baseType: !57, size: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !50, line: 90, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 84, size: 192, elements: !59)
!59 = !{!60, !66, !69, !70, !71}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !58, file: !50, line: 85, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !62, line: 23, baseType: !63)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 31, baseType: !65)
!64 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!65 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !58, file: !50, line: 86, baseType: !67, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !62, line: 21, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 27, baseType: !17)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !58, file: !50, line: 87, baseType: !67, size: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !58, file: !50, line: 88, baseType: !67, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !58, file: !50, line: 89, baseType: !67, size: 32, offset: 160)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !54, file: !16, line: 255, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !54, file: !16, line: 256, baseType: !73, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !54, file: !16, line: 257, baseType: !76, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !78)
!78 = !{!79, !81, !81, !80, !82}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !50, line: 47, baseType: !80)
!80 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !50, line: 50, baseType: !61)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !54, file: !16, line: 259, baseType: !85, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !87)
!87 = !{!79, !83, !80}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !54, file: !16, line: 261, baseType: !89, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !91)
!91 = !{!79, !92, !73, !92, !92, !93}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !54, file: !16, line: 264, baseType: !95, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !97)
!97 = !{!79, !81, !80, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !54, file: !16, line: 266, baseType: !100, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !102)
!102 = !{!79, !73}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !54, file: !16, line: 267, baseType: !104, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !106)
!106 = !{!79, !67, !80, !107, !73, !112}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !16, line: 212, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !110)
!110 = !{null, !111, !73}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !16, line: 210, baseType: !73)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !54, file: !16, line: 270, baseType: !114, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !116)
!116 = !{!79, !111, !117, !61}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !16, line: 247, baseType: !15)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !54, file: !16, line: 272, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !121)
!121 = !{!79, !80, !112, !92}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !54, file: !16, line: 275, baseType: !73, size: 64, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !54, file: !16, line: 276, baseType: !124, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !126)
!126 = !{!79, !111}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !54, file: !16, line: 277, baseType: !73, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !54, file: !16, line: 278, baseType: !73, size: 64, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !54, file: !16, line: 279, baseType: !73, size: 64, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !54, file: !16, line: 280, baseType: !73, size: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !54, file: !16, line: 281, baseType: !132, size: 64, offset: 1216)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !134)
!134 = !{!79, !135, !136, !98}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !50, line: 51, baseType: !73)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !50, line: 74, baseType: !138, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !139, line: 17, baseType: !140)
!139 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 15, size: 128, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !140, file: !139, line: 16, baseType: !143, size: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !11)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !64, line: 21, baseType: !145)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !54, file: !16, line: 283, baseType: !73, size: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !54, file: !16, line: 284, baseType: !73, size: 64, offset: 1344)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !54, file: !16, line: 285, baseType: !149, size: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !151)
!151 = !{!79, !81, !136, !73, !92, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !54, file: !16, line: 288, baseType: !154, size: 64, offset: 1472)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !156)
!156 = !{!79, !136, !157, !152}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !16, line: 176, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !50, line: 985, size: 32, elements: !161)
!161 = !{!162, !164, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !50, line: 986, baseType: !163, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !62, line: 17, baseType: !144)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !160, file: !50, line: 987, baseType: !163, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !160, file: !50, line: 988, baseType: !166, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !62, line: 19, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !64, line: 24, baseType: !168)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !54, file: !16, line: 291, baseType: !170, size: 64, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !172)
!172 = !{!79, !136, !73}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !54, file: !16, line: 293, baseType: !174, size: 64, offset: 1600)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !176)
!176 = !{!79, !177, !135, !158, !73, !80, !152}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !178, line: 35, baseType: !179)
!178 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!179 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !54, file: !16, line: 297, baseType: !181, size: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !183)
!183 = !{!79, !135, !92, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !50, line: 49, baseType: !166)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !54, file: !16, line: 299, baseType: !188, size: 64, offset: 1728)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !190)
!190 = !{!79, !135, !79, !80, !185}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !54, file: !16, line: 303, baseType: !192, size: 64, offset: 1792)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !194)
!194 = !{!79, !135}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !54, file: !16, line: 304, baseType: !196, size: 64, offset: 1856)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !198)
!198 = !{!79, !135, !80}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !54, file: !16, line: 306, baseType: !73, size: 64, offset: 1920)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !54, file: !16, line: 307, baseType: !201, size: 64, offset: 1984)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !203)
!203 = !{!79, !80}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !54, file: !16, line: 308, baseType: !73, size: 64, offset: 2048)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !54, file: !16, line: 309, baseType: !73, size: 64, offset: 2112)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !54, file: !16, line: 310, baseType: !207, size: 64, offset: 2176)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !209)
!209 = !{!79, !135, !135, !135}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !54, file: !16, line: 313, baseType: !73, size: 64, offset: 2240)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !54, file: !16, line: 314, baseType: !73, size: 64, offset: 2304)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !54, file: !16, line: 315, baseType: !73, size: 64, offset: 2368)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !54, file: !16, line: 316, baseType: !73, size: 64, offset: 2432)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !54, file: !16, line: 317, baseType: !73, size: 64, offset: 2496)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !54, file: !16, line: 318, baseType: !216, size: 64, offset: 2560)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !218)
!218 = !{!79, !136, !73, !98}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !54, file: !16, line: 320, baseType: !220, size: 64, offset: 2624)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !222)
!222 = !{!79, !152, null}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !54, file: !16, line: 321, baseType: !224, size: 64, offset: 2688)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !226)
!226 = !{!79, !135, null}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !54, file: !16, line: 322, baseType: !73, size: 64, offset: 2752)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !54, file: !16, line: 323, baseType: !229, size: 64, offset: 2816)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !231)
!231 = !{null, !73, !232, !80}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !54, file: !16, line: 324, baseType: !235, size: 64, offset: 2880)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !237)
!237 = !{null, !73, !80, !145}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !54, file: !16, line: 325, baseType: !73, size: 64, offset: 2944)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !51, file: !16, line: 373, baseType: !240, size: 1600)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !16, line: 327, size: 1600, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !240, file: !16, line: 328, baseType: !57, size: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !240, file: !16, line: 329, baseType: !67, size: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !240, file: !16, line: 330, baseType: !67, size: 32, offset: 224)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !240, file: !16, line: 331, baseType: !67, size: 32, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !240, file: !16, line: 332, baseType: !67, size: 32, offset: 288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !240, file: !16, line: 333, baseType: !67, size: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !240, file: !16, line: 334, baseType: !67, size: 32, offset: 352)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !240, file: !16, line: 335, baseType: !67, size: 32, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !240, file: !16, line: 336, baseType: !67, size: 32, offset: 416)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !240, file: !16, line: 337, baseType: !67, size: 32, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !240, file: !16, line: 338, baseType: !67, size: 32, offset: 480)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !240, file: !16, line: 339, baseType: !67, size: 32, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !240, file: !16, line: 340, baseType: !67, size: 32, offset: 544)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !240, file: !16, line: 341, baseType: !67, size: 32, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !240, file: !16, line: 342, baseType: !67, size: 32, offset: 608)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !240, file: !16, line: 343, baseType: !67, size: 32, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !240, file: !16, line: 344, baseType: !67, size: 32, offset: 672)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !240, file: !16, line: 345, baseType: !67, size: 32, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !240, file: !16, line: 346, baseType: !67, size: 32, offset: 736)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !240, file: !16, line: 347, baseType: !67, size: 32, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !240, file: !16, line: 348, baseType: !67, size: 32, offset: 800)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !240, file: !16, line: 349, baseType: !67, size: 32, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !240, file: !16, line: 350, baseType: !67, size: 32, offset: 864)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !240, file: !16, line: 351, baseType: !67, size: 32, offset: 896)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !240, file: !16, line: 352, baseType: !67, size: 32, offset: 928)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !240, file: !16, line: 353, baseType: !67, size: 32, offset: 960)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !240, file: !16, line: 354, baseType: !67, size: 32, offset: 992)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !240, file: !16, line: 355, baseType: !67, size: 32, offset: 1024)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !240, file: !16, line: 356, baseType: !67, size: 32, offset: 1056)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !240, file: !16, line: 357, baseType: !67, size: 32, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !240, file: !16, line: 358, baseType: !67, size: 32, offset: 1120)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !240, file: !16, line: 359, baseType: !67, size: 32, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !240, file: !16, line: 360, baseType: !67, size: 32, offset: 1184)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !240, file: !16, line: 361, baseType: !67, size: 32, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !240, file: !16, line: 362, baseType: !67, size: 32, offset: 1248)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !240, file: !16, line: 363, baseType: !67, size: 32, offset: 1280)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !240, file: !16, line: 364, baseType: !67, size: 32, offset: 1312)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !240, file: !16, line: 365, baseType: !67, size: 32, offset: 1344)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !240, file: !16, line: 366, baseType: !67, size: 32, offset: 1376)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !240, file: !16, line: 367, baseType: !67, size: 32, offset: 1408)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !240, file: !16, line: 368, baseType: !67, size: 32, offset: 1440)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !240, file: !16, line: 369, baseType: !67, size: 32, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !240, file: !16, line: 370, baseType: !67, size: 32, offset: 1504)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !240, file: !16, line: 371, baseType: !67, size: 32, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !240, file: !16, line: 372, baseType: !67, size: 32, offset: 1568)
!287 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcpa_event", file: !9, line: 26, size: 256, elements: !290)
!290 = !{!291, !292, !293, !297, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_index", scope: !289, file: !9, line: 27, baseType: !67, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !289, file: !9, line: 28, baseType: !67, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_value", scope: !289, file: !9, line: 29, baseType: !294, size: 160, offset: 64)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 160, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 20)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !289, file: !9, line: 30, baseType: !67, size: 32, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "event_data", scope: !289, file: !9, line: 31, baseType: !299, offset: 256)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: -1)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_pcr_event2_head", file: !9, line: 110, size: 96, elements: !304)
!304 = !{!305, !306, !307, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_idx", scope: !303, file: !9, line: 111, baseType: !67, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !303, file: !9, line: 112, baseType: !67, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !9, line: 113, baseType: !67, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "digests", scope: !303, file: !9, line: 114, baseType: !309, offset: 96)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, elements: !300)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tpm_digest", file: !311, line: 52, size: 528, elements: !312)
!311 = !DIFile(filename: "./include/linux/tpm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f0e647e2e8f2e8f813d1133346a17ea")
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "alg_id", scope: !310, file: !311, line: 53, baseType: !166, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !310, file: !311, line: 54, baseType: !315, size: 512, offset: 16)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 512, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_efi_specid_event_head", file: !9, line: 86, size: 224, elements: !320)
!320 = !{!321, !323, !324, !325, !326, !327, !328, !329}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !319, file: !9, line: 87, baseType: !322, size: 128)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !11)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "platform_class", scope: !319, file: !9, line: 88, baseType: !67, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "spec_version_minor", scope: !319, file: !9, line: 89, baseType: !163, size: 8, offset: 160)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "spec_version_major", scope: !319, file: !9, line: 90, baseType: !163, size: 8, offset: 168)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "spec_errata", scope: !319, file: !9, line: 91, baseType: !163, size: 8, offset: 176)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "uintnsize", scope: !319, file: !9, line: 92, baseType: !163, size: 8, offset: 184)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_algs", scope: !319, file: !9, line: 93, baseType: !67, size: 32, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "digest_sizes", scope: !319, file: !9, line: 94, baseType: !330, offset: 224)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, elements: !300)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_efi_specid_event_algs", file: !9, line: 79, size: 32, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "alg_id", scope: !331, file: !9, line: 80, baseType: !166, size: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !331, file: !9, line: 81, baseType: !166, size: 16, offset: 16)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_event_field", file: !9, line: 105, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !336, file: !9, line: 106, baseType: !67, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !336, file: !9, line: 107, baseType: !299, offset: 32)
!340 = !{!0, !7}
!341 = !{i32 7, !"Dwarf Version", i32 5}
!342 = !{i32 2, !"Debug Info Version", i32 3}
!343 = !{i32 1, !"wchar_size", i32 2}
!344 = !{i32 8, !"PIC Level", i32 2}
!345 = !{i32 1, !"Code Model", i32 1}
!346 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!347 = distinct !DISubprogram(name: "efi_retrieve_tpm2_eventlog", scope: !2, file: !2, line: 50, type: !348, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{null}
!350 = !{!351, !352, !353, !354, !355, !356, !364, !371, !372, !373, !378, !379, !381, !382, !428, !429, !434, !436, !438, !442, !444, !446, !449, !450, !451, !452, !453, !455, !456}
!351 = !DILocalVariable(name: "tcg2_guid", scope: !347, file: !2, line: 52, type: !137)
!352 = !DILocalVariable(name: "linux_eventlog_guid", scope: !347, file: !2, line: 53, type: !137)
!353 = !DILocalVariable(name: "status", scope: !347, file: !2, line: 54, type: !79)
!354 = !DILocalVariable(name: "log_location", scope: !347, file: !2, line: 55, type: !83)
!355 = !DILocalVariable(name: "log_last_entry", scope: !347, file: !2, line: 55, type: !83)
!356 = !DILocalVariable(name: "log_tbl", scope: !347, file: !2, line: 56, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_efi_tpm_eventlog", file: !50, line: 1215, size: 96, elements: !359)
!359 = !{!360, !361, !362, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !358, file: !50, line: 1216, baseType: !67, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "final_events_preboot_size", scope: !358, file: !50, line: 1217, baseType: !67, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !358, file: !50, line: 1218, baseType: !163, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !358, file: !50, line: 1219, baseType: !299, offset: 72)
!364 = !DILocalVariable(name: "final_events_table", scope: !347, file: !2, line: 57, type: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_tcg2_final_events_table", file: !50, line: 1224, size: 128, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !366, file: !50, line: 1225, baseType: !61, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !366, file: !50, line: 1226, baseType: !61, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !366, file: !50, line: 1227, baseType: !299, offset: 128)
!371 = !DILocalVariable(name: "first_entry_addr", scope: !347, file: !2, line: 58, type: !80)
!372 = !DILocalVariable(name: "last_entry_addr", scope: !347, file: !2, line: 58, type: !80)
!373 = !DILocalVariable(name: "log_size", scope: !347, file: !2, line: 59, type: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 61, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !376, line: 72, baseType: !377)
!376 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !376, line: 16, baseType: !80)
!378 = !DILocalVariable(name: "last_entry_size", scope: !347, file: !2, line: 59, type: !374)
!379 = !DILocalVariable(name: "truncated", scope: !347, file: !2, line: 60, type: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !50, line: 48, baseType: !163)
!381 = !DILocalVariable(name: "version", scope: !347, file: !2, line: 61, type: !81)
!382 = !DILocalVariable(name: "tcg2_protocol", scope: !347, file: !2, line: 62, type: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_protocol_t", file: !16, line: 854, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_tcg2_protocol", file: !16, line: 856, size: 448, elements: !386)
!386 = !{!387, !418}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !16, line: 857, baseType: !388, size: 448)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !16, line: 857, size: 448, elements: !389)
!389 = !{!390, !391, !397, !414, !415, !416, !417}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !388, file: !16, line: 858, baseType: !73, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "get_event_log", scope: !388, file: !16, line: 859, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !394)
!394 = !{!79, !383, !395, !82, !82, !396}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_event_log_format", file: !16, line: 828, baseType: !67)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hash_log_extend_event", scope: !388, file: !16, line: 864, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !400)
!400 = !{!79, !383, !61, !83, !61, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_tcg2_event_t", file: !16, line: 852, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_tcg2_event", file: !16, line: 835, size: 144, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !404, file: !16, line: 836, baseType: !67, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "event_header", scope: !404, file: !16, line: 842, baseType: !408, size: 112, offset: 32)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !16, line: 837, size: 112, elements: !409)
!409 = !{!410, !411, !412, !413}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !408, file: !16, line: 838, baseType: !67, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "header_version", scope: !408, file: !16, line: 839, baseType: !166, size: 16, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_index", scope: !408, file: !16, line: 840, baseType: !67, size: 32, offset: 48)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !408, file: !16, line: 841, baseType: !67, size: 32, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "submit_command", scope: !388, file: !16, line: 869, baseType: !73, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_active_pcr_banks", scope: !388, file: !16, line: 870, baseType: !73, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "set_active_pcr_banks", scope: !388, file: !16, line: 871, baseType: !73, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "get_result_of_set_active_pcr_banks", scope: !388, file: !16, line: 872, baseType: !73, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !385, file: !16, line: 882, baseType: !419, size: 224)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !16, line: 874, size: 224, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !419, file: !16, line: 875, baseType: !67, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "get_event_log", scope: !419, file: !16, line: 876, baseType: !67, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hash_log_extend_event", scope: !419, file: !16, line: 877, baseType: !67, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "submit_command", scope: !419, file: !16, line: 878, baseType: !67, size: 32, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "get_active_pcr_banks", scope: !419, file: !16, line: 879, baseType: !67, size: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "set_active_pcr_banks", scope: !419, file: !16, line: 880, baseType: !67, size: 32, offset: 160)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "get_result_of_set_active_pcr_banks", scope: !419, file: !16, line: 881, baseType: !67, size: 32, offset: 192)
!428 = !DILocalVariable(name: "final_events_size", scope: !347, file: !2, line: 63, type: !81)
!429 = !DILocalVariable(name: "__pad", scope: !430, file: !2, line: 65, type: !431)
!430 = distinct !DILexicalBlock(scope: !347, file: !2, line: 65, column: 11)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 3)
!434 = !DILocalVariable(name: "__inst", scope: !435, file: !2, line: 70, type: !383)
!435 = distinct !DILexicalBlock(scope: !347, file: !2, line: 70, column: 11)
!436 = !DILocalVariable(name: "__pad", scope: !437, file: !2, line: 70, type: !431)
!437 = distinct !DILexicalBlock(scope: !435, file: !2, line: 70, column: 11)
!438 = !DILocalVariable(name: "__inst", scope: !439, file: !2, line: 75, type: !383)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 75, column: 12)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 73, column: 46)
!441 = distinct !DILexicalBlock(scope: !347, file: !2, line: 73, column: 6)
!442 = !DILocalVariable(name: "__pad", scope: !443, file: !2, line: 75, type: !431)
!443 = distinct !DILexicalBlock(scope: !439, file: !2, line: 75, column: 12)
!444 = !DILocalVariable(name: "__pad", scope: !445, file: !2, line: 118, type: !431)
!445 = distinct !DILexicalBlock(scope: !347, file: !2, line: 118, column: 11)
!446 = !DILocalVariable(name: "header", scope: !447, file: !2, line: 133, type: !302)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 132, column: 59)
!448 = distinct !DILexicalBlock(scope: !347, file: !2, line: 132, column: 6)
!449 = !DILocalVariable(name: "offset", scope: !447, file: !2, line: 134, type: !81)
!450 = !DILocalVariable(name: "data", scope: !447, file: !2, line: 135, type: !73)
!451 = !DILocalVariable(name: "event_size", scope: !447, file: !2, line: 136, type: !81)
!452 = !DILocalVariable(name: "i", scope: !447, file: !2, line: 137, type: !81)
!453 = !DILocalVariable(name: "__pad", scope: !454, file: !2, line: 159, type: !431)
!454 = distinct !DILexicalBlock(scope: !347, file: !2, line: 159, column: 11)
!455 = !DILabel(scope: !347, name: "err_free", file: !2, line: 165)
!456 = !DILocalVariable(name: "__pad", scope: !457, file: !2, line: 166, type: !431)
!457 = distinct !DILexicalBlock(scope: !347, file: !2, line: 166, column: 2)
!458 = !DILocation(line: 52, column: 2, scope: !347)
!459 = !DILocation(line: 52, column: 13, scope: !347)
!460 = !DILocation(line: 53, column: 2, scope: !347)
!461 = !DILocation(line: 53, column: 13, scope: !347)
!462 = !DILocation(line: 54, column: 2, scope: !347)
!463 = !DILocation(line: 54, column: 15, scope: !347)
!464 = !DILocation(line: 55, column: 2, scope: !347)
!465 = !DILocation(line: 55, column: 22, scope: !347)
!466 = !DILocation(line: 55, column: 40, scope: !347)
!467 = !DILocation(line: 56, column: 2, scope: !347)
!468 = !DILocation(line: 56, column: 33, scope: !347)
!469 = !DILocation(line: 57, column: 2, scope: !347)
!470 = !DILocation(line: 57, column: 38, scope: !347)
!471 = !DILocation(line: 58, column: 2, scope: !347)
!472 = !DILocation(line: 58, column: 16, scope: !347)
!473 = !DILocation(line: 58, column: 34, scope: !347)
!474 = !DILocation(line: 59, column: 2, scope: !347)
!475 = !DILocation(line: 59, column: 9, scope: !347)
!476 = !DILocation(line: 59, column: 19, scope: !347)
!477 = !DILocation(line: 60, column: 2, scope: !347)
!478 = !DILocation(line: 60, column: 13, scope: !347)
!479 = !DILocation(line: 61, column: 2, scope: !347)
!480 = !DILocation(line: 61, column: 6, scope: !347)
!481 = !DILocation(line: 62, column: 2, scope: !347)
!482 = !DILocation(line: 62, column: 23, scope: !347)
!483 = !DILocation(line: 63, column: 2, scope: !347)
!484 = !DILocation(line: 63, column: 6, scope: !347)
!485 = !DILocation(line: 65, column: 11, scope: !347)
!486 = !DILocation(line: 65, column: 11, scope: !430)
!487 = !DILocation(line: 65, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !430, file: !2, line: 65, column: 11)
!489 = !DILocation(line: 65, column: 11, scope: !490)
!490 = distinct !DILexicalBlock(scope: !488, file: !2, line: 65, column: 11)
!491 = !DILocation(line: 65, column: 9, scope: !347)
!492 = !DILocation(line: 67, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !347, file: !2, line: 67, column: 6)
!494 = !DILocation(line: 67, column: 13, scope: !493)
!495 = !DILocation(line: 67, column: 6, scope: !347)
!496 = !DILocation(line: 68, column: 3, scope: !493)
!497 = !DILocation(line: 70, column: 11, scope: !435)
!498 = !DILocation(line: 70, column: 11, scope: !437)
!499 = !DILocation(line: 70, column: 11, scope: !500)
!500 = distinct !DILexicalBlock(scope: !437, file: !2, line: 70, column: 11)
!501 = !DILocation(line: 70, column: 11, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !2, line: 70, column: 11)
!503 = !DILocation(line: 70, column: 11, scope: !347)
!504 = !DILocation(line: 70, column: 9, scope: !347)
!505 = !DILocation(line: 73, column: 6, scope: !441)
!506 = !DILocation(line: 73, column: 13, scope: !441)
!507 = !DILocation(line: 73, column: 28, scope: !441)
!508 = !DILocation(line: 73, column: 32, scope: !441)
!509 = !DILocation(line: 73, column: 6, scope: !347)
!510 = !DILocation(line: 74, column: 11, scope: !440)
!511 = !DILocation(line: 75, column: 12, scope: !439)
!512 = !DILocation(line: 75, column: 12, scope: !443)
!513 = !DILocation(line: 75, column: 12, scope: !514)
!514 = distinct !DILexicalBlock(scope: !443, file: !2, line: 75, column: 12)
!515 = !DILocation(line: 75, column: 12, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !2, line: 75, column: 12)
!517 = !DILocation(line: 75, column: 12, scope: !440)
!518 = !DILocation(line: 75, column: 10, scope: !440)
!519 = !DILocation(line: 78, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !440, file: !2, line: 78, column: 7)
!521 = !DILocation(line: 78, column: 14, scope: !520)
!522 = !DILocation(line: 78, column: 29, scope: !520)
!523 = !DILocation(line: 78, column: 33, scope: !520)
!524 = !DILocation(line: 78, column: 7, scope: !440)
!525 = !DILocation(line: 79, column: 4, scope: !520)
!526 = !DILocation(line: 81, column: 2, scope: !440)
!527 = !DILocation(line: 83, column: 37, scope: !347)
!528 = !DILocation(line: 83, column: 19, scope: !347)
!529 = !DILocation(line: 88, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !347, file: !2, line: 88, column: 6)
!531 = !DILocation(line: 88, column: 6, scope: !347)
!532 = !DILocation(line: 89, column: 12, scope: !533)
!533 = distinct !DILexicalBlock(scope: !530, file: !2, line: 88, column: 23)
!534 = !DILocation(line: 90, column: 2, scope: !533)
!535 = !DILocation(line: 91, column: 37, scope: !536)
!536 = distinct !DILexicalBlock(scope: !530, file: !2, line: 90, column: 9)
!537 = !DILocation(line: 91, column: 19, scope: !536)
!538 = !DILocation(line: 97, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !2, line: 97, column: 7)
!540 = !DILocation(line: 97, column: 15, scope: !539)
!541 = !DILocation(line: 97, column: 7, scope: !536)
!542 = !DILocation(line: 107, column: 36, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !2, line: 97, column: 51)
!544 = !DILocation(line: 107, column: 28, scope: !543)
!545 = !DILocation(line: 108, column: 25, scope: !543)
!546 = !DILocation(line: 108, column: 11, scope: !543)
!547 = !DILocation(line: 107, column: 5, scope: !543)
!548 = !DILocation(line: 106, column: 20, scope: !543)
!549 = !DILocation(line: 110, column: 3, scope: !543)
!550 = !DILocation(line: 112, column: 30, scope: !551)
!551 = distinct !DILexicalBlock(scope: !539, file: !2, line: 110, column: 10)
!552 = !DILocation(line: 112, column: 8, scope: !551)
!553 = !DILocation(line: 112, column: 48, scope: !551)
!554 = !DILocation(line: 112, column: 7, scope: !551)
!555 = !DILocation(line: 111, column: 48, scope: !551)
!556 = !DILocation(line: 111, column: 20, scope: !551)
!557 = !DILocation(line: 114, column: 14, scope: !536)
!558 = !DILocation(line: 114, column: 31, scope: !536)
!559 = !DILocation(line: 114, column: 29, scope: !536)
!560 = !DILocation(line: 114, column: 46, scope: !536)
!561 = !DILocation(line: 114, column: 44, scope: !536)
!562 = !DILocation(line: 114, column: 12, scope: !536)
!563 = !DILocation(line: 118, column: 11, scope: !347)
!564 = !DILocation(line: 118, column: 11, scope: !445)
!565 = !DILocation(line: 118, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !445, file: !2, line: 118, column: 11)
!567 = !DILocation(line: 118, column: 11, scope: !568)
!568 = distinct !DILexicalBlock(scope: !566, file: !2, line: 118, column: 11)
!569 = !DILocation(line: 118, column: 9, scope: !347)
!570 = !DILocation(line: 121, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !347, file: !2, line: 121, column: 6)
!572 = !DILocation(line: 121, column: 13, scope: !571)
!573 = !DILocation(line: 121, column: 6, scope: !347)
!574 = !DILocation(line: 122, column: 3, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !2, line: 121, column: 29)
!576 = !DILocation(line: 123, column: 3, scope: !575)
!577 = !DILocation(line: 130, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !347, file: !2, line: 130, column: 6)
!579 = !DILocation(line: 130, column: 14, scope: !578)
!580 = !DILocation(line: 130, column: 6, scope: !347)
!581 = !DILocation(line: 131, column: 45, scope: !578)
!582 = !DILocation(line: 131, column: 24, scope: !578)
!583 = !DILocation(line: 131, column: 22, scope: !578)
!584 = !DILocation(line: 131, column: 3, scope: !578)
!585 = !DILocation(line: 132, column: 6, scope: !448)
!586 = !DILocation(line: 132, column: 25, scope: !448)
!587 = !DILocation(line: 132, column: 28, scope: !448)
!588 = !DILocation(line: 132, column: 48, scope: !448)
!589 = !DILocation(line: 132, column: 6, scope: !347)
!590 = !DILocation(line: 133, column: 3, scope: !447)
!591 = !DILocation(line: 133, column: 31, scope: !447)
!592 = !DILocation(line: 134, column: 3, scope: !447)
!593 = !DILocation(line: 134, column: 7, scope: !447)
!594 = !DILocation(line: 135, column: 3, scope: !447)
!595 = !DILocation(line: 135, column: 9, scope: !447)
!596 = !DILocation(line: 136, column: 3, scope: !447)
!597 = !DILocation(line: 136, column: 7, scope: !447)
!598 = !DILocation(line: 137, column: 3, scope: !447)
!599 = !DILocation(line: 137, column: 7, scope: !447)
!600 = !DILocation(line: 137, column: 11, scope: !447)
!601 = !DILocation(line: 137, column: 31, scope: !447)
!602 = !DILocation(line: 139, column: 18, scope: !447)
!603 = !DILocation(line: 139, column: 8, scope: !447)
!604 = !DILocation(line: 140, column: 10, scope: !447)
!605 = !DILocation(line: 143, column: 3, scope: !447)
!606 = !DILocation(line: 143, column: 10, scope: !447)
!607 = !DILocation(line: 143, column: 12, scope: !447)
!608 = !DILocation(line: 144, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !447, file: !2, line: 143, column: 17)
!610 = !DILocation(line: 144, column: 20, scope: !609)
!611 = !DILocation(line: 144, column: 18, scope: !609)
!612 = !DILocation(line: 144, column: 29, scope: !609)
!613 = !DILocation(line: 144, column: 27, scope: !609)
!614 = !DILocation(line: 144, column: 11, scope: !609)
!615 = !DILocation(line: 145, column: 40, scope: !609)
!616 = !DILocation(line: 146, column: 24, scope: !609)
!617 = !DILocation(line: 146, column: 10, scope: !609)
!618 = !DILocation(line: 145, column: 17, scope: !609)
!619 = !DILocation(line: 145, column: 15, scope: !609)
!620 = !DILocation(line: 148, column: 25, scope: !609)
!621 = !DILocation(line: 148, column: 22, scope: !609)
!622 = !DILocation(line: 149, column: 5, scope: !609)
!623 = distinct !{!623, !605, !624, !625, !626}
!624 = !DILocation(line: 150, column: 3, scope: !447)
!625 = !{!"llvm.loop.mustprogress"}
!626 = !{!"llvm.loop.unroll.disable"}
!627 = !DILocation(line: 151, column: 2, scope: !448)
!628 = !DILocation(line: 151, column: 2, scope: !447)
!629 = !DILocation(line: 153, column: 9, scope: !347)
!630 = !DILocation(line: 153, column: 40, scope: !347)
!631 = !DILocation(line: 153, column: 38, scope: !347)
!632 = !DILocation(line: 153, column: 2, scope: !347)
!633 = !DILocation(line: 154, column: 18, scope: !347)
!634 = !DILocation(line: 154, column: 2, scope: !347)
!635 = !DILocation(line: 154, column: 11, scope: !347)
!636 = !DILocation(line: 154, column: 16, scope: !347)
!637 = !DILocation(line: 155, column: 39, scope: !347)
!638 = !DILocation(line: 155, column: 2, scope: !347)
!639 = !DILocation(line: 155, column: 11, scope: !347)
!640 = !DILocation(line: 155, column: 37, scope: !347)
!641 = !DILocation(line: 156, column: 21, scope: !347)
!642 = !DILocation(line: 156, column: 2, scope: !347)
!643 = !DILocation(line: 156, column: 11, scope: !347)
!644 = !DILocation(line: 156, column: 19, scope: !347)
!645 = !DILocation(line: 157, column: 9, scope: !347)
!646 = !DILocation(line: 157, column: 18, scope: !347)
!647 = !DILocation(line: 157, column: 32, scope: !347)
!648 = !DILocation(line: 157, column: 23, scope: !347)
!649 = !DILocation(line: 157, column: 50, scope: !347)
!650 = !DILocation(line: 157, column: 2, scope: !347)
!651 = !DILocation(line: 159, column: 11, scope: !347)
!652 = !DILocation(line: 159, column: 11, scope: !454)
!653 = !DILocation(line: 159, column: 11, scope: !654)
!654 = distinct !DILexicalBlock(scope: !454, file: !2, line: 159, column: 11)
!655 = !DILocation(line: 159, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !654, file: !2, line: 159, column: 11)
!657 = !DILocation(line: 159, column: 9, scope: !347)
!658 = !DILocation(line: 161, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !347, file: !2, line: 161, column: 6)
!660 = !DILocation(line: 161, column: 13, scope: !659)
!661 = !DILocation(line: 161, column: 6, scope: !347)
!662 = !DILocation(line: 162, column: 3, scope: !659)
!663 = !DILocation(line: 163, column: 2, scope: !347)
!664 = !DILocation(line: 165, column: 1, scope: !347)
!665 = !DILocation(line: 166, column: 2, scope: !347)
!666 = !DILocation(line: 166, column: 2, scope: !457)
!667 = !DILocation(line: 166, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !457, file: !2, line: 166, column: 2)
!669 = !DILocation(line: 166, column: 2, scope: !670)
!670 = distinct !DILexicalBlock(scope: !668, file: !2, line: 166, column: 2)
!671 = !DILocation(line: 167, column: 1, scope: !347)
!672 = distinct !DISubprogram(name: "efi_is_native", scope: !673, file: !673, line: 205, type: !674, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!673 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!674 = !DISubroutineType(types: !675)
!675 = !{!177}
!676 = !DILocation(line: 207, column: 9, scope: !672)
!677 = !DILocation(line: 207, column: 2, scope: !672)
!678 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !673, file: !673, line: 346, type: !679, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{!79, !61}
!681 = !{!682}
!682 = !DILocalVariable(name: "status", arg: 1, scope: !678, file: !673, line: 346, type: !61)
!683 = !DILocation(line: 346, column: 57, scope: !678)
!684 = !DILocation(line: 349, column: 21, scope: !678)
!685 = !DILocation(line: 349, column: 15, scope: !678)
!686 = !DILocation(line: 349, column: 9, scope: !678)
!687 = !DILocation(line: 349, column: 2, scope: !678)
!688 = !DISubprogram(name: "__efi64_thunk", scope: !673, file: !673, line: 158, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DISubroutineType(types: !690)
!690 = !{!61, !67, null}
!691 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !673, file: !673, line: 239, type: !692, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!73, !73}
!694 = !{!695}
!695 = !DILocalVariable(name: "p", arg: 1, scope: !691, file: !673, line: 239, type: !73)
!696 = !DILocation(line: 239, column: 44, scope: !691)
!697 = !DILocation(line: 241, column: 10, scope: !691)
!698 = !DILocation(line: 241, column: 2, scope: !691)
!699 = !DILocation(line: 241, column: 16, scope: !691)
!700 = !DILocation(line: 242, column: 9, scope: !691)
!701 = !DILocation(line: 242, column: 2, scope: !691)
!702 = distinct !DISubprogram(name: "__calc_tpm2_event_size", scope: !9, file: !9, line: 160, type: !703, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !713)
!703 = !DISubroutineType(types: !704)
!704 = !{!81, !302, !705, !177}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcg_pcr_event", file: !9, line: 97, size: 256, elements: !707)
!707 = !{!708, !709, !710, !711, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pcr_idx", scope: !706, file: !9, line: 98, baseType: !67, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !706, file: !9, line: 99, baseType: !67, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !706, file: !9, line: 100, baseType: !294, size: 160, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "event_size", scope: !706, file: !9, line: 101, baseType: !67, size: 32, offset: 224)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !706, file: !9, line: 102, baseType: !299, offset: 256)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !733}
!714 = !DILocalVariable(name: "event", arg: 1, scope: !702, file: !9, line: 160, type: !302)
!715 = !DILocalVariable(name: "event_header", arg: 2, scope: !702, file: !9, line: 161, type: !705)
!716 = !DILocalVariable(name: "do_mapping", arg: 3, scope: !702, file: !9, line: 162, type: !177)
!717 = !DILocalVariable(name: "efispecid", scope: !702, file: !9, line: 164, type: !318)
!718 = !DILocalVariable(name: "event_field", scope: !702, file: !9, line: 165, type: !335)
!719 = !DILocalVariable(name: "mapping", scope: !702, file: !9, line: 166, type: !73)
!720 = !DILocalVariable(name: "mapping_size", scope: !702, file: !9, line: 167, type: !81)
!721 = !DILocalVariable(name: "marker", scope: !702, file: !9, line: 168, type: !73)
!722 = !DILocalVariable(name: "marker_start", scope: !702, file: !9, line: 169, type: !73)
!723 = !DILocalVariable(name: "halg_size", scope: !702, file: !9, line: 170, type: !67)
!724 = !DILocalVariable(name: "size", scope: !702, file: !9, line: 171, type: !374)
!725 = !DILocalVariable(name: "halg", scope: !702, file: !9, line: 172, type: !166)
!726 = !DILocalVariable(name: "i", scope: !702, file: !9, line: 173, type: !81)
!727 = !DILocalVariable(name: "j", scope: !702, file: !9, line: 174, type: !81)
!728 = !DILocalVariable(name: "count", scope: !702, file: !9, line: 175, type: !67)
!729 = !DILocalVariable(name: "event_type", scope: !702, file: !9, line: 175, type: !67)
!730 = !DILocalVariable(name: "zero_digest", scope: !702, file: !9, line: 176, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 160, elements: !295)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!733 = !DILabel(scope: !702, name: "out", file: !9, line: 288)
!734 = !DILocation(line: 160, column: 79, scope: !702)
!735 = !DILocation(line: 161, column: 29, scope: !702)
!736 = !DILocation(line: 162, column: 12, scope: !702)
!737 = !DILocation(line: 164, column: 2, scope: !702)
!738 = !DILocation(line: 164, column: 36, scope: !702)
!739 = !DILocation(line: 165, column: 2, scope: !702)
!740 = !DILocation(line: 165, column: 26, scope: !702)
!741 = !DILocation(line: 166, column: 2, scope: !702)
!742 = !DILocation(line: 166, column: 8, scope: !702)
!743 = !DILocation(line: 167, column: 2, scope: !702)
!744 = !DILocation(line: 167, column: 6, scope: !702)
!745 = !DILocation(line: 168, column: 2, scope: !702)
!746 = !DILocation(line: 168, column: 8, scope: !702)
!747 = !DILocation(line: 169, column: 2, scope: !702)
!748 = !DILocation(line: 169, column: 8, scope: !702)
!749 = !DILocation(line: 170, column: 2, scope: !702)
!750 = !DILocation(line: 170, column: 6, scope: !702)
!751 = !DILocation(line: 171, column: 2, scope: !702)
!752 = !DILocation(line: 171, column: 9, scope: !702)
!753 = !DILocation(line: 172, column: 2, scope: !702)
!754 = !DILocation(line: 172, column: 6, scope: !702)
!755 = !DILocation(line: 173, column: 2, scope: !702)
!756 = !DILocation(line: 173, column: 6, scope: !702)
!757 = !DILocation(line: 174, column: 2, scope: !702)
!758 = !DILocation(line: 174, column: 6, scope: !702)
!759 = !DILocation(line: 175, column: 2, scope: !702)
!760 = !DILocation(line: 175, column: 6, scope: !702)
!761 = !DILocation(line: 175, column: 13, scope: !702)
!762 = !DILocation(line: 176, column: 2, scope: !702)
!763 = !DILocation(line: 176, column: 11, scope: !702)
!764 = !DILocation(line: 178, column: 11, scope: !702)
!765 = !DILocation(line: 178, column: 9, scope: !702)
!766 = !DILocation(line: 179, column: 17, scope: !702)
!767 = !DILocation(line: 179, column: 15, scope: !702)
!768 = !DILocation(line: 180, column: 11, scope: !702)
!769 = !DILocation(line: 180, column: 18, scope: !702)
!770 = !DILocation(line: 180, column: 43, scope: !702)
!771 = !DILocation(line: 181, column: 3, scope: !702)
!772 = !DILocation(line: 180, column: 9, scope: !702)
!773 = !DILocation(line: 184, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !702, file: !9, line: 184, column: 6)
!775 = !{i8 0, i8 2}
!776 = !{}
!777 = !DILocation(line: 184, column: 6, scope: !702)
!778 = !DILocation(line: 185, column: 18, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !9, line: 184, column: 18)
!780 = !DILocation(line: 185, column: 27, scope: !779)
!781 = !DILocation(line: 185, column: 25, scope: !779)
!782 = !DILocation(line: 185, column: 16, scope: !779)
!783 = !DILocation(line: 186, column: 11, scope: !779)
!784 = !DILocation(line: 188, column: 8, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !9, line: 188, column: 7)
!786 = !DILocation(line: 188, column: 7, scope: !779)
!787 = !DILocation(line: 189, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !9, line: 188, column: 17)
!789 = !DILocation(line: 190, column: 4, scope: !788)
!790 = !DILocation(line: 192, column: 2, scope: !779)
!791 = !DILocation(line: 193, column: 13, scope: !792)
!792 = distinct !DILexicalBlock(scope: !774, file: !9, line: 192, column: 9)
!793 = !DILocation(line: 193, column: 11, scope: !792)
!794 = !DILocation(line: 196, column: 40, scope: !702)
!795 = !DILocation(line: 196, column: 8, scope: !702)
!796 = !DILocation(line: 201, column: 10, scope: !702)
!797 = !DILocation(line: 201, column: 17, scope: !702)
!798 = !DILocation(line: 201, column: 8, scope: !702)
!799 = !DILocation(line: 202, column: 15, scope: !702)
!800 = !DILocation(line: 202, column: 22, scope: !702)
!801 = !DILocation(line: 202, column: 13, scope: !702)
!802 = !DILocation(line: 205, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !702, file: !9, line: 205, column: 6)
!804 = !DILocation(line: 205, column: 20, scope: !803)
!805 = !DILocation(line: 205, column: 28, scope: !803)
!806 = !DILocation(line: 205, column: 33, scope: !803)
!807 = !DILocation(line: 206, column: 6, scope: !803)
!808 = !DILocation(line: 206, column: 20, scope: !803)
!809 = !DILocation(line: 206, column: 31, scope: !803)
!810 = !DILocation(line: 206, column: 44, scope: !803)
!811 = !DILocation(line: 207, column: 13, scope: !803)
!812 = !DILocation(line: 207, column: 27, scope: !803)
!813 = !DILocation(line: 207, column: 35, scope: !803)
!814 = !DILocation(line: 207, column: 6, scope: !803)
!815 = !DILocation(line: 205, column: 6, scope: !702)
!816 = !DILocation(line: 208, column: 8, scope: !817)
!817 = distinct !DILexicalBlock(scope: !803, file: !9, line: 207, column: 70)
!818 = !DILocation(line: 209, column: 3, scope: !817)
!819 = !DILocation(line: 212, column: 50, scope: !702)
!820 = !DILocation(line: 212, column: 64, scope: !702)
!821 = !DILocation(line: 212, column: 12, scope: !702)
!822 = !DILocation(line: 221, column: 13, scope: !823)
!823 = distinct !DILexicalBlock(scope: !702, file: !9, line: 221, column: 6)
!824 = !DILocation(line: 221, column: 24, scope: !823)
!825 = !DILocation(line: 221, column: 6, scope: !823)
!826 = !DILocation(line: 222, column: 30, scope: !823)
!827 = !DILocation(line: 223, column: 7, scope: !823)
!828 = !DILocation(line: 223, column: 18, scope: !823)
!829 = !DILocation(line: 223, column: 27, scope: !823)
!830 = !DILocation(line: 223, column: 30, scope: !823)
!831 = !DILocation(line: 223, column: 39, scope: !823)
!832 = !DILocation(line: 223, column: 50, scope: !823)
!833 = !DILocation(line: 223, column: 36, scope: !823)
!834 = !DILocation(line: 221, column: 6, scope: !702)
!835 = !DILocation(line: 224, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !823, file: !9, line: 223, column: 60)
!837 = !DILocation(line: 225, column: 3, scope: !836)
!838 = !DILocation(line: 228, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !702, file: !9, line: 228, column: 2)
!840 = !DILocation(line: 228, column: 7, scope: !839)
!841 = !DILocation(line: 228, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !9, line: 228, column: 2)
!843 = !DILocation(line: 228, column: 18, scope: !842)
!844 = !DILocation(line: 228, column: 16, scope: !842)
!845 = !DILocation(line: 228, column: 2, scope: !839)
!846 = !DILocation(line: 229, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !9, line: 228, column: 30)
!848 = !DILocation(line: 232, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !847, file: !9, line: 232, column: 7)
!850 = !DILocation(line: 232, column: 7, scope: !847)
!851 = !DILocation(line: 233, column: 4, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !9, line: 232, column: 19)
!853 = !DILocation(line: 233, column: 4, scope: !854)
!854 = distinct !DILexicalBlock(scope: !852, file: !9, line: 233, column: 4)
!855 = !DILocation(line: 234, column: 19, scope: !852)
!856 = !DILocation(line: 234, column: 17, scope: !852)
!857 = !DILocation(line: 235, column: 12, scope: !852)
!858 = !DILocation(line: 237, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !9, line: 237, column: 8)
!860 = !DILocation(line: 237, column: 8, scope: !852)
!861 = !DILocation(line: 238, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !9, line: 237, column: 18)
!863 = !DILocation(line: 239, column: 5, scope: !862)
!864 = !DILocation(line: 241, column: 3, scope: !852)
!865 = !DILocation(line: 242, column: 14, scope: !866)
!866 = distinct !DILexicalBlock(scope: !849, file: !9, line: 241, column: 10)
!867 = !DILocation(line: 242, column: 12, scope: !866)
!868 = !DILocation(line: 245, column: 17, scope: !847)
!869 = !DILocation(line: 245, column: 26, scope: !847)
!870 = !DILocation(line: 245, column: 3, scope: !847)
!871 = !DILocation(line: 246, column: 12, scope: !847)
!872 = !DILocation(line: 246, column: 21, scope: !847)
!873 = !DILocation(line: 246, column: 19, scope: !847)
!874 = !DILocation(line: 246, column: 10, scope: !847)
!875 = !DILocation(line: 248, column: 10, scope: !876)
!876 = distinct !DILexicalBlock(scope: !847, file: !9, line: 248, column: 3)
!877 = !DILocation(line: 248, column: 8, scope: !876)
!878 = !DILocation(line: 248, column: 15, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !9, line: 248, column: 3)
!880 = !DILocation(line: 248, column: 19, scope: !879)
!881 = !DILocation(line: 248, column: 30, scope: !879)
!882 = !DILocation(line: 248, column: 17, scope: !879)
!883 = !DILocation(line: 248, column: 3, scope: !876)
!884 = !DILocation(line: 249, column: 8, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !9, line: 249, column: 8)
!886 = distinct !DILexicalBlock(scope: !879, file: !9, line: 248, column: 45)
!887 = !DILocation(line: 249, column: 16, scope: !885)
!888 = !DILocation(line: 249, column: 27, scope: !885)
!889 = !DILocation(line: 249, column: 40, scope: !885)
!890 = !DILocation(line: 249, column: 43, scope: !885)
!891 = !DILocation(line: 249, column: 13, scope: !885)
!892 = !DILocation(line: 249, column: 8, scope: !886)
!893 = !DILocation(line: 251, column: 6, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !9, line: 249, column: 51)
!895 = !DILocation(line: 251, column: 17, scope: !894)
!896 = !DILocation(line: 251, column: 30, scope: !894)
!897 = !DILocation(line: 251, column: 33, scope: !894)
!898 = !DILocation(line: 250, column: 12, scope: !894)
!899 = !DILocation(line: 252, column: 5, scope: !894)
!900 = !DILocation(line: 254, column: 3, scope: !886)
!901 = !DILocation(line: 248, column: 41, scope: !879)
!902 = !DILocation(line: 248, column: 3, scope: !879)
!903 = distinct !{!903, !883, !904, !625, !626}
!904 = !DILocation(line: 254, column: 3, scope: !876)
!905 = !DILocation(line: 256, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !847, file: !9, line: 256, column: 7)
!907 = !DILocation(line: 256, column: 12, scope: !906)
!908 = !DILocation(line: 256, column: 23, scope: !906)
!909 = !DILocation(line: 256, column: 9, scope: !906)
!910 = !DILocation(line: 256, column: 7, scope: !847)
!911 = !DILocation(line: 257, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !906, file: !9, line: 256, column: 33)
!913 = !DILocation(line: 258, column: 4, scope: !912)
!914 = !DILocation(line: 260, column: 2, scope: !847)
!915 = !DILocation(line: 228, column: 26, scope: !842)
!916 = !DILocation(line: 228, column: 2, scope: !842)
!917 = distinct !{!917, !845, !918, !625, !626}
!918 = !DILocation(line: 260, column: 2, scope: !839)
!919 = !DILocation(line: 266, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !702, file: !9, line: 266, column: 6)
!921 = !DILocation(line: 266, column: 6, scope: !702)
!922 = !DILocation(line: 267, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !9, line: 266, column: 18)
!924 = !DILocation(line: 267, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !9, line: 267, column: 3)
!926 = !DILocation(line: 268, column: 16, scope: !923)
!927 = !DILocation(line: 269, column: 11, scope: !923)
!928 = !DILocation(line: 271, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !923, file: !9, line: 271, column: 7)
!930 = !DILocation(line: 271, column: 7, scope: !923)
!931 = !DILocation(line: 272, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !9, line: 271, column: 17)
!933 = !DILocation(line: 273, column: 4, scope: !932)
!934 = !DILocation(line: 275, column: 2, scope: !923)
!935 = !DILocation(line: 276, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !920, file: !9, line: 275, column: 9)
!937 = !DILocation(line: 276, column: 11, scope: !936)
!938 = !DILocation(line: 279, column: 42, scope: !702)
!939 = !DILocation(line: 279, column: 14, scope: !702)
!940 = !DILocation(line: 281, column: 11, scope: !702)
!941 = !DILocation(line: 281, column: 18, scope: !702)
!942 = !DILocation(line: 282, column: 5, scope: !702)
!943 = !DILocation(line: 282, column: 18, scope: !702)
!944 = !DILocation(line: 282, column: 3, scope: !702)
!945 = !DILocation(line: 281, column: 9, scope: !702)
!946 = !DILocation(line: 283, column: 9, scope: !702)
!947 = !DILocation(line: 283, column: 18, scope: !702)
!948 = !DILocation(line: 283, column: 16, scope: !702)
!949 = !DILocation(line: 283, column: 7, scope: !702)
!950 = !DILocation(line: 285, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !702, file: !9, line: 285, column: 6)
!952 = !DILocation(line: 285, column: 17, scope: !951)
!953 = !DILocation(line: 285, column: 22, scope: !951)
!954 = !DILocation(line: 285, column: 25, scope: !951)
!955 = !DILocation(line: 285, column: 38, scope: !951)
!956 = !DILocation(line: 285, column: 49, scope: !951)
!957 = !DILocation(line: 285, column: 6, scope: !702)
!958 = !DILocation(line: 286, column: 8, scope: !951)
!959 = !DILocation(line: 286, column: 3, scope: !951)
!960 = !DILocation(line: 285, column: 52, scope: !951)
!961 = !DILocation(line: 288, column: 1, scope: !702)
!962 = !DILocation(line: 289, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !702, file: !9, line: 289, column: 6)
!964 = !DILocation(line: 289, column: 6, scope: !702)
!965 = !DILocation(line: 290, column: 3, scope: !963)
!966 = !DILocation(line: 290, column: 3, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !9, line: 290, column: 3)
!968 = !DILocation(line: 291, column: 9, scope: !702)
!969 = !DILocation(line: 292, column: 1, scope: !702)
!970 = !DILocation(line: 291, column: 2, scope: !702)
!971 = !DISubprogram(name: "efi_printk", scope: !16, file: !16, line: 972, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DISubroutineType(types: !973)
!973 = !{!81, !974, null}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!976 = !DISubprogram(name: "get_efi_config_table", scope: !16, file: !16, line: 966, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DISubroutineType(types: !978)
!978 = !{!73, !137}
!979 = !DISubprogram(name: "memset", scope: !980, file: !980, line: 22, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!981 = !DISubroutineType(types: !982)
!982 = !{!73, !73, !81, !374}
!983 = !DISubprogram(name: "memcpy", scope: !980, file: !980, line: 18, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!73, !73, !232, !374}
!986 = distinct !DISubprogram(name: "efi_is_64bit", scope: !673, file: !673, line: 198, type: !674, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!987 = !DILocation(line: 202, column: 9, scope: !986)
!988 = !DILocation(line: 202, column: 2, scope: !986)
!989 = distinct !DISubprogram(name: "ror64", scope: !990, file: !990, line: 115, type: !991, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !993)
!990 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!991 = !DISubroutineType(types: !992)
!992 = !{!63, !63, !17}
!993 = !{!994, !995}
!994 = !DILocalVariable(name: "word", arg: 1, scope: !989, file: !990, line: 115, type: !63)
!995 = !DILocalVariable(name: "shift", arg: 2, scope: !989, file: !990, line: 115, type: !17)
!996 = !DILocation(line: 115, column: 33, scope: !989)
!997 = !DILocation(line: 115, column: 52, scope: !989)
!998 = !DILocation(line: 117, column: 10, scope: !989)
!999 = !DILocation(line: 117, column: 19, scope: !989)
!1000 = !DILocation(line: 117, column: 25, scope: !989)
!1001 = !DILocation(line: 117, column: 15, scope: !989)
!1002 = !DILocation(line: 117, column: 35, scope: !989)
!1003 = !DILocation(line: 117, column: 46, scope: !989)
!1004 = !DILocation(line: 117, column: 45, scope: !989)
!1005 = !DILocation(line: 117, column: 53, scope: !989)
!1006 = !DILocation(line: 117, column: 40, scope: !989)
!1007 = !DILocation(line: 117, column: 32, scope: !989)
!1008 = !DILocation(line: 117, column: 2, scope: !989)
!1009 = distinct !DISubprogram(name: "rol32", scope: !990, file: !990, line: 125, type: !1010, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!68, !68, !17}
!1012 = !{!1013, !1014}
!1013 = !DILocalVariable(name: "word", arg: 1, scope: !1009, file: !990, line: 125, type: !68)
!1014 = !DILocalVariable(name: "shift", arg: 2, scope: !1009, file: !990, line: 125, type: !17)
!1015 = !DILocation(line: 125, column: 33, scope: !1009)
!1016 = !DILocation(line: 125, column: 52, scope: !1009)
!1017 = !DILocation(line: 127, column: 10, scope: !1009)
!1018 = !DILocation(line: 127, column: 19, scope: !1009)
!1019 = !DILocation(line: 127, column: 25, scope: !1009)
!1020 = !DILocation(line: 127, column: 15, scope: !1009)
!1021 = !DILocation(line: 127, column: 35, scope: !1009)
!1022 = !DILocation(line: 127, column: 46, scope: !1009)
!1023 = !DILocation(line: 127, column: 45, scope: !1009)
!1024 = !DILocation(line: 127, column: 53, scope: !1009)
!1025 = !DILocation(line: 127, column: 40, scope: !1009)
!1026 = !DILocation(line: 127, column: 32, scope: !1009)
!1027 = !DILocation(line: 127, column: 2, scope: !1009)
!1028 = !DISubprogram(name: "memcmp", scope: !1029, file: !1029, line: 196, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!81, !232, !232, !375}
