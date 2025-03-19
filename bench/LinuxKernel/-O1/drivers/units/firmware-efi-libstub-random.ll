; ModuleID = 'drivers/firmware/efi/libstub/random.c'
source_filename = "drivers/firmware/efi/libstub/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { ptr, ptr }
%struct.anon.3 = type { i32, i32 }
%struct.anon.4 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_runtime_services_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.linux_efi_random_seed = type { i32, [0 x i8] }

@__const.efi_get_random_bytes.rng_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\A5\BCR1\DE\EA=C\86.\C0\1C\DC)\1FD" }, align 4
@efi_system_table = external hidden global ptr, align 8
@__const.efi_random_get_seed.rng_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\A5\BCR1\DE\EA=C\86.\C0\1C\DC)\1FD" }, align 4
@__const.efi_random_get_seed.rng_algo_raw = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\D7v1\E4\E8\B6'H\B7\84\7F\FD\C4\B6\85a" }, align 4
@__const.efi_random_get_seed.rng_table_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\BC\E5\E1\1C\EB|\F2B\81\E5\8A\AD\F1\80\F5{" }, align 4
@.str = private unnamed_addr constant [11 x i16] [i16 82, i16 97, i16 110, i16 100, i16 111, i16 109, i16 83, i16 101, i16 101, i16 100, i16 0], align 2, !dbg !0
@.str.1 = private unnamed_addr constant [52 x i8] c"\014WARNING: Failed to allocate memory for RNG seed.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [72 x i8] c"\014WARNING: Failed to obtain seed from EFI_RNG_PROTOCOL or EFI variable\0A\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [51 x i8] c"\014WARNING: Retaining bootloader-supplied seed only\00", align 1, !dbg !18
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_get_random_bytes(i64 noundef %size, ptr noundef %out) #0 !dbg !412 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %rng_proto = alloca %struct.guid_t, align 4
  %status = alloca i64, align 8
  %rng = alloca ptr, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__inst = alloca ptr, align 8
  %tmp22 = alloca i64, align 8
  %__pad28 = alloca [3 x i64], align 16
  %tmp32 = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !417, metadata !DIExpression()), !dbg !451
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !418, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 16, ptr %rng_proto) #7, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %rng_proto, metadata !419, metadata !DIExpression()), !dbg !454
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rng_proto, ptr align 4 @__const.efi_get_random_bytes.rng_proto, i64 16, i1 false), !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %status, metadata !420, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #7, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !421, metadata !DIExpression()), !dbg !458
  store ptr null, ptr %rng, align 8, !dbg !458
  %call = call zeroext i1 @efi_is_native() #8, !dbg !459
  br i1 %call, label %cond.true, label %cond.false5, !dbg !459

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !459
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !459

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !459
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !459
  %1 = load ptr, ptr %boottime, align 8, !dbg !459
  br label %cond.end, !dbg !459

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !459
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !459
  %3 = load i32, ptr %boottime3, align 4, !dbg !459
  %conv = zext i32 %3 to i64, !dbg !459
  %4 = inttoptr i64 %conv to ptr, !dbg !459
  br label %cond.end, !dbg !459

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !459
  %locate_protocol = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 38, !dbg !459
  %5 = load ptr, ptr %locate_protocol, align 8, !dbg !459
  %call4 = call win64cc i64 %5(ptr noundef %rng_proto, ptr noundef null, ptr noundef %rng) #8, !dbg !459
  br label %cond.end19, !dbg !459

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !442, metadata !DIExpression()), !dbg !460
  br label %do.body, !dbg !461

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !463

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !463

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !460
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !460

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !460
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !460
  %7 = load ptr, ptr %boottime9, align 8, !dbg !460
  br label %cond.end13, !dbg !460

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !460
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !460
  %9 = load i32, ptr %boottime11, align 4, !dbg !460
  %conv12 = zext i32 %9 to i64, !dbg !460
  %10 = inttoptr i64 %conv12 to ptr, !dbg !460
  br label %cond.end13, !dbg !460

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !460
  %locate_protocol15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 38, !dbg !460
  %11 = load i32, ptr %locate_protocol15, align 4, !dbg !460
  %call16 = call ptr @efi64_zero_upper(ptr noundef %rng) #8, !dbg !460
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !460
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, ptr noundef %rng_proto, ptr noundef null, ptr noundef %call16, ptr noundef %arraydecay) #8, !dbg !460
  store i64 %call17, ptr %tmp, align 8, !dbg !460
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !459
  %12 = load i64, ptr %tmp, align 8, !dbg !460
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #8, !dbg !459
  br label %cond.end19, !dbg !459

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !459
  store i64 %cond20, ptr %status, align 8, !dbg !465
  %13 = load i64, ptr %status, align 8, !dbg !466
  %cmp = icmp ne i64 %13, 0, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %cond.end19
  %14 = load i64, ptr %status, align 8, !dbg !470
  store i64 %14, ptr %retval, align 8, !dbg !471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !471

if.end:                                           ; preds = %cond.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #7, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !447, metadata !DIExpression()), !dbg !472
  %15 = load ptr, ptr %rng, align 8, !dbg !472
  store ptr %15, ptr %__inst, align 8, !dbg !472
  %call23 = call zeroext i1 @efi_is_native() #8, !dbg !472
  br i1 %call23, label %cond.true25, label %cond.false27, !dbg !472

cond.true25:                                      ; preds = %if.end
  %16 = load ptr, ptr %__inst, align 8, !dbg !472
  %get_rng = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 1, !dbg !472
  %17 = load ptr, ptr %get_rng, align 8, !dbg !472
  %18 = load ptr, ptr %__inst, align 8, !dbg !472
  %19 = load i64, ptr %size.addr, align 8, !dbg !472
  %20 = load ptr, ptr %out.addr, align 8, !dbg !472
  %call26 = call win64cc i64 %17(ptr noundef %18, ptr noundef null, i64 noundef %19, ptr noundef %20) #8, !dbg !472
  br label %cond.end37, !dbg !472

cond.false27:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad28) #7, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %__pad28, metadata !449, metadata !DIExpression()), !dbg !473
  br label %do.body29, !dbg !474

do.body29:                                        ; preds = %cond.false27
  br label %do.cond30, !dbg !476

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !476

do.end31:                                         ; preds = %do.cond30
  %21 = load ptr, ptr %__inst, align 8, !dbg !473
  %get_rng33 = getelementptr inbounds %struct.anon.3, ptr %21, i32 0, i32 1, !dbg !473
  %22 = load i32, ptr %get_rng33, align 4, !dbg !473
  %23 = load ptr, ptr %__inst, align 8, !dbg !473
  %24 = load i64, ptr %size.addr, align 8, !dbg !473
  %25 = load ptr, ptr %out.addr, align 8, !dbg !473
  %arraydecay34 = getelementptr inbounds [3 x i64], ptr %__pad28, i64 0, i64 0, !dbg !473
  %call35 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %22, ptr noundef %23, ptr noundef null, i64 noundef %24, ptr noundef %25, ptr noundef %arraydecay34) #8, !dbg !473
  store i64 %call35, ptr %tmp32, align 8, !dbg !473
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad28) #7, !dbg !472
  %26 = load i64, ptr %tmp32, align 8, !dbg !473
  %call36 = call i64 @__efi64_widen_efi_status(i64 noundef %26) #8, !dbg !472
  br label %cond.end37, !dbg !472

cond.end37:                                       ; preds = %do.end31, %cond.true25
  %cond38 = phi i64 [ %call26, %cond.true25 ], [ %call36, %do.end31 ], !dbg !472
  store i64 %cond38, ptr %tmp22, align 8, !dbg !472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #7, !dbg !478
  %27 = load i64, ptr %tmp22, align 8, !dbg !472
  store i64 %27, ptr %retval, align 8, !dbg !479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !479

cleanup:                                          ; preds = %cond.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #7, !dbg !480
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !480
  call void @llvm.lifetime.end.p0(i64 16, ptr %rng_proto) #7, !dbg !480
  %28 = load i64, ptr %retval, align 8, !dbg !480
  ret i64 %28, !dbg !480
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #4 !dbg !481 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #8, !dbg !485
  ret i1 %call, !dbg !486
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #4 !dbg !487 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i64, ptr %status.addr, align 8, !dbg !493
  %conv = trunc i64 %0 to i32, !dbg !493
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #8, !dbg !494
  %conv1 = zext i32 %call to i64, !dbg !494
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #8, !dbg !495
  ret i64 %call2, !dbg !496
}

; Function Attrs: noredzone
declare !dbg !497 hidden i64 @__efi64_thunk(i32 noundef, ...) #5

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #4 !dbg !500 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load ptr, ptr %p.addr, align 8, !dbg !506
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !507
  store i32 0, ptr %arrayidx, align 4, !dbg !508
  %1 = load ptr, ptr %p.addr, align 8, !dbg !509
  ret ptr %1, !dbg !510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i64 @efi_random_get_seed() #0 !dbg !511 {
entry:
  %retval = alloca i64, align 8
  %rng_proto = alloca %struct.guid_t, align 4
  %rng_algo_raw = alloca %struct.guid_t, align 4
  %rng_table_guid = alloca %struct.guid_t, align 4
  %prev_seed = alloca ptr, align 8
  %seed = alloca ptr, align 8
  %prev_seed_size = alloca i32, align 4
  %seed_size = alloca i32, align 4
  %nv_seed_size = alloca i64, align 8
  %offset = alloca i64, align 8
  %rng = alloca ptr, align 8
  %status = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad35 = alloca [3 x i64], align 16
  %tmp39 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad86 = alloca [3 x i64], align 16
  %tmp90 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp117 = alloca i64, align 8
  %__pad124 = alloca [3 x i64], align 16
  %tmp128 = alloca i64, align 8
  %__inst140 = alloca ptr, align 8
  %tmp141 = alloca i64, align 8
  %__pad150 = alloca [3 x i64], align 16
  %tmp154 = alloca i64, align 8
  %__pad188 = alloca [3 x i64], align 16
  %tmp192 = alloca i64, align 8
  %__pad228 = alloca [3 x i64], align 16
  %tmp232 = alloca i64, align 8
  %__pad289 = alloca [3 x i64], align 16
  %tmp293 = alloca i64, align 8
  %__pad332 = alloca [3 x i64], align 16
  %tmp336 = alloca i64, align 8
  %__pad371 = alloca [3 x i64], align 16
  %tmp375 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %rng_proto) #7, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %rng_proto, metadata !515, metadata !DIExpression()), !dbg !569
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rng_proto, ptr align 4 @__const.efi_random_get_seed.rng_proto, i64 16, i1 false), !dbg !569
  call void @llvm.lifetime.start.p0(i64 16, ptr %rng_algo_raw) #7, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %rng_algo_raw, metadata !516, metadata !DIExpression()), !dbg !571
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rng_algo_raw, ptr align 4 @__const.efi_random_get_seed.rng_algo_raw, i64 16, i1 false), !dbg !571
  call void @llvm.lifetime.start.p0(i64 16, ptr %rng_table_guid) #7, !dbg !572
  call void @llvm.dbg.declare(metadata ptr %rng_table_guid, metadata !517, metadata !DIExpression()), !dbg !573
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rng_table_guid, ptr align 4 @__const.efi_random_get_seed.rng_table_guid, i64 16, i1 false), !dbg !573
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_seed) #7, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %prev_seed, metadata !518, metadata !DIExpression()), !dbg !575
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed) #7, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %seed, metadata !527, metadata !DIExpression()), !dbg !576
  store ptr null, ptr %seed, align 8, !dbg !576
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_seed_size) #7, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %prev_seed_size, metadata !528, metadata !DIExpression()), !dbg !578
  store i32 0, ptr %prev_seed_size, align 4, !dbg !578
  call void @llvm.lifetime.start.p0(i64 4, ptr %seed_size) #7, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %seed_size, metadata !529, metadata !DIExpression()), !dbg !579
  store i32 32, ptr %seed_size, align 4, !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %nv_seed_size) #7, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %nv_seed_size, metadata !530, metadata !DIExpression()), !dbg !581
  store i64 0, ptr %nv_seed_size, align 8, !dbg !581
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #7, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !531, metadata !DIExpression()), !dbg !582
  store i64 0, ptr %offset, align 8, !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #7, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !532, metadata !DIExpression()), !dbg !584
  store ptr null, ptr %rng, align 8, !dbg !584
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #7, !dbg !585
  call void @llvm.dbg.declare(metadata ptr %status, metadata !533, metadata !DIExpression()), !dbg !586
  %call = call zeroext i1 @efi_is_native() #8, !dbg !587
  br i1 %call, label %cond.true, label %cond.false5, !dbg !587

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !587
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !587

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !587
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !587
  %1 = load ptr, ptr %boottime, align 8, !dbg !587
  br label %cond.end, !dbg !587

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !587
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !587
  %3 = load i32, ptr %boottime3, align 4, !dbg !587
  %conv = zext i32 %3 to i64, !dbg !587
  %4 = inttoptr i64 %conv to ptr, !dbg !587
  br label %cond.end, !dbg !587

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !587
  %locate_protocol = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 38, !dbg !587
  %5 = load ptr, ptr %locate_protocol, align 8, !dbg !587
  %call4 = call win64cc i64 %5(ptr noundef %rng_proto, ptr noundef null, ptr noundef %rng) #8, !dbg !587
  br label %cond.end19, !dbg !587

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #7, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !534, metadata !DIExpression()), !dbg !588
  br label %do.body, !dbg !589

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !591

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !588
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !588

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !588
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !588
  %7 = load ptr, ptr %boottime9, align 8, !dbg !588
  br label %cond.end13, !dbg !588

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !588
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !588
  %9 = load i32, ptr %boottime11, align 4, !dbg !588
  %conv12 = zext i32 %9 to i64, !dbg !588
  %10 = inttoptr i64 %conv12 to ptr, !dbg !588
  br label %cond.end13, !dbg !588

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !588
  %locate_protocol15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 38, !dbg !588
  %11 = load i32, ptr %locate_protocol15, align 4, !dbg !588
  %call16 = call ptr @efi64_zero_upper(ptr noundef %rng) #8, !dbg !588
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !588
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, ptr noundef %rng_proto, ptr noundef null, ptr noundef %call16, ptr noundef %arraydecay) #8, !dbg !588
  store i64 %call17, ptr %tmp, align 8, !dbg !588
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #7, !dbg !587
  %12 = load i64, ptr %tmp, align 8, !dbg !588
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #8, !dbg !587
  br label %cond.end19, !dbg !587

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !587
  store i64 %cond20, ptr %status, align 8, !dbg !593
  %13 = load i64, ptr %status, align 8, !dbg !594
  %cmp = icmp ne i64 %13, 0, !dbg !596
  br i1 %cmp, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %cond.end19
  store i32 0, ptr %seed_size, align 4, !dbg !598
  br label %if.end, !dbg !599

if.end:                                           ; preds = %if.then, %cond.end19
  %call22 = call zeroext i1 @efi_is_native() #8, !dbg !600
  br i1 %call22, label %cond.true24, label %cond.false34, !dbg !600

cond.true24:                                      ; preds = %if.end
  %call25 = call zeroext i1 @efi_is_native() #8, !dbg !600
  br i1 %call25, label %cond.true27, label %cond.false28, !dbg !600

cond.true27:                                      ; preds = %cond.true24
  %14 = load ptr, ptr @efi_system_table, align 8, !dbg !600
  %runtime = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 9, !dbg !600
  %15 = load ptr, ptr %runtime, align 8, !dbg !600
  br label %cond.end31, !dbg !600

cond.false28:                                     ; preds = %cond.true24
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !600
  %runtime29 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %16, i32 0, i32 9, !dbg !600
  %17 = load i32, ptr %runtime29, align 8, !dbg !600
  %conv30 = zext i32 %17 to i64, !dbg !600
  %18 = inttoptr i64 %conv30 to ptr, !dbg !600
  br label %cond.end31, !dbg !600

cond.end31:                                       ; preds = %cond.false28, %cond.true27
  %cond32 = phi ptr [ %15, %cond.true27 ], [ %18, %cond.false28 ], !dbg !600
  %get_variable = getelementptr inbounds %struct.anon.4, ptr %cond32, i32 0, i32 7, !dbg !600
  %19 = load ptr, ptr %get_variable, align 8, !dbg !600
  %call33 = call win64cc i64 %19(ptr noundef @.str, ptr noundef %rng_table_guid, ptr noundef null, ptr noundef %nv_seed_size, ptr noundef null) #8, !dbg !600
  br label %cond.end53, !dbg !600

cond.false34:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad35) #7, !dbg !601
  call void @llvm.dbg.declare(metadata ptr %__pad35, metadata !536, metadata !DIExpression()), !dbg !601
  br label %do.body36, !dbg !602

do.body36:                                        ; preds = %cond.false34
  br label %do.cond37, !dbg !604

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !604

do.end38:                                         ; preds = %do.cond37
  %call40 = call zeroext i1 @efi_is_native() #8, !dbg !601
  br i1 %call40, label %cond.true42, label %cond.false44, !dbg !601

cond.true42:                                      ; preds = %do.end38
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !601
  %runtime43 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 9, !dbg !601
  %21 = load ptr, ptr %runtime43, align 8, !dbg !601
  br label %cond.end47, !dbg !601

cond.false44:                                     ; preds = %do.end38
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !601
  %runtime45 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %22, i32 0, i32 9, !dbg !601
  %23 = load i32, ptr %runtime45, align 8, !dbg !601
  %conv46 = zext i32 %23 to i64, !dbg !601
  %24 = inttoptr i64 %conv46 to ptr, !dbg !601
  br label %cond.end47, !dbg !601

cond.end47:                                       ; preds = %cond.false44, %cond.true42
  %cond48 = phi ptr [ %21, %cond.true42 ], [ %24, %cond.false44 ], !dbg !601
  %get_variable49 = getelementptr inbounds %struct.efi_runtime_services_32_t, ptr %cond48, i32 0, i32 7, !dbg !601
  %25 = load i32, ptr %get_variable49, align 8, !dbg !601
  %arraydecay50 = getelementptr inbounds [3 x i64], ptr %__pad35, i64 0, i64 0, !dbg !601
  %call51 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %25, ptr noundef @.str, ptr noundef %rng_table_guid, ptr noundef null, ptr noundef %nv_seed_size, ptr noundef null, ptr noundef %arraydecay50) #8, !dbg !601
  store i64 %call51, ptr %tmp39, align 8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad35) #7, !dbg !600
  %26 = load i64, ptr %tmp39, align 8, !dbg !601
  %call52 = call i64 @__efi64_widen_efi_status(i64 noundef %26) #8, !dbg !600
  br label %cond.end53, !dbg !600

cond.end53:                                       ; preds = %cond.end47, %cond.end31
  %cond54 = phi i64 [ %call33, %cond.end31 ], [ %call52, %cond.end47 ], !dbg !600
  %27 = load i32, ptr %seed_size, align 4, !dbg !606
  %tobool = icmp ne i32 %27, 0, !dbg !606
  br i1 %tobool, label %if.end57, label %land.lhs.true, !dbg !608

land.lhs.true:                                    ; preds = %cond.end53
  %28 = load i64, ptr %nv_seed_size, align 8, !dbg !609
  %tobool55 = icmp ne i64 %28, 0, !dbg !609
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !610

if.then56:                                        ; preds = %land.lhs.true
  %29 = load i64, ptr %status, align 8, !dbg !611
  store i64 %29, ptr %retval, align 8, !dbg !612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !612

if.end57:                                         ; preds = %land.lhs.true, %cond.end53
  %30 = load i64, ptr %nv_seed_size, align 8, !dbg !613
  %31 = load i32, ptr %seed_size, align 4, !dbg !614
  %conv58 = sext i32 %31 to i64, !dbg !614
  %add = add i64 %conv58, %30, !dbg !614
  %conv59 = trunc i64 %add to i32, !dbg !614
  store i32 %conv59, ptr %seed_size, align 4, !dbg !614
  %32 = getelementptr inbounds { i64, i64 }, ptr %rng_table_guid, i32 0, i32 0, !dbg !615
  %33 = load i64, ptr %32, align 4, !dbg !615
  %34 = getelementptr inbounds { i64, i64 }, ptr %rng_table_guid, i32 0, i32 1, !dbg !615
  %35 = load i64, ptr %34, align 4, !dbg !615
  %call60 = call ptr @get_efi_config_table(i64 %33, i64 %35) #8, !dbg !615
  store ptr %call60, ptr %prev_seed, align 8, !dbg !616
  %36 = load ptr, ptr %prev_seed, align 8, !dbg !617
  %tobool61 = icmp ne ptr %36, null, !dbg !617
  br i1 %tobool61, label %land.lhs.true62, label %if.end68, !dbg !619

land.lhs.true62:                                  ; preds = %if.end57
  %37 = load ptr, ptr %prev_seed, align 8, !dbg !620
  %size = getelementptr inbounds %struct.linux_efi_random_seed, ptr %37, i32 0, i32 0, !dbg !621
  %38 = load i32, ptr %size, align 4, !dbg !621
  %cmp63 = icmp ule i32 %38, 512, !dbg !622
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !623

if.then65:                                        ; preds = %land.lhs.true62
  %39 = load ptr, ptr %prev_seed, align 8, !dbg !624
  %size66 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %39, i32 0, i32 0, !dbg !626
  %40 = load i32, ptr %size66, align 4, !dbg !626
  store i32 %40, ptr %prev_seed_size, align 4, !dbg !627
  %41 = load i32, ptr %prev_seed_size, align 4, !dbg !628
  %42 = load i32, ptr %seed_size, align 4, !dbg !629
  %add67 = add nsw i32 %42, %41, !dbg !629
  store i32 %add67, ptr %seed_size, align 4, !dbg !629
  br label %if.end68, !dbg !630

if.end68:                                         ; preds = %if.then65, %land.lhs.true62, %if.end57
  %call69 = call zeroext i1 @efi_is_native() #8, !dbg !631
  br i1 %call69, label %cond.true71, label %cond.false85, !dbg !631

cond.true71:                                      ; preds = %if.end68
  %call72 = call zeroext i1 @efi_is_native() #8, !dbg !631
  br i1 %call72, label %cond.true74, label %cond.false76, !dbg !631

cond.true74:                                      ; preds = %cond.true71
  %43 = load ptr, ptr @efi_system_table, align 8, !dbg !631
  %boottime75 = getelementptr inbounds %struct.anon.1, ptr %43, i32 0, i32 10, !dbg !631
  %44 = load ptr, ptr %boottime75, align 8, !dbg !631
  br label %cond.end79, !dbg !631

cond.false76:                                     ; preds = %cond.true71
  %45 = load ptr, ptr @efi_system_table, align 8, !dbg !631
  %boottime77 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %45, i32 0, i32 10, !dbg !631
  %46 = load i32, ptr %boottime77, align 4, !dbg !631
  %conv78 = zext i32 %46 to i64, !dbg !631
  %47 = inttoptr i64 %conv78 to ptr, !dbg !631
  br label %cond.end79, !dbg !631

cond.end79:                                       ; preds = %cond.false76, %cond.true74
  %cond80 = phi ptr [ %44, %cond.true74 ], [ %47, %cond.false76 ], !dbg !631
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond80, i32 0, i32 6, !dbg !631
  %48 = load ptr, ptr %allocate_pool, align 8, !dbg !631
  %49 = load i32, ptr %seed_size, align 4, !dbg !631
  %conv81 = sext i32 %49 to i64, !dbg !631
  %call82 = call i64 @size_mul(i64 noundef %conv81, i64 noundef 1) #8, !dbg !631
  %call83 = call i64 @size_add(i64 noundef 4, i64 noundef %call82) #8, !dbg !631
  %call84 = call win64cc i64 %48(i32 noundef 9, i64 noundef %call83, ptr noundef %seed) #8, !dbg !631
  br label %cond.end108, !dbg !631

cond.false85:                                     ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad86) #7, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %__pad86, metadata !538, metadata !DIExpression()), !dbg !632
  br label %do.body87, !dbg !633

do.body87:                                        ; preds = %cond.false85
  br label %do.cond88, !dbg !635

do.cond88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !635

do.end89:                                         ; preds = %do.cond88
  %call91 = call zeroext i1 @efi_is_native() #8, !dbg !632
  br i1 %call91, label %cond.true93, label %cond.false95, !dbg !632

cond.true93:                                      ; preds = %do.end89
  %50 = load ptr, ptr @efi_system_table, align 8, !dbg !632
  %boottime94 = getelementptr inbounds %struct.anon.1, ptr %50, i32 0, i32 10, !dbg !632
  %51 = load ptr, ptr %boottime94, align 8, !dbg !632
  br label %cond.end98, !dbg !632

cond.false95:                                     ; preds = %do.end89
  %52 = load ptr, ptr @efi_system_table, align 8, !dbg !632
  %boottime96 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %52, i32 0, i32 10, !dbg !632
  %53 = load i32, ptr %boottime96, align 4, !dbg !632
  %conv97 = zext i32 %53 to i64, !dbg !632
  %54 = inttoptr i64 %conv97 to ptr, !dbg !632
  br label %cond.end98, !dbg !632

cond.end98:                                       ; preds = %cond.false95, %cond.true93
  %cond99 = phi ptr [ %51, %cond.true93 ], [ %54, %cond.false95 ], !dbg !632
  %allocate_pool100 = getelementptr inbounds %struct.anon.0, ptr %cond99, i32 0, i32 6, !dbg !632
  %55 = load i32, ptr %allocate_pool100, align 4, !dbg !632
  %56 = load i32, ptr %seed_size, align 4, !dbg !632
  %conv101 = sext i32 %56 to i64, !dbg !632
  %call102 = call i64 @size_mul(i64 noundef %conv101, i64 noundef 1) #8, !dbg !632
  %call103 = call i64 @size_add(i64 noundef 4, i64 noundef %call102) #8, !dbg !632
  %call104 = call ptr @efi64_zero_upper(ptr noundef %seed) #8, !dbg !632
  %arraydecay105 = getelementptr inbounds [3 x i64], ptr %__pad86, i64 0, i64 0, !dbg !632
  %call106 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %55, i32 noundef 9, i64 noundef %call103, ptr noundef %call104, ptr noundef %arraydecay105) #8, !dbg !632
  store i64 %call106, ptr %tmp90, align 8, !dbg !632
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad86) #7, !dbg !631
  %57 = load i64, ptr %tmp90, align 8, !dbg !632
  %call107 = call i64 @__efi64_widen_efi_status(i64 noundef %57) #8, !dbg !631
  br label %cond.end108, !dbg !631

cond.end108:                                      ; preds = %cond.end98, %cond.end79
  %cond109 = phi i64 [ %call84, %cond.end79 ], [ %call107, %cond.end98 ], !dbg !631
  store i64 %cond109, ptr %status, align 8, !dbg !637
  %58 = load i64, ptr %status, align 8, !dbg !638
  %cmp110 = icmp ne i64 %58, 0, !dbg !640
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !641

if.then112:                                       ; preds = %cond.end108
  %call113 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.1) #8, !dbg !642
  br label %err_warn, !dbg !644

if.end114:                                        ; preds = %cond.end108
  %59 = load ptr, ptr %rng, align 8, !dbg !645
  %tobool115 = icmp ne ptr %59, null, !dbg !645
  br i1 %tobool115, label %if.then116, label %if.end168, !dbg !646

if.then116:                                       ; preds = %if.end114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #7, !dbg !647
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !540, metadata !DIExpression()), !dbg !647
  %60 = load ptr, ptr %rng, align 8, !dbg !647
  store ptr %60, ptr %__inst, align 8, !dbg !647
  %call118 = call zeroext i1 @efi_is_native() #8, !dbg !647
  br i1 %call118, label %cond.true120, label %cond.false123, !dbg !647

cond.true120:                                     ; preds = %if.then116
  %61 = load ptr, ptr %__inst, align 8, !dbg !647
  %get_rng = getelementptr inbounds %struct.anon.2, ptr %61, i32 0, i32 1, !dbg !647
  %62 = load ptr, ptr %get_rng, align 8, !dbg !647
  %63 = load ptr, ptr %__inst, align 8, !dbg !647
  %64 = load ptr, ptr %seed, align 8, !dbg !647
  %bits = getelementptr inbounds %struct.linux_efi_random_seed, ptr %64, i32 0, i32 1, !dbg !647
  %arraydecay121 = getelementptr inbounds [0 x i8], ptr %bits, i64 0, i64 0, !dbg !647
  %call122 = call win64cc i64 %62(ptr noundef %63, ptr noundef %rng_algo_raw, i64 noundef 32, ptr noundef %arraydecay121) #8, !dbg !647
  br label %cond.end135, !dbg !647

cond.false123:                                    ; preds = %if.then116
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad124) #7, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %__pad124, metadata !544, metadata !DIExpression()), !dbg !648
  br label %do.body125, !dbg !649

do.body125:                                       ; preds = %cond.false123
  br label %do.cond126, !dbg !651

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !651

do.end127:                                        ; preds = %do.cond126
  %65 = load ptr, ptr %__inst, align 8, !dbg !648
  %get_rng129 = getelementptr inbounds %struct.anon.3, ptr %65, i32 0, i32 1, !dbg !648
  %66 = load i32, ptr %get_rng129, align 4, !dbg !648
  %67 = load ptr, ptr %__inst, align 8, !dbg !648
  %68 = load ptr, ptr %seed, align 8, !dbg !648
  %bits130 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %68, i32 0, i32 1, !dbg !648
  %arraydecay131 = getelementptr inbounds [0 x i8], ptr %bits130, i64 0, i64 0, !dbg !648
  %arraydecay132 = getelementptr inbounds [3 x i64], ptr %__pad124, i64 0, i64 0, !dbg !648
  %call133 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %66, ptr noundef %67, ptr noundef %rng_algo_raw, i32 noundef 32, ptr noundef %arraydecay131, ptr noundef %arraydecay132) #8, !dbg !648
  store i64 %call133, ptr %tmp128, align 8, !dbg !648
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad124) #7, !dbg !647
  %69 = load i64, ptr %tmp128, align 8, !dbg !648
  %call134 = call i64 @__efi64_widen_efi_status(i64 noundef %69) #8, !dbg !647
  br label %cond.end135, !dbg !647

cond.end135:                                      ; preds = %do.end127, %cond.true120
  %cond136 = phi i64 [ %call122, %cond.true120 ], [ %call134, %do.end127 ], !dbg !647
  store i64 %cond136, ptr %tmp117, align 8, !dbg !647
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #7, !dbg !653
  %70 = load i64, ptr %tmp117, align 8, !dbg !647
  store i64 %70, ptr %status, align 8, !dbg !654
  %71 = load i64, ptr %status, align 8, !dbg !655
  %cmp137 = icmp eq i64 %71, -9223372036854775805, !dbg !656
  br i1 %cmp137, label %if.then139, label %if.end163, !dbg !657

if.then139:                                       ; preds = %cond.end135
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst140) #7, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %__inst140, metadata !546, metadata !DIExpression()), !dbg !658
  %72 = load ptr, ptr %rng, align 8, !dbg !658
  store ptr %72, ptr %__inst140, align 8, !dbg !658
  %call142 = call zeroext i1 @efi_is_native() #8, !dbg !658
  br i1 %call142, label %cond.true144, label %cond.false149, !dbg !658

cond.true144:                                     ; preds = %if.then139
  %73 = load ptr, ptr %__inst140, align 8, !dbg !658
  %get_rng145 = getelementptr inbounds %struct.anon.2, ptr %73, i32 0, i32 1, !dbg !658
  %74 = load ptr, ptr %get_rng145, align 8, !dbg !658
  %75 = load ptr, ptr %__inst140, align 8, !dbg !658
  %76 = load ptr, ptr %seed, align 8, !dbg !658
  %bits146 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %76, i32 0, i32 1, !dbg !658
  %arraydecay147 = getelementptr inbounds [0 x i8], ptr %bits146, i64 0, i64 0, !dbg !658
  %call148 = call win64cc i64 %74(ptr noundef %75, ptr noundef null, i64 noundef 32, ptr noundef %arraydecay147) #8, !dbg !658
  br label %cond.end161, !dbg !658

cond.false149:                                    ; preds = %if.then139
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad150) #7, !dbg !659
  call void @llvm.dbg.declare(metadata ptr %__pad150, metadata !549, metadata !DIExpression()), !dbg !659
  br label %do.body151, !dbg !660

do.body151:                                       ; preds = %cond.false149
  br label %do.cond152, !dbg !662

do.cond152:                                       ; preds = %do.body151
  br label %do.end153, !dbg !662

do.end153:                                        ; preds = %do.cond152
  %77 = load ptr, ptr %__inst140, align 8, !dbg !659
  %get_rng155 = getelementptr inbounds %struct.anon.3, ptr %77, i32 0, i32 1, !dbg !659
  %78 = load i32, ptr %get_rng155, align 4, !dbg !659
  %79 = load ptr, ptr %__inst140, align 8, !dbg !659
  %80 = load ptr, ptr %seed, align 8, !dbg !659
  %bits156 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %80, i32 0, i32 1, !dbg !659
  %arraydecay157 = getelementptr inbounds [0 x i8], ptr %bits156, i64 0, i64 0, !dbg !659
  %arraydecay158 = getelementptr inbounds [3 x i64], ptr %__pad150, i64 0, i64 0, !dbg !659
  %call159 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %78, ptr noundef %79, ptr noundef null, i32 noundef 32, ptr noundef %arraydecay157, ptr noundef %arraydecay158) #8, !dbg !659
  store i64 %call159, ptr %tmp154, align 8, !dbg !659
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad150) #7, !dbg !658
  %81 = load i64, ptr %tmp154, align 8, !dbg !659
  %call160 = call i64 @__efi64_widen_efi_status(i64 noundef %81) #8, !dbg !658
  br label %cond.end161, !dbg !658

cond.end161:                                      ; preds = %do.end153, %cond.true144
  %cond162 = phi i64 [ %call148, %cond.true144 ], [ %call160, %do.end153 ], !dbg !658
  store i64 %cond162, ptr %tmp141, align 8, !dbg !658
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst140) #7, !dbg !664
  %82 = load i64, ptr %tmp141, align 8, !dbg !658
  store i64 %82, ptr %status, align 8, !dbg !665
  br label %if.end163, !dbg !666

if.end163:                                        ; preds = %cond.end161, %cond.end135
  %83 = load i64, ptr %status, align 8, !dbg !667
  %cmp164 = icmp eq i64 %83, 0, !dbg !669
  br i1 %cmp164, label %if.then166, label %if.end167, !dbg !670

if.then166:                                       ; preds = %if.end163
  store i64 32, ptr %offset, align 8, !dbg !671
  br label %if.end167, !dbg !672

if.end167:                                        ; preds = %if.then166, %if.end163
  br label %if.end168, !dbg !673

if.end168:                                        ; preds = %if.end167, %if.end114
  %84 = load i64, ptr %nv_seed_size, align 8, !dbg !674
  %tobool169 = icmp ne i64 %84, 0, !dbg !674
  br i1 %tobool169, label %if.then170, label %if.end257, !dbg !675

if.then170:                                       ; preds = %if.end168
  %call171 = call zeroext i1 @efi_is_native() #8, !dbg !676
  br i1 %call171, label %cond.true173, label %cond.false187, !dbg !676

cond.true173:                                     ; preds = %if.then170
  %call174 = call zeroext i1 @efi_is_native() #8, !dbg !676
  br i1 %call174, label %cond.true176, label %cond.false178, !dbg !676

cond.true176:                                     ; preds = %cond.true173
  %85 = load ptr, ptr @efi_system_table, align 8, !dbg !676
  %runtime177 = getelementptr inbounds %struct.anon.1, ptr %85, i32 0, i32 9, !dbg !676
  %86 = load ptr, ptr %runtime177, align 8, !dbg !676
  br label %cond.end181, !dbg !676

cond.false178:                                    ; preds = %cond.true173
  %87 = load ptr, ptr @efi_system_table, align 8, !dbg !676
  %runtime179 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %87, i32 0, i32 9, !dbg !676
  %88 = load i32, ptr %runtime179, align 8, !dbg !676
  %conv180 = zext i32 %88 to i64, !dbg !676
  %89 = inttoptr i64 %conv180 to ptr, !dbg !676
  br label %cond.end181, !dbg !676

cond.end181:                                      ; preds = %cond.false178, %cond.true176
  %cond182 = phi ptr [ %86, %cond.true176 ], [ %89, %cond.false178 ], !dbg !676
  %get_variable183 = getelementptr inbounds %struct.anon.4, ptr %cond182, i32 0, i32 7, !dbg !676
  %90 = load ptr, ptr %get_variable183, align 8, !dbg !676
  %91 = load ptr, ptr %seed, align 8, !dbg !676
  %bits184 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %91, i32 0, i32 1, !dbg !676
  %arraydecay185 = getelementptr inbounds [0 x i8], ptr %bits184, i64 0, i64 0, !dbg !676
  %92 = load i64, ptr %offset, align 8, !dbg !676
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay185, i64 %92, !dbg !676
  %call186 = call win64cc i64 %90(ptr noundef @.str, ptr noundef %rng_table_guid, ptr noundef null, ptr noundef %nv_seed_size, ptr noundef %add.ptr) #8, !dbg !676
  br label %cond.end209, !dbg !676

cond.false187:                                    ; preds = %if.then170
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad188) #7, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %__pad188, metadata !551, metadata !DIExpression()), !dbg !677
  br label %do.body189, !dbg !678

do.body189:                                       ; preds = %cond.false187
  br label %do.cond190, !dbg !680

do.cond190:                                       ; preds = %do.body189
  br label %do.end191, !dbg !680

do.end191:                                        ; preds = %do.cond190
  %call193 = call zeroext i1 @efi_is_native() #8, !dbg !677
  br i1 %call193, label %cond.true195, label %cond.false197, !dbg !677

cond.true195:                                     ; preds = %do.end191
  %93 = load ptr, ptr @efi_system_table, align 8, !dbg !677
  %runtime196 = getelementptr inbounds %struct.anon.1, ptr %93, i32 0, i32 9, !dbg !677
  %94 = load ptr, ptr %runtime196, align 8, !dbg !677
  br label %cond.end200, !dbg !677

cond.false197:                                    ; preds = %do.end191
  %95 = load ptr, ptr @efi_system_table, align 8, !dbg !677
  %runtime198 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %95, i32 0, i32 9, !dbg !677
  %96 = load i32, ptr %runtime198, align 8, !dbg !677
  %conv199 = zext i32 %96 to i64, !dbg !677
  %97 = inttoptr i64 %conv199 to ptr, !dbg !677
  br label %cond.end200, !dbg !677

cond.end200:                                      ; preds = %cond.false197, %cond.true195
  %cond201 = phi ptr [ %94, %cond.true195 ], [ %97, %cond.false197 ], !dbg !677
  %get_variable202 = getelementptr inbounds %struct.efi_runtime_services_32_t, ptr %cond201, i32 0, i32 7, !dbg !677
  %98 = load i32, ptr %get_variable202, align 8, !dbg !677
  %99 = load ptr, ptr %seed, align 8, !dbg !677
  %bits203 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %99, i32 0, i32 1, !dbg !677
  %arraydecay204 = getelementptr inbounds [0 x i8], ptr %bits203, i64 0, i64 0, !dbg !677
  %100 = load i64, ptr %offset, align 8, !dbg !677
  %add.ptr205 = getelementptr inbounds i8, ptr %arraydecay204, i64 %100, !dbg !677
  %arraydecay206 = getelementptr inbounds [3 x i64], ptr %__pad188, i64 0, i64 0, !dbg !677
  %call207 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %98, ptr noundef @.str, ptr noundef %rng_table_guid, ptr noundef null, ptr noundef %nv_seed_size, ptr noundef %add.ptr205, ptr noundef %arraydecay206) #8, !dbg !677
  store i64 %call207, ptr %tmp192, align 8, !dbg !677
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad188) #7, !dbg !676
  %101 = load i64, ptr %tmp192, align 8, !dbg !677
  %call208 = call i64 @__efi64_widen_efi_status(i64 noundef %101) #8, !dbg !676
  br label %cond.end209, !dbg !676

cond.end209:                                      ; preds = %cond.end200, %cond.end181
  %cond210 = phi i64 [ %call186, %cond.end181 ], [ %call208, %cond.end200 ], !dbg !676
  store i64 %cond210, ptr %status, align 8, !dbg !682
  %102 = load i64, ptr %status, align 8, !dbg !683
  %cmp211 = icmp eq i64 %102, 0, !dbg !684
  br i1 %cmp211, label %if.then213, label %if.end248, !dbg !685

if.then213:                                       ; preds = %cond.end209
  %call214 = call zeroext i1 @efi_is_native() #8, !dbg !686
  br i1 %call214, label %cond.true216, label %cond.false227, !dbg !686

cond.true216:                                     ; preds = %if.then213
  %call217 = call zeroext i1 @efi_is_native() #8, !dbg !686
  br i1 %call217, label %cond.true219, label %cond.false221, !dbg !686

cond.true219:                                     ; preds = %cond.true216
  %103 = load ptr, ptr @efi_system_table, align 8, !dbg !686
  %runtime220 = getelementptr inbounds %struct.anon.1, ptr %103, i32 0, i32 9, !dbg !686
  %104 = load ptr, ptr %runtime220, align 8, !dbg !686
  br label %cond.end224, !dbg !686

cond.false221:                                    ; preds = %cond.true216
  %105 = load ptr, ptr @efi_system_table, align 8, !dbg !686
  %runtime222 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %105, i32 0, i32 9, !dbg !686
  %106 = load i32, ptr %runtime222, align 8, !dbg !686
  %conv223 = zext i32 %106 to i64, !dbg !686
  %107 = inttoptr i64 %conv223 to ptr, !dbg !686
  br label %cond.end224, !dbg !686

cond.end224:                                      ; preds = %cond.false221, %cond.true219
  %cond225 = phi ptr [ %104, %cond.true219 ], [ %107, %cond.false221 ], !dbg !686
  %set_variable = getelementptr inbounds %struct.anon.4, ptr %cond225, i32 0, i32 9, !dbg !686
  %108 = load ptr, ptr %set_variable, align 8, !dbg !686
  %call226 = call win64cc i64 %108(ptr noundef @.str, ptr noundef %rng_table_guid, i32 noundef 0, i64 noundef 0, ptr noundef null) #8, !dbg !686
  br label %cond.end246, !dbg !686

cond.false227:                                    ; preds = %if.then213
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad228) #7, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %__pad228, metadata !555, metadata !DIExpression()), !dbg !687
  br label %do.body229, !dbg !688

do.body229:                                       ; preds = %cond.false227
  br label %do.cond230, !dbg !690

do.cond230:                                       ; preds = %do.body229
  br label %do.end231, !dbg !690

do.end231:                                        ; preds = %do.cond230
  %call233 = call zeroext i1 @efi_is_native() #8, !dbg !687
  br i1 %call233, label %cond.true235, label %cond.false237, !dbg !687

cond.true235:                                     ; preds = %do.end231
  %109 = load ptr, ptr @efi_system_table, align 8, !dbg !687
  %runtime236 = getelementptr inbounds %struct.anon.1, ptr %109, i32 0, i32 9, !dbg !687
  %110 = load ptr, ptr %runtime236, align 8, !dbg !687
  br label %cond.end240, !dbg !687

cond.false237:                                    ; preds = %do.end231
  %111 = load ptr, ptr @efi_system_table, align 8, !dbg !687
  %runtime238 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %111, i32 0, i32 9, !dbg !687
  %112 = load i32, ptr %runtime238, align 8, !dbg !687
  %conv239 = zext i32 %112 to i64, !dbg !687
  %113 = inttoptr i64 %conv239 to ptr, !dbg !687
  br label %cond.end240, !dbg !687

cond.end240:                                      ; preds = %cond.false237, %cond.true235
  %cond241 = phi ptr [ %110, %cond.true235 ], [ %113, %cond.false237 ], !dbg !687
  %set_variable242 = getelementptr inbounds %struct.efi_runtime_services_32_t, ptr %cond241, i32 0, i32 9, !dbg !687
  %114 = load i32, ptr %set_variable242, align 8, !dbg !687
  %arraydecay243 = getelementptr inbounds [3 x i64], ptr %__pad228, i64 0, i64 0, !dbg !687
  %call244 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %114, ptr noundef @.str, ptr noundef %rng_table_guid, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %arraydecay243) #8, !dbg !687
  store i64 %call244, ptr %tmp232, align 8, !dbg !687
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad228) #7, !dbg !686
  %115 = load i64, ptr %tmp232, align 8, !dbg !687
  %call245 = call i64 @__efi64_widen_efi_status(i64 noundef %115) #8, !dbg !686
  br label %cond.end246, !dbg !686

cond.end246:                                      ; preds = %cond.end240, %cond.end224
  %cond247 = phi i64 [ %call226, %cond.end224 ], [ %call245, %cond.end240 ], !dbg !686
  store i64 %cond247, ptr %status, align 8, !dbg !692
  br label %if.end248, !dbg !693

if.end248:                                        ; preds = %cond.end246, %cond.end209
  %116 = load i64, ptr %status, align 8, !dbg !694
  %cmp249 = icmp eq i64 %116, 0, !dbg !696
  br i1 %cmp249, label %if.then251, label %if.else, !dbg !697

if.then251:                                       ; preds = %if.end248
  %117 = load i64, ptr %nv_seed_size, align 8, !dbg !698
  %118 = load i64, ptr %offset, align 8, !dbg !699
  %add252 = add i64 %118, %117, !dbg !699
  store i64 %add252, ptr %offset, align 8, !dbg !699
  br label %if.end256, !dbg !700

if.else:                                          ; preds = %if.end248
  %119 = load ptr, ptr %seed, align 8, !dbg !701
  %bits253 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %119, i32 0, i32 1, !dbg !702
  %arraydecay254 = getelementptr inbounds [0 x i8], ptr %bits253, i64 0, i64 0, !dbg !701
  %120 = load i64, ptr %offset, align 8, !dbg !703
  %add.ptr255 = getelementptr inbounds i8, ptr %arraydecay254, i64 %120, !dbg !704
  %121 = load i64, ptr %nv_seed_size, align 8, !dbg !705
  call void @memzero_explicit(ptr noundef %add.ptr255, i64 noundef %121) #8, !dbg !706
  br label %if.end256

if.end256:                                        ; preds = %if.else, %if.then251
  br label %if.end257, !dbg !707

if.end257:                                        ; preds = %if.end256, %if.end168
  %122 = load i64, ptr %offset, align 8, !dbg !708
  %tobool258 = icmp ne i64 %122, 0, !dbg !708
  br i1 %tobool258, label %if.end260, label %if.then259, !dbg !710

if.then259:                                       ; preds = %if.end257
  br label %err_freepool, !dbg !711

if.end260:                                        ; preds = %if.end257
  %123 = load i32, ptr %prev_seed_size, align 4, !dbg !712
  %tobool261 = icmp ne i32 %123, 0, !dbg !712
  br i1 %tobool261, label %if.then262, label %if.end272, !dbg !714

if.then262:                                       ; preds = %if.end260
  %124 = load ptr, ptr %seed, align 8, !dbg !715
  %bits263 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %124, i32 0, i32 1, !dbg !717
  %arraydecay264 = getelementptr inbounds [0 x i8], ptr %bits263, i64 0, i64 0, !dbg !715
  %125 = load i64, ptr %offset, align 8, !dbg !718
  %add.ptr265 = getelementptr inbounds i8, ptr %arraydecay264, i64 %125, !dbg !719
  %126 = load ptr, ptr %prev_seed, align 8, !dbg !720
  %bits266 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %126, i32 0, i32 1, !dbg !721
  %arraydecay267 = getelementptr inbounds [0 x i8], ptr %bits266, i64 0, i64 0, !dbg !720
  %127 = load i32, ptr %prev_seed_size, align 4, !dbg !722
  %conv268 = sext i32 %127 to i64, !dbg !722
  %call269 = call ptr @memcpy(ptr noundef %add.ptr265, ptr noundef %arraydecay267, i64 noundef %conv268) #8, !dbg !723
  %128 = load i32, ptr %prev_seed_size, align 4, !dbg !724
  %conv270 = sext i32 %128 to i64, !dbg !724
  %129 = load i64, ptr %offset, align 8, !dbg !725
  %add271 = add i64 %129, %conv270, !dbg !725
  store i64 %add271, ptr %offset, align 8, !dbg !725
  br label %if.end272, !dbg !726

if.end272:                                        ; preds = %if.then262, %if.end260
  %130 = load i64, ptr %offset, align 8, !dbg !727
  %conv273 = trunc i64 %130 to i32, !dbg !727
  %131 = load ptr, ptr %seed, align 8, !dbg !728
  %size274 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %131, i32 0, i32 0, !dbg !729
  store i32 %conv273, ptr %size274, align 4, !dbg !730
  %call275 = call zeroext i1 @efi_is_native() #8, !dbg !731
  br i1 %call275, label %cond.true277, label %cond.false288, !dbg !731

cond.true277:                                     ; preds = %if.end272
  %call278 = call zeroext i1 @efi_is_native() #8, !dbg !731
  br i1 %call278, label %cond.true280, label %cond.false282, !dbg !731

cond.true280:                                     ; preds = %cond.true277
  %132 = load ptr, ptr @efi_system_table, align 8, !dbg !731
  %boottime281 = getelementptr inbounds %struct.anon.1, ptr %132, i32 0, i32 10, !dbg !731
  %133 = load ptr, ptr %boottime281, align 8, !dbg !731
  br label %cond.end285, !dbg !731

cond.false282:                                    ; preds = %cond.true277
  %134 = load ptr, ptr @efi_system_table, align 8, !dbg !731
  %boottime283 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %134, i32 0, i32 10, !dbg !731
  %135 = load i32, ptr %boottime283, align 4, !dbg !731
  %conv284 = zext i32 %135 to i64, !dbg !731
  %136 = inttoptr i64 %conv284 to ptr, !dbg !731
  br label %cond.end285, !dbg !731

cond.end285:                                      ; preds = %cond.false282, %cond.true280
  %cond286 = phi ptr [ %133, %cond.true280 ], [ %136, %cond.false282 ], !dbg !731
  %install_configuration_table = getelementptr inbounds %struct.anon, ptr %cond286, i32 0, i32 22, !dbg !731
  %137 = load ptr, ptr %install_configuration_table, align 8, !dbg !731
  %138 = load ptr, ptr %seed, align 8, !dbg !731
  %call287 = call win64cc i64 %137(ptr noundef %rng_table_guid, ptr noundef %138) #8, !dbg !731
  br label %cond.end307, !dbg !731

cond.false288:                                    ; preds = %if.end272
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad289) #7, !dbg !732
  call void @llvm.dbg.declare(metadata ptr %__pad289, metadata !558, metadata !DIExpression()), !dbg !732
  br label %do.body290, !dbg !733

do.body290:                                       ; preds = %cond.false288
  br label %do.cond291, !dbg !735

do.cond291:                                       ; preds = %do.body290
  br label %do.end292, !dbg !735

do.end292:                                        ; preds = %do.cond291
  %call294 = call zeroext i1 @efi_is_native() #8, !dbg !732
  br i1 %call294, label %cond.true296, label %cond.false298, !dbg !732

cond.true296:                                     ; preds = %do.end292
  %139 = load ptr, ptr @efi_system_table, align 8, !dbg !732
  %boottime297 = getelementptr inbounds %struct.anon.1, ptr %139, i32 0, i32 10, !dbg !732
  %140 = load ptr, ptr %boottime297, align 8, !dbg !732
  br label %cond.end301, !dbg !732

cond.false298:                                    ; preds = %do.end292
  %141 = load ptr, ptr @efi_system_table, align 8, !dbg !732
  %boottime299 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %141, i32 0, i32 10, !dbg !732
  %142 = load i32, ptr %boottime299, align 4, !dbg !732
  %conv300 = zext i32 %142 to i64, !dbg !732
  %143 = inttoptr i64 %conv300 to ptr, !dbg !732
  br label %cond.end301, !dbg !732

cond.end301:                                      ; preds = %cond.false298, %cond.true296
  %cond302 = phi ptr [ %140, %cond.true296 ], [ %143, %cond.false298 ], !dbg !732
  %install_configuration_table303 = getelementptr inbounds %struct.anon.0, ptr %cond302, i32 0, i32 22, !dbg !732
  %144 = load i32, ptr %install_configuration_table303, align 4, !dbg !732
  %145 = load ptr, ptr %seed, align 8, !dbg !732
  %arraydecay304 = getelementptr inbounds [3 x i64], ptr %__pad289, i64 0, i64 0, !dbg !732
  %call305 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %144, ptr noundef %rng_table_guid, ptr noundef %145, ptr noundef %arraydecay304) #8, !dbg !732
  store i64 %call305, ptr %tmp293, align 8, !dbg !732
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad289) #7, !dbg !731
  %146 = load i64, ptr %tmp293, align 8, !dbg !732
  %call306 = call i64 @__efi64_widen_efi_status(i64 noundef %146) #8, !dbg !731
  br label %cond.end307, !dbg !731

cond.end307:                                      ; preds = %cond.end301, %cond.end285
  %cond308 = phi i64 [ %call287, %cond.end285 ], [ %call306, %cond.end301 ], !dbg !731
  store i64 %cond308, ptr %status, align 8, !dbg !737
  %147 = load i64, ptr %status, align 8, !dbg !738
  %cmp309 = icmp ne i64 %147, 0, !dbg !740
  br i1 %cmp309, label %if.then311, label %if.end312, !dbg !741

if.then311:                                       ; preds = %cond.end307
  br label %err_freepool, !dbg !742

if.end312:                                        ; preds = %cond.end307
  %148 = load i32, ptr %prev_seed_size, align 4, !dbg !743
  %tobool313 = icmp ne i32 %148, 0, !dbg !743
  br i1 %tobool313, label %if.then314, label %if.end352, !dbg !744

if.then314:                                       ; preds = %if.end312
  %149 = load ptr, ptr %prev_seed, align 8, !dbg !745
  %bits315 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %149, i32 0, i32 1, !dbg !746
  %arraydecay316 = getelementptr inbounds [0 x i8], ptr %bits315, i64 0, i64 0, !dbg !745
  %150 = load i32, ptr %prev_seed_size, align 4, !dbg !747
  %conv317 = sext i32 %150 to i64, !dbg !747
  call void @memzero_explicit(ptr noundef %arraydecay316, i64 noundef %conv317) #8, !dbg !748
  %call318 = call zeroext i1 @efi_is_native() #8, !dbg !749
  br i1 %call318, label %cond.true320, label %cond.false331, !dbg !749

cond.true320:                                     ; preds = %if.then314
  %call321 = call zeroext i1 @efi_is_native() #8, !dbg !749
  br i1 %call321, label %cond.true323, label %cond.false325, !dbg !749

cond.true323:                                     ; preds = %cond.true320
  %151 = load ptr, ptr @efi_system_table, align 8, !dbg !749
  %boottime324 = getelementptr inbounds %struct.anon.1, ptr %151, i32 0, i32 10, !dbg !749
  %152 = load ptr, ptr %boottime324, align 8, !dbg !749
  br label %cond.end328, !dbg !749

cond.false325:                                    ; preds = %cond.true320
  %153 = load ptr, ptr @efi_system_table, align 8, !dbg !749
  %boottime326 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %153, i32 0, i32 10, !dbg !749
  %154 = load i32, ptr %boottime326, align 4, !dbg !749
  %conv327 = zext i32 %154 to i64, !dbg !749
  %155 = inttoptr i64 %conv327 to ptr, !dbg !749
  br label %cond.end328, !dbg !749

cond.end328:                                      ; preds = %cond.false325, %cond.true323
  %cond329 = phi ptr [ %152, %cond.true323 ], [ %155, %cond.false325 ], !dbg !749
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond329, i32 0, i32 7, !dbg !749
  %156 = load ptr, ptr %free_pool, align 8, !dbg !749
  %157 = load ptr, ptr %prev_seed, align 8, !dbg !749
  %call330 = call win64cc i64 %156(ptr noundef %157) #8, !dbg !749
  br label %cond.end350, !dbg !749

cond.false331:                                    ; preds = %if.then314
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad332) #7, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %__pad332, metadata !560, metadata !DIExpression()), !dbg !750
  br label %do.body333, !dbg !751

do.body333:                                       ; preds = %cond.false331
  br label %do.cond334, !dbg !753

do.cond334:                                       ; preds = %do.body333
  br label %do.end335, !dbg !753

do.end335:                                        ; preds = %do.cond334
  %call337 = call zeroext i1 @efi_is_native() #8, !dbg !750
  br i1 %call337, label %cond.true339, label %cond.false341, !dbg !750

cond.true339:                                     ; preds = %do.end335
  %158 = load ptr, ptr @efi_system_table, align 8, !dbg !750
  %boottime340 = getelementptr inbounds %struct.anon.1, ptr %158, i32 0, i32 10, !dbg !750
  %159 = load ptr, ptr %boottime340, align 8, !dbg !750
  br label %cond.end344, !dbg !750

cond.false341:                                    ; preds = %do.end335
  %160 = load ptr, ptr @efi_system_table, align 8, !dbg !750
  %boottime342 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %160, i32 0, i32 10, !dbg !750
  %161 = load i32, ptr %boottime342, align 4, !dbg !750
  %conv343 = zext i32 %161 to i64, !dbg !750
  %162 = inttoptr i64 %conv343 to ptr, !dbg !750
  br label %cond.end344, !dbg !750

cond.end344:                                      ; preds = %cond.false341, %cond.true339
  %cond345 = phi ptr [ %159, %cond.true339 ], [ %162, %cond.false341 ], !dbg !750
  %free_pool346 = getelementptr inbounds %struct.anon.0, ptr %cond345, i32 0, i32 7, !dbg !750
  %163 = load i32, ptr %free_pool346, align 8, !dbg !750
  %164 = load ptr, ptr %prev_seed, align 8, !dbg !750
  %arraydecay347 = getelementptr inbounds [3 x i64], ptr %__pad332, i64 0, i64 0, !dbg !750
  %call348 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %163, ptr noundef %164, ptr noundef %arraydecay347) #8, !dbg !750
  store i64 %call348, ptr %tmp336, align 8, !dbg !750
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad332) #7, !dbg !749
  %165 = load i64, ptr %tmp336, align 8, !dbg !750
  %call349 = call i64 @__efi64_widen_efi_status(i64 noundef %165) #8, !dbg !749
  br label %cond.end350, !dbg !749

cond.end350:                                      ; preds = %cond.end344, %cond.end328
  %cond351 = phi i64 [ %call330, %cond.end328 ], [ %call349, %cond.end344 ], !dbg !749
  br label %if.end352, !dbg !755

if.end352:                                        ; preds = %cond.end350, %if.end312
  store i64 0, ptr %retval, align 8, !dbg !756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !756

err_freepool:                                     ; preds = %if.then311, %if.then259
  call void @llvm.dbg.label(metadata !564), !dbg !757
  %166 = load ptr, ptr %seed, align 8, !dbg !758
  %167 = load i32, ptr %seed_size, align 4, !dbg !759
  %conv353 = sext i32 %167 to i64, !dbg !759
  %call354 = call i64 @size_mul(i64 noundef %conv353, i64 noundef 1) #8, !dbg !759
  %call355 = call i64 @size_add(i64 noundef 4, i64 noundef %call354) #8, !dbg !759
  call void @memzero_explicit(ptr noundef %166, i64 noundef %call355) #8, !dbg !760
  %call356 = call zeroext i1 @efi_is_native() #8, !dbg !761
  br i1 %call356, label %cond.true358, label %cond.false370, !dbg !761

cond.true358:                                     ; preds = %err_freepool
  %call359 = call zeroext i1 @efi_is_native() #8, !dbg !761
  br i1 %call359, label %cond.true361, label %cond.false363, !dbg !761

cond.true361:                                     ; preds = %cond.true358
  %168 = load ptr, ptr @efi_system_table, align 8, !dbg !761
  %boottime362 = getelementptr inbounds %struct.anon.1, ptr %168, i32 0, i32 10, !dbg !761
  %169 = load ptr, ptr %boottime362, align 8, !dbg !761
  br label %cond.end366, !dbg !761

cond.false363:                                    ; preds = %cond.true358
  %170 = load ptr, ptr @efi_system_table, align 8, !dbg !761
  %boottime364 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %170, i32 0, i32 10, !dbg !761
  %171 = load i32, ptr %boottime364, align 4, !dbg !761
  %conv365 = zext i32 %171 to i64, !dbg !761
  %172 = inttoptr i64 %conv365 to ptr, !dbg !761
  br label %cond.end366, !dbg !761

cond.end366:                                      ; preds = %cond.false363, %cond.true361
  %cond367 = phi ptr [ %169, %cond.true361 ], [ %172, %cond.false363 ], !dbg !761
  %free_pool368 = getelementptr inbounds %struct.anon, ptr %cond367, i32 0, i32 7, !dbg !761
  %173 = load ptr, ptr %free_pool368, align 8, !dbg !761
  %174 = load ptr, ptr %seed, align 8, !dbg !761
  %call369 = call win64cc i64 %173(ptr noundef %174) #8, !dbg !761
  br label %cond.end389, !dbg !761

cond.false370:                                    ; preds = %err_freepool
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad371) #7, !dbg !762
  call void @llvm.dbg.declare(metadata ptr %__pad371, metadata !565, metadata !DIExpression()), !dbg !762
  br label %do.body372, !dbg !763

do.body372:                                       ; preds = %cond.false370
  br label %do.cond373, !dbg !765

do.cond373:                                       ; preds = %do.body372
  br label %do.end374, !dbg !765

do.end374:                                        ; preds = %do.cond373
  %call376 = call zeroext i1 @efi_is_native() #8, !dbg !762
  br i1 %call376, label %cond.true378, label %cond.false380, !dbg !762

cond.true378:                                     ; preds = %do.end374
  %175 = load ptr, ptr @efi_system_table, align 8, !dbg !762
  %boottime379 = getelementptr inbounds %struct.anon.1, ptr %175, i32 0, i32 10, !dbg !762
  %176 = load ptr, ptr %boottime379, align 8, !dbg !762
  br label %cond.end383, !dbg !762

cond.false380:                                    ; preds = %do.end374
  %177 = load ptr, ptr @efi_system_table, align 8, !dbg !762
  %boottime381 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %177, i32 0, i32 10, !dbg !762
  %178 = load i32, ptr %boottime381, align 4, !dbg !762
  %conv382 = zext i32 %178 to i64, !dbg !762
  %179 = inttoptr i64 %conv382 to ptr, !dbg !762
  br label %cond.end383, !dbg !762

cond.end383:                                      ; preds = %cond.false380, %cond.true378
  %cond384 = phi ptr [ %176, %cond.true378 ], [ %179, %cond.false380 ], !dbg !762
  %free_pool385 = getelementptr inbounds %struct.anon.0, ptr %cond384, i32 0, i32 7, !dbg !762
  %180 = load i32, ptr %free_pool385, align 8, !dbg !762
  %181 = load ptr, ptr %seed, align 8, !dbg !762
  %arraydecay386 = getelementptr inbounds [3 x i64], ptr %__pad371, i64 0, i64 0, !dbg !762
  %call387 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %180, ptr noundef %181, ptr noundef %arraydecay386) #8, !dbg !762
  store i64 %call387, ptr %tmp375, align 8, !dbg !762
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad371) #7, !dbg !761
  %182 = load i64, ptr %tmp375, align 8, !dbg !762
  %call388 = call i64 @__efi64_widen_efi_status(i64 noundef %182) #8, !dbg !761
  br label %cond.end389, !dbg !761

cond.end389:                                      ; preds = %cond.end383, %cond.end366
  %cond390 = phi i64 [ %call369, %cond.end366 ], [ %call388, %cond.end383 ], !dbg !761
  %call391 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.2) #8, !dbg !767
  br label %err_warn, !dbg !767

err_warn:                                         ; preds = %cond.end389, %if.then112
  call void @llvm.dbg.label(metadata !567), !dbg !768
  %183 = load ptr, ptr %prev_seed, align 8, !dbg !769
  %tobool392 = icmp ne ptr %183, null, !dbg !769
  br i1 %tobool392, label %if.then393, label %if.end395, !dbg !771

if.then393:                                       ; preds = %err_warn
  %call394 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.3) #8, !dbg !772
  br label %if.end395, !dbg !772

if.end395:                                        ; preds = %if.then393, %err_warn
  %184 = load i64, ptr %status, align 8, !dbg !773
  store i64 %184, ptr %retval, align 8, !dbg !774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !774

cleanup:                                          ; preds = %if.end395, %if.end352, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %nv_seed_size) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %seed_size) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_seed_size) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_seed) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 16, ptr %rng_table_guid) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 16, ptr %rng_algo_raw) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 16, ptr %rng_proto) #7, !dbg !775
  %185 = load i64, ptr %retval, align 8, !dbg !775
  ret i64 %185, !dbg !775
}

; Function Attrs: noredzone
declare !dbg !776 hidden ptr @get_efi_config_table(i64, i64) #5

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 !dbg !779 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !784, metadata !DIExpression()), !dbg !787
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #7, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !786, metadata !DIExpression()), !dbg !790
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !791
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !791
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !791
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !791
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !791
  store i64 %4, ptr %bytes, align 8, !dbg !791
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #8, !dbg !791
  br i1 %call, label %if.then, label %if.end, !dbg !793

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !794

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !795
  store i64 %5, ptr %retval, align 8, !dbg !796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !796

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #7, !dbg !797
  %6 = load i64, ptr %retval, align 8, !dbg !797
  ret i64 %6, !dbg !797
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 !dbg !798 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !800, metadata !DIExpression()), !dbg !803
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !801, metadata !DIExpression()), !dbg !804
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #7, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !802, metadata !DIExpression()), !dbg !806
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !807
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !807
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !807
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !807
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !807
  store i64 %4, ptr %bytes, align 8, !dbg !807
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #8, !dbg !807
  br i1 %call, label %if.then, label %if.end, !dbg !809

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !810

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !811
  store i64 %5, ptr %retval, align 8, !dbg !812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !812

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #7, !dbg !813
  %6 = load i64, ptr %retval, align 8, !dbg !813
  ret i64 %6, !dbg !813
}

; Function Attrs: noredzone
declare !dbg !814 hidden i32 @efi_printk(ptr noundef, ...) #5

; Function Attrs: inlinehint noredzone nounwind
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #4 !dbg !819 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !824, metadata !DIExpression()), !dbg !826
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !825, metadata !DIExpression()), !dbg !827
  %0 = load ptr, ptr %s.addr, align 8, !dbg !828
  %1 = load i64, ptr %count.addr, align 8, !dbg !829
  %call = call ptr @memset(ptr noundef %0, i32 noundef 0, i64 noundef %1) #8, !dbg !830
  %2 = load ptr, ptr %s.addr, align 8, !dbg !831
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #7, !dbg !831, !srcloc !832
  ret void, !dbg !833
}

; Function Attrs: noredzone
declare !dbg !834 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #4 !dbg !838 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !839, !range !840, !noundef !841
  %tobool = trunc i8 %0 to i1, !dbg !839
  ret i1 %tobool, !dbg !842
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #4 !dbg !843 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !848, metadata !DIExpression()), !dbg !850
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !849, metadata !DIExpression()), !dbg !851
  %0 = load i64, ptr %word.addr, align 8, !dbg !852
  %1 = load i32, ptr %shift.addr, align 4, !dbg !853
  %and = and i32 %1, 63, !dbg !854
  %sh_prom = zext i32 %and to i64, !dbg !855
  %shr = lshr i64 %0, %sh_prom, !dbg !855
  %2 = load i64, ptr %word.addr, align 8, !dbg !856
  %3 = load i32, ptr %shift.addr, align 4, !dbg !857
  %sub = sub i32 0, %3, !dbg !858
  %and1 = and i32 %sub, 63, !dbg !859
  %sh_prom2 = zext i32 %and1 to i64, !dbg !860
  %shl = shl i64 %2, %sh_prom2, !dbg !860
  %or = or i64 %shr, %shl, !dbg !861
  ret i64 %or, !dbg !862
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 !dbg !863 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !867, metadata !DIExpression()), !dbg !869
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !868, metadata !DIExpression()), !dbg !870
  %0 = load i32, ptr %word.addr, align 4, !dbg !871
  %1 = load i32, ptr %shift.addr, align 4, !dbg !872
  %and = and i32 %1, 31, !dbg !873
  %shl = shl i32 %0, %and, !dbg !874
  %2 = load i32, ptr %word.addr, align 4, !dbg !875
  %3 = load i32, ptr %shift.addr, align 4, !dbg !876
  %sub = sub i32 0, %3, !dbg !877
  %and1 = and i32 %sub, 31, !dbg !878
  %shr = lshr i32 %2, %and1, !dbg !879
  %or = or i32 %shl, %shr, !dbg !880
  ret i32 %or, !dbg !881
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 !dbg !882 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !886, metadata !DIExpression()), !dbg !887
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !888, !range !840, !noundef !841
  %tobool = trunc i8 %0 to i1, !dbg !888
  %lnot = xor i1 %tobool, true, !dbg !888
  %lnot1 = xor i1 %lnot, true, !dbg !888
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !888
  %conv = sext i32 %lnot.ext to i64, !dbg !888
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !888
  %tobool2 = icmp ne i64 %expval, 0, !dbg !888
  ret i1 %tobool2, !dbg !889
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare !dbg !890 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #5

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/random.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff268ec367b9f77a1be41f20e5cc5535")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 416, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 52)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 576, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 72)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 408, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 51)
!23 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.random.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/random\22 -D KBUILD_BASENAME=\22random\22 -D KBUILD_MODNAME=\22random\22 -D __KBUILD_MODNAME=kmod_random -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/random.ll drivers/firmware/efi/libstub/random.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !32, globals: !405, splitDebugInlining: false, nameTableKind: None)
!24 = !{!25}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 243, baseType: !27, size: 32, elements: !28)
!26 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!30 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!31 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!32 = !{!33, !65, !58, !83, !273, !171, !121, !66, !78, !401}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !35, line: 250, baseType: !36)
!35 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!36 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !26, line: 252, size: 3008, elements: !37)
!37 = !{!38, !225}
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !36, file: !26, line: 253, baseType: !39, size: 3008)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !26, line: 253, size: 3008, elements: !40)
!40 = !{!41, !57, !59, !60, !69, !73, !79, !84, !88, !98, !103, !107, !108, !112, !113, !114, !115, !116, !133, !134, !135, !140, !155, !159, !166, !173, !177, !181, !185, !186, !190, !191, !192, !196, !197, !198, !199, !200, !201, !205, !209, !213, !214, !220, !224}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !39, file: !26, line: 254, baseType: !42, size: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !35, line: 90, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 84, size: 192, elements: !44)
!44 = !{!45, !51, !54, !55, !56}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !43, file: !35, line: 85, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !47, line: 23, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !43, file: !35, line: 86, baseType: !52, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !47, line: 21, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !27)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !43, file: !35, line: 87, baseType: !52, size: 32, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !43, file: !35, line: 88, baseType: !52, size: 32, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !43, file: !35, line: 89, baseType: !52, size: 32, offset: 160)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !39, file: !26, line: 255, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !39, file: !26, line: 256, baseType: !58, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !39, file: !26, line: 257, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !63)
!63 = !{!64, !66, !66, !65, !67}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !35, line: 47, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !35, line: 50, baseType: !46)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !39, file: !26, line: 259, baseType: !70, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !72)
!72 = !{!64, !68, !65}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !39, file: !26, line: 261, baseType: !74, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !76)
!76 = !{!64, !77, !58, !77, !77, !78}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !39, file: !26, line: 264, baseType: !80, size: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !82)
!82 = !{!64, !66, !65, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !39, file: !26, line: 266, baseType: !85, size: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !87)
!87 = !{!64, !58}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !39, file: !26, line: 267, baseType: !89, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !91)
!91 = !{!64, !52, !65, !92, !58, !97}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !26, line: 212, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !95)
!95 = !{null, !96, !58}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !26, line: 210, baseType: !58)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !39, file: !26, line: 270, baseType: !99, size: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !101)
!101 = !{!64, !96, !102, !46}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !26, line: 247, baseType: !25)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !39, file: !26, line: 272, baseType: !104, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !106)
!106 = !{!64, !65, !97, !77}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !39, file: !26, line: 275, baseType: !58, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !39, file: !26, line: 276, baseType: !109, size: 64, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !111)
!111 = !{!64, !96}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !39, file: !26, line: 277, baseType: !58, size: 64, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !39, file: !26, line: 278, baseType: !58, size: 64, offset: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !39, file: !26, line: 279, baseType: !58, size: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !39, file: !26, line: 280, baseType: !58, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !39, file: !26, line: 281, baseType: !117, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !119)
!119 = !{!64, !120, !121, !83}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !35, line: 51, baseType: !58)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !35, line: 74, baseType: !123, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !124, line: 17, baseType: !125)
!124 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 15, size: 128, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !125, file: !124, line: 16, baseType: !128, size: 128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !131)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !130)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !{!132}
!132 = !DISubrange(count: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !39, file: !26, line: 283, baseType: !58, size: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !39, file: !26, line: 284, baseType: !58, size: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !39, file: !26, line: 285, baseType: !136, size: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !138)
!138 = !{!64, !66, !121, !58, !77, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !39, file: !26, line: 288, baseType: !141, size: 64, offset: 1472)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !143)
!143 = !{!64, !121, !144, !139}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !26, line: 176, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !35, line: 985, size: 32, elements: !148)
!148 = !{!149, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !35, line: 986, baseType: !150, size: 8)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !47, line: 17, baseType: !129)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !147, file: !35, line: 987, baseType: !150, size: 8, offset: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !147, file: !35, line: 988, baseType: !153, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !39, file: !26, line: 291, baseType: !156, size: 64, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !158)
!158 = !{!64, !121, !58}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !39, file: !26, line: 293, baseType: !160, size: 64, offset: 1600)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !162)
!162 = !{!64, !163, !120, !145, !58, !65, !139}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !39, file: !26, line: 297, baseType: !167, size: 64, offset: 1664)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !169)
!169 = !{!64, !120, !77, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !35, line: 49, baseType: !153)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !39, file: !26, line: 299, baseType: !174, size: 64, offset: 1728)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !176)
!176 = !{!64, !120, !64, !65, !171}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !39, file: !26, line: 303, baseType: !178, size: 64, offset: 1792)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !180)
!180 = !{!64, !120}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !39, file: !26, line: 304, baseType: !182, size: 64, offset: 1856)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !184)
!184 = !{!64, !120, !65}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !39, file: !26, line: 306, baseType: !58, size: 64, offset: 1920)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !39, file: !26, line: 307, baseType: !187, size: 64, offset: 1984)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !189)
!189 = !{!64, !65}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !39, file: !26, line: 308, baseType: !58, size: 64, offset: 2048)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !39, file: !26, line: 309, baseType: !58, size: 64, offset: 2112)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !39, file: !26, line: 310, baseType: !193, size: 64, offset: 2176)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !195)
!195 = !{!64, !120, !120, !120}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !39, file: !26, line: 313, baseType: !58, size: 64, offset: 2240)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !39, file: !26, line: 314, baseType: !58, size: 64, offset: 2304)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !39, file: !26, line: 315, baseType: !58, size: 64, offset: 2368)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !39, file: !26, line: 316, baseType: !58, size: 64, offset: 2432)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !39, file: !26, line: 317, baseType: !58, size: 64, offset: 2496)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !39, file: !26, line: 318, baseType: !202, size: 64, offset: 2560)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !204)
!204 = !{!64, !121, !58, !83}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !39, file: !26, line: 320, baseType: !206, size: 64, offset: 2624)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !208)
!208 = !{!64, !139, null}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !39, file: !26, line: 321, baseType: !210, size: 64, offset: 2688)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !212)
!212 = !{!64, !120, null}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !39, file: !26, line: 322, baseType: !58, size: 64, offset: 2752)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !39, file: !26, line: 323, baseType: !215, size: 64, offset: 2816)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !217)
!217 = !{null, !58, !218, !65}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !39, file: !26, line: 324, baseType: !221, size: 64, offset: 2880)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !223)
!223 = !{null, !58, !65, !130}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !39, file: !26, line: 325, baseType: !58, size: 64, offset: 2944)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !36, file: !26, line: 373, baseType: !226, size: 1600)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !26, line: 327, size: 1600, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !226, file: !26, line: 328, baseType: !42, size: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !226, file: !26, line: 329, baseType: !52, size: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !226, file: !26, line: 330, baseType: !52, size: 32, offset: 224)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !226, file: !26, line: 331, baseType: !52, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !226, file: !26, line: 332, baseType: !52, size: 32, offset: 288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !226, file: !26, line: 333, baseType: !52, size: 32, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !226, file: !26, line: 334, baseType: !52, size: 32, offset: 352)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !226, file: !26, line: 335, baseType: !52, size: 32, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !226, file: !26, line: 336, baseType: !52, size: 32, offset: 416)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !226, file: !26, line: 337, baseType: !52, size: 32, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !226, file: !26, line: 338, baseType: !52, size: 32, offset: 480)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !226, file: !26, line: 339, baseType: !52, size: 32, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !226, file: !26, line: 340, baseType: !52, size: 32, offset: 544)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !226, file: !26, line: 341, baseType: !52, size: 32, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !226, file: !26, line: 342, baseType: !52, size: 32, offset: 608)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !226, file: !26, line: 343, baseType: !52, size: 32, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !226, file: !26, line: 344, baseType: !52, size: 32, offset: 672)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !226, file: !26, line: 345, baseType: !52, size: 32, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !226, file: !26, line: 346, baseType: !52, size: 32, offset: 736)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !226, file: !26, line: 347, baseType: !52, size: 32, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !226, file: !26, line: 348, baseType: !52, size: 32, offset: 800)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !226, file: !26, line: 349, baseType: !52, size: 32, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !226, file: !26, line: 350, baseType: !52, size: 32, offset: 864)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !226, file: !26, line: 351, baseType: !52, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !226, file: !26, line: 352, baseType: !52, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !226, file: !26, line: 353, baseType: !52, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !226, file: !26, line: 354, baseType: !52, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !226, file: !26, line: 355, baseType: !52, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !226, file: !26, line: 356, baseType: !52, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !226, file: !26, line: 357, baseType: !52, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !226, file: !26, line: 358, baseType: !52, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !226, file: !26, line: 359, baseType: !52, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !226, file: !26, line: 360, baseType: !52, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !226, file: !26, line: 361, baseType: !52, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !226, file: !26, line: 362, baseType: !52, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !226, file: !26, line: 363, baseType: !52, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !226, file: !26, line: 364, baseType: !52, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !226, file: !26, line: 365, baseType: !52, size: 32, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !226, file: !26, line: 366, baseType: !52, size: 32, offset: 1376)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !226, file: !26, line: 367, baseType: !52, size: 32, offset: 1408)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !226, file: !26, line: 368, baseType: !52, size: 32, offset: 1440)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !226, file: !26, line: 369, baseType: !52, size: 32, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !226, file: !26, line: 370, baseType: !52, size: 32, offset: 1504)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !226, file: !26, line: 371, baseType: !52, size: 32, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !226, file: !26, line: 372, baseType: !52, size: 32, offset: 1568)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_t", file: !35, line: 336, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !35, line: 317, size: 1088, elements: !276)
!276 = !{!277, !382}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !35, line: 318, baseType: !278, size: 1088)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !35, line: 318, size: 1088, elements: !279)
!279 = !{!280, !281, !310, !314, !320, !324, !338, !339, !343, !347, !351, !355, !359, !372, !378}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !278, file: !35, line: 319, baseType: !42, size: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !278, file: !35, line: 320, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !284)
!284 = !{!64, !285, !303}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_t", file: !35, line: 242, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 230, size: 128, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !301, !302}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !287, file: !35, line: 231, baseType: !153, size: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !287, file: !35, line: 232, baseType: !150, size: 8, offset: 16)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !287, file: !35, line: 233, baseType: !150, size: 8, offset: 24)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !287, file: !35, line: 234, baseType: !150, size: 8, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !287, file: !35, line: 235, baseType: !150, size: 8, offset: 40)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !287, file: !35, line: 236, baseType: !150, size: 8, offset: 48)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !287, file: !35, line: 237, baseType: !150, size: 8, offset: 56)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "nanosecond", scope: !287, file: !35, line: 238, baseType: !52, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !287, file: !35, line: 239, baseType: !298, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !47, line: 18, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !49, line: 23, baseType: !300)
!300 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !287, file: !35, line: 240, baseType: !150, size: 8, offset: 112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !287, file: !35, line: 241, baseType: !150, size: 8, offset: 120)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_cap_t", file: !35, line: 248, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 244, size: 96, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !305, file: !35, line: 245, baseType: !52, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !305, file: !35, line: 246, baseType: !52, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sets_to_zero", scope: !305, file: !35, line: 247, baseType: !150, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !278, file: !35, line: 321, baseType: !311, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !313)
!313 = !{!64, !285}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !278, file: !35, line: 322, baseType: !315, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !317)
!317 = !{!64, !318, !318, !285}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !35, line: 48, baseType: !150)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !278, file: !35, line: 323, baseType: !321, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !323)
!323 = !{!64, !319, !285}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !278, file: !35, line: 324, baseType: !325, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !327)
!327 = !{!64, !65, !65, !52, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !35, line: 145, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 138, size: 320, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !330, file: !35, line: 139, baseType: !52, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !330, file: !35, line: 140, baseType: !52, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !330, file: !35, line: 141, baseType: !46, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !330, file: !35, line: 142, baseType: !46, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !330, file: !35, line: 143, baseType: !46, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !330, file: !35, line: 144, baseType: !46, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !278, file: !35, line: 325, baseType: !58, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !278, file: !35, line: 326, baseType: !340, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !342)
!342 = !{!64, !171, !121, !78, !77, !58}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !278, file: !35, line: 327, baseType: !344, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !346)
!346 = !{!64, !77, !171, !121}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !278, file: !35, line: 328, baseType: !348, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !350)
!350 = !{!64, !171, !121, !52, !65, !58}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !278, file: !35, line: 329, baseType: !352, size: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !354)
!354 = !{!64, !78}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !278, file: !35, line: 330, baseType: !356, size: 64, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !358)
!358 = !{null, !66, !64, !65, !171}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !278, file: !35, line: 331, baseType: !360, size: 64, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !362)
!362 = !{!64, !363, !65, !65}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_capsule_header_t", file: !35, line: 152, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 147, size: 224, elements: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !366, file: !35, line: 148, baseType: !122, size: 128, align: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !366, file: !35, line: 149, baseType: !52, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !35, line: 150, baseType: !52, size: 32, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "imagesize", scope: !366, file: !35, line: 151, baseType: !52, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !278, file: !35, line: 332, baseType: !373, size: 64, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !375)
!375 = !{!64, !363, !65, !376, !377}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !278, file: !35, line: 333, baseType: !379, size: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !381)
!381 = !{!64, !52, !376, !376, !376}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !275, file: !35, line: 335, baseType: !383, size: 640)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_32_t", file: !35, line: 281, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 265, size: 640, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !384, file: !35, line: 266, baseType: !42, size: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !384, file: !35, line: 267, baseType: !52, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !384, file: !35, line: 268, baseType: !52, size: 32, offset: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !384, file: !35, line: 269, baseType: !52, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !384, file: !35, line: 270, baseType: !52, size: 32, offset: 288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !384, file: !35, line: 271, baseType: !52, size: 32, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !384, file: !35, line: 272, baseType: !52, size: 32, offset: 352)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !384, file: !35, line: 273, baseType: !52, size: 32, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !384, file: !35, line: 274, baseType: !52, size: 32, offset: 416)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !384, file: !35, line: 275, baseType: !52, size: 32, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !384, file: !35, line: 276, baseType: !52, size: 32, offset: 480)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !384, file: !35, line: 277, baseType: !52, size: 32, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !384, file: !35, line: 278, baseType: !52, size: 32, offset: 544)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !384, file: !35, line: 279, baseType: !52, size: 32, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !384, file: !35, line: 280, baseType: !52, size: 32, offset: 608)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 61, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !403, line: 72, baseType: !404)
!403 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !403, line: 16, baseType: !65)
!405 = !{!0, !7, !13, !18}
!406 = !{i32 7, !"Dwarf Version", i32 5}
!407 = !{i32 2, !"Debug Info Version", i32 3}
!408 = !{i32 1, !"wchar_size", i32 2}
!409 = !{i32 8, !"PIC Level", i32 2}
!410 = !{i32 1, !"Code Model", i32 1}
!411 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!412 = distinct !DISubprogram(name: "efi_get_random_bytes", scope: !2, file: !2, line: 39, type: !413, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !416)
!413 = !DISubroutineType(types: !414)
!414 = !{!64, !65, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!416 = !{!417, !418, !419, !420, !421, !442, !447, !449}
!417 = !DILocalVariable(name: "size", arg: 1, scope: !412, file: !2, line: 39, type: !65)
!418 = !DILocalVariable(name: "out", arg: 2, scope: !412, file: !2, line: 39, type: !415)
!419 = !DILocalVariable(name: "rng_proto", scope: !412, file: !2, line: 41, type: !122)
!420 = !DILocalVariable(name: "status", scope: !412, file: !2, line: 42, type: !64)
!421 = !DILocalVariable(name: "rng", scope: !412, file: !2, line: 43, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_rng_protocol_t", file: !2, line: 11, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_rng_protocol", file: !2, line: 13, size: 128, elements: !425)
!425 = !{!426, !437}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !2, line: 14, baseType: !427, size: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !2, line: 14, size: 128, elements: !428)
!428 = !{!429, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !427, file: !2, line: 15, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !432)
!432 = !{!64, !422, !77, !121}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "get_rng", scope: !427, file: !2, line: 18, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !436)
!436 = !{!64, !422, !121, !65, !415}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !424, file: !2, line: 25, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !2, line: 22, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !438, file: !2, line: 23, baseType: !52, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "get_rng", scope: !438, file: !2, line: 24, baseType: !52, size: 32, offset: 32)
!442 = !DILocalVariable(name: "__pad", scope: !443, file: !2, line: 45, type: !444)
!443 = distinct !DILexicalBlock(scope: !412, file: !2, line: 45, column: 11)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 3)
!447 = !DILocalVariable(name: "__inst", scope: !448, file: !2, line: 49, type: !422)
!448 = distinct !DILexicalBlock(scope: !412, file: !2, line: 49, column: 9)
!449 = !DILocalVariable(name: "__pad", scope: !450, file: !2, line: 49, type: !444)
!450 = distinct !DILexicalBlock(scope: !448, file: !2, line: 49, column: 9)
!451 = !DILocation(line: 39, column: 49, scope: !412)
!452 = !DILocation(line: 39, column: 59, scope: !412)
!453 = !DILocation(line: 41, column: 2, scope: !412)
!454 = !DILocation(line: 41, column: 13, scope: !412)
!455 = !DILocation(line: 42, column: 2, scope: !412)
!456 = !DILocation(line: 42, column: 15, scope: !412)
!457 = !DILocation(line: 43, column: 2, scope: !412)
!458 = !DILocation(line: 43, column: 22, scope: !412)
!459 = !DILocation(line: 45, column: 11, scope: !412)
!460 = !DILocation(line: 45, column: 11, scope: !443)
!461 = !DILocation(line: 45, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !443, file: !2, line: 45, column: 11)
!463 = !DILocation(line: 45, column: 11, scope: !464)
!464 = distinct !DILexicalBlock(scope: !462, file: !2, line: 45, column: 11)
!465 = !DILocation(line: 45, column: 9, scope: !412)
!466 = !DILocation(line: 46, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !412, file: !2, line: 46, column: 6)
!468 = !DILocation(line: 46, column: 13, scope: !467)
!469 = !DILocation(line: 46, column: 6, scope: !412)
!470 = !DILocation(line: 47, column: 10, scope: !467)
!471 = !DILocation(line: 47, column: 3, scope: !467)
!472 = !DILocation(line: 49, column: 9, scope: !448)
!473 = !DILocation(line: 49, column: 9, scope: !450)
!474 = !DILocation(line: 49, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !450, file: !2, line: 49, column: 9)
!476 = !DILocation(line: 49, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !475, file: !2, line: 49, column: 9)
!478 = !DILocation(line: 49, column: 9, scope: !412)
!479 = !DILocation(line: 49, column: 2, scope: !412)
!480 = !DILocation(line: 50, column: 1, scope: !412)
!481 = distinct !DISubprogram(name: "efi_is_native", scope: !482, file: !482, line: 205, type: !483, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23)
!482 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!483 = !DISubroutineType(types: !484)
!484 = !{!163}
!485 = !DILocation(line: 207, column: 9, scope: !481)
!486 = !DILocation(line: 207, column: 2, scope: !481)
!487 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !482, file: !482, line: 346, type: !488, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!64, !46}
!490 = !{!491}
!491 = !DILocalVariable(name: "status", arg: 1, scope: !487, file: !482, line: 346, type: !46)
!492 = !DILocation(line: 346, column: 57, scope: !487)
!493 = !DILocation(line: 349, column: 21, scope: !487)
!494 = !DILocation(line: 349, column: 15, scope: !487)
!495 = !DILocation(line: 349, column: 9, scope: !487)
!496 = !DILocation(line: 349, column: 2, scope: !487)
!497 = !DISubprogram(name: "__efi64_thunk", scope: !482, file: !482, line: 158, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{!46, !52, null}
!500 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !482, file: !482, line: 239, type: !501, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!58, !58}
!503 = !{!504}
!504 = !DILocalVariable(name: "p", arg: 1, scope: !500, file: !482, line: 239, type: !58)
!505 = !DILocation(line: 239, column: 44, scope: !500)
!506 = !DILocation(line: 241, column: 10, scope: !500)
!507 = !DILocation(line: 241, column: 2, scope: !500)
!508 = !DILocation(line: 241, column: 16, scope: !500)
!509 = !DILocation(line: 242, column: 9, scope: !500)
!510 = !DILocation(line: 242, column: 2, scope: !500)
!511 = distinct !DISubprogram(name: "efi_random_get_seed", scope: !2, file: !2, line: 65, type: !512, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!64}
!514 = !{!515, !516, !517, !518, !527, !528, !529, !530, !531, !532, !533, !534, !536, !538, !540, !544, !546, !549, !551, !555, !558, !560, !564, !565, !567}
!515 = !DILocalVariable(name: "rng_proto", scope: !511, file: !2, line: 67, type: !122)
!516 = !DILocalVariable(name: "rng_algo_raw", scope: !511, file: !2, line: 68, type: !122)
!517 = !DILocalVariable(name: "rng_table_guid", scope: !511, file: !2, line: 69, type: !122)
!518 = !DILocalVariable(name: "prev_seed", scope: !511, file: !2, line: 70, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_efi_random_seed", file: !35, line: 1210, size: 32, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !35, line: 1211, baseType: !52, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !520, file: !35, line: 1212, baseType: !524, offset: 32)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: -1)
!527 = !DILocalVariable(name: "seed", scope: !511, file: !2, line: 70, type: !519)
!528 = !DILocalVariable(name: "prev_seed_size", scope: !511, file: !2, line: 71, type: !66)
!529 = !DILocalVariable(name: "seed_size", scope: !511, file: !2, line: 71, type: !66)
!530 = !DILocalVariable(name: "nv_seed_size", scope: !511, file: !2, line: 72, type: !65)
!531 = !DILocalVariable(name: "offset", scope: !511, file: !2, line: 72, type: !65)
!532 = !DILocalVariable(name: "rng", scope: !511, file: !2, line: 73, type: !422)
!533 = !DILocalVariable(name: "status", scope: !511, file: !2, line: 74, type: !64)
!534 = !DILocalVariable(name: "__pad", scope: !535, file: !2, line: 76, type: !444)
!535 = distinct !DILexicalBlock(scope: !511, file: !2, line: 76, column: 11)
!536 = !DILocalVariable(name: "__pad", scope: !537, file: !2, line: 81, type: !444)
!537 = distinct !DILexicalBlock(scope: !511, file: !2, line: 81, column: 2)
!538 = !DILocalVariable(name: "__pad", scope: !539, file: !2, line: 105, type: !444)
!539 = distinct !DILexicalBlock(scope: !511, file: !2, line: 105, column: 11)
!540 = !DILocalVariable(name: "__inst", scope: !541, file: !2, line: 114, type: !422)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 114, column: 12)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 113, column: 11)
!543 = distinct !DILexicalBlock(scope: !511, file: !2, line: 113, column: 6)
!544 = !DILocalVariable(name: "__pad", scope: !545, file: !2, line: 114, type: !444)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 114, column: 12)
!546 = !DILocalVariable(name: "__inst", scope: !547, file: !2, line: 122, type: !422)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 122, column: 13)
!548 = distinct !DILexicalBlock(scope: !542, file: !2, line: 117, column: 7)
!549 = !DILocalVariable(name: "__pad", scope: !550, file: !2, line: 122, type: !444)
!550 = distinct !DILexicalBlock(scope: !547, file: !2, line: 122, column: 13)
!551 = !DILocalVariable(name: "__pad", scope: !552, file: !2, line: 130, type: !444)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 130, column: 12)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 129, column: 20)
!554 = distinct !DILexicalBlock(scope: !511, file: !2, line: 129, column: 6)
!555 = !DILocalVariable(name: "__pad", scope: !556, file: !2, line: 142, type: !444)
!556 = distinct !DILexicalBlock(scope: !557, file: !2, line: 142, column: 13)
!557 = distinct !DILexicalBlock(scope: !553, file: !2, line: 133, column: 7)
!558 = !DILocalVariable(name: "__pad", scope: !559, file: !2, line: 160, type: !444)
!559 = distinct !DILexicalBlock(scope: !511, file: !2, line: 160, column: 11)
!560 = !DILocalVariable(name: "__pad", scope: !561, file: !2, line: 167, type: !444)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 167, column: 3)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 164, column: 22)
!563 = distinct !DILexicalBlock(scope: !511, file: !2, line: 164, column: 6)
!564 = !DILabel(scope: !511, name: "err_freepool", file: !2, line: 171)
!565 = !DILocalVariable(name: "__pad", scope: !566, file: !2, line: 173, type: !444)
!566 = distinct !DILexicalBlock(scope: !511, file: !2, line: 173, column: 2)
!567 = !DILabel(scope: !511, name: "err_warn", file: !2, line: 175)
!568 = !DILocation(line: 67, column: 2, scope: !511)
!569 = !DILocation(line: 67, column: 13, scope: !511)
!570 = !DILocation(line: 68, column: 2, scope: !511)
!571 = !DILocation(line: 68, column: 13, scope: !511)
!572 = !DILocation(line: 69, column: 2, scope: !511)
!573 = !DILocation(line: 69, column: 13, scope: !511)
!574 = !DILocation(line: 70, column: 2, scope: !511)
!575 = !DILocation(line: 70, column: 32, scope: !511)
!576 = !DILocation(line: 70, column: 44, scope: !511)
!577 = !DILocation(line: 71, column: 2, scope: !511)
!578 = !DILocation(line: 71, column: 6, scope: !511)
!579 = !DILocation(line: 71, column: 26, scope: !511)
!580 = !DILocation(line: 72, column: 2, scope: !511)
!581 = !DILocation(line: 72, column: 16, scope: !511)
!582 = !DILocation(line: 72, column: 34, scope: !511)
!583 = !DILocation(line: 73, column: 2, scope: !511)
!584 = !DILocation(line: 73, column: 22, scope: !511)
!585 = !DILocation(line: 74, column: 2, scope: !511)
!586 = !DILocation(line: 74, column: 15, scope: !511)
!587 = !DILocation(line: 76, column: 11, scope: !511)
!588 = !DILocation(line: 76, column: 11, scope: !535)
!589 = !DILocation(line: 76, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !535, file: !2, line: 76, column: 11)
!591 = !DILocation(line: 76, column: 11, scope: !592)
!592 = distinct !DILexicalBlock(scope: !590, file: !2, line: 76, column: 11)
!593 = !DILocation(line: 76, column: 9, scope: !511)
!594 = !DILocation(line: 77, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !511, file: !2, line: 77, column: 6)
!596 = !DILocation(line: 77, column: 13, scope: !595)
!597 = !DILocation(line: 77, column: 6, scope: !511)
!598 = !DILocation(line: 78, column: 13, scope: !595)
!599 = !DILocation(line: 78, column: 3, scope: !595)
!600 = !DILocation(line: 81, column: 2, scope: !511)
!601 = !DILocation(line: 81, column: 2, scope: !537)
!602 = !DILocation(line: 81, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !537, file: !2, line: 81, column: 2)
!604 = !DILocation(line: 81, column: 2, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !2, line: 81, column: 2)
!606 = !DILocation(line: 82, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !511, file: !2, line: 82, column: 6)
!608 = !DILocation(line: 82, column: 17, scope: !607)
!609 = !DILocation(line: 82, column: 21, scope: !607)
!610 = !DILocation(line: 82, column: 6, scope: !511)
!611 = !DILocation(line: 83, column: 10, scope: !607)
!612 = !DILocation(line: 83, column: 3, scope: !607)
!613 = !DILocation(line: 85, column: 15, scope: !511)
!614 = !DILocation(line: 85, column: 12, scope: !511)
!615 = !DILocation(line: 94, column: 14, scope: !511)
!616 = !DILocation(line: 94, column: 12, scope: !511)
!617 = !DILocation(line: 95, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !511, file: !2, line: 95, column: 6)
!619 = !DILocation(line: 95, column: 16, scope: !618)
!620 = !DILocation(line: 95, column: 19, scope: !618)
!621 = !DILocation(line: 95, column: 30, scope: !618)
!622 = !DILocation(line: 95, column: 35, scope: !618)
!623 = !DILocation(line: 95, column: 6, scope: !511)
!624 = !DILocation(line: 96, column: 20, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !2, line: 95, column: 44)
!626 = !DILocation(line: 96, column: 31, scope: !625)
!627 = !DILocation(line: 96, column: 18, scope: !625)
!628 = !DILocation(line: 97, column: 16, scope: !625)
!629 = !DILocation(line: 97, column: 13, scope: !625)
!630 = !DILocation(line: 98, column: 2, scope: !625)
!631 = !DILocation(line: 105, column: 11, scope: !511)
!632 = !DILocation(line: 105, column: 11, scope: !539)
!633 = !DILocation(line: 105, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !539, file: !2, line: 105, column: 11)
!635 = !DILocation(line: 105, column: 11, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !2, line: 105, column: 11)
!637 = !DILocation(line: 105, column: 9, scope: !511)
!638 = !DILocation(line: 108, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !511, file: !2, line: 108, column: 6)
!640 = !DILocation(line: 108, column: 13, scope: !639)
!641 = !DILocation(line: 108, column: 6, scope: !511)
!642 = !DILocation(line: 109, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !2, line: 108, column: 29)
!644 = !DILocation(line: 110, column: 3, scope: !643)
!645 = !DILocation(line: 113, column: 6, scope: !543)
!646 = !DILocation(line: 113, column: 6, scope: !511)
!647 = !DILocation(line: 114, column: 12, scope: !541)
!648 = !DILocation(line: 114, column: 12, scope: !545)
!649 = !DILocation(line: 114, column: 12, scope: !650)
!650 = distinct !DILexicalBlock(scope: !545, file: !2, line: 114, column: 12)
!651 = !DILocation(line: 114, column: 12, scope: !652)
!652 = distinct !DILexicalBlock(scope: !650, file: !2, line: 114, column: 12)
!653 = !DILocation(line: 114, column: 12, scope: !542)
!654 = !DILocation(line: 114, column: 10, scope: !542)
!655 = !DILocation(line: 117, column: 7, scope: !548)
!656 = !DILocation(line: 117, column: 14, scope: !548)
!657 = !DILocation(line: 117, column: 7, scope: !542)
!658 = !DILocation(line: 122, column: 13, scope: !547)
!659 = !DILocation(line: 122, column: 13, scope: !550)
!660 = !DILocation(line: 122, column: 13, scope: !661)
!661 = distinct !DILexicalBlock(scope: !550, file: !2, line: 122, column: 13)
!662 = !DILocation(line: 122, column: 13, scope: !663)
!663 = distinct !DILexicalBlock(scope: !661, file: !2, line: 122, column: 13)
!664 = !DILocation(line: 122, column: 13, scope: !548)
!665 = !DILocation(line: 122, column: 11, scope: !548)
!666 = !DILocation(line: 122, column: 4, scope: !548)
!667 = !DILocation(line: 125, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !542, file: !2, line: 125, column: 7)
!669 = !DILocation(line: 125, column: 14, scope: !668)
!670 = !DILocation(line: 125, column: 7, scope: !542)
!671 = !DILocation(line: 126, column: 11, scope: !668)
!672 = !DILocation(line: 126, column: 4, scope: !668)
!673 = !DILocation(line: 127, column: 2, scope: !542)
!674 = !DILocation(line: 129, column: 6, scope: !554)
!675 = !DILocation(line: 129, column: 6, scope: !511)
!676 = !DILocation(line: 130, column: 12, scope: !553)
!677 = !DILocation(line: 130, column: 12, scope: !552)
!678 = !DILocation(line: 130, column: 12, scope: !679)
!679 = distinct !DILexicalBlock(scope: !552, file: !2, line: 130, column: 12)
!680 = !DILocation(line: 130, column: 12, scope: !681)
!681 = distinct !DILexicalBlock(scope: !679, file: !2, line: 130, column: 12)
!682 = !DILocation(line: 130, column: 10, scope: !553)
!683 = !DILocation(line: 133, column: 7, scope: !557)
!684 = !DILocation(line: 133, column: 14, scope: !557)
!685 = !DILocation(line: 133, column: 7, scope: !553)
!686 = !DILocation(line: 142, column: 13, scope: !557)
!687 = !DILocation(line: 142, column: 13, scope: !556)
!688 = !DILocation(line: 142, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !556, file: !2, line: 142, column: 13)
!690 = !DILocation(line: 142, column: 13, scope: !691)
!691 = distinct !DILexicalBlock(scope: !689, file: !2, line: 142, column: 13)
!692 = !DILocation(line: 142, column: 11, scope: !557)
!693 = !DILocation(line: 142, column: 4, scope: !557)
!694 = !DILocation(line: 145, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !553, file: !2, line: 145, column: 7)
!696 = !DILocation(line: 145, column: 14, scope: !695)
!697 = !DILocation(line: 145, column: 7, scope: !553)
!698 = !DILocation(line: 146, column: 14, scope: !695)
!699 = !DILocation(line: 146, column: 11, scope: !695)
!700 = !DILocation(line: 146, column: 4, scope: !695)
!701 = !DILocation(line: 148, column: 21, scope: !695)
!702 = !DILocation(line: 148, column: 27, scope: !695)
!703 = !DILocation(line: 148, column: 34, scope: !695)
!704 = !DILocation(line: 148, column: 32, scope: !695)
!705 = !DILocation(line: 148, column: 42, scope: !695)
!706 = !DILocation(line: 148, column: 4, scope: !695)
!707 = !DILocation(line: 149, column: 2, scope: !553)
!708 = !DILocation(line: 151, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !511, file: !2, line: 151, column: 6)
!710 = !DILocation(line: 151, column: 6, scope: !511)
!711 = !DILocation(line: 152, column: 3, scope: !709)
!712 = !DILocation(line: 154, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !511, file: !2, line: 154, column: 6)
!714 = !DILocation(line: 154, column: 6, scope: !511)
!715 = !DILocation(line: 155, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !2, line: 154, column: 22)
!717 = !DILocation(line: 155, column: 16, scope: !716)
!718 = !DILocation(line: 155, column: 23, scope: !716)
!719 = !DILocation(line: 155, column: 21, scope: !716)
!720 = !DILocation(line: 155, column: 31, scope: !716)
!721 = !DILocation(line: 155, column: 42, scope: !716)
!722 = !DILocation(line: 155, column: 48, scope: !716)
!723 = !DILocation(line: 155, column: 3, scope: !716)
!724 = !DILocation(line: 156, column: 13, scope: !716)
!725 = !DILocation(line: 156, column: 10, scope: !716)
!726 = !DILocation(line: 157, column: 2, scope: !716)
!727 = !DILocation(line: 159, column: 15, scope: !511)
!728 = !DILocation(line: 159, column: 2, scope: !511)
!729 = !DILocation(line: 159, column: 8, scope: !511)
!730 = !DILocation(line: 159, column: 13, scope: !511)
!731 = !DILocation(line: 160, column: 11, scope: !511)
!732 = !DILocation(line: 160, column: 11, scope: !559)
!733 = !DILocation(line: 160, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !559, file: !2, line: 160, column: 11)
!735 = !DILocation(line: 160, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !2, line: 160, column: 11)
!737 = !DILocation(line: 160, column: 9, scope: !511)
!738 = !DILocation(line: 161, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !511, file: !2, line: 161, column: 6)
!740 = !DILocation(line: 161, column: 13, scope: !739)
!741 = !DILocation(line: 161, column: 6, scope: !511)
!742 = !DILocation(line: 162, column: 3, scope: !739)
!743 = !DILocation(line: 164, column: 6, scope: !563)
!744 = !DILocation(line: 164, column: 6, scope: !511)
!745 = !DILocation(line: 166, column: 20, scope: !562)
!746 = !DILocation(line: 166, column: 31, scope: !562)
!747 = !DILocation(line: 166, column: 37, scope: !562)
!748 = !DILocation(line: 166, column: 3, scope: !562)
!749 = !DILocation(line: 167, column: 3, scope: !562)
!750 = !DILocation(line: 167, column: 3, scope: !561)
!751 = !DILocation(line: 167, column: 3, scope: !752)
!752 = distinct !DILexicalBlock(scope: !561, file: !2, line: 167, column: 3)
!753 = !DILocation(line: 167, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !752, file: !2, line: 167, column: 3)
!755 = !DILocation(line: 168, column: 2, scope: !562)
!756 = !DILocation(line: 169, column: 2, scope: !511)
!757 = !DILocation(line: 171, column: 1, scope: !511)
!758 = !DILocation(line: 172, column: 19, scope: !511)
!759 = !DILocation(line: 172, column: 25, scope: !511)
!760 = !DILocation(line: 172, column: 2, scope: !511)
!761 = !DILocation(line: 173, column: 2, scope: !511)
!762 = !DILocation(line: 173, column: 2, scope: !566)
!763 = !DILocation(line: 173, column: 2, scope: !764)
!764 = distinct !DILexicalBlock(scope: !566, file: !2, line: 173, column: 2)
!765 = !DILocation(line: 173, column: 2, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !2, line: 173, column: 2)
!767 = !DILocation(line: 174, column: 2, scope: !511)
!768 = !DILocation(line: 175, column: 1, scope: !511)
!769 = !DILocation(line: 176, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !511, file: !2, line: 176, column: 6)
!771 = !DILocation(line: 176, column: 6, scope: !511)
!772 = !DILocation(line: 177, column: 3, scope: !770)
!773 = !DILocation(line: 178, column: 9, scope: !511)
!774 = !DILocation(line: 178, column: 2, scope: !511)
!775 = !DILocation(line: 179, column: 1, scope: !511)
!776 = !DISubprogram(name: "get_efi_config_table", scope: !26, file: !26, line: 966, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!777 = !DISubroutineType(types: !778)
!778 = !{!58, !122}
!779 = distinct !DISubprogram(name: "size_add", scope: !780, file: !780, line: 208, type: !781, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !783)
!780 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!781 = !DISubroutineType(types: !782)
!782 = !{!401, !401, !401}
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(name: "addend1", arg: 1, scope: !779, file: !780, line: 208, type: !401)
!785 = !DILocalVariable(name: "addend2", arg: 2, scope: !779, file: !780, line: 208, type: !401)
!786 = !DILocalVariable(name: "bytes", scope: !779, file: !780, line: 210, type: !401)
!787 = !DILocation(line: 208, column: 51, scope: !779)
!788 = !DILocation(line: 208, column: 67, scope: !779)
!789 = !DILocation(line: 210, column: 2, scope: !779)
!790 = !DILocation(line: 210, column: 9, scope: !779)
!791 = !DILocation(line: 212, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !779, file: !780, line: 212, column: 6)
!793 = !DILocation(line: 212, column: 6, scope: !779)
!794 = !DILocation(line: 213, column: 3, scope: !792)
!795 = !DILocation(line: 215, column: 9, scope: !779)
!796 = !DILocation(line: 215, column: 2, scope: !779)
!797 = !DILocation(line: 216, column: 1, scope: !779)
!798 = distinct !DISubprogram(name: "size_mul", scope: !780, file: !780, line: 189, type: !781, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !799)
!799 = !{!800, !801, !802}
!800 = !DILocalVariable(name: "factor1", arg: 1, scope: !798, file: !780, line: 189, type: !401)
!801 = !DILocalVariable(name: "factor2", arg: 2, scope: !798, file: !780, line: 189, type: !401)
!802 = !DILocalVariable(name: "bytes", scope: !798, file: !780, line: 191, type: !401)
!803 = !DILocation(line: 189, column: 51, scope: !798)
!804 = !DILocation(line: 189, column: 67, scope: !798)
!805 = !DILocation(line: 191, column: 2, scope: !798)
!806 = !DILocation(line: 191, column: 9, scope: !798)
!807 = !DILocation(line: 193, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !798, file: !780, line: 193, column: 6)
!809 = !DILocation(line: 193, column: 6, scope: !798)
!810 = !DILocation(line: 194, column: 3, scope: !808)
!811 = !DILocation(line: 196, column: 9, scope: !798)
!812 = !DILocation(line: 196, column: 2, scope: !798)
!813 = !DILocation(line: 197, column: 1, scope: !798)
!814 = !DISubprogram(name: "efi_printk", scope: !26, file: !26, line: 972, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!815 = !DISubroutineType(types: !816)
!816 = !{!66, !817, null}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!819 = distinct !DISubprogram(name: "memzero_explicit", scope: !820, file: !820, line: 276, type: !821, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !823)
!820 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!821 = !DISubroutineType(types: !822)
!822 = !{null, !58, !401}
!823 = !{!824, !825}
!824 = !DILocalVariable(name: "s", arg: 1, scope: !819, file: !820, line: 276, type: !58)
!825 = !DILocalVariable(name: "count", arg: 2, scope: !819, file: !820, line: 276, type: !401)
!826 = !DILocation(line: 276, column: 43, scope: !819)
!827 = !DILocation(line: 276, column: 53, scope: !819)
!828 = !DILocation(line: 278, column: 9, scope: !819)
!829 = !DILocation(line: 278, column: 15, scope: !819)
!830 = !DILocation(line: 278, column: 2, scope: !819)
!831 = !DILocation(line: 279, column: 2, scope: !819)
!832 = !{i64 2147802508}
!833 = !DILocation(line: 280, column: 1, scope: !819)
!834 = !DISubprogram(name: "memcpy", scope: !835, file: !835, line: 18, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!835 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!836 = !DISubroutineType(types: !837)
!837 = !{!58, !58, !218, !401}
!838 = distinct !DISubprogram(name: "efi_is_64bit", scope: !482, file: !482, line: 198, type: !483, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23)
!839 = !DILocation(line: 202, column: 9, scope: !838)
!840 = !{i8 0, i8 2}
!841 = !{}
!842 = !DILocation(line: 202, column: 2, scope: !838)
!843 = distinct !DISubprogram(name: "ror64", scope: !844, file: !844, line: 115, type: !845, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !847)
!844 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!845 = !DISubroutineType(types: !846)
!846 = !{!48, !48, !27}
!847 = !{!848, !849}
!848 = !DILocalVariable(name: "word", arg: 1, scope: !843, file: !844, line: 115, type: !48)
!849 = !DILocalVariable(name: "shift", arg: 2, scope: !843, file: !844, line: 115, type: !27)
!850 = !DILocation(line: 115, column: 33, scope: !843)
!851 = !DILocation(line: 115, column: 52, scope: !843)
!852 = !DILocation(line: 117, column: 10, scope: !843)
!853 = !DILocation(line: 117, column: 19, scope: !843)
!854 = !DILocation(line: 117, column: 25, scope: !843)
!855 = !DILocation(line: 117, column: 15, scope: !843)
!856 = !DILocation(line: 117, column: 35, scope: !843)
!857 = !DILocation(line: 117, column: 46, scope: !843)
!858 = !DILocation(line: 117, column: 45, scope: !843)
!859 = !DILocation(line: 117, column: 53, scope: !843)
!860 = !DILocation(line: 117, column: 40, scope: !843)
!861 = !DILocation(line: 117, column: 32, scope: !843)
!862 = !DILocation(line: 117, column: 2, scope: !843)
!863 = distinct !DISubprogram(name: "rol32", scope: !844, file: !844, line: 125, type: !864, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!53, !53, !27}
!866 = !{!867, !868}
!867 = !DILocalVariable(name: "word", arg: 1, scope: !863, file: !844, line: 125, type: !53)
!868 = !DILocalVariable(name: "shift", arg: 2, scope: !863, file: !844, line: 125, type: !27)
!869 = !DILocation(line: 125, column: 33, scope: !863)
!870 = !DILocation(line: 125, column: 52, scope: !863)
!871 = !DILocation(line: 127, column: 10, scope: !863)
!872 = !DILocation(line: 127, column: 19, scope: !863)
!873 = !DILocation(line: 127, column: 25, scope: !863)
!874 = !DILocation(line: 127, column: 15, scope: !863)
!875 = !DILocation(line: 127, column: 35, scope: !863)
!876 = !DILocation(line: 127, column: 46, scope: !863)
!877 = !DILocation(line: 127, column: 45, scope: !863)
!878 = !DILocation(line: 127, column: 53, scope: !863)
!879 = !DILocation(line: 127, column: 40, scope: !863)
!880 = !DILocation(line: 127, column: 32, scope: !863)
!881 = !DILocation(line: 127, column: 2, scope: !863)
!882 = distinct !DISubprogram(name: "__must_check_overflow", scope: !780, file: !780, line: 51, type: !883, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!163, !163}
!885 = !{!886}
!886 = !DILocalVariable(name: "overflow", arg: 1, scope: !882, file: !780, line: 51, type: !163)
!887 = !DILocation(line: 51, column: 60, scope: !882)
!888 = !DILocation(line: 53, column: 9, scope: !882)
!889 = !DILocation(line: 53, column: 2, scope: !882)
!890 = !DISubprogram(name: "memset", scope: !835, file: !835, line: 22, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubroutineType(types: !892)
!892 = !{!58, !58, !66, !401}
