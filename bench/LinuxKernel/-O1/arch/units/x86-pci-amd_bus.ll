; ModuleID = 'arch/x86/pci/amd_bus.c'
source_filename = "arch/x86/pci/amd_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init..kmod_amd_bus__292_412_amd_postcore_init\22, \22a\22\09\09"
module asm "__initcall__kmod_amd_bus__292_412_amd_postcore_init2:\09\09\09"
module asm ".long\09__initstub__kmod_amd_bus__292_412_amd_postcore_init2 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.amd_hostbridge = type { i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }
%struct.amd_nb_bus_dev_range = type { i8, i8, i8 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.range = type { i64, i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pci_root_info = type { %struct.list_head, [12 x i8], %struct.list_head, %struct.resource, i32, i32 }
%struct.pci_root_res = type { %struct.list_head, %struct.resource }

@__UNIQUE_ID___addressable___initstub__kmod_amd_bus__292_412_amd_postcore_init2293 = internal global ptr @__initstub__kmod_amd_bus__292_412_amd_postcore_init2, section ".discard.addressable", align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@hb_probes = internal global [5 x %struct.amd_hostbridge] [%struct.amd_hostbridge { i32 0, i32 24, i32 4352 }, %struct.amd_hostbridge { i32 0, i32 24, i32 4608 }, %struct.amd_hostbridge { i32 255, i32 0, i32 4608 }, %struct.amd_hostbridge { i32 0, i32 24, i32 4864 }, %struct.amd_hostbridge { i32 0, i32 24, i32 5632 }], section ".init.data", align 16, !dbg !327
@.str = private unnamed_addr constant [41 x i8] c"\017node %d link %d: io port [%llx, %llx]\0A\00", align 1, !dbg !258
@.str.1 = private unnamed_addr constant [26 x i8] c"\016TOM: %016llx aka %lldM\0A\00", align 1, !dbg !263
@.str.2 = private unnamed_addr constant [22 x i8] c"\017Fam 10h mmconf %pR\0A\00", align 1, !dbg !268
@.str.3 = private unnamed_addr constant [37 x i8] c"\017node %d link %d: mmio [%llx, %llx]\00", align 1, !dbg !273
@.str.4 = private unnamed_addr constant [20 x i8] c"\01c ==> [%llx, %llx]\00", align 1, !dbg !278
@.str.5 = private unnamed_addr constant [19 x i8] c"\01c %s [%llx, %llx]\00", align 1, !dbg !283
@.str.6 = private unnamed_addr constant [4 x i8] c"and\00", align 1, !dbg !288
@.str.7 = private unnamed_addr constant [4 x i8] c"==>\00", align 1, !dbg !293
@.str.8 = private unnamed_addr constant [6 x i8] c"\01c%s\0A\00", align 1, !dbg !295
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !300
@.str.10 = private unnamed_addr constant [10 x i8] c" ==> none\00", align 1, !dbg !305
@.str.11 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !310
@.str.12 = private unnamed_addr constant [27 x i8] c"\016TOM2: %016llx aka %lldM\0A\00", align 1, !dbg !312
@pci_root_infos = external dso_local global %struct.list_head, align 8
@.str.13 = private unnamed_addr constant [31 x i8] c"\017bus: %pR on node %x link %x\0A\00", align 1, !dbg !317
@.str.14 = private unnamed_addr constant [17 x i8] c"\017bus: %02x %pR\0A\00", align 1, !dbg !322
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"pci/amd_bus:online\00", align 1, !dbg !337
@.str.16 = private unnamed_addr constant [23 x i8] c"arch/x86/pci/amd_bus.c\00", align 1, !dbg !339
@pci_probe = external dso_local global i32, align 4
@amd_nb_bus_dev_ranges = external dso_local constant [0 x %struct.amd_nb_bus_dev_range], align 1
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_amd_bus__292_412_amd_postcore_init2293], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_amd_bus__292_412_amd_postcore_init2() #0 section ".init.text" align 16 !dbg !353 {
entry:
  %call = call i32 @amd_postcore_init() #10, !dbg !356
  ret i32 %call, !dbg !356
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @amd_postcore_init() #0 section ".init.text" align 16 !dbg !357 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !358
  %conv = zext i8 %0 to i32, !dbg !360
  %cmp = icmp ne i32 %conv, 2, !dbg !361
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !362

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !363
  %conv2 = zext i8 %1 to i32, !dbg !364
  %cmp3 = icmp ne i32 %conv2, 9, !dbg !365
  br i1 %cmp3, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !367
  br label %return, !dbg !367

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i32 @early_root_info_init() #10, !dbg !368
  %call5 = call i32 @pci_io_ecs_init() #10, !dbg !369
  store i32 0, ptr %retval, align 4, !dbg !370
  br label %return, !dbg !370

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !371
  ret i32 %2, !dbg !371
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_root_info_init() #0 section ".init.text" align 16 !dbg !372 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %bus = alloca i32, align 4
  %slot = alloca i32, align 4
  %node = alloca i32, align 4
  %link = alloca i32, align 4
  %def_node = alloca i32, align 4
  %def_link = alloca i32, align 4
  %info = alloca ptr, align 8
  %reg = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %range = alloca [16 x %struct.range], align 16
  %val = alloca i64, align 8
  %address = alloca i32, align 4
  %found = alloca i8, align 1
  %fam10h_mmconf_res = alloca %struct.resource, align 8
  %fam10h_mmconf = alloca ptr, align 8
  %fam10h_mmconf_start = alloca i64, align 8
  %fam10h_mmconf_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %id = alloca i32, align 4
  %device = alloca i16, align 2
  %vendor = alloca i16, align 2
  %min_bus = alloca i32, align 4
  %max_bus = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  %tmp167 = alloca i32, align 4
  %tmp211 = alloca i32, align 4
  %changed = alloca i32, align 4
  %endx = alloca i64, align 8
  %tmp243 = alloca i32, align 4
  %tmp255 = alloca i32, align 4
  %tmp262 = alloca i32, align 4
  %tmp280 = alloca i32, align 4
  %tmp294 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp325 = alloca ptr, align 8
  %busnum = alloca i32, align 4
  %root_res = alloca ptr, align 8
  %tmp335 = alloca i32, align 4
  %__mptr340 = alloca ptr, align 8
  %tmp341 = alloca ptr, align 8
  %tmp353 = alloca i32, align 4
  %__mptr356 = alloca ptr, align 8
  %tmp359 = alloca ptr, align 8
  %__mptr363 = alloca ptr, align 8
  %tmp366 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %i, metadata !374, metadata !DIExpression()), !dbg !440
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus) #11, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !375, metadata !DIExpression()), !dbg !442
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #11, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !376, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #11, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %node, metadata !377, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 4, ptr %link) #11, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %link, metadata !378, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 4, ptr %def_node) #11, !dbg !449
  call void @llvm.dbg.declare(metadata ptr %def_node, metadata !379, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 4, ptr %def_link) #11, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %def_link, metadata !380, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %info, metadata !381, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #11, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !382, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %start, metadata !383, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %end, metadata !384, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 256, ptr %range) #11, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %range, metadata !385, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %val, metadata !394, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #11, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %address, metadata !395, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #11, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %found, metadata !396, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 64, ptr %fam10h_mmconf_res) #11, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %fam10h_mmconf_res, metadata !399, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %fam10h_mmconf) #11, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %fam10h_mmconf, metadata !400, metadata !DIExpression()), !dbg !471
  call void @llvm.lifetime.start.p0(i64 8, ptr %fam10h_mmconf_start) #11, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %fam10h_mmconf_start, metadata !401, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %fam10h_mmconf_end) #11, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %fam10h_mmconf_end, metadata !402, metadata !DIExpression()), !dbg !475
  %call = call i32 @early_pci_allowed() #12, !dbg !476
  %tobool = icmp ne i32 %call, 0, !dbg !476
  br i1 %tobool, label %if.end, label %if.then, !dbg !478

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !479

if.end:                                           ; preds = %entry
  store i8 0, ptr %found, align 1, !dbg !480
  store i32 0, ptr %i, align 4, !dbg !481
  br label %for.cond, !dbg !482

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !dbg !483
  %conv = sext i32 %0 to i64, !dbg !483
  %cmp = icmp ult i64 %conv, 5, !dbg !484
  br i1 %cmp, label %for.body, label %for.end, !dbg !485

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #11, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %id, metadata !403, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #11, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %device, metadata !407, metadata !DIExpression()), !dbg !489
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #11, !dbg !490
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !411, metadata !DIExpression()), !dbg !491
  %1 = load i32, ptr %i, align 4, !dbg !492
  %idxprom = sext i32 %1 to i64, !dbg !493
  %arrayidx = getelementptr [5 x %struct.amd_hostbridge], ptr @hb_probes, i64 0, i64 %idxprom, !dbg !493
  %bus2 = getelementptr inbounds %struct.amd_hostbridge, ptr %arrayidx, i32 0, i32 0, !dbg !494
  %2 = load i32, ptr %bus2, align 4, !dbg !494
  store i32 %2, ptr %bus, align 4, !dbg !495
  %3 = load i32, ptr %i, align 4, !dbg !496
  %idxprom3 = sext i32 %3 to i64, !dbg !497
  %arrayidx4 = getelementptr [5 x %struct.amd_hostbridge], ptr @hb_probes, i64 0, i64 %idxprom3, !dbg !497
  %slot5 = getelementptr inbounds %struct.amd_hostbridge, ptr %arrayidx4, i32 0, i32 1, !dbg !498
  %4 = load i32, ptr %slot5, align 4, !dbg !498
  store i32 %4, ptr %slot, align 4, !dbg !499
  %5 = load i32, ptr %bus, align 4, !dbg !500
  %conv6 = trunc i32 %5 to i8, !dbg !500
  %6 = load i32, ptr %slot, align 4, !dbg !501
  %conv7 = trunc i32 %6 to i8, !dbg !501
  %call8 = call i32 @read_pci_config(i8 noundef zeroext %conv6, i8 noundef zeroext %conv7, i8 noundef zeroext 0, i8 noundef zeroext 0) #12, !dbg !502
  store i32 %call8, ptr %id, align 4, !dbg !503
  %7 = load i32, ptr %id, align 4, !dbg !504
  %and = and i32 %7, 65535, !dbg !505
  %conv9 = trunc i32 %and to i16, !dbg !504
  store i16 %conv9, ptr %vendor, align 2, !dbg !506
  %8 = load i32, ptr %id, align 4, !dbg !507
  %shr = lshr i32 %8, 16, !dbg !508
  %and10 = and i32 %shr, 65535, !dbg !509
  %conv11 = trunc i32 %and10 to i16, !dbg !510
  store i16 %conv11, ptr %device, align 2, !dbg !511
  %9 = load i16, ptr %vendor, align 2, !dbg !512
  %conv12 = zext i16 %9 to i32, !dbg !512
  %cmp13 = icmp ne i32 %conv12, 4130, !dbg !514
  br i1 %cmp13, label %land.lhs.true, label %if.end19, !dbg !515

land.lhs.true:                                    ; preds = %for.body
  %10 = load i16, ptr %vendor, align 2, !dbg !516
  %conv15 = zext i16 %10 to i32, !dbg !516
  %cmp16 = icmp ne i32 %conv15, 7572, !dbg !517
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !518

if.then18:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end19:                                         ; preds = %land.lhs.true, %for.body
  %11 = load i32, ptr %i, align 4, !dbg !520
  %idxprom20 = sext i32 %11 to i64, !dbg !522
  %arrayidx21 = getelementptr [5 x %struct.amd_hostbridge], ptr @hb_probes, i64 0, i64 %idxprom20, !dbg !522
  %device22 = getelementptr inbounds %struct.amd_hostbridge, ptr %arrayidx21, i32 0, i32 2, !dbg !523
  %12 = load i32, ptr %device22, align 4, !dbg !523
  %13 = load i16, ptr %device, align 2, !dbg !524
  %conv23 = zext i16 %13 to i32, !dbg !524
  %cmp24 = icmp eq i32 %12, %conv23, !dbg !525
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !526

if.then26:                                        ; preds = %if.end19
  store i8 1, ptr %found, align 1, !dbg !527
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !529

if.end27:                                         ; preds = %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !530
  br label %cleanup, !dbg !530

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then18
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #11, !dbg !530
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #11, !dbg !530
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #11, !dbg !530
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !531

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i32, ptr %i, align 4, !dbg !532
  %inc = add i32 %14, 1, !dbg !532
  store i32 %inc, ptr %i, align 4, !dbg !532
  br label %for.cond, !dbg !533, !llvm.loop !534

for.end:                                          ; preds = %cleanup, %for.cond
  %15 = load i8, ptr %found, align 1, !dbg !538, !range !540, !noundef !541
  %tobool30 = trunc i8 %15 to i1, !dbg !538
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !542

if.then31:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !543

if.end32:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !544
  br label %for.cond33, !dbg !545

for.cond33:                                       ; preds = %for.inc59, %if.end32
  %16 = load i32, ptr %i, align 4, !dbg !546
  %cmp34 = icmp slt i32 %16, 4, !dbg !547
  br i1 %cmp34, label %for.body36, label %for.end61, !dbg !548

for.body36:                                       ; preds = %for.cond33
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_bus) #11, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %min_bus, metadata !412, metadata !DIExpression()), !dbg !550
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_bus) #11, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %max_bus, metadata !416, metadata !DIExpression()), !dbg !552
  %17 = load i32, ptr %bus, align 4, !dbg !553
  %conv37 = trunc i32 %17 to i8, !dbg !553
  %18 = load i32, ptr %slot, align 4, !dbg !554
  %conv38 = trunc i32 %18 to i8, !dbg !554
  %19 = load i32, ptr %i, align 4, !dbg !555
  %shl = shl i32 %19, 2, !dbg !556
  %add = add i32 224, %shl, !dbg !557
  %conv39 = trunc i32 %add to i8, !dbg !558
  %call40 = call i32 @read_pci_config(i8 noundef zeroext %conv37, i8 noundef zeroext %conv38, i8 noundef zeroext 1, i8 noundef zeroext %conv39) #12, !dbg !559
  store i32 %call40, ptr %reg, align 4, !dbg !560
  %20 = load i32, ptr %reg, align 4, !dbg !561
  %and41 = and i32 %20, 7, !dbg !563
  %cmp42 = icmp ne i32 %and41, 3, !dbg !564
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !565

if.then44:                                        ; preds = %for.body36
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !566

if.end45:                                         ; preds = %for.body36
  %21 = load i32, ptr %reg, align 4, !dbg !567
  %shr46 = lshr i32 %21, 16, !dbg !568
  %and47 = and i32 %shr46, 255, !dbg !569
  store i32 %and47, ptr %min_bus, align 4, !dbg !570
  %22 = load i32, ptr %reg, align 4, !dbg !571
  %shr48 = lshr i32 %22, 24, !dbg !572
  %and49 = and i32 %shr48, 255, !dbg !573
  store i32 %and49, ptr %max_bus, align 4, !dbg !574
  %23 = load i32, ptr %reg, align 4, !dbg !575
  %shr50 = lshr i32 %23, 4, !dbg !576
  %and51 = and i32 %shr50, 7, !dbg !577
  store i32 %and51, ptr %node, align 4, !dbg !578
  %24 = load i32, ptr %reg, align 4, !dbg !579
  %shr52 = lshr i32 %24, 8, !dbg !580
  %and53 = and i32 %shr52, 3, !dbg !581
  store i32 %and53, ptr %link, align 4, !dbg !582
  %25 = load i32, ptr %min_bus, align 4, !dbg !583
  %26 = load i32, ptr %max_bus, align 4, !dbg !584
  %27 = load i32, ptr %node, align 4, !dbg !585
  %28 = load i32, ptr %link, align 4, !dbg !586
  %call54 = call ptr @alloc_pci_root_info(i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28) #12, !dbg !587
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !588
  br label %cleanup55, !dbg !588

cleanup55:                                        ; preds = %if.end45, %if.then44
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_bus) #11, !dbg !588
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_bus) #11, !dbg !588
  %cleanup.dest57 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest57, label %unreachable [
    i32 0, label %cleanup.cont58
    i32 7, label %for.inc59
  ]

cleanup.cont58:                                   ; preds = %cleanup55
  br label %for.inc59, !dbg !589

for.inc59:                                        ; preds = %cleanup.cont58, %cleanup55
  %29 = load i32, ptr %i, align 4, !dbg !590
  %inc60 = add i32 %29, 1, !dbg !590
  store i32 %inc60, ptr %i, align 4, !dbg !590
  br label %for.cond33, !dbg !591, !llvm.loop !592

for.end61:                                        ; preds = %for.cond33
  %30 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !594
  %conv62 = zext i8 %30 to i32, !dbg !596
  %cmp63 = icmp sgt i32 %conv62, 17, !dbg !597
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !598

if.then65:                                        ; preds = %for.end61
  store i32 0, ptr %retval, align 4, !dbg !599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !599

if.end66:                                         ; preds = %for.end61
  %31 = load i32, ptr %bus, align 4, !dbg !600
  %conv67 = trunc i32 %31 to i8, !dbg !600
  %32 = load i32, ptr %slot, align 4, !dbg !601
  %conv68 = trunc i32 %32 to i8, !dbg !601
  %call69 = call i32 @read_pci_config(i8 noundef zeroext %conv67, i8 noundef zeroext %conv68, i8 noundef zeroext 0, i8 noundef zeroext 96) #12, !dbg !602
  store i32 %call69, ptr %reg, align 4, !dbg !603
  %33 = load i32, ptr %reg, align 4, !dbg !604
  %shr70 = lshr i32 %33, 8, !dbg !605
  %and71 = and i32 %shr70, 7, !dbg !606
  store i32 %and71, ptr %def_node, align 4, !dbg !607
  %34 = load i32, ptr %bus, align 4, !dbg !608
  %conv72 = trunc i32 %34 to i8, !dbg !608
  %35 = load i32, ptr %slot, align 4, !dbg !609
  %conv73 = trunc i32 %35 to i8, !dbg !609
  %call74 = call i32 @read_pci_config(i8 noundef zeroext %conv72, i8 noundef zeroext %conv73, i8 noundef zeroext 0, i8 noundef zeroext 100) #12, !dbg !610
  store i32 %call74, ptr %reg, align 4, !dbg !611
  %36 = load i32, ptr %reg, align 4, !dbg !612
  %shr75 = lshr i32 %36, 8, !dbg !613
  %and76 = and i32 %shr75, 3, !dbg !614
  store i32 %and76, ptr %def_link, align 4, !dbg !615
  %arraydecay = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !616
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 256, i1 false), !dbg !616
  %arraydecay77 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !617
  %call78 = call i32 @add_range(ptr noundef %arraydecay77, i32 noundef 16, i32 noundef 0, i64 noundef 0, i64 noundef 65536) #12, !dbg !618
  store i32 0, ptr %i, align 4, !dbg !619
  br label %for.cond79, !dbg !621

for.cond79:                                       ; preds = %for.inc117, %if.end66
  %37 = load i32, ptr %i, align 4, !dbg !622
  %cmp80 = icmp slt i32 %37, 4, !dbg !624
  br i1 %cmp80, label %for.body82, label %for.end119, !dbg !625

for.body82:                                       ; preds = %for.cond79
  %38 = load i32, ptr %bus, align 4, !dbg !626
  %conv83 = trunc i32 %38 to i8, !dbg !626
  %39 = load i32, ptr %slot, align 4, !dbg !628
  %conv84 = trunc i32 %39 to i8, !dbg !628
  %40 = load i32, ptr %i, align 4, !dbg !629
  %shl85 = shl i32 %40, 3, !dbg !630
  %add86 = add i32 192, %shl85, !dbg !631
  %conv87 = trunc i32 %add86 to i8, !dbg !632
  %call88 = call i32 @read_pci_config(i8 noundef zeroext %conv83, i8 noundef zeroext %conv84, i8 noundef zeroext 1, i8 noundef zeroext %conv87) #12, !dbg !633
  store i32 %call88, ptr %reg, align 4, !dbg !634
  %41 = load i32, ptr %reg, align 4, !dbg !635
  %and89 = and i32 %41, 3, !dbg !637
  %tobool90 = icmp ne i32 %and89, 0, !dbg !637
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !638

if.then91:                                        ; preds = %for.body82
  br label %for.inc117, !dbg !639

if.end92:                                         ; preds = %for.body82
  %42 = load i32, ptr %reg, align 4, !dbg !640
  %and93 = and i32 %42, 16773120, !dbg !641
  %conv94 = zext i32 %and93 to i64, !dbg !640
  store i64 %conv94, ptr %start, align 8, !dbg !642
  %43 = load i32, ptr %bus, align 4, !dbg !643
  %conv95 = trunc i32 %43 to i8, !dbg !643
  %44 = load i32, ptr %slot, align 4, !dbg !644
  %conv96 = trunc i32 %44 to i8, !dbg !644
  %45 = load i32, ptr %i, align 4, !dbg !645
  %shl97 = shl i32 %45, 3, !dbg !646
  %add98 = add i32 196, %shl97, !dbg !647
  %conv99 = trunc i32 %add98 to i8, !dbg !648
  %call100 = call i32 @read_pci_config(i8 noundef zeroext %conv95, i8 noundef zeroext %conv96, i8 noundef zeroext 1, i8 noundef zeroext %conv99) #12, !dbg !649
  store i32 %call100, ptr %reg, align 4, !dbg !650
  %46 = load i32, ptr %reg, align 4, !dbg !651
  %and101 = and i32 %46, 7, !dbg !652
  store i32 %and101, ptr %node, align 4, !dbg !653
  %47 = load i32, ptr %reg, align 4, !dbg !654
  %shr102 = lshr i32 %47, 4, !dbg !655
  %and103 = and i32 %shr102, 3, !dbg !656
  store i32 %and103, ptr %link, align 4, !dbg !657
  %48 = load i32, ptr %reg, align 4, !dbg !658
  %and104 = and i32 %48, 16773120, !dbg !659
  %or = or i32 %and104, 4095, !dbg !660
  %conv105 = zext i32 %or to i64, !dbg !661
  store i64 %conv105, ptr %end, align 8, !dbg !662
  %49 = load i32, ptr %node, align 4, !dbg !663
  %50 = load i32, ptr %link, align 4, !dbg !664
  %call106 = call ptr @find_pci_root_info(i32 noundef %49, i32 noundef %50) #10, !dbg !665
  store ptr %call106, ptr %info, align 8, !dbg !666
  %51 = load ptr, ptr %info, align 8, !dbg !667
  %tobool107 = icmp ne ptr %51, null, !dbg !667
  br i1 %tobool107, label %if.end109, label %if.then108, !dbg !669

if.then108:                                       ; preds = %if.end92
  br label %for.inc117, !dbg !670

if.end109:                                        ; preds = %if.end92
  br label %do.body, !dbg !671

do.body:                                          ; preds = %if.end109
  br label %do.cond, !dbg !673

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !673

do.end:                                           ; preds = %do.cond
  %52 = load i32, ptr %node, align 4, !dbg !671
  %53 = load i32, ptr %link, align 4, !dbg !671
  %54 = load i64, ptr %start, align 8, !dbg !671
  %55 = load i64, ptr %end, align 8, !dbg !671
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %52, i32 noundef %53, i64 noundef %54, i64 noundef %55) #10, !dbg !671
  store i32 %call110, ptr %tmp, align 4, !dbg !673
  %56 = load i32, ptr %tmp, align 4, !dbg !671
  %57 = load i64, ptr %end, align 8, !dbg !675
  %cmp111 = icmp ugt i64 %57, 65535, !dbg !677
  br i1 %cmp111, label %if.then113, label %if.end114, !dbg !678

if.then113:                                       ; preds = %do.end
  store i64 65535, ptr %end, align 8, !dbg !679
  br label %if.end114, !dbg !680

if.end114:                                        ; preds = %if.then113, %do.end
  %58 = load ptr, ptr %info, align 8, !dbg !681
  %59 = load i64, ptr %start, align 8, !dbg !682
  %60 = load i64, ptr %end, align 8, !dbg !683
  call void @update_res(ptr noundef %58, i64 noundef %59, i64 noundef %60, i64 noundef 256, i32 noundef 1) #12, !dbg !684
  %arraydecay115 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !685
  %61 = load i64, ptr %start, align 8, !dbg !686
  %62 = load i64, ptr %end, align 8, !dbg !687
  %add116 = add i64 %62, 1, !dbg !688
  call void @subtract_range(ptr noundef %arraydecay115, i32 noundef 16, i64 noundef %61, i64 noundef %add116) #12, !dbg !689
  br label %for.inc117, !dbg !690

for.inc117:                                       ; preds = %if.end114, %if.then108, %if.then91
  %63 = load i32, ptr %i, align 4, !dbg !691
  %inc118 = add i32 %63, 1, !dbg !691
  store i32 %inc118, ptr %i, align 4, !dbg !691
  br label %for.cond79, !dbg !692, !llvm.loop !693

for.end119:                                       ; preds = %for.cond79
  %64 = load i32, ptr %def_node, align 4, !dbg !695
  %65 = load i32, ptr %def_link, align 4, !dbg !696
  %call120 = call ptr @find_pci_root_info(i32 noundef %64, i32 noundef %65) #10, !dbg !697
  store ptr %call120, ptr %info, align 8, !dbg !698
  %66 = load ptr, ptr %info, align 8, !dbg !699
  %tobool121 = icmp ne ptr %66, null, !dbg !699
  br i1 %tobool121, label %if.then122, label %if.end142, !dbg !701

if.then122:                                       ; preds = %for.end119
  store i32 0, ptr %i, align 4, !dbg !702
  br label %for.cond123, !dbg !705

for.cond123:                                      ; preds = %for.inc139, %if.then122
  %67 = load i32, ptr %i, align 4, !dbg !706
  %cmp124 = icmp slt i32 %67, 16, !dbg !708
  br i1 %cmp124, label %for.body126, label %for.end141, !dbg !709

for.body126:                                      ; preds = %for.cond123
  %68 = load i32, ptr %i, align 4, !dbg !710
  %idxprom127 = sext i32 %68 to i64, !dbg !713
  %arrayidx128 = getelementptr [16 x %struct.range], ptr %range, i64 0, i64 %idxprom127, !dbg !713
  %end129 = getelementptr inbounds %struct.range, ptr %arrayidx128, i32 0, i32 1, !dbg !714
  %69 = load i64, ptr %end129, align 8, !dbg !714
  %tobool130 = icmp ne i64 %69, 0, !dbg !713
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !715

if.then131:                                       ; preds = %for.body126
  br label %for.inc139, !dbg !716

if.end132:                                        ; preds = %for.body126
  %70 = load ptr, ptr %info, align 8, !dbg !717
  %71 = load i32, ptr %i, align 4, !dbg !718
  %idxprom133 = sext i32 %71 to i64, !dbg !719
  %arrayidx134 = getelementptr [16 x %struct.range], ptr %range, i64 0, i64 %idxprom133, !dbg !719
  %start135 = getelementptr inbounds %struct.range, ptr %arrayidx134, i32 0, i32 0, !dbg !720
  %72 = load i64, ptr %start135, align 16, !dbg !720
  %73 = load i32, ptr %i, align 4, !dbg !721
  %idxprom136 = sext i32 %73 to i64, !dbg !722
  %arrayidx137 = getelementptr [16 x %struct.range], ptr %range, i64 0, i64 %idxprom136, !dbg !722
  %end138 = getelementptr inbounds %struct.range, ptr %arrayidx137, i32 0, i32 1, !dbg !723
  %74 = load i64, ptr %end138, align 8, !dbg !723
  %sub = sub i64 %74, 1, !dbg !724
  call void @update_res(ptr noundef %70, i64 noundef %72, i64 noundef %sub, i64 noundef 256, i32 noundef 1) #12, !dbg !725
  br label %for.inc139, !dbg !726

for.inc139:                                       ; preds = %if.end132, %if.then131
  %75 = load i32, ptr %i, align 4, !dbg !727
  %inc140 = add i32 %75, 1, !dbg !727
  store i32 %inc140, ptr %i, align 4, !dbg !727
  br label %for.cond123, !dbg !728, !llvm.loop !729

for.end141:                                       ; preds = %for.cond123
  br label %if.end142, !dbg !731

if.end142:                                        ; preds = %for.end141, %for.end119
  %arraydecay143 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !732
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay143, i8 0, i64 256, i1 false), !dbg !732
  %call144 = call i64 @cap_resource(i64 noundef 1086626725887) #12, !dbg !733
  store i64 %call144, ptr %end, align 8, !dbg !734
  %76 = load i64, ptr %end, align 8, !dbg !735
  %inc145 = add i64 %76, 1, !dbg !735
  store i64 %inc145, ptr %end, align 8, !dbg !735
  %arraydecay146 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !736
  %77 = load i64, ptr %end, align 8, !dbg !737
  %call147 = call i32 @add_range(ptr noundef %arraydecay146, i32 noundef 16, i32 noundef 0, i64 noundef 0, i64 noundef %77) #12, !dbg !738
  store i32 -1073676262, ptr %address, align 4, !dbg !739
  %78 = load i32, ptr %address, align 4, !dbg !740
  %call148 = call i64 @native_read_msr(i32 noundef %78) #12, !dbg !740
  store i64 %call148, ptr %val, align 8, !dbg !740
  %79 = load i64, ptr %val, align 8, !dbg !741
  %and149 = and i64 %79, 281474968322048, !dbg !742
  store i64 %and149, ptr %end, align 8, !dbg !743
  br label %do.body150, !dbg !744

do.body150:                                       ; preds = %if.end142
  br label %do.cond151, !dbg !746

do.cond151:                                       ; preds = %do.body150
  br label %do.end152, !dbg !746

do.end152:                                        ; preds = %do.cond151
  %80 = load i64, ptr %end, align 8, !dbg !744
  %81 = load i64, ptr %end, align 8, !dbg !744
  %shr154 = lshr i64 %81, 20, !dbg !744
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %80, i64 noundef %shr154) #10, !dbg !744
  store i32 %call155, ptr %tmp153, align 4, !dbg !746
  %82 = load i32, ptr %tmp153, align 4, !dbg !744
  %83 = load i64, ptr %end, align 8, !dbg !748
  %cmp156 = icmp ult i64 %83, 4294967296, !dbg !750
  br i1 %cmp156, label %if.then158, label %if.end160, !dbg !751

if.then158:                                       ; preds = %do.end152
  %arraydecay159 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !752
  %84 = load i64, ptr %end, align 8, !dbg !753
  call void @subtract_range(ptr noundef %arraydecay159, i32 noundef 16, i64 noundef 0, i64 noundef %84) #12, !dbg !754
  br label %if.end160, !dbg !754

if.end160:                                        ; preds = %if.then158, %do.end152
  %call161 = call ptr @amd_get_mmconfig_range(ptr noundef %fam10h_mmconf_res) #12, !dbg !755
  store ptr %call161, ptr %fam10h_mmconf, align 8, !dbg !756
  %85 = load ptr, ptr %fam10h_mmconf, align 8, !dbg !757
  %tobool162 = icmp ne ptr %85, null, !dbg !757
  br i1 %tobool162, label %if.then163, label %if.else, !dbg !759

if.then163:                                       ; preds = %if.end160
  br label %do.body164, !dbg !760

do.body164:                                       ; preds = %if.then163
  br label %do.cond165, !dbg !763

do.cond165:                                       ; preds = %do.body164
  br label %do.end166, !dbg !763

do.end166:                                        ; preds = %do.cond165
  %86 = load ptr, ptr %fam10h_mmconf, align 8, !dbg !760
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %86) #10, !dbg !760
  store i32 %call168, ptr %tmp167, align 4, !dbg !763
  %87 = load i32, ptr %tmp167, align 4, !dbg !760
  %88 = load ptr, ptr %fam10h_mmconf, align 8, !dbg !765
  %start169 = getelementptr inbounds %struct.resource, ptr %88, i32 0, i32 0, !dbg !766
  %89 = load i64, ptr %start169, align 8, !dbg !766
  store i64 %89, ptr %fam10h_mmconf_start, align 8, !dbg !767
  %90 = load ptr, ptr %fam10h_mmconf, align 8, !dbg !768
  %end170 = getelementptr inbounds %struct.resource, ptr %90, i32 0, i32 1, !dbg !769
  %91 = load i64, ptr %end170, align 8, !dbg !769
  store i64 %91, ptr %fam10h_mmconf_end, align 8, !dbg !770
  %arraydecay171 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !771
  %92 = load i64, ptr %fam10h_mmconf_start, align 8, !dbg !772
  %93 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !773
  %add172 = add i64 %93, 1, !dbg !774
  call void @subtract_range(ptr noundef %arraydecay171, i32 noundef 16, i64 noundef %92, i64 noundef %add172) #12, !dbg !775
  br label %if.end173, !dbg !776

if.else:                                          ; preds = %if.end160
  store i64 0, ptr %fam10h_mmconf_start, align 8, !dbg !777
  store i64 0, ptr %fam10h_mmconf_end, align 8, !dbg !779
  br label %if.end173

if.end173:                                        ; preds = %if.else, %do.end166
  store i32 0, ptr %i, align 4, !dbg !780
  br label %for.cond174, !dbg !781

for.cond174:                                      ; preds = %for.inc282, %if.end173
  %94 = load i32, ptr %i, align 4, !dbg !782
  %cmp175 = icmp slt i32 %94, 8, !dbg !783
  br i1 %cmp175, label %for.body177, label %for.end284, !dbg !784

for.body177:                                      ; preds = %for.cond174
  %95 = load i32, ptr %bus, align 4, !dbg !785
  %conv178 = trunc i32 %95 to i8, !dbg !785
  %96 = load i32, ptr %slot, align 4, !dbg !786
  %conv179 = trunc i32 %96 to i8, !dbg !786
  %97 = load i32, ptr %i, align 4, !dbg !787
  %shl180 = shl i32 %97, 3, !dbg !788
  %add181 = add i32 128, %shl180, !dbg !789
  %conv182 = trunc i32 %add181 to i8, !dbg !790
  %call183 = call i32 @read_pci_config(i8 noundef zeroext %conv178, i8 noundef zeroext %conv179, i8 noundef zeroext 1, i8 noundef zeroext %conv182) #12, !dbg !791
  store i32 %call183, ptr %reg, align 4, !dbg !792
  %98 = load i32, ptr %reg, align 4, !dbg !793
  %and184 = and i32 %98, 3, !dbg !795
  %tobool185 = icmp ne i32 %and184, 0, !dbg !795
  br i1 %tobool185, label %if.end187, label %if.then186, !dbg !796

if.then186:                                       ; preds = %for.body177
  br label %for.inc282, !dbg !797

if.end187:                                        ; preds = %for.body177
  %99 = load i32, ptr %reg, align 4, !dbg !798
  %and188 = and i32 %99, -256, !dbg !799
  %conv189 = zext i32 %and188 to i64, !dbg !798
  store i64 %conv189, ptr %start, align 8, !dbg !800
  %100 = load i64, ptr %start, align 8, !dbg !801
  %shl190 = shl i64 %100, 8, !dbg !801
  store i64 %shl190, ptr %start, align 8, !dbg !801
  %101 = load i32, ptr %bus, align 4, !dbg !802
  %conv191 = trunc i32 %101 to i8, !dbg !802
  %102 = load i32, ptr %slot, align 4, !dbg !803
  %conv192 = trunc i32 %102 to i8, !dbg !803
  %103 = load i32, ptr %i, align 4, !dbg !804
  %shl193 = shl i32 %103, 3, !dbg !805
  %add194 = add i32 132, %shl193, !dbg !806
  %conv195 = trunc i32 %add194 to i8, !dbg !807
  %call196 = call i32 @read_pci_config(i8 noundef zeroext %conv191, i8 noundef zeroext %conv192, i8 noundef zeroext 1, i8 noundef zeroext %conv195) #12, !dbg !808
  store i32 %call196, ptr %reg, align 4, !dbg !809
  %104 = load i32, ptr %reg, align 4, !dbg !810
  %and197 = and i32 %104, 7, !dbg !811
  store i32 %and197, ptr %node, align 4, !dbg !812
  %105 = load i32, ptr %reg, align 4, !dbg !813
  %shr198 = lshr i32 %105, 4, !dbg !814
  %and199 = and i32 %shr198, 3, !dbg !815
  store i32 %and199, ptr %link, align 4, !dbg !816
  %106 = load i32, ptr %reg, align 4, !dbg !817
  %and200 = and i32 %106, -256, !dbg !818
  %conv201 = zext i32 %and200 to i64, !dbg !819
  store i64 %conv201, ptr %end, align 8, !dbg !820
  %107 = load i64, ptr %end, align 8, !dbg !821
  %shl202 = shl i64 %107, 8, !dbg !821
  store i64 %shl202, ptr %end, align 8, !dbg !821
  %108 = load i64, ptr %end, align 8, !dbg !822
  %or203 = or i64 %108, 65535, !dbg !822
  store i64 %or203, ptr %end, align 8, !dbg !822
  %109 = load i32, ptr %node, align 4, !dbg !823
  %110 = load i32, ptr %link, align 4, !dbg !824
  %call204 = call ptr @find_pci_root_info(i32 noundef %109, i32 noundef %110) #10, !dbg !825
  store ptr %call204, ptr %info, align 8, !dbg !826
  %111 = load ptr, ptr %info, align 8, !dbg !827
  %tobool205 = icmp ne ptr %111, null, !dbg !827
  br i1 %tobool205, label %if.end207, label %if.then206, !dbg !829

if.then206:                                       ; preds = %if.end187
  br label %for.inc282, !dbg !830

if.end207:                                        ; preds = %if.end187
  br label %do.body208, !dbg !831

do.body208:                                       ; preds = %if.end207
  br label %do.cond209, !dbg !833

do.cond209:                                       ; preds = %do.body208
  br label %do.end210, !dbg !833

do.end210:                                        ; preds = %do.cond209
  %112 = load i32, ptr %node, align 4, !dbg !831
  %113 = load i32, ptr %link, align 4, !dbg !831
  %114 = load i64, ptr %start, align 8, !dbg !831
  %115 = load i64, ptr %end, align 8, !dbg !831
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %112, i32 noundef %113, i64 noundef %114, i64 noundef %115) #10, !dbg !831
  store i32 %call212, ptr %tmp211, align 4, !dbg !833
  %116 = load i32, ptr %tmp211, align 4, !dbg !831
  %117 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !835
  %tobool213 = icmp ne i64 %117, 0, !dbg !835
  br i1 %tobool213, label %if.then214, label %if.end272, !dbg !836

if.then214:                                       ; preds = %do.end210
  call void @llvm.lifetime.start.p0(i64 4, ptr %changed) #11, !dbg !837
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !417, metadata !DIExpression()), !dbg !838
  store i32 0, ptr %changed, align 4, !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %endx) #11, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %endx, metadata !423, metadata !DIExpression()), !dbg !840
  store i64 0, ptr %endx, align 8, !dbg !840
  %118 = load i64, ptr %start, align 8, !dbg !841
  %119 = load i64, ptr %fam10h_mmconf_start, align 8, !dbg !843
  %cmp215 = icmp uge i64 %118, %119, !dbg !844
  br i1 %cmp215, label %land.lhs.true217, label %if.end222, !dbg !845

land.lhs.true217:                                 ; preds = %if.then214
  %120 = load i64, ptr %start, align 8, !dbg !846
  %121 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !847
  %cmp218 = icmp ule i64 %120, %121, !dbg !848
  br i1 %cmp218, label %if.then220, label %if.end222, !dbg !849

if.then220:                                       ; preds = %land.lhs.true217
  %122 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !850
  %add221 = add i64 %122, 1, !dbg !852
  store i64 %add221, ptr %start, align 8, !dbg !853
  store i32 1, ptr %changed, align 4, !dbg !854
  br label %if.end222, !dbg !855

if.end222:                                        ; preds = %if.then220, %land.lhs.true217, %if.then214
  %123 = load i64, ptr %end, align 8, !dbg !856
  %124 = load i64, ptr %fam10h_mmconf_start, align 8, !dbg !858
  %cmp223 = icmp uge i64 %123, %124, !dbg !859
  br i1 %cmp223, label %land.lhs.true225, label %if.end230, !dbg !860

land.lhs.true225:                                 ; preds = %if.end222
  %125 = load i64, ptr %end, align 8, !dbg !861
  %126 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !862
  %cmp226 = icmp ule i64 %125, %126, !dbg !863
  br i1 %cmp226, label %if.then228, label %if.end230, !dbg !864

if.then228:                                       ; preds = %land.lhs.true225
  %127 = load i64, ptr %fam10h_mmconf_start, align 8, !dbg !865
  %sub229 = sub i64 %127, 1, !dbg !867
  store i64 %sub229, ptr %end, align 8, !dbg !868
  store i32 1, ptr %changed, align 4, !dbg !869
  br label %if.end230, !dbg !870

if.end230:                                        ; preds = %if.then228, %land.lhs.true225, %if.end222
  %128 = load i64, ptr %start, align 8, !dbg !871
  %129 = load i64, ptr %fam10h_mmconf_start, align 8, !dbg !873
  %cmp231 = icmp ult i64 %128, %129, !dbg !874
  br i1 %cmp231, label %land.lhs.true233, label %if.end246, !dbg !875

land.lhs.true233:                                 ; preds = %if.end230
  %130 = load i64, ptr %end, align 8, !dbg !876
  %131 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !877
  %cmp234 = icmp ugt i64 %130, %131, !dbg !878
  br i1 %cmp234, label %if.then236, label %if.end246, !dbg !879

if.then236:                                       ; preds = %land.lhs.true233
  %132 = load i64, ptr %fam10h_mmconf_start, align 8, !dbg !880
  %sub237 = sub i64 %132, 1, !dbg !882
  store i64 %sub237, ptr %endx, align 8, !dbg !883
  %133 = load ptr, ptr %info, align 8, !dbg !884
  %134 = load i64, ptr %start, align 8, !dbg !885
  %135 = load i64, ptr %endx, align 8, !dbg !886
  call void @update_res(ptr noundef %133, i64 noundef %134, i64 noundef %135, i64 noundef 512, i32 noundef 0) #12, !dbg !887
  %arraydecay238 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !888
  %136 = load i64, ptr %start, align 8, !dbg !889
  %137 = load i64, ptr %endx, align 8, !dbg !890
  %add239 = add i64 %137, 1, !dbg !891
  call void @subtract_range(ptr noundef %arraydecay238, i32 noundef 16, i64 noundef %136, i64 noundef %add239) #12, !dbg !892
  br label %do.body240, !dbg !893

do.body240:                                       ; preds = %if.then236
  br label %do.cond241, !dbg !895

do.cond241:                                       ; preds = %do.body240
  br label %do.end242, !dbg !895

do.end242:                                        ; preds = %do.cond241
  %138 = load i64, ptr %start, align 8, !dbg !893
  %139 = load i64, ptr %endx, align 8, !dbg !893
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %138, i64 noundef %139) #10, !dbg !893
  store i32 %call244, ptr %tmp243, align 4, !dbg !895
  %140 = load i32, ptr %tmp243, align 4, !dbg !893
  %141 = load i64, ptr %fam10h_mmconf_end, align 8, !dbg !897
  %add245 = add i64 %141, 1, !dbg !898
  store i64 %add245, ptr %start, align 8, !dbg !899
  store i32 1, ptr %changed, align 4, !dbg !900
  br label %if.end246, !dbg !901

if.end246:                                        ; preds = %do.end242, %land.lhs.true233, %if.end230
  %142 = load i32, ptr %changed, align 4, !dbg !902
  %tobool247 = icmp ne i32 %142, 0, !dbg !902
  br i1 %tobool247, label %if.then248, label %if.end267, !dbg !904

if.then248:                                       ; preds = %if.end246
  %143 = load i64, ptr %start, align 8, !dbg !905
  %144 = load i64, ptr %end, align 8, !dbg !908
  %cmp249 = icmp ule i64 %143, %144, !dbg !909
  br i1 %cmp249, label %if.then251, label %if.else258, !dbg !910

if.then251:                                       ; preds = %if.then248
  br label %do.body252, !dbg !911

do.body252:                                       ; preds = %if.then251
  br label %do.cond253, !dbg !914

do.cond253:                                       ; preds = %do.body252
  br label %do.end254, !dbg !914

do.end254:                                        ; preds = %do.cond253
  %145 = load i64, ptr %endx, align 8, !dbg !911
  %tobool256 = icmp ne i64 %145, 0, !dbg !911
  %146 = zext i1 %tobool256 to i64, !dbg !911
  %cond = select i1 %tobool256, ptr @.str.6, ptr @.str.7, !dbg !911
  %147 = load i64, ptr %start, align 8, !dbg !911
  %148 = load i64, ptr %end, align 8, !dbg !911
  %call257 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %cond, i64 noundef %147, i64 noundef %148) #10, !dbg !911
  store i32 %call257, ptr %tmp255, align 4, !dbg !914
  %149 = load i32, ptr %tmp255, align 4, !dbg !911
  br label %if.end266, !dbg !916

if.else258:                                       ; preds = %if.then248
  br label %do.body259, !dbg !917

do.body259:                                       ; preds = %if.else258
  br label %do.cond260, !dbg !920

do.cond260:                                       ; preds = %do.body259
  br label %do.end261, !dbg !920

do.end261:                                        ; preds = %do.cond260
  %150 = load i64, ptr %endx, align 8, !dbg !917
  %tobool263 = icmp ne i64 %150, 0, !dbg !917
  %151 = zext i1 %tobool263 to i64, !dbg !917
  %cond264 = select i1 %tobool263, ptr @.str.9, ptr @.str.10, !dbg !917
  %call265 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %cond264) #10, !dbg !917
  store i32 %call265, ptr %tmp262, align 4, !dbg !920
  %152 = load i32, ptr %tmp262, align 4, !dbg !917
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup268, !dbg !922

if.end266:                                        ; preds = %do.end254
  br label %if.end267, !dbg !923

if.end267:                                        ; preds = %if.end266, %if.end246
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !924
  br label %cleanup268, !dbg !924

cleanup268:                                       ; preds = %if.end267, %do.end261
  call void @llvm.lifetime.end.p0(i64 8, ptr %endx) #11, !dbg !924
  call void @llvm.lifetime.end.p0(i64 4, ptr %changed) #11, !dbg !924
  %cleanup.dest270 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest270, label %unreachable [
    i32 0, label %cleanup.cont271
    i32 22, label %for.inc282
  ]

cleanup.cont271:                                  ; preds = %cleanup268
  br label %if.end272, !dbg !925

if.end272:                                        ; preds = %cleanup.cont271, %do.end210
  %153 = load ptr, ptr %info, align 8, !dbg !926
  %154 = load i64, ptr %start, align 8, !dbg !927
  %call273 = call i64 @cap_resource(i64 noundef %154) #12, !dbg !928
  %155 = load i64, ptr %end, align 8, !dbg !929
  %call274 = call i64 @cap_resource(i64 noundef %155) #12, !dbg !930
  call void @update_res(ptr noundef %153, i64 noundef %call273, i64 noundef %call274, i64 noundef 512, i32 noundef 1) #12, !dbg !931
  %arraydecay275 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !932
  %156 = load i64, ptr %start, align 8, !dbg !933
  %157 = load i64, ptr %end, align 8, !dbg !934
  %add276 = add i64 %157, 1, !dbg !935
  call void @subtract_range(ptr noundef %arraydecay275, i32 noundef 16, i64 noundef %156, i64 noundef %add276) #12, !dbg !936
  br label %do.body277, !dbg !937

do.body277:                                       ; preds = %if.end272
  br label %do.cond278, !dbg !939

do.cond278:                                       ; preds = %do.body277
  br label %do.end279, !dbg !939

do.end279:                                        ; preds = %do.cond278
  %call281 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #10, !dbg !937
  store i32 %call281, ptr %tmp280, align 4, !dbg !939
  %158 = load i32, ptr %tmp280, align 4, !dbg !937
  br label %for.inc282, !dbg !941

for.inc282:                                       ; preds = %do.end279, %cleanup268, %if.then206, %if.then186
  %159 = load i32, ptr %i, align 4, !dbg !942
  %inc283 = add i32 %159, 1, !dbg !942
  store i32 %inc283, ptr %i, align 4, !dbg !942
  br label %for.cond174, !dbg !943, !llvm.loop !944

for.end284:                                       ; preds = %for.cond174
  store i32 -1073676272, ptr %address, align 4, !dbg !946
  %160 = load i32, ptr %address, align 4, !dbg !947
  %call285 = call i64 @native_read_msr(i32 noundef %160) #12, !dbg !947
  store i64 %call285, ptr %val, align 8, !dbg !947
  %161 = load i64, ptr %val, align 8, !dbg !948
  %and286 = and i64 %161, 2097152, !dbg !950
  %tobool287 = icmp ne i64 %and286, 0, !dbg !950
  br i1 %tobool287, label %if.then288, label %if.end298, !dbg !951

if.then288:                                       ; preds = %for.end284
  store i32 -1073676259, ptr %address, align 4, !dbg !952
  %162 = load i32, ptr %address, align 4, !dbg !954
  %call289 = call i64 @native_read_msr(i32 noundef %162) #12, !dbg !954
  store i64 %call289, ptr %val, align 8, !dbg !954
  %163 = load i64, ptr %val, align 8, !dbg !955
  %and290 = and i64 %163, 281474968322048, !dbg !956
  store i64 %and290, ptr %end, align 8, !dbg !957
  br label %do.body291, !dbg !958

do.body291:                                       ; preds = %if.then288
  br label %do.cond292, !dbg !960

do.cond292:                                       ; preds = %do.body291
  br label %do.end293, !dbg !960

do.end293:                                        ; preds = %do.cond292
  %164 = load i64, ptr %end, align 8, !dbg !958
  %165 = load i64, ptr %end, align 8, !dbg !958
  %shr295 = lshr i64 %165, 20, !dbg !958
  %call296 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i64 noundef %164, i64 noundef %shr295) #10, !dbg !958
  store i32 %call296, ptr %tmp294, align 4, !dbg !960
  %166 = load i32, ptr %tmp294, align 4, !dbg !958
  %arraydecay297 = getelementptr inbounds [16 x %struct.range], ptr %range, i64 0, i64 0, !dbg !962
  %167 = load i64, ptr %end, align 8, !dbg !963
  call void @subtract_range(ptr noundef %arraydecay297, i32 noundef 16, i64 noundef 4294967296, i64 noundef %167) #12, !dbg !964
  br label %if.end298, !dbg !965

if.end298:                                        ; preds = %do.end293, %for.end284
  %168 = load i32, ptr %def_node, align 4, !dbg !966
  %169 = load i32, ptr %def_link, align 4, !dbg !967
  %call299 = call ptr @find_pci_root_info(i32 noundef %168, i32 noundef %169) #10, !dbg !968
  store ptr %call299, ptr %info, align 8, !dbg !969
  %170 = load ptr, ptr %info, align 8, !dbg !970
  %tobool300 = icmp ne ptr %170, null, !dbg !970
  br i1 %tobool300, label %if.then301, label %if.end324, !dbg !972

if.then301:                                       ; preds = %if.end298
  store i32 0, ptr %i, align 4, !dbg !973
  br label %for.cond302, !dbg !976

for.cond302:                                      ; preds = %for.inc321, %if.then301
  %171 = load i32, ptr %i, align 4, !dbg !977
  %cmp303 = icmp slt i32 %171, 16, !dbg !979
  br i1 %cmp303, label %for.body305, label %for.end323, !dbg !980

for.body305:                                      ; preds = %for.cond302
  %172 = load i32, ptr %i, align 4, !dbg !981
  %idxprom306 = sext i32 %172 to i64, !dbg !984
  %arrayidx307 = getelementptr [16 x %struct.range], ptr %range, i64 0, i64 %idxprom306, !dbg !984
  %end308 = getelementptr inbounds %struct.range, ptr %arrayidx307, i32 0, i32 1, !dbg !985
  %173 = load i64, ptr %end308, align 8, !dbg !985
  %tobool309 = icmp ne i64 %173, 0, !dbg !984
  br i1 %tobool309, label %if.end311, label %if.then310, !dbg !986

if.then310:                                       ; preds = %for.body305
  br label %for.inc321, !dbg !987

if.end311:                                        ; preds = %for.body305
  %174 = load ptr, ptr %info, align 8, !dbg !988
  %175 = load i32, ptr %i, align 4, !dbg !989
  %idxprom312 = sext i32 %175 to i64, !dbg !990
  %arrayidx313 = getelementptr [16 x %struct.range], ptr %range, i64 0, i64 %idxprom312, !dbg !990
  %start314 = getelementptr inbounds %struct.range, ptr %arrayidx313, i32 0, i32 0, !dbg !991
  %176 = load i64, ptr %start314, align 16, !dbg !991
  %call315 = call i64 @cap_resource(i64 noundef %176) #12, !dbg !992
  %177 = load i32, ptr %i, align 4, !dbg !993
  %idxprom316 = sext i32 %177 to i64, !dbg !994
  %arrayidx317 = getelementptr [16 x %struct.range], ptr %range, i64 0, i64 %idxprom316, !dbg !994
  %end318 = getelementptr inbounds %struct.range, ptr %arrayidx317, i32 0, i32 1, !dbg !995
  %178 = load i64, ptr %end318, align 8, !dbg !995
  %sub319 = sub i64 %178, 1, !dbg !996
  %call320 = call i64 @cap_resource(i64 noundef %sub319) #12, !dbg !997
  call void @update_res(ptr noundef %174, i64 noundef %call315, i64 noundef %call320, i64 noundef 512, i32 noundef 1) #12, !dbg !998
  br label %for.inc321, !dbg !999

for.inc321:                                       ; preds = %if.end311, %if.then310
  %179 = load i32, ptr %i, align 4, !dbg !1000
  %inc322 = add i32 %179, 1, !dbg !1000
  store i32 %inc322, ptr %i, align 4, !dbg !1000
  br label %for.cond302, !dbg !1001, !llvm.loop !1002

for.end323:                                       ; preds = %for.cond302
  br label %if.end324, !dbg !1004

if.end324:                                        ; preds = %for.end323, %if.end298
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !424, metadata !DIExpression()), !dbg !1005
  %180 = load ptr, ptr @pci_root_infos, align 8, !dbg !1005
  store ptr %180, ptr %__mptr, align 8, !dbg !1005
  %181 = load ptr, ptr %__mptr, align 8, !dbg !1005
  %add.ptr = getelementptr i8, ptr %181, i64 0, !dbg !1005
  store ptr %add.ptr, ptr %tmp325, align 8, !dbg !1005
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !1006
  %182 = load ptr, ptr %tmp325, align 8, !dbg !1005
  store ptr %182, ptr %info, align 8, !dbg !1006
  br label %for.cond326, !dbg !1006

for.cond326:                                      ; preds = %for.inc362, %if.end324
  %183 = load ptr, ptr %info, align 8, !dbg !1007
  %list = getelementptr inbounds %struct.pci_root_info, ptr %183, i32 0, i32 0, !dbg !1007
  %cmp327 = icmp eq ptr %list, @pci_root_infos, !dbg !1007
  %lnot = xor i1 %cmp327, true, !dbg !1007
  br i1 %lnot, label %for.body329, label %for.end368, !dbg !1006

for.body329:                                      ; preds = %for.cond326
  call void @llvm.lifetime.start.p0(i64 4, ptr %busnum) #11, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %busnum, metadata !427, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_res) #11, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %root_res, metadata !430, metadata !DIExpression()), !dbg !1011
  %184 = load ptr, ptr %info, align 8, !dbg !1012
  %busn = getelementptr inbounds %struct.pci_root_info, ptr %184, i32 0, i32 3, !dbg !1013
  %start330 = getelementptr inbounds %struct.resource, ptr %busn, i32 0, i32 0, !dbg !1014
  %185 = load i64, ptr %start330, align 8, !dbg !1014
  %conv331 = trunc i64 %185 to i32, !dbg !1012
  store i32 %conv331, ptr %busnum, align 4, !dbg !1015
  br label %do.body332, !dbg !1016

do.body332:                                       ; preds = %for.body329
  br label %do.cond333, !dbg !1018

do.cond333:                                       ; preds = %do.body332
  br label %do.end334, !dbg !1018

do.end334:                                        ; preds = %do.cond333
  %186 = load ptr, ptr %info, align 8, !dbg !1016
  %busn336 = getelementptr inbounds %struct.pci_root_info, ptr %186, i32 0, i32 3, !dbg !1016
  %187 = load ptr, ptr %info, align 8, !dbg !1016
  %node337 = getelementptr inbounds %struct.pci_root_info, ptr %187, i32 0, i32 4, !dbg !1016
  %188 = load i32, ptr %node337, align 8, !dbg !1016
  %189 = load ptr, ptr %info, align 8, !dbg !1016
  %link338 = getelementptr inbounds %struct.pci_root_info, ptr %189, i32 0, i32 5, !dbg !1016
  %190 = load i32, ptr %link338, align 4, !dbg !1016
  %call339 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %busn336, i32 noundef %188, i32 noundef %190) #10, !dbg !1016
  store i32 %call339, ptr %tmp335, align 4, !dbg !1018
  %191 = load i32, ptr %tmp335, align 4, !dbg !1016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr340) #11, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %__mptr340, metadata !431, metadata !DIExpression()), !dbg !1020
  %192 = load ptr, ptr %info, align 8, !dbg !1020
  %resources = getelementptr inbounds %struct.pci_root_info, ptr %192, i32 0, i32 2, !dbg !1020
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !1020
  %193 = load ptr, ptr %next, align 8, !dbg !1020
  store ptr %193, ptr %__mptr340, align 8, !dbg !1020
  %194 = load ptr, ptr %__mptr340, align 8, !dbg !1020
  %add.ptr342 = getelementptr i8, ptr %194, i64 0, !dbg !1020
  store ptr %add.ptr342, ptr %tmp341, align 8, !dbg !1020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr340) #11, !dbg !1021
  %195 = load ptr, ptr %tmp341, align 8, !dbg !1020
  store ptr %195, ptr %root_res, align 8, !dbg !1021
  br label %for.cond343, !dbg !1021

for.cond343:                                      ; preds = %for.inc355, %do.end334
  %196 = load ptr, ptr %root_res, align 8, !dbg !1022
  %list344 = getelementptr inbounds %struct.pci_root_res, ptr %196, i32 0, i32 0, !dbg !1022
  %197 = load ptr, ptr %info, align 8, !dbg !1022
  %resources345 = getelementptr inbounds %struct.pci_root_info, ptr %197, i32 0, i32 2, !dbg !1022
  %cmp346 = icmp eq ptr %list344, %resources345, !dbg !1022
  %lnot348 = xor i1 %cmp346, true, !dbg !1022
  br i1 %lnot348, label %for.body349, label %for.end361, !dbg !1021

for.body349:                                      ; preds = %for.cond343
  br label %do.body350, !dbg !1023

do.body350:                                       ; preds = %for.body349
  br label %do.cond351, !dbg !1025

do.cond351:                                       ; preds = %do.body350
  br label %do.end352, !dbg !1025

do.end352:                                        ; preds = %do.cond351
  %198 = load i32, ptr %busnum, align 4, !dbg !1023
  %199 = load ptr, ptr %root_res, align 8, !dbg !1023
  %res = getelementptr inbounds %struct.pci_root_res, ptr %199, i32 0, i32 1, !dbg !1023
  %call354 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, i32 noundef %198, ptr noundef %res) #10, !dbg !1023
  store i32 %call354, ptr %tmp353, align 4, !dbg !1025
  %200 = load i32, ptr %tmp353, align 4, !dbg !1023
  br label %for.inc355, !dbg !1027

for.inc355:                                       ; preds = %do.end352
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr356) #11, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %__mptr356, metadata !434, metadata !DIExpression()), !dbg !1028
  %201 = load ptr, ptr %root_res, align 8, !dbg !1028
  %list357 = getelementptr inbounds %struct.pci_root_res, ptr %201, i32 0, i32 0, !dbg !1028
  %next358 = getelementptr inbounds %struct.list_head, ptr %list357, i32 0, i32 0, !dbg !1028
  %202 = load ptr, ptr %next358, align 8, !dbg !1028
  store ptr %202, ptr %__mptr356, align 8, !dbg !1028
  %203 = load ptr, ptr %__mptr356, align 8, !dbg !1028
  %add.ptr360 = getelementptr i8, ptr %203, i64 0, !dbg !1028
  store ptr %add.ptr360, ptr %tmp359, align 8, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr356) #11, !dbg !1022
  %204 = load ptr, ptr %tmp359, align 8, !dbg !1028
  store ptr %204, ptr %root_res, align 8, !dbg !1022
  br label %for.cond343, !dbg !1022, !llvm.loop !1029

for.end361:                                       ; preds = %for.cond343
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_res) #11, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 4, ptr %busnum) #11, !dbg !1031
  br label %for.inc362, !dbg !1032

for.inc362:                                       ; preds = %for.end361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr363) #11, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %__mptr363, metadata !437, metadata !DIExpression()), !dbg !1033
  %205 = load ptr, ptr %info, align 8, !dbg !1033
  %list364 = getelementptr inbounds %struct.pci_root_info, ptr %205, i32 0, i32 0, !dbg !1033
  %next365 = getelementptr inbounds %struct.list_head, ptr %list364, i32 0, i32 0, !dbg !1033
  %206 = load ptr, ptr %next365, align 8, !dbg !1033
  store ptr %206, ptr %__mptr363, align 8, !dbg !1033
  %207 = load ptr, ptr %__mptr363, align 8, !dbg !1033
  %add.ptr367 = getelementptr i8, ptr %207, i64 0, !dbg !1033
  store ptr %add.ptr367, ptr %tmp366, align 8, !dbg !1033
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr363) #11, !dbg !1007
  %208 = load ptr, ptr %tmp366, align 8, !dbg !1033
  store ptr %208, ptr %info, align 8, !dbg !1007
  br label %for.cond326, !dbg !1007, !llvm.loop !1034

for.end368:                                       ; preds = %for.cond326
  store i32 0, ptr %retval, align 4, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !1036

cleanup369:                                       ; preds = %for.end368, %if.then65, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fam10h_mmconf_end) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %fam10h_mmconf_start) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %fam10h_mmconf) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 64, ptr %fam10h_mmconf_res) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 256, ptr %range) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %def_link) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %def_node) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %link) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1037
  %209 = load i32, ptr %retval, align 4, !dbg !1037
  ret i32 %209, !dbg !1037

unreachable:                                      ; preds = %cleanup268, %cleanup55, %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_io_ecs_init() #0 section ".init.text" align 16 !dbg !1038 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1046
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1040, metadata !DIExpression()), !dbg !1047
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !1048
  %conv = zext i8 %0 to i32, !dbg !1050
  %cmp = icmp slt i32 %conv, 16, !dbg !1051
  br i1 %cmp, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1053

if.end:                                           ; preds = %entry
  %call = call i32 @early_pci_allowed() #12, !dbg !1054
  %tobool = icmp ne i32 %call, 0, !dbg !1054
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1056

if.then2:                                         ; preds = %if.end
  call void @pci_enable_pci_io_ecs() #10, !dbg !1057
  br label %if.end3, !dbg !1057

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.15, ptr noundef @amd_bus_cpu_online, ptr noundef null) #12, !dbg !1058
  store i32 %call4, ptr %ret, align 4, !dbg !1059
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1060
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1041, metadata !DIExpression()), !dbg !1060
  %1 = load i32, ptr %ret, align 4, !dbg !1060
  %cmp5 = icmp slt i32 %1, 0, !dbg !1060
  %lnot = xor i1 %cmp5, true, !dbg !1060
  %lnot7 = xor i1 %lnot, true, !dbg !1060
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1060
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1060
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1061
  %tobool8 = icmp ne i32 %2, 0, !dbg !1061
  %lnot9 = xor i1 %tobool8, true, !dbg !1061
  %lnot11 = xor i1 %lnot9, true, !dbg !1061
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1061
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1061
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !1061
  %tobool14 = icmp ne i64 %expval, 0, !dbg !1061
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !1060

if.then15:                                        ; preds = %if.end3
  br label %do.body, !dbg !1061

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1043, metadata !DIExpression()), !dbg !1062
  store i32 2305, ptr %__flags, align 4, !dbg !1062
  br label %do.body16, !dbg !1062

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !1063

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !1063

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !1062

do.body17:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !1065
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 393, i32 %3, i64 12) #11, !dbg !1065, !srcloc !1067
  br label %do.cond18, !dbg !1065

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1065

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !1062

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !1068

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1068

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1061
  br label %do.cond23, !dbg !1062

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !1062

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !1062

if.end25:                                         ; preds = %do.end24, %if.end3
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1060
  %tobool26 = icmp ne i32 %4, 0, !dbg !1060
  %lnot27 = xor i1 %tobool26, true, !dbg !1060
  %lnot29 = xor i1 %lnot27, true, !dbg !1060
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1060
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1060
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1060
  store i64 %expval32, ptr %tmp, align 8, !dbg !1061
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1070
  %5 = load i64, ptr %tmp, align 8, !dbg !1060
  %6 = load i32, ptr @pci_probe, align 4, !dbg !1071
  %or = or i32 %6, 262144, !dbg !1071
  store i32 %or, ptr @pci_probe, align 4, !dbg !1071
  store i32 0, ptr %retval, align 4, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1072

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1073
  %7 = load i32, ptr %retval, align 4, !dbg !1073
  ret i32 %7, !dbg !1073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1074 dso_local i32 @early_pci_allowed() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1076 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1082 dso_local ptr @alloc_pci_root_info(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1085 dso_local i32 @add_range(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @find_pci_root_info(i32 noundef %node, i32 noundef %link) #0 section ".init.text" align 16 !dbg !1089 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %link.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1093, metadata !DIExpression()), !dbg !1102
  store i32 %link, ptr %link.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !1094, metadata !DIExpression()), !dbg !1103
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1095, metadata !DIExpression()), !dbg !1105
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1096, metadata !DIExpression()), !dbg !1106
  %0 = load ptr, ptr @pci_root_infos, align 8, !dbg !1106
  store ptr %0, ptr %__mptr, align 8, !dbg !1106
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1106
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1106
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !1107
  %2 = load ptr, ptr %tmp, align 8, !dbg !1106
  store ptr %2, ptr %info, align 8, !dbg !1107
  br label %for.cond, !dbg !1107

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %info, align 8, !dbg !1108
  %list = getelementptr inbounds %struct.pci_root_info, ptr %3, i32 0, i32 0, !dbg !1108
  %cmp = icmp eq ptr %list, @pci_root_infos, !dbg !1108
  %lnot = xor i1 %cmp, true, !dbg !1108
  br i1 %lnot, label %for.body, label %for.end, !dbg !1107

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %info, align 8, !dbg !1109
  %node1 = getelementptr inbounds %struct.pci_root_info, ptr %4, i32 0, i32 4, !dbg !1111
  %5 = load i32, ptr %node1, align 8, !dbg !1111
  %6 = load i32, ptr %node.addr, align 4, !dbg !1112
  %cmp2 = icmp eq i32 %5, %6, !dbg !1113
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !1114

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %info, align 8, !dbg !1115
  %link3 = getelementptr inbounds %struct.pci_root_info, ptr %7, i32 0, i32 5, !dbg !1116
  %8 = load i32, ptr %link3, align 4, !dbg !1116
  %9 = load i32, ptr %link.addr, align 4, !dbg !1117
  %cmp4 = icmp eq i32 %8, %9, !dbg !1118
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1119

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %info, align 8, !dbg !1120
  store ptr %10, ptr %retval, align 8, !dbg !1121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1121

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1117

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #11, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !1099, metadata !DIExpression()), !dbg !1122
  %11 = load ptr, ptr %info, align 8, !dbg !1122
  %list6 = getelementptr inbounds %struct.pci_root_info, ptr %11, i32 0, i32 0, !dbg !1122
  %next = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !1122
  %12 = load ptr, ptr %next, align 8, !dbg !1122
  store ptr %12, ptr %__mptr5, align 8, !dbg !1122
  %13 = load ptr, ptr %__mptr5, align 8, !dbg !1122
  %add.ptr8 = getelementptr i8, ptr %13, i64 0, !dbg !1122
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #11, !dbg !1108
  %14 = load ptr, ptr %tmp7, align 8, !dbg !1122
  store ptr %14, ptr %info, align 8, !dbg !1108
  br label %for.cond, !dbg !1108, !llvm.loop !1123

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1125

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !1126
  %15 = load ptr, ptr %retval, align 8, !dbg !1126
  ret ptr %15, !dbg !1126
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1127 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1131 dso_local void @update_res(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1134 dso_local void @subtract_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cap_resource(i64 noundef %val) #6 align 16 !dbg !1137 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1141, metadata !DIExpression()), !dbg !1142
  %0 = load i64, ptr %val.addr, align 8, !dbg !1143
  %cmp = icmp ugt i64 %0, -1, !dbg !1145
  br i1 %cmp, label %if.then, label %if.end, !dbg !1146

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1147
  br label %return, !dbg !1147

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !1148
  store i64 %1, ptr %retval, align 8, !dbg !1149
  br label %return, !dbg !1149

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !1150
  ret i64 %2, !dbg !1150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #6 align 16 !dbg !1151 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1156, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1157, metadata !DIExpression()), !dbg !1160
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1161
  %call = call i64 @__rdmsr(i32 noundef %0) #12, !dbg !1162
  store i64 %call, ptr %val, align 8, !dbg !1163
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #12, !dbg !1164
  br i1 %call1, label %if.then, label %if.end, !dbg !1166

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !1167
  %2 = load i64, ptr %val, align 8, !dbg !1168
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #12, !dbg !1169
  br label %if.end, !dbg !1169

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !1170
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1171
  ret i64 %3, !dbg !1172
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1173 dso_local ptr @amd_get_mmconfig_range(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #7 align 16 !dbg !1177 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1179, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1180, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1181, metadata !DIExpression()), !dbg !1183
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1184
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !1185, !srcloc !1186
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !1185
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !1185
  store i64 %asmresult, ptr %low, align 8, !dbg !1185
  store i64 %asmresult1, ptr %high, align 8, !dbg !1185
  %2 = load i64, ptr %low, align 8, !dbg !1187
  %3 = load i64, ptr %high, align 8, !dbg !1187
  %shl = shl i64 %3, 32, !dbg !1187
  %or = or i64 %2, %shl, !dbg !1187
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !1188
  ret i64 %or, !dbg !1189
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !1190 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1220, metadata !DIExpression()), !dbg !1221
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1222
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !1223
  ret i1 %call, !dbg !1224
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1225 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !1228 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1233, metadata !DIExpression()), !dbg !1236
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1234, metadata !DIExpression()), !dbg !1237
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1238
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1239, !range !540, !noundef !541
  %tobool = trunc i8 %1 to i1, !dbg !1239
  %conv = zext i1 %tobool to i32, !dbg !1239
  %or = or i32 2, %conv, !dbg !1240
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !1241, !srcloc !1242

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1243
  br label %return, !dbg !1243

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1235), !dbg !1244
  store i1 true, ptr %retval, align 1, !dbg !1245
  br label %return, !dbg !1245

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1246
  ret i1 %2, !dbg !1246
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pci_enable_pci_io_ecs() #0 section ".init.text" align 16 !dbg !1247 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %bus = alloca i8, align 1
  %slot = alloca i8, align 1
  %limit = alloca i8, align 1
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1251, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1252, metadata !DIExpression()), !dbg !1265
  store i32 0, ptr %i, align 4, !dbg !1266
  store i32 0, ptr %n, align 4, !dbg !1267
  br label %for.cond, !dbg !1268

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %n, align 4, !dbg !1269
  %tobool = icmp ne i32 %0, 0, !dbg !1269
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1270

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !1271
  %idxprom = zext i32 %1 to i64, !dbg !1272
  %arrayidx = getelementptr [0 x %struct.amd_nb_bus_dev_range], ptr @amd_nb_bus_dev_ranges, i64 0, i64 %idxprom, !dbg !1272
  %dev_limit = getelementptr inbounds %struct.amd_nb_bus_dev_range, ptr %arrayidx, i32 0, i32 2, !dbg !1273
  %2 = load i8, ptr %dev_limit, align 1, !dbg !1273
  %conv = zext i8 %2 to i32, !dbg !1272
  %tobool1 = icmp ne i32 %conv, 0, !dbg !1270
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ], !dbg !1274
  br i1 %3, label %for.body, label %for.end26, !dbg !1275

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %bus) #11, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !1253, metadata !DIExpression()), !dbg !1277
  %4 = load i32, ptr %i, align 4, !dbg !1278
  %idxprom2 = zext i32 %4 to i64, !dbg !1279
  %arrayidx3 = getelementptr [0 x %struct.amd_nb_bus_dev_range], ptr @amd_nb_bus_dev_ranges, i64 0, i64 %idxprom2, !dbg !1279
  %bus4 = getelementptr inbounds %struct.amd_nb_bus_dev_range, ptr %arrayidx3, i32 0, i32 0, !dbg !1280
  %5 = load i8, ptr %bus4, align 1, !dbg !1280
  store i8 %5, ptr %bus, align 1, !dbg !1277
  call void @llvm.lifetime.start.p0(i64 1, ptr %slot) #11, !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !1257, metadata !DIExpression()), !dbg !1282
  %6 = load i32, ptr %i, align 4, !dbg !1283
  %idxprom5 = zext i32 %6 to i64, !dbg !1284
  %arrayidx6 = getelementptr [0 x %struct.amd_nb_bus_dev_range], ptr @amd_nb_bus_dev_ranges, i64 0, i64 %idxprom5, !dbg !1284
  %dev_base = getelementptr inbounds %struct.amd_nb_bus_dev_range, ptr %arrayidx6, i32 0, i32 1, !dbg !1285
  %7 = load i8, ptr %dev_base, align 1, !dbg !1285
  store i8 %7, ptr %slot, align 1, !dbg !1282
  call void @llvm.lifetime.start.p0(i64 1, ptr %limit) #11, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !1258, metadata !DIExpression()), !dbg !1287
  %8 = load i32, ptr %i, align 4, !dbg !1288
  %idxprom7 = zext i32 %8 to i64, !dbg !1289
  %arrayidx8 = getelementptr [0 x %struct.amd_nb_bus_dev_range], ptr @amd_nb_bus_dev_ranges, i64 0, i64 %idxprom7, !dbg !1289
  %dev_limit9 = getelementptr inbounds %struct.amd_nb_bus_dev_range, ptr %arrayidx8, i32 0, i32 2, !dbg !1290
  %9 = load i8, ptr %dev_limit9, align 1, !dbg !1290
  store i8 %9, ptr %limit, align 1, !dbg !1287
  br label %for.cond10, !dbg !1291

for.cond10:                                       ; preds = %for.inc, %for.body
  %10 = load i8, ptr %slot, align 1, !dbg !1292
  %conv11 = zext i8 %10 to i32, !dbg !1292
  %11 = load i8, ptr %limit, align 1, !dbg !1293
  %conv12 = zext i8 %11 to i32, !dbg !1293
  %cmp = icmp slt i32 %conv11, %conv12, !dbg !1294
  br i1 %cmp, label %for.body14, label %for.end, !dbg !1295

for.body14:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #11, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1259, metadata !DIExpression()), !dbg !1297
  %12 = load i8, ptr %bus, align 1, !dbg !1298
  %13 = load i8, ptr %slot, align 1, !dbg !1299
  %call = call i32 @read_pci_config(i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext 3, i8 noundef zeroext 0) #12, !dbg !1300
  store i32 %call, ptr %val, align 4, !dbg !1297
  %14 = load i32, ptr %val, align 4, !dbg !1301
  %call15 = call zeroext i1 @early_is_amd_nb(i32 noundef %14) #12, !dbg !1303
  br i1 %call15, label %if.end, label %if.then, !dbg !1304

if.then:                                          ; preds = %for.body14
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1305

if.end:                                           ; preds = %for.body14
  %15 = load i8, ptr %bus, align 1, !dbg !1306
  %16 = load i8, ptr %slot, align 1, !dbg !1307
  %call16 = call i32 @read_pci_config(i8 noundef zeroext %15, i8 noundef zeroext %16, i8 noundef zeroext 3, i8 noundef zeroext -116) #12, !dbg !1308
  store i32 %call16, ptr %val, align 4, !dbg !1309
  %17 = load i32, ptr %val, align 4, !dbg !1310
  %conv17 = zext i32 %17 to i64, !dbg !1310
  %and = and i64 %conv17, 16384, !dbg !1312
  %tobool18 = icmp ne i64 %and, 0, !dbg !1312
  br i1 %tobool18, label %if.end22, label %if.then19, !dbg !1313

if.then19:                                        ; preds = %if.end
  %18 = load i32, ptr %val, align 4, !dbg !1314
  %conv20 = zext i32 %18 to i64, !dbg !1314
  %or = or i64 %conv20, 16384, !dbg !1314
  %conv21 = trunc i64 %or to i32, !dbg !1314
  store i32 %conv21, ptr %val, align 4, !dbg !1314
  %19 = load i8, ptr %bus, align 1, !dbg !1316
  %20 = load i8, ptr %slot, align 1, !dbg !1317
  %21 = load i32, ptr %val, align 4, !dbg !1318
  call void @write_pci_config(i8 noundef zeroext %19, i8 noundef zeroext %20, i8 noundef zeroext 3, i8 noundef zeroext -116, i32 noundef %21) #12, !dbg !1319
  br label %if.end22, !dbg !1320

if.end22:                                         ; preds = %if.then19, %if.end
  %22 = load i32, ptr %n, align 4, !dbg !1321
  %inc = add i32 %22, 1, !dbg !1321
  store i32 %inc, ptr %n, align 4, !dbg !1321
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1322
  br label %cleanup, !dbg !1322

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #11, !dbg !1322
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1323

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %23 = load i8, ptr %slot, align 1, !dbg !1324
  %inc23 = add i8 %23, 1, !dbg !1324
  store i8 %inc23, ptr %slot, align 1, !dbg !1324
  br label %for.cond10, !dbg !1325, !llvm.loop !1326

for.end:                                          ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 1, ptr %limit) #11, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 1, ptr %slot) #11, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 1, ptr %bus) #11, !dbg !1328
  br label %for.inc24, !dbg !1329

for.inc24:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !dbg !1330
  %inc25 = add i32 %24, 1, !dbg !1330
  store i32 %inc25, ptr %i, align 4, !dbg !1330
  br label %for.cond, !dbg !1331, !llvm.loop !1332

for.end26:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11, !dbg !1334
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1334
  ret void, !dbg !1334

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #6 align 16 !dbg !1335 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1342, metadata !DIExpression()), !dbg !1346
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1343, metadata !DIExpression()), !dbg !1347
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !1344, metadata !DIExpression()), !dbg !1348
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !1345, metadata !DIExpression()), !dbg !1349
  %0 = load i32, ptr %state.addr, align 4, !dbg !1350
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1351
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !1352
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !1353
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #12, !dbg !1354
  ret i32 %call, !dbg !1355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_bus_cpu_online(i32 noundef %cpu) #8 align 16 !dbg !1356 {
entry:
  %cpu.addr = alloca i32, align 4
  %reg = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1358, metadata !DIExpression()), !dbg !1360
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #11, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !1359, metadata !DIExpression()), !dbg !1362
  %call = call i64 @native_read_msr(i32 noundef -1073676257) #12, !dbg !1363
  store i64 %call, ptr %reg, align 8, !dbg !1363
  %0 = load i64, ptr %reg, align 8, !dbg !1364
  %and = and i64 %0, 70368744177664, !dbg !1366
  %tobool = icmp ne i64 %and, 0, !dbg !1366
  br i1 %tobool, label %if.end, label %if.then, !dbg !1367

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %reg, align 8, !dbg !1368
  %or = or i64 %1, 70368744177664, !dbg !1368
  store i64 %or, ptr %reg, align 8, !dbg !1368
  %2 = load i64, ptr %reg, align 8, !dbg !1370
  call void @wrmsrl(i32 noundef -1073676257, i64 noundef %2) #12, !dbg !1371
  br label %if.end, !dbg !1372

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #11, !dbg !1373
  ret i32 0, !dbg !1374
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1375 dso_local zeroext i1 @early_is_amd_nb(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1378 dso_local void @write_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !1384 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1388, metadata !DIExpression()), !dbg !1390
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1389, metadata !DIExpression()), !dbg !1391
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1392
  %1 = load i64, ptr %val.addr, align 8, !dbg !1393
  %and = and i64 %1, 4294967295, !dbg !1394
  %conv = trunc i64 %and to i32, !dbg !1395
  %2 = load i64, ptr %val.addr, align 8, !dbg !1396
  %shr = lshr i64 %2, 32, !dbg !1397
  %conv1 = trunc i64 %shr to i32, !dbg !1398
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #12, !dbg !1399
  ret void, !dbg !1400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !1401 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1405, metadata !DIExpression()), !dbg !1408
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1406, metadata !DIExpression()), !dbg !1409
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1407, metadata !DIExpression()), !dbg !1410
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1411
  %1 = load i32, ptr %low.addr, align 4, !dbg !1412
  %2 = load i32, ptr %high.addr, align 4, !dbg !1413
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !1414
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #12, !dbg !1415
  br i1 %call, label %if.then, label %if.end, !dbg !1417

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !1418
  %4 = load i32, ptr %high.addr, align 4, !dbg !1419
  %conv = zext i32 %4 to i64, !dbg !1420
  %shl = shl i64 %conv, 32, !dbg !1421
  %5 = load i32, ptr %low.addr, align 4, !dbg !1422
  %conv1 = zext i32 %5 to i64, !dbg !1422
  %or = or i64 %shl, %conv1, !dbg !1423
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #12, !dbg !1424
  br label %if.end, !dbg !1424

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1425
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #7 align 16 !dbg !1426 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1428, metadata !DIExpression()), !dbg !1431
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1429, metadata !DIExpression()), !dbg !1432
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1430, metadata !DIExpression()), !dbg !1433
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1434
  %1 = load i32, ptr %low.addr, align 4, !dbg !1435
  %2 = load i32, ptr %high.addr, align 4, !dbg !1436
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #11, !dbg !1437, !srcloc !1438
  ret void, !dbg !1439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1440 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_amd_bus__292_412_amd_postcore_init2293", scope: !2, file: !3, line: 412, type: !207, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.amd_bus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/amd_bus\22 -D KBUILD_BASENAME=\22amd_bus\22 -D KBUILD_MODNAME=\22amd_bus\22 -D __KBUILD_MODNAME=kmod_amd_bus -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/amd_bus.ll arch/x86/pci/amd_bus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !206, globals: !257, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/amd_bus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c0df5b9341d792e1adff6cd153c81f7")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !12, line: 57, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!15 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!16 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!17 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!18 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!19 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!20 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!21 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!22 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!23 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!24 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!25 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!26 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!27 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!28 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!29 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!30 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!31 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!32 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!33 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!34 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!35 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!36 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!37 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!38 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!39 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!40 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!41 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!42 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!43 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!44 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!45 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!46 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!47 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!48 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!49 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!50 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!51 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!52 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!53 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!54 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!55 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!56 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!57 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!58 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!59 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!60 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!61 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!62 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!63 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!64 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!65 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!66 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!67 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!68 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!69 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!70 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!71 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!72 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!73 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!74 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!75 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!76 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!77 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!78 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!79 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!80 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!81 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!82 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!83 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!84 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!85 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!86 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!87 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!88 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!89 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!90 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!91 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!92 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!93 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!94 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!95 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!96 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!97 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!100 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!101 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!102 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!103 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!104 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!106 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!107 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!108 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!109 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!114 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!116 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!117 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!118 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!121 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!122 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!123 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!124 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!125 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!126 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!127 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!128 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!129 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!130 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!131 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!132 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!133 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!134 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!135 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!136 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!137 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!138 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!143 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!144 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!145 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!146 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!148 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!149 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!150 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!151 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!152 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!153 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!154 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!155 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!156 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!157 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!158 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!159 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!194 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!195 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!196 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!197 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!198 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!199 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!200 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!201 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!202 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!203 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!204 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!205 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!206 = !{!207, !13, !208, !250, !230, !255, !232}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_root_info", file: !210, line: 13, size: 960, elements: !211)
!210 = !DIFile(filename: "arch/x86/pci/bus_numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98c55662bf9c994a894581bc63b2712f")
!211 = !{!212, !219, !224, !225, !248, !249}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !209, file: !210, line: 14, baseType: !213, size: 128)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !214, line: 190, size: 128, elements: !215)
!214 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !214, line: 191, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !213, file: !214, line: 191, baseType: !217, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 15, baseType: !220, size: 96, offset: 128)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 96, elements: !222)
!221 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !{!223}
!223 = !DISubrange(count: 12)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !209, file: !210, line: 16, baseType: !213, size: 128, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "busn", scope: !209, file: !210, line: 17, baseType: !226, size: 512, offset: 384)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !227, line: 21, size: 512, elements: !228)
!227 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!228 = !{!229, !237, !238, !241, !243, !244, !246, !247}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !226, file: !227, line: 22, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !214, line: 164, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !214, line: 159, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !233, line: 23, baseType: !234)
!233 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !235, line: 31, baseType: !236)
!235 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!236 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !226, file: !227, line: 23, baseType: !230, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !227, line: 24, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !227, line: 25, baseType: !242, size: 64, offset: 192)
!242 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !226, file: !227, line: 26, baseType: !242, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !227, line: 27, baseType: !245, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !226, file: !227, line: 27, baseType: !245, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !226, file: !227, line: 27, baseType: !245, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !210, line: 18, baseType: !13, size: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !209, file: !210, line: 19, baseType: !13, size: 32, offset: 928)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_root_res", file: !210, line: 8, size: 640, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !251, file: !210, line: 9, baseType: !213, size: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !251, file: !210, line: 10, baseType: !226, size: 512, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !233, line: 21, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !235, line: 27, baseType: !7)
!257 = !{!0, !258, !263, !268, !273, !278, !283, !288, !293, !295, !300, !305, !310, !312, !317, !322, !327, !337, !339}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 328, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 41)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 208, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 26)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 176, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 22)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 296, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 37)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 160, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 20)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 152, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 19)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 32, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !290, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 48, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 6)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 8, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 1)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 80, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 10)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !290, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 216, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 27)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 248, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 31)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 136, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 17)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "hb_probes", scope: !2, file: !3, line: 34, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 480, elements: !335)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_hostbridge", file: !3, line: 22, size: 96, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !330, file: !3, line: 23, baseType: !255, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !330, file: !3, line: 24, baseType: !255, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !330, file: !3, line: 25, baseType: !255, size: 32, offset: 64)
!335 = !{!336}
!336 = !DISubrange(count: 5)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !285, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 393, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 184, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 23)
!344 = !{i32 7, !"Dwarf Version", i32 5}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 8, !"cf-protection-branch", i32 1}
!348 = !{i32 4, !"function_return_thunk_extern", i32 1}
!349 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!350 = !{i32 1, !"Code Model", i32 2}
!351 = !{i32 1, !"override-stack-alignment", i32 8}
!352 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!353 = distinct !DISubprogram(name: "__initstub__kmod_amd_bus__292_412_amd_postcore_init2", scope: !3, file: !3, line: 412, type: !354, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!354 = !DISubroutineType(types: !355)
!355 = !{!13}
!356 = !DILocation(line: 412, column: 1, scope: !353)
!357 = distinct !DISubprogram(name: "amd_postcore_init", scope: !3, file: !3, line: 400, type: !354, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!358 = !DILocation(line: 402, column: 20, scope: !359)
!359 = distinct !DILexicalBlock(scope: !357, file: !3, line: 402, column: 6)
!360 = !DILocation(line: 402, column: 6, scope: !359)
!361 = !DILocation(line: 402, column: 31, scope: !359)
!362 = !DILocation(line: 402, column: 49, scope: !359)
!363 = !DILocation(line: 403, column: 20, scope: !359)
!364 = !DILocation(line: 403, column: 6, scope: !359)
!365 = !DILocation(line: 403, column: 31, scope: !359)
!366 = !DILocation(line: 402, column: 6, scope: !357)
!367 = !DILocation(line: 404, column: 3, scope: !359)
!368 = !DILocation(line: 406, column: 2, scope: !357)
!369 = !DILocation(line: 407, column: 2, scope: !357)
!370 = !DILocation(line: 409, column: 2, scope: !357)
!371 = !DILocation(line: 410, column: 1, scope: !357)
!372 = distinct !DISubprogram(name: "early_root_info_init", scope: !3, file: !3, line: 68, type: !354, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !394, !395, !396, !399, !400, !401, !402, !403, !407, !411, !412, !416, !417, !423, !424, !427, !430, !431, !434, !437}
!374 = !DILocalVariable(name: "i", scope: !372, file: !3, line: 70, type: !13)
!375 = !DILocalVariable(name: "bus", scope: !372, file: !3, line: 71, type: !7)
!376 = !DILocalVariable(name: "slot", scope: !372, file: !3, line: 72, type: !7)
!377 = !DILocalVariable(name: "node", scope: !372, file: !3, line: 73, type: !13)
!378 = !DILocalVariable(name: "link", scope: !372, file: !3, line: 74, type: !13)
!379 = !DILocalVariable(name: "def_node", scope: !372, file: !3, line: 75, type: !13)
!380 = !DILocalVariable(name: "def_link", scope: !372, file: !3, line: 76, type: !13)
!381 = !DILocalVariable(name: "info", scope: !372, file: !3, line: 77, type: !208)
!382 = !DILocalVariable(name: "reg", scope: !372, file: !3, line: 78, type: !255)
!383 = !DILocalVariable(name: "start", scope: !372, file: !3, line: 79, type: !232)
!384 = !DILocalVariable(name: "end", scope: !372, file: !3, line: 80, type: !232)
!385 = !DILocalVariable(name: "range", scope: !372, file: !3, line: 81, type: !386)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 2048, elements: !392)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !388, line: 6, size: 128, elements: !389)
!388 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !387, file: !388, line: 7, baseType: !232, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !387, file: !388, line: 8, baseType: !232, size: 64, offset: 64)
!392 = !{!393}
!393 = !DISubrange(count: 16)
!394 = !DILocalVariable(name: "val", scope: !372, file: !3, line: 82, type: !232)
!395 = !DILocalVariable(name: "address", scope: !372, file: !3, line: 83, type: !255)
!396 = !DILocalVariable(name: "found", scope: !372, file: !3, line: 84, type: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !214, line: 35, baseType: !398)
!398 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!399 = !DILocalVariable(name: "fam10h_mmconf_res", scope: !372, file: !3, line: 85, type: !226)
!400 = !DILocalVariable(name: "fam10h_mmconf", scope: !372, file: !3, line: 85, type: !245)
!401 = !DILocalVariable(name: "fam10h_mmconf_start", scope: !372, file: !3, line: 86, type: !232)
!402 = !DILocalVariable(name: "fam10h_mmconf_end", scope: !372, file: !3, line: 87, type: !232)
!403 = !DILocalVariable(name: "id", scope: !404, file: !3, line: 94, type: !255)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 93, column: 46)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 93, column: 2)
!406 = distinct !DILexicalBlock(scope: !372, file: !3, line: 93, column: 2)
!407 = !DILocalVariable(name: "device", scope: !404, file: !3, line: 95, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !233, line: 19, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !235, line: 24, baseType: !410)
!410 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!411 = !DILocalVariable(name: "vendor", scope: !404, file: !3, line: 96, type: !408)
!412 = !DILocalVariable(name: "min_bus", scope: !413, file: !3, line: 123, type: !13)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 122, column: 52)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 122, column: 2)
!415 = distinct !DILexicalBlock(scope: !372, file: !3, line: 122, column: 2)
!416 = !DILocalVariable(name: "max_bus", scope: !413, file: !3, line: 124, type: !13)
!417 = !DILocalVariable(name: "changed", scope: !418, file: !3, line: 252, type: !13)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 251, column: 26)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 251, column: 7)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 226, column: 26)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 226, column: 2)
!422 = distinct !DILexicalBlock(scope: !372, file: !3, line: 226, column: 2)
!423 = !DILocalVariable(name: "endx", scope: !418, file: !3, line: 253, type: !232)
!424 = !DILocalVariable(name: "__mptr", scope: !425, file: !3, line: 323, type: !207)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 323, column: 2)
!426 = distinct !DILexicalBlock(scope: !372, file: !3, line: 323, column: 2)
!427 = !DILocalVariable(name: "busnum", scope: !428, file: !3, line: 324, type: !13)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 323, column: 51)
!429 = distinct !DILexicalBlock(scope: !426, file: !3, line: 323, column: 2)
!430 = !DILocalVariable(name: "root_res", scope: !428, file: !3, line: 325, type: !250)
!431 = !DILocalVariable(name: "__mptr", scope: !432, file: !3, line: 330, type: !207)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 330, column: 3)
!433 = distinct !DILexicalBlock(scope: !428, file: !3, line: 330, column: 3)
!434 = !DILocalVariable(name: "__mptr", scope: !435, file: !3, line: 330, type: !207)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 330, column: 3)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 330, column: 3)
!437 = !DILocalVariable(name: "__mptr", scope: !438, file: !3, line: 323, type: !207)
!438 = distinct !DILexicalBlock(scope: !429, file: !3, line: 323, column: 2)
!439 = !DILocation(line: 70, column: 2, scope: !372)
!440 = !DILocation(line: 70, column: 6, scope: !372)
!441 = !DILocation(line: 71, column: 2, scope: !372)
!442 = !DILocation(line: 71, column: 11, scope: !372)
!443 = !DILocation(line: 72, column: 2, scope: !372)
!444 = !DILocation(line: 72, column: 11, scope: !372)
!445 = !DILocation(line: 73, column: 2, scope: !372)
!446 = !DILocation(line: 73, column: 6, scope: !372)
!447 = !DILocation(line: 74, column: 2, scope: !372)
!448 = !DILocation(line: 74, column: 6, scope: !372)
!449 = !DILocation(line: 75, column: 2, scope: !372)
!450 = !DILocation(line: 75, column: 6, scope: !372)
!451 = !DILocation(line: 76, column: 2, scope: !372)
!452 = !DILocation(line: 76, column: 6, scope: !372)
!453 = !DILocation(line: 77, column: 2, scope: !372)
!454 = !DILocation(line: 77, column: 24, scope: !372)
!455 = !DILocation(line: 78, column: 2, scope: !372)
!456 = !DILocation(line: 78, column: 6, scope: !372)
!457 = !DILocation(line: 79, column: 2, scope: !372)
!458 = !DILocation(line: 79, column: 6, scope: !372)
!459 = !DILocation(line: 80, column: 2, scope: !372)
!460 = !DILocation(line: 80, column: 6, scope: !372)
!461 = !DILocation(line: 81, column: 2, scope: !372)
!462 = !DILocation(line: 81, column: 15, scope: !372)
!463 = !DILocation(line: 82, column: 2, scope: !372)
!464 = !DILocation(line: 82, column: 6, scope: !372)
!465 = !DILocation(line: 83, column: 2, scope: !372)
!466 = !DILocation(line: 83, column: 6, scope: !372)
!467 = !DILocation(line: 84, column: 2, scope: !372)
!468 = !DILocation(line: 84, column: 7, scope: !372)
!469 = !DILocation(line: 85, column: 2, scope: !372)
!470 = !DILocation(line: 85, column: 18, scope: !372)
!471 = !DILocation(line: 85, column: 38, scope: !372)
!472 = !DILocation(line: 86, column: 2, scope: !372)
!473 = !DILocation(line: 86, column: 6, scope: !372)
!474 = !DILocation(line: 87, column: 2, scope: !372)
!475 = !DILocation(line: 87, column: 6, scope: !372)
!476 = !DILocation(line: 89, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !372, file: !3, line: 89, column: 6)
!478 = !DILocation(line: 89, column: 6, scope: !372)
!479 = !DILocation(line: 90, column: 3, scope: !477)
!480 = !DILocation(line: 92, column: 8, scope: !372)
!481 = !DILocation(line: 93, column: 9, scope: !406)
!482 = !DILocation(line: 93, column: 7, scope: !406)
!483 = !DILocation(line: 93, column: 14, scope: !405)
!484 = !DILocation(line: 93, column: 16, scope: !405)
!485 = !DILocation(line: 93, column: 2, scope: !406)
!486 = !DILocation(line: 94, column: 3, scope: !404)
!487 = !DILocation(line: 94, column: 7, scope: !404)
!488 = !DILocation(line: 95, column: 3, scope: !404)
!489 = !DILocation(line: 95, column: 7, scope: !404)
!490 = !DILocation(line: 96, column: 3, scope: !404)
!491 = !DILocation(line: 96, column: 7, scope: !404)
!492 = !DILocation(line: 98, column: 19, scope: !404)
!493 = !DILocation(line: 98, column: 9, scope: !404)
!494 = !DILocation(line: 98, column: 22, scope: !404)
!495 = !DILocation(line: 98, column: 7, scope: !404)
!496 = !DILocation(line: 99, column: 20, scope: !404)
!497 = !DILocation(line: 99, column: 10, scope: !404)
!498 = !DILocation(line: 99, column: 23, scope: !404)
!499 = !DILocation(line: 99, column: 8, scope: !404)
!500 = !DILocation(line: 100, column: 24, scope: !404)
!501 = !DILocation(line: 100, column: 29, scope: !404)
!502 = !DILocation(line: 100, column: 8, scope: !404)
!503 = !DILocation(line: 100, column: 6, scope: !404)
!504 = !DILocation(line: 101, column: 12, scope: !404)
!505 = !DILocation(line: 101, column: 15, scope: !404)
!506 = !DILocation(line: 101, column: 10, scope: !404)
!507 = !DILocation(line: 102, column: 13, scope: !404)
!508 = !DILocation(line: 102, column: 15, scope: !404)
!509 = !DILocation(line: 102, column: 21, scope: !404)
!510 = !DILocation(line: 102, column: 12, scope: !404)
!511 = !DILocation(line: 102, column: 10, scope: !404)
!512 = !DILocation(line: 104, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !404, file: !3, line: 104, column: 7)
!514 = !DILocation(line: 104, column: 14, scope: !513)
!515 = !DILocation(line: 104, column: 35, scope: !513)
!516 = !DILocation(line: 105, column: 7, scope: !513)
!517 = !DILocation(line: 105, column: 14, scope: !513)
!518 = !DILocation(line: 104, column: 7, scope: !404)
!519 = !DILocation(line: 106, column: 4, scope: !513)
!520 = !DILocation(line: 108, column: 17, scope: !521)
!521 = distinct !DILexicalBlock(scope: !404, file: !3, line: 108, column: 7)
!522 = !DILocation(line: 108, column: 7, scope: !521)
!523 = !DILocation(line: 108, column: 20, scope: !521)
!524 = !DILocation(line: 108, column: 30, scope: !521)
!525 = !DILocation(line: 108, column: 27, scope: !521)
!526 = !DILocation(line: 108, column: 7, scope: !404)
!527 = !DILocation(line: 109, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !521, file: !3, line: 108, column: 38)
!529 = !DILocation(line: 110, column: 4, scope: !528)
!530 = !DILocation(line: 112, column: 2, scope: !405)
!531 = !DILocation(line: 112, column: 2, scope: !404)
!532 = !DILocation(line: 93, column: 42, scope: !405)
!533 = !DILocation(line: 93, column: 2, scope: !405)
!534 = distinct !{!534, !485, !535, !536, !537}
!535 = !DILocation(line: 112, column: 2, scope: !406)
!536 = !{!"llvm.loop.mustprogress"}
!537 = !{!"llvm.loop.unroll.disable"}
!538 = !DILocation(line: 114, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !372, file: !3, line: 114, column: 6)
!540 = !{i8 0, i8 2}
!541 = !{}
!542 = !DILocation(line: 114, column: 6, scope: !372)
!543 = !DILocation(line: 115, column: 3, scope: !539)
!544 = !DILocation(line: 122, column: 9, scope: !415)
!545 = !DILocation(line: 122, column: 7, scope: !415)
!546 = !DILocation(line: 122, column: 14, scope: !414)
!547 = !DILocation(line: 122, column: 16, scope: !414)
!548 = !DILocation(line: 122, column: 2, scope: !415)
!549 = !DILocation(line: 123, column: 3, scope: !413)
!550 = !DILocation(line: 123, column: 7, scope: !413)
!551 = !DILocation(line: 124, column: 3, scope: !413)
!552 = !DILocation(line: 124, column: 7, scope: !413)
!553 = !DILocation(line: 125, column: 25, scope: !413)
!554 = !DILocation(line: 125, column: 30, scope: !413)
!555 = !DILocation(line: 126, column: 33, scope: !413)
!556 = !DILocation(line: 126, column: 35, scope: !413)
!557 = !DILocation(line: 126, column: 30, scope: !413)
!558 = !DILocation(line: 126, column: 5, scope: !413)
!559 = !DILocation(line: 125, column: 9, scope: !413)
!560 = !DILocation(line: 125, column: 7, scope: !413)
!561 = !DILocation(line: 129, column: 8, scope: !562)
!562 = distinct !DILexicalBlock(scope: !413, file: !3, line: 129, column: 7)
!563 = !DILocation(line: 129, column: 12, scope: !562)
!564 = !DILocation(line: 129, column: 17, scope: !562)
!565 = !DILocation(line: 129, column: 7, scope: !413)
!566 = !DILocation(line: 130, column: 4, scope: !562)
!567 = !DILocation(line: 132, column: 14, scope: !413)
!568 = !DILocation(line: 132, column: 18, scope: !413)
!569 = !DILocation(line: 132, column: 25, scope: !413)
!570 = !DILocation(line: 132, column: 11, scope: !413)
!571 = !DILocation(line: 133, column: 14, scope: !413)
!572 = !DILocation(line: 133, column: 18, scope: !413)
!573 = !DILocation(line: 133, column: 25, scope: !413)
!574 = !DILocation(line: 133, column: 11, scope: !413)
!575 = !DILocation(line: 134, column: 11, scope: !413)
!576 = !DILocation(line: 134, column: 15, scope: !413)
!577 = !DILocation(line: 134, column: 21, scope: !413)
!578 = !DILocation(line: 134, column: 8, scope: !413)
!579 = !DILocation(line: 135, column: 11, scope: !413)
!580 = !DILocation(line: 135, column: 15, scope: !413)
!581 = !DILocation(line: 135, column: 21, scope: !413)
!582 = !DILocation(line: 135, column: 8, scope: !413)
!583 = !DILocation(line: 137, column: 23, scope: !413)
!584 = !DILocation(line: 137, column: 32, scope: !413)
!585 = !DILocation(line: 137, column: 41, scope: !413)
!586 = !DILocation(line: 137, column: 47, scope: !413)
!587 = !DILocation(line: 137, column: 3, scope: !413)
!588 = !DILocation(line: 138, column: 2, scope: !414)
!589 = !DILocation(line: 138, column: 2, scope: !413)
!590 = !DILocation(line: 122, column: 48, scope: !414)
!591 = !DILocation(line: 122, column: 2, scope: !414)
!592 = distinct !{!592, !548, !593, !536, !537}
!593 = !DILocation(line: 138, column: 2, scope: !415)
!594 = !DILocation(line: 148, column: 20, scope: !595)
!595 = distinct !DILexicalBlock(scope: !372, file: !3, line: 148, column: 6)
!596 = !DILocation(line: 148, column: 6, scope: !595)
!597 = !DILocation(line: 148, column: 24, scope: !595)
!598 = !DILocation(line: 148, column: 6, scope: !372)
!599 = !DILocation(line: 149, column: 3, scope: !595)
!600 = !DILocation(line: 152, column: 24, scope: !372)
!601 = !DILocation(line: 152, column: 29, scope: !372)
!602 = !DILocation(line: 152, column: 8, scope: !372)
!603 = !DILocation(line: 152, column: 6, scope: !372)
!604 = !DILocation(line: 153, column: 14, scope: !372)
!605 = !DILocation(line: 153, column: 18, scope: !372)
!606 = !DILocation(line: 153, column: 24, scope: !372)
!607 = !DILocation(line: 153, column: 11, scope: !372)
!608 = !DILocation(line: 154, column: 24, scope: !372)
!609 = !DILocation(line: 154, column: 29, scope: !372)
!610 = !DILocation(line: 154, column: 8, scope: !372)
!611 = !DILocation(line: 154, column: 6, scope: !372)
!612 = !DILocation(line: 155, column: 14, scope: !372)
!613 = !DILocation(line: 155, column: 18, scope: !372)
!614 = !DILocation(line: 155, column: 24, scope: !372)
!615 = !DILocation(line: 155, column: 11, scope: !372)
!616 = !DILocation(line: 157, column: 2, scope: !372)
!617 = !DILocation(line: 158, column: 12, scope: !372)
!618 = !DILocation(line: 158, column: 2, scope: !372)
!619 = !DILocation(line: 160, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !372, file: !3, line: 160, column: 2)
!621 = !DILocation(line: 160, column: 7, scope: !620)
!622 = !DILocation(line: 160, column: 14, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 160, column: 2)
!624 = !DILocation(line: 160, column: 16, scope: !623)
!625 = !DILocation(line: 160, column: 2, scope: !620)
!626 = !DILocation(line: 161, column: 25, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !3, line: 160, column: 26)
!628 = !DILocation(line: 161, column: 30, scope: !627)
!629 = !DILocation(line: 161, column: 47, scope: !627)
!630 = !DILocation(line: 161, column: 49, scope: !627)
!631 = !DILocation(line: 161, column: 44, scope: !627)
!632 = !DILocation(line: 161, column: 39, scope: !627)
!633 = !DILocation(line: 161, column: 9, scope: !627)
!634 = !DILocation(line: 161, column: 7, scope: !627)
!635 = !DILocation(line: 162, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !627, file: !3, line: 162, column: 7)
!637 = !DILocation(line: 162, column: 13, scope: !636)
!638 = !DILocation(line: 162, column: 7, scope: !627)
!639 = !DILocation(line: 163, column: 4, scope: !636)
!640 = !DILocation(line: 165, column: 11, scope: !627)
!641 = !DILocation(line: 165, column: 15, scope: !627)
!642 = !DILocation(line: 165, column: 9, scope: !627)
!643 = !DILocation(line: 166, column: 25, scope: !627)
!644 = !DILocation(line: 166, column: 30, scope: !627)
!645 = !DILocation(line: 166, column: 47, scope: !627)
!646 = !DILocation(line: 166, column: 49, scope: !627)
!647 = !DILocation(line: 166, column: 44, scope: !627)
!648 = !DILocation(line: 166, column: 39, scope: !627)
!649 = !DILocation(line: 166, column: 9, scope: !627)
!650 = !DILocation(line: 166, column: 7, scope: !627)
!651 = !DILocation(line: 167, column: 10, scope: !627)
!652 = !DILocation(line: 167, column: 14, scope: !627)
!653 = !DILocation(line: 167, column: 8, scope: !627)
!654 = !DILocation(line: 168, column: 11, scope: !627)
!655 = !DILocation(line: 168, column: 15, scope: !627)
!656 = !DILocation(line: 168, column: 21, scope: !627)
!657 = !DILocation(line: 168, column: 8, scope: !627)
!658 = !DILocation(line: 169, column: 10, scope: !627)
!659 = !DILocation(line: 169, column: 14, scope: !627)
!660 = !DILocation(line: 169, column: 26, scope: !627)
!661 = !DILocation(line: 169, column: 9, scope: !627)
!662 = !DILocation(line: 169, column: 7, scope: !627)
!663 = !DILocation(line: 171, column: 29, scope: !627)
!664 = !DILocation(line: 171, column: 35, scope: !627)
!665 = !DILocation(line: 171, column: 10, scope: !627)
!666 = !DILocation(line: 171, column: 8, scope: !627)
!667 = !DILocation(line: 172, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !627, file: !3, line: 172, column: 7)
!669 = !DILocation(line: 172, column: 7, scope: !627)
!670 = !DILocation(line: 173, column: 4, scope: !668)
!671 = !DILocation(line: 175, column: 3, scope: !672)
!672 = distinct !DILexicalBlock(scope: !627, file: !3, line: 175, column: 3)
!673 = !DILocation(line: 175, column: 3, scope: !674)
!674 = distinct !DILexicalBlock(scope: !672, file: !3, line: 175, column: 3)
!675 = !DILocation(line: 179, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !627, file: !3, line: 179, column: 7)
!677 = !DILocation(line: 179, column: 11, scope: !676)
!678 = !DILocation(line: 179, column: 7, scope: !627)
!679 = !DILocation(line: 180, column: 8, scope: !676)
!680 = !DILocation(line: 180, column: 4, scope: !676)
!681 = !DILocation(line: 181, column: 14, scope: !627)
!682 = !DILocation(line: 181, column: 20, scope: !627)
!683 = !DILocation(line: 181, column: 27, scope: !627)
!684 = !DILocation(line: 181, column: 3, scope: !627)
!685 = !DILocation(line: 182, column: 18, scope: !627)
!686 = !DILocation(line: 182, column: 36, scope: !627)
!687 = !DILocation(line: 182, column: 43, scope: !627)
!688 = !DILocation(line: 182, column: 47, scope: !627)
!689 = !DILocation(line: 182, column: 3, scope: !627)
!690 = !DILocation(line: 183, column: 2, scope: !627)
!691 = !DILocation(line: 160, column: 22, scope: !623)
!692 = !DILocation(line: 160, column: 2, scope: !623)
!693 = distinct !{!693, !625, !694, !536, !537}
!694 = !DILocation(line: 183, column: 2, scope: !620)
!695 = !DILocation(line: 186, column: 28, scope: !372)
!696 = !DILocation(line: 186, column: 38, scope: !372)
!697 = !DILocation(line: 186, column: 9, scope: !372)
!698 = !DILocation(line: 186, column: 7, scope: !372)
!699 = !DILocation(line: 187, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !372, file: !3, line: 187, column: 6)
!701 = !DILocation(line: 187, column: 6, scope: !372)
!702 = !DILocation(line: 188, column: 10, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 188, column: 3)
!704 = distinct !DILexicalBlock(scope: !700, file: !3, line: 187, column: 12)
!705 = !DILocation(line: 188, column: 8, scope: !703)
!706 = !DILocation(line: 188, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !3, line: 188, column: 3)
!708 = !DILocation(line: 188, column: 17, scope: !707)
!709 = !DILocation(line: 188, column: 3, scope: !703)
!710 = !DILocation(line: 189, column: 15, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 189, column: 8)
!712 = distinct !DILexicalBlock(scope: !707, file: !3, line: 188, column: 35)
!713 = !DILocation(line: 189, column: 9, scope: !711)
!714 = !DILocation(line: 189, column: 18, scope: !711)
!715 = !DILocation(line: 189, column: 8, scope: !712)
!716 = !DILocation(line: 190, column: 5, scope: !711)
!717 = !DILocation(line: 192, column: 15, scope: !712)
!718 = !DILocation(line: 192, column: 27, scope: !712)
!719 = !DILocation(line: 192, column: 21, scope: !712)
!720 = !DILocation(line: 192, column: 30, scope: !712)
!721 = !DILocation(line: 192, column: 43, scope: !712)
!722 = !DILocation(line: 192, column: 37, scope: !712)
!723 = !DILocation(line: 192, column: 46, scope: !712)
!724 = !DILocation(line: 192, column: 50, scope: !712)
!725 = !DILocation(line: 192, column: 4, scope: !712)
!726 = !DILocation(line: 194, column: 3, scope: !712)
!727 = !DILocation(line: 188, column: 31, scope: !707)
!728 = !DILocation(line: 188, column: 3, scope: !707)
!729 = distinct !{!729, !709, !730, !536, !537}
!730 = !DILocation(line: 194, column: 3, scope: !703)
!731 = !DILocation(line: 195, column: 2, scope: !704)
!732 = !DILocation(line: 197, column: 2, scope: !372)
!733 = !DILocation(line: 199, column: 8, scope: !372)
!734 = !DILocation(line: 199, column: 6, scope: !372)
!735 = !DILocation(line: 200, column: 5, scope: !372)
!736 = !DILocation(line: 201, column: 12, scope: !372)
!737 = !DILocation(line: 201, column: 36, scope: !372)
!738 = !DILocation(line: 201, column: 2, scope: !372)
!739 = !DILocation(line: 204, column: 10, scope: !372)
!740 = !DILocation(line: 205, column: 2, scope: !372)
!741 = !DILocation(line: 206, column: 9, scope: !372)
!742 = !DILocation(line: 206, column: 13, scope: !372)
!743 = !DILocation(line: 206, column: 6, scope: !372)
!744 = !DILocation(line: 207, column: 2, scope: !745)
!745 = distinct !DILexicalBlock(scope: !372, file: !3, line: 207, column: 2)
!746 = !DILocation(line: 207, column: 2, scope: !747)
!747 = distinct !DILexicalBlock(scope: !745, file: !3, line: 207, column: 2)
!748 = !DILocation(line: 208, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !372, file: !3, line: 208, column: 6)
!750 = !DILocation(line: 208, column: 10, scope: !749)
!751 = !DILocation(line: 208, column: 6, scope: !372)
!752 = !DILocation(line: 209, column: 18, scope: !749)
!753 = !DILocation(line: 209, column: 39, scope: !749)
!754 = !DILocation(line: 209, column: 3, scope: !749)
!755 = !DILocation(line: 212, column: 18, scope: !372)
!756 = !DILocation(line: 212, column: 16, scope: !372)
!757 = !DILocation(line: 214, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !372, file: !3, line: 214, column: 6)
!759 = !DILocation(line: 214, column: 6, scope: !372)
!760 = !DILocation(line: 215, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 215, column: 3)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 214, column: 21)
!763 = !DILocation(line: 215, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 215, column: 3)
!765 = !DILocation(line: 216, column: 25, scope: !762)
!766 = !DILocation(line: 216, column: 40, scope: !762)
!767 = !DILocation(line: 216, column: 23, scope: !762)
!768 = !DILocation(line: 217, column: 23, scope: !762)
!769 = !DILocation(line: 217, column: 38, scope: !762)
!770 = !DILocation(line: 217, column: 21, scope: !762)
!771 = !DILocation(line: 218, column: 18, scope: !762)
!772 = !DILocation(line: 218, column: 36, scope: !762)
!773 = !DILocation(line: 219, column: 6, scope: !762)
!774 = !DILocation(line: 219, column: 24, scope: !762)
!775 = !DILocation(line: 218, column: 3, scope: !762)
!776 = !DILocation(line: 220, column: 2, scope: !762)
!777 = !DILocation(line: 221, column: 23, scope: !778)
!778 = distinct !DILexicalBlock(scope: !758, file: !3, line: 220, column: 9)
!779 = !DILocation(line: 222, column: 21, scope: !778)
!780 = !DILocation(line: 226, column: 9, scope: !422)
!781 = !DILocation(line: 226, column: 7, scope: !422)
!782 = !DILocation(line: 226, column: 14, scope: !421)
!783 = !DILocation(line: 226, column: 16, scope: !421)
!784 = !DILocation(line: 226, column: 2, scope: !422)
!785 = !DILocation(line: 227, column: 25, scope: !420)
!786 = !DILocation(line: 227, column: 30, scope: !420)
!787 = !DILocation(line: 227, column: 47, scope: !420)
!788 = !DILocation(line: 227, column: 49, scope: !420)
!789 = !DILocation(line: 227, column: 44, scope: !420)
!790 = !DILocation(line: 227, column: 39, scope: !420)
!791 = !DILocation(line: 227, column: 9, scope: !420)
!792 = !DILocation(line: 227, column: 7, scope: !420)
!793 = !DILocation(line: 228, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !420, file: !3, line: 228, column: 7)
!795 = !DILocation(line: 228, column: 13, scope: !794)
!796 = !DILocation(line: 228, column: 7, scope: !420)
!797 = !DILocation(line: 229, column: 4, scope: !794)
!798 = !DILocation(line: 231, column: 11, scope: !420)
!799 = !DILocation(line: 231, column: 15, scope: !420)
!800 = !DILocation(line: 231, column: 9, scope: !420)
!801 = !DILocation(line: 232, column: 9, scope: !420)
!802 = !DILocation(line: 233, column: 25, scope: !420)
!803 = !DILocation(line: 233, column: 30, scope: !420)
!804 = !DILocation(line: 233, column: 47, scope: !420)
!805 = !DILocation(line: 233, column: 49, scope: !420)
!806 = !DILocation(line: 233, column: 44, scope: !420)
!807 = !DILocation(line: 233, column: 39, scope: !420)
!808 = !DILocation(line: 233, column: 9, scope: !420)
!809 = !DILocation(line: 233, column: 7, scope: !420)
!810 = !DILocation(line: 234, column: 10, scope: !420)
!811 = !DILocation(line: 234, column: 14, scope: !420)
!812 = !DILocation(line: 234, column: 8, scope: !420)
!813 = !DILocation(line: 235, column: 11, scope: !420)
!814 = !DILocation(line: 235, column: 15, scope: !420)
!815 = !DILocation(line: 235, column: 21, scope: !420)
!816 = !DILocation(line: 235, column: 8, scope: !420)
!817 = !DILocation(line: 236, column: 10, scope: !420)
!818 = !DILocation(line: 236, column: 14, scope: !420)
!819 = !DILocation(line: 236, column: 9, scope: !420)
!820 = !DILocation(line: 236, column: 7, scope: !420)
!821 = !DILocation(line: 237, column: 7, scope: !420)
!822 = !DILocation(line: 238, column: 7, scope: !420)
!823 = !DILocation(line: 240, column: 29, scope: !420)
!824 = !DILocation(line: 240, column: 35, scope: !420)
!825 = !DILocation(line: 240, column: 10, scope: !420)
!826 = !DILocation(line: 240, column: 8, scope: !420)
!827 = !DILocation(line: 242, column: 8, scope: !828)
!828 = distinct !DILexicalBlock(scope: !420, file: !3, line: 242, column: 7)
!829 = !DILocation(line: 242, column: 7, scope: !420)
!830 = !DILocation(line: 243, column: 4, scope: !828)
!831 = !DILocation(line: 245, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !420, file: !3, line: 245, column: 3)
!833 = !DILocation(line: 245, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !3, line: 245, column: 3)
!835 = !DILocation(line: 251, column: 7, scope: !419)
!836 = !DILocation(line: 251, column: 7, scope: !420)
!837 = !DILocation(line: 252, column: 4, scope: !418)
!838 = !DILocation(line: 252, column: 8, scope: !418)
!839 = !DILocation(line: 253, column: 4, scope: !418)
!840 = !DILocation(line: 253, column: 8, scope: !418)
!841 = !DILocation(line: 254, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !418, file: !3, line: 254, column: 8)
!843 = !DILocation(line: 254, column: 17, scope: !842)
!844 = !DILocation(line: 254, column: 14, scope: !842)
!845 = !DILocation(line: 254, column: 37, scope: !842)
!846 = !DILocation(line: 255, column: 8, scope: !842)
!847 = !DILocation(line: 255, column: 17, scope: !842)
!848 = !DILocation(line: 255, column: 14, scope: !842)
!849 = !DILocation(line: 254, column: 8, scope: !418)
!850 = !DILocation(line: 256, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !842, file: !3, line: 255, column: 36)
!852 = !DILocation(line: 256, column: 31, scope: !851)
!853 = !DILocation(line: 256, column: 11, scope: !851)
!854 = !DILocation(line: 257, column: 13, scope: !851)
!855 = !DILocation(line: 258, column: 4, scope: !851)
!856 = !DILocation(line: 260, column: 8, scope: !857)
!857 = distinct !DILexicalBlock(scope: !418, file: !3, line: 260, column: 8)
!858 = !DILocation(line: 260, column: 15, scope: !857)
!859 = !DILocation(line: 260, column: 12, scope: !857)
!860 = !DILocation(line: 260, column: 35, scope: !857)
!861 = !DILocation(line: 261, column: 8, scope: !857)
!862 = !DILocation(line: 261, column: 15, scope: !857)
!863 = !DILocation(line: 261, column: 12, scope: !857)
!864 = !DILocation(line: 260, column: 8, scope: !418)
!865 = !DILocation(line: 262, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !857, file: !3, line: 261, column: 34)
!867 = !DILocation(line: 262, column: 31, scope: !866)
!868 = !DILocation(line: 262, column: 9, scope: !866)
!869 = !DILocation(line: 263, column: 13, scope: !866)
!870 = !DILocation(line: 264, column: 4, scope: !866)
!871 = !DILocation(line: 266, column: 8, scope: !872)
!872 = distinct !DILexicalBlock(scope: !418, file: !3, line: 266, column: 8)
!873 = !DILocation(line: 266, column: 16, scope: !872)
!874 = !DILocation(line: 266, column: 14, scope: !872)
!875 = !DILocation(line: 266, column: 36, scope: !872)
!876 = !DILocation(line: 267, column: 8, scope: !872)
!877 = !DILocation(line: 267, column: 14, scope: !872)
!878 = !DILocation(line: 267, column: 12, scope: !872)
!879 = !DILocation(line: 266, column: 8, scope: !418)
!880 = !DILocation(line: 269, column: 12, scope: !881)
!881 = distinct !DILexicalBlock(scope: !872, file: !3, line: 267, column: 33)
!882 = !DILocation(line: 269, column: 32, scope: !881)
!883 = !DILocation(line: 269, column: 10, scope: !881)
!884 = !DILocation(line: 270, column: 16, scope: !881)
!885 = !DILocation(line: 270, column: 22, scope: !881)
!886 = !DILocation(line: 270, column: 29, scope: !881)
!887 = !DILocation(line: 270, column: 5, scope: !881)
!888 = !DILocation(line: 271, column: 20, scope: !881)
!889 = !DILocation(line: 271, column: 38, scope: !881)
!890 = !DILocation(line: 272, column: 8, scope: !881)
!891 = !DILocation(line: 272, column: 13, scope: !881)
!892 = !DILocation(line: 271, column: 5, scope: !881)
!893 = !DILocation(line: 273, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !881, file: !3, line: 273, column: 5)
!895 = !DILocation(line: 273, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !894, file: !3, line: 273, column: 5)
!897 = !DILocation(line: 274, column: 13, scope: !881)
!898 = !DILocation(line: 274, column: 31, scope: !881)
!899 = !DILocation(line: 274, column: 11, scope: !881)
!900 = !DILocation(line: 275, column: 13, scope: !881)
!901 = !DILocation(line: 276, column: 4, scope: !881)
!902 = !DILocation(line: 277, column: 8, scope: !903)
!903 = distinct !DILexicalBlock(scope: !418, file: !3, line: 277, column: 8)
!904 = !DILocation(line: 277, column: 8, scope: !418)
!905 = !DILocation(line: 278, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 278, column: 9)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 277, column: 17)
!908 = !DILocation(line: 278, column: 18, scope: !906)
!909 = !DILocation(line: 278, column: 15, scope: !906)
!910 = !DILocation(line: 278, column: 9, scope: !907)
!911 = !DILocation(line: 279, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 279, column: 6)
!913 = distinct !DILexicalBlock(scope: !906, file: !3, line: 278, column: 23)
!914 = !DILocation(line: 279, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 279, column: 6)
!916 = !DILocation(line: 280, column: 5, scope: !913)
!917 = !DILocation(line: 281, column: 6, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 281, column: 6)
!919 = distinct !DILexicalBlock(scope: !906, file: !3, line: 280, column: 12)
!920 = !DILocation(line: 281, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 281, column: 6)
!922 = !DILocation(line: 282, column: 6, scope: !919)
!923 = !DILocation(line: 284, column: 4, scope: !907)
!924 = !DILocation(line: 285, column: 3, scope: !419)
!925 = !DILocation(line: 285, column: 3, scope: !418)
!926 = !DILocation(line: 287, column: 14, scope: !420)
!927 = !DILocation(line: 287, column: 33, scope: !420)
!928 = !DILocation(line: 287, column: 20, scope: !420)
!929 = !DILocation(line: 287, column: 54, scope: !420)
!930 = !DILocation(line: 287, column: 41, scope: !420)
!931 = !DILocation(line: 287, column: 3, scope: !420)
!932 = !DILocation(line: 289, column: 18, scope: !420)
!933 = !DILocation(line: 289, column: 36, scope: !420)
!934 = !DILocation(line: 289, column: 43, scope: !420)
!935 = !DILocation(line: 289, column: 47, scope: !420)
!936 = !DILocation(line: 289, column: 3, scope: !420)
!937 = !DILocation(line: 290, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !420, file: !3, line: 290, column: 3)
!939 = !DILocation(line: 290, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !3, line: 290, column: 3)
!941 = !DILocation(line: 291, column: 2, scope: !420)
!942 = !DILocation(line: 226, column: 22, scope: !421)
!943 = !DILocation(line: 226, column: 2, scope: !421)
!944 = distinct !{!944, !784, !945, !536, !537}
!945 = !DILocation(line: 291, column: 2, scope: !422)
!946 = !DILocation(line: 295, column: 10, scope: !372)
!947 = !DILocation(line: 296, column: 2, scope: !372)
!948 = !DILocation(line: 298, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !372, file: !3, line: 298, column: 6)
!950 = !DILocation(line: 298, column: 10, scope: !949)
!951 = !DILocation(line: 298, column: 6, scope: !372)
!952 = !DILocation(line: 300, column: 11, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !3, line: 298, column: 21)
!954 = !DILocation(line: 301, column: 3, scope: !953)
!955 = !DILocation(line: 302, column: 10, scope: !953)
!956 = !DILocation(line: 302, column: 14, scope: !953)
!957 = !DILocation(line: 302, column: 7, scope: !953)
!958 = !DILocation(line: 303, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !953, file: !3, line: 303, column: 3)
!960 = !DILocation(line: 303, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !959, file: !3, line: 303, column: 3)
!962 = !DILocation(line: 304, column: 18, scope: !953)
!963 = !DILocation(line: 304, column: 46, scope: !953)
!964 = !DILocation(line: 304, column: 3, scope: !953)
!965 = !DILocation(line: 305, column: 2, scope: !953)
!966 = !DILocation(line: 311, column: 28, scope: !372)
!967 = !DILocation(line: 311, column: 38, scope: !372)
!968 = !DILocation(line: 311, column: 9, scope: !372)
!969 = !DILocation(line: 311, column: 7, scope: !372)
!970 = !DILocation(line: 312, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !372, file: !3, line: 312, column: 6)
!972 = !DILocation(line: 312, column: 6, scope: !372)
!973 = !DILocation(line: 313, column: 10, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 313, column: 3)
!975 = distinct !DILexicalBlock(scope: !971, file: !3, line: 312, column: 12)
!976 = !DILocation(line: 313, column: 8, scope: !974)
!977 = !DILocation(line: 313, column: 15, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 313, column: 3)
!979 = !DILocation(line: 313, column: 17, scope: !978)
!980 = !DILocation(line: 313, column: 3, scope: !974)
!981 = !DILocation(line: 314, column: 15, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 314, column: 8)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 313, column: 35)
!984 = !DILocation(line: 314, column: 9, scope: !982)
!985 = !DILocation(line: 314, column: 18, scope: !982)
!986 = !DILocation(line: 314, column: 8, scope: !983)
!987 = !DILocation(line: 315, column: 5, scope: !982)
!988 = !DILocation(line: 317, column: 15, scope: !983)
!989 = !DILocation(line: 317, column: 40, scope: !983)
!990 = !DILocation(line: 317, column: 34, scope: !983)
!991 = !DILocation(line: 317, column: 43, scope: !983)
!992 = !DILocation(line: 317, column: 21, scope: !983)
!993 = !DILocation(line: 318, column: 27, scope: !983)
!994 = !DILocation(line: 318, column: 21, scope: !983)
!995 = !DILocation(line: 318, column: 30, scope: !983)
!996 = !DILocation(line: 318, column: 34, scope: !983)
!997 = !DILocation(line: 318, column: 8, scope: !983)
!998 = !DILocation(line: 317, column: 4, scope: !983)
!999 = !DILocation(line: 320, column: 3, scope: !983)
!1000 = !DILocation(line: 313, column: 31, scope: !978)
!1001 = !DILocation(line: 313, column: 3, scope: !978)
!1002 = distinct !{!1002, !980, !1003, !536, !537}
!1003 = !DILocation(line: 320, column: 3, scope: !974)
!1004 = !DILocation(line: 321, column: 2, scope: !975)
!1005 = !DILocation(line: 323, column: 2, scope: !425)
!1006 = !DILocation(line: 323, column: 2, scope: !426)
!1007 = !DILocation(line: 323, column: 2, scope: !429)
!1008 = !DILocation(line: 324, column: 3, scope: !428)
!1009 = !DILocation(line: 324, column: 7, scope: !428)
!1010 = !DILocation(line: 325, column: 3, scope: !428)
!1011 = !DILocation(line: 325, column: 24, scope: !428)
!1012 = !DILocation(line: 327, column: 12, scope: !428)
!1013 = !DILocation(line: 327, column: 18, scope: !428)
!1014 = !DILocation(line: 327, column: 23, scope: !428)
!1015 = !DILocation(line: 327, column: 10, scope: !428)
!1016 = !DILocation(line: 328, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !428, file: !3, line: 328, column: 3)
!1018 = !DILocation(line: 328, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 328, column: 3)
!1020 = !DILocation(line: 330, column: 3, scope: !432)
!1021 = !DILocation(line: 330, column: 3, scope: !433)
!1022 = !DILocation(line: 330, column: 3, scope: !436)
!1023 = !DILocation(line: 331, column: 4, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !436, file: !3, line: 331, column: 4)
!1025 = !DILocation(line: 331, column: 4, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 331, column: 4)
!1027 = !DILocation(line: 331, column: 4, scope: !436)
!1028 = !DILocation(line: 330, column: 3, scope: !435)
!1029 = distinct !{!1029, !1021, !1030, !536, !537}
!1030 = !DILocation(line: 331, column: 4, scope: !433)
!1031 = !DILocation(line: 333, column: 2, scope: !429)
!1032 = !DILocation(line: 333, column: 2, scope: !428)
!1033 = !DILocation(line: 323, column: 2, scope: !438)
!1034 = distinct !{!1034, !1006, !1035, !536, !537}
!1035 = !DILocation(line: 333, column: 2, scope: !426)
!1036 = !DILocation(line: 335, column: 2, scope: !372)
!1037 = !DILocation(line: 336, column: 1, scope: !372)
!1038 = distinct !DISubprogram(name: "pci_io_ecs_init", scope: !3, file: !3, line: 379, type: !354, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1039)
!1039 = !{!1040, !1041, !1043}
!1040 = !DILocalVariable(name: "ret", scope: !1038, file: !3, line: 381, type: !13)
!1041 = !DILocalVariable(name: "__ret_warn_on", scope: !1042, file: !3, line: 393, type: !13)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 393, column: 2)
!1043 = !DILocalVariable(name: "__flags", scope: !1044, file: !3, line: 393, type: !13)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 393, column: 2)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 393, column: 2)
!1046 = !DILocation(line: 381, column: 2, scope: !1038)
!1047 = !DILocation(line: 381, column: 6, scope: !1038)
!1048 = !DILocation(line: 384, column: 20, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 384, column: 6)
!1050 = !DILocation(line: 384, column: 6, scope: !1049)
!1051 = !DILocation(line: 384, column: 24, scope: !1049)
!1052 = !DILocation(line: 384, column: 6, scope: !1038)
!1053 = !DILocation(line: 385, column: 3, scope: !1049)
!1054 = !DILocation(line: 388, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 388, column: 6)
!1056 = !DILocation(line: 388, column: 6, scope: !1038)
!1057 = !DILocation(line: 389, column: 3, scope: !1055)
!1058 = !DILocation(line: 391, column: 8, scope: !1038)
!1059 = !DILocation(line: 391, column: 6, scope: !1038)
!1060 = !DILocation(line: 393, column: 2, scope: !1042)
!1061 = !DILocation(line: 393, column: 2, scope: !1045)
!1062 = !DILocation(line: 393, column: 2, scope: !1044)
!1063 = !DILocation(line: 393, column: 2, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 393, column: 2)
!1065 = !DILocation(line: 393, column: 2, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 393, column: 2)
!1067 = !{i64 2155073269, i64 2155073298, i64 2155073344, i64 2155073402, i64 2155073456, i64 2155073510, i64 2155073565, i64 2155073596, i64 2155073904, i64 2155073910, i64 2155073957, i64 2155073980, i64 2155074006}
!1068 = !DILocation(line: 393, column: 2, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 393, column: 2)
!1070 = !DILocation(line: 393, column: 2, scope: !1038)
!1071 = !DILocation(line: 395, column: 12, scope: !1038)
!1072 = !DILocation(line: 397, column: 2, scope: !1038)
!1073 = !DILocation(line: 398, column: 1, scope: !1038)
!1074 = !DISubprogram(name: "early_pci_allowed", scope: !1075, file: !1075, line: 17, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!1076 = !DISubprogram(name: "read_pci_config", scope: !1075, file: !1075, line: 10, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!255, !1079, !1079, !1079, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !233, line: 17, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !235, line: 21, baseType: !1081)
!1081 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1082 = !DISubprogram(name: "alloc_pci_root_info", scope: !210, file: !210, line: 23, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!208, !13, !13, !13, !13}
!1085 = !DISubprogram(name: "add_range", scope: !388, file: !388, line: 21, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!13, !1088, !13, !13, !232, !232}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1089 = distinct !DISubprogram(name: "find_pci_root_info", scope: !3, file: !3, line: 42, type: !1090, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!208, !13, !13}
!1092 = !{!1093, !1094, !1095, !1096, !1099}
!1093 = !DILocalVariable(name: "node", arg: 1, scope: !1089, file: !3, line: 42, type: !13)
!1094 = !DILocalVariable(name: "link", arg: 2, scope: !1089, file: !3, line: 42, type: !13)
!1095 = !DILocalVariable(name: "info", scope: !1089, file: !3, line: 44, type: !208)
!1096 = !DILocalVariable(name: "__mptr", scope: !1097, file: !3, line: 47, type: !207)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 47, column: 2)
!1098 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 47, column: 2)
!1099 = !DILocalVariable(name: "__mptr", scope: !1100, file: !3, line: 47, type: !207)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 47, column: 2)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 47, column: 2)
!1102 = !DILocation(line: 42, column: 60, scope: !1089)
!1103 = !DILocation(line: 42, column: 70, scope: !1089)
!1104 = !DILocation(line: 44, column: 2, scope: !1089)
!1105 = !DILocation(line: 44, column: 24, scope: !1089)
!1106 = !DILocation(line: 47, column: 2, scope: !1097)
!1107 = !DILocation(line: 47, column: 2, scope: !1098)
!1108 = !DILocation(line: 47, column: 2, scope: !1101)
!1109 = !DILocation(line: 48, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 48, column: 7)
!1111 = !DILocation(line: 48, column: 13, scope: !1110)
!1112 = !DILocation(line: 48, column: 21, scope: !1110)
!1113 = !DILocation(line: 48, column: 18, scope: !1110)
!1114 = !DILocation(line: 48, column: 26, scope: !1110)
!1115 = !DILocation(line: 48, column: 29, scope: !1110)
!1116 = !DILocation(line: 48, column: 35, scope: !1110)
!1117 = !DILocation(line: 48, column: 43, scope: !1110)
!1118 = !DILocation(line: 48, column: 40, scope: !1110)
!1119 = !DILocation(line: 48, column: 7, scope: !1101)
!1120 = !DILocation(line: 49, column: 11, scope: !1110)
!1121 = !DILocation(line: 49, column: 4, scope: !1110)
!1122 = !DILocation(line: 47, column: 2, scope: !1100)
!1123 = distinct !{!1123, !1107, !1124, !536, !537}
!1124 = !DILocation(line: 49, column: 11, scope: !1098)
!1125 = !DILocation(line: 51, column: 2, scope: !1089)
!1126 = !DILocation(line: 52, column: 1, scope: !1089)
!1127 = !DISubprogram(name: "_printk", scope: !1128, file: !1128, line: 153, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!13, !239, null}
!1131 = !DISubprogram(name: "update_res", scope: !210, file: !210, line: 25, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !208, !230, !230, !242, !13}
!1134 = !DISubprogram(name: "subtract_range", scope: !388, file: !388, line: 28, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1088, !13, !232, !232}
!1137 = distinct !DISubprogram(name: "cap_resource", scope: !3, file: !3, line: 54, type: !1138, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!230, !232}
!1140 = !{!1141}
!1141 = !DILocalVariable(name: "val", arg: 1, scope: !1137, file: !3, line: 54, type: !232)
!1142 = !DILocation(line: 54, column: 48, scope: !1137)
!1143 = !DILocation(line: 56, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 56, column: 6)
!1145 = !DILocation(line: 56, column: 10, scope: !1144)
!1146 = !DILocation(line: 56, column: 6, scope: !1137)
!1147 = !DILocation(line: 57, column: 3, scope: !1144)
!1148 = !DILocation(line: 59, column: 9, scope: !1137)
!1149 = !DILocation(line: 59, column: 2, scope: !1137)
!1150 = !DILocation(line: 60, column: 1, scope: !1137)
!1151 = distinct !DISubprogram(name: "native_read_msr", scope: !1152, file: !1152, line: 114, type: !1153, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1152 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!236, !7}
!1155 = !{!1156, !1157}
!1156 = !DILocalVariable(name: "msr", arg: 1, scope: !1151, file: !1152, line: 114, type: !7)
!1157 = !DILocalVariable(name: "val", scope: !1151, file: !1152, line: 116, type: !236)
!1158 = !DILocation(line: 114, column: 63, scope: !1151)
!1159 = !DILocation(line: 116, column: 2, scope: !1151)
!1160 = !DILocation(line: 116, column: 21, scope: !1151)
!1161 = !DILocation(line: 118, column: 16, scope: !1151)
!1162 = !DILocation(line: 118, column: 8, scope: !1151)
!1163 = !DILocation(line: 118, column: 6, scope: !1151)
!1164 = !DILocation(line: 120, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1151, file: !1152, line: 120, column: 6)
!1166 = !DILocation(line: 120, column: 6, scope: !1151)
!1167 = !DILocation(line: 121, column: 21, scope: !1165)
!1168 = !DILocation(line: 121, column: 26, scope: !1165)
!1169 = !DILocation(line: 121, column: 3, scope: !1165)
!1170 = !DILocation(line: 123, column: 9, scope: !1151)
!1171 = !DILocation(line: 124, column: 1, scope: !1151)
!1172 = !DILocation(line: 123, column: 2, scope: !1151)
!1173 = !DISubprogram(name: "amd_get_mmconfig_range", scope: !1174, file: !1174, line: 18, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DIFile(filename: "./arch/x86/include/asm/amd_nb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0a32ff2229a1703a76a20aba8707eec")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!245, !245}
!1177 = distinct !DISubprogram(name: "__rdmsr", scope: !1152, file: !1152, line: 80, type: !1153, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DILocalVariable(name: "msr", arg: 1, scope: !1177, file: !1152, line: 80, type: !7)
!1180 = !DILocalVariable(name: "low", scope: !1177, file: !1152, line: 82, type: !242)
!1181 = !DILocalVariable(name: "high", scope: !1177, file: !1152, line: 82, type: !242)
!1182 = !DILocation(line: 80, column: 64, scope: !1177)
!1183 = !DILocation(line: 82, column: 2, scope: !1177)
!1184 = !DILocation(line: 87, column: 45, scope: !1177)
!1185 = !DILocation(line: 84, column: 2, scope: !1177)
!1186 = !{i64 2110479, i64 2110500, i64 2149611965, i64 2149612009, i64 2149612032, i64 2149612065, i64 2149612096, i64 2149612135}
!1187 = !DILocation(line: 89, column: 9, scope: !1177)
!1188 = !DILocation(line: 90, column: 1, scope: !1177)
!1189 = !DILocation(line: 89, column: 2, scope: !1177)
!1190 = distinct !DISubprogram(name: "static_key_false", scope: !1191, file: !1191, line: 205, type: !1192, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1191 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!397, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1191, line: 85, size: 128, elements: !1196)
!1196 = !{!1197, !1202}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1195, file: !1191, line: 86, baseType: !1198, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !214, line: 174, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 172, size: 32, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1199, file: !214, line: 173, baseType: !13, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1191, line: 101, baseType: !1203, size: 64, offset: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !1191, line: 101, size: 64, elements: !1204)
!1204 = !{!1205, !1206, !1216}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1203, file: !1191, line: 102, baseType: !242, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1203, file: !1191, line: 103, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1191, line: 117, size: 128, elements: !1209)
!1209 = !{!1210, !1213, !1214}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1208, file: !1191, line: 118, baseType: !1211, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !233, line: 20, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !235, line: 26, baseType: !13)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1208, file: !1191, line: 119, baseType: !1211, size: 32, offset: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1208, file: !1191, line: 120, baseType: !1215, size: 64, offset: 64)
!1215 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1203, file: !1191, line: 104, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1191, line: 104, flags: DIFlagFwdDecl)
!1219 = !{!1220}
!1220 = !DILocalVariable(name: "key", arg: 1, scope: !1190, file: !1191, line: 205, type: !1194)
!1221 = !DILocation(line: 205, column: 65, scope: !1190)
!1222 = !DILocation(line: 207, column: 28, scope: !1190)
!1223 = !DILocation(line: 207, column: 9, scope: !1190)
!1224 = !DILocation(line: 207, column: 2, scope: !1190)
!1225 = !DISubprogram(name: "do_trace_read_msr", scope: !1152, file: !1152, line: 65, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !7, !232, !13}
!1228 = distinct !DISubprogram(name: "arch_static_branch", scope: !1229, file: !1229, line: 25, type: !1230, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1229 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!397, !1194, !397}
!1232 = !{!1233, !1234, !1235}
!1233 = !DILocalVariable(name: "key", arg: 1, scope: !1228, file: !1229, line: 25, type: !1194)
!1234 = !DILocalVariable(name: "branch", arg: 2, scope: !1228, file: !1229, line: 25, type: !397)
!1235 = !DILabel(scope: !1228, name: "l_yes", file: !1229, line: 33)
!1236 = !DILocation(line: 25, column: 67, scope: !1228)
!1237 = !DILocation(line: 25, column: 77, scope: !1228)
!1238 = !DILocation(line: 30, column: 13, scope: !1228)
!1239 = !DILocation(line: 30, column: 28, scope: !1228)
!1240 = !DILocation(line: 30, column: 26, scope: !1228)
!1241 = !DILocation(line: 27, column: 2, scope: !1228)
!1242 = !{i64 391813, i64 391857, i64 2147887903, i64 2147887924, i64 2147887950, i64 2147887983, i64 2147888017, i64 2147888041}
!1243 = !DILocation(line: 32, column: 2, scope: !1228)
!1244 = !DILocation(line: 33, column: 1, scope: !1228)
!1245 = !DILocation(line: 34, column: 2, scope: !1228)
!1246 = !DILocation(line: 35, column: 1, scope: !1228)
!1247 = distinct !DISubprogram(name: "pci_enable_pci_io_ecs", scope: !3, file: !3, line: 352, type: !1248, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null}
!1250 = !{!1251, !1252, !1253, !1257, !1258, !1259}
!1251 = !DILocalVariable(name: "i", scope: !1247, file: !3, line: 355, type: !7)
!1252 = !DILocalVariable(name: "n", scope: !1247, file: !3, line: 355, type: !7)
!1253 = !DILocalVariable(name: "bus", scope: !1254, file: !3, line: 358, type: !1079)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 357, column: 65)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 357, column: 2)
!1256 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 357, column: 2)
!1257 = !DILocalVariable(name: "slot", scope: !1254, file: !3, line: 359, type: !1079)
!1258 = !DILocalVariable(name: "limit", scope: !1254, file: !3, line: 360, type: !1079)
!1259 = !DILocalVariable(name: "val", scope: !1260, file: !3, line: 363, type: !255)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 362, column: 32)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 362, column: 3)
!1262 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 362, column: 3)
!1263 = !DILocation(line: 355, column: 2, scope: !1247)
!1264 = !DILocation(line: 355, column: 15, scope: !1247)
!1265 = !DILocation(line: 355, column: 18, scope: !1247)
!1266 = !DILocation(line: 357, column: 13, scope: !1256)
!1267 = !DILocation(line: 357, column: 9, scope: !1256)
!1268 = !DILocation(line: 357, column: 7, scope: !1256)
!1269 = !DILocation(line: 357, column: 19, scope: !1255)
!1270 = !DILocation(line: 357, column: 21, scope: !1255)
!1271 = !DILocation(line: 357, column: 46, scope: !1255)
!1272 = !DILocation(line: 357, column: 24, scope: !1255)
!1273 = !DILocation(line: 357, column: 49, scope: !1255)
!1274 = !DILocation(line: 0, scope: !1255)
!1275 = !DILocation(line: 357, column: 2, scope: !1256)
!1276 = !DILocation(line: 358, column: 3, scope: !1254)
!1277 = !DILocation(line: 358, column: 6, scope: !1254)
!1278 = !DILocation(line: 358, column: 34, scope: !1254)
!1279 = !DILocation(line: 358, column: 12, scope: !1254)
!1280 = !DILocation(line: 358, column: 37, scope: !1254)
!1281 = !DILocation(line: 359, column: 3, scope: !1254)
!1282 = !DILocation(line: 359, column: 6, scope: !1254)
!1283 = !DILocation(line: 359, column: 35, scope: !1254)
!1284 = !DILocation(line: 359, column: 13, scope: !1254)
!1285 = !DILocation(line: 359, column: 38, scope: !1254)
!1286 = !DILocation(line: 360, column: 3, scope: !1254)
!1287 = !DILocation(line: 360, column: 6, scope: !1254)
!1288 = !DILocation(line: 360, column: 36, scope: !1254)
!1289 = !DILocation(line: 360, column: 14, scope: !1254)
!1290 = !DILocation(line: 360, column: 39, scope: !1254)
!1291 = !DILocation(line: 362, column: 3, scope: !1254)
!1292 = !DILocation(line: 362, column: 10, scope: !1261)
!1293 = !DILocation(line: 362, column: 17, scope: !1261)
!1294 = !DILocation(line: 362, column: 15, scope: !1261)
!1295 = !DILocation(line: 362, column: 3, scope: !1262)
!1296 = !DILocation(line: 363, column: 4, scope: !1260)
!1297 = !DILocation(line: 363, column: 8, scope: !1260)
!1298 = !DILocation(line: 363, column: 30, scope: !1260)
!1299 = !DILocation(line: 363, column: 35, scope: !1260)
!1300 = !DILocation(line: 363, column: 14, scope: !1260)
!1301 = !DILocation(line: 365, column: 25, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 365, column: 8)
!1303 = !DILocation(line: 365, column: 9, scope: !1302)
!1304 = !DILocation(line: 365, column: 8, scope: !1260)
!1305 = !DILocation(line: 366, column: 5, scope: !1302)
!1306 = !DILocation(line: 368, column: 26, scope: !1260)
!1307 = !DILocation(line: 368, column: 31, scope: !1260)
!1308 = !DILocation(line: 368, column: 10, scope: !1260)
!1309 = !DILocation(line: 368, column: 8, scope: !1260)
!1310 = !DILocation(line: 369, column: 10, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 369, column: 8)
!1312 = !DILocation(line: 369, column: 14, scope: !1311)
!1313 = !DILocation(line: 369, column: 8, scope: !1260)
!1314 = !DILocation(line: 370, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 369, column: 45)
!1316 = !DILocation(line: 371, column: 22, scope: !1315)
!1317 = !DILocation(line: 371, column: 27, scope: !1315)
!1318 = !DILocation(line: 371, column: 42, scope: !1315)
!1319 = !DILocation(line: 371, column: 5, scope: !1315)
!1320 = !DILocation(line: 372, column: 4, scope: !1315)
!1321 = !DILocation(line: 373, column: 4, scope: !1260)
!1322 = !DILocation(line: 374, column: 3, scope: !1261)
!1323 = !DILocation(line: 374, column: 3, scope: !1260)
!1324 = !DILocation(line: 362, column: 24, scope: !1261)
!1325 = !DILocation(line: 362, column: 3, scope: !1261)
!1326 = distinct !{!1326, !1295, !1327, !536, !537}
!1327 = !DILocation(line: 374, column: 3, scope: !1262)
!1328 = !DILocation(line: 375, column: 2, scope: !1255)
!1329 = !DILocation(line: 375, column: 2, scope: !1254)
!1330 = !DILocation(line: 357, column: 60, scope: !1255)
!1331 = !DILocation(line: 357, column: 2, scope: !1255)
!1332 = distinct !{!1332, !1275, !1333, !536, !537}
!1333 = !DILocation(line: 375, column: 2, scope: !1256)
!1334 = !DILocation(line: 377, column: 1, scope: !1247)
!1335 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !12, file: !12, line: 283, type: !1336, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!13, !11, !239, !1338, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!13, !7}
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DILocalVariable(name: "state", arg: 1, scope: !1335, file: !12, line: 283, type: !11)
!1343 = !DILocalVariable(name: "name", arg: 2, scope: !1335, file: !12, line: 284, type: !239)
!1344 = !DILocalVariable(name: "startup", arg: 3, scope: !1335, file: !12, line: 285, type: !1338)
!1345 = !DILocalVariable(name: "teardown", arg: 4, scope: !1335, file: !12, line: 286, type: !1338)
!1346 = !DILocation(line: 283, column: 54, scope: !1335)
!1347 = !DILocation(line: 284, column: 21, scope: !1335)
!1348 = !DILocation(line: 285, column: 15, scope: !1335)
!1349 = !DILocation(line: 286, column: 15, scope: !1335)
!1350 = !DILocation(line: 288, column: 29, scope: !1335)
!1351 = !DILocation(line: 288, column: 36, scope: !1335)
!1352 = !DILocation(line: 288, column: 48, scope: !1335)
!1353 = !DILocation(line: 288, column: 57, scope: !1335)
!1354 = !DILocation(line: 288, column: 9, scope: !1335)
!1355 = !DILocation(line: 288, column: 2, scope: !1335)
!1356 = distinct !DISubprogram(name: "amd_bus_cpu_online", scope: !3, file: !3, line: 340, type: !1339, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1357)
!1357 = !{!1358, !1359}
!1358 = !DILocalVariable(name: "cpu", arg: 1, scope: !1356, file: !3, line: 340, type: !7)
!1359 = !DILocalVariable(name: "reg", scope: !1356, file: !3, line: 342, type: !232)
!1360 = !DILocation(line: 340, column: 44, scope: !1356)
!1361 = !DILocation(line: 342, column: 2, scope: !1356)
!1362 = !DILocation(line: 342, column: 6, scope: !1356)
!1363 = !DILocation(line: 344, column: 2, scope: !1356)
!1364 = !DILocation(line: 345, column: 8, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 345, column: 6)
!1366 = !DILocation(line: 345, column: 12, scope: !1365)
!1367 = !DILocation(line: 345, column: 6, scope: !1356)
!1368 = !DILocation(line: 346, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 345, column: 35)
!1370 = !DILocation(line: 347, column: 28, scope: !1369)
!1371 = !DILocation(line: 347, column: 3, scope: !1369)
!1372 = !DILocation(line: 348, column: 2, scope: !1369)
!1373 = !DILocation(line: 350, column: 1, scope: !1356)
!1374 = !DILocation(line: 349, column: 2, scope: !1356)
!1375 = !DISubprogram(name: "early_is_amd_nb", scope: !1174, file: !1174, line: 17, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!397, !255}
!1378 = !DISubprogram(name: "write_pci_config", scope: !1075, file: !1075, line: 13, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1079, !1079, !1079, !1079, !255}
!1381 = !DISubprogram(name: "__cpuhp_setup_state", scope: !12, file: !12, line: 263, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!13, !11, !239, !397, !1338, !1338, !397}
!1384 = distinct !DISubprogram(name: "wrmsrl", scope: !1152, file: !1152, line: 260, type: !1385, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !7, !232}
!1387 = !{!1388, !1389}
!1388 = !DILocalVariable(name: "msr", arg: 1, scope: !1384, file: !1152, line: 260, type: !7)
!1389 = !DILocalVariable(name: "val", arg: 2, scope: !1384, file: !1152, line: 260, type: !232)
!1390 = !DILocation(line: 260, column: 40, scope: !1384)
!1391 = !DILocation(line: 260, column: 49, scope: !1384)
!1392 = !DILocation(line: 262, column: 19, scope: !1384)
!1393 = !DILocation(line: 262, column: 30, scope: !1384)
!1394 = !DILocation(line: 262, column: 34, scope: !1384)
!1395 = !DILocation(line: 262, column: 24, scope: !1384)
!1396 = !DILocation(line: 262, column: 58, scope: !1384)
!1397 = !DILocation(line: 262, column: 62, scope: !1384)
!1398 = !DILocation(line: 262, column: 52, scope: !1384)
!1399 = !DILocation(line: 262, column: 2, scope: !1384)
!1400 = !DILocation(line: 263, column: 1, scope: !1384)
!1401 = distinct !DISubprogram(name: "native_write_msr", scope: !1152, file: !1152, line: 143, type: !1402, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !7, !255, !255}
!1404 = !{!1405, !1406, !1407}
!1405 = !DILocalVariable(name: "msr", arg: 1, scope: !1401, file: !1152, line: 143, type: !7)
!1406 = !DILocalVariable(name: "low", arg: 2, scope: !1401, file: !1152, line: 143, type: !255)
!1407 = !DILocalVariable(name: "high", arg: 3, scope: !1401, file: !1152, line: 143, type: !255)
!1408 = !DILocation(line: 143, column: 31, scope: !1401)
!1409 = !DILocation(line: 143, column: 40, scope: !1401)
!1410 = !DILocation(line: 143, column: 49, scope: !1401)
!1411 = !DILocation(line: 145, column: 10, scope: !1401)
!1412 = !DILocation(line: 145, column: 15, scope: !1401)
!1413 = !DILocation(line: 145, column: 20, scope: !1401)
!1414 = !DILocation(line: 145, column: 2, scope: !1401)
!1415 = !DILocation(line: 147, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1401, file: !1152, line: 147, column: 6)
!1417 = !DILocation(line: 147, column: 6, scope: !1401)
!1418 = !DILocation(line: 148, column: 22, scope: !1416)
!1419 = !DILocation(line: 148, column: 33, scope: !1416)
!1420 = !DILocation(line: 148, column: 28, scope: !1416)
!1421 = !DILocation(line: 148, column: 38, scope: !1416)
!1422 = !DILocation(line: 148, column: 46, scope: !1416)
!1423 = !DILocation(line: 148, column: 44, scope: !1416)
!1424 = !DILocation(line: 148, column: 3, scope: !1416)
!1425 = !DILocation(line: 149, column: 1, scope: !1401)
!1426 = distinct !DISubprogram(name: "__wrmsr", scope: !1152, file: !1152, line: 92, type: !1402, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DILocalVariable(name: "msr", arg: 1, scope: !1426, file: !1152, line: 92, type: !7)
!1429 = !DILocalVariable(name: "low", arg: 2, scope: !1426, file: !1152, line: 92, type: !255)
!1430 = !DILocalVariable(name: "high", arg: 3, scope: !1426, file: !1152, line: 92, type: !255)
!1431 = !DILocation(line: 92, column: 50, scope: !1426)
!1432 = !DILocation(line: 92, column: 59, scope: !1426)
!1433 = !DILocation(line: 92, column: 68, scope: !1426)
!1434 = !DILocation(line: 97, column: 17, scope: !1426)
!1435 = !DILocation(line: 97, column: 27, scope: !1426)
!1436 = !DILocation(line: 97, column: 38, scope: !1426)
!1437 = !DILocation(line: 94, column: 2, scope: !1426)
!1438 = !{i64 2110735, i64 2110756, i64 2149612464, i64 2149612508, i64 2149612531, i64 2149612564, i64 2149612595, i64 2149612634}
!1439 = !DILocation(line: 98, column: 1, scope: !1426)
!1440 = !DISubprogram(name: "do_trace_write_msr", scope: !1152, file: !1152, line: 64, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
