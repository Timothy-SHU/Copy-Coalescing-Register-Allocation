; ModuleID = 'arch/x86/mm/pti.c'
source_filename = "arch/x86/mm/pti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.tss_struct = type { %struct.x86_hw_tss, %struct.x86_io_bitmap, [3960 x i8] }
%struct.x86_hw_tss = type <{ i32, i64, i64, i64, i64, [7 x i64], i32, i32, i16, i16 }>
%struct.x86_io_bitmap = type { i64, i32, [1025 x i64], [1025 x i64] }
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.anon.2, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.2 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.3, i32, ptr }
%union.anon.3 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.pgd_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.pgprot = type { i64 }
%struct.pmd_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }

@pti_mode = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [20 x i8] c"disabled on XEN PV.\00", align 1, !dbg !145
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pti\00", align 1, !dbg !150
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !155
@.str.3 = private unnamed_addr constant [26 x i8] c"disabled on command line.\00", align 1, !dbg !157
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !162
@.str.5 = private unnamed_addr constant [31 x i8] c"force enabled on command line.\00", align 1, !dbg !167
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !172
@.str.7 = private unnamed_addr constant [6 x i8] c"nopti\00", align 1, !dbg !177
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_caps_set = external dso_local global [24 x i32], align 16
@__supported_pte_mask = external dso_local global i64, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"\016Kernel/User page tables isolation: enabled\0A\00", align 1, !dbg !182
@x86_hyper_type = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"\016Kernel/User page tables isolation: %s\0A\00", align 1, !dbg !187
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpu_tss_rw = external dso_local global %struct.tss_struct, section ".data..percpu..page_aligned", align 4096
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.10 = private unnamed_addr constant [18 x i8] c"arch/x86/mm/pti.c\00", align 1, !dbg !192
@__default_kernel_pte_mask = external dso_local global i64, align 8
@init_mm = external dso_local global %struct.mm_struct, align 64
@page_offset_base = external dso_local global i64, align 8
@pti_user_pagetable_walk_p4d.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !197
@.str.11 = private unnamed_addr constant [30 x i8] c"attempt to walk user address\0A\00", align 1, !dbg !231
@phys_base = external dso_local global i64, align 8
@pgdir_shift = external dso_local global i32, align 4
@ptrs_per_p4d = external dso_local global i32, align 4
@pti_user_pagetable_walk_pte.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !236
@.str.12 = private unnamed_addr constant [29 x i8] c"attempt to walk to user pte\0A\00", align 1, !dbg !273
@_text = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@__end_rodata_aligned = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pti_check_boottime_disable() #0 section ".init.text" align 16 !dbg !287 {
entry:
  %arg = alloca [5 x i8], align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr %arg) #14, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !291, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !292, metadata !DIExpression()), !dbg !298
  store i32 0, ptr @pti_mode, align 4, !dbg !299
  %call = call zeroext i1 @hypervisor_is_type(i32 noundef 3) #15, !dbg !300
  br i1 %call, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  store i32 1, ptr @pti_mode, align 4, !dbg !303
  call void @pti_print_if_insecure(ptr noundef @.str) #16, !dbg !305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !306

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !307
  %call1 = call i32 @cmdline_find_option(ptr noundef @boot_command_line, ptr noundef @.str.1, ptr noundef %arraydecay, i32 noundef 5) #15, !dbg !308
  store i32 %call1, ptr %ret, align 4, !dbg !309
  %0 = load i32, ptr %ret, align 4, !dbg !310
  %cmp = icmp sgt i32 %0, 0, !dbg !312
  br i1 %cmp, label %if.then2, label %if.end22, !dbg !313

if.then2:                                         ; preds = %if.end
  %1 = load i32, ptr %ret, align 4, !dbg !314
  %cmp3 = icmp eq i32 %1, 3, !dbg !317
  br i1 %cmp3, label %land.lhs.true, label %if.end7, !dbg !318

land.lhs.true:                                    ; preds = %if.then2
  %arraydecay4 = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !319
  %call5 = call i32 @strncmp(ptr noundef %arraydecay4, ptr noundef @.str.2, i64 noundef 3) #15, !dbg !320
  %tobool = icmp ne i32 %call5, 0, !dbg !320
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !321

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr @pti_mode, align 4, !dbg !322
  call void @pti_print_if_insecure(ptr noundef @.str.3) #16, !dbg !324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

if.end7:                                          ; preds = %land.lhs.true, %if.then2
  %2 = load i32, ptr %ret, align 4, !dbg !326
  %cmp8 = icmp eq i32 %2, 2, !dbg !328
  br i1 %cmp8, label %land.lhs.true9, label %if.end14, !dbg !329

land.lhs.true9:                                   ; preds = %if.end7
  %arraydecay10 = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !330
  %call11 = call i32 @strncmp(ptr noundef %arraydecay10, ptr noundef @.str.4, i64 noundef 2) #15, !dbg !331
  %tobool12 = icmp ne i32 %call11, 0, !dbg !331
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !332

if.then13:                                        ; preds = %land.lhs.true9
  store i32 2, ptr @pti_mode, align 4, !dbg !333
  call void @pti_print_if_secure(ptr noundef @.str.5) #16, !dbg !335
  br label %enable, !dbg !336

if.end14:                                         ; preds = %land.lhs.true9, %if.end7
  %3 = load i32, ptr %ret, align 4, !dbg !337
  %cmp15 = icmp eq i32 %3, 4, !dbg !339
  br i1 %cmp15, label %land.lhs.true16, label %if.end21, !dbg !340

land.lhs.true16:                                  ; preds = %if.end14
  %arraydecay17 = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !341
  %call18 = call i32 @strncmp(ptr noundef %arraydecay17, ptr noundef @.str.6, i64 noundef 4) #15, !dbg !342
  %tobool19 = icmp ne i32 %call18, 0, !dbg !342
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !343

if.then20:                                        ; preds = %land.lhs.true16
  store i32 0, ptr @pti_mode, align 4, !dbg !344
  br label %autosel, !dbg !346

if.end21:                                         ; preds = %land.lhs.true16, %if.end14
  br label %if.end22, !dbg !347

if.end22:                                         ; preds = %if.end21, %if.end
  %call23 = call i32 @cmdline_find_option_bool(ptr noundef @boot_command_line, ptr noundef @.str.7) #15, !dbg !348
  %tobool24 = icmp ne i32 %call23, 0, !dbg !348
  br i1 %tobool24, label %if.then26, label %lor.lhs.false, !dbg !350

lor.lhs.false:                                    ; preds = %if.end22
  %call25 = call zeroext i1 @cpu_mitigations_off() #15, !dbg !351
  br i1 %call25, label %if.then26, label %if.end27, !dbg !352

if.then26:                                        ; preds = %lor.lhs.false, %if.end22
  store i32 1, ptr @pti_mode, align 4, !dbg !353
  call void @pti_print_if_insecure(ptr noundef @.str.3) #16, !dbg !355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !356

if.end27:                                         ; preds = %lor.lhs.false
  br label %autosel, !dbg !357

autosel:                                          ; preds = %if.end27, %if.then20
  call void @llvm.dbg.label(metadata !293), !dbg !358
  br i1 false, label %cond.true, label %cond.false, !dbg !359

cond.true:                                        ; preds = %autosel
  br i1 true, label %if.end30, label %if.then29, !dbg !360

cond.false:                                       ; preds = %autosel
  %call28 = call zeroext i1 @arch_test_bit(i64 noundef 718, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !360
  br i1 %call28, label %if.end30, label %if.then29, !dbg !359

if.then29:                                        ; preds = %cond.false, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end30:                                         ; preds = %cond.false, %cond.true
  br label %enable, !dbg !360

enable:                                           ; preds = %if.end30, %if.then13
  call void @llvm.dbg.label(metadata !294), !dbg !363
  br label %do.body, !dbg !364

do.body:                                          ; preds = %enable
  call void @set_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !365
  call void @set_bit(i64 noundef 235, ptr noundef @cpu_caps_set) #15, !dbg !365
  br label %do.cond, !dbg !365

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !365

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !367
  br label %cleanup, !dbg !367

cleanup:                                          ; preds = %do.end, %if.then29, %if.then26, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !367
  call void @llvm.lifetime.end.p0(i64 5, ptr %arg) #14, !dbg !367
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !367

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hypervisor_is_type(i32 noundef %type) #3 align 16 !dbg !368 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i32, ptr @x86_hyper_type, align 4, !dbg !374
  %1 = load i32, ptr %type.addr, align 4, !dbg !375
  %cmp = icmp eq i32 %0, %1, !dbg !376
  ret i1 %cmp, !dbg !377
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pti_print_if_insecure(ptr noundef %reason) #0 section ".init.text" align 16 !dbg !378 {
entry:
  %reason.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %reason, ptr %reason.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !382, metadata !DIExpression()), !dbg !383
  br i1 false, label %cond.true, label %cond.false, !dbg !384

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !385

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 718, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !385
  br i1 %call, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !387

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !389

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %reason.addr, align 8, !dbg !387
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %0) #16, !dbg !387
  store i32 %call1, ptr %tmp, align 4, !dbg !389
  %1 = load i32, ptr %tmp, align 4, !dbg !387
  br label %if.end, !dbg !391

if.end:                                           ; preds = %do.end, %cond.false, %cond.true
  ret void, !dbg !392
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !393 dso_local i32 @cmdline_find_option(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !398 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pti_print_if_secure(ptr noundef %reason) #0 section ".init.text" align 16 !dbg !405 {
entry:
  %reason.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %reason, ptr %reason.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !407, metadata !DIExpression()), !dbg !408
  br i1 false, label %cond.true, label %cond.false, !dbg !409

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !410

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 718, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !410
  br i1 %call, label %if.end, label %if.then, !dbg !409

if.then:                                          ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !412

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !414

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %reason.addr, align 8, !dbg !412
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %0) #16, !dbg !412
  store i32 %call1, ptr %tmp, align 4, !dbg !414
  %1 = load i32, ptr %tmp, align 4, !dbg !412
  br label %if.end, !dbg !416

if.end:                                           ; preds = %do.end, %cond.false, %cond.true
  ret void, !dbg !417
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !418 dso_local i32 @cmdline_find_option_bool(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !421 dso_local zeroext i1 @cpu_mitigations_off() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !425 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !433, metadata !DIExpression()), !dbg !435
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !434, metadata !DIExpression()), !dbg !436
  %0 = load i64, ptr %nr.addr, align 8, !dbg !437
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !438
  br i1 %1, label %cond.true, label %cond.false, !dbg !438

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !439
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !440
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !441
  %conv = zext i1 %call to i32, !dbg !441
  br label %cond.end, !dbg !438

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !442
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !443
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !444
  %conv2 = zext i1 %call1 to i32, !dbg !444
  br label %cond.end, !dbg !438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !438
  %tobool = icmp ne i32 %cond, 0, !dbg !438
  ret i1 %tobool, !dbg !445
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !446 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !452, metadata !DIExpression()), !dbg !454
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !453, metadata !DIExpression()), !dbg !455
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !456
  %1 = load i64, ptr %nr.addr, align 8, !dbg !457
  %div = sdiv i64 %1, 64, !dbg !457
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !458
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !459
  %2 = load i64, ptr %nr.addr, align 8, !dbg !460
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !461
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #6 align 16 !dbg !464 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !468, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !469, metadata !DIExpression()), !dbg !471
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !472
  %call = call zeroext i1 @pgdp_maps_userspace(ptr noundef %0) #15, !dbg !474
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !475

lor.lhs.false:                                    ; preds = %entry
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !476
  %1 = load i64, ptr %pgd1, align 8, !dbg !476
  %and = and i64 %1, 288230376151711744, !dbg !477
  %tobool = icmp ne i64 %and, 0, !dbg !477
  br i1 %tobool, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !479
  br label %return, !dbg !480

if.end:                                           ; preds = %lor.lhs.false
  %pgd2 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !481
  %2 = load i64, ptr %pgd2, align 8, !dbg !481
  %3 = load ptr, ptr %pgdp.addr, align 8, !dbg !482
  %call3 = call ptr @kernel_to_user_pgdp(ptr noundef %3) #15, !dbg !483
  %pgd4 = getelementptr inbounds %struct.pgd_t, ptr %call3, i32 0, i32 0, !dbg !484
  store i64 %2, ptr %pgd4, align 8, !dbg !485
  %pgd5 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !486
  %4 = load i64, ptr %pgd5, align 8, !dbg !486
  %and6 = and i64 %4, 5, !dbg !488
  %cmp = icmp eq i64 %and6, 5, !dbg !489
  br i1 %cmp, label %land.lhs.true, label %if.end11, !dbg !490

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, ptr @__supported_pte_mask, align 8, !dbg !491
  %and7 = and i64 %5, -9223372036854775808, !dbg !492
  %tobool8 = icmp ne i64 %and7, 0, !dbg !492
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !493

if.then9:                                         ; preds = %land.lhs.true
  %pgd10 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !494
  %6 = load i64, ptr %pgd10, align 8, !dbg !495
  %or = or i64 %6, -9223372036854775808, !dbg !495
  store i64 %or, ptr %pgd10, align 8, !dbg !495
  br label %if.end11, !dbg !496

if.end11:                                         ; preds = %if.then9, %land.lhs.true, %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !497
  br label %return, !dbg !498

return:                                           ; preds = %if.end11, %if.then
  %coerce.dive12 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !499
  %7 = load i64, ptr %coerce.dive12, align 8, !dbg !499
  ret i64 %7, !dbg !499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pgdp_maps_userspace(ptr noundef %__ptr) #3 align 16 !dbg !500 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %ptr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__ptr.addr, metadata !505, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !506, metadata !DIExpression()), !dbg !509
  %0 = load ptr, ptr %__ptr.addr, align 8, !dbg !510
  %1 = ptrtoint ptr %0 to i64, !dbg !511
  store i64 %1, ptr %ptr, align 8, !dbg !509
  %2 = load i64, ptr %ptr, align 8, !dbg !512
  %and = and i64 %2, 4095, !dbg !513
  %div = udiv i64 %and, 8, !dbg !514
  %cmp = icmp ult i64 %div, 256, !dbg !515
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !516
  ret i1 %cmp, !dbg !517
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernel_to_user_pgdp(ptr noundef %pgdp) #3 align 16 !dbg !518 {
entry:
  %pgdp.addr = alloca ptr, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !524
  %call = call ptr @ptr_set_bit(ptr noundef %0, i32 noundef 12) #15, !dbg !525
  ret ptr %call, !dbg !526
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pti_init() #0 section ".init.text" align 16 !dbg !527 {
entry:
  %tmp = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !528

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !529

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !529
  br i1 %call, label %if.end, label %if.then, !dbg !528

if.then:                                          ; preds = %cond.false, %cond.true
  br label %return, !dbg !531

if.end:                                           ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !532

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !534

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #16, !dbg !532
  store i32 %call1, ptr %tmp, align 4, !dbg !534
  %0 = load i32, ptr %tmp, align 4, !dbg !532
  call void @pti_clone_user_shared() #16, !dbg !536
  call void @pti_set_kernel_image_nonglobal() #15, !dbg !537
  call void @pti_clone_entry_text(i1 noundef zeroext false) #15, !dbg !538
  call void @pti_setup_espfix64() #16, !dbg !539
  call void @pti_setup_vsyscall() #16, !dbg !540
  br label %return, !dbg !541

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !541
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !542 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pti_clone_user_shared() #0 section ".init.text" align 16 !dbg !546 {
entry:
  %cpu = alloca i32, align 4
  %va = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %pa = alloca i64, align 8
  %target_pte = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp27 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp38 = alloca %struct.pte_t, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !548, metadata !DIExpression()), !dbg !569
  call void @pti_clone_p4d(i64 noundef -2199023255552) #16, !dbg !570
  store i32 0, ptr %cpu, align 4, !dbg !571
  br label %for.cond, !dbg !571

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !572
  %conv = zext i32 %0 to i64, !dbg !572
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #15, !dbg !572
  %conv1 = trunc i64 %call to i32, !dbg !572
  store i32 %conv1, ptr %cpu, align 4, !dbg !572
  %1 = load i32, ptr %cpu, align 4, !dbg !572
  %cmp = icmp ult i32 %1, 64, !dbg !572
  br i1 %cmp, label %for.body, label %for.end, !dbg !571

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #14, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %va, metadata !549, metadata !DIExpression()), !dbg !574
  br label %do.body, !dbg !575

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !553, metadata !DIExpression()), !dbg !576
  store ptr null, ptr %__vpp_verify, align 8, !dbg !576
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !575
  br label %do.cond, !dbg !576

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !576

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !558, metadata !DIExpression()), !dbg !577
  store i64 ptrtoint (ptr @cpu_tss_rw to i64), ptr %__ptr, align 8, !dbg !577
  %3 = load i64, ptr %__ptr, align 8, !dbg !577
  %4 = load i32, ptr %cpu, align 4, !dbg !577
  %idxprom = zext i32 %4 to i64, !dbg !577
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !577
  %5 = load i64, ptr %arrayidx, align 8, !dbg !577
  %add = add i64 %3, %5, !dbg !577
  %6 = inttoptr i64 %add to ptr, !dbg !577
  store ptr %6, ptr %tmp3, align 8, !dbg !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !575
  %7 = load ptr, ptr %tmp3, align 8, !dbg !577
  store ptr %7, ptr %tmp, align 8, !dbg !576
  %8 = load ptr, ptr %tmp, align 8, !dbg !575
  %9 = ptrtoint ptr %8 to i64, !dbg !578
  store i64 %9, ptr %va, align 8, !dbg !574
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #14, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !560, metadata !DIExpression()), !dbg !580
  %10 = load i64, ptr %va, align 8, !dbg !581
  %11 = inttoptr i64 %10 to ptr, !dbg !582
  %call4 = call i64 @per_cpu_ptr_to_phys(ptr noundef %11) #15, !dbg !583
  store i64 %call4, ptr %pa, align 8, !dbg !580
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_pte) #14, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %target_pte, metadata !561, metadata !DIExpression()), !dbg !585
  %12 = load i64, ptr %va, align 8, !dbg !586
  %call5 = call ptr @pti_user_pagetable_walk_pte(i64 noundef %12, i1 noundef zeroext false) #15, !dbg !587
  store ptr %call5, ptr %target_pte, align 8, !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !562, metadata !DIExpression()), !dbg !589
  %13 = load ptr, ptr %target_pte, align 8, !dbg !589
  %tobool = icmp ne ptr %13, null, !dbg !589
  %lnot = xor i1 %tobool, true, !dbg !589
  %lnot6 = xor i1 %lnot, true, !dbg !589
  %lnot7 = xor i1 %lnot6, true, !dbg !589
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !589
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !589
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !590
  %tobool8 = icmp ne i32 %14, 0, !dbg !590
  %lnot9 = xor i1 %tobool8, true, !dbg !590
  %lnot11 = xor i1 %lnot9, true, !dbg !590
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !590
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !590
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !590
  %tobool14 = icmp ne i64 %expval, 0, !dbg !590
  br i1 %tobool14, label %if.then, label %if.end, !dbg !589

if.then:                                          ; preds = %do.end
  br label %do.body15, !dbg !590

do.body15:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !565, metadata !DIExpression()), !dbg !591
  store i32 2305, ptr %__flags, align 4, !dbg !591
  br label %do.body16, !dbg !591

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !592

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !592

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !591

do.body19:                                        ; preds = %do.end18
  %15 = load i32, ptr %__flags, align 4, !dbg !594
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 461, i32 %15, i64 12) #14, !dbg !594, !srcloc !596
  br label %do.cond20, !dbg !594

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !594

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !591

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !597

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !597

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !590
  br label %do.cond25, !dbg !591

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !591

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !591

if.end:                                           ; preds = %do.end26, %do.end
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !589
  %tobool28 = icmp ne i32 %16, 0, !dbg !589
  %lnot29 = xor i1 %tobool28, true, !dbg !589
  %lnot31 = xor i1 %lnot29, true, !dbg !589
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !589
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !589
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !589
  store i64 %expval34, ptr %tmp27, align 8, !dbg !590
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !599
  %17 = load i64, ptr %tmp27, align 8, !dbg !589
  %tobool35 = icmp ne i64 %17, 0, !dbg !599
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !600

if.then36:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !601

if.end37:                                         ; preds = %if.end
  %18 = load ptr, ptr %target_pte, align 8, !dbg !602
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp38) #14, !dbg !603
  %19 = load i64, ptr %pa, align 8, !dbg !604
  %shr = lshr i64 %19, 12, !dbg !605
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !606
  %20 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !606
  %and = and i64 -9223372036854775453, %20, !dbg !606
  store i64 %and, ptr %pgprot, align 8, !dbg !606
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !603
  %21 = load i64, ptr %coerce.dive, align 8, !dbg !603
  %call39 = call i64 @pfn_pte(i64 noundef %shr, i64 %21) #15, !dbg !603
  %coerce.dive40 = getelementptr inbounds %struct.pte_t, ptr %tmp38, i32 0, i32 0, !dbg !603
  store i64 %call39, ptr %coerce.dive40, align 8, !dbg !603
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %tmp38, i64 8, i1 false), !dbg !603
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp38) #14, !dbg !603
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !607
  br label %cleanup, !dbg !607

cleanup:                                          ; preds = %if.end37, %if.then36
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_pte) #14, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #14, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #14, !dbg !607
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !608

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i32, ptr %cpu, align 4, !dbg !572
  %inc = add i32 %22, 1, !dbg !572
  store i32 %inc, ptr %cpu, align 4, !dbg !572
  br label %for.cond, !dbg !572, !llvm.loop !609

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !613
  br label %cleanup43, !dbg !613

cleanup43:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !613
  %cleanup.dest44 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest44, label %unreachable [
    i32 0, label %cleanup.cont45
    i32 1, label %cleanup.cont45
  ]

cleanup.cont45:                                   ; preds = %cleanup43, %cleanup43
  ret void, !dbg !613

unreachable:                                      ; preds = %cleanup43
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pti_set_kernel_image_nonglobal() #6 align 16 !dbg !614 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #14, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %start, metadata !616, metadata !DIExpression()), !dbg !619
  %and = and i64 add (i64 ptrtoint (ptr @_text to i64), i64 4095), -4096, !dbg !620
  store i64 %and, ptr %start, align 8, !dbg !619
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #14, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %end, metadata !617, metadata !DIExpression()), !dbg !622
  %and1 = and i64 add (i64 ptrtoint (ptr @_end to i64), i64 2097151), -2097152, !dbg !623
  store i64 %and1, ptr %end, align 8, !dbg !622
  %0 = load i64, ptr %start, align 8, !dbg !624
  %1 = load i64, ptr %end, align 8, !dbg !625
  %2 = load i64, ptr %start, align 8, !dbg !626
  %sub = sub i64 %1, %2, !dbg !627
  %shr = lshr i64 %sub, 12, !dbg !628
  %conv = trunc i64 %shr to i32, !dbg !629
  %call = call i32 @set_memory_nonglobal(i64 noundef %0, i32 noundef %conv) #15, !dbg !630
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #14, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #14, !dbg !631
  ret void, !dbg !631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pti_clone_entry_text(i1 noundef zeroext %late) #6 align 16 !dbg !632 {
entry:
  %late.addr = alloca i8, align 1
  %frombool = zext i1 %late to i8
  store i8 %frombool, ptr %late.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %late.addr, metadata !636, metadata !DIExpression()), !dbg !637
  %0 = load i8, ptr %late.addr, align 1, !dbg !638, !range !639, !noundef !640
  %tobool = trunc i8 %0 to i1, !dbg !638
  call void @pti_clone_pgtable(i64 noundef ptrtoint (ptr @__entry_text_start to i64), i64 noundef ptrtoint (ptr @__entry_text_end to i64), i32 noundef 0, i1 noundef zeroext %tobool) #15, !dbg !641
  ret void, !dbg !642
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pti_setup_espfix64() #0 section ".init.text" align 16 !dbg !643 {
entry:
  call void @pti_clone_p4d(i64 noundef -1099511627776) #16, !dbg !644
  ret void, !dbg !645
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pti_setup_vsyscall() #0 section ".init.text" align 16 !dbg !646 {
entry:
  %pte = alloca ptr, align 8
  %target_pte = alloca ptr, align 8
  %level = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on31 = alloca i32, align 4
  %__flags49 = alloca i32, align 4
  %tmp62 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !648, metadata !DIExpression()), !dbg !664
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_pte) #14, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %target_pte, metadata !649, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #14, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %level, metadata !650, metadata !DIExpression()), !dbg !667
  %call = call ptr @lookup_address(i64 noundef -10485760, ptr noundef %level) #15, !dbg !668
  store ptr %call, ptr %pte, align 8, !dbg !669
  %0 = load ptr, ptr %pte, align 8, !dbg !670
  %tobool = icmp ne ptr %0, null, !dbg !670
  br i1 %tobool, label %lor.lhs.false, label %if.then28, !dbg !671

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !651, metadata !DIExpression()), !dbg !672
  %1 = load i32, ptr %level, align 4, !dbg !672
  %cmp = icmp ne i32 %1, 1, !dbg !672
  %lnot = xor i1 %cmp, true, !dbg !672
  %lnot1 = xor i1 %lnot, true, !dbg !672
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !672
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !672
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !673
  %tobool2 = icmp ne i32 %2, 0, !dbg !673
  %lnot3 = xor i1 %tobool2, true, !dbg !673
  %lnot5 = xor i1 %lnot3, true, !dbg !673
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !673
  %conv = sext i32 %lnot.ext6 to i64, !dbg !673
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !673
  %tobool7 = icmp ne i64 %expval, 0, !dbg !673
  br i1 %tobool7, label %if.then, label %if.end, !dbg !672

if.then:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !673

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !654, metadata !DIExpression()), !dbg !674
  store i32 2305, ptr %__flags, align 4, !dbg !674
  br label %do.body8, !dbg !674

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !675

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !675

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !674

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !677
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 288, i32 %3, i64 12) #14, !dbg !677, !srcloc !679
  br label %do.cond10, !dbg !677

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !677

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !674

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !680

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !680

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !673
  br label %do.cond15, !dbg !674

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !674

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !674

if.end:                                           ; preds = %do.end16, %lor.lhs.false
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !672
  %tobool17 = icmp ne i32 %4, 0, !dbg !672
  %lnot18 = xor i1 %tobool17, true, !dbg !672
  %lnot20 = xor i1 %lnot18, true, !dbg !672
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !672
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !672
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !672
  store i64 %expval23, ptr %tmp, align 8, !dbg !673
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !682
  %5 = load i64, ptr %tmp, align 8, !dbg !672
  %tobool24 = icmp ne i64 %5, 0, !dbg !682
  br i1 %tobool24, label %if.then28, label %lor.lhs.false25, !dbg !683

lor.lhs.false25:                                  ; preds = %if.end
  %6 = load ptr, ptr %pte, align 8, !dbg !684
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %6, i32 0, i32 0, !dbg !685
  %7 = load i64, ptr %coerce.dive, align 8, !dbg !685
  %call26 = call i32 @pte_none(i64 %7) #15, !dbg !685
  %tobool27 = icmp ne i32 %call26, 0, !dbg !685
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !686

if.then28:                                        ; preds = %lor.lhs.false25, %if.end, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !687

if.end29:                                         ; preds = %lor.lhs.false25
  %call30 = call ptr @pti_user_pagetable_walk_pte(i64 noundef -10485760, i1 noundef zeroext false) #15, !dbg !688
  store ptr %call30, ptr %target_pte, align 8, !dbg !689
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on31) #14, !dbg !690
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on31, metadata !657, metadata !DIExpression()), !dbg !690
  %8 = load ptr, ptr %target_pte, align 8, !dbg !690
  %tobool32 = icmp ne ptr %8, null, !dbg !690
  %lnot33 = xor i1 %tobool32, true, !dbg !690
  %lnot35 = xor i1 %lnot33, true, !dbg !690
  %lnot37 = xor i1 %lnot35, true, !dbg !690
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !690
  store i32 %lnot.ext38, ptr %__ret_warn_on31, align 4, !dbg !690
  %9 = load i32, ptr %__ret_warn_on31, align 4, !dbg !691
  %tobool39 = icmp ne i32 %9, 0, !dbg !691
  %lnot40 = xor i1 %tobool39, true, !dbg !691
  %lnot42 = xor i1 %lnot40, true, !dbg !691
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !691
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !691
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !691
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !691
  br i1 %tobool46, label %if.then47, label %if.end61, !dbg !690

if.then47:                                        ; preds = %if.end29
  br label %do.body48, !dbg !691

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags49) #14, !dbg !692
  call void @llvm.dbg.declare(metadata ptr %__flags49, metadata !660, metadata !DIExpression()), !dbg !692
  store i32 2305, ptr %__flags49, align 4, !dbg !692
  br label %do.body50, !dbg !692

do.body50:                                        ; preds = %do.body48
  br label %do.cond51, !dbg !693

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !693

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !692

do.body53:                                        ; preds = %do.end52
  %10 = load i32, ptr %__flags49, align 4, !dbg !695
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 292, i32 %10, i64 12) #14, !dbg !695, !srcloc !697
  br label %do.cond54, !dbg !695

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !695

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !692

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !698

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !698

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags49) #14, !dbg !691
  br label %do.cond59, !dbg !692

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !692

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !692

if.end61:                                         ; preds = %do.end60, %if.end29
  %11 = load i32, ptr %__ret_warn_on31, align 4, !dbg !690
  %tobool63 = icmp ne i32 %11, 0, !dbg !690
  %lnot64 = xor i1 %tobool63, true, !dbg !690
  %lnot66 = xor i1 %lnot64, true, !dbg !690
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !690
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !690
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !690
  store i64 %expval69, ptr %tmp62, align 8, !dbg !691
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on31) #14, !dbg !700
  %12 = load i64, ptr %tmp62, align 8, !dbg !690
  %tobool70 = icmp ne i64 %12, 0, !dbg !700
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !701

if.then71:                                        ; preds = %if.end61
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !702

if.end72:                                         ; preds = %if.end61
  %13 = load ptr, ptr %target_pte, align 8, !dbg !703
  %14 = load ptr, ptr %pte, align 8, !dbg !704
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 8, i1 false), !dbg !705
  %call73 = call ptr @kernel_to_user_pgdp(ptr noundef @init_top_pgt) #15, !dbg !706
  call void @set_vsyscall_pgtable_user_bits(ptr noundef %call73) #15, !dbg !707
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !708
  br label %cleanup, !dbg !708

cleanup:                                          ; preds = %if.end72, %if.then71, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #14, !dbg !708
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_pte) #14, !dbg !708
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !708
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !708

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pti_finalize() #6 align 16 !dbg !709 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !710

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !711

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !711
  br i1 %call, label %if.end, label %if.then, !dbg !710

if.then:                                          ; preds = %cond.false, %cond.true
  br label %return, !dbg !713

if.end:                                           ; preds = %cond.false, %cond.true
  call void @pti_clone_entry_text(i1 noundef zeroext true) #15, !dbg !714
  call void @pti_clone_kernel_text() #15, !dbg !715
  call void @ptdump_walk_user_pgd_level_checkwx() #15, !dbg !716
  br label %return, !dbg !717

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pti_clone_kernel_text() #6 align 16 !dbg !718 {
entry:
  %start = alloca i64, align 8
  %end_clone = alloca i64, align 8
  %end_global = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #14, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %start, metadata !720, metadata !DIExpression()), !dbg !724
  %and = and i64 add (i64 ptrtoint (ptr @_text to i64), i64 4095), -4096, !dbg !725
  store i64 %and, ptr %start, align 8, !dbg !724
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_clone) #14, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %end_clone, metadata !721, metadata !DIExpression()), !dbg !727
  store i64 ptrtoint (ptr @__end_rodata_aligned to i64), ptr %end_clone, align 8, !dbg !727
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_global) #14, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %end_global, metadata !722, metadata !DIExpression()), !dbg !729
  %and1 = and i64 add (i64 ptrtoint (ptr @_etext to i64), i64 4095), -4096, !dbg !730
  store i64 %and1, ptr %end_global, align 8, !dbg !729
  %call = call zeroext i1 @pti_kernel_image_global_ok() #15, !dbg !731
  br i1 %call, label %if.end, label %if.then, !dbg !733

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !734

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !735
  %0 = load i32, ptr %tmp, align 4, !dbg !738
  %1 = load i64, ptr %start, align 8, !dbg !739
  %2 = load i64, ptr %end_clone, align 8, !dbg !740
  call void @pti_clone_pgtable(i64 noundef %1, i64 noundef %2, i32 noundef 0, i1 noundef zeroext false) #15, !dbg !741
  %3 = load i64, ptr %start, align 8, !dbg !742
  %4 = load i64, ptr %end_global, align 8, !dbg !743
  %5 = load i64, ptr %start, align 8, !dbg !744
  %sub = sub i64 %4, %5, !dbg !745
  %shr = lshr i64 %sub, 12, !dbg !746
  %conv = trunc i64 %shr to i32, !dbg !747
  %call2 = call i32 @set_memory_global(i64 noundef %3, i32 noundef %conv) #15, !dbg !748
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !749
  br label %cleanup, !dbg !749

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_global) #14, !dbg !749
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_clone) #14, !dbg !749
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #14, !dbg !749
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !749

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !750 dso_local void @ptdump_walk_user_pgd_level_checkwx() #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !751 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !755, metadata !DIExpression()), !dbg !757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !756, metadata !DIExpression()), !dbg !758
  %0 = load i64, ptr %nr.addr, align 8, !dbg !759
  %and = and i64 %0, 63, !dbg !760
  %shl = shl i64 1, %and, !dbg !761
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !762
  %2 = load i64, ptr %nr.addr, align 8, !dbg !763
  %shr = ashr i64 %2, 6, !dbg !764
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !762
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !762
  %and1 = and i64 %shl, %3, !dbg !765
  %cmp = icmp ne i64 %and1, 0, !dbg !766
  ret i1 %cmp, !dbg !767
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !768 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !770, metadata !DIExpression()), !dbg !773
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !771, metadata !DIExpression()), !dbg !774
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !775
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !772, metadata !DIExpression()), !dbg !776
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !777
  %1 = load i64, ptr %nr.addr, align 8, !dbg !778
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !779, !srcloc !780
  %3 = icmp ult i8 %2, 2, !dbg !779
  call void @llvm.assume(i1 %3), !dbg !779
  store i8 %2, ptr %oldbit, align 1, !dbg !779
  %4 = load i8, ptr %oldbit, align 1, !dbg !781, !range !639, !noundef !640
  %tobool = trunc i8 %4 to i1, !dbg !781
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !782
  ret i1 %tobool, !dbg !783
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !784 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !793, metadata !DIExpression()), !dbg !795
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !794, metadata !DIExpression()), !dbg !796
  %0 = load ptr, ptr %v.addr, align 8, !dbg !797
  %1 = load i64, ptr %size.addr, align 8, !dbg !798
  %conv = trunc i64 %1 to i32, !dbg !798
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !799
  %2 = load ptr, ptr %v.addr, align 8, !dbg !800
  %3 = load i64, ptr %size.addr, align 8, !dbg !800
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !800
  ret void, !dbg !801
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !802 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !804, metadata !DIExpression()), !dbg !806
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !805, metadata !DIExpression()), !dbg !807
  %0 = load i64, ptr %nr.addr, align 8, !dbg !808
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !810
  br i1 %1, label %if.then, label %if.else, !dbg !811

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !812
  %3 = load i64, ptr %nr.addr, align 8, !dbg !812
  %shr = ashr i64 %3, 3, !dbg !812
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !812
  %4 = load i64, ptr %nr.addr, align 8, !dbg !814
  %and = and i64 %4, 7, !dbg !814
  %sh_prom = trunc i64 %and to i32, !dbg !814
  %shl = shl i32 1, %sh_prom, !dbg !814
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #14, !dbg !815, !srcloc !816
  br label %if.end, !dbg !817

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !818
  %6 = load i64, ptr %nr.addr, align 8, !dbg !820
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !821, !srcloc !822
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !823
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !824 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !829, metadata !DIExpression()), !dbg !831
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !830, metadata !DIExpression()), !dbg !832
  ret i1 true, !dbg !833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !834 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !839, metadata !DIExpression()), !dbg !842
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !840, metadata !DIExpression()), !dbg !843
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !841, metadata !DIExpression()), !dbg !844
  ret void, !dbg !845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ptr_set_bit(ptr noundef %ptr, i32 noundef %bit) #3 align 16 !dbg !846 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %__ptr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !850, metadata !DIExpression()), !dbg !853
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !851, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !852, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !857
  %1 = ptrtoint ptr %0 to i64, !dbg !858
  store i64 %1, ptr %__ptr, align 8, !dbg !856
  %2 = load i32, ptr %bit.addr, align 4, !dbg !859
  %sh_prom = zext i32 %2 to i64, !dbg !859
  %shl = shl i64 1, %sh_prom, !dbg !859
  %3 = load i64, ptr %__ptr, align 8, !dbg !860
  %or = or i64 %3, %shl, !dbg !860
  store i64 %or, ptr %__ptr, align 8, !dbg !860
  %4 = load i64, ptr %__ptr, align 8, !dbg !861
  %5 = inttoptr i64 %4 to ptr, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !863
  ret ptr %5, !dbg !864
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pti_clone_p4d(i64 noundef %addr) #0 section ".init.text" align 16 !dbg !865 {
entry:
  %addr.addr = alloca i64, align 8
  %kernel_p4d = alloca ptr, align 8
  %user_p4d = alloca ptr, align 8
  %kernel_pgd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !869, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_p4d) #14, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %kernel_p4d, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_p4d) #14, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %user_p4d, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_pgd) #14, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %kernel_pgd, metadata !872, metadata !DIExpression()), !dbg !878
  %0 = load i64, ptr %addr.addr, align 8, !dbg !879
  %call = call ptr @pti_user_pagetable_walk_p4d(i64 noundef %0) #15, !dbg !880
  store ptr %call, ptr %user_p4d, align 8, !dbg !881
  %1 = load ptr, ptr %user_p4d, align 8, !dbg !882
  %tobool = icmp ne ptr %1, null, !dbg !882
  br i1 %tobool, label %if.end, label %if.then, !dbg !884

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !885

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @init_mm, i32 0, i32 8), align 64, !dbg !886
  %3 = load i64, ptr %addr.addr, align 8, !dbg !886
  %call1 = call ptr @pgd_offset_pgd(ptr noundef %2, i64 noundef %3) #15, !dbg !886
  store ptr %call1, ptr %kernel_pgd, align 8, !dbg !887
  %4 = load ptr, ptr %kernel_pgd, align 8, !dbg !888
  %5 = load i64, ptr %addr.addr, align 8, !dbg !889
  %call2 = call ptr @p4d_offset(ptr noundef %4, i64 noundef %5) #15, !dbg !890
  store ptr %call2, ptr %kernel_p4d, align 8, !dbg !891
  %6 = load ptr, ptr %user_p4d, align 8, !dbg !892
  %7 = load ptr, ptr %kernel_p4d, align 8, !dbg !893
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 8, i1 false), !dbg !894
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !895
  br label %cleanup, !dbg !895

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_pgd) #14, !dbg !895
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_p4d) #14, !dbg !895
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_p4d) #14, !dbg !895
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !895

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !896 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !903, metadata !DIExpression()), !dbg !909
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !904, metadata !DIExpression()), !dbg !910
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !905, metadata !DIExpression()), !dbg !911
  %0 = load i64, ptr %size.addr, align 8, !dbg !912
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !912
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !912

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !912
  %cmp = icmp ule i64 %2, 64, !dbg !912
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !912

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !912
  %cmp2 = icmp ugt i64 %3, 0, !dbg !912
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !913

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %val, metadata !906, metadata !DIExpression()), !dbg !915
  %4 = load i64, ptr %offset.addr, align 8, !dbg !916
  %5 = load i64, ptr %size.addr, align 8, !dbg !916
  %cmp3 = icmp uge i64 %4, %5, !dbg !916
  %lnot = xor i1 %cmp3, true, !dbg !916
  %lnot4 = xor i1 %lnot, true, !dbg !916
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !916
  %conv = sext i32 %lnot.ext to i64, !dbg !916
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !916
  %tobool = icmp ne i64 %expval, 0, !dbg !916
  br i1 %tobool, label %if.then5, label %if.end, !dbg !918

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !919
  store i64 %6, ptr %retval, align 8, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !920

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !921
  %8 = load i64, ptr %7, align 8, !dbg !922
  %9 = load i64, ptr %offset.addr, align 8, !dbg !923
  %shl = shl i64 1, %9, !dbg !923
  %sub = sub i64 -1, %shl, !dbg !923
  %add = add i64 %sub, 1, !dbg !923
  %10 = load i64, ptr %size.addr, align 8, !dbg !923
  %sub6 = sub i64 %10, 1, !dbg !923
  %sub7 = sub i64 63, %sub6, !dbg !923
  %shr = lshr i64 -1, %sub7, !dbg !923
  %and = and i64 %add, %shr, !dbg !923
  %add8 = add i64 0, %and, !dbg !923
  %and9 = and i64 %8, %add8, !dbg !924
  store i64 %and9, ptr %val, align 8, !dbg !925
  %11 = load i64, ptr %val, align 8, !dbg !926
  %tobool10 = icmp ne i64 %11, 0, !dbg !926
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !926

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !927
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !927
  br i1 %13, label %cond.true11, label %cond.false, !dbg !927

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !927
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !927
  %cast = trunc i64 %15 to i32, !dbg !927
  %conv12 = sext i32 %cast to i64, !dbg !927
  br label %cond.end, !dbg !927

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !927
  %call = call i64 @variable__ffs(i64 noundef %16) #15, !dbg !927
  br label %cond.end, !dbg !927

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !927
  br label %cond.end14, !dbg !926

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !928
  br label %cond.end14, !dbg !926

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !926
  store i64 %cond15, ptr %retval, align 8, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !929

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !930
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !931
  %19 = load i64, ptr %size.addr, align 8, !dbg !932
  %20 = load i64, ptr %offset.addr, align 8, !dbg !933
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #15, !dbg !934
  store i64 %call17, ptr %retval, align 8, !dbg !935
  br label %return, !dbg !935

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !936
  ret i64 %21, !dbg !936
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !937 dso_local i64 @per_cpu_ptr_to_phys(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pti_user_pagetable_walk_pte(i64 noundef %address, i1 noundef zeroext %late_text) #6 align 16 !dbg !238 {
entry:
  %retval = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %late_text.addr = alloca i8, align 1
  %gfp = alloca i32, align 4
  %pmd = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pmd_t, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %new_pte_page = alloca i64, align 8
  %agg.tmp40 = alloca %struct.pmd_t, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp71 = alloca i64, align 8
  %__ret_warn_on81 = alloca i32, align 4
  %__flags96 = alloca i32, align 4
  %tmp114 = alloca i64, align 8
  %tmp123 = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !242, metadata !DIExpression()), !dbg !941
  %frombool = zext i1 %late_text to i8
  store i8 %frombool, ptr %late_text.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %late_text.addr, metadata !243, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #14, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !244, metadata !DIExpression()), !dbg !944
  store i32 3520, ptr %gfp, align 4, !dbg !944
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #14, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !245, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !246, metadata !DIExpression()), !dbg !948
  %0 = load i64, ptr %address.addr, align 8, !dbg !949
  %call = call ptr @pti_user_pagetable_walk_pmd(i64 noundef %0) #15, !dbg !950
  store ptr %call, ptr %pmd, align 8, !dbg !951
  %1 = load ptr, ptr %pmd, align 8, !dbg !952
  %tobool = icmp ne ptr %1, null, !dbg !952
  br i1 %tobool, label %if.end, label %if.then, !dbg !954

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !955

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pmd, align 8, !dbg !956
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %2, i32 0, i32 0, !dbg !957
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !957
  %call1 = call i32 @pmd_large(i64 %3) #15, !dbg !957
  %tobool2 = icmp ne i32 %call1, 0, !dbg !957
  br i1 %tobool2, label %if.then3, label %if.end31, !dbg !958

if.then3:                                         ; preds = %if.end
  %4 = load i8, ptr %late_text.addr, align 1, !dbg !959, !range !639, !noundef !640
  %tobool4 = trunc i8 %4 to i1, !dbg !959
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !960

if.then5:                                         ; preds = %if.then3
  %5 = load ptr, ptr %pmd, align 8, !dbg !961
  %call6 = call i64 @native_make_pmd(i64 noundef 0) #15, !dbg !961
  %coerce.dive7 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !961
  store i64 %call6, ptr %coerce.dive7, align 8, !dbg !961
  %coerce.dive8 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !961
  %6 = load i64, ptr %coerce.dive8, align 8, !dbg !961
  call void @native_set_pmd(ptr noundef %5, i64 %6) #15, !dbg !961
  br label %if.end30, !dbg !963

if.else:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !964
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !247, metadata !DIExpression()), !dbg !964
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !964
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !965
  %tobool9 = icmp ne i32 %7, 0, !dbg !965
  %lnot = xor i1 %tobool9, true, !dbg !965
  %lnot10 = xor i1 %lnot, true, !dbg !965
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !965
  %conv = sext i32 %lnot.ext to i64, !dbg !965
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !965
  %tobool11 = icmp ne i64 %expval, 0, !dbg !965
  br i1 %tobool11, label %if.then12, label %if.end22, !dbg !964

if.then12:                                        ; preds = %if.else
  br label %do.body, !dbg !965

do.body:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !966
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !253, metadata !DIExpression()), !dbg !966
  store i32 2307, ptr %__flags, align 4, !dbg !966
  br label %do.body13, !dbg !966

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !967

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !967

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !966

do.body14:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !969
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 260, i32 %8, i64 12) #14, !dbg !969, !srcloc !971
  br label %do.cond15, !dbg !969

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !969

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !966

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !972

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !972

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !965
  br label %do.cond20, !dbg !966

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !966

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !966

if.end22:                                         ; preds = %do.end21, %if.else
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !964
  %tobool23 = icmp ne i32 %9, 0, !dbg !964
  %lnot24 = xor i1 %tobool23, true, !dbg !964
  %lnot26 = xor i1 %lnot24, true, !dbg !964
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !964
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !964
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !964
  store i64 %expval29, ptr %tmp, align 8, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !974
  %10 = load i64, ptr %tmp, align 8, !dbg !964
  store ptr null, ptr %retval, align 8, !dbg !975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !975

if.end30:                                         ; preds = %if.then5
  br label %if.end31, !dbg !976

if.end31:                                         ; preds = %if.end30, %if.end
  %11 = load ptr, ptr %pmd, align 8, !dbg !977
  %coerce.dive32 = getelementptr inbounds %struct.pmd_t, ptr %11, i32 0, i32 0, !dbg !978
  %12 = load i64, ptr %coerce.dive32, align 8, !dbg !978
  %call33 = call i32 @pmd_none(i64 %12) #15, !dbg !978
  %tobool34 = icmp ne i32 %call33, 0, !dbg !978
  br i1 %tobool34, label %if.then35, label %if.end45, !dbg !979

if.then35:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pte_page) #14, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %new_pte_page, metadata !256, metadata !DIExpression()), !dbg !981
  %13 = load i32, ptr %gfp, align 4, !dbg !982
  %call36 = call i64 @__get_free_pages(i32 noundef %13, i32 noundef 0) #15, !dbg !982
  store i64 %call36, ptr %new_pte_page, align 8, !dbg !981
  %14 = load i64, ptr %new_pte_page, align 8, !dbg !983
  %tobool37 = icmp ne i64 %14, 0, !dbg !983
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !985

if.then38:                                        ; preds = %if.then35
  store ptr null, ptr %retval, align 8, !dbg !986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !986

if.end39:                                         ; preds = %if.then35
  %15 = load ptr, ptr %pmd, align 8, !dbg !987
  %16 = load i64, ptr %new_pte_page, align 8, !dbg !987
  %call41 = call i64 @__phys_addr_nodebug(i64 noundef %16) #15, !dbg !987
  %or = or i64 99, %call41, !dbg !987
  %call42 = call i64 @native_make_pmd(i64 noundef %or) #15, !dbg !987
  %coerce.dive43 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp40, i32 0, i32 0, !dbg !987
  store i64 %call42, ptr %coerce.dive43, align 8, !dbg !987
  %coerce.dive44 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp40, i32 0, i32 0, !dbg !987
  %17 = load i64, ptr %coerce.dive44, align 8, !dbg !987
  call void @native_set_pmd(ptr noundef %15, i64 %17) #15, !dbg !987
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !988
  br label %cleanup, !dbg !988

cleanup:                                          ; preds = %if.end39, %if.then38
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pte_page) #14, !dbg !988
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup132 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end45, !dbg !989

if.end45:                                         ; preds = %cleanup.cont, %if.end31
  %18 = load ptr, ptr %pmd, align 8, !dbg !990
  %19 = load i64, ptr %address.addr, align 8, !dbg !991
  %call46 = call ptr @pte_offset_kernel(ptr noundef %18, i64 noundef %19) #15, !dbg !992
  store ptr %call46, ptr %pte, align 8, !dbg !993
  %20 = load ptr, ptr %pte, align 8, !dbg !994
  %coerce.dive47 = getelementptr inbounds %struct.pte_t, ptr %20, i32 0, i32 0, !dbg !995
  %21 = load i64, ptr %coerce.dive47, align 8, !dbg !995
  %call48 = call i64 @pte_flags(i64 %21) #15, !dbg !995
  %and = and i64 %call48, 4, !dbg !996
  %tobool49 = icmp ne i64 %and, 0, !dbg !996
  br i1 %tobool49, label %if.then50, label %if.end131, !dbg !997

if.then50:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !259, metadata !DIExpression()), !dbg !998
  store i8 1, ptr %__ret_do_once, align 1, !dbg !998
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !263, metadata !DIExpression()), !dbg !999
  %22 = load i8, ptr %__ret_do_once, align 1, !dbg !999, !range !639, !noundef !640
  %tobool51 = trunc i8 %22 to i1, !dbg !999
  %lnot52 = xor i1 %tobool51, true, !dbg !999
  %lnot54 = xor i1 %lnot52, true, !dbg !999
  %frombool56 = zext i1 %lnot54 to i8, !dbg !999
  store i8 %frombool56, ptr %__ret_cond, align 1, !dbg !999
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !266, metadata !DIExpression()), !dbg !999
  store i8 0, ptr %__ret_once, align 1, !dbg !999
  %23 = load i8, ptr %__ret_cond, align 1, !dbg !1000, !range !639, !noundef !640
  %tobool57 = trunc i8 %23 to i1, !dbg !1000
  br i1 %tobool57, label %land.rhs, label %land.end, !dbg !1000

land.rhs:                                         ; preds = %if.then50
  %24 = load i8, ptr @pti_user_pagetable_walk_pte.__already_done, align 1, !dbg !1000, !range !639, !noundef !640
  %tobool59 = trunc i8 %24 to i1, !dbg !1000
  %lnot60 = xor i1 %tobool59, true, !dbg !1000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then50
  %25 = phi i1 [ false, %if.then50 ], [ %lnot60, %land.rhs ], !dbg !1002
  %lnot62 = xor i1 %25, true, !dbg !1000
  %lnot64 = xor i1 %lnot62, true, !dbg !1000
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !1000
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !1000
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !1000
  %tobool68 = icmp ne i64 %expval67, 0, !dbg !1000
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !999

if.then69:                                        ; preds = %land.end
  store i8 1, ptr @pti_user_pagetable_walk_pte.__already_done, align 1, !dbg !1003
  store i8 1, ptr %__ret_once, align 1, !dbg !1003
  br label %if.end70, !dbg !1003

if.end70:                                         ; preds = %if.then69, %land.end
  %26 = load i8, ptr %__ret_once, align 1, !dbg !999, !range !639, !noundef !640
  %tobool72 = trunc i8 %26 to i1, !dbg !999
  %lnot73 = xor i1 %tobool72, true, !dbg !999
  %lnot75 = xor i1 %lnot73, true, !dbg !999
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !999
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !999
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !999
  store i64 %expval78, ptr %tmp71, align 8, !dbg !1000
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !1005
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !1005
  %27 = load i64, ptr %tmp71, align 8, !dbg !999
  %tobool79 = icmp ne i64 %27, 0, !dbg !1005
  br i1 %tobool79, label %if.then80, label %if.end122, !dbg !998

if.then80:                                        ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on81) #14, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on81, metadata !267, metadata !DIExpression()), !dbg !1006
  store i32 1, ptr %__ret_warn_on81, align 4, !dbg !1006
  %28 = load i32, ptr %__ret_warn_on81, align 4, !dbg !1007
  %tobool82 = icmp ne i32 %28, 0, !dbg !1007
  %lnot83 = xor i1 %tobool82, true, !dbg !1007
  %lnot85 = xor i1 %lnot83, true, !dbg !1007
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1007
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !1007
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 0), !dbg !1007
  %tobool89 = icmp ne i64 %expval88, 0, !dbg !1007
  br i1 %tobool89, label %if.then90, label %if.end113, !dbg !1006

if.then90:                                        ; preds = %if.then80
  br label %do.body91, !dbg !1007

do.body91:                                        ; preds = %if.then90
  br label %do.body92, !dbg !1008

do.body92:                                        ; preds = %do.body91
  br label %do.cond93, !dbg !1009

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !1009

do.end94:                                         ; preds = %do.cond93
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.12) #15, !dbg !1008
  br label %do.body95, !dbg !1008

do.body95:                                        ; preds = %do.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags96) #14, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %__flags96, metadata !269, metadata !DIExpression()), !dbg !1011
  store i32 2313, ptr %__flags96, align 4, !dbg !1011
  br label %do.body97, !dbg !1011

do.body97:                                        ; preds = %do.body95
  br label %do.cond98, !dbg !1012

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !1012

do.end99:                                         ; preds = %do.cond98
  br label %do.body100, !dbg !1011

do.body100:                                       ; preds = %do.end99
  %29 = load i32, ptr %__flags96, align 4, !dbg !1014
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 275, i32 %29, i64 12) #14, !dbg !1014, !srcloc !1016
  br label %do.cond101, !dbg !1014

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !1014

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !1011

do.body103:                                       ; preds = %do.end102
  br label %do.cond104, !dbg !1017

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !1017

do.end105:                                        ; preds = %do.cond104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags96) #14, !dbg !1008
  br label %do.cond106, !dbg !1011

do.cond106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !1011

do.end107:                                        ; preds = %do.cond106
  br label %do.body108, !dbg !1008

do.body108:                                       ; preds = %do.end107
  br label %do.cond109, !dbg !1019

do.cond109:                                       ; preds = %do.body108
  br label %do.end110, !dbg !1019

do.end110:                                        ; preds = %do.cond109
  br label %do.cond111, !dbg !1008

do.cond111:                                       ; preds = %do.end110
  br label %do.end112, !dbg !1008

do.end112:                                        ; preds = %do.cond111
  br label %if.end113, !dbg !1008

if.end113:                                        ; preds = %do.end112, %if.then80
  %30 = load i32, ptr %__ret_warn_on81, align 4, !dbg !1006
  %tobool115 = icmp ne i32 %30, 0, !dbg !1006
  %lnot116 = xor i1 %tobool115, true, !dbg !1006
  %lnot118 = xor i1 %lnot116, true, !dbg !1006
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !1006
  %conv120 = sext i32 %lnot.ext119 to i64, !dbg !1006
  %expval121 = call i64 @llvm.expect.i64(i64 %conv120, i64 0), !dbg !1006
  store i64 %expval121, ptr %tmp114, align 8, !dbg !1007
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on81) #14, !dbg !1005
  %31 = load i64, ptr %tmp114, align 8, !dbg !1006
  br label %if.end122, !dbg !1005

if.end122:                                        ; preds = %if.end113, %if.end70
  %32 = load i8, ptr %__ret_do_once, align 1, !dbg !998, !range !639, !noundef !640
  %tobool124 = trunc i8 %32 to i1, !dbg !998
  %lnot125 = xor i1 %tobool124, true, !dbg !998
  %lnot127 = xor i1 %lnot125, true, !dbg !998
  %lnot.ext128 = zext i1 %lnot127 to i32, !dbg !998
  %conv129 = sext i32 %lnot.ext128 to i64, !dbg !998
  %expval130 = call i64 @llvm.expect.i64(i64 %conv129, i64 0), !dbg !998
  store i64 %expval130, ptr %tmp123, align 8, !dbg !1005
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1021
  %33 = load i64, ptr %tmp123, align 8, !dbg !998
  store ptr null, ptr %retval, align 8, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !1022

if.end131:                                        ; preds = %if.end45
  %34 = load ptr, ptr %pte, align 8, !dbg !1023
  store ptr %34, ptr %retval, align 8, !dbg !1024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !1024

cleanup132:                                       ; preds = %if.end131, %if.end122, %cleanup, %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #14, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #14, !dbg !1025
  %35 = load ptr, ptr %retval, align 8, !dbg !1025
  ret ptr %35, !dbg !1025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_pte(i64 noundef %page_nr, i64 %pgprot.coerce) #3 align 16 !dbg !1026 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %page_nr.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  store i64 %page_nr, ptr %page_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_nr.addr, metadata !1035, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !1036, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #14, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !1037, metadata !DIExpression()), !dbg !1041
  %0 = load i64, ptr %page_nr.addr, align 8, !dbg !1042
  %shl = shl i64 %0, 12, !dbg !1043
  store i64 %shl, ptr %pfn, align 8, !dbg !1041
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !1044
  %1 = load i64, ptr %pgprot1, align 8, !dbg !1044
  %call = call i64 @protnone_mask(i64 noundef %1) #15, !dbg !1045
  %2 = load i64, ptr %pfn, align 8, !dbg !1046
  %xor = xor i64 %2, %call, !dbg !1046
  store i64 %xor, ptr %pfn, align 8, !dbg !1046
  %3 = load i64, ptr %pfn, align 8, !dbg !1047
  %and = and i64 %3, 4503599627366400, !dbg !1047
  store i64 %and, ptr %pfn, align 8, !dbg !1047
  %4 = load i64, ptr %pfn, align 8, !dbg !1048
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !1048
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !1048
  %call3 = call i64 @check_pgprot(i64 %5) #15, !dbg !1048
  %or = or i64 %4, %call3, !dbg !1048
  %call4 = call i64 @native_make_pte(i64 noundef %or) #15, !dbg !1048
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1048
  store i64 %call4, ptr %coerce.dive5, align 8, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #14, !dbg !1049
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1049
  %6 = load i64, ptr %coerce.dive6, align 8, !dbg !1049
  ret i64 %6, !dbg !1049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pti_user_pagetable_walk_p4d(i64 noundef %address) #6 align 16 !dbg !199 {
entry:
  %retval = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %pgd = alloca ptr, align 8
  %gfp = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  %tmp56 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new_p4d_page = alloca i64, align 8
  %__ret_warn_on69 = alloca i32, align 4
  %__flags87 = alloca i32, align 4
  %tmp100 = alloca i64, align 8
  %agg.tmp = alloca %struct.pgd_t, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !203, metadata !DIExpression()), !dbg !1050
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #14, !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !204, metadata !DIExpression()), !dbg !1052
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @init_mm, i32 0, i32 8), align 64, !dbg !1053
  %1 = load i64, ptr %address.addr, align 8, !dbg !1053
  %call = call ptr @pgd_offset_pgd(ptr noundef %0, i64 noundef %1) #15, !dbg !1053
  %call1 = call ptr @kernel_to_user_pgdp(ptr noundef %call) #15, !dbg !1054
  store ptr %call1, ptr %pgd, align 8, !dbg !1052
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #14, !dbg !1055
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !205, metadata !DIExpression()), !dbg !1056
  store i32 3520, ptr %gfp, align 4, !dbg !1056
  %2 = load i64, ptr %address.addr, align 8, !dbg !1057
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !1058
  %cmp = icmp ult i64 %2, %3, !dbg !1059
  br i1 %cmp, label %if.then, label %if.end64, !dbg !1060

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !206, metadata !DIExpression()), !dbg !1061
  store i8 1, ptr %__ret_do_once, align 1, !dbg !1061
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !212, metadata !DIExpression()), !dbg !1062
  %4 = load i8, ptr %__ret_do_once, align 1, !dbg !1062, !range !639, !noundef !640
  %tobool = trunc i8 %4 to i1, !dbg !1062
  %lnot = xor i1 %tobool, true, !dbg !1062
  %lnot2 = xor i1 %lnot, true, !dbg !1062
  %frombool = zext i1 %lnot2 to i8, !dbg !1062
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !1062
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !215, metadata !DIExpression()), !dbg !1062
  store i8 0, ptr %__ret_once, align 1, !dbg !1062
  %5 = load i8, ptr %__ret_cond, align 1, !dbg !1063, !range !639, !noundef !640
  %tobool3 = trunc i8 %5 to i1, !dbg !1063
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !1063

land.rhs:                                         ; preds = %if.then
  %6 = load i8, ptr @pti_user_pagetable_walk_p4d.__already_done, align 1, !dbg !1063, !range !639, !noundef !640
  %tobool4 = trunc i8 %6 to i1, !dbg !1063
  %lnot5 = xor i1 %tobool4, true, !dbg !1063
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %7 = phi i1 [ false, %if.then ], [ %lnot5, %land.rhs ], !dbg !1065
  %lnot6 = xor i1 %7, true, !dbg !1063
  %lnot7 = xor i1 %lnot6, true, !dbg !1063
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1063
  %conv = sext i32 %lnot.ext to i64, !dbg !1063
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1063
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1063
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !1062

if.then9:                                         ; preds = %land.end
  store i8 1, ptr @pti_user_pagetable_walk_p4d.__already_done, align 1, !dbg !1066
  store i8 1, ptr %__ret_once, align 1, !dbg !1066
  br label %if.end, !dbg !1066

if.end:                                           ; preds = %if.then9, %land.end
  %8 = load i8, ptr %__ret_once, align 1, !dbg !1062, !range !639, !noundef !640
  %tobool10 = trunc i8 %8 to i1, !dbg !1062
  %lnot11 = xor i1 %tobool10, true, !dbg !1062
  %lnot13 = xor i1 %lnot11, true, !dbg !1062
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !1062
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !1062
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !1062
  store i64 %expval16, ptr %tmp, align 8, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !1068
  %9 = load i64, ptr %tmp, align 8, !dbg !1062
  %tobool17 = icmp ne i64 %9, 0, !dbg !1068
  br i1 %tobool17, label %if.then18, label %if.end55, !dbg !1061

if.then18:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !216, metadata !DIExpression()), !dbg !1069
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1069
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !1070
  %tobool19 = icmp ne i32 %10, 0, !dbg !1070
  %lnot20 = xor i1 %tobool19, true, !dbg !1070
  %lnot22 = xor i1 %lnot20, true, !dbg !1070
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !1070
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !1070
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !1070
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !1070
  br i1 %tobool26, label %if.then27, label %if.end46, !dbg !1069

if.then27:                                        ; preds = %if.then18
  br label %do.body, !dbg !1070

do.body:                                          ; preds = %if.then27
  br label %do.body28, !dbg !1071

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !1072

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !1072

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.11) #15, !dbg !1071
  br label %do.body29, !dbg !1071

do.body29:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !218, metadata !DIExpression()), !dbg !1074
  store i32 2313, ptr %__flags, align 4, !dbg !1074
  br label %do.body30, !dbg !1074

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !1075

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !1075

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !1074

do.body33:                                        ; preds = %do.end32
  %11 = load i32, ptr %__flags, align 4, !dbg !1077
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 177, i32 %11, i64 12) #14, !dbg !1077, !srcloc !1079
  br label %do.cond34, !dbg !1077

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !1077

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !1074

do.body36:                                        ; preds = %do.end35
  br label %do.cond37, !dbg !1080

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !1080

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1071
  br label %do.cond39, !dbg !1074

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !1074

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !1071

do.body41:                                        ; preds = %do.end40
  br label %do.cond42, !dbg !1082

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !1082

do.end43:                                         ; preds = %do.cond42
  br label %do.cond44, !dbg !1071

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !1071

do.end45:                                         ; preds = %do.cond44
  br label %if.end46, !dbg !1071

if.end46:                                         ; preds = %do.end45, %if.then18
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1069
  %tobool48 = icmp ne i32 %12, 0, !dbg !1069
  %lnot49 = xor i1 %tobool48, true, !dbg !1069
  %lnot51 = xor i1 %lnot49, true, !dbg !1069
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !1069
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !1069
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !1069
  store i64 %expval54, ptr %tmp47, align 8, !dbg !1070
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1068
  %13 = load i64, ptr %tmp47, align 8, !dbg !1069
  br label %if.end55, !dbg !1068

if.end55:                                         ; preds = %if.end46, %if.end
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !1061, !range !639, !noundef !640
  %tobool57 = trunc i8 %14 to i1, !dbg !1061
  %lnot58 = xor i1 %tobool57, true, !dbg !1061
  %lnot60 = xor i1 %lnot58, true, !dbg !1061
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !1061
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !1061
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !1061
  store i64 %expval63, ptr %tmp56, align 8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1084
  %15 = load i64, ptr %tmp56, align 8, !dbg !1061
  store ptr null, ptr %retval, align 8, !dbg !1085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup126, !dbg !1085

if.end64:                                         ; preds = %entry
  %16 = load ptr, ptr %pgd, align 8, !dbg !1086
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %16, i32 0, i32 0, !dbg !1087
  %17 = load i64, ptr %coerce.dive, align 8, !dbg !1087
  %call65 = call i32 @pgd_none(i64 %17) #15, !dbg !1087
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1087
  br i1 %tobool66, label %if.then67, label %if.end115, !dbg !1088

if.then67:                                        ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_p4d_page) #14, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %new_p4d_page, metadata !222, metadata !DIExpression()), !dbg !1090
  %18 = load i32, ptr %gfp, align 4, !dbg !1091
  %call68 = call i64 @__get_free_pages(i32 noundef %18, i32 noundef 0) #15, !dbg !1091
  store i64 %call68, ptr %new_p4d_page, align 8, !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on69) #14, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on69, metadata !225, metadata !DIExpression()), !dbg !1092
  %19 = load i64, ptr %new_p4d_page, align 8, !dbg !1092
  %tobool70 = icmp ne i64 %19, 0, !dbg !1092
  %lnot71 = xor i1 %tobool70, true, !dbg !1092
  %lnot73 = xor i1 %lnot71, true, !dbg !1092
  %lnot75 = xor i1 %lnot73, true, !dbg !1092
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !1092
  store i32 %lnot.ext76, ptr %__ret_warn_on69, align 4, !dbg !1092
  %20 = load i32, ptr %__ret_warn_on69, align 4, !dbg !1093
  %tobool77 = icmp ne i32 %20, 0, !dbg !1093
  %lnot78 = xor i1 %tobool77, true, !dbg !1093
  %lnot80 = xor i1 %lnot78, true, !dbg !1093
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !1093
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !1093
  %expval83 = call i64 @llvm.expect.i64(i64 %conv82, i64 0), !dbg !1093
  %tobool84 = icmp ne i64 %expval83, 0, !dbg !1093
  br i1 %tobool84, label %if.then85, label %if.end99, !dbg !1092

if.then85:                                        ; preds = %if.then67
  br label %do.body86, !dbg !1093

do.body86:                                        ; preds = %if.then85
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags87) #14, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %__flags87, metadata !228, metadata !DIExpression()), !dbg !1094
  store i32 2307, ptr %__flags87, align 4, !dbg !1094
  br label %do.body88, !dbg !1094

do.body88:                                        ; preds = %do.body86
  br label %do.cond89, !dbg !1095

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !1095

do.end90:                                         ; preds = %do.cond89
  br label %do.body91, !dbg !1094

do.body91:                                        ; preds = %do.end90
  %21 = load i32, ptr %__flags87, align 4, !dbg !1097
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 183, i32 %21, i64 12) #14, !dbg !1097, !srcloc !1099
  br label %do.cond92, !dbg !1097

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !1097

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !1094

do.body94:                                        ; preds = %do.end93
  br label %do.cond95, !dbg !1100

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !1100

do.end96:                                         ; preds = %do.cond95
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags87) #14, !dbg !1093
  br label %do.cond97, !dbg !1094

do.cond97:                                        ; preds = %do.end96
  br label %do.end98, !dbg !1094

do.end98:                                         ; preds = %do.cond97
  br label %if.end99, !dbg !1094

if.end99:                                         ; preds = %do.end98, %if.then67
  %22 = load i32, ptr %__ret_warn_on69, align 4, !dbg !1092
  %tobool101 = icmp ne i32 %22, 0, !dbg !1092
  %lnot102 = xor i1 %tobool101, true, !dbg !1092
  %lnot104 = xor i1 %lnot102, true, !dbg !1092
  %lnot.ext105 = zext i1 %lnot104 to i32, !dbg !1092
  %conv106 = sext i32 %lnot.ext105 to i64, !dbg !1092
  %expval107 = call i64 @llvm.expect.i64(i64 %conv106, i64 0), !dbg !1092
  store i64 %expval107, ptr %tmp100, align 8, !dbg !1093
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on69) #14, !dbg !1102
  %23 = load i64, ptr %tmp100, align 8, !dbg !1092
  %tobool108 = icmp ne i64 %23, 0, !dbg !1102
  br i1 %tobool108, label %if.then109, label %if.end110, !dbg !1103

if.then109:                                       ; preds = %if.end99
  store ptr null, ptr %retval, align 8, !dbg !1104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1104

if.end110:                                        ; preds = %if.end99
  %24 = load ptr, ptr %pgd, align 8, !dbg !1105
  %25 = load i64, ptr %new_p4d_page, align 8, !dbg !1105
  %call111 = call i64 @__phys_addr_nodebug(i64 noundef %25) #15, !dbg !1105
  %or = or i64 99, %call111, !dbg !1105
  %call112 = call i64 @native_make_pgd(i64 noundef %or) #15, !dbg !1105
  %coerce.dive113 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1105
  store i64 %call112, ptr %coerce.dive113, align 8, !dbg !1105
  %coerce.dive114 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1105
  %26 = load i64, ptr %coerce.dive114, align 8, !dbg !1105
  call void @native_set_pgd(ptr noundef %24, i64 %26) #15, !dbg !1105
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1106
  br label %cleanup, !dbg !1106

cleanup:                                          ; preds = %if.end110, %if.then109
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_p4d_page) #14, !dbg !1106
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup126 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end115, !dbg !1107

if.end115:                                        ; preds = %cleanup.cont, %if.end64
  br label %do.body116, !dbg !1108

do.body116:                                       ; preds = %if.end115
  %27 = load ptr, ptr %pgd, align 8, !dbg !1109
  %coerce.dive117 = getelementptr inbounds %struct.pgd_t, ptr %27, i32 0, i32 0, !dbg !1109
  %28 = load i64, ptr %coerce.dive117, align 8, !dbg !1109
  %call118 = call i32 @pgd_large(i64 %28) #15, !dbg !1109
  %cmp119 = icmp ne i32 %call118, 0, !dbg !1109
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !1112

if.then121:                                       ; preds = %do.body116
  call void @__compiletime_assert_287() #17, !dbg !1109, !srcloc !1113
  unreachable, !dbg !1109

if.end122:                                        ; preds = %do.body116
  br label %do.cond123, !dbg !1112

do.cond123:                                       ; preds = %if.end122
  br label %do.end124, !dbg !1112

do.end124:                                        ; preds = %do.cond123
  %29 = load ptr, ptr %pgd, align 8, !dbg !1114
  %30 = load i64, ptr %address.addr, align 8, !dbg !1115
  %call125 = call ptr @p4d_offset(ptr noundef %29, i64 noundef %30) #15, !dbg !1116
  store ptr %call125, ptr %retval, align 8, !dbg !1117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup126, !dbg !1117

cleanup126:                                       ; preds = %do.end124, %cleanup, %if.end55
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #14, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #14, !dbg !1118
  %31 = load ptr, ptr %retval, align 8, !dbg !1118
  ret ptr %31, !dbg !1118
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pgd_offset_pgd(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !1119 {
entry:
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !1124, metadata !DIExpression()), !dbg !1126
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1125, metadata !DIExpression()), !dbg !1127
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !1128
  %1 = load i64, ptr %address.addr, align 8, !dbg !1129
  %2 = load i32, ptr @pgdir_shift, align 4, !dbg !1129
  %sh_prom = zext i32 %2 to i64, !dbg !1129
  %shr = lshr i64 %1, %sh_prom, !dbg !1129
  %and = and i64 %shr, 511, !dbg !1129
  %add.ptr = getelementptr %struct.pgd_t, ptr %0, i64 %and, !dbg !1130
  ret ptr %add.ptr, !dbg !1131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !1132 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !1136, metadata !DIExpression()), !dbg !1138
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1137, metadata !DIExpression()), !dbg !1139
  br i1 false, label %cond.true, label %cond.false, !dbg !1140

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !1141

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !1140

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !1141

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !1141

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !1141
  br i1 %call, label %if.end, label %if.then, !dbg !1141

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !1141
  br i1 %call5, label %if.end, label %if.then, !dbg !1140

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !1143
  store ptr %0, ptr %retval, align 8, !dbg !1144
  br label %return, !dbg !1144

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !1145
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !1146
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !1146
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #15, !dbg !1146
  %3 = inttoptr i64 %call6 to ptr, !dbg !1147
  %4 = load i64, ptr %address.addr, align 8, !dbg !1148
  %call7 = call i64 @p4d_index(i64 noundef %4) #15, !dbg !1149
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !1150
  store ptr %add.ptr, ptr %retval, align 8, !dbg !1151
  br label %return, !dbg !1151

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !1152
  ret ptr %5, !dbg !1152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1153 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_none(i64 %pgd.coerce) #3 align 16 !dbg !1157 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1161, metadata !DIExpression()), !dbg !1162
  br i1 false, label %cond.true, label %cond.false, !dbg !1163

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !1164

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !1163

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !1164

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !1164

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !1164
  br i1 %call, label %if.end, label %if.then, !dbg !1164

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !1164
  br i1 %call5, label %if.end, label %if.then, !dbg !1163

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1167
  %0 = load i64, ptr %coerce.dive6, align 8, !dbg !1167
  %call7 = call i64 @native_pgd_val(i64 %0) #15, !dbg !1167
  %tobool = icmp ne i64 %call7, 0, !dbg !1168
  %lnot = xor i1 %tobool, true, !dbg !1168
  %lnot.ext = zext i1 %lnot to i32, !dbg !1168
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !1169
  br label %return, !dbg !1169

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !1170
  ret i32 %1, !dbg !1170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1171 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !1175 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !1180, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1181, metadata !DIExpression()), !dbg !1183
  br label %do.body, !dbg !1184

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1185

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1187

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1185

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !1189
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !1189
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !1189
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1189
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !1189
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #15, !dbg !1189
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !1189
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !1189
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !1189
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !1189
  br label %do.end5, !dbg !1189

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !1185

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #3 align 16 !dbg !1192 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1196, metadata !DIExpression()), !dbg !1197
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !1198
  %0 = load i64, ptr %val.addr, align 8, !dbg !1199
  %and = and i64 %0, -1, !dbg !1200
  store i64 %and, ptr %pgd, align 8, !dbg !1198
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !1201
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1201
  ret i64 %1, !dbg !1201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #5 align 16 !dbg !1202 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1207, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #14, !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %y, metadata !1208, metadata !DIExpression()), !dbg !1211
  %0 = load i64, ptr %x.addr, align 8, !dbg !1212
  %sub = sub i64 %0, -2147483648, !dbg !1213
  store i64 %sub, ptr %y, align 8, !dbg !1211
  %1 = load i64, ptr %y, align 8, !dbg !1214
  %2 = load i64, ptr %x.addr, align 8, !dbg !1215
  %3 = load i64, ptr %y, align 8, !dbg !1216
  %cmp = icmp ugt i64 %2, %3, !dbg !1217
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1218

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !1219
  br label %cond.end, !dbg !1218

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !1220
  %sub1 = sub i64 -2147483648, %5, !dbg !1221
  br label %cond.end, !dbg !1218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !1218
  %add = add i64 %1, %cond, !dbg !1222
  store i64 %add, ptr %x.addr, align 8, !dbg !1223
  %6 = load i64, ptr %x.addr, align 8, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #14, !dbg !1225
  ret i64 %6, !dbg !1226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_large(i64 %pgd.coerce) #3 align 16 !dbg !1227 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1229, metadata !DIExpression()), !dbg !1230
  ret i32 0, !dbg !1231
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1232 dso_local void @__compiletime_assert_287() #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #5 align 16 !dbg !1233 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1238, metadata !DIExpression()), !dbg !1241
  %0 = load i16, ptr %bit.addr, align 2, !dbg !1242
  %1 = load i16, ptr %bit.addr, align 2, !dbg !1243
  %conv = zext i16 %1 to i32, !dbg !1243
  %and = and i32 %conv, 7, !dbg !1244
  %shl = shl i32 1, %and, !dbg !1245
  %2 = load i16, ptr %bit.addr, align 2, !dbg !1246
  %conv1 = zext i16 %2 to i32, !dbg !1246
  %shr = ashr i32 %conv1, 3, !dbg !1247
  %idxprom = sext i32 %shr to i64, !dbg !1248
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !1248
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !1249, !srcloc !1250

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !1249

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !1239), !dbg !1251
  store i1 true, ptr %retval, align 1, !dbg !1252
  br label %return, !dbg !1252

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !1240), !dbg !1253
  store i1 false, ptr %retval, align 1, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !1255
  ret i1 %3, !dbg !1255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !1256 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1260, metadata !DIExpression()), !dbg !1261
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1262
  %0 = load i64, ptr %pgd1, align 8, !dbg !1262
  %and = and i64 %0, -1, !dbg !1263
  ret i64 %and, !dbg !1264
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !1265 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !1267, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1268, metadata !DIExpression()), !dbg !1270
  br i1 false, label %cond.true, label %cond.false2, !dbg !1271

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !1272

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !1272

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !1272
  br i1 %call, label %if.end, label %if.then, !dbg !1272

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #15, !dbg !1272
  br i1 %call3, label %if.end, label %if.then, !dbg !1271

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !1274
  br label %return, !dbg !1275

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !1276
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1277
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !1277
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #15, !dbg !1277
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !1277
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !1277
  br label %return, !dbg !1278

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !1279
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !1279
  ret i64 %2, !dbg !1279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 align 16 !dbg !1280 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1284, metadata !DIExpression()), !dbg !1285
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1286
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1286
  %call = call i64 @native_pgd_val(i64 %0) #15, !dbg !1286
  %and = and i64 %call, 4503599627366400, !dbg !1286
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !1286
  %add = add i64 %and, %1, !dbg !1286
  %2 = inttoptr i64 %add to ptr, !dbg !1286
  %3 = ptrtoint ptr %2 to i64, !dbg !1287
  ret i64 %3, !dbg !1288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !1289 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1291, metadata !DIExpression()), !dbg !1292
  %0 = load i64, ptr %address.addr, align 8, !dbg !1293
  %shr = lshr i64 %0, 39, !dbg !1294
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !1295
  %sub = sub i32 %1, 1, !dbg !1296
  %conv = zext i32 %sub to i64, !dbg !1297
  %and = and i64 %shr, %conv, !dbg !1298
  ret i64 %and, !dbg !1299
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !1300 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1302, metadata !DIExpression()), !dbg !1303
  %0 = load i64, ptr %word.addr, align 8, !dbg !1304
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #18, !dbg !1305, !srcloc !1306
  store i64 %1, ptr %word.addr, align 8, !dbg !1305
  %2 = load i64, ptr %word.addr, align 8, !dbg !1307
  ret i64 %2, !dbg !1308
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1309 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pti_user_pagetable_walk_pmd(i64 noundef %address) #6 align 16 !dbg !1310 {
entry:
  %retval = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %gfp = alloca i32, align 4
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new_pud_page = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %agg.tmp = alloca %struct.p4d_t, align 8
  %__ret_warn_on52 = alloca i32, align 4
  %__flags63 = alloca i32, align 4
  %tmp76 = alloca i64, align 8
  %new_pmd_page = alloca i64, align 8
  %__ret_warn_on90 = alloca i32, align 4
  %__flags108 = alloca i32, align 4
  %tmp121 = alloca i64, align 8
  %agg.tmp132 = alloca %struct.pud_t, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1314, metadata !DIExpression()), !dbg !1343
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #14, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !1315, metadata !DIExpression()), !dbg !1345
  store i32 3520, ptr %gfp, align 4, !dbg !1345
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #14, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1316, metadata !DIExpression()), !dbg !1347
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #14, !dbg !1348
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1317, metadata !DIExpression()), !dbg !1349
  %0 = load i64, ptr %address.addr, align 8, !dbg !1350
  %call = call ptr @pti_user_pagetable_walk_p4d(i64 noundef %0) #15, !dbg !1351
  store ptr %call, ptr %p4d, align 8, !dbg !1352
  %1 = load ptr, ptr %p4d, align 8, !dbg !1353
  %tobool = icmp ne ptr %1, null, !dbg !1353
  br i1 %tobool, label %if.end, label %if.then, !dbg !1355

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup143, !dbg !1356

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1357

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %p4d, align 8, !dbg !1358
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %2, i32 0, i32 0, !dbg !1358
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !1358
  %call1 = call i32 @p4d_large(i64 %3) #15, !dbg !1358
  %cmp = icmp ne i32 %call1, 0, !dbg !1358
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1361

if.then2:                                         ; preds = %do.body
  call void @__compiletime_assert_288() #17, !dbg !1358, !srcloc !1362
  unreachable, !dbg !1358

if.end3:                                          ; preds = %do.body
  br label %do.cond, !dbg !1361

do.cond:                                          ; preds = %if.end3
  br label %do.end, !dbg !1361

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %p4d, align 8, !dbg !1363
  %coerce.dive4 = getelementptr inbounds %struct.p4d_t, ptr %4, i32 0, i32 0, !dbg !1364
  %5 = load i64, ptr %coerce.dive4, align 8, !dbg !1364
  %call5 = call i32 @p4d_none(i64 %5) #15, !dbg !1364
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1364
  br i1 %tobool6, label %if.then7, label %if.end46, !dbg !1365

if.then7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pud_page) #14, !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %new_pud_page, metadata !1318, metadata !DIExpression()), !dbg !1367
  %6 = load i32, ptr %gfp, align 4, !dbg !1368
  %call8 = call i64 @__get_free_pages(i32 noundef %6, i32 noundef 0) #15, !dbg !1368
  store i64 %call8, ptr %new_pud_page, align 8, !dbg !1367
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1321, metadata !DIExpression()), !dbg !1369
  %7 = load i64, ptr %new_pud_page, align 8, !dbg !1369
  %tobool9 = icmp ne i64 %7, 0, !dbg !1369
  %lnot = xor i1 %tobool9, true, !dbg !1369
  %lnot10 = xor i1 %lnot, true, !dbg !1369
  %lnot11 = xor i1 %lnot10, true, !dbg !1369
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !1369
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1369
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1370
  %tobool12 = icmp ne i32 %8, 0, !dbg !1370
  %lnot13 = xor i1 %tobool12, true, !dbg !1370
  %lnot15 = xor i1 %lnot13, true, !dbg !1370
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !1370
  %conv = sext i32 %lnot.ext16 to i64, !dbg !1370
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1370
  %tobool17 = icmp ne i64 %expval, 0, !dbg !1370
  br i1 %tobool17, label %if.then18, label %if.end31, !dbg !1369

if.then18:                                        ; preds = %if.then7
  br label %do.body19, !dbg !1370

do.body19:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1324, metadata !DIExpression()), !dbg !1371
  store i32 2307, ptr %__flags, align 4, !dbg !1371
  br label %do.body20, !dbg !1371

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !1372

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1372

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !1371

do.body23:                                        ; preds = %do.end22
  %9 = load i32, ptr %__flags, align 4, !dbg !1374
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 212, i32 %9, i64 12) #14, !dbg !1374, !srcloc !1376
  br label %do.cond24, !dbg !1374

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !1374

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !1371

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !1377

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !1377

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1370
  br label %do.cond29, !dbg !1371

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !1371

do.end30:                                         ; preds = %do.cond29
  br label %if.end31, !dbg !1371

if.end31:                                         ; preds = %do.end30, %if.then7
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !1369
  %tobool32 = icmp ne i32 %10, 0, !dbg !1369
  %lnot33 = xor i1 %tobool32, true, !dbg !1369
  %lnot35 = xor i1 %lnot33, true, !dbg !1369
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !1369
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !1369
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !1369
  store i64 %expval38, ptr %tmp, align 8, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1379
  %11 = load i64, ptr %tmp, align 8, !dbg !1369
  %tobool39 = icmp ne i64 %11, 0, !dbg !1379
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !1380

if.then40:                                        ; preds = %if.end31
  store ptr null, ptr %retval, align 8, !dbg !1381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1381

if.end41:                                         ; preds = %if.end31
  %12 = load ptr, ptr %p4d, align 8, !dbg !1382
  %13 = load i64, ptr %new_pud_page, align 8, !dbg !1382
  %call42 = call i64 @__phys_addr_nodebug(i64 noundef %13) #15, !dbg !1382
  %or = or i64 99, %call42, !dbg !1382
  %call43 = call i64 @native_make_p4d(i64 noundef %or) #15, !dbg !1382
  %coerce.dive44 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1382
  store i64 %call43, ptr %coerce.dive44, align 8, !dbg !1382
  %coerce.dive45 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !1382
  %14 = load i64, ptr %coerce.dive45, align 8, !dbg !1382
  call void @native_set_p4d(ptr noundef %12, i64 %14) #15, !dbg !1382
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1383
  br label %cleanup, !dbg !1383

cleanup:                                          ; preds = %if.end41, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pud_page) #14, !dbg !1383
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup143 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end46, !dbg !1384

if.end46:                                         ; preds = %cleanup.cont, %do.end
  %15 = load ptr, ptr %p4d, align 8, !dbg !1385
  %16 = load i64, ptr %address.addr, align 8, !dbg !1386
  %call47 = call ptr @pud_offset(ptr noundef %15, i64 noundef %16) #15, !dbg !1387
  store ptr %call47, ptr %pud, align 8, !dbg !1388
  %17 = load ptr, ptr %pud, align 8, !dbg !1389
  %coerce.dive48 = getelementptr inbounds %struct.pud_t, ptr %17, i32 0, i32 0, !dbg !1390
  %18 = load i64, ptr %coerce.dive48, align 8, !dbg !1390
  %call49 = call i32 @pud_large(i64 %18) #15, !dbg !1390
  %tobool50 = icmp ne i32 %call49, 0, !dbg !1390
  br i1 %tobool50, label %if.then51, label %if.end84, !dbg !1391

if.then51:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on52) #14, !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on52, metadata !1327, metadata !DIExpression()), !dbg !1392
  store i32 1, ptr %__ret_warn_on52, align 4, !dbg !1392
  %19 = load i32, ptr %__ret_warn_on52, align 4, !dbg !1393
  %tobool53 = icmp ne i32 %19, 0, !dbg !1393
  %lnot54 = xor i1 %tobool53, true, !dbg !1393
  %lnot56 = xor i1 %lnot54, true, !dbg !1393
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !1393
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !1393
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0), !dbg !1393
  %tobool60 = icmp ne i64 %expval59, 0, !dbg !1393
  br i1 %tobool60, label %if.then61, label %if.end75, !dbg !1392

if.then61:                                        ; preds = %if.then51
  br label %do.body62, !dbg !1393

do.body62:                                        ; preds = %if.then61
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags63) #14, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %__flags63, metadata !1331, metadata !DIExpression()), !dbg !1394
  store i32 2305, ptr %__flags63, align 4, !dbg !1394
  br label %do.body64, !dbg !1394

do.body64:                                        ; preds = %do.body62
  br label %do.cond65, !dbg !1395

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !1395

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !1394

do.body67:                                        ; preds = %do.end66
  %20 = load i32, ptr %__flags63, align 4, !dbg !1397
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 221, i32 %20, i64 12) #14, !dbg !1397, !srcloc !1399
  br label %do.cond68, !dbg !1397

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !1397

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !1394

do.body70:                                        ; preds = %do.end69
  br label %do.cond71, !dbg !1400

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !1400

do.end72:                                         ; preds = %do.cond71
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags63) #14, !dbg !1393
  br label %do.cond73, !dbg !1394

do.cond73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !1394

do.end74:                                         ; preds = %do.cond73
  br label %if.end75, !dbg !1394

if.end75:                                         ; preds = %do.end74, %if.then51
  %21 = load i32, ptr %__ret_warn_on52, align 4, !dbg !1392
  %tobool77 = icmp ne i32 %21, 0, !dbg !1392
  %lnot78 = xor i1 %tobool77, true, !dbg !1392
  %lnot80 = xor i1 %lnot78, true, !dbg !1392
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !1392
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !1392
  %expval83 = call i64 @llvm.expect.i64(i64 %conv82, i64 0), !dbg !1392
  store i64 %expval83, ptr %tmp76, align 8, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on52) #14, !dbg !1402
  %22 = load i64, ptr %tmp76, align 8, !dbg !1392
  store ptr null, ptr %retval, align 8, !dbg !1403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup143, !dbg !1403

if.end84:                                         ; preds = %if.end46
  %23 = load ptr, ptr %pud, align 8, !dbg !1404
  %coerce.dive85 = getelementptr inbounds %struct.pud_t, ptr %23, i32 0, i32 0, !dbg !1405
  %24 = load i64, ptr %coerce.dive85, align 8, !dbg !1405
  %call86 = call i32 @pud_none(i64 %24) #15, !dbg !1405
  %tobool87 = icmp ne i32 %call86, 0, !dbg !1405
  br i1 %tobool87, label %if.then88, label %if.end141, !dbg !1406

if.then88:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pmd_page) #14, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %new_pmd_page, metadata !1334, metadata !DIExpression()), !dbg !1408
  %25 = load i32, ptr %gfp, align 4, !dbg !1409
  %call89 = call i64 @__get_free_pages(i32 noundef %25, i32 noundef 0) #15, !dbg !1409
  store i64 %call89, ptr %new_pmd_page, align 8, !dbg !1408
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on90) #14, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on90, metadata !1337, metadata !DIExpression()), !dbg !1410
  %26 = load i64, ptr %new_pmd_page, align 8, !dbg !1410
  %tobool91 = icmp ne i64 %26, 0, !dbg !1410
  %lnot92 = xor i1 %tobool91, true, !dbg !1410
  %lnot94 = xor i1 %lnot92, true, !dbg !1410
  %lnot96 = xor i1 %lnot94, true, !dbg !1410
  %lnot.ext97 = zext i1 %lnot96 to i32, !dbg !1410
  store i32 %lnot.ext97, ptr %__ret_warn_on90, align 4, !dbg !1410
  %27 = load i32, ptr %__ret_warn_on90, align 4, !dbg !1411
  %tobool98 = icmp ne i32 %27, 0, !dbg !1411
  %lnot99 = xor i1 %tobool98, true, !dbg !1411
  %lnot101 = xor i1 %lnot99, true, !dbg !1411
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !1411
  %conv103 = sext i32 %lnot.ext102 to i64, !dbg !1411
  %expval104 = call i64 @llvm.expect.i64(i64 %conv103, i64 0), !dbg !1411
  %tobool105 = icmp ne i64 %expval104, 0, !dbg !1411
  br i1 %tobool105, label %if.then106, label %if.end120, !dbg !1410

if.then106:                                       ; preds = %if.then88
  br label %do.body107, !dbg !1411

do.body107:                                       ; preds = %if.then106
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags108) #14, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %__flags108, metadata !1340, metadata !DIExpression()), !dbg !1412
  store i32 2307, ptr %__flags108, align 4, !dbg !1412
  br label %do.body109, !dbg !1412

do.body109:                                       ; preds = %do.body107
  br label %do.cond110, !dbg !1413

do.cond110:                                       ; preds = %do.body109
  br label %do.end111, !dbg !1413

do.end111:                                        ; preds = %do.cond110
  br label %do.body112, !dbg !1412

do.body112:                                       ; preds = %do.end111
  %28 = load i32, ptr %__flags108, align 4, !dbg !1415
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 226, i32 %28, i64 12) #14, !dbg !1415, !srcloc !1417
  br label %do.cond113, !dbg !1415

do.cond113:                                       ; preds = %do.body112
  br label %do.end114, !dbg !1415

do.end114:                                        ; preds = %do.cond113
  br label %do.body115, !dbg !1412

do.body115:                                       ; preds = %do.end114
  br label %do.cond116, !dbg !1418

do.cond116:                                       ; preds = %do.body115
  br label %do.end117, !dbg !1418

do.end117:                                        ; preds = %do.cond116
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags108) #14, !dbg !1411
  br label %do.cond118, !dbg !1412

do.cond118:                                       ; preds = %do.end117
  br label %do.end119, !dbg !1412

do.end119:                                        ; preds = %do.cond118
  br label %if.end120, !dbg !1412

if.end120:                                        ; preds = %do.end119, %if.then88
  %29 = load i32, ptr %__ret_warn_on90, align 4, !dbg !1410
  %tobool122 = icmp ne i32 %29, 0, !dbg !1410
  %lnot123 = xor i1 %tobool122, true, !dbg !1410
  %lnot125 = xor i1 %lnot123, true, !dbg !1410
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !1410
  %conv127 = sext i32 %lnot.ext126 to i64, !dbg !1410
  %expval128 = call i64 @llvm.expect.i64(i64 %conv127, i64 0), !dbg !1410
  store i64 %expval128, ptr %tmp121, align 8, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on90) #14, !dbg !1420
  %30 = load i64, ptr %tmp121, align 8, !dbg !1410
  %tobool129 = icmp ne i64 %30, 0, !dbg !1420
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !1421

if.then130:                                       ; preds = %if.end120
  store ptr null, ptr %retval, align 8, !dbg !1422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138, !dbg !1422

if.end131:                                        ; preds = %if.end120
  %31 = load ptr, ptr %pud, align 8, !dbg !1423
  %32 = load i64, ptr %new_pmd_page, align 8, !dbg !1423
  %call133 = call i64 @__phys_addr_nodebug(i64 noundef %32) #15, !dbg !1423
  %or134 = or i64 99, %call133, !dbg !1423
  %call135 = call i64 @native_make_pud(i64 noundef %or134) #15, !dbg !1423
  %coerce.dive136 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp132, i32 0, i32 0, !dbg !1423
  store i64 %call135, ptr %coerce.dive136, align 8, !dbg !1423
  %coerce.dive137 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp132, i32 0, i32 0, !dbg !1423
  %33 = load i64, ptr %coerce.dive137, align 8, !dbg !1423
  call void @native_set_pud(ptr noundef %31, i64 %33) #15, !dbg !1423
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1424
  br label %cleanup138, !dbg !1424

cleanup138:                                       ; preds = %if.end131, %if.then130
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pmd_page) #14, !dbg !1424
  %cleanup.dest139 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest139, label %cleanup143 [
    i32 0, label %cleanup.cont140
  ]

cleanup.cont140:                                  ; preds = %cleanup138
  br label %if.end141, !dbg !1425

if.end141:                                        ; preds = %cleanup.cont140, %if.end84
  %34 = load ptr, ptr %pud, align 8, !dbg !1426
  %35 = load i64, ptr %address.addr, align 8, !dbg !1427
  %call142 = call ptr @pmd_offset(ptr noundef %34, i64 noundef %35) #15, !dbg !1428
  store ptr %call142, ptr %retval, align 8, !dbg !1429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup143, !dbg !1429

cleanup143:                                       ; preds = %if.end141, %cleanup138, %if.end75, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #14, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #14, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #14, !dbg !1430
  %36 = load ptr, ptr %retval, align 8, !dbg !1430
  ret ptr %36, !dbg !1430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_large(i64 %pte.coerce) #3 align 16 !dbg !1431 {
entry:
  %pte = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1435, metadata !DIExpression()), !dbg !1436
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0, !dbg !1437
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1437
  %call = call i64 @pmd_flags(i64 %0) #15, !dbg !1437
  %and = and i64 %call, 128, !dbg !1438
  %conv = trunc i64 %and to i32, !dbg !1437
  ret i32 %conv, !dbg !1439
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #3 align 16 !dbg !1440 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1445, metadata !DIExpression()), !dbg !1447
  br label %do.body, !dbg !1448

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1449

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1451

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1449

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !1453
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !1453
  br label %do.end3, !dbg !1453

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1449

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #3 align 16 !dbg !1456 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1460, metadata !DIExpression()), !dbg !1461
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !1462
  %0 = load i64, ptr %val.addr, align 8, !dbg !1463
  store i64 %0, ptr %pmd, align 8, !dbg !1462
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !1464
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1464
  ret i64 %1, !dbg !1464
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_none(i64 %pmd.coerce) #3 align 16 !dbg !1465 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !1470
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1468, metadata !DIExpression()), !dbg !1471
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1472
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1472
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !1472
  store i64 %call, ptr %val, align 8, !dbg !1471
  %1 = load i64, ptr %val, align 8, !dbg !1473
  %and = and i64 %1, -97, !dbg !1474
  %cmp = icmp eq i64 %and, 0, !dbg !1475
  %conv = zext i1 %cmp to i32, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1476
  ret i32 %conv, !dbg !1477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !1478 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !1482, metadata !DIExpression()), !dbg !1484
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1483, metadata !DIExpression()), !dbg !1485
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !1486
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !1487
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1487
  %call = call i64 @pmd_page_vaddr(i64 %1) #15, !dbg !1487
  %2 = inttoptr i64 %call to ptr, !dbg !1488
  %3 = load i64, ptr %address.addr, align 8, !dbg !1489
  %call1 = call i64 @pte_index(i64 noundef %3) #15, !dbg !1490
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !1491
  ret ptr %add.ptr, !dbg !1492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_flags(i64 %pte.coerce) #3 align 16 !dbg !1493 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1497, metadata !DIExpression()), !dbg !1498
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !1499
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1499
  %call = call i64 @native_pte_val(i64 %0) #15, !dbg !1499
  %and = and i64 %call, -4503599627366401, !dbg !1500
  ret i64 %and, !dbg !1501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_large(i64 %p4d.coerce) #3 align 16 !dbg !1502 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1506, metadata !DIExpression()), !dbg !1507
  ret i32 0, !dbg !1508
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1509 dso_local void @__compiletime_assert_288() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_none(i64 %p4d.coerce) #3 align 16 !dbg !1510 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1512, metadata !DIExpression()), !dbg !1513
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1514
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1514
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !1514
  %and = and i64 %call, -97, !dbg !1515
  %cmp = icmp eq i64 %and, 0, !dbg !1516
  %conv = zext i1 %cmp to i32, !dbg !1516
  ret i32 %conv, !dbg !1517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #3 align 16 !dbg !1518 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !1522, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1523, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #14, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1524, metadata !DIExpression()), !dbg !1528
  br i1 false, label %cond.true, label %cond.false, !dbg !1529

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !1530

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !1529

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !1530

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !1530

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !1530
  br i1 %call, label %if.then, label %if.end, !dbg !1530

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !1530
  br i1 %call5, label %if.then, label %if.end, !dbg !1529

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !1532

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !1534

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !1536

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1536

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !1534

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !1538
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !1538
  br label %do.cond8, !dbg !1538

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1538

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !1534

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !1534

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1540

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !1541
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1542
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !1542
  %call13 = call i64 @native_p4d_val(i64 %1) #15, !dbg !1542
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #15, !dbg !1541
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !1541
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !1541
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !1541
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !1541
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #14, !dbg !1543
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !1544
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1543
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !1543
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #15, !dbg !1543
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !1543
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !1543
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !1543
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #14, !dbg !1543
  br label %do.body20, !dbg !1545

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !1546

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !1548

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1548

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !1546

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !1550
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #14, !dbg !1550
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !1550
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !1550
  %call27 = call i64 @native_pgd_val(i64 %5) #15, !dbg !1550
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #15, !dbg !1550
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !1550
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !1550
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !1550
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #14, !dbg !1550
  br label %do.cond30, !dbg !1550

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !1550

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !1546

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !1546

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1552
  br label %cleanup, !dbg !1552

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #14, !dbg !1552
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1552

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #3 align 16 !dbg !1553 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1557, metadata !DIExpression()), !dbg !1558
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !1559
  %0 = load i64, ptr %val.addr, align 8, !dbg !1560
  store i64 %0, ptr %p4d, align 8, !dbg !1559
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !1561
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1561
  ret i64 %1, !dbg !1561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #3 align 16 !dbg !1562 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !1566, metadata !DIExpression()), !dbg !1568
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1567, metadata !DIExpression()), !dbg !1569
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !1570
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !1571
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1571
  %call = call ptr @p4d_pgtable(i64 %1) #15, !dbg !1571
  %2 = load i64, ptr %address.addr, align 8, !dbg !1572
  %call1 = call i64 @pud_index(i64 noundef %2) #15, !dbg !1573
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !1574
  ret ptr %add.ptr, !dbg !1575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_large(i64 %pud.coerce) #3 align 16 !dbg !1576 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1580, metadata !DIExpression()), !dbg !1581
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1582
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1582
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !1582
  %and = and i64 %call, 129, !dbg !1583
  %cmp = icmp eq i64 %and, 129, !dbg !1584
  %conv = zext i1 %cmp to i32, !dbg !1584
  ret i32 %conv, !dbg !1585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_none(i64 %pud.coerce) #3 align 16 !dbg !1586 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1588, metadata !DIExpression()), !dbg !1589
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1590
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1590
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !1590
  %and = and i64 %call, -97, !dbg !1591
  %cmp = icmp eq i64 %and, 0, !dbg !1592
  %conv = zext i1 %cmp to i32, !dbg !1592
  ret i32 %conv, !dbg !1593
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #3 align 16 !dbg !1594 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1599, metadata !DIExpression()), !dbg !1601
  br label %do.body, !dbg !1602

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1603

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1605

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1603

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !1607
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !1607
  br label %do.end3, !dbg !1607

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1603

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1609
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #3 align 16 !dbg !1610 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1614, metadata !DIExpression()), !dbg !1615
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !1616
  %0 = load i64, ptr %val.addr, align 8, !dbg !1617
  store i64 %0, ptr %pud, align 8, !dbg !1616
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !1618
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1618
  ret i64 %1, !dbg !1618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 align 16 !dbg !1619 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !1623, metadata !DIExpression()), !dbg !1625
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1624, metadata !DIExpression()), !dbg !1626
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !1627
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !1628
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1628
  %call = call ptr @pud_pgtable(i64 %1) #15, !dbg !1628
  %2 = load i64, ptr %address.addr, align 8, !dbg !1629
  %call1 = call i64 @pmd_index(i64 noundef %2) #15, !dbg !1630
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !1631
  ret ptr %add.ptr, !dbg !1632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !1633 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1637, metadata !DIExpression()), !dbg !1638
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1639
  %0 = load i64, ptr %p4d1, align 8, !dbg !1639
  ret i64 %0, !dbg !1640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #3 align 16 !dbg !1641 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1645, metadata !DIExpression()), !dbg !1646
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1647
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1647
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !1647
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !1647
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1647
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #15, !dbg !1647
  %and = and i64 %call, %call3, !dbg !1647
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !1647
  %add = add i64 %and, %2, !dbg !1647
  %3 = inttoptr i64 %add to ptr, !dbg !1647
  ret ptr %3, !dbg !1648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !1649 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1651, metadata !DIExpression()), !dbg !1652
  %0 = load i64, ptr %address.addr, align 8, !dbg !1653
  %shr = lshr i64 %0, 30, !dbg !1654
  %and = and i64 %shr, 511, !dbg !1655
  ret i64 %and, !dbg !1656
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #3 align 16 !dbg !1657 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1659, metadata !DIExpression()), !dbg !1660
  ret i64 4503599627366400, !dbg !1661
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !1662 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1666, metadata !DIExpression()), !dbg !1667
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1668
  %0 = load i64, ptr %pud1, align 8, !dbg !1668
  ret i64 %0, !dbg !1669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 align 16 !dbg !1670 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1674, metadata !DIExpression()), !dbg !1675
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1676
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1676
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !1676
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1676
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1676
  %call3 = call i64 @pud_pfn_mask(i64 %1) #15, !dbg !1676
  %and = and i64 %call, %call3, !dbg !1676
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !1676
  %add = add i64 %and, %2, !dbg !1676
  %3 = inttoptr i64 %add to ptr, !dbg !1676
  ret ptr %3, !dbg !1677
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !1678 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1680, metadata !DIExpression()), !dbg !1681
  %0 = load i64, ptr %address.addr, align 8, !dbg !1682
  %shr = lshr i64 %0, 21, !dbg !1683
  %and = and i64 %shr, 511, !dbg !1684
  ret i64 %and, !dbg !1685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 align 16 !dbg !1686 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1688, metadata !DIExpression()), !dbg !1689
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !1690
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1690
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !1690
  %and = and i64 %call, 128, !dbg !1692
  %tobool = icmp ne i64 %and, 0, !dbg !1692
  br i1 %tobool, label %if.then, label %if.else, !dbg !1693

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !1694
  br label %return, !dbg !1694

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !1695
  br label %return, !dbg !1695

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !1696
  ret i64 %1, !dbg !1696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !1697 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1701, metadata !DIExpression()), !dbg !1702
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1703
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1703
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !1703
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1704
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1704
  %call3 = call i64 @pmd_flags_mask(i64 %1) #15, !dbg !1704
  %and = and i64 %call, %call3, !dbg !1705
  ret i64 %and, !dbg !1706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !1707 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1709, metadata !DIExpression()), !dbg !1710
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1711
  %0 = load i64, ptr %pmd1, align 8, !dbg !1711
  ret i64 %0, !dbg !1712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !1713 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1715, metadata !DIExpression()), !dbg !1716
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1717
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1717
  %call = call i64 @pmd_pfn_mask(i64 %0) #15, !dbg !1717
  %not = xor i64 %call, -1, !dbg !1718
  ret i64 %not, !dbg !1719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !1720 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1722, metadata !DIExpression()), !dbg !1723
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1724
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1724
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !1724
  %and = and i64 %call, 128, !dbg !1726
  %tobool = icmp ne i64 %and, 0, !dbg !1726
  br i1 %tobool, label %if.then, label %if.else, !dbg !1727

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !1728
  br label %return, !dbg !1728

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !1729
  br label %return, !dbg !1729

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !1730
  ret i64 %1, !dbg !1730
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 align 16 !dbg !1731 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1735, metadata !DIExpression()), !dbg !1736
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1737
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1737
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !1737
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !1737
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !1737
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #15, !dbg !1737
  %and = and i64 %call, %call3, !dbg !1737
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !1737
  %add = add i64 %and, %2, !dbg !1737
  %3 = inttoptr i64 %add to ptr, !dbg !1737
  %4 = ptrtoint ptr %3 to i64, !dbg !1738
  ret i64 %4, !dbg !1739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #3 align 16 !dbg !1740 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1742, metadata !DIExpression()), !dbg !1743
  %0 = load i64, ptr %address.addr, align 8, !dbg !1744
  %shr = lshr i64 %0, 12, !dbg !1745
  %and = and i64 %shr, 511, !dbg !1746
  ret i64 %and, !dbg !1747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #3 align 16 !dbg !1748 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1750, metadata !DIExpression()), !dbg !1751
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !1752
  %0 = load i64, ptr %pte1, align 8, !dbg !1752
  ret i64 %0, !dbg !1753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #3 align 16 !dbg !1754 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1759, metadata !DIExpression()), !dbg !1760
  %0 = load i64, ptr %val.addr, align 8, !dbg !1761
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #15, !dbg !1762
  %1 = zext i1 %call to i64, !dbg !1762
  %cond = select i1 %call, i64 -1, i64 0, !dbg !1762
  ret i64 %cond, !dbg !1763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !1764 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1768, metadata !DIExpression()), !dbg !1769
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1770
  %0 = load i64, ptr %val.addr, align 8, !dbg !1771
  store i64 %0, ptr %pte, align 8, !dbg !1770
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !1772
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !1772
  ret i64 %1, !dbg !1772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @check_pgprot(i64 %pgprot.coerce) #3 align 16 !dbg !1773 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %massaged_val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.lifetime.start.p0(i64 8, ptr %massaged_val) #14, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %massaged_val, metadata !1778, metadata !DIExpression()), !dbg !1781
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !1782
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !1782
  %call = call i64 @massage_pgprot(i64 %0) #15, !dbg !1782
  store i64 %call, ptr %massaged_val, align 8, !dbg !1781
  %1 = load i64, ptr %massaged_val, align 8, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 8, ptr %massaged_val) #14, !dbg !1784
  ret i64 %1, !dbg !1785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #3 align 16 !dbg !1786 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1790, metadata !DIExpression()), !dbg !1791
  %0 = load i64, ptr %val.addr, align 8, !dbg !1792
  %tobool = icmp ne i64 %0, 0, !dbg !1792
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1793

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !1794
  %and = and i64 %1, 1, !dbg !1795
  %tobool1 = icmp ne i64 %and, 0, !dbg !1796
  %lnot = xor i1 %tobool1, true, !dbg !1796
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !1797
  ret i1 %2, !dbg !1798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @massage_pgprot(i64 %pgprot.coerce) #3 align 16 !dbg !1799 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %protval = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0(i64 8, ptr %protval) #14, !dbg !1804
  call void @llvm.dbg.declare(metadata ptr %protval, metadata !1802, metadata !DIExpression()), !dbg !1805
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !1806
  %0 = load i64, ptr %pgprot1, align 8, !dbg !1806
  store i64 %0, ptr %protval, align 8, !dbg !1805
  %1 = load i64, ptr %protval, align 8, !dbg !1807
  %and = and i64 %1, 1, !dbg !1809
  %tobool = icmp ne i64 %and, 0, !dbg !1809
  br i1 %tobool, label %if.then, label %if.end, !dbg !1810

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @__supported_pte_mask, align 8, !dbg !1811
  %3 = load i64, ptr %protval, align 8, !dbg !1812
  %and2 = and i64 %3, %2, !dbg !1812
  store i64 %and2, ptr %protval, align 8, !dbg !1812
  br label %if.end, !dbg !1813

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %protval, align 8, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 8, ptr %protval) #14, !dbg !1815
  ret i64 %4, !dbg !1816
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1817 dso_local i32 @set_memory_nonglobal(i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pti_clone_pgtable(i64 noundef %start, i64 noundef %end, i32 noundef %level, i1 noundef zeroext %late_text) #6 align 16 !dbg !1821 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %late_text.addr = alloca i8, align 1
  %addr = alloca i64, align 8
  %pte = alloca ptr, align 8
  %target_pte = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %target_pmd = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on32 = alloca i32, align 4
  %__flags50 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  %__ret_warn_on79 = alloca i32, align 4
  %__flags95 = alloca i32, align 4
  %tmp108 = alloca i64, align 8
  %__ret_warn_on123 = alloca i32, align 4
  %__flags140 = alloca i32, align 4
  %tmp153 = alloca i64, align 8
  %__ret_warn_on173 = alloca i32, align 4
  %__flags191 = alloca i32, align 4
  %tmp204 = alloca i64, align 8
  %__ret_warn_on215 = alloca i32, align 4
  %__flags236 = alloca i32, align 4
  %tmp249 = alloca i64, align 8
  %tmp263 = alloca %struct.pmd_t, align 8
  %__ret_warn_on285 = alloca i32, align 4
  %__flags306 = alloca i32, align 4
  %tmp319 = alloca i64, align 8
  %__ret_warn_on332 = alloca i32, align 4
  %__flags350 = alloca i32, align 4
  %tmp363 = alloca i64, align 8
  %tmp379 = alloca %struct.pte_t, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1825, metadata !DIExpression()), !dbg !1894
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1826, metadata !DIExpression()), !dbg !1895
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1827, metadata !DIExpression()), !dbg !1896
  %frombool = zext i1 %late_text to i8
  store i8 %frombool, ptr %late_text.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %late_text.addr, metadata !1828, metadata !DIExpression()), !dbg !1897
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #14, !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1829, metadata !DIExpression()), !dbg !1899
  %0 = load i64, ptr %start.addr, align 8, !dbg !1900
  store i64 %0, ptr %addr, align 8, !dbg !1901
  br label %for.cond, !dbg !1902

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %entry
  %1 = load i64, ptr %addr, align 8, !dbg !1903
  %2 = load i64, ptr %end.addr, align 8, !dbg !1904
  %cmp = icmp ult i64 %1, %2, !dbg !1905
  br i1 %cmp, label %for.body, label %for.end, !dbg !1906

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !1830, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_pte) #14, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %target_pte, metadata !1834, metadata !DIExpression()), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1835, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_pmd) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %target_pmd, metadata !1836, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #14, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1837, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #14, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !1838, metadata !DIExpression()), !dbg !1916
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #14, !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !1839, metadata !DIExpression()), !dbg !1918
  %3 = load i64, ptr %addr, align 8, !dbg !1919
  %4 = load i64, ptr %start.addr, align 8, !dbg !1921
  %cmp1 = icmp ult i64 %3, %4, !dbg !1922
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1923

if.then:                                          ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1924

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @init_mm, i32 0, i32 8), align 64, !dbg !1925
  %6 = load i64, ptr %addr, align 8, !dbg !1925
  %call = call ptr @pgd_offset_pgd(ptr noundef %5, i64 noundef %6) #15, !dbg !1925
  store ptr %call, ptr %pgd, align 8, !dbg !1926
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1840, metadata !DIExpression()), !dbg !1927
  %7 = load ptr, ptr %pgd, align 8, !dbg !1927
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %7, i32 0, i32 0, !dbg !1927
  %8 = load i64, ptr %coerce.dive, align 8, !dbg !1927
  %call2 = call i32 @pgd_none(i64 %8) #15, !dbg !1927
  %tobool = icmp ne i32 %call2, 0, !dbg !1927
  %lnot = xor i1 %tobool, true, !dbg !1927
  %lnot3 = xor i1 %lnot, true, !dbg !1927
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1927
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1927
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !1928
  %tobool4 = icmp ne i32 %9, 0, !dbg !1928
  %lnot5 = xor i1 %tobool4, true, !dbg !1928
  %lnot7 = xor i1 %lnot5, true, !dbg !1928
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1928
  %conv = sext i32 %lnot.ext8 to i64, !dbg !1928
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1928
  %tobool9 = icmp ne i64 %expval, 0, !dbg !1928
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !1927

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1843, metadata !DIExpression()), !dbg !1929
  store i32 2305, ptr %__flags, align 4, !dbg !1929
  br label %do.body11, !dbg !1929

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !1930

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !1930

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !1929

do.body12:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !1932
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 329, i32 %10, i64 12) #14, !dbg !1932, !srcloc !1934
  br label %do.cond13, !dbg !1932

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1932

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !1929

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !1935

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1935

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1928
  br label %do.cond18, !dbg !1929

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !1929

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !1929

if.end20:                                         ; preds = %do.end19, %if.end
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !1927
  %tobool21 = icmp ne i32 %11, 0, !dbg !1927
  %lnot22 = xor i1 %tobool21, true, !dbg !1927
  %lnot24 = xor i1 %lnot22, true, !dbg !1927
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !1927
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !1927
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !1927
  store i64 %expval27, ptr %tmp, align 8, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1937
  %12 = load i64, ptr %tmp, align 8, !dbg !1927
  %tobool28 = icmp ne i64 %12, 0, !dbg !1937
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1938

if.then29:                                        ; preds = %if.end20
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1939

if.end30:                                         ; preds = %if.end20
  %13 = load ptr, ptr %pgd, align 8, !dbg !1940
  %14 = load i64, ptr %addr, align 8, !dbg !1941
  %call31 = call ptr @p4d_offset(ptr noundef %13, i64 noundef %14) #15, !dbg !1942
  store ptr %call31, ptr %p4d, align 8, !dbg !1943
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on32) #14, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on32, metadata !1846, metadata !DIExpression()), !dbg !1944
  %15 = load ptr, ptr %p4d, align 8, !dbg !1944
  %coerce.dive33 = getelementptr inbounds %struct.p4d_t, ptr %15, i32 0, i32 0, !dbg !1944
  %16 = load i64, ptr %coerce.dive33, align 8, !dbg !1944
  %call34 = call i32 @p4d_none(i64 %16) #15, !dbg !1944
  %tobool35 = icmp ne i32 %call34, 0, !dbg !1944
  %lnot36 = xor i1 %tobool35, true, !dbg !1944
  %lnot38 = xor i1 %lnot36, true, !dbg !1944
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !1944
  store i32 %lnot.ext39, ptr %__ret_warn_on32, align 4, !dbg !1944
  %17 = load i32, ptr %__ret_warn_on32, align 4, !dbg !1945
  %tobool40 = icmp ne i32 %17, 0, !dbg !1945
  %lnot41 = xor i1 %tobool40, true, !dbg !1945
  %lnot43 = xor i1 %lnot41, true, !dbg !1945
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !1945
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !1945
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !1945
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !1945
  br i1 %tobool47, label %if.then48, label %if.end62, !dbg !1944

if.then48:                                        ; preds = %if.end30
  br label %do.body49, !dbg !1945

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags50) #14, !dbg !1946
  call void @llvm.dbg.declare(metadata ptr %__flags50, metadata !1849, metadata !DIExpression()), !dbg !1946
  store i32 2305, ptr %__flags50, align 4, !dbg !1946
  br label %do.body51, !dbg !1946

do.body51:                                        ; preds = %do.body49
  br label %do.cond52, !dbg !1947

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !1947

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !1946

do.body54:                                        ; preds = %do.end53
  %18 = load i32, ptr %__flags50, align 4, !dbg !1949
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 332, i32 %18, i64 12) #14, !dbg !1949, !srcloc !1951
  br label %do.cond55, !dbg !1949

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1949

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !1946

do.body57:                                        ; preds = %do.end56
  br label %do.cond58, !dbg !1952

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !1952

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags50) #14, !dbg !1945
  br label %do.cond60, !dbg !1946

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !1946

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !1946

if.end62:                                         ; preds = %do.end61, %if.end30
  %19 = load i32, ptr %__ret_warn_on32, align 4, !dbg !1944
  %tobool64 = icmp ne i32 %19, 0, !dbg !1944
  %lnot65 = xor i1 %tobool64, true, !dbg !1944
  %lnot67 = xor i1 %lnot65, true, !dbg !1944
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !1944
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !1944
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !1944
  store i64 %expval70, ptr %tmp63, align 8, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on32) #14, !dbg !1954
  %20 = load i64, ptr %tmp63, align 8, !dbg !1944
  %tobool71 = icmp ne i64 %20, 0, !dbg !1954
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !1955

if.then72:                                        ; preds = %if.end62
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1956

if.end73:                                         ; preds = %if.end62
  %21 = load ptr, ptr %p4d, align 8, !dbg !1957
  %22 = load i64, ptr %addr, align 8, !dbg !1958
  %call74 = call ptr @pud_offset(ptr noundef %21, i64 noundef %22) #15, !dbg !1959
  store ptr %call74, ptr %pud, align 8, !dbg !1960
  %23 = load ptr, ptr %pud, align 8, !dbg !1961
  %coerce.dive75 = getelementptr inbounds %struct.pud_t, ptr %23, i32 0, i32 0, !dbg !1962
  %24 = load i64, ptr %coerce.dive75, align 8, !dbg !1962
  %call76 = call i32 @pud_none(i64 %24) #15, !dbg !1962
  %tobool77 = icmp ne i32 %call76, 0, !dbg !1962
  br i1 %tobool77, label %if.then78, label %if.end117, !dbg !1963

if.then78:                                        ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on79) #14, !dbg !1964
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on79, metadata !1852, metadata !DIExpression()), !dbg !1964
  %25 = load i64, ptr %addr, align 8, !dbg !1964
  %and = and i64 %25, 1073741823, !dbg !1964
  %tobool80 = icmp ne i64 %and, 0, !dbg !1964
  %lnot81 = xor i1 %tobool80, true, !dbg !1964
  %lnot83 = xor i1 %lnot81, true, !dbg !1964
  %lnot.ext84 = zext i1 %lnot83 to i32, !dbg !1964
  store i32 %lnot.ext84, ptr %__ret_warn_on79, align 4, !dbg !1964
  %26 = load i32, ptr %__ret_warn_on79, align 4, !dbg !1965
  %tobool85 = icmp ne i32 %26, 0, !dbg !1965
  %lnot86 = xor i1 %tobool85, true, !dbg !1965
  %lnot88 = xor i1 %lnot86, true, !dbg !1965
  %lnot.ext89 = zext i1 %lnot88 to i32, !dbg !1965
  %conv90 = sext i32 %lnot.ext89 to i64, !dbg !1965
  %expval91 = call i64 @llvm.expect.i64(i64 %conv90, i64 0), !dbg !1965
  %tobool92 = icmp ne i64 %expval91, 0, !dbg !1965
  br i1 %tobool92, label %if.then93, label %if.end107, !dbg !1964

if.then93:                                        ; preds = %if.then78
  br label %do.body94, !dbg !1965

do.body94:                                        ; preds = %if.then93
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags95) #14, !dbg !1966
  call void @llvm.dbg.declare(metadata ptr %__flags95, metadata !1856, metadata !DIExpression()), !dbg !1966
  store i32 2307, ptr %__flags95, align 4, !dbg !1966
  br label %do.body96, !dbg !1966

do.body96:                                        ; preds = %do.body94
  br label %do.cond97, !dbg !1967

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !1967

do.end98:                                         ; preds = %do.cond97
  br label %do.body99, !dbg !1966

do.body99:                                        ; preds = %do.end98
  %27 = load i32, ptr %__flags95, align 4, !dbg !1969
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 337, i32 %27, i64 12) #14, !dbg !1969, !srcloc !1971
  br label %do.cond100, !dbg !1969

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !1969

do.end101:                                        ; preds = %do.cond100
  br label %do.body102, !dbg !1966

do.body102:                                       ; preds = %do.end101
  br label %do.cond103, !dbg !1972

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !1972

do.end104:                                        ; preds = %do.cond103
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags95) #14, !dbg !1965
  br label %do.cond105, !dbg !1966

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !1966

do.end106:                                        ; preds = %do.cond105
  br label %if.end107, !dbg !1966

if.end107:                                        ; preds = %do.end106, %if.then78
  %28 = load i32, ptr %__ret_warn_on79, align 4, !dbg !1964
  %tobool109 = icmp ne i32 %28, 0, !dbg !1964
  %lnot110 = xor i1 %tobool109, true, !dbg !1964
  %lnot112 = xor i1 %lnot110, true, !dbg !1964
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !1964
  %conv114 = sext i32 %lnot.ext113 to i64, !dbg !1964
  %expval115 = call i64 @llvm.expect.i64(i64 %conv114, i64 0), !dbg !1964
  store i64 %expval115, ptr %tmp108, align 8, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on79) #14, !dbg !1974
  %29 = load i64, ptr %tmp108, align 8, !dbg !1964
  %30 = load i64, ptr %addr, align 8, !dbg !1975
  %add = add i64 %30, 1, !dbg !1975
  %sub = sub i64 %add, 1, !dbg !1975
  %or = or i64 %sub, 1073741823, !dbg !1975
  %add116 = add i64 %or, 1, !dbg !1975
  store i64 %add116, ptr %addr, align 8, !dbg !1976
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1977, !llvm.loop !1978

if.end117:                                        ; preds = %if.end73
  %31 = load ptr, ptr %pud, align 8, !dbg !1980
  %32 = load i64, ptr %addr, align 8, !dbg !1981
  %call118 = call ptr @pmd_offset(ptr noundef %31, i64 noundef %32) #15, !dbg !1982
  store ptr %call118, ptr %pmd, align 8, !dbg !1983
  %33 = load ptr, ptr %pmd, align 8, !dbg !1984
  %coerce.dive119 = getelementptr inbounds %struct.pmd_t, ptr %33, i32 0, i32 0, !dbg !1985
  %34 = load i64, ptr %coerce.dive119, align 8, !dbg !1985
  %call120 = call i32 @pmd_none(i64 %34) #15, !dbg !1985
  %tobool121 = icmp ne i32 %call120, 0, !dbg !1985
  br i1 %tobool121, label %if.then122, label %if.end165, !dbg !1986

if.then122:                                       ; preds = %if.end117
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on123) #14, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on123, metadata !1859, metadata !DIExpression()), !dbg !1987
  %35 = load i64, ptr %addr, align 8, !dbg !1987
  %and124 = and i64 %35, 2097151, !dbg !1987
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1987
  %lnot126 = xor i1 %tobool125, true, !dbg !1987
  %lnot128 = xor i1 %lnot126, true, !dbg !1987
  %lnot.ext129 = zext i1 %lnot128 to i32, !dbg !1987
  store i32 %lnot.ext129, ptr %__ret_warn_on123, align 4, !dbg !1987
  %36 = load i32, ptr %__ret_warn_on123, align 4, !dbg !1988
  %tobool130 = icmp ne i32 %36, 0, !dbg !1988
  %lnot131 = xor i1 %tobool130, true, !dbg !1988
  %lnot133 = xor i1 %lnot131, true, !dbg !1988
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !1988
  %conv135 = sext i32 %lnot.ext134 to i64, !dbg !1988
  %expval136 = call i64 @llvm.expect.i64(i64 %conv135, i64 0), !dbg !1988
  %tobool137 = icmp ne i64 %expval136, 0, !dbg !1988
  br i1 %tobool137, label %if.then138, label %if.end152, !dbg !1987

if.then138:                                       ; preds = %if.then122
  br label %do.body139, !dbg !1988

do.body139:                                       ; preds = %if.then138
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags140) #14, !dbg !1989
  call void @llvm.dbg.declare(metadata ptr %__flags140, metadata !1863, metadata !DIExpression()), !dbg !1989
  store i32 2307, ptr %__flags140, align 4, !dbg !1989
  br label %do.body141, !dbg !1989

do.body141:                                       ; preds = %do.body139
  br label %do.cond142, !dbg !1990

do.cond142:                                       ; preds = %do.body141
  br label %do.end143, !dbg !1990

do.end143:                                        ; preds = %do.cond142
  br label %do.body144, !dbg !1989

do.body144:                                       ; preds = %do.end143
  %37 = load i32, ptr %__flags140, align 4, !dbg !1992
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 344, i32 %37, i64 12) #14, !dbg !1992, !srcloc !1994
  br label %do.cond145, !dbg !1992

do.cond145:                                       ; preds = %do.body144
  br label %do.end146, !dbg !1992

do.end146:                                        ; preds = %do.cond145
  br label %do.body147, !dbg !1989

do.body147:                                       ; preds = %do.end146
  br label %do.cond148, !dbg !1995

do.cond148:                                       ; preds = %do.body147
  br label %do.end149, !dbg !1995

do.end149:                                        ; preds = %do.cond148
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags140) #14, !dbg !1988
  br label %do.cond150, !dbg !1989

do.cond150:                                       ; preds = %do.end149
  br label %do.end151, !dbg !1989

do.end151:                                        ; preds = %do.cond150
  br label %if.end152, !dbg !1989

if.end152:                                        ; preds = %do.end151, %if.then122
  %38 = load i32, ptr %__ret_warn_on123, align 4, !dbg !1987
  %tobool154 = icmp ne i32 %38, 0, !dbg !1987
  %lnot155 = xor i1 %tobool154, true, !dbg !1987
  %lnot157 = xor i1 %lnot155, true, !dbg !1987
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !1987
  %conv159 = sext i32 %lnot.ext158 to i64, !dbg !1987
  %expval160 = call i64 @llvm.expect.i64(i64 %conv159, i64 0), !dbg !1987
  store i64 %expval160, ptr %tmp153, align 8, !dbg !1988
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on123) #14, !dbg !1997
  %39 = load i64, ptr %tmp153, align 8, !dbg !1987
  %40 = load i64, ptr %addr, align 8, !dbg !1998
  %add161 = add i64 %40, 1, !dbg !1998
  %sub162 = sub i64 %add161, 1, !dbg !1998
  %or163 = or i64 %sub162, 2097151, !dbg !1998
  %add164 = add i64 %or163, 1, !dbg !1998
  store i64 %add164, ptr %addr, align 8, !dbg !1999
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2000, !llvm.loop !1978

if.end165:                                        ; preds = %if.end117
  %41 = load ptr, ptr %pmd, align 8, !dbg !2001
  %coerce.dive166 = getelementptr inbounds %struct.pmd_t, ptr %41, i32 0, i32 0, !dbg !2002
  %42 = load i64, ptr %coerce.dive166, align 8, !dbg !2002
  %call167 = call i32 @pmd_large(i64 %42) #15, !dbg !2002
  %tobool168 = icmp ne i32 %call167, 0, !dbg !2002
  br i1 %tobool168, label %if.then171, label %lor.lhs.false, !dbg !2003

lor.lhs.false:                                    ; preds = %if.end165
  %43 = load i32, ptr %level.addr, align 4, !dbg !2004
  %cmp169 = icmp eq i32 %43, 0, !dbg !2005
  br i1 %cmp169, label %if.then171, label %if.else, !dbg !2006

if.then171:                                       ; preds = %lor.lhs.false, %if.end165
  %44 = load i64, ptr %addr, align 8, !dbg !2007
  %call172 = call ptr @pti_user_pagetable_walk_pmd(i64 noundef %44) #15, !dbg !2008
  store ptr %call172, ptr %target_pmd, align 8, !dbg !2009
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on173) #14, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on173, metadata !1866, metadata !DIExpression()), !dbg !2010
  %45 = load ptr, ptr %target_pmd, align 8, !dbg !2010
  %tobool174 = icmp ne ptr %45, null, !dbg !2010
  %lnot175 = xor i1 %tobool174, true, !dbg !2010
  %lnot177 = xor i1 %lnot175, true, !dbg !2010
  %lnot179 = xor i1 %lnot177, true, !dbg !2010
  %lnot.ext180 = zext i1 %lnot179 to i32, !dbg !2010
  store i32 %lnot.ext180, ptr %__ret_warn_on173, align 4, !dbg !2010
  %46 = load i32, ptr %__ret_warn_on173, align 4, !dbg !2011
  %tobool181 = icmp ne i32 %46, 0, !dbg !2011
  %lnot182 = xor i1 %tobool181, true, !dbg !2011
  %lnot184 = xor i1 %lnot182, true, !dbg !2011
  %lnot.ext185 = zext i1 %lnot184 to i32, !dbg !2011
  %conv186 = sext i32 %lnot.ext185 to i64, !dbg !2011
  %expval187 = call i64 @llvm.expect.i64(i64 %conv186, i64 0), !dbg !2011
  %tobool188 = icmp ne i64 %expval187, 0, !dbg !2011
  br i1 %tobool188, label %if.then189, label %if.end203, !dbg !2010

if.then189:                                       ; preds = %if.then171
  br label %do.body190, !dbg !2011

do.body190:                                       ; preds = %if.then189
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags191) #14, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %__flags191, metadata !1871, metadata !DIExpression()), !dbg !2012
  store i32 2305, ptr %__flags191, align 4, !dbg !2012
  br label %do.body192, !dbg !2012

do.body192:                                       ; preds = %do.body190
  br label %do.cond193, !dbg !2013

do.cond193:                                       ; preds = %do.body192
  br label %do.end194, !dbg !2013

do.end194:                                        ; preds = %do.cond193
  br label %do.body195, !dbg !2012

do.body195:                                       ; preds = %do.end194
  %47 = load i32, ptr %__flags191, align 4, !dbg !2015
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 351, i32 %47, i64 12) #14, !dbg !2015, !srcloc !2017
  br label %do.cond196, !dbg !2015

do.cond196:                                       ; preds = %do.body195
  br label %do.end197, !dbg !2015

do.end197:                                        ; preds = %do.cond196
  br label %do.body198, !dbg !2012

do.body198:                                       ; preds = %do.end197
  br label %do.cond199, !dbg !2018

do.cond199:                                       ; preds = %do.body198
  br label %do.end200, !dbg !2018

do.end200:                                        ; preds = %do.cond199
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags191) #14, !dbg !2011
  br label %do.cond201, !dbg !2012

do.cond201:                                       ; preds = %do.end200
  br label %do.end202, !dbg !2012

do.end202:                                        ; preds = %do.cond201
  br label %if.end203, !dbg !2012

if.end203:                                        ; preds = %do.end202, %if.then171
  %48 = load i32, ptr %__ret_warn_on173, align 4, !dbg !2010
  %tobool205 = icmp ne i32 %48, 0, !dbg !2010
  %lnot206 = xor i1 %tobool205, true, !dbg !2010
  %lnot208 = xor i1 %lnot206, true, !dbg !2010
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !2010
  %conv210 = sext i32 %lnot.ext209 to i64, !dbg !2010
  %expval211 = call i64 @llvm.expect.i64(i64 %conv210, i64 0), !dbg !2010
  store i64 %expval211, ptr %tmp204, align 8, !dbg !2011
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on173) #14, !dbg !2020
  %49 = load i64, ptr %tmp204, align 8, !dbg !2010
  %tobool212 = icmp ne i64 %49, 0, !dbg !2020
  br i1 %tobool212, label %if.then213, label %if.end214, !dbg !2021

if.then213:                                       ; preds = %if.end203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2022

if.end214:                                        ; preds = %if.end203
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on215) #14, !dbg !2023
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on215, metadata !1874, metadata !DIExpression()), !dbg !2023
  %50 = load ptr, ptr %pmd, align 8, !dbg !2023
  %coerce.dive216 = getelementptr inbounds %struct.pmd_t, ptr %50, i32 0, i32 0, !dbg !2023
  %51 = load i64, ptr %coerce.dive216, align 8, !dbg !2023
  %call217 = call i64 @pmd_flags(i64 %51) #15, !dbg !2023
  %and218 = and i64 %call217, 1, !dbg !2023
  %tobool219 = icmp ne i64 %and218, 0, !dbg !2023
  %lnot220 = xor i1 %tobool219, true, !dbg !2023
  %lnot222 = xor i1 %lnot220, true, !dbg !2023
  %lnot224 = xor i1 %lnot222, true, !dbg !2023
  %lnot.ext225 = zext i1 %lnot224 to i32, !dbg !2023
  store i32 %lnot.ext225, ptr %__ret_warn_on215, align 4, !dbg !2023
  %52 = load i32, ptr %__ret_warn_on215, align 4, !dbg !2024
  %tobool226 = icmp ne i32 %52, 0, !dbg !2024
  %lnot227 = xor i1 %tobool226, true, !dbg !2024
  %lnot229 = xor i1 %lnot227, true, !dbg !2024
  %lnot.ext230 = zext i1 %lnot229 to i32, !dbg !2024
  %conv231 = sext i32 %lnot.ext230 to i64, !dbg !2024
  %expval232 = call i64 @llvm.expect.i64(i64 %conv231, i64 0), !dbg !2024
  %tobool233 = icmp ne i64 %expval232, 0, !dbg !2024
  br i1 %tobool233, label %if.then234, label %if.end248, !dbg !2023

if.then234:                                       ; preds = %if.end214
  br label %do.body235, !dbg !2024

do.body235:                                       ; preds = %if.then234
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags236) #14, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %__flags236, metadata !1877, metadata !DIExpression()), !dbg !2025
  store i32 2305, ptr %__flags236, align 4, !dbg !2025
  br label %do.body237, !dbg !2025

do.body237:                                       ; preds = %do.body235
  br label %do.cond238, !dbg !2026

do.cond238:                                       ; preds = %do.body237
  br label %do.end239, !dbg !2026

do.end239:                                        ; preds = %do.cond238
  br label %do.body240, !dbg !2025

do.body240:                                       ; preds = %do.end239
  %53 = load i32, ptr %__flags236, align 4, !dbg !2028
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 360, i32 %53, i64 12) #14, !dbg !2028, !srcloc !2030
  br label %do.cond241, !dbg !2028

do.cond241:                                       ; preds = %do.body240
  br label %do.end242, !dbg !2028

do.end242:                                        ; preds = %do.cond241
  br label %do.body243, !dbg !2025

do.body243:                                       ; preds = %do.end242
  br label %do.cond244, !dbg !2031

do.cond244:                                       ; preds = %do.body243
  br label %do.end245, !dbg !2031

do.end245:                                        ; preds = %do.cond244
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags236) #14, !dbg !2024
  br label %do.cond246, !dbg !2025

do.cond246:                                       ; preds = %do.end245
  br label %do.end247, !dbg !2025

do.end247:                                        ; preds = %do.cond246
  br label %if.end248, !dbg !2025

if.end248:                                        ; preds = %do.end247, %if.end214
  %54 = load i32, ptr %__ret_warn_on215, align 4, !dbg !2023
  %tobool250 = icmp ne i32 %54, 0, !dbg !2023
  %lnot251 = xor i1 %tobool250, true, !dbg !2023
  %lnot253 = xor i1 %lnot251, true, !dbg !2023
  %lnot.ext254 = zext i1 %lnot253 to i32, !dbg !2023
  %conv255 = sext i32 %lnot.ext254 to i64, !dbg !2023
  %expval256 = call i64 @llvm.expect.i64(i64 %conv255, i64 0), !dbg !2023
  store i64 %expval256, ptr %tmp249, align 8, !dbg !2024
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on215) #14, !dbg !2033
  %55 = load i64, ptr %tmp249, align 8, !dbg !2023
  %tobool257 = icmp ne i64 %55, 0, !dbg !2033
  br i1 %tobool257, label %if.then258, label %if.end259, !dbg !2034

if.then258:                                       ; preds = %if.end248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2035

if.end259:                                        ; preds = %if.end248
  br i1 false, label %cond.true, label %cond.false, !dbg !2036

cond.true:                                        ; preds = %if.end259
  br i1 true, label %if.then262, label %if.end267, !dbg !2037

cond.false:                                       ; preds = %if.end259
  %call260 = call zeroext i1 @arch_test_bit(i64 noundef 13, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2037
  br i1 %call260, label %if.then262, label %if.end267, !dbg !2036

if.then262:                                       ; preds = %cond.false, %cond.true
  %56 = load ptr, ptr %pmd, align 8, !dbg !2039
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp263) #14, !dbg !2040
  %57 = load ptr, ptr %pmd, align 8, !dbg !2041
  %coerce.dive264 = getelementptr inbounds %struct.pmd_t, ptr %57, i32 0, i32 0, !dbg !2040
  %58 = load i64, ptr %coerce.dive264, align 8, !dbg !2040
  %call265 = call i64 @pmd_set_flags(i64 %58, i64 noundef 256) #15, !dbg !2040
  %coerce.dive266 = getelementptr inbounds %struct.pmd_t, ptr %tmp263, i32 0, i32 0, !dbg !2040
  store i64 %call265, ptr %coerce.dive266, align 8, !dbg !2040
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %56, ptr align 8 %tmp263, i64 8, i1 false), !dbg !2040
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp263) #14, !dbg !2040
  br label %if.end267, !dbg !2042

if.end267:                                        ; preds = %if.then262, %cond.false, %cond.true
  %59 = load ptr, ptr %target_pmd, align 8, !dbg !2043
  %60 = load ptr, ptr %pmd, align 8, !dbg !2044
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %59, ptr align 8 %60, i64 8, i1 false), !dbg !2045
  %61 = load i64, ptr %addr, align 8, !dbg !2046
  %add268 = add i64 %61, 1, !dbg !2046
  %sub269 = sub i64 %add268, 1, !dbg !2046
  %or270 = or i64 %sub269, 2097151, !dbg !2046
  %add271 = add i64 %or270, 1, !dbg !2046
  store i64 %add271, ptr %addr, align 8, !dbg !2047
  br label %if.end399, !dbg !2048

if.else:                                          ; preds = %lor.lhs.false
  %62 = load i32, ptr %level.addr, align 4, !dbg !2049
  %cmp272 = icmp eq i32 %62, 1, !dbg !2050
  br i1 %cmp272, label %if.then274, label %if.else388, !dbg !2051

if.then274:                                       ; preds = %if.else
  %63 = load ptr, ptr %pmd, align 8, !dbg !2052
  %64 = load i64, ptr %addr, align 8, !dbg !2053
  %call275 = call ptr @pte_offset_kernel(ptr noundef %63, i64 noundef %64) #15, !dbg !2054
  store ptr %call275, ptr %pte, align 8, !dbg !2055
  %65 = load ptr, ptr %pte, align 8, !dbg !2056
  %coerce.dive276 = getelementptr inbounds %struct.pte_t, ptr %65, i32 0, i32 0, !dbg !2058
  %66 = load i64, ptr %coerce.dive276, align 8, !dbg !2058
  %call277 = call i32 @pte_none(i64 %66) #15, !dbg !2058
  %tobool278 = icmp ne i32 %call277, 0, !dbg !2058
  br i1 %tobool278, label %if.then279, label %if.end284, !dbg !2059

if.then279:                                       ; preds = %if.then274
  %67 = load i64, ptr %addr, align 8, !dbg !2060
  %add280 = add i64 %67, 1, !dbg !2060
  %sub281 = sub i64 %add280, 1, !dbg !2060
  %or282 = or i64 %sub281, 4095, !dbg !2060
  %add283 = add i64 %or282, 1, !dbg !2060
  store i64 %add283, ptr %addr, align 8, !dbg !2062
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2063, !llvm.loop !1978

if.end284:                                        ; preds = %if.then274
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on285) #14, !dbg !2064
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on285, metadata !1880, metadata !DIExpression()), !dbg !2064
  %68 = load ptr, ptr %pte, align 8, !dbg !2064
  %coerce.dive286 = getelementptr inbounds %struct.pte_t, ptr %68, i32 0, i32 0, !dbg !2064
  %69 = load i64, ptr %coerce.dive286, align 8, !dbg !2064
  %call287 = call i64 @pte_flags(i64 %69) #15, !dbg !2064
  %and288 = and i64 %call287, 1, !dbg !2064
  %tobool289 = icmp ne i64 %and288, 0, !dbg !2064
  %lnot290 = xor i1 %tobool289, true, !dbg !2064
  %lnot292 = xor i1 %lnot290, true, !dbg !2064
  %lnot294 = xor i1 %lnot292, true, !dbg !2064
  %lnot.ext295 = zext i1 %lnot294 to i32, !dbg !2064
  store i32 %lnot.ext295, ptr %__ret_warn_on285, align 4, !dbg !2064
  %70 = load i32, ptr %__ret_warn_on285, align 4, !dbg !2065
  %tobool296 = icmp ne i32 %70, 0, !dbg !2065
  %lnot297 = xor i1 %tobool296, true, !dbg !2065
  %lnot299 = xor i1 %lnot297, true, !dbg !2065
  %lnot.ext300 = zext i1 %lnot299 to i32, !dbg !2065
  %conv301 = sext i32 %lnot.ext300 to i64, !dbg !2065
  %expval302 = call i64 @llvm.expect.i64(i64 %conv301, i64 0), !dbg !2065
  %tobool303 = icmp ne i64 %expval302, 0, !dbg !2065
  br i1 %tobool303, label %if.then304, label %if.end318, !dbg !2064

if.then304:                                       ; preds = %if.end284
  br label %do.body305, !dbg !2065

do.body305:                                       ; preds = %if.then304
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags306) #14, !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %__flags306, metadata !1885, metadata !DIExpression()), !dbg !2066
  store i32 2305, ptr %__flags306, align 4, !dbg !2066
  br label %do.body307, !dbg !2066

do.body307:                                       ; preds = %do.body305
  br label %do.cond308, !dbg !2067

do.cond308:                                       ; preds = %do.body307
  br label %do.end309, !dbg !2067

do.end309:                                        ; preds = %do.cond308
  br label %do.body310, !dbg !2066

do.body310:                                       ; preds = %do.end309
  %71 = load i32, ptr %__flags306, align 4, !dbg !2069
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 394, i32 %71, i64 12) #14, !dbg !2069, !srcloc !2071
  br label %do.cond311, !dbg !2069

do.cond311:                                       ; preds = %do.body310
  br label %do.end312, !dbg !2069

do.end312:                                        ; preds = %do.cond311
  br label %do.body313, !dbg !2066

do.body313:                                       ; preds = %do.end312
  br label %do.cond314, !dbg !2072

do.cond314:                                       ; preds = %do.body313
  br label %do.end315, !dbg !2072

do.end315:                                        ; preds = %do.cond314
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags306) #14, !dbg !2065
  br label %do.cond316, !dbg !2066

do.cond316:                                       ; preds = %do.end315
  br label %do.end317, !dbg !2066

do.end317:                                        ; preds = %do.cond316
  br label %if.end318, !dbg !2066

if.end318:                                        ; preds = %do.end317, %if.end284
  %72 = load i32, ptr %__ret_warn_on285, align 4, !dbg !2064
  %tobool320 = icmp ne i32 %72, 0, !dbg !2064
  %lnot321 = xor i1 %tobool320, true, !dbg !2064
  %lnot323 = xor i1 %lnot321, true, !dbg !2064
  %lnot.ext324 = zext i1 %lnot323 to i32, !dbg !2064
  %conv325 = sext i32 %lnot.ext324 to i64, !dbg !2064
  %expval326 = call i64 @llvm.expect.i64(i64 %conv325, i64 0), !dbg !2064
  store i64 %expval326, ptr %tmp319, align 8, !dbg !2065
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on285) #14, !dbg !2074
  %73 = load i64, ptr %tmp319, align 8, !dbg !2064
  %tobool327 = icmp ne i64 %73, 0, !dbg !2074
  br i1 %tobool327, label %if.then328, label %if.end329, !dbg !2075

if.then328:                                       ; preds = %if.end318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2076

if.end329:                                        ; preds = %if.end318
  %74 = load i64, ptr %addr, align 8, !dbg !2077
  %75 = load i8, ptr %late_text.addr, align 1, !dbg !2078, !range !639, !noundef !640
  %tobool330 = trunc i8 %75 to i1, !dbg !2078
  %call331 = call ptr @pti_user_pagetable_walk_pte(i64 noundef %74, i1 noundef zeroext %tobool330) #15, !dbg !2079
  store ptr %call331, ptr %target_pte, align 8, !dbg !2080
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on332) #14, !dbg !2081
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on332, metadata !1888, metadata !DIExpression()), !dbg !2081
  %76 = load ptr, ptr %target_pte, align 8, !dbg !2081
  %tobool333 = icmp ne ptr %76, null, !dbg !2081
  %lnot334 = xor i1 %tobool333, true, !dbg !2081
  %lnot336 = xor i1 %lnot334, true, !dbg !2081
  %lnot338 = xor i1 %lnot336, true, !dbg !2081
  %lnot.ext339 = zext i1 %lnot338 to i32, !dbg !2081
  store i32 %lnot.ext339, ptr %__ret_warn_on332, align 4, !dbg !2081
  %77 = load i32, ptr %__ret_warn_on332, align 4, !dbg !2082
  %tobool340 = icmp ne i32 %77, 0, !dbg !2082
  %lnot341 = xor i1 %tobool340, true, !dbg !2082
  %lnot343 = xor i1 %lnot341, true, !dbg !2082
  %lnot.ext344 = zext i1 %lnot343 to i32, !dbg !2082
  %conv345 = sext i32 %lnot.ext344 to i64, !dbg !2082
  %expval346 = call i64 @llvm.expect.i64(i64 %conv345, i64 0), !dbg !2082
  %tobool347 = icmp ne i64 %expval346, 0, !dbg !2082
  br i1 %tobool347, label %if.then348, label %if.end362, !dbg !2081

if.then348:                                       ; preds = %if.end329
  br label %do.body349, !dbg !2082

do.body349:                                       ; preds = %if.then348
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags350) #14, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %__flags350, metadata !1891, metadata !DIExpression()), !dbg !2083
  store i32 2305, ptr %__flags350, align 4, !dbg !2083
  br label %do.body351, !dbg !2083

do.body351:                                       ; preds = %do.body349
  br label %do.cond352, !dbg !2084

do.cond352:                                       ; preds = %do.body351
  br label %do.end353, !dbg !2084

do.end353:                                        ; preds = %do.cond352
  br label %do.body354, !dbg !2083

do.body354:                                       ; preds = %do.end353
  %78 = load i32, ptr %__flags350, align 4, !dbg !2086
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 399, i32 %78, i64 12) #14, !dbg !2086, !srcloc !2088
  br label %do.cond355, !dbg !2086

do.cond355:                                       ; preds = %do.body354
  br label %do.end356, !dbg !2086

do.end356:                                        ; preds = %do.cond355
  br label %do.body357, !dbg !2083

do.body357:                                       ; preds = %do.end356
  br label %do.cond358, !dbg !2089

do.cond358:                                       ; preds = %do.body357
  br label %do.end359, !dbg !2089

do.end359:                                        ; preds = %do.cond358
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags350) #14, !dbg !2082
  br label %do.cond360, !dbg !2083

do.cond360:                                       ; preds = %do.end359
  br label %do.end361, !dbg !2083

do.end361:                                        ; preds = %do.cond360
  br label %if.end362, !dbg !2083

if.end362:                                        ; preds = %do.end361, %if.end329
  %79 = load i32, ptr %__ret_warn_on332, align 4, !dbg !2081
  %tobool364 = icmp ne i32 %79, 0, !dbg !2081
  %lnot365 = xor i1 %tobool364, true, !dbg !2081
  %lnot367 = xor i1 %lnot365, true, !dbg !2081
  %lnot.ext368 = zext i1 %lnot367 to i32, !dbg !2081
  %conv369 = sext i32 %lnot.ext368 to i64, !dbg !2081
  %expval370 = call i64 @llvm.expect.i64(i64 %conv369, i64 0), !dbg !2081
  store i64 %expval370, ptr %tmp363, align 8, !dbg !2082
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on332) #14, !dbg !2091
  %80 = load i64, ptr %tmp363, align 8, !dbg !2081
  %tobool371 = icmp ne i64 %80, 0, !dbg !2091
  br i1 %tobool371, label %if.then372, label %if.end373, !dbg !2092

if.then372:                                       ; preds = %if.end362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2093

if.end373:                                        ; preds = %if.end362
  br i1 false, label %cond.true374, label %cond.false375, !dbg !2094

cond.true374:                                     ; preds = %if.end373
  br i1 true, label %if.then378, label %if.end383, !dbg !2095

cond.false375:                                    ; preds = %if.end373
  %call376 = call zeroext i1 @arch_test_bit(i64 noundef 13, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2095
  br i1 %call376, label %if.then378, label %if.end383, !dbg !2094

if.then378:                                       ; preds = %cond.false375, %cond.true374
  %81 = load ptr, ptr %pte, align 8, !dbg !2097
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp379) #14, !dbg !2098
  %82 = load ptr, ptr %pte, align 8, !dbg !2099
  %coerce.dive380 = getelementptr inbounds %struct.pte_t, ptr %82, i32 0, i32 0, !dbg !2098
  %83 = load i64, ptr %coerce.dive380, align 8, !dbg !2098
  %call381 = call i64 @pte_set_flags(i64 %83, i64 noundef 256) #15, !dbg !2098
  %coerce.dive382 = getelementptr inbounds %struct.pte_t, ptr %tmp379, i32 0, i32 0, !dbg !2098
  store i64 %call381, ptr %coerce.dive382, align 8, !dbg !2098
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %81, ptr align 8 %tmp379, i64 8, i1 false), !dbg !2098
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp379) #14, !dbg !2098
  br label %if.end383, !dbg !2100

if.end383:                                        ; preds = %if.then378, %cond.false375, %cond.true374
  %84 = load ptr, ptr %target_pte, align 8, !dbg !2101
  %85 = load ptr, ptr %pte, align 8, !dbg !2102
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %84, ptr align 8 %85, i64 8, i1 false), !dbg !2103
  %86 = load i64, ptr %addr, align 8, !dbg !2104
  %add384 = add i64 %86, 1, !dbg !2104
  %sub385 = sub i64 %add384, 1, !dbg !2104
  %or386 = or i64 %sub385, 4095, !dbg !2104
  %add387 = add i64 %or386, 1, !dbg !2104
  store i64 %add387, ptr %addr, align 8, !dbg !2105
  br label %if.end398, !dbg !2106

if.else388:                                       ; preds = %if.else
  br label %do.body389, !dbg !2107

do.body389:                                       ; preds = %if.else388
  br label %do.body390, !dbg !2109

do.body390:                                       ; preds = %do.body389
  br label %do.cond391, !dbg !2111

do.cond391:                                       ; preds = %do.body390
  br label %do.end392, !dbg !2111

do.end392:                                        ; preds = %do.cond391
  br label %do.body393, !dbg !2109

do.body393:                                       ; preds = %do.end392
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 412, i32 0, i64 12) #14, !dbg !2113, !srcloc !2115
  br label %do.cond394, !dbg !2113

do.cond394:                                       ; preds = %do.body393
  br label %do.end395, !dbg !2113

do.end395:                                        ; preds = %do.cond394
  unreachable, !dbg !2109

do.cond396:                                       ; No predecessors!
  br label %do.end397, !dbg !2109

do.end397:                                        ; preds = %do.cond396
  br label %if.end398

if.end398:                                        ; preds = %do.end397, %if.end383
  br label %if.end399

if.end399:                                        ; preds = %if.end398, %if.end267
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2116
  br label %cleanup, !dbg !2116

cleanup:                                          ; preds = %if.end399, %if.then372, %if.then328, %if.then279, %if.then258, %if.then213, %if.end152, %if.end107, %if.then72, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #14, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #14, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #14, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_pmd) #14, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #14, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_pte) #14, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !2116
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup406 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 3, label %for.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !2117, !llvm.loop !1978

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2118
  br label %cleanup406, !dbg !2118

cleanup406:                                       ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #14, !dbg !2118
  %cleanup.dest407 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest407, label %unreachable [
    i32 0, label %cleanup.cont408
    i32 1, label %cleanup.cont408
  ]

cleanup.cont408:                                  ; preds = %cleanup406, %cleanup406
  ret void, !dbg !2118

unreachable:                                      ; preds = %cleanup406
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_set_flags(i64 %pmd.coerce, i64 noundef %set) #3 align 16 !dbg !2119 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %set.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !2123, metadata !DIExpression()), !dbg !2126
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #14, !dbg !2128
  call void @llvm.dbg.declare(metadata ptr %v, metadata !2125, metadata !DIExpression()), !dbg !2129
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !2130
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !2130
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !2130
  store i64 %call, ptr %v, align 8, !dbg !2129
  %1 = load i64, ptr %v, align 8, !dbg !2131
  %2 = load i64, ptr %set.addr, align 8, !dbg !2132
  %or = or i64 %1, %2, !dbg !2133
  %call2 = call i64 @native_make_pmd(i64 noundef %or) #15, !dbg !2134
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !2134
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #14, !dbg !2135
  %coerce.dive4 = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !2135
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !2135
  ret i64 %3, !dbg !2135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pte_none(i64 %pte.coerce) #3 align 16 !dbg !2136 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !2140, metadata !DIExpression()), !dbg !2141
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !2142
  %0 = load i64, ptr %pte1, align 8, !dbg !2142
  %and = and i64 %0, -97, !dbg !2143
  %tobool = icmp ne i64 %and, 0, !dbg !2144
  %lnot = xor i1 %tobool, true, !dbg !2144
  %lnot.ext = zext i1 %lnot to i32, !dbg !2144
  ret i32 %lnot.ext, !dbg !2145
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_set_flags(i64 %pte.coerce, i64 noundef %set) #3 align 16 !dbg !2146 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %set.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !2150, metadata !DIExpression()), !dbg !2153
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #14, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %v, metadata !2152, metadata !DIExpression()), !dbg !2156
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !2157
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !2157
  %call = call i64 @native_pte_val(i64 %0) #15, !dbg !2157
  store i64 %call, ptr %v, align 8, !dbg !2156
  %1 = load i64, ptr %v, align 8, !dbg !2158
  %2 = load i64, ptr %set.addr, align 8, !dbg !2159
  %or = or i64 %1, %2, !dbg !2160
  %call2 = call i64 @native_make_pte(i64 noundef %or) #15, !dbg !2161
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !2161
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !2161
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #14, !dbg !2162
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !2162
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !2162
  ret i64 %3, !dbg !2162
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2163 dso_local ptr @lookup_address(i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2167 dso_local void @set_vsyscall_pgtable_user_bits(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pti_kernel_image_global_ok() #3 align 16 !dbg !2171 {
entry:
  %retval = alloca i1, align 1
  br i1 false, label %cond.true, label %cond.false, !dbg !2172

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !2173

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !2172

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !2173

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !2173

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 145, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2173
  br i1 %call, label %if.then, label %if.end, !dbg !2173

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 145) #15, !dbg !2173
  br i1 %call5, label %if.then, label %if.end, !dbg !2172

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i1 false, ptr %retval, align 1, !dbg !2175
  br label %return, !dbg !2175

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load i32, ptr @pti_mode, align 4, !dbg !2176
  %cmp = icmp ne i32 %0, 0, !dbg !2178
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2179

if.then6:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2180
  br label %return, !dbg !2180

if.end7:                                          ; preds = %if.end
  br i1 false, label %cond.true8, label %cond.false9, !dbg !2181

cond.true8:                                       ; preds = %if.end7
  br i1 true, label %if.then11, label %if.end12, !dbg !2182

cond.false9:                                      ; preds = %if.end7
  %call10 = call zeroext i1 @arch_test_bit(i64 noundef 100, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2182
  br i1 %call10, label %if.then11, label %if.end12, !dbg !2181

if.then11:                                        ; preds = %cond.false9, %cond.true8
  store i1 false, ptr %retval, align 1, !dbg !2184
  br label %return, !dbg !2184

if.end12:                                         ; preds = %cond.false9, %cond.true8
  store i1 true, ptr %retval, align 1, !dbg !2185
  br label %return, !dbg !2185

return:                                           ; preds = %if.end12, %if.then11, %if.then6, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !2186
  ret i1 %1, !dbg !2186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2187 dso_local i32 @set_memory_global(i64 noundef, i32 noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: pgd_large(*pgd) != 0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: p4d_large(*p4d) != 0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone noreturn }
attributes #18 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pti_mode", scope: !2, file: !3, line: 76, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.pti.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/pti\22 -D KBUILD_BASENAME=\22pti\22 -D KBUILD_MODNAME=\22pti\22 -D __KBUILD_MODNAME=kmod_pti -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/pti.ll arch/x86/mm/pti.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !144, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/pti.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26a586406ed1df28d9f027336d1e7fc6")
!4 = !{!5, !11, !22, !27, !31}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pti_mode", file: !3, line: 72, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "PTI_AUTO", value: 0)
!9 = !DIEnumerator(name: "PTI_FORCE_OFF", value: 1)
!10 = !DIEnumerator(name: "PTI_FORCE_ON", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_hypervisor_type", file: !12, line: 24, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/hypervisor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c3d187261c297a091f71fc8abfac2f1")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "X86_HYPER_NATIVE", value: 0)
!15 = !DIEnumerator(name: "X86_HYPER_VMWARE", value: 1)
!16 = !DIEnumerator(name: "X86_HYPER_MS_HYPERV", value: 2)
!17 = !DIEnumerator(name: "X86_HYPER_XEN_PV", value: 3)
!18 = !DIEnumerator(name: "X86_HYPER_XEN_HVM", value: 4)
!19 = !DIEnumerator(name: "X86_HYPER_KVM", value: 5)
!20 = !DIEnumerator(name: "X86_HYPER_JAILHOUSE", value: 6)
!21 = !DIEnumerator(name: "X86_HYPER_ACRN", value: 7)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 10, baseType: !6, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "false", value: 0)
!26 = !DIEnumerator(name: "true", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pti_clone_level", file: !3, line: 302, baseType: !6, size: 32, elements: !28)
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "PTI_CLONE_PMD", value: 0)
!30 = !DIEnumerator(name: "PTI_CLONE_PTE", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pg_level", file: !32, line: 550, baseType: !6, size: 32, elements: !33)
!32 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "PG_LEVEL_NONE", value: 0)
!35 = !DIEnumerator(name: "PG_LEVEL_4K", value: 1)
!36 = !DIEnumerator(name: "PG_LEVEL_2M", value: 2)
!37 = !DIEnumerator(name: "PG_LEVEL_1G", value: 3)
!38 = !DIEnumerator(name: "PG_LEVEL_512G", value: 4)
!39 = !DIEnumerator(name: "PG_LEVEL_NUM", value: 5)
!40 = !{!41, !42, !44, !46, !49, !50, !43, !53, !6, !62, !102, !104, !106, !113, !52, !119, !120, !122, !123, !129, !131, !137, !139}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !45, line: 14, baseType: !43)
!45 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!52 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !56, line: 19, size: 64, elements: !57)
!56 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !55, file: !56, line: 19, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tss_struct", file: !64, line: 378, size: 163840, align: 32768, elements: !65)
!64 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!65 = !{!66, !92}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tss", scope: !63, file: !64, line: 384, baseType: !67, size: 832)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hw_tss", file: !64, line: 286, size: 832, elements: !68)
!68 = !{!69, !74, !78, !79, !80, !81, !85, !86, !87, !91}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !67, file: !64, line: 287, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !71, line: 21, baseType: !72)
!71 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !73, line: 27, baseType: !6)
!73 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sp0", scope: !67, file: !64, line: 288, baseType: !75, size: 64, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !71, line: 23, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !73, line: 31, baseType: !77)
!77 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sp1", scope: !67, file: !64, line: 289, baseType: !75, size: 64, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sp2", scope: !67, file: !64, line: 296, baseType: !75, size: 64, offset: 160)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !67, file: !64, line: 298, baseType: !75, size: 64, offset: 224)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !67, file: !64, line: 299, baseType: !82, size: 448, offset: 288)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 448, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 7)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !67, file: !64, line: 300, baseType: !70, size: 32, offset: 736)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !67, file: !64, line: 301, baseType: !70, size: 32, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !67, file: !64, line: 302, baseType: !88, size: 16, offset: 800)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !71, line: 19, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !73, line: 24, baseType: !90)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap_base", scope: !67, file: !64, line: 303, baseType: !88, size: 16, offset: 816)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !63, file: !64, line: 386, baseType: !93, size: 131328, offset: 832)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_io_bitmap", file: !64, line: 350, size: 131328, elements: !94)
!94 = !{!95, !96, !97, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sequence", scope: !93, file: !64, line: 352, baseType: !75, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev_max", scope: !93, file: !64, line: 361, baseType: !6, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !93, file: !64, line: 369, baseType: !98, size: 65600, offset: 128)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 65600, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1025)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "mapall", scope: !93, file: !64, line: 375, baseType: !98, size: 65600, offset: 65728)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 154, baseType: !6)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !32, line: 299, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 299, size: 64, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !109, file: !32, line: 299, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !45, line: 18, baseType: !43)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !32, line: 346, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 346, size: 64, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !115, file: !32, line: 346, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !45, line: 17, baseType: !43)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !103, line: 159, baseType: !75)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !32, line: 372, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 372, size: 64, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !125, file: !32, line: 372, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !45, line: 16, baseType: !43)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !45, line: 22, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 22, size: 64, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !133, file: !45, line: 22, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !45, line: 15, baseType: !43)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !45, line: 21, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 21, size: 64, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !141, file: !45, line: 21, baseType: !44, size: 64)
!144 = !{!145, !150, !155, !157, !162, !167, !172, !177, !182, !0, !187, !192, !197, !231, !236, !273}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 20)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 4)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !152, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 24, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 3)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 248, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 31)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 40, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 5)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 48, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 6)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 618, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 368, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 46)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 328, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 41)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 144, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 18)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__already_done", scope: !199, file: !3, line: 177, type: !210, isLocal: true, isDefinition: true)
!199 = distinct !DISubprogram(name: "pti_user_pagetable_walk_p4d", scope: !3, file: !3, line: 171, type: !200, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!113, !43}
!202 = !{!203, !204, !205, !206, !212, !215, !216, !218, !222, !225, !228}
!203 = !DILocalVariable(name: "address", arg: 1, scope: !199, file: !3, line: 171, type: !43)
!204 = !DILocalVariable(name: "pgd", scope: !199, file: !3, line: 173, type: !122)
!205 = !DILocalVariable(name: "gfp", scope: !199, file: !3, line: 174, type: !102)
!206 = !DILocalVariable(name: "__ret_do_once", scope: !207, file: !3, line: 177, type: !210)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 177, column: 3)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 176, column: 29)
!209 = distinct !DILexicalBlock(scope: !199, file: !3, line: 176, column: 6)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 35, baseType: !211)
!211 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!212 = !DILocalVariable(name: "__ret_cond", scope: !213, file: !3, line: 177, type: !210)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 177, column: 3)
!214 = distinct !DILexicalBlock(scope: !207, file: !3, line: 177, column: 3)
!215 = !DILocalVariable(name: "__ret_once", scope: !213, file: !3, line: 177, type: !210)
!216 = !DILocalVariable(name: "__ret_warn_on", scope: !217, file: !3, line: 177, type: !41)
!217 = distinct !DILexicalBlock(scope: !214, file: !3, line: 177, column: 3)
!218 = !DILocalVariable(name: "__flags", scope: !219, file: !3, line: 177, type: !41)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 177, column: 3)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 177, column: 3)
!221 = distinct !DILexicalBlock(scope: !217, file: !3, line: 177, column: 3)
!222 = !DILocalVariable(name: "new_p4d_page", scope: !223, file: !3, line: 182, type: !43)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 181, column: 22)
!224 = distinct !DILexicalBlock(scope: !199, file: !3, line: 181, column: 6)
!225 = !DILocalVariable(name: "__ret_warn_on", scope: !226, file: !3, line: 183, type: !41)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 183, column: 7)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 183, column: 7)
!228 = !DILocalVariable(name: "__flags", scope: !229, file: !3, line: 183, type: !41)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 183, column: 7)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 183, column: 7)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 240, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 30)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__already_done", scope: !238, file: !3, line: 275, type: !210, isLocal: true, isDefinition: true)
!238 = distinct !DISubprogram(name: "pti_user_pagetable_walk_pte", scope: !3, file: !3, line: 244, type: !239, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!139, !43, !210}
!241 = !{!242, !243, !244, !245, !246, !247, !253, !256, !259, !263, !266, !267, !269}
!242 = !DILocalVariable(name: "address", arg: 1, scope: !238, file: !3, line: 244, type: !43)
!243 = !DILocalVariable(name: "late_text", arg: 2, scope: !238, file: !3, line: 244, type: !210)
!244 = !DILocalVariable(name: "gfp", scope: !238, file: !3, line: 246, type: !102)
!245 = !DILocalVariable(name: "pmd", scope: !238, file: !3, line: 247, type: !131)
!246 = !DILocalVariable(name: "pte", scope: !238, file: !3, line: 248, type: !139)
!247 = !DILocalVariable(name: "__ret_warn_on", scope: !248, file: !3, line: 260, type: !41)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 260, column: 4)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 259, column: 10)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 257, column: 7)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 255, column: 23)
!252 = distinct !DILexicalBlock(scope: !238, file: !3, line: 255, column: 6)
!253 = !DILocalVariable(name: "__flags", scope: !254, file: !3, line: 260, type: !41)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 260, column: 4)
!255 = distinct !DILexicalBlock(scope: !248, file: !3, line: 260, column: 4)
!256 = !DILocalVariable(name: "new_pte_page", scope: !257, file: !3, line: 266, type: !43)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 265, column: 22)
!258 = distinct !DILexicalBlock(scope: !238, file: !3, line: 265, column: 6)
!259 = !DILocalVariable(name: "__ret_do_once", scope: !260, file: !3, line: 275, type: !210)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 275, column: 3)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 274, column: 36)
!262 = distinct !DILexicalBlock(scope: !238, file: !3, line: 274, column: 6)
!263 = !DILocalVariable(name: "__ret_cond", scope: !264, file: !3, line: 275, type: !210)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 275, column: 3)
!265 = distinct !DILexicalBlock(scope: !260, file: !3, line: 275, column: 3)
!266 = !DILocalVariable(name: "__ret_once", scope: !264, file: !3, line: 275, type: !210)
!267 = !DILocalVariable(name: "__ret_warn_on", scope: !268, file: !3, line: 275, type: !41)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 275, column: 3)
!269 = !DILocalVariable(name: "__flags", scope: !270, file: !3, line: 275, type: !41)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 275, column: 3)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 275, column: 3)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 275, column: 3)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 232, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 29)
!278 = !{i32 7, !"Dwarf Version", i32 5}
!279 = !{i32 2, !"Debug Info Version", i32 3}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 8, !"cf-protection-branch", i32 1}
!282 = !{i32 4, !"function_return_thunk_extern", i32 1}
!283 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!284 = !{i32 1, !"Code Model", i32 2}
!285 = !{i32 1, !"override-stack-alignment", i32 8}
!286 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!287 = distinct !DISubprogram(name: "pti_check_boottime_disable", scope: !3, file: !3, line: 78, type: !288, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{null}
!290 = !{!291, !292, !293, !294}
!291 = !DILocalVariable(name: "arg", scope: !287, file: !3, line: 80, type: !174)
!292 = !DILocalVariable(name: "ret", scope: !287, file: !3, line: 81, type: !41)
!293 = !DILabel(scope: !287, name: "autosel", file: !3, line: 117)
!294 = !DILabel(scope: !287, name: "enable", file: !3, line: 120)
!295 = !DILocation(line: 80, column: 2, scope: !287)
!296 = !DILocation(line: 80, column: 7, scope: !287)
!297 = !DILocation(line: 81, column: 2, scope: !287)
!298 = !DILocation(line: 81, column: 6, scope: !287)
!299 = !DILocation(line: 84, column: 11, scope: !287)
!300 = !DILocation(line: 86, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !287, file: !3, line: 86, column: 6)
!302 = !DILocation(line: 86, column: 6, scope: !287)
!303 = !DILocation(line: 87, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 86, column: 44)
!305 = !DILocation(line: 88, column: 3, scope: !304)
!306 = !DILocation(line: 89, column: 3, scope: !304)
!307 = !DILocation(line: 92, column: 54, scope: !287)
!308 = !DILocation(line: 92, column: 8, scope: !287)
!309 = !DILocation(line: 92, column: 6, scope: !287)
!310 = !DILocation(line: 93, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !287, file: !3, line: 93, column: 6)
!312 = !DILocation(line: 93, column: 10, scope: !311)
!313 = !DILocation(line: 93, column: 6, scope: !287)
!314 = !DILocation(line: 94, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 94, column: 7)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 93, column: 16)
!317 = !DILocation(line: 94, column: 11, scope: !315)
!318 = !DILocation(line: 94, column: 16, scope: !315)
!319 = !DILocation(line: 94, column: 28, scope: !315)
!320 = !DILocation(line: 94, column: 20, scope: !315)
!321 = !DILocation(line: 94, column: 7, scope: !316)
!322 = !DILocation(line: 95, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !3, line: 94, column: 44)
!324 = !DILocation(line: 96, column: 4, scope: !323)
!325 = !DILocation(line: 97, column: 4, scope: !323)
!326 = !DILocation(line: 99, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !316, file: !3, line: 99, column: 7)
!328 = !DILocation(line: 99, column: 11, scope: !327)
!329 = !DILocation(line: 99, column: 16, scope: !327)
!330 = !DILocation(line: 99, column: 28, scope: !327)
!331 = !DILocation(line: 99, column: 20, scope: !327)
!332 = !DILocation(line: 99, column: 7, scope: !316)
!333 = !DILocation(line: 100, column: 13, scope: !334)
!334 = distinct !DILexicalBlock(scope: !327, file: !3, line: 99, column: 43)
!335 = !DILocation(line: 101, column: 4, scope: !334)
!336 = !DILocation(line: 102, column: 4, scope: !334)
!337 = !DILocation(line: 104, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !316, file: !3, line: 104, column: 7)
!339 = !DILocation(line: 104, column: 11, scope: !338)
!340 = !DILocation(line: 104, column: 16, scope: !338)
!341 = !DILocation(line: 104, column: 28, scope: !338)
!342 = !DILocation(line: 104, column: 20, scope: !338)
!343 = !DILocation(line: 104, column: 7, scope: !316)
!344 = !DILocation(line: 105, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 104, column: 45)
!346 = !DILocation(line: 106, column: 4, scope: !345)
!347 = !DILocation(line: 108, column: 2, scope: !316)
!348 = !DILocation(line: 110, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !287, file: !3, line: 110, column: 6)
!350 = !DILocation(line: 110, column: 59, scope: !349)
!351 = !DILocation(line: 111, column: 6, scope: !349)
!352 = !DILocation(line: 110, column: 6, scope: !287)
!353 = !DILocation(line: 112, column: 12, scope: !354)
!354 = distinct !DILexicalBlock(scope: !349, file: !3, line: 111, column: 29)
!355 = !DILocation(line: 113, column: 3, scope: !354)
!356 = !DILocation(line: 114, column: 3, scope: !354)
!357 = !DILocation(line: 111, column: 26, scope: !349)
!358 = !DILocation(line: 117, column: 1, scope: !287)
!359 = !DILocation(line: 118, column: 6, scope: !287)
!360 = !DILocation(line: 118, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !287, file: !3, line: 118, column: 6)
!362 = !DILocation(line: 119, column: 3, scope: !361)
!363 = !DILocation(line: 120, column: 1, scope: !287)
!364 = !DILocation(line: 121, column: 2, scope: !287)
!365 = !DILocation(line: 121, column: 2, scope: !366)
!366 = distinct !DILexicalBlock(scope: !287, file: !3, line: 121, column: 2)
!367 = !DILocation(line: 122, column: 1, scope: !287)
!368 = distinct !DISubprogram(name: "hypervisor_is_type", scope: !12, file: !12, line: 72, type: !369, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!210, !11}
!371 = !{!372}
!372 = !DILocalVariable(name: "type", arg: 1, scope: !368, file: !12, line: 72, type: !11)
!373 = !DILocation(line: 72, column: 64, scope: !368)
!374 = !DILocation(line: 74, column: 9, scope: !368)
!375 = !DILocation(line: 74, column: 27, scope: !368)
!376 = !DILocation(line: 74, column: 24, scope: !368)
!377 = !DILocation(line: 74, column: 2, scope: !368)
!378 = distinct !DISubprogram(name: "pti_print_if_insecure", scope: !3, file: !3, line: 60, type: !379, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !104}
!381 = !{!382}
!382 = !DILocalVariable(name: "reason", arg: 1, scope: !378, file: !3, line: 60, type: !104)
!383 = !DILocation(line: 60, column: 54, scope: !378)
!384 = !DILocation(line: 62, column: 6, scope: !378)
!385 = !DILocation(line: 62, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !3, line: 62, column: 6)
!387 = !DILocation(line: 63, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !386, file: !3, line: 63, column: 3)
!389 = !DILocation(line: 63, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !388, file: !3, line: 63, column: 3)
!391 = !DILocation(line: 63, column: 3, scope: !386)
!392 = !DILocation(line: 64, column: 1, scope: !378)
!393 = !DISubprogram(name: "cmdline_find_option", scope: !394, file: !394, line: 6, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DIFile(filename: "./arch/x86/include/asm/cmdline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d8909aa88a0777ea33f757b9bb1cc8")
!395 = !DISubroutineType(types: !396)
!396 = !{!41, !104, !104, !397, !41}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!398 = !DISubprogram(name: "strncmp", scope: !399, file: !399, line: 91, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!400 = !DISubroutineType(types: !401)
!401 = !{!41, !104, !104, !402}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !403, line: 72, baseType: !404)
!403 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !403, line: 16, baseType: !43)
!405 = distinct !DISubprogram(name: "pti_print_if_secure", scope: !3, file: !3, line: 66, type: !379, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!406 = !{!407}
!407 = !DILocalVariable(name: "reason", arg: 1, scope: !405, file: !3, line: 66, type: !104)
!408 = !DILocation(line: 66, column: 52, scope: !405)
!409 = !DILocation(line: 68, column: 6, scope: !405)
!410 = !DILocation(line: 68, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !3, line: 68, column: 6)
!412 = !DILocation(line: 69, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !411, file: !3, line: 69, column: 3)
!414 = !DILocation(line: 69, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !413, file: !3, line: 69, column: 3)
!416 = !DILocation(line: 69, column: 3, scope: !411)
!417 = !DILocation(line: 70, column: 1, scope: !405)
!418 = !DISubprogram(name: "cmdline_find_option_bool", scope: !394, file: !394, line: 5, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{!41, !104, !104}
!421 = !DISubprogram(name: "cpu_mitigations_off", scope: !422, file: !422, line: 218, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!423 = !DISubroutineType(types: !424)
!424 = !{!210}
!425 = distinct !DISubprogram(name: "arch_test_bit", scope: !426, file: !426, line: 237, type: !427, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!426 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!427 = !DISubroutineType(types: !428)
!428 = !{!210, !43, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!432 = !{!433, !434}
!433 = !DILocalVariable(name: "nr", arg: 1, scope: !425, file: !426, line: 237, type: !43)
!434 = !DILocalVariable(name: "addr", arg: 2, scope: !425, file: !426, line: 237, type: !429)
!435 = !DILocation(line: 237, column: 29, scope: !425)
!436 = !DILocation(line: 237, column: 63, scope: !425)
!437 = !DILocation(line: 239, column: 30, scope: !425)
!438 = !DILocation(line: 239, column: 9, scope: !425)
!439 = !DILocation(line: 239, column: 54, scope: !425)
!440 = !DILocation(line: 239, column: 58, scope: !425)
!441 = !DILocation(line: 239, column: 36, scope: !425)
!442 = !DILocation(line: 240, column: 26, scope: !425)
!443 = !DILocation(line: 240, column: 30, scope: !425)
!444 = !DILocation(line: 240, column: 8, scope: !425)
!445 = !DILocation(line: 239, column: 2, scope: !425)
!446 = distinct !DISubprogram(name: "set_bit", scope: !447, file: !447, line: 26, type: !448, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!447 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!448 = !DISubroutineType(types: !449)
!449 = !{null, !52, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!451 = !{!452, !453}
!452 = !DILocalVariable(name: "nr", arg: 1, scope: !446, file: !447, line: 26, type: !52)
!453 = !DILocalVariable(name: "addr", arg: 2, scope: !446, file: !447, line: 26, type: !450)
!454 = !DILocation(line: 26, column: 42, scope: !446)
!455 = !DILocation(line: 26, column: 70, scope: !446)
!456 = !DILocation(line: 28, column: 26, scope: !446)
!457 = !DILocation(line: 28, column: 33, scope: !446)
!458 = !DILocation(line: 28, column: 31, scope: !446)
!459 = !DILocation(line: 28, column: 2, scope: !446)
!460 = !DILocation(line: 29, column: 15, scope: !446)
!461 = !DILocation(line: 29, column: 19, scope: !446)
!462 = !DILocation(line: 29, column: 2, scope: !446)
!463 = !DILocation(line: 30, column: 1, scope: !446)
!464 = distinct !DISubprogram(name: "__pti_set_user_pgtbl", scope: !3, file: !3, line: 124, type: !465, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!465 = !DISubroutineType(types: !466)
!466 = !{!108, !122, !108}
!467 = !{!468, !469}
!468 = !DILocalVariable(name: "pgdp", arg: 1, scope: !464, file: !3, line: 124, type: !122)
!469 = !DILocalVariable(name: "pgd", arg: 2, scope: !464, file: !3, line: 124, type: !108)
!470 = !DILocation(line: 124, column: 35, scope: !464)
!471 = !DILocation(line: 124, column: 47, scope: !464)
!472 = !DILocation(line: 135, column: 27, scope: !473)
!473 = distinct !DILexicalBlock(scope: !464, file: !3, line: 135, column: 6)
!474 = !DILocation(line: 135, column: 7, scope: !473)
!475 = !DILocation(line: 135, column: 33, scope: !473)
!476 = !DILocation(line: 135, column: 41, scope: !473)
!477 = !DILocation(line: 135, column: 45, scope: !473)
!478 = !DILocation(line: 135, column: 6, scope: !464)
!479 = !DILocation(line: 136, column: 10, scope: !473)
!480 = !DILocation(line: 136, column: 3, scope: !473)
!481 = !DILocation(line: 142, column: 39, scope: !464)
!482 = !DILocation(line: 142, column: 22, scope: !464)
!483 = !DILocation(line: 142, column: 2, scope: !464)
!484 = !DILocation(line: 142, column: 29, scope: !464)
!485 = !DILocation(line: 142, column: 33, scope: !464)
!486 = !DILocation(line: 157, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !464, file: !3, line: 157, column: 6)
!488 = !DILocation(line: 157, column: 15, scope: !487)
!489 = !DILocation(line: 157, column: 45, scope: !487)
!490 = !DILocation(line: 157, column: 75, scope: !487)
!491 = !DILocation(line: 158, column: 7, scope: !487)
!492 = !DILocation(line: 158, column: 28, scope: !487)
!493 = !DILocation(line: 157, column: 6, scope: !464)
!494 = !DILocation(line: 159, column: 7, scope: !487)
!495 = !DILocation(line: 159, column: 11, scope: !487)
!496 = !DILocation(line: 159, column: 3, scope: !487)
!497 = !DILocation(line: 162, column: 9, scope: !464)
!498 = !DILocation(line: 162, column: 2, scope: !464)
!499 = !DILocation(line: 163, column: 1, scope: !464)
!500 = distinct !DISubprogram(name: "pgdp_maps_userspace", scope: !501, file: !501, line: 1398, type: !502, scopeLine: 1399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!501 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!502 = !DISubroutineType(types: !503)
!503 = !{!210, !49}
!504 = !{!505, !506}
!505 = !DILocalVariable(name: "__ptr", arg: 1, scope: !500, file: !501, line: 1398, type: !49)
!506 = !DILocalVariable(name: "ptr", scope: !500, file: !501, line: 1400, type: !43)
!507 = !DILocation(line: 1398, column: 46, scope: !500)
!508 = !DILocation(line: 1400, column: 2, scope: !500)
!509 = !DILocation(line: 1400, column: 16, scope: !500)
!510 = !DILocation(line: 1400, column: 37, scope: !500)
!511 = !DILocation(line: 1400, column: 22, scope: !500)
!512 = !DILocation(line: 1402, column: 12, scope: !500)
!513 = !DILocation(line: 1402, column: 16, scope: !500)
!514 = !DILocation(line: 1402, column: 30, scope: !500)
!515 = !DILocation(line: 1402, column: 47, scope: !500)
!516 = !DILocation(line: 1403, column: 1, scope: !500)
!517 = !DILocation(line: 1402, column: 2, scope: !500)
!518 = distinct !DISubprogram(name: "kernel_to_user_pgdp", scope: !501, file: !501, line: 1436, type: !519, scopeLine: 1437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!122, !122}
!521 = !{!522}
!522 = !DILocalVariable(name: "pgdp", arg: 1, scope: !518, file: !501, line: 1436, type: !122)
!523 = !DILocation(line: 1436, column: 49, scope: !518)
!524 = !DILocation(line: 1438, column: 21, scope: !518)
!525 = !DILocation(line: 1438, column: 9, scope: !518)
!526 = !DILocation(line: 1438, column: 2, scope: !518)
!527 = distinct !DISubprogram(name: "pti_init", scope: !3, file: !3, line: 613, type: !288, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!528 = !DILocation(line: 615, column: 6, scope: !527)
!529 = !DILocation(line: 615, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 615, column: 6)
!531 = !DILocation(line: 616, column: 3, scope: !530)
!532 = !DILocation(line: 618, column: 2, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !3, line: 618, column: 2)
!534 = !DILocation(line: 618, column: 2, scope: !535)
!535 = distinct !DILexicalBlock(scope: !533, file: !3, line: 618, column: 2)
!536 = !DILocation(line: 642, column: 2, scope: !527)
!537 = !DILocation(line: 645, column: 2, scope: !527)
!538 = !DILocation(line: 654, column: 2, scope: !527)
!539 = !DILocation(line: 655, column: 2, scope: !527)
!540 = !DILocation(line: 656, column: 2, scope: !527)
!541 = !DILocation(line: 657, column: 1, scope: !527)
!542 = !DISubprogram(name: "_printk", scope: !543, file: !543, line: 153, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!544 = !DISubroutineType(types: !545)
!545 = !{!41, !104, null}
!546 = distinct !DISubprogram(name: "pti_clone_user_shared", scope: !3, file: !3, line: 440, type: !288, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{!548, !549, !553, !558, !560, !561, !562, !565}
!548 = !DILocalVariable(name: "cpu", scope: !546, file: !3, line: 442, type: !6)
!549 = !DILocalVariable(name: "va", scope: !550, file: !3, line: 456, type: !43)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 446, column: 29)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 446, column: 2)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 446, column: 2)
!553 = !DILocalVariable(name: "__vpp_verify", scope: !554, file: !3, line: 456, type: !556)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 456, column: 38)
!555 = distinct !DILexicalBlock(scope: !550, file: !3, line: 456, column: 38)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!558 = !DILocalVariable(name: "__ptr", scope: !559, file: !3, line: 456, type: !43)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 456, column: 38)
!560 = !DILocalVariable(name: "pa", scope: !550, file: !3, line: 457, type: !119)
!561 = !DILocalVariable(name: "target_pte", scope: !550, file: !3, line: 458, type: !139)
!562 = !DILocalVariable(name: "__ret_warn_on", scope: !563, file: !3, line: 461, type: !41)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 461, column: 7)
!564 = distinct !DILexicalBlock(scope: !550, file: !3, line: 461, column: 7)
!565 = !DILocalVariable(name: "__flags", scope: !566, file: !3, line: 461, type: !41)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 461, column: 7)
!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 461, column: 7)
!568 = !DILocation(line: 442, column: 2, scope: !546)
!569 = !DILocation(line: 442, column: 15, scope: !546)
!570 = !DILocation(line: 444, column: 2, scope: !546)
!571 = !DILocation(line: 446, column: 2, scope: !552)
!572 = !DILocation(line: 446, column: 2, scope: !551)
!573 = !DILocation(line: 456, column: 3, scope: !550)
!574 = !DILocation(line: 456, column: 17, scope: !550)
!575 = !DILocation(line: 456, column: 38, scope: !555)
!576 = !DILocation(line: 456, column: 38, scope: !554)
!577 = !DILocation(line: 456, column: 38, scope: !559)
!578 = !DILocation(line: 456, column: 22, scope: !550)
!579 = !DILocation(line: 457, column: 3, scope: !550)
!580 = !DILocation(line: 457, column: 15, scope: !550)
!581 = !DILocation(line: 457, column: 48, scope: !550)
!582 = !DILocation(line: 457, column: 40, scope: !550)
!583 = !DILocation(line: 457, column: 20, scope: !550)
!584 = !DILocation(line: 458, column: 3, scope: !550)
!585 = !DILocation(line: 458, column: 10, scope: !550)
!586 = !DILocation(line: 460, column: 44, scope: !550)
!587 = !DILocation(line: 460, column: 16, scope: !550)
!588 = !DILocation(line: 460, column: 14, scope: !550)
!589 = !DILocation(line: 461, column: 7, scope: !563)
!590 = !DILocation(line: 461, column: 7, scope: !567)
!591 = !DILocation(line: 461, column: 7, scope: !566)
!592 = !DILocation(line: 461, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !566, file: !3, line: 461, column: 7)
!594 = !DILocation(line: 461, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !566, file: !3, line: 461, column: 7)
!596 = !{i64 2154796670, i64 2154796699, i64 2154796745, i64 2154796803, i64 2154796857, i64 2154796911, i64 2154796966, i64 2154796997, i64 2154797305, i64 2154797311, i64 2154797358, i64 2154797381, i64 2154797407}
!597 = !DILocation(line: 461, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !566, file: !3, line: 461, column: 7)
!599 = !DILocation(line: 461, column: 7, scope: !564)
!600 = !DILocation(line: 461, column: 7, scope: !550)
!601 = !DILocation(line: 462, column: 4, scope: !564)
!602 = !DILocation(line: 464, column: 4, scope: !550)
!603 = !DILocation(line: 464, column: 17, scope: !550)
!604 = !DILocation(line: 464, column: 25, scope: !550)
!605 = !DILocation(line: 464, column: 28, scope: !550)
!606 = !DILocation(line: 464, column: 43, scope: !550)
!607 = !DILocation(line: 465, column: 2, scope: !551)
!608 = !DILocation(line: 465, column: 2, scope: !550)
!609 = distinct !{!609, !571, !610, !611, !612}
!610 = !DILocation(line: 465, column: 2, scope: !552)
!611 = !{!"llvm.loop.mustprogress"}
!612 = !{!"llvm.loop.unroll.disable"}
!613 = !DILocation(line: 466, column: 1, scope: !546)
!614 = distinct !DISubprogram(name: "pti_set_kernel_image_nonglobal", scope: !3, file: !3, line: 591, type: !288, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!615 = !{!616, !617}
!616 = !DILocalVariable(name: "start", scope: !614, file: !3, line: 599, type: !43)
!617 = !DILocalVariable(name: "end", scope: !614, file: !3, line: 600, type: !43)
!618 = !DILocation(line: 599, column: 2, scope: !614)
!619 = !DILocation(line: 599, column: 16, scope: !614)
!620 = !DILocation(line: 599, column: 24, scope: !614)
!621 = !DILocation(line: 600, column: 2, scope: !614)
!622 = !DILocation(line: 600, column: 16, scope: !614)
!623 = !DILocation(line: 600, column: 22, scope: !614)
!624 = !DILocation(line: 607, column: 23, scope: !614)
!625 = !DILocation(line: 607, column: 31, scope: !614)
!626 = !DILocation(line: 607, column: 37, scope: !614)
!627 = !DILocation(line: 607, column: 35, scope: !614)
!628 = !DILocation(line: 607, column: 44, scope: !614)
!629 = !DILocation(line: 607, column: 30, scope: !614)
!630 = !DILocation(line: 607, column: 2, scope: !614)
!631 = !DILocation(line: 608, column: 1, scope: !614)
!632 = distinct !DISubprogram(name: "pti_clone_entry_text", scope: !3, file: !3, line: 500, type: !633, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !210}
!635 = !{!636}
!636 = !DILocalVariable(name: "late", arg: 1, scope: !632, file: !3, line: 500, type: !210)
!637 = !DILocation(line: 500, column: 39, scope: !632)
!638 = !DILocation(line: 504, column: 30, scope: !632)
!639 = !{i8 0, i8 2}
!640 = !{}
!641 = !DILocation(line: 502, column: 2, scope: !632)
!642 = !DILocation(line: 505, column: 1, scope: !632)
!643 = distinct !DISubprogram(name: "pti_setup_espfix64", scope: !3, file: !3, line: 490, type: !288, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!644 = !DILocation(line: 493, column: 2, scope: !643)
!645 = !DILocation(line: 495, column: 1, scope: !643)
!646 = distinct !DISubprogram(name: "pti_setup_vsyscall", scope: !3, file: !3, line: 282, type: !288, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !647)
!647 = !{!648, !649, !650, !651, !654, !657, !660}
!648 = !DILocalVariable(name: "pte", scope: !646, file: !3, line: 284, type: !139)
!649 = !DILocalVariable(name: "target_pte", scope: !646, file: !3, line: 284, type: !139)
!650 = !DILocalVariable(name: "level", scope: !646, file: !3, line: 285, type: !6)
!651 = !DILocalVariable(name: "__ret_warn_on", scope: !652, file: !3, line: 288, type: !41)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 288, column: 14)
!653 = distinct !DILexicalBlock(scope: !646, file: !3, line: 288, column: 6)
!654 = !DILocalVariable(name: "__flags", scope: !655, file: !3, line: 288, type: !41)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 288, column: 14)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 288, column: 14)
!657 = !DILocalVariable(name: "__ret_warn_on", scope: !658, file: !3, line: 292, type: !41)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 292, column: 6)
!659 = distinct !DILexicalBlock(scope: !646, file: !3, line: 292, column: 6)
!660 = !DILocalVariable(name: "__flags", scope: !661, file: !3, line: 292, type: !41)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 292, column: 6)
!662 = distinct !DILexicalBlock(scope: !658, file: !3, line: 292, column: 6)
!663 = !DILocation(line: 284, column: 2, scope: !646)
!664 = !DILocation(line: 284, column: 9, scope: !646)
!665 = !DILocation(line: 284, column: 15, scope: !646)
!666 = !DILocation(line: 285, column: 2, scope: !646)
!667 = !DILocation(line: 285, column: 15, scope: !646)
!668 = !DILocation(line: 287, column: 8, scope: !646)
!669 = !DILocation(line: 287, column: 6, scope: !646)
!670 = !DILocation(line: 288, column: 7, scope: !653)
!671 = !DILocation(line: 288, column: 11, scope: !653)
!672 = !DILocation(line: 288, column: 14, scope: !652)
!673 = !DILocation(line: 288, column: 14, scope: !656)
!674 = !DILocation(line: 288, column: 14, scope: !655)
!675 = !DILocation(line: 288, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !655, file: !3, line: 288, column: 14)
!677 = !DILocation(line: 288, column: 14, scope: !678)
!678 = distinct !DILexicalBlock(scope: !655, file: !3, line: 288, column: 14)
!679 = !{i64 2154766656, i64 2154766685, i64 2154766731, i64 2154766789, i64 2154766843, i64 2154766897, i64 2154766952, i64 2154766983, i64 2154767291, i64 2154767297, i64 2154767344, i64 2154767367, i64 2154767393}
!680 = !DILocation(line: 288, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !655, file: !3, line: 288, column: 14)
!682 = !DILocation(line: 288, column: 14, scope: !653)
!683 = !DILocation(line: 288, column: 44, scope: !653)
!684 = !DILocation(line: 288, column: 57, scope: !653)
!685 = !DILocation(line: 288, column: 47, scope: !653)
!686 = !DILocation(line: 288, column: 6, scope: !646)
!687 = !DILocation(line: 289, column: 3, scope: !653)
!688 = !DILocation(line: 291, column: 15, scope: !646)
!689 = !DILocation(line: 291, column: 13, scope: !646)
!690 = !DILocation(line: 292, column: 6, scope: !658)
!691 = !DILocation(line: 292, column: 6, scope: !662)
!692 = !DILocation(line: 292, column: 6, scope: !661)
!693 = !DILocation(line: 292, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !661, file: !3, line: 292, column: 6)
!695 = !DILocation(line: 292, column: 6, scope: !696)
!696 = distinct !DILexicalBlock(scope: !661, file: !3, line: 292, column: 6)
!697 = !{i64 2154768162, i64 2154768191, i64 2154768237, i64 2154768295, i64 2154768349, i64 2154768403, i64 2154768458, i64 2154768489, i64 2154768797, i64 2154768803, i64 2154768850, i64 2154768873, i64 2154768899}
!698 = !DILocation(line: 292, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !661, file: !3, line: 292, column: 6)
!700 = !DILocation(line: 292, column: 6, scope: !659)
!701 = !DILocation(line: 292, column: 6, scope: !646)
!702 = !DILocation(line: 293, column: 3, scope: !659)
!703 = !DILocation(line: 295, column: 3, scope: !646)
!704 = !DILocation(line: 295, column: 17, scope: !646)
!705 = !DILocation(line: 295, column: 16, scope: !646)
!706 = !DILocation(line: 296, column: 33, scope: !646)
!707 = !DILocation(line: 296, column: 2, scope: !646)
!708 = !DILocation(line: 297, column: 1, scope: !646)
!709 = distinct !DISubprogram(name: "pti_finalize", scope: !3, file: !3, line: 666, type: !288, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!710 = !DILocation(line: 668, column: 6, scope: !709)
!711 = !DILocation(line: 668, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 668, column: 6)
!713 = !DILocation(line: 669, column: 3, scope: !712)
!714 = !DILocation(line: 675, column: 2, scope: !709)
!715 = !DILocation(line: 676, column: 2, scope: !709)
!716 = !DILocation(line: 678, column: 2, scope: !709)
!717 = !DILocation(line: 679, column: 1, scope: !709)
!718 = distinct !DISubprogram(name: "pti_clone_kernel_text", scope: !3, file: !3, line: 558, type: !288, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !719)
!719 = !{!720, !721, !722}
!720 = !DILocalVariable(name: "start", scope: !718, file: !3, line: 565, type: !43)
!721 = !DILocalVariable(name: "end_clone", scope: !718, file: !3, line: 566, type: !43)
!722 = !DILocalVariable(name: "end_global", scope: !718, file: !3, line: 567, type: !43)
!723 = !DILocation(line: 565, column: 2, scope: !718)
!724 = !DILocation(line: 565, column: 16, scope: !718)
!725 = !DILocation(line: 565, column: 24, scope: !718)
!726 = !DILocation(line: 566, column: 2, scope: !718)
!727 = !DILocation(line: 566, column: 16, scope: !718)
!728 = !DILocation(line: 567, column: 2, scope: !718)
!729 = !DILocation(line: 567, column: 16, scope: !718)
!730 = !DILocation(line: 567, column: 29, scope: !718)
!731 = !DILocation(line: 569, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !718, file: !3, line: 569, column: 6)
!733 = !DILocation(line: 569, column: 6, scope: !718)
!734 = !DILocation(line: 570, column: 3, scope: !732)
!735 = !DILocation(line: 572, column: 2, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 572, column: 2)
!737 = distinct !DILexicalBlock(scope: !718, file: !3, line: 572, column: 2)
!738 = !DILocation(line: 572, column: 2, scope: !737)
!739 = !DILocation(line: 579, column: 20, scope: !718)
!740 = !DILocation(line: 579, column: 27, scope: !718)
!741 = !DILocation(line: 579, column: 2, scope: !718)
!742 = !DILocation(line: 588, column: 20, scope: !718)
!743 = !DILocation(line: 588, column: 28, scope: !718)
!744 = !DILocation(line: 588, column: 41, scope: !718)
!745 = !DILocation(line: 588, column: 39, scope: !718)
!746 = !DILocation(line: 588, column: 48, scope: !718)
!747 = !DILocation(line: 588, column: 27, scope: !718)
!748 = !DILocation(line: 588, column: 2, scope: !718)
!749 = !DILocation(line: 589, column: 1, scope: !718)
!750 = !DISubprogram(name: "ptdump_walk_user_pgd_level_checkwx", scope: !501, file: !501, line: 35, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = distinct !DISubprogram(name: "constant_test_bit", scope: !426, file: !426, line: 204, type: !752, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!210, !52, !429}
!754 = !{!755, !756}
!755 = !DILocalVariable(name: "nr", arg: 1, scope: !751, file: !426, line: 204, type: !52)
!756 = !DILocalVariable(name: "addr", arg: 2, scope: !751, file: !426, line: 204, type: !429)
!757 = !DILocation(line: 204, column: 52, scope: !751)
!758 = !DILocation(line: 204, column: 86, scope: !751)
!759 = !DILocation(line: 206, column: 19, scope: !751)
!760 = !DILocation(line: 206, column: 22, scope: !751)
!761 = !DILocation(line: 206, column: 15, scope: !751)
!762 = !DILocation(line: 207, column: 4, scope: !751)
!763 = !DILocation(line: 207, column: 9, scope: !751)
!764 = !DILocation(line: 207, column: 12, scope: !751)
!765 = !DILocation(line: 206, column: 44, scope: !751)
!766 = !DILocation(line: 207, column: 37, scope: !751)
!767 = !DILocation(line: 206, column: 2, scope: !751)
!768 = distinct !DISubprogram(name: "variable_test_bit", scope: !426, file: !426, line: 224, type: !752, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!769 = !{!770, !771, !772}
!770 = !DILocalVariable(name: "nr", arg: 1, scope: !768, file: !426, line: 224, type: !52)
!771 = !DILocalVariable(name: "addr", arg: 2, scope: !768, file: !426, line: 224, type: !429)
!772 = !DILocalVariable(name: "oldbit", scope: !768, file: !426, line: 226, type: !210)
!773 = !DILocation(line: 224, column: 52, scope: !768)
!774 = !DILocation(line: 224, column: 86, scope: !768)
!775 = !DILocation(line: 226, column: 2, scope: !768)
!776 = !DILocation(line: 226, column: 7, scope: !768)
!777 = !DILocation(line: 231, column: 33, scope: !768)
!778 = !DILocation(line: 231, column: 46, scope: !768)
!779 = !DILocation(line: 228, column: 2, scope: !768)
!780 = !{i64 2147816319, i64 2147816393}
!781 = !DILocation(line: 233, column: 9, scope: !768)
!782 = !DILocation(line: 234, column: 1, scope: !768)
!783 = !DILocation(line: 233, column: 2, scope: !768)
!784 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !785, file: !785, line: 80, type: !786, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!785 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!786 = !DISubroutineType(types: !787)
!787 = !{null, !788, !791}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 61, baseType: !402)
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "v", arg: 1, scope: !784, file: !785, line: 80, type: !788)
!794 = !DILocalVariable(name: "size", arg: 2, scope: !784, file: !785, line: 80, type: !791)
!795 = !DILocation(line: 80, column: 74, scope: !784)
!796 = !DILocation(line: 80, column: 84, scope: !784)
!797 = !DILocation(line: 82, column: 20, scope: !784)
!798 = !DILocation(line: 82, column: 23, scope: !784)
!799 = !DILocation(line: 82, column: 2, scope: !784)
!800 = !DILocation(line: 83, column: 2, scope: !784)
!801 = !DILocation(line: 84, column: 1, scope: !784)
!802 = distinct !DISubprogram(name: "arch_set_bit", scope: !426, file: !426, line: 52, type: !448, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!803 = !{!804, !805}
!804 = !DILocalVariable(name: "nr", arg: 1, scope: !802, file: !426, line: 52, type: !52)
!805 = !DILocalVariable(name: "addr", arg: 2, scope: !802, file: !426, line: 52, type: !450)
!806 = !DILocation(line: 52, column: 19, scope: !802)
!807 = !DILocation(line: 52, column: 47, scope: !802)
!808 = !DILocation(line: 54, column: 27, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !426, line: 54, column: 6)
!810 = !DILocation(line: 54, column: 6, scope: !809)
!811 = !DILocation(line: 54, column: 6, scope: !802)
!812 = !DILocation(line: 56, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !426, line: 54, column: 32)
!814 = !DILocation(line: 57, column: 12, scope: !813)
!815 = !DILocation(line: 55, column: 3, scope: !813)
!816 = !{i64 2147802707, i64 2147802746, i64 2147802767, i64 2147802804, i64 2147802827, i64 2147802697}
!817 = !DILocation(line: 59, column: 2, scope: !813)
!818 = !DILocation(line: 61, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !809, file: !426, line: 59, column: 9)
!820 = !DILocation(line: 61, column: 32, scope: !819)
!821 = !DILocation(line: 60, column: 3, scope: !819)
!822 = !{i64 2147802992, i64 2147803031, i64 2147803052, i64 2147803089, i64 2147803112, i64 2147802982}
!823 = !DILocation(line: 63, column: 1, scope: !802)
!824 = distinct !DISubprogram(name: "kasan_check_write", scope: !825, file: !825, line: 44, type: !826, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!825 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!826 = !DISubroutineType(types: !827)
!827 = !{!210, !788, !6}
!828 = !{!829, !830}
!829 = !DILocalVariable(name: "p", arg: 1, scope: !824, file: !825, line: 44, type: !788)
!830 = !DILocalVariable(name: "size", arg: 2, scope: !824, file: !825, line: 44, type: !6)
!831 = !DILocation(line: 44, column: 59, scope: !824)
!832 = !DILocation(line: 44, column: 75, scope: !824)
!833 = !DILocation(line: 46, column: 2, scope: !824)
!834 = distinct !DISubprogram(name: "kcsan_check_access", scope: !835, file: !835, line: 229, type: !836, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!835 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!836 = !DISubroutineType(types: !837)
!837 = !{null, !788, !791, !41}
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "ptr", arg: 1, scope: !834, file: !835, line: 229, type: !788)
!840 = !DILocalVariable(name: "size", arg: 2, scope: !834, file: !835, line: 229, type: !791)
!841 = !DILocalVariable(name: "type", arg: 3, scope: !834, file: !835, line: 230, type: !41)
!842 = !DILocation(line: 229, column: 60, scope: !834)
!843 = !DILocation(line: 229, column: 72, scope: !834)
!844 = !DILocation(line: 230, column: 15, scope: !834)
!845 = !DILocation(line: 230, column: 23, scope: !834)
!846 = distinct !DISubprogram(name: "ptr_set_bit", scope: !501, file: !501, line: 1421, type: !847, scopeLine: 1422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!49, !49, !41}
!849 = !{!850, !851, !852}
!850 = !DILocalVariable(name: "ptr", arg: 1, scope: !846, file: !501, line: 1421, type: !49)
!851 = !DILocalVariable(name: "bit", arg: 2, scope: !846, file: !501, line: 1421, type: !41)
!852 = !DILocalVariable(name: "__ptr", scope: !846, file: !501, line: 1423, type: !43)
!853 = !DILocation(line: 1421, column: 39, scope: !846)
!854 = !DILocation(line: 1421, column: 48, scope: !846)
!855 = !DILocation(line: 1423, column: 2, scope: !846)
!856 = !DILocation(line: 1423, column: 16, scope: !846)
!857 = !DILocation(line: 1423, column: 39, scope: !846)
!858 = !DILocation(line: 1423, column: 24, scope: !846)
!859 = !DILocation(line: 1425, column: 11, scope: !846)
!860 = !DILocation(line: 1425, column: 8, scope: !846)
!861 = !DILocation(line: 1426, column: 17, scope: !846)
!862 = !DILocation(line: 1426, column: 9, scope: !846)
!863 = !DILocation(line: 1427, column: 1, scope: !846)
!864 = !DILocation(line: 1426, column: 2, scope: !846)
!865 = distinct !DISubprogram(name: "pti_clone_p4d", scope: !3, file: !3, line: 422, type: !866, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !43}
!868 = !{!869, !870, !871, !872}
!869 = !DILocalVariable(name: "addr", arg: 1, scope: !865, file: !3, line: 422, type: !43)
!870 = !DILocalVariable(name: "kernel_p4d", scope: !865, file: !3, line: 424, type: !113)
!871 = !DILocalVariable(name: "user_p4d", scope: !865, file: !3, line: 424, type: !113)
!872 = !DILocalVariable(name: "kernel_pgd", scope: !865, file: !3, line: 425, type: !122)
!873 = !DILocation(line: 422, column: 48, scope: !865)
!874 = !DILocation(line: 424, column: 2, scope: !865)
!875 = !DILocation(line: 424, column: 9, scope: !865)
!876 = !DILocation(line: 424, column: 22, scope: !865)
!877 = !DILocation(line: 425, column: 2, scope: !865)
!878 = !DILocation(line: 425, column: 9, scope: !865)
!879 = !DILocation(line: 427, column: 41, scope: !865)
!880 = !DILocation(line: 427, column: 13, scope: !865)
!881 = !DILocation(line: 427, column: 11, scope: !865)
!882 = !DILocation(line: 428, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !865, file: !3, line: 428, column: 6)
!884 = !DILocation(line: 428, column: 6, scope: !865)
!885 = !DILocation(line: 429, column: 3, scope: !883)
!886 = !DILocation(line: 431, column: 15, scope: !865)
!887 = !DILocation(line: 431, column: 13, scope: !865)
!888 = !DILocation(line: 432, column: 26, scope: !865)
!889 = !DILocation(line: 432, column: 38, scope: !865)
!890 = !DILocation(line: 432, column: 15, scope: !865)
!891 = !DILocation(line: 432, column: 13, scope: !865)
!892 = !DILocation(line: 433, column: 3, scope: !865)
!893 = !DILocation(line: 433, column: 15, scope: !865)
!894 = !DILocation(line: 433, column: 14, scope: !865)
!895 = !DILocation(line: 434, column: 1, scope: !865)
!896 = distinct !DISubprogram(name: "find_next_bit", scope: !897, file: !897, line: 54, type: !898, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!897 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!898 = !DISubroutineType(types: !899)
!899 = !{!43, !900, !43, !43}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!902 = !{!903, !904, !905, !906}
!903 = !DILocalVariable(name: "addr", arg: 1, scope: !896, file: !897, line: 54, type: !900)
!904 = !DILocalVariable(name: "size", arg: 2, scope: !896, file: !897, line: 54, type: !43)
!905 = !DILocalVariable(name: "offset", arg: 3, scope: !896, file: !897, line: 55, type: !43)
!906 = !DILocalVariable(name: "val", scope: !907, file: !897, line: 58, type: !43)
!907 = distinct !DILexicalBlock(scope: !908, file: !897, line: 57, column: 31)
!908 = distinct !DILexicalBlock(scope: !896, file: !897, line: 57, column: 6)
!909 = !DILocation(line: 54, column: 50, scope: !896)
!910 = !DILocation(line: 54, column: 70, scope: !896)
!911 = !DILocation(line: 55, column: 22, scope: !896)
!912 = !DILocation(line: 57, column: 6, scope: !908)
!913 = !DILocation(line: 57, column: 6, scope: !896)
!914 = !DILocation(line: 58, column: 3, scope: !907)
!915 = !DILocation(line: 58, column: 17, scope: !907)
!916 = !DILocation(line: 60, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !907, file: !897, line: 60, column: 7)
!918 = !DILocation(line: 60, column: 7, scope: !907)
!919 = !DILocation(line: 61, column: 11, scope: !917)
!920 = !DILocation(line: 61, column: 4, scope: !917)
!921 = !DILocation(line: 63, column: 10, scope: !907)
!922 = !DILocation(line: 63, column: 9, scope: !907)
!923 = !DILocation(line: 63, column: 17, scope: !907)
!924 = !DILocation(line: 63, column: 15, scope: !907)
!925 = !DILocation(line: 63, column: 7, scope: !907)
!926 = !DILocation(line: 64, column: 10, scope: !907)
!927 = !DILocation(line: 64, column: 16, scope: !907)
!928 = !DILocation(line: 64, column: 29, scope: !907)
!929 = !DILocation(line: 64, column: 3, scope: !907)
!930 = !DILocation(line: 65, column: 2, scope: !908)
!931 = !DILocation(line: 67, column: 24, scope: !896)
!932 = !DILocation(line: 67, column: 30, scope: !896)
!933 = !DILocation(line: 67, column: 36, scope: !896)
!934 = !DILocation(line: 67, column: 9, scope: !896)
!935 = !DILocation(line: 67, column: 2, scope: !896)
!936 = !DILocation(line: 68, column: 1, scope: !896)
!937 = !DISubprogram(name: "per_cpu_ptr_to_phys", scope: !938, file: !938, line: 138, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!938 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!939 = !DISubroutineType(types: !940)
!940 = !{!119, !49}
!941 = !DILocation(line: 244, column: 57, scope: !238)
!942 = !DILocation(line: 244, column: 71, scope: !238)
!943 = !DILocation(line: 246, column: 2, scope: !238)
!944 = !DILocation(line: 246, column: 8, scope: !238)
!945 = !DILocation(line: 247, column: 2, scope: !238)
!946 = !DILocation(line: 247, column: 9, scope: !238)
!947 = !DILocation(line: 248, column: 2, scope: !238)
!948 = !DILocation(line: 248, column: 9, scope: !238)
!949 = !DILocation(line: 250, column: 36, scope: !238)
!950 = !DILocation(line: 250, column: 8, scope: !238)
!951 = !DILocation(line: 250, column: 6, scope: !238)
!952 = !DILocation(line: 251, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !238, file: !3, line: 251, column: 6)
!954 = !DILocation(line: 251, column: 6, scope: !238)
!955 = !DILocation(line: 252, column: 3, scope: !953)
!956 = !DILocation(line: 255, column: 17, scope: !252)
!957 = !DILocation(line: 255, column: 6, scope: !252)
!958 = !DILocation(line: 255, column: 6, scope: !238)
!959 = !DILocation(line: 257, column: 7, scope: !250)
!960 = !DILocation(line: 257, column: 7, scope: !251)
!961 = !DILocation(line: 258, column: 4, scope: !962)
!962 = distinct !DILexicalBlock(scope: !250, file: !3, line: 257, column: 18)
!963 = !DILocation(line: 259, column: 3, scope: !962)
!964 = !DILocation(line: 260, column: 4, scope: !248)
!965 = !DILocation(line: 260, column: 4, scope: !255)
!966 = !DILocation(line: 260, column: 4, scope: !254)
!967 = !DILocation(line: 260, column: 4, scope: !968)
!968 = distinct !DILexicalBlock(scope: !254, file: !3, line: 260, column: 4)
!969 = !DILocation(line: 260, column: 4, scope: !970)
!970 = distinct !DILexicalBlock(scope: !254, file: !3, line: 260, column: 4)
!971 = !{i64 2154761244, i64 2154761273, i64 2154761319, i64 2154761377, i64 2154761431, i64 2154761485, i64 2154761540, i64 2154761571, i64 2154761879, i64 2154761885, i64 2154761932, i64 2154761955, i64 2154761981}
!972 = !DILocation(line: 260, column: 4, scope: !973)
!973 = distinct !DILexicalBlock(scope: !254, file: !3, line: 260, column: 4)
!974 = !DILocation(line: 260, column: 4, scope: !249)
!975 = !DILocation(line: 261, column: 4, scope: !249)
!976 = !DILocation(line: 263, column: 2, scope: !251)
!977 = !DILocation(line: 265, column: 16, scope: !258)
!978 = !DILocation(line: 265, column: 6, scope: !258)
!979 = !DILocation(line: 265, column: 6, scope: !238)
!980 = !DILocation(line: 266, column: 3, scope: !257)
!981 = !DILocation(line: 266, column: 17, scope: !257)
!982 = !DILocation(line: 266, column: 32, scope: !257)
!983 = !DILocation(line: 267, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !257, file: !3, line: 267, column: 7)
!985 = !DILocation(line: 267, column: 7, scope: !257)
!986 = !DILocation(line: 268, column: 4, scope: !984)
!987 = !DILocation(line: 270, column: 3, scope: !257)
!988 = !DILocation(line: 271, column: 2, scope: !258)
!989 = !DILocation(line: 271, column: 2, scope: !257)
!990 = !DILocation(line: 273, column: 26, scope: !238)
!991 = !DILocation(line: 273, column: 31, scope: !238)
!992 = !DILocation(line: 273, column: 8, scope: !238)
!993 = !DILocation(line: 273, column: 6, scope: !238)
!994 = !DILocation(line: 274, column: 17, scope: !262)
!995 = !DILocation(line: 274, column: 6, scope: !262)
!996 = !DILocation(line: 274, column: 22, scope: !262)
!997 = !DILocation(line: 274, column: 6, scope: !238)
!998 = !DILocation(line: 275, column: 3, scope: !260)
!999 = !DILocation(line: 275, column: 3, scope: !264)
!1000 = !DILocation(line: 275, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !264, file: !3, line: 275, column: 3)
!1002 = !DILocation(line: 0, scope: !1001)
!1003 = !DILocation(line: 275, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 275, column: 3)
!1005 = !DILocation(line: 275, column: 3, scope: !265)
!1006 = !DILocation(line: 275, column: 3, scope: !268)
!1007 = !DILocation(line: 275, column: 3, scope: !272)
!1008 = !DILocation(line: 275, column: 3, scope: !271)
!1009 = !DILocation(line: 275, column: 3, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !271, file: !3, line: 275, column: 3)
!1011 = !DILocation(line: 275, column: 3, scope: !270)
!1012 = !DILocation(line: 275, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !270, file: !3, line: 275, column: 3)
!1014 = !DILocation(line: 275, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !270, file: !3, line: 275, column: 3)
!1016 = !{i64 2154764928, i64 2154764957, i64 2154765003, i64 2154765061, i64 2154765115, i64 2154765169, i64 2154765224, i64 2154765255, i64 2154765563, i64 2154765569, i64 2154765616, i64 2154765639, i64 2154765665}
!1017 = !DILocation(line: 275, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !270, file: !3, line: 275, column: 3)
!1019 = !DILocation(line: 275, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !271, file: !3, line: 275, column: 3)
!1021 = !DILocation(line: 275, column: 3, scope: !261)
!1022 = !DILocation(line: 276, column: 3, scope: !261)
!1023 = !DILocation(line: 278, column: 9, scope: !238)
!1024 = !DILocation(line: 278, column: 2, scope: !238)
!1025 = !DILocation(line: 279, column: 1, scope: !238)
!1026 = distinct !DISubprogram(name: "pfn_pte", scope: !501, file: !501, line: 747, type: !1027, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!140, !43, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !32, line: 297, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !32, line: 297, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1030, file: !32, line: 297, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !45, line: 19, baseType: !43)
!1034 = !{!1035, !1036, !1037}
!1035 = !DILocalVariable(name: "page_nr", arg: 1, scope: !1026, file: !501, line: 747, type: !43)
!1036 = !DILocalVariable(name: "pgprot", arg: 2, scope: !1026, file: !501, line: 747, type: !1029)
!1037 = !DILocalVariable(name: "pfn", scope: !1026, file: !501, line: 749, type: !119)
!1038 = !DILocation(line: 747, column: 43, scope: !1026)
!1039 = !DILocation(line: 747, column: 61, scope: !1026)
!1040 = !DILocation(line: 749, column: 2, scope: !1026)
!1041 = !DILocation(line: 749, column: 14, scope: !1026)
!1042 = !DILocation(line: 749, column: 33, scope: !1026)
!1043 = !DILocation(line: 749, column: 41, scope: !1026)
!1044 = !DILocation(line: 750, column: 23, scope: !1026)
!1045 = !DILocation(line: 750, column: 9, scope: !1026)
!1046 = !DILocation(line: 750, column: 6, scope: !1026)
!1047 = !DILocation(line: 751, column: 6, scope: !1026)
!1048 = !DILocation(line: 752, column: 9, scope: !1026)
!1049 = !DILocation(line: 753, column: 1, scope: !1026)
!1050 = !DILocation(line: 171, column: 57, scope: !199)
!1051 = !DILocation(line: 173, column: 2, scope: !199)
!1052 = !DILocation(line: 173, column: 9, scope: !199)
!1053 = !DILocation(line: 173, column: 35, scope: !199)
!1054 = !DILocation(line: 173, column: 15, scope: !199)
!1055 = !DILocation(line: 174, column: 2, scope: !199)
!1056 = !DILocation(line: 174, column: 8, scope: !199)
!1057 = !DILocation(line: 176, column: 6, scope: !209)
!1058 = !DILocation(line: 176, column: 16, scope: !209)
!1059 = !DILocation(line: 176, column: 14, scope: !209)
!1060 = !DILocation(line: 176, column: 6, scope: !199)
!1061 = !DILocation(line: 177, column: 3, scope: !207)
!1062 = !DILocation(line: 177, column: 3, scope: !213)
!1063 = !DILocation(line: 177, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !213, file: !3, line: 177, column: 3)
!1065 = !DILocation(line: 0, scope: !1064)
!1066 = !DILocation(line: 177, column: 3, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 177, column: 3)
!1068 = !DILocation(line: 177, column: 3, scope: !214)
!1069 = !DILocation(line: 177, column: 3, scope: !217)
!1070 = !DILocation(line: 177, column: 3, scope: !221)
!1071 = !DILocation(line: 177, column: 3, scope: !220)
!1072 = !DILocation(line: 177, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !220, file: !3, line: 177, column: 3)
!1074 = !DILocation(line: 177, column: 3, scope: !219)
!1075 = !DILocation(line: 177, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !219, file: !3, line: 177, column: 3)
!1077 = !DILocation(line: 177, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !219, file: !3, line: 177, column: 3)
!1079 = !{i64 2154747472, i64 2154747501, i64 2154747547, i64 2154747605, i64 2154747659, i64 2154747713, i64 2154747768, i64 2154747799, i64 2154748107, i64 2154748113, i64 2154748160, i64 2154748183, i64 2154748209}
!1080 = !DILocation(line: 177, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !219, file: !3, line: 177, column: 3)
!1082 = !DILocation(line: 177, column: 3, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !220, file: !3, line: 177, column: 3)
!1084 = !DILocation(line: 177, column: 3, scope: !208)
!1085 = !DILocation(line: 178, column: 3, scope: !208)
!1086 = !DILocation(line: 181, column: 16, scope: !224)
!1087 = !DILocation(line: 181, column: 6, scope: !224)
!1088 = !DILocation(line: 181, column: 6, scope: !199)
!1089 = !DILocation(line: 182, column: 3, scope: !223)
!1090 = !DILocation(line: 182, column: 17, scope: !223)
!1091 = !DILocation(line: 182, column: 32, scope: !223)
!1092 = !DILocation(line: 183, column: 7, scope: !226)
!1093 = !DILocation(line: 183, column: 7, scope: !230)
!1094 = !DILocation(line: 183, column: 7, scope: !229)
!1095 = !DILocation(line: 183, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !229, file: !3, line: 183, column: 7)
!1097 = !DILocation(line: 183, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !229, file: !3, line: 183, column: 7)
!1099 = !{i64 2154749099, i64 2154749128, i64 2154749174, i64 2154749232, i64 2154749286, i64 2154749340, i64 2154749395, i64 2154749426, i64 2154749734, i64 2154749740, i64 2154749787, i64 2154749810, i64 2154749836}
!1100 = !DILocation(line: 183, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !229, file: !3, line: 183, column: 7)
!1102 = !DILocation(line: 183, column: 7, scope: !227)
!1103 = !DILocation(line: 183, column: 7, scope: !223)
!1104 = !DILocation(line: 184, column: 4, scope: !227)
!1105 = !DILocation(line: 186, column: 3, scope: !223)
!1106 = !DILocation(line: 187, column: 2, scope: !224)
!1107 = !DILocation(line: 187, column: 2, scope: !223)
!1108 = !DILocation(line: 188, column: 2, scope: !199)
!1109 = !DILocation(line: 188, column: 2, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 188, column: 2)
!1111 = distinct !DILexicalBlock(scope: !199, file: !3, line: 188, column: 2)
!1112 = !DILocation(line: 188, column: 2, scope: !1111)
!1113 = !{i32 -2140215044}
!1114 = !DILocation(line: 190, column: 20, scope: !199)
!1115 = !DILocation(line: 190, column: 25, scope: !199)
!1116 = !DILocation(line: 190, column: 9, scope: !199)
!1117 = !DILocation(line: 190, column: 2, scope: !199)
!1118 = !DILocation(line: 191, column: 1, scope: !199)
!1119 = distinct !DISubprogram(name: "pgd_offset_pgd", scope: !1120, file: !1120, line: 136, type: !1121, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1120 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!122, !122, !43}
!1123 = !{!1124, !1125}
!1124 = !DILocalVariable(name: "pgd", arg: 1, scope: !1119, file: !1120, line: 136, type: !122)
!1125 = !DILocalVariable(name: "address", arg: 2, scope: !1119, file: !1120, line: 136, type: !43)
!1126 = !DILocation(line: 136, column: 44, scope: !1119)
!1127 = !DILocation(line: 136, column: 63, scope: !1119)
!1128 = !DILocation(line: 138, column: 10, scope: !1119)
!1129 = !DILocation(line: 138, column: 16, scope: !1119)
!1130 = !DILocation(line: 138, column: 14, scope: !1119)
!1131 = !DILocation(line: 138, column: 2, scope: !1119)
!1132 = distinct !DISubprogram(name: "p4d_offset", scope: !501, file: !501, line: 1149, type: !1133, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!113, !122, !43}
!1135 = !{!1136, !1137}
!1136 = !DILocalVariable(name: "pgd", arg: 1, scope: !1132, file: !501, line: 1149, type: !122)
!1137 = !DILocalVariable(name: "address", arg: 2, scope: !1132, file: !501, line: 1149, type: !43)
!1138 = !DILocation(line: 1149, column: 40, scope: !1132)
!1139 = !DILocation(line: 1149, column: 59, scope: !1132)
!1140 = !DILocation(line: 1151, column: 6, scope: !1132)
!1141 = !DILocation(line: 1151, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1132, file: !501, line: 1151, column: 6)
!1143 = !DILocation(line: 1152, column: 19, scope: !1142)
!1144 = !DILocation(line: 1152, column: 3, scope: !1142)
!1145 = !DILocation(line: 1153, column: 34, scope: !1132)
!1146 = !DILocation(line: 1153, column: 18, scope: !1132)
!1147 = !DILocation(line: 1153, column: 9, scope: !1132)
!1148 = !DILocation(line: 1153, column: 51, scope: !1132)
!1149 = !DILocation(line: 1153, column: 41, scope: !1132)
!1150 = !DILocation(line: 1153, column: 39, scope: !1132)
!1151 = !DILocation(line: 1153, column: 2, scope: !1132)
!1152 = !DILocation(line: 1154, column: 1, scope: !1132)
!1153 = !DISubprogram(name: "__warn_printk", scope: !1154, file: !1154, line: 93, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !104, null}
!1157 = distinct !DISubprogram(name: "pgd_none", scope: !501, file: !501, line: 1169, type: !1158, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!41, !108}
!1160 = !{!1161}
!1161 = !DILocalVariable(name: "pgd", arg: 1, scope: !1157, file: !501, line: 1169, type: !108)
!1162 = !DILocation(line: 1169, column: 34, scope: !1157)
!1163 = !DILocation(line: 1171, column: 6, scope: !1157)
!1164 = !DILocation(line: 1171, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !501, line: 1171, column: 6)
!1166 = !DILocation(line: 1172, column: 3, scope: !1165)
!1167 = !DILocation(line: 1179, column: 10, scope: !1157)
!1168 = !DILocation(line: 1179, column: 9, scope: !1157)
!1169 = !DILocation(line: 1179, column: 2, scope: !1157)
!1170 = !DILocation(line: 1180, column: 1, scope: !1157)
!1171 = !DISubprogram(name: "__get_free_pages", scope: !1172, file: !1172, line: 289, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!43, !102, !6}
!1175 = distinct !DISubprogram(name: "native_set_pgd", scope: !1176, file: !1176, line: 161, type: !1177, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1176 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !122, !108}
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "pgdp", arg: 1, scope: !1175, file: !1176, line: 161, type: !122)
!1181 = !DILocalVariable(name: "pgd", arg: 2, scope: !1175, file: !1176, line: 161, type: !108)
!1182 = !DILocation(line: 161, column: 42, scope: !1175)
!1183 = !DILocation(line: 161, column: 54, scope: !1175)
!1184 = !DILocation(line: 163, column: 2, scope: !1175)
!1185 = !DILocation(line: 163, column: 2, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !1176, line: 163, column: 2)
!1187 = !DILocation(line: 163, column: 2, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1186, file: !1176, line: 163, column: 2)
!1189 = !DILocation(line: 163, column: 2, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !1176, line: 163, column: 2)
!1191 = !DILocation(line: 164, column: 1, scope: !1175)
!1192 = distinct !DISubprogram(name: "native_make_pgd", scope: !32, file: !32, line: 330, type: !1193, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!108, !112}
!1195 = !{!1196}
!1196 = !DILocalVariable(name: "val", arg: 1, scope: !1192, file: !32, line: 330, type: !112)
!1197 = !DILocation(line: 330, column: 46, scope: !1192)
!1198 = !DILocation(line: 332, column: 17, scope: !1192)
!1199 = !DILocation(line: 332, column: 19, scope: !1192)
!1200 = !DILocation(line: 332, column: 23, scope: !1192)
!1201 = !DILocation(line: 332, column: 2, scope: !1192)
!1202 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !1203, file: !1203, line: 22, type: !1204, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1206)
!1203 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!43, !43}
!1206 = !{!1207, !1208}
!1207 = !DILocalVariable(name: "x", arg: 1, scope: !1202, file: !1203, line: 22, type: !43)
!1208 = !DILocalVariable(name: "y", scope: !1202, file: !1203, line: 24, type: !43)
!1209 = !DILocation(line: 22, column: 72, scope: !1202)
!1210 = !DILocation(line: 24, column: 2, scope: !1202)
!1211 = !DILocation(line: 24, column: 16, scope: !1202)
!1212 = !DILocation(line: 24, column: 20, scope: !1202)
!1213 = !DILocation(line: 24, column: 22, scope: !1202)
!1214 = !DILocation(line: 27, column: 6, scope: !1202)
!1215 = !DILocation(line: 27, column: 12, scope: !1202)
!1216 = !DILocation(line: 27, column: 16, scope: !1202)
!1217 = !DILocation(line: 27, column: 14, scope: !1202)
!1218 = !DILocation(line: 27, column: 11, scope: !1202)
!1219 = !DILocation(line: 27, column: 21, scope: !1202)
!1220 = !DILocation(line: 27, column: 55, scope: !1202)
!1221 = !DILocation(line: 27, column: 53, scope: !1202)
!1222 = !DILocation(line: 27, column: 8, scope: !1202)
!1223 = !DILocation(line: 27, column: 4, scope: !1202)
!1224 = !DILocation(line: 29, column: 9, scope: !1202)
!1225 = !DILocation(line: 30, column: 1, scope: !1202)
!1226 = !DILocation(line: 29, column: 2, scope: !1202)
!1227 = distinct !DISubprogram(name: "pgd_large", scope: !501, file: !501, line: 1406, type: !1158, scopeLine: 1406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1228 = !{!1229}
!1229 = !DILocalVariable(name: "pgd", arg: 1, scope: !1227, file: !501, line: 1406, type: !108)
!1230 = !DILocation(line: 1406, column: 35, scope: !1227)
!1231 = !DILocation(line: 1406, column: 42, scope: !1227)
!1232 = !DISubprogram(name: "__compiletime_assert_287", scope: !3, file: !3, line: 188, type: !288, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1233 = distinct !DISubprogram(name: "_static_cpu_has", scope: !1234, file: !1234, line: 173, type: !1235, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1237)
!1234 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!210, !88}
!1237 = !{!1238, !1239, !1240}
!1238 = !DILocalVariable(name: "bit", arg: 1, scope: !1233, file: !1234, line: 173, type: !88)
!1239 = !DILabel(scope: !1233, name: "t_yes", file: !1234, line: 187)
!1240 = !DILabel(scope: !1233, name: "t_no", file: !1234, line: 189)
!1241 = !DILocation(line: 173, column: 49, scope: !1233)
!1242 = !DILocation(line: 183, column: 24, scope: !1233)
!1243 = !DILocation(line: 184, column: 30, scope: !1233)
!1244 = !DILocation(line: 184, column: 34, scope: !1233)
!1245 = !DILocation(line: 184, column: 26, scope: !1233)
!1246 = !DILocation(line: 185, column: 70, scope: !1233)
!1247 = !DILocation(line: 185, column: 74, scope: !1233)
!1248 = !DILocation(line: 185, column: 25, scope: !1233)
!1249 = !DILocation(line: 175, column: 2, scope: !1233)
!1250 = !{i64 2149445708, i64 2149445741, i64 2149445747, i64 2149445763, i64 2149445782, i64 2149445813, i64 2149446766, i64 2149445355, i64 2149446772, i64 2149446820, i64 2149446884, i64 2149446948, i64 2149447005, i64 2149447212, i64 2149447260, i64 2149447324, i64 2149447388, i64 2149447445, i64 2149445473, i64 2149445498, i64 2149447655, i64 2149447783, i64 2149447716, i64 2149447797, i64 2149447811, i64 2149447927, i64 2149447872, i64 2149447941, i64 2149445632, i64 965033, i64 965073, i64 965082, i64 965132, i64 965153, i64 965173}
!1251 = !DILocation(line: 187, column: 1, scope: !1233)
!1252 = !DILocation(line: 188, column: 2, scope: !1233)
!1253 = !DILocation(line: 189, column: 1, scope: !1233)
!1254 = !DILocation(line: 190, column: 2, scope: !1233)
!1255 = !DILocation(line: 191, column: 1, scope: !1233)
!1256 = distinct !DISubprogram(name: "native_pgd_val", scope: !32, file: !32, line: 335, type: !1257, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!112, !108}
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "pgd", arg: 1, scope: !1256, file: !32, line: 335, type: !108)
!1261 = !DILocation(line: 335, column: 45, scope: !1256)
!1262 = !DILocation(line: 337, column: 13, scope: !1256)
!1263 = !DILocation(line: 337, column: 17, scope: !1256)
!1264 = !DILocation(line: 337, column: 2, scope: !1256)
!1265 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !501, file: !501, line: 903, type: !465, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1266 = !{!1267, !1268}
!1267 = !DILocalVariable(name: "pgdp", arg: 1, scope: !1265, file: !501, line: 903, type: !122)
!1268 = !DILocalVariable(name: "pgd", arg: 2, scope: !1265, file: !501, line: 903, type: !108)
!1269 = !DILocation(line: 903, column: 47, scope: !1265)
!1270 = !DILocation(line: 903, column: 59, scope: !1265)
!1271 = !DILocation(line: 905, column: 6, scope: !1265)
!1272 = !DILocation(line: 905, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !501, line: 905, column: 6)
!1274 = !DILocation(line: 906, column: 10, scope: !1273)
!1275 = !DILocation(line: 906, column: 3, scope: !1273)
!1276 = !DILocation(line: 907, column: 30, scope: !1265)
!1277 = !DILocation(line: 907, column: 9, scope: !1265)
!1278 = !DILocation(line: 907, column: 2, scope: !1265)
!1279 = !DILocation(line: 908, column: 1, scope: !1265)
!1280 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !501, file: !501, line: 1137, type: !1281, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!43, !108}
!1283 = !{!1284}
!1284 = !DILocalVariable(name: "pgd", arg: 1, scope: !1280, file: !501, line: 1137, type: !108)
!1285 = !DILocation(line: 1137, column: 50, scope: !1280)
!1286 = !DILocation(line: 1139, column: 24, scope: !1280)
!1287 = !DILocation(line: 1139, column: 9, scope: !1280)
!1288 = !DILocation(line: 1139, column: 2, scope: !1280)
!1289 = distinct !DISubprogram(name: "p4d_index", scope: !501, file: !501, line: 1124, type: !1204, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1290)
!1290 = !{!1291}
!1291 = !DILocalVariable(name: "address", arg: 1, scope: !1289, file: !501, line: 1124, type: !43)
!1292 = !DILocation(line: 1124, column: 53, scope: !1289)
!1293 = !DILocation(line: 1126, column: 10, scope: !1289)
!1294 = !DILocation(line: 1126, column: 18, scope: !1289)
!1295 = !DILocation(line: 1126, column: 35, scope: !1289)
!1296 = !DILocation(line: 1126, column: 48, scope: !1289)
!1297 = !DILocation(line: 1126, column: 34, scope: !1289)
!1298 = !DILocation(line: 1126, column: 32, scope: !1289)
!1299 = !DILocation(line: 1126, column: 2, scope: !1289)
!1300 = distinct !DISubprogram(name: "variable__ffs", scope: !426, file: !426, line: 250, type: !1204, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1301 = !{!1302}
!1302 = !DILocalVariable(name: "word", arg: 1, scope: !1300, file: !426, line: 250, type: !43)
!1303 = !DILocation(line: 250, column: 66, scope: !1300)
!1304 = !DILocation(line: 254, column: 11, scope: !1300)
!1305 = !DILocation(line: 252, column: 2, scope: !1300)
!1306 = !{i64 311394}
!1307 = !DILocation(line: 255, column: 9, scope: !1300)
!1308 = !DILocation(line: 255, column: 2, scope: !1300)
!1309 = !DISubprogram(name: "_find_next_bit", scope: !897, file: !897, line: 11, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = distinct !DISubprogram(name: "pti_user_pagetable_walk_pmd", scope: !3, file: !3, line: 199, type: !1311, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!131, !43}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1321, !1324, !1327, !1331, !1334, !1337, !1340}
!1314 = !DILocalVariable(name: "address", arg: 1, scope: !1310, file: !3, line: 199, type: !43)
!1315 = !DILocalVariable(name: "gfp", scope: !1310, file: !3, line: 201, type: !102)
!1316 = !DILocalVariable(name: "p4d", scope: !1310, file: !3, line: 202, type: !113)
!1317 = !DILocalVariable(name: "pud", scope: !1310, file: !3, line: 203, type: !123)
!1318 = !DILocalVariable(name: "new_pud_page", scope: !1319, file: !3, line: 211, type: !43)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 210, column: 22)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 210, column: 6)
!1321 = !DILocalVariable(name: "__ret_warn_on", scope: !1322, file: !3, line: 212, type: !41)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 212, column: 7)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 212, column: 7)
!1324 = !DILocalVariable(name: "__flags", scope: !1325, file: !3, line: 212, type: !41)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 212, column: 7)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 212, column: 7)
!1327 = !DILocalVariable(name: "__ret_warn_on", scope: !1328, file: !3, line: 221, type: !41)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 221, column: 3)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 220, column: 22)
!1330 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 220, column: 6)
!1331 = !DILocalVariable(name: "__flags", scope: !1332, file: !3, line: 221, type: !41)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 221, column: 3)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 221, column: 3)
!1334 = !DILocalVariable(name: "new_pmd_page", scope: !1335, file: !3, line: 225, type: !43)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 224, column: 22)
!1336 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 224, column: 6)
!1337 = !DILocalVariable(name: "__ret_warn_on", scope: !1338, file: !3, line: 226, type: !41)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 226, column: 7)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 226, column: 7)
!1340 = !DILocalVariable(name: "__flags", scope: !1341, file: !3, line: 226, type: !41)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 226, column: 7)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 226, column: 7)
!1343 = !DILocation(line: 199, column: 57, scope: !1310)
!1344 = !DILocation(line: 201, column: 2, scope: !1310)
!1345 = !DILocation(line: 201, column: 8, scope: !1310)
!1346 = !DILocation(line: 202, column: 2, scope: !1310)
!1347 = !DILocation(line: 202, column: 9, scope: !1310)
!1348 = !DILocation(line: 203, column: 2, scope: !1310)
!1349 = !DILocation(line: 203, column: 9, scope: !1310)
!1350 = !DILocation(line: 205, column: 36, scope: !1310)
!1351 = !DILocation(line: 205, column: 8, scope: !1310)
!1352 = !DILocation(line: 205, column: 6, scope: !1310)
!1353 = !DILocation(line: 206, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 206, column: 6)
!1355 = !DILocation(line: 206, column: 6, scope: !1310)
!1356 = !DILocation(line: 207, column: 3, scope: !1354)
!1357 = !DILocation(line: 209, column: 2, scope: !1310)
!1358 = !DILocation(line: 209, column: 2, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 209, column: 2)
!1360 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 209, column: 2)
!1361 = !DILocation(line: 209, column: 2, scope: !1360)
!1362 = !{i32 -2140213660}
!1363 = !DILocation(line: 210, column: 16, scope: !1320)
!1364 = !DILocation(line: 210, column: 6, scope: !1320)
!1365 = !DILocation(line: 210, column: 6, scope: !1310)
!1366 = !DILocation(line: 211, column: 3, scope: !1319)
!1367 = !DILocation(line: 211, column: 17, scope: !1319)
!1368 = !DILocation(line: 211, column: 32, scope: !1319)
!1369 = !DILocation(line: 212, column: 7, scope: !1322)
!1370 = !DILocation(line: 212, column: 7, scope: !1326)
!1371 = !DILocation(line: 212, column: 7, scope: !1325)
!1372 = !DILocation(line: 212, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 212, column: 7)
!1374 = !DILocation(line: 212, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 212, column: 7)
!1376 = !{i64 2154754245, i64 2154754274, i64 2154754320, i64 2154754378, i64 2154754432, i64 2154754486, i64 2154754541, i64 2154754572, i64 2154754880, i64 2154754886, i64 2154754933, i64 2154754956, i64 2154754982}
!1377 = !DILocation(line: 212, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 212, column: 7)
!1379 = !DILocation(line: 212, column: 7, scope: !1323)
!1380 = !DILocation(line: 212, column: 7, scope: !1319)
!1381 = !DILocation(line: 213, column: 4, scope: !1323)
!1382 = !DILocation(line: 215, column: 3, scope: !1319)
!1383 = !DILocation(line: 216, column: 2, scope: !1320)
!1384 = !DILocation(line: 216, column: 2, scope: !1319)
!1385 = !DILocation(line: 218, column: 19, scope: !1310)
!1386 = !DILocation(line: 218, column: 24, scope: !1310)
!1387 = !DILocation(line: 218, column: 8, scope: !1310)
!1388 = !DILocation(line: 218, column: 6, scope: !1310)
!1389 = !DILocation(line: 220, column: 16, scope: !1330)
!1390 = !DILocation(line: 220, column: 6, scope: !1330)
!1391 = !DILocation(line: 220, column: 6, scope: !1310)
!1392 = !DILocation(line: 221, column: 3, scope: !1328)
!1393 = !DILocation(line: 221, column: 3, scope: !1333)
!1394 = !DILocation(line: 221, column: 3, scope: !1332)
!1395 = !DILocation(line: 221, column: 3, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 221, column: 3)
!1397 = !DILocation(line: 221, column: 3, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 221, column: 3)
!1399 = !{i64 2154756799, i64 2154756828, i64 2154756874, i64 2154756932, i64 2154756986, i64 2154757040, i64 2154757095, i64 2154757126, i64 2154757434, i64 2154757440, i64 2154757487, i64 2154757510, i64 2154757536}
!1400 = !DILocation(line: 221, column: 3, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 221, column: 3)
!1402 = !DILocation(line: 221, column: 3, scope: !1329)
!1403 = !DILocation(line: 222, column: 3, scope: !1329)
!1404 = !DILocation(line: 224, column: 16, scope: !1336)
!1405 = !DILocation(line: 224, column: 6, scope: !1336)
!1406 = !DILocation(line: 224, column: 6, scope: !1310)
!1407 = !DILocation(line: 225, column: 3, scope: !1335)
!1408 = !DILocation(line: 225, column: 17, scope: !1335)
!1409 = !DILocation(line: 225, column: 32, scope: !1335)
!1410 = !DILocation(line: 226, column: 7, scope: !1338)
!1411 = !DILocation(line: 226, column: 7, scope: !1342)
!1412 = !DILocation(line: 226, column: 7, scope: !1341)
!1413 = !DILocation(line: 226, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 226, column: 7)
!1415 = !DILocation(line: 226, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 226, column: 7)
!1417 = !{i64 2154758369, i64 2154758398, i64 2154758444, i64 2154758502, i64 2154758556, i64 2154758610, i64 2154758665, i64 2154758696, i64 2154759004, i64 2154759010, i64 2154759057, i64 2154759080, i64 2154759106}
!1418 = !DILocation(line: 226, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 226, column: 7)
!1420 = !DILocation(line: 226, column: 7, scope: !1339)
!1421 = !DILocation(line: 226, column: 7, scope: !1335)
!1422 = !DILocation(line: 227, column: 4, scope: !1339)
!1423 = !DILocation(line: 229, column: 3, scope: !1335)
!1424 = !DILocation(line: 230, column: 2, scope: !1336)
!1425 = !DILocation(line: 230, column: 2, scope: !1335)
!1426 = !DILocation(line: 232, column: 20, scope: !1310)
!1427 = !DILocation(line: 232, column: 25, scope: !1310)
!1428 = !DILocation(line: 232, column: 9, scope: !1310)
!1429 = !DILocation(line: 232, column: 2, scope: !1310)
!1430 = !DILocation(line: 233, column: 1, scope: !1310)
!1431 = distinct !DISubprogram(name: "pmd_large", scope: !501, file: !501, line: 264, type: !1432, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!41, !132}
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "pte", arg: 1, scope: !1431, file: !501, line: 264, type: !132)
!1436 = !DILocation(line: 264, column: 35, scope: !1431)
!1437 = !DILocation(line: 266, column: 9, scope: !1431)
!1438 = !DILocation(line: 266, column: 24, scope: !1431)
!1439 = !DILocation(line: 266, column: 2, scope: !1431)
!1440 = distinct !DISubprogram(name: "native_set_pmd", scope: !1176, file: !1176, line: 81, type: !1441, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !131, !132}
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "pmdp", arg: 1, scope: !1440, file: !1176, line: 81, type: !131)
!1445 = !DILocalVariable(name: "pmd", arg: 2, scope: !1440, file: !1176, line: 81, type: !132)
!1446 = !DILocation(line: 81, column: 42, scope: !1440)
!1447 = !DILocation(line: 81, column: 54, scope: !1440)
!1448 = !DILocation(line: 83, column: 2, scope: !1440)
!1449 = !DILocation(line: 83, column: 2, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !1176, line: 83, column: 2)
!1451 = !DILocation(line: 83, column: 2, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !1176, line: 83, column: 2)
!1453 = !DILocation(line: 83, column: 2, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !1176, line: 83, column: 2)
!1455 = !DILocation(line: 84, column: 1, scope: !1440)
!1456 = distinct !DISubprogram(name: "native_make_pmd", scope: !32, file: !32, line: 398, type: !1457, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!132, !136}
!1459 = !{!1460}
!1460 = !DILocalVariable(name: "val", arg: 1, scope: !1456, file: !32, line: 398, type: !136)
!1461 = !DILocation(line: 398, column: 46, scope: !1456)
!1462 = !DILocation(line: 400, column: 17, scope: !1456)
!1463 = !DILocation(line: 400, column: 26, scope: !1456)
!1464 = !DILocation(line: 400, column: 2, scope: !1456)
!1465 = distinct !DISubprogram(name: "pmd_none", scope: !501, file: !501, line: 1004, type: !1432, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1466)
!1466 = !{!1467, !1468}
!1467 = !DILocalVariable(name: "pmd", arg: 1, scope: !1465, file: !501, line: 1004, type: !132)
!1468 = !DILocalVariable(name: "val", scope: !1465, file: !501, line: 1008, type: !43)
!1469 = !DILocation(line: 1004, column: 34, scope: !1465)
!1470 = !DILocation(line: 1008, column: 2, scope: !1465)
!1471 = !DILocation(line: 1008, column: 16, scope: !1465)
!1472 = !DILocation(line: 1008, column: 22, scope: !1465)
!1473 = !DILocation(line: 1009, column: 10, scope: !1465)
!1474 = !DILocation(line: 1009, column: 14, scope: !1465)
!1475 = !DILocation(line: 1009, column: 41, scope: !1465)
!1476 = !DILocation(line: 1010, column: 1, scope: !1465)
!1477 = !DILocation(line: 1009, column: 2, scope: !1465)
!1478 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !1120, file: !1120, line: 92, type: !1479, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!139, !131, !43}
!1481 = !{!1482, !1483}
!1482 = !DILocalVariable(name: "pmd", arg: 1, scope: !1478, file: !1120, line: 92, type: !131)
!1483 = !DILocalVariable(name: "address", arg: 2, scope: !1478, file: !1120, line: 92, type: !43)
!1484 = !DILocation(line: 92, column: 47, scope: !1478)
!1485 = !DILocation(line: 92, column: 66, scope: !1478)
!1486 = !DILocation(line: 94, column: 34, scope: !1478)
!1487 = !DILocation(line: 94, column: 18, scope: !1478)
!1488 = !DILocation(line: 94, column: 9, scope: !1478)
!1489 = !DILocation(line: 94, column: 51, scope: !1478)
!1490 = !DILocation(line: 94, column: 41, scope: !1478)
!1491 = !DILocation(line: 94, column: 39, scope: !1478)
!1492 = !DILocation(line: 94, column: 2, scope: !1478)
!1493 = distinct !DISubprogram(name: "pte_flags", scope: !32, file: !32, line: 483, type: !1494, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!44, !140}
!1496 = !{!1497}
!1497 = !DILocalVariable(name: "pte", arg: 1, scope: !1493, file: !32, line: 483, type: !140)
!1498 = !DILocation(line: 483, column: 40, scope: !1493)
!1499 = !DILocation(line: 485, column: 9, scope: !1493)
!1500 = !DILocation(line: 485, column: 29, scope: !1493)
!1501 = !DILocation(line: 485, column: 2, scope: !1493)
!1502 = distinct !DISubprogram(name: "p4d_large", scope: !501, file: !501, line: 255, type: !1503, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!41, !114}
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "p4d", arg: 1, scope: !1502, file: !501, line: 255, type: !114)
!1507 = !DILocation(line: 255, column: 35, scope: !1502)
!1508 = !DILocation(line: 258, column: 2, scope: !1502)
!1509 = !DISubprogram(name: "__compiletime_assert_288", scope: !3, file: !3, line: 209, type: !288, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1510 = distinct !DISubprogram(name: "p4d_none", scope: !501, file: !501, line: 1092, type: !1503, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "p4d", arg: 1, scope: !1510, file: !501, line: 1092, type: !114)
!1513 = !DILocation(line: 1092, column: 34, scope: !1510)
!1514 = !DILocation(line: 1094, column: 10, scope: !1510)
!1515 = !DILocation(line: 1094, column: 30, scope: !1510)
!1516 = !DILocation(line: 1094, column: 59, scope: !1510)
!1517 = !DILocation(line: 1094, column: 2, scope: !1510)
!1518 = distinct !DISubprogram(name: "native_set_p4d", scope: !1176, file: !1176, line: 142, type: !1519, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !113, !114}
!1521 = !{!1522, !1523, !1524}
!1522 = !DILocalVariable(name: "p4dp", arg: 1, scope: !1518, file: !1176, line: 142, type: !113)
!1523 = !DILocalVariable(name: "p4d", arg: 2, scope: !1518, file: !1176, line: 142, type: !114)
!1524 = !DILocalVariable(name: "pgd", scope: !1518, file: !1176, line: 144, type: !108)
!1525 = !DILocation(line: 142, column: 42, scope: !1518)
!1526 = !DILocation(line: 142, column: 54, scope: !1518)
!1527 = !DILocation(line: 144, column: 2, scope: !1518)
!1528 = !DILocation(line: 144, column: 8, scope: !1518)
!1529 = !DILocation(line: 146, column: 6, scope: !1518)
!1530 = !DILocation(line: 146, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !1176, line: 146, column: 6)
!1532 = !DILocation(line: 147, column: 3, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1531, file: !1176, line: 146, column: 72)
!1534 = !DILocation(line: 147, column: 3, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1533, file: !1176, line: 147, column: 3)
!1536 = !DILocation(line: 147, column: 3, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1535, file: !1176, line: 147, column: 3)
!1538 = !DILocation(line: 147, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !1176, line: 147, column: 3)
!1540 = !DILocation(line: 148, column: 3, scope: !1533)
!1541 = !DILocation(line: 151, column: 8, scope: !1518)
!1542 = !DILocation(line: 151, column: 24, scope: !1518)
!1543 = !DILocation(line: 152, column: 8, scope: !1518)
!1544 = !DILocation(line: 152, column: 36, scope: !1518)
!1545 = !DILocation(line: 153, column: 2, scope: !1518)
!1546 = !DILocation(line: 153, column: 2, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1518, file: !1176, line: 153, column: 2)
!1548 = !DILocation(line: 153, column: 2, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1547, file: !1176, line: 153, column: 2)
!1550 = !DILocation(line: 153, column: 2, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !1176, line: 153, column: 2)
!1552 = !DILocation(line: 154, column: 1, scope: !1518)
!1553 = distinct !DISubprogram(name: "native_make_p4d", scope: !32, file: !32, line: 348, type: !1554, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!114, !128}
!1556 = !{!1557}
!1557 = !DILocalVariable(name: "val", arg: 1, scope: !1553, file: !32, line: 348, type: !128)
!1558 = !DILocation(line: 348, column: 46, scope: !1553)
!1559 = !DILocation(line: 350, column: 17, scope: !1553)
!1560 = !DILocation(line: 350, column: 19, scope: !1553)
!1561 = !DILocation(line: 350, column: 2, scope: !1553)
!1562 = distinct !DISubprogram(name: "pud_offset", scope: !1120, file: !1120, line: 129, type: !1563, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!123, !113, !43}
!1565 = !{!1566, !1567}
!1566 = !DILocalVariable(name: "p4d", arg: 1, scope: !1562, file: !1120, line: 129, type: !113)
!1567 = !DILocalVariable(name: "address", arg: 2, scope: !1562, file: !1120, line: 129, type: !43)
!1568 = !DILocation(line: 129, column: 40, scope: !1562)
!1569 = !DILocation(line: 129, column: 59, scope: !1562)
!1570 = !DILocation(line: 131, column: 22, scope: !1562)
!1571 = !DILocation(line: 131, column: 9, scope: !1562)
!1572 = !DILocation(line: 131, column: 39, scope: !1562)
!1573 = !DILocation(line: 131, column: 29, scope: !1562)
!1574 = !DILocation(line: 131, column: 27, scope: !1562)
!1575 = !DILocation(line: 131, column: 2, scope: !1562)
!1576 = distinct !DISubprogram(name: "pud_large", scope: !501, file: !501, line: 1073, type: !1577, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!41, !124}
!1579 = !{!1580}
!1580 = !DILocalVariable(name: "pud", arg: 1, scope: !1576, file: !501, line: 1073, type: !124)
!1581 = !DILocation(line: 1073, column: 35, scope: !1576)
!1582 = !DILocation(line: 1075, column: 10, scope: !1576)
!1583 = !DILocation(line: 1075, column: 23, scope: !1576)
!1584 = !DILocation(line: 1075, column: 54, scope: !1576)
!1585 = !DILocation(line: 1075, column: 2, scope: !1576)
!1586 = distinct !DISubprogram(name: "pud_none", scope: !501, file: !501, line: 1051, type: !1577, scopeLine: 1052, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1587)
!1587 = !{!1588}
!1588 = !DILocalVariable(name: "pud", arg: 1, scope: !1586, file: !501, line: 1051, type: !124)
!1589 = !DILocation(line: 1051, column: 34, scope: !1586)
!1590 = !DILocation(line: 1053, column: 10, scope: !1586)
!1591 = !DILocation(line: 1053, column: 30, scope: !1586)
!1592 = !DILocation(line: 1053, column: 59, scope: !1586)
!1593 = !DILocation(line: 1053, column: 2, scope: !1586)
!1594 = distinct !DISubprogram(name: "native_set_pud", scope: !1176, file: !1176, line: 117, type: !1595, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !123, !124}
!1597 = !{!1598, !1599}
!1598 = !DILocalVariable(name: "pudp", arg: 1, scope: !1594, file: !1176, line: 117, type: !123)
!1599 = !DILocalVariable(name: "pud", arg: 2, scope: !1594, file: !1176, line: 117, type: !124)
!1600 = !DILocation(line: 117, column: 42, scope: !1594)
!1601 = !DILocation(line: 117, column: 54, scope: !1594)
!1602 = !DILocation(line: 119, column: 2, scope: !1594)
!1603 = !DILocation(line: 119, column: 2, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1594, file: !1176, line: 119, column: 2)
!1605 = !DILocation(line: 119, column: 2, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1604, file: !1176, line: 119, column: 2)
!1607 = !DILocation(line: 119, column: 2, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !1176, line: 119, column: 2)
!1609 = !DILocation(line: 120, column: 1, scope: !1594)
!1610 = distinct !DISubprogram(name: "native_make_pud", scope: !32, file: !32, line: 374, type: !1611, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!124, !136}
!1613 = !{!1614}
!1614 = !DILocalVariable(name: "val", arg: 1, scope: !1610, file: !32, line: 374, type: !136)
!1615 = !DILocation(line: 374, column: 46, scope: !1610)
!1616 = !DILocation(line: 376, column: 17, scope: !1610)
!1617 = !DILocation(line: 376, column: 19, scope: !1610)
!1618 = !DILocation(line: 376, column: 2, scope: !1610)
!1619 = distinct !DISubprogram(name: "pmd_offset", scope: !1120, file: !1120, line: 121, type: !1620, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!131, !123, !43}
!1622 = !{!1623, !1624}
!1623 = !DILocalVariable(name: "pud", arg: 1, scope: !1619, file: !1120, line: 121, type: !123)
!1624 = !DILocalVariable(name: "address", arg: 2, scope: !1619, file: !1120, line: 121, type: !43)
!1625 = !DILocation(line: 121, column: 40, scope: !1619)
!1626 = !DILocation(line: 121, column: 59, scope: !1619)
!1627 = !DILocation(line: 123, column: 22, scope: !1619)
!1628 = !DILocation(line: 123, column: 9, scope: !1619)
!1629 = !DILocation(line: 123, column: 39, scope: !1619)
!1630 = !DILocation(line: 123, column: 29, scope: !1619)
!1631 = !DILocation(line: 123, column: 27, scope: !1619)
!1632 = !DILocation(line: 123, column: 2, scope: !1619)
!1633 = distinct !DISubprogram(name: "native_p4d_val", scope: !32, file: !32, line: 353, type: !1634, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!118, !114}
!1636 = !{!1637}
!1637 = !DILocalVariable(name: "p4d", arg: 1, scope: !1633, file: !32, line: 353, type: !114)
!1638 = !DILocation(line: 353, column: 45, scope: !1633)
!1639 = !DILocation(line: 355, column: 13, scope: !1633)
!1640 = !DILocation(line: 355, column: 2, scope: !1633)
!1641 = distinct !DISubprogram(name: "p4d_pgtable", scope: !501, file: !501, line: 1102, type: !1642, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!123, !114}
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "p4d", arg: 1, scope: !1641, file: !501, line: 1102, type: !114)
!1646 = !DILocation(line: 1102, column: 40, scope: !1641)
!1647 = !DILocation(line: 1104, column: 18, scope: !1641)
!1648 = !DILocation(line: 1104, column: 2, scope: !1641)
!1649 = distinct !DISubprogram(name: "pud_index", scope: !1120, file: !1120, line: 79, type: !1204, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1650 = !{!1651}
!1651 = !DILocalVariable(name: "address", arg: 1, scope: !1649, file: !1120, line: 79, type: !43)
!1652 = !DILocation(line: 79, column: 53, scope: !1649)
!1653 = !DILocation(line: 81, column: 10, scope: !1649)
!1654 = !DILocation(line: 81, column: 18, scope: !1649)
!1655 = !DILocation(line: 81, column: 32, scope: !1649)
!1656 = !DILocation(line: 81, column: 2, scope: !1649)
!1657 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !32, file: !32, line: 421, type: !1634, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1658)
!1658 = !{!1659}
!1659 = !DILocalVariable(name: "p4d", arg: 1, scope: !1657, file: !32, line: 421, type: !114)
!1660 = !DILocation(line: 421, column: 43, scope: !1657)
!1661 = !DILocation(line: 424, column: 2, scope: !1657)
!1662 = distinct !DISubprogram(name: "native_pud_val", scope: !32, file: !32, line: 379, type: !1663, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!128, !124}
!1665 = !{!1666}
!1666 = !DILocalVariable(name: "pud", arg: 1, scope: !1662, file: !32, line: 379, type: !124)
!1667 = !DILocation(line: 379, column: 45, scope: !1662)
!1668 = !DILocation(line: 381, column: 13, scope: !1662)
!1669 = !DILocation(line: 381, column: 2, scope: !1662)
!1670 = distinct !DISubprogram(name: "pud_pgtable", scope: !501, file: !501, line: 1061, type: !1671, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!131, !124}
!1673 = !{!1674}
!1674 = !DILocalVariable(name: "pud", arg: 1, scope: !1670, file: !501, line: 1061, type: !124)
!1675 = !DILocation(line: 1061, column: 40, scope: !1670)
!1676 = !DILocation(line: 1063, column: 18, scope: !1670)
!1677 = !DILocation(line: 1063, column: 2, scope: !1670)
!1678 = distinct !DISubprogram(name: "pmd_index", scope: !1120, file: !1120, line: 71, type: !1204, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1679)
!1679 = !{!1680}
!1680 = !DILocalVariable(name: "address", arg: 1, scope: !1678, file: !1120, line: 71, type: !43)
!1681 = !DILocation(line: 71, column: 53, scope: !1678)
!1682 = !DILocation(line: 73, column: 10, scope: !1678)
!1683 = !DILocation(line: 73, column: 18, scope: !1678)
!1684 = !DILocation(line: 73, column: 32, scope: !1678)
!1685 = !DILocation(line: 73, column: 2, scope: !1678)
!1686 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !32, file: !32, line: 437, type: !1663, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1687)
!1687 = !{!1688}
!1688 = !DILocalVariable(name: "pud", arg: 1, scope: !1686, file: !32, line: 437, type: !124)
!1689 = !DILocation(line: 437, column: 43, scope: !1686)
!1690 = !DILocation(line: 439, column: 6, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !32, line: 439, column: 6)
!1692 = !DILocation(line: 439, column: 26, scope: !1691)
!1693 = !DILocation(line: 439, column: 6, scope: !1686)
!1694 = !DILocation(line: 440, column: 3, scope: !1691)
!1695 = !DILocation(line: 442, column: 3, scope: !1691)
!1696 = !DILocation(line: 443, column: 1, scope: !1686)
!1697 = distinct !DISubprogram(name: "pmd_flags", scope: !32, file: !32, line: 468, type: !1698, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!136, !132}
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "pmd", arg: 1, scope: !1697, file: !32, line: 468, type: !132)
!1702 = !DILocation(line: 468, column: 40, scope: !1697)
!1703 = !DILocation(line: 470, column: 9, scope: !1697)
!1704 = !DILocation(line: 470, column: 31, scope: !1697)
!1705 = !DILocation(line: 470, column: 29, scope: !1697)
!1706 = !DILocation(line: 470, column: 2, scope: !1697)
!1707 = distinct !DISubprogram(name: "native_pmd_val", scope: !32, file: !32, line: 403, type: !1698, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1708)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "pmd", arg: 1, scope: !1707, file: !32, line: 403, type: !132)
!1710 = !DILocation(line: 403, column: 45, scope: !1707)
!1711 = !DILocation(line: 405, column: 13, scope: !1707)
!1712 = !DILocation(line: 405, column: 2, scope: !1707)
!1713 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !32, file: !32, line: 463, type: !1698, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "pmd", arg: 1, scope: !1713, file: !32, line: 463, type: !132)
!1716 = !DILocation(line: 463, column: 45, scope: !1713)
!1717 = !DILocation(line: 465, column: 10, scope: !1713)
!1718 = !DILocation(line: 465, column: 9, scope: !1713)
!1719 = !DILocation(line: 465, column: 2, scope: !1713)
!1720 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !32, file: !32, line: 455, type: !1698, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1721)
!1721 = !{!1722}
!1722 = !DILocalVariable(name: "pmd", arg: 1, scope: !1720, file: !32, line: 455, type: !132)
!1723 = !DILocation(line: 455, column: 43, scope: !1720)
!1724 = !DILocation(line: 457, column: 6, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !32, line: 457, column: 6)
!1726 = !DILocation(line: 457, column: 26, scope: !1725)
!1727 = !DILocation(line: 457, column: 6, scope: !1720)
!1728 = !DILocation(line: 458, column: 3, scope: !1725)
!1729 = !DILocation(line: 460, column: 3, scope: !1725)
!1730 = !DILocation(line: 461, column: 1, scope: !1720)
!1731 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !501, file: !501, line: 1012, type: !1732, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!43, !132}
!1734 = !{!1735}
!1735 = !DILocalVariable(name: "pmd", arg: 1, scope: !1731, file: !501, line: 1012, type: !132)
!1736 = !DILocation(line: 1012, column: 50, scope: !1731)
!1737 = !DILocation(line: 1014, column: 24, scope: !1731)
!1738 = !DILocation(line: 1014, column: 9, scope: !1731)
!1739 = !DILocation(line: 1014, column: 2, scope: !1731)
!1740 = distinct !DISubprogram(name: "pte_index", scope: !1120, file: !1120, line: 65, type: !1204, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1741)
!1741 = !{!1742}
!1742 = !DILocalVariable(name: "address", arg: 1, scope: !1740, file: !1120, line: 65, type: !43)
!1743 = !DILocation(line: 65, column: 53, scope: !1740)
!1744 = !DILocation(line: 67, column: 10, scope: !1740)
!1745 = !DILocation(line: 67, column: 18, scope: !1740)
!1746 = !DILocation(line: 67, column: 33, scope: !1740)
!1747 = !DILocation(line: 67, column: 2, scope: !1740)
!1748 = distinct !DISubprogram(name: "native_pte_val", scope: !32, file: !32, line: 478, type: !1494, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1749)
!1749 = !{!1750}
!1750 = !DILocalVariable(name: "pte", arg: 1, scope: !1748, file: !32, line: 478, type: !140)
!1751 = !DILocation(line: 478, column: 45, scope: !1748)
!1752 = !DILocation(line: 480, column: 13, scope: !1748)
!1753 = !DILocation(line: 480, column: 2, scope: !1748)
!1754 = distinct !DISubprogram(name: "protnone_mask", scope: !1755, file: !1755, line: 22, type: !1756, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1755 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!75, !75}
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "val", arg: 1, scope: !1754, file: !1755, line: 22, type: !75)
!1760 = !DILocation(line: 22, column: 37, scope: !1754)
!1761 = !DILocation(line: 24, column: 28, scope: !1754)
!1762 = !DILocation(line: 24, column: 9, scope: !1754)
!1763 = !DILocation(line: 24, column: 2, scope: !1754)
!1764 = distinct !DISubprogram(name: "native_make_pte", scope: !32, file: !32, line: 473, type: !1765, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!140, !44}
!1767 = !{!1768}
!1768 = !DILocalVariable(name: "val", arg: 1, scope: !1764, file: !32, line: 473, type: !44)
!1769 = !DILocation(line: 473, column: 46, scope: !1764)
!1770 = !DILocation(line: 475, column: 17, scope: !1764)
!1771 = !DILocation(line: 475, column: 26, scope: !1764)
!1772 = !DILocation(line: 475, column: 2, scope: !1764)
!1773 = distinct !DISubprogram(name: "check_pgprot", scope: !501, file: !501, line: 730, type: !1774, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1033, !1029}
!1776 = !{!1777, !1778}
!1777 = !DILocalVariable(name: "pgprot", arg: 1, scope: !1773, file: !501, line: 730, type: !1029)
!1778 = !DILocalVariable(name: "massaged_val", scope: !1773, file: !501, line: 732, type: !1033)
!1779 = !DILocation(line: 730, column: 49, scope: !1773)
!1780 = !DILocation(line: 732, column: 2, scope: !1773)
!1781 = !DILocation(line: 732, column: 14, scope: !1773)
!1782 = !DILocation(line: 732, column: 29, scope: !1773)
!1783 = !DILocation(line: 744, column: 9, scope: !1773)
!1784 = !DILocation(line: 745, column: 1, scope: !1773)
!1785 = !DILocation(line: 744, column: 2, scope: !1773)
!1786 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !1755, file: !1755, line: 16, type: !1787, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!210, !75}
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "val", arg: 1, scope: !1786, file: !1755, line: 16, type: !75)
!1791 = !DILocation(line: 16, column: 43, scope: !1786)
!1792 = !DILocation(line: 18, column: 9, scope: !1786)
!1793 = !DILocation(line: 18, column: 13, scope: !1786)
!1794 = !DILocation(line: 18, column: 18, scope: !1786)
!1795 = !DILocation(line: 18, column: 22, scope: !1786)
!1796 = !DILocation(line: 18, column: 16, scope: !1786)
!1797 = !DILocation(line: 0, scope: !1786)
!1798 = !DILocation(line: 18, column: 2, scope: !1786)
!1799 = distinct !DISubprogram(name: "massage_pgprot", scope: !501, file: !501, line: 720, type: !1774, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "pgprot", arg: 1, scope: !1799, file: !501, line: 720, type: !1029)
!1802 = !DILocalVariable(name: "protval", scope: !1799, file: !501, line: 722, type: !1033)
!1803 = !DILocation(line: 720, column: 51, scope: !1799)
!1804 = !DILocation(line: 722, column: 2, scope: !1799)
!1805 = !DILocation(line: 722, column: 14, scope: !1799)
!1806 = !DILocation(line: 722, column: 24, scope: !1799)
!1807 = !DILocation(line: 724, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !501, line: 724, column: 6)
!1809 = !DILocation(line: 724, column: 14, scope: !1808)
!1810 = !DILocation(line: 724, column: 6, scope: !1799)
!1811 = !DILocation(line: 725, column: 14, scope: !1808)
!1812 = !DILocation(line: 725, column: 11, scope: !1808)
!1813 = !DILocation(line: 725, column: 3, scope: !1808)
!1814 = !DILocation(line: 727, column: 9, scope: !1799)
!1815 = !DILocation(line: 728, column: 1, scope: !1799)
!1816 = !DILocation(line: 727, column: 2, scope: !1799)
!1817 = !DISubprogram(name: "set_memory_nonglobal", scope: !1818, file: !1818, line: 54, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1818 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!41, !43, !41}
!1821 = distinct !DISubprogram(name: "pti_clone_pgtable", scope: !3, file: !3, line: 308, type: !1822, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !43, !43, !27, !210}
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1843, !1846, !1849, !1852, !1856, !1859, !1863, !1866, !1871, !1874, !1877, !1880, !1885, !1888, !1891}
!1825 = !DILocalVariable(name: "start", arg: 1, scope: !1821, file: !3, line: 308, type: !43)
!1826 = !DILocalVariable(name: "end", arg: 2, scope: !1821, file: !3, line: 308, type: !43)
!1827 = !DILocalVariable(name: "level", arg: 3, scope: !1821, file: !3, line: 309, type: !27)
!1828 = !DILocalVariable(name: "late_text", arg: 4, scope: !1821, file: !3, line: 309, type: !210)
!1829 = !DILocalVariable(name: "addr", scope: !1821, file: !3, line: 311, type: !43)
!1830 = !DILocalVariable(name: "pte", scope: !1831, file: !3, line: 318, type: !139)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 317, column: 34)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 317, column: 2)
!1833 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 317, column: 2)
!1834 = !DILocalVariable(name: "target_pte", scope: !1831, file: !3, line: 318, type: !139)
!1835 = !DILocalVariable(name: "pmd", scope: !1831, file: !3, line: 319, type: !131)
!1836 = !DILocalVariable(name: "target_pmd", scope: !1831, file: !3, line: 319, type: !131)
!1837 = !DILocalVariable(name: "pgd", scope: !1831, file: !3, line: 320, type: !122)
!1838 = !DILocalVariable(name: "p4d", scope: !1831, file: !3, line: 321, type: !113)
!1839 = !DILocalVariable(name: "pud", scope: !1831, file: !3, line: 322, type: !123)
!1840 = !DILocalVariable(name: "__ret_warn_on", scope: !1841, file: !3, line: 329, type: !41)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 329, column: 7)
!1842 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 329, column: 7)
!1843 = !DILocalVariable(name: "__flags", scope: !1844, file: !3, line: 329, type: !41)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 329, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 329, column: 7)
!1846 = !DILocalVariable(name: "__ret_warn_on", scope: !1847, file: !3, line: 332, type: !41)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 332, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 332, column: 7)
!1849 = !DILocalVariable(name: "__flags", scope: !1850, file: !3, line: 332, type: !41)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 332, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 332, column: 7)
!1852 = !DILocalVariable(name: "__ret_warn_on", scope: !1853, file: !3, line: 337, type: !41)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 337, column: 4)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 336, column: 23)
!1855 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 336, column: 7)
!1856 = !DILocalVariable(name: "__flags", scope: !1857, file: !3, line: 337, type: !41)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 337, column: 4)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 337, column: 4)
!1859 = !DILocalVariable(name: "__ret_warn_on", scope: !1860, file: !3, line: 344, type: !41)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 344, column: 4)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 343, column: 23)
!1862 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 343, column: 7)
!1863 = !DILocalVariable(name: "__flags", scope: !1864, file: !3, line: 344, type: !41)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 344, column: 4)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 344, column: 4)
!1866 = !DILocalVariable(name: "__ret_warn_on", scope: !1867, file: !3, line: 351, type: !41)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 351, column: 8)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 351, column: 8)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 349, column: 50)
!1870 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 349, column: 7)
!1871 = !DILocalVariable(name: "__flags", scope: !1872, file: !3, line: 351, type: !41)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 351, column: 8)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 351, column: 8)
!1874 = !DILocalVariable(name: "__ret_warn_on", scope: !1875, file: !3, line: 360, type: !41)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 360, column: 8)
!1876 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 360, column: 8)
!1877 = !DILocalVariable(name: "__flags", scope: !1878, file: !3, line: 360, type: !41)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 360, column: 8)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 360, column: 8)
!1880 = !DILocalVariable(name: "__ret_warn_on", scope: !1881, file: !3, line: 394, type: !41)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 394, column: 8)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 394, column: 8)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 384, column: 38)
!1884 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 384, column: 14)
!1885 = !DILocalVariable(name: "__flags", scope: !1886, file: !3, line: 394, type: !41)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 394, column: 8)
!1887 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 394, column: 8)
!1888 = !DILocalVariable(name: "__ret_warn_on", scope: !1889, file: !3, line: 399, type: !41)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 399, column: 8)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 399, column: 8)
!1891 = !DILocalVariable(name: "__flags", scope: !1892, file: !3, line: 399, type: !41)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 399, column: 8)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 399, column: 8)
!1894 = !DILocation(line: 308, column: 33, scope: !1821)
!1895 = !DILocation(line: 308, column: 54, scope: !1821)
!1896 = !DILocation(line: 309, column: 26, scope: !1821)
!1897 = !DILocation(line: 309, column: 38, scope: !1821)
!1898 = !DILocation(line: 311, column: 2, scope: !1821)
!1899 = !DILocation(line: 311, column: 16, scope: !1821)
!1900 = !DILocation(line: 317, column: 14, scope: !1833)
!1901 = !DILocation(line: 317, column: 12, scope: !1833)
!1902 = !DILocation(line: 317, column: 7, scope: !1833)
!1903 = !DILocation(line: 317, column: 21, scope: !1832)
!1904 = !DILocation(line: 317, column: 28, scope: !1832)
!1905 = !DILocation(line: 317, column: 26, scope: !1832)
!1906 = !DILocation(line: 317, column: 2, scope: !1833)
!1907 = !DILocation(line: 318, column: 3, scope: !1831)
!1908 = !DILocation(line: 318, column: 10, scope: !1831)
!1909 = !DILocation(line: 318, column: 16, scope: !1831)
!1910 = !DILocation(line: 319, column: 3, scope: !1831)
!1911 = !DILocation(line: 319, column: 10, scope: !1831)
!1912 = !DILocation(line: 319, column: 16, scope: !1831)
!1913 = !DILocation(line: 320, column: 3, scope: !1831)
!1914 = !DILocation(line: 320, column: 10, scope: !1831)
!1915 = !DILocation(line: 321, column: 3, scope: !1831)
!1916 = !DILocation(line: 321, column: 10, scope: !1831)
!1917 = !DILocation(line: 322, column: 3, scope: !1831)
!1918 = !DILocation(line: 322, column: 10, scope: !1831)
!1919 = !DILocation(line: 325, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 325, column: 7)
!1921 = !DILocation(line: 325, column: 14, scope: !1920)
!1922 = !DILocation(line: 325, column: 12, scope: !1920)
!1923 = !DILocation(line: 325, column: 7, scope: !1831)
!1924 = !DILocation(line: 326, column: 4, scope: !1920)
!1925 = !DILocation(line: 328, column: 9, scope: !1831)
!1926 = !DILocation(line: 328, column: 7, scope: !1831)
!1927 = !DILocation(line: 329, column: 7, scope: !1841)
!1928 = !DILocation(line: 329, column: 7, scope: !1845)
!1929 = !DILocation(line: 329, column: 7, scope: !1844)
!1930 = !DILocation(line: 329, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 329, column: 7)
!1932 = !DILocation(line: 329, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 329, column: 7)
!1934 = !{i64 2154769762, i64 2154769791, i64 2154769837, i64 2154769895, i64 2154769949, i64 2154770003, i64 2154770058, i64 2154770089, i64 2154770397, i64 2154770403, i64 2154770450, i64 2154770473, i64 2154770499}
!1935 = !DILocation(line: 329, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 329, column: 7)
!1937 = !DILocation(line: 329, column: 7, scope: !1842)
!1938 = !DILocation(line: 329, column: 7, scope: !1831)
!1939 = !DILocation(line: 330, column: 4, scope: !1842)
!1940 = !DILocation(line: 331, column: 20, scope: !1831)
!1941 = !DILocation(line: 331, column: 25, scope: !1831)
!1942 = !DILocation(line: 331, column: 9, scope: !1831)
!1943 = !DILocation(line: 331, column: 7, scope: !1831)
!1944 = !DILocation(line: 332, column: 7, scope: !1847)
!1945 = !DILocation(line: 332, column: 7, scope: !1851)
!1946 = !DILocation(line: 332, column: 7, scope: !1850)
!1947 = !DILocation(line: 332, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 332, column: 7)
!1949 = !DILocation(line: 332, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 332, column: 7)
!1951 = !{i64 2154771257, i64 2154771286, i64 2154771332, i64 2154771390, i64 2154771444, i64 2154771498, i64 2154771553, i64 2154771584, i64 2154771892, i64 2154771898, i64 2154771945, i64 2154771968, i64 2154771994}
!1952 = !DILocation(line: 332, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 332, column: 7)
!1954 = !DILocation(line: 332, column: 7, scope: !1848)
!1955 = !DILocation(line: 332, column: 7, scope: !1831)
!1956 = !DILocation(line: 333, column: 4, scope: !1848)
!1957 = !DILocation(line: 335, column: 20, scope: !1831)
!1958 = !DILocation(line: 335, column: 25, scope: !1831)
!1959 = !DILocation(line: 335, column: 9, scope: !1831)
!1960 = !DILocation(line: 335, column: 7, scope: !1831)
!1961 = !DILocation(line: 336, column: 17, scope: !1855)
!1962 = !DILocation(line: 336, column: 7, scope: !1855)
!1963 = !DILocation(line: 336, column: 7, scope: !1831)
!1964 = !DILocation(line: 337, column: 4, scope: !1853)
!1965 = !DILocation(line: 337, column: 4, scope: !1858)
!1966 = !DILocation(line: 337, column: 4, scope: !1857)
!1967 = !DILocation(line: 337, column: 4, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 337, column: 4)
!1969 = !DILocation(line: 337, column: 4, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 337, column: 4)
!1971 = !{i64 2154772891, i64 2154772920, i64 2154772966, i64 2154773024, i64 2154773078, i64 2154773132, i64 2154773187, i64 2154773218, i64 2154773526, i64 2154773532, i64 2154773579, i64 2154773602, i64 2154773628}
!1972 = !DILocation(line: 337, column: 4, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 337, column: 4)
!1974 = !DILocation(line: 337, column: 4, scope: !1854)
!1975 = !DILocation(line: 338, column: 11, scope: !1854)
!1976 = !DILocation(line: 338, column: 9, scope: !1854)
!1977 = !DILocation(line: 339, column: 4, scope: !1854)
!1978 = distinct !{!1978, !1906, !1979, !611, !612}
!1979 = !DILocation(line: 414, column: 2, scope: !1833)
!1980 = !DILocation(line: 342, column: 20, scope: !1831)
!1981 = !DILocation(line: 342, column: 25, scope: !1831)
!1982 = !DILocation(line: 342, column: 9, scope: !1831)
!1983 = !DILocation(line: 342, column: 7, scope: !1831)
!1984 = !DILocation(line: 343, column: 17, scope: !1862)
!1985 = !DILocation(line: 343, column: 7, scope: !1862)
!1986 = !DILocation(line: 343, column: 7, scope: !1831)
!1987 = !DILocation(line: 344, column: 4, scope: !1860)
!1988 = !DILocation(line: 344, column: 4, scope: !1865)
!1989 = !DILocation(line: 344, column: 4, scope: !1864)
!1990 = !DILocation(line: 344, column: 4, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 344, column: 4)
!1992 = !DILocation(line: 344, column: 4, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 344, column: 4)
!1994 = !{i64 2154774708, i64 2154774737, i64 2154774783, i64 2154774841, i64 2154774895, i64 2154774949, i64 2154775004, i64 2154775035, i64 2154775343, i64 2154775349, i64 2154775396, i64 2154775419, i64 2154775445}
!1995 = !DILocation(line: 344, column: 4, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 344, column: 4)
!1997 = !DILocation(line: 344, column: 4, scope: !1861)
!1998 = !DILocation(line: 345, column: 11, scope: !1861)
!1999 = !DILocation(line: 345, column: 9, scope: !1861)
!2000 = !DILocation(line: 346, column: 4, scope: !1861)
!2001 = !DILocation(line: 349, column: 18, scope: !1870)
!2002 = !DILocation(line: 349, column: 7, scope: !1870)
!2003 = !DILocation(line: 349, column: 23, scope: !1870)
!2004 = !DILocation(line: 349, column: 26, scope: !1870)
!2005 = !DILocation(line: 349, column: 32, scope: !1870)
!2006 = !DILocation(line: 349, column: 7, scope: !1831)
!2007 = !DILocation(line: 350, column: 45, scope: !1869)
!2008 = !DILocation(line: 350, column: 17, scope: !1869)
!2009 = !DILocation(line: 350, column: 15, scope: !1869)
!2010 = !DILocation(line: 351, column: 8, scope: !1867)
!2011 = !DILocation(line: 351, column: 8, scope: !1873)
!2012 = !DILocation(line: 351, column: 8, scope: !1872)
!2013 = !DILocation(line: 351, column: 8, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 351, column: 8)
!2015 = !DILocation(line: 351, column: 8, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 351, column: 8)
!2017 = !{i64 2154776383, i64 2154776412, i64 2154776458, i64 2154776516, i64 2154776570, i64 2154776624, i64 2154776679, i64 2154776710, i64 2154777018, i64 2154777024, i64 2154777071, i64 2154777094, i64 2154777120}
!2018 = !DILocation(line: 351, column: 8, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 351, column: 8)
!2020 = !DILocation(line: 351, column: 8, scope: !1868)
!2021 = !DILocation(line: 351, column: 8, scope: !1869)
!2022 = !DILocation(line: 352, column: 5, scope: !1868)
!2023 = !DILocation(line: 360, column: 8, scope: !1875)
!2024 = !DILocation(line: 360, column: 8, scope: !1879)
!2025 = !DILocation(line: 360, column: 8, scope: !1878)
!2026 = !DILocation(line: 360, column: 8, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 360, column: 8)
!2028 = !DILocation(line: 360, column: 8, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 360, column: 8)
!2030 = !{i64 2154777976, i64 2154778005, i64 2154778051, i64 2154778109, i64 2154778163, i64 2154778217, i64 2154778272, i64 2154778303, i64 2154778611, i64 2154778617, i64 2154778664, i64 2154778687, i64 2154778713}
!2031 = !DILocation(line: 360, column: 8, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 360, column: 8)
!2033 = !DILocation(line: 360, column: 8, scope: !1876)
!2034 = !DILocation(line: 360, column: 8, scope: !1869)
!2035 = !DILocation(line: 361, column: 5, scope: !1876)
!2036 = !DILocation(line: 372, column: 8, scope: !1869)
!2037 = !DILocation(line: 372, column: 8, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 372, column: 8)
!2039 = !DILocation(line: 373, column: 6, scope: !2038)
!2040 = !DILocation(line: 373, column: 12, scope: !2038)
!2041 = !DILocation(line: 373, column: 27, scope: !2038)
!2042 = !DILocation(line: 373, column: 5, scope: !2038)
!2043 = !DILocation(line: 380, column: 5, scope: !1869)
!2044 = !DILocation(line: 380, column: 19, scope: !1869)
!2045 = !DILocation(line: 380, column: 18, scope: !1869)
!2046 = !DILocation(line: 382, column: 11, scope: !1869)
!2047 = !DILocation(line: 382, column: 9, scope: !1869)
!2048 = !DILocation(line: 384, column: 3, scope: !1869)
!2049 = !DILocation(line: 384, column: 14, scope: !1884)
!2050 = !DILocation(line: 384, column: 20, scope: !1884)
!2051 = !DILocation(line: 384, column: 14, scope: !1870)
!2052 = !DILocation(line: 387, column: 28, scope: !1883)
!2053 = !DILocation(line: 387, column: 33, scope: !1883)
!2054 = !DILocation(line: 387, column: 10, scope: !1883)
!2055 = !DILocation(line: 387, column: 8, scope: !1883)
!2056 = !DILocation(line: 388, column: 18, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 388, column: 8)
!2058 = !DILocation(line: 388, column: 8, scope: !2057)
!2059 = !DILocation(line: 388, column: 8, scope: !1883)
!2060 = !DILocation(line: 389, column: 12, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 388, column: 24)
!2062 = !DILocation(line: 389, column: 10, scope: !2061)
!2063 = !DILocation(line: 390, column: 5, scope: !2061)
!2064 = !DILocation(line: 394, column: 8, scope: !1881)
!2065 = !DILocation(line: 394, column: 8, scope: !1887)
!2066 = !DILocation(line: 394, column: 8, scope: !1886)
!2067 = !DILocation(line: 394, column: 8, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 394, column: 8)
!2069 = !DILocation(line: 394, column: 8, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 394, column: 8)
!2071 = !{i64 2154785381, i64 2154785410, i64 2154785456, i64 2154785514, i64 2154785568, i64 2154785622, i64 2154785677, i64 2154785708, i64 2154786016, i64 2154786022, i64 2154786069, i64 2154786092, i64 2154786118}
!2072 = !DILocation(line: 394, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 394, column: 8)
!2074 = !DILocation(line: 394, column: 8, scope: !1882)
!2075 = !DILocation(line: 394, column: 8, scope: !1883)
!2076 = !DILocation(line: 395, column: 5, scope: !1882)
!2077 = !DILocation(line: 398, column: 45, scope: !1883)
!2078 = !DILocation(line: 398, column: 51, scope: !1883)
!2079 = !DILocation(line: 398, column: 17, scope: !1883)
!2080 = !DILocation(line: 398, column: 15, scope: !1883)
!2081 = !DILocation(line: 399, column: 8, scope: !1889)
!2082 = !DILocation(line: 399, column: 8, scope: !1893)
!2083 = !DILocation(line: 399, column: 8, scope: !1892)
!2084 = !DILocation(line: 399, column: 8, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 399, column: 8)
!2086 = !DILocation(line: 399, column: 8, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 399, column: 8)
!2088 = !{i64 2154786873, i64 2154786902, i64 2154786948, i64 2154787006, i64 2154787060, i64 2154787114, i64 2154787169, i64 2154787200, i64 2154787508, i64 2154787514, i64 2154787561, i64 2154787584, i64 2154787610}
!2089 = !DILocation(line: 399, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 399, column: 8)
!2091 = !DILocation(line: 399, column: 8, scope: !1890)
!2092 = !DILocation(line: 399, column: 8, scope: !1883)
!2093 = !DILocation(line: 400, column: 5, scope: !1890)
!2094 = !DILocation(line: 403, column: 8, scope: !1883)
!2095 = !DILocation(line: 403, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 403, column: 8)
!2097 = !DILocation(line: 404, column: 6, scope: !2096)
!2098 = !DILocation(line: 404, column: 12, scope: !2096)
!2099 = !DILocation(line: 404, column: 27, scope: !2096)
!2100 = !DILocation(line: 404, column: 5, scope: !2096)
!2101 = !DILocation(line: 407, column: 5, scope: !1883)
!2102 = !DILocation(line: 407, column: 19, scope: !1883)
!2103 = !DILocation(line: 407, column: 18, scope: !1883)
!2104 = !DILocation(line: 409, column: 11, scope: !1883)
!2105 = !DILocation(line: 409, column: 9, scope: !1883)
!2106 = !DILocation(line: 411, column: 3, scope: !1883)
!2107 = !DILocation(line: 412, column: 4, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 411, column: 10)
!2109 = !DILocation(line: 412, column: 4, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 412, column: 4)
!2111 = !DILocation(line: 412, column: 4, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 412, column: 4)
!2113 = !DILocation(line: 412, column: 4, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 412, column: 4)
!2115 = !{i64 2154793636, i64 2154793665, i64 2154793711, i64 2154793769, i64 2154793823, i64 2154793877, i64 2154793932, i64 2154793963}
!2116 = !DILocation(line: 414, column: 2, scope: !1832)
!2117 = !DILocation(line: 317, column: 2, scope: !1832)
!2118 = !DILocation(line: 415, column: 1, scope: !1821)
!2119 = distinct !DISubprogram(name: "pmd_set_flags", scope: !501, file: !501, line: 477, type: !2120, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!132, !132, !136}
!2122 = !{!2123, !2124, !2125}
!2123 = !DILocalVariable(name: "pmd", arg: 1, scope: !2119, file: !501, line: 477, type: !132)
!2124 = !DILocalVariable(name: "set", arg: 2, scope: !2119, file: !501, line: 477, type: !136)
!2125 = !DILocalVariable(name: "v", scope: !2119, file: !501, line: 479, type: !136)
!2126 = !DILocation(line: 477, column: 41, scope: !2119)
!2127 = !DILocation(line: 477, column: 55, scope: !2119)
!2128 = !DILocation(line: 479, column: 2, scope: !2119)
!2129 = !DILocation(line: 479, column: 11, scope: !2119)
!2130 = !DILocation(line: 479, column: 15, scope: !2119)
!2131 = !DILocation(line: 481, column: 25, scope: !2119)
!2132 = !DILocation(line: 481, column: 29, scope: !2119)
!2133 = !DILocation(line: 481, column: 27, scope: !2119)
!2134 = !DILocation(line: 481, column: 9, scope: !2119)
!2135 = !DILocation(line: 482, column: 1, scope: !2119)
!2136 = distinct !DISubprogram(name: "pte_none", scope: !501, file: !501, line: 931, type: !2137, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!41, !140}
!2139 = !{!2140}
!2140 = !DILocalVariable(name: "pte", arg: 1, scope: !2136, file: !501, line: 931, type: !140)
!2141 = !DILocation(line: 931, column: 34, scope: !2136)
!2142 = !DILocation(line: 933, column: 15, scope: !2136)
!2143 = !DILocation(line: 933, column: 19, scope: !2136)
!2144 = !DILocation(line: 933, column: 9, scope: !2136)
!2145 = !DILocation(line: 933, column: 2, scope: !2136)
!2146 = distinct !DISubprogram(name: "pte_set_flags", scope: !501, file: !501, line: 314, type: !2147, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!140, !140, !44}
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "pte", arg: 1, scope: !2146, file: !501, line: 314, type: !140)
!2151 = !DILocalVariable(name: "set", arg: 2, scope: !2146, file: !501, line: 314, type: !44)
!2152 = !DILocalVariable(name: "v", scope: !2146, file: !501, line: 316, type: !44)
!2153 = !DILocation(line: 314, column: 41, scope: !2146)
!2154 = !DILocation(line: 314, column: 55, scope: !2146)
!2155 = !DILocation(line: 316, column: 2, scope: !2146)
!2156 = !DILocation(line: 316, column: 11, scope: !2146)
!2157 = !DILocation(line: 316, column: 15, scope: !2146)
!2158 = !DILocation(line: 318, column: 25, scope: !2146)
!2159 = !DILocation(line: 318, column: 29, scope: !2146)
!2160 = !DILocation(line: 318, column: 27, scope: !2146)
!2161 = !DILocation(line: 318, column: 9, scope: !2146)
!2162 = !DILocation(line: 319, column: 1, scope: !2146)
!2163 = !DISubprogram(name: "lookup_address", scope: !32, file: !32, line: 571, type: !2164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!139, !43, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2167 = !DISubprogram(name: "set_vsyscall_pgtable_user_bits", scope: !2168, file: !2168, line: 11, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2168 = !DIFile(filename: "./arch/x86/include/asm/vsyscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b053b7e2f15fe85fedc46775209d8f75")
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !122}
!2171 = distinct !DISubprogram(name: "pti_kernel_image_global_ok", scope: !3, file: !3, line: 516, type: !423, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2172 = !DILocation(line: 522, column: 6, scope: !2171)
!2173 = !DILocation(line: 522, column: 6, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 522, column: 6)
!2175 = !DILocation(line: 523, column: 3, scope: !2174)
!2176 = !DILocation(line: 529, column: 6, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 529, column: 6)
!2178 = !DILocation(line: 529, column: 15, scope: !2177)
!2179 = !DILocation(line: 529, column: 6, scope: !2171)
!2180 = !DILocation(line: 530, column: 3, scope: !2177)
!2181 = !DILocation(line: 538, column: 6, scope: !2171)
!2182 = !DILocation(line: 538, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 538, column: 6)
!2184 = !DILocation(line: 539, column: 3, scope: !2183)
!2185 = !DILocation(line: 551, column: 2, scope: !2171)
!2186 = !DILocation(line: 552, column: 1, scope: !2171)
!2187 = !DISubprogram(name: "set_memory_global", scope: !1818, file: !1818, line: 55, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
