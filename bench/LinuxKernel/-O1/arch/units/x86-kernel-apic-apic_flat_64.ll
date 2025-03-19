; ModuleID = 'arch/x86/kernel/apic/apic_flat_64.c'
source_filename = "arch/x86/kernel/apic/apic_flat_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_apic: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad apic ; .previous"

%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>

@apic_flat = internal global %struct.apic { ptr @native_apic_mem_eoi, ptr null, ptr @native_apic_mem_write, ptr @native_apic_mem_read, ptr @apic_mem_wait_icr_idle, ptr @apic_mem_wait_icr_idle_timeout, ptr @default_send_IPI_single, ptr @flat_send_IPI_mask, ptr @flat_send_IPI_mask_allbutself, ptr @default_send_IPI_allbutself, ptr @default_send_IPI_all, ptr @default_send_IPI_self, i32 0, i8 10, ptr @apic_flat_calc_apicid, ptr @native_apic_icr_read, ptr @native_apic_icr_write, i32 254, ptr @flat_probe, ptr @flat_acpi_madt_oem_check, ptr @default_apic_id_registered, ptr null, ptr @default_init_apic_ldr, ptr null, ptr @default_cpu_present_to_apicid, ptr @flat_phys_pkg_id, ptr @flat_get_apic_id, ptr @set_apic_id, ptr null, ptr null, ptr @.str }, section ".data..ro_after_init", align 8, !dbg !0
@apic = hidden global ptr @apic_flat, section ".data..ro_after_init", align 8, !dbg !67
@__UNIQUE_ID___addressable_apic219 = internal global ptr @apic, section ".discard.addressable", align 8, !dbg !175
@apic_physflat = internal global %struct.apic { ptr @native_apic_mem_eoi, ptr null, ptr @native_apic_mem_write, ptr @native_apic_mem_read, ptr @apic_mem_wait_icr_idle, ptr @apic_mem_wait_icr_idle_timeout, ptr @default_send_IPI_single_phys, ptr @default_send_IPI_mask_sequence_phys, ptr @default_send_IPI_mask_allbutself_phys, ptr @default_send_IPI_allbutself, ptr @default_send_IPI_all, ptr @default_send_IPI_self, i32 0, i8 8, ptr @apic_default_calc_apicid, ptr @native_apic_icr_read, ptr @native_apic_icr_write, i32 254, ptr @physflat_probe, ptr @physflat_acpi_madt_oem_check, ptr @default_apic_id_registered, ptr null, ptr null, ptr null, ptr @default_cpu_present_to_apicid, ptr @flat_phys_pkg_id, ptr @flat_get_apic_id, ptr @set_apic_id, ptr null, ptr null, ptr @.str.2 }, section ".data..ro_after_init", align 8, !dbg !194
@__apicdrivers_apic_physflatapic_flat = internal global [2 x ptr] [ptr @apic_physflat, ptr @apic_flat], section ".apicdrivers", align 8, !dbg !177
@.str = private unnamed_addr constant [5 x i8] c"flat\00", align 1, !dbg !182
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !187
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [14 x i8] c"physical flat\00", align 1, !dbg !189
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\017system APIC only can use physical flat\00", align 1, !dbg !196
@.str.4 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1, !dbg !201
@.str.5 = private unnamed_addr constant [4 x i8] c"EXA\00", align 1, !dbg !206
@.str.6 = private unnamed_addr constant [46 x i8] c"\017IBM Summit detected, will use apic physical\00", align 1, !dbg !208
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_apic219, ptr @__apicdrivers_apic_physflatapic_flat], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_apic_mem_eoi() #0 align 16 !dbg !222 {
entry:
  call void @native_apic_mem_write(i32 noundef 176, i32 noundef 0) #9, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_apic_mem_write(i32 noundef %reg, i32 noundef %v) #0 align 16 !dbg !225 {
entry:
  %reg.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %addr = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !227, metadata !DIExpression()), !dbg !230
  store i32 %v, ptr %v.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !228, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #10, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !229, metadata !DIExpression()), !dbg !233
  %call = call i64 @fix_to_virt(i32 noundef 515) #9, !dbg !234
  %0 = load i32, ptr %reg.addr, align 4, !dbg !235
  %conv = zext i32 %0 to i64, !dbg !235
  %add = add i64 %call, %conv, !dbg !236
  %1 = inttoptr i64 %add to ptr, !dbg !237
  store ptr %1, ptr %addr, align 8, !dbg !233
  %2 = load ptr, ptr %addr, align 8, !dbg !238
  %3 = load i32, ptr %v.addr, align 4, !dbg !238
  %4 = load ptr, ptr %addr, align 8, !dbg !238
  %5 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movl $0, ${1:P}\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (22*32 + (5))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09xchgl $0, ${1:P}\0A6651:\0A.popsection\0A", "=r,=*m,i,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, i32 0, i32 %3, ptr elementtype(i32) %4) #10, !dbg !238, !srcloc !239
  store i32 %5, ptr %v.addr, align 4, !dbg !238
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #10, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_apic_mem_read(i32 noundef %reg) #0 align 16 !dbg !241 {
entry:
  %reg.addr = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %call = call i64 @fix_to_virt(i32 noundef 515) #9, !dbg !245
  %0 = load i32, ptr %reg.addr, align 4, !dbg !246
  %conv = zext i32 %0 to i64, !dbg !246
  %add = add i64 %call, %conv, !dbg !247
  %1 = inttoptr i64 %add to ptr, !dbg !248
  %call1 = call i32 @readl(ptr noundef %1) #9, !dbg !249
  ret i32 %call1, !dbg !250
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @apic_mem_wait_icr_idle() #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @apic_mem_wait_icr_idle_timeout() #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_single(i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flat_send_IPI_mask(ptr noundef %cpumask, i32 noundef %vector) #2 align 16 !dbg !251 {
entry:
  %cpumask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !253, metadata !DIExpression()), !dbg !256
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !254, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !255, metadata !DIExpression()), !dbg !259
  %0 = load ptr, ptr %cpumask.addr, align 8, !dbg !260
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !260
  %arrayidx = getelementptr [1 x i64], ptr %bits, i64 0, i64 0, !dbg !260
  %1 = load i64, ptr %arrayidx, align 8, !dbg !260
  store i64 %1, ptr %mask, align 8, !dbg !259
  %2 = load i64, ptr %mask, align 8, !dbg !261
  %3 = load i32, ptr %vector.addr, align 4, !dbg !262
  call void @_flat_send_IPI_mask(i64 noundef %2, i32 noundef %3) #9, !dbg !263
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !264
  ret void, !dbg !264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flat_send_IPI_mask_allbutself(ptr noundef %cpumask, i32 noundef %vector) #2 align 16 !dbg !265 {
entry:
  %cpumask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !267, metadata !DIExpression()), !dbg !280
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !268, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !269, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %cpumask.addr, align 8, !dbg !284
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !284
  %arrayidx = getelementptr [1 x i64], ptr %bits, i64 0, i64 0, !dbg !284
  %1 = load i64, ptr %arrayidx, align 8, !dbg !284
  store i64 %1, ptr %mask, align 8, !dbg !283
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #10, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !270, metadata !DIExpression()), !dbg !286
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #9, !dbg !287
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !271, metadata !DIExpression()), !dbg !288
  br label %do.body, !dbg !288

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !274, metadata !DIExpression()), !dbg !289
  store ptr null, ptr %__vpp_verify, align 8, !dbg !289
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !288
  br label %do.cond, !dbg !289

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !289

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !278, metadata !DIExpression()), !dbg !290
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !290, !srcloc !291
  store i32 %3, ptr %pfo_val__, align 4, !dbg !290
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !290
  %conv = zext i32 %4 to i64, !dbg !290
  %conv2 = trunc i64 %conv to i32, !dbg !290
  store i32 %conv2, ptr %tmp1, align 4, !dbg !290
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !288
  %5 = load i32, ptr %tmp1, align 4, !dbg !290
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !288
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !288
  store i32 %6, ptr %tmp3, align 4, !dbg !288
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !287
  %7 = load i32, ptr %tmp3, align 4, !dbg !288
  store i32 %7, ptr %tmp, align 4, !dbg !287
  %8 = load i32, ptr %tmp, align 4, !dbg !287
  store i32 %8, ptr %cpu, align 4, !dbg !286
  %9 = load i32, ptr %cpu, align 4, !dbg !292
  %cmp = icmp slt i32 %9, 64, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %do.end
  %10 = load i32, ptr %cpu, align 4, !dbg !296
  %11 = call i1 @llvm.is.constant.i32(i32 %10), !dbg !296
  br i1 %11, label %land.lhs.true, label %cond.false, !dbg !296

land.lhs.true:                                    ; preds = %if.then
  %12 = ptrtoint ptr %mask to i64, !dbg !296
  %cmp5 = icmp ne i64 %12, 0, !dbg !296
  %conv6 = zext i1 %cmp5 to i32, !dbg !296
  %13 = call i1 @llvm.is.constant.i32(i32 %conv6), !dbg !296
  br i1 %13, label %land.lhs.true7, label %cond.false, !dbg !296

land.lhs.true7:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %mask to i64, !dbg !296
  %cmp8 = icmp ne i64 %14, 0, !dbg !296
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !296

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %15 = load i64, ptr %mask, align 8, !dbg !296
  %16 = call i1 @llvm.is.constant.i64(i64 %15), !dbg !296
  br i1 %16, label %cond.true, label %cond.false, !dbg !296

cond.true:                                        ; preds = %land.lhs.true10
  %17 = load i32, ptr %cpu, align 4, !dbg !296
  %conv11 = sext i32 %17 to i64, !dbg !296
  call void @generic___clear_bit(i64 noundef %conv11, ptr noundef %mask) #9, !dbg !296
  br label %cond.end, !dbg !296

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true7, %land.lhs.true, %if.then
  %18 = load i32, ptr %cpu, align 4, !dbg !296
  %conv12 = sext i32 %18 to i64, !dbg !296
  call void @___clear_bit(i64 noundef %conv12, ptr noundef %mask) #9, !dbg !296
  br label %cond.end, !dbg !296

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end, !dbg !296

if.end:                                           ; preds = %cond.end, %do.end
  %19 = load i64, ptr %mask, align 8, !dbg !297
  %20 = load i32, ptr %vector.addr, align 4, !dbg !298
  call void @_flat_send_IPI_mask(i64 noundef %19, i32 noundef %20) #9, !dbg !299
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #10, !dbg !300
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !300
  ret void, !dbg !300
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_allbutself(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_all(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_self(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @apic_flat_calc_apicid(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @native_apic_icr_read() #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @native_apic_icr_write(i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flat_probe() #2 align 16 !dbg !301 {
entry:
  ret i32 1, !dbg !302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flat_acpi_madt_oem_check(ptr noundef %oem_id, ptr noundef %oem_table_id) #2 align 16 !dbg !303 {
entry:
  %oem_id.addr = alloca ptr, align 8
  %oem_table_id.addr = alloca ptr, align 8
  store ptr %oem_id, ptr %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_id.addr, metadata !305, metadata !DIExpression()), !dbg !307
  store ptr %oem_table_id, ptr %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_table_id.addr, metadata !306, metadata !DIExpression()), !dbg !308
  ret i32 1, !dbg !309
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @default_apic_id_registered() #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_init_apic_ldr() #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_cpu_present_to_apicid(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flat_phys_pkg_id(i32 noundef %initial_apic_id, i32 noundef %index_msb) #2 align 16 !dbg !310 {
entry:
  %initial_apic_id.addr = alloca i32, align 4
  %index_msb.addr = alloca i32, align 4
  store i32 %initial_apic_id, ptr %initial_apic_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initial_apic_id.addr, metadata !312, metadata !DIExpression()), !dbg !314
  store i32 %index_msb, ptr %index_msb.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index_msb.addr, metadata !313, metadata !DIExpression()), !dbg !315
  %0 = load i32, ptr %initial_apic_id.addr, align 4, !dbg !316
  %1 = load i32, ptr %index_msb.addr, align 4, !dbg !317
  %shr = ashr i32 %0, %1, !dbg !318
  ret i32 %shr, !dbg !319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @flat_get_apic_id(i64 noundef %x) #2 align 16 !dbg !320 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i64, ptr %x.addr, align 8, !dbg !326
  %shr = lshr i64 %0, 24, !dbg !327
  %and = and i64 %shr, 255, !dbg !328
  %conv = trunc i64 %and to i32, !dbg !329
  ret i32 %conv, !dbg !330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_apic_id(i32 noundef %id) #2 align 16 !dbg !331 {
entry:
  %id.addr = alloca i32, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i32, ptr %id.addr, align 4, !dbg !335
  %and = and i32 %0, 255, !dbg !336
  %shl = shl i32 %and, 24, !dbg !337
  ret i32 %shl, !dbg !338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fix_to_virt(i32 noundef %idx) #5 align 16 !dbg !339 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !345, metadata !DIExpression()), !dbg !346
  br label %do.body, !dbg !347

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %idx.addr, align 4, !dbg !348
  %cmp = icmp uge i32 %0, 1536, !dbg !348
  br i1 %cmp, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_205() #12, !dbg !348, !srcloc !352
  unreachable, !dbg !348

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !351

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %idx.addr, align 4, !dbg !353
  %shl = shl i32 %1, 12, !dbg !353
  %conv = zext i32 %shl to i64, !dbg !353
  %sub = sub i64 -8392704, %conv, !dbg !353
  ret i64 %sub, !dbg !354
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !355 dso_local void @__compiletime_assert_205() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #0 align 16 !dbg !356 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !364, metadata !DIExpression()), !dbg !366
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !366
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #10, !dbg !366, !srcloc !367
  store i32 %1, ptr %ret, align 4, !dbg !366
  %2 = load i32, ptr %ret, align 4, !dbg !366
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !366
  ret i32 %2, !dbg !366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @_flat_send_IPI_mask(i64 noundef %mask, i32 noundef %vector) #2 align 16 !dbg !368 {
entry:
  %mask.addr = alloca i64, align 8
  %vector.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !372, metadata !DIExpression()), !dbg !385
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !373, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !374, metadata !DIExpression()), !dbg !388
  br label %do.body, !dbg !389

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !390

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !375, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !379, metadata !DIExpression()), !dbg !391
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !391
  %conv = zext i1 %cmp to i32, !dbg !391
  store i32 1, ptr %tmp, align 4, !dbg !391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !392
  %0 = load i32, ptr %tmp, align 4, !dbg !391
  %call = call i64 @arch_local_irq_save() #9, !dbg !392
  store i64 %call, ptr %flags, align 8, !dbg !392
  br label %do.cond, !dbg !392

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !392

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !390

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !390

do.end3:                                          ; preds = %do.cond2
  %1 = load i64, ptr %mask.addr, align 8, !dbg !393
  %conv4 = trunc i64 %1 to i32, !dbg !393
  %2 = load i32, ptr %vector.addr, align 4, !dbg !394
  call void @__default_send_IPI_dest_field(i32 noundef %conv4, i32 noundef %2, i32 noundef 2048) #9, !dbg !395
  br label %do.body5, !dbg !396

do.body5:                                         ; preds = %do.end3
  br label %do.body6, !dbg !397

do.body6:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy7) #10, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %__dummy7, metadata !380, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #10, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !384, metadata !DIExpression()), !dbg !398
  %cmp9 = icmp eq ptr %__dummy7, %__dummy28, !dbg !398
  %conv10 = zext i1 %cmp9 to i32, !dbg !398
  store i32 1, ptr %tmp11, align 4, !dbg !398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #10, !dbg !399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy7) #10, !dbg !399
  %3 = load i32, ptr %tmp11, align 4, !dbg !398
  br label %do.body12, !dbg !399

do.body12:                                        ; preds = %do.body6
  br label %do.cond13, !dbg !400

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !400

do.end14:                                         ; preds = %do.cond13
  %4 = load i64, ptr %flags, align 8, !dbg !399
  call void @arch_local_irq_restore(i64 noundef %4) #9, !dbg !399
  br label %do.cond15, !dbg !399

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !399

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !397

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !397

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !402
  ret void, !dbg !402
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #5 align 16 !dbg !403 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !408, metadata !DIExpression()), !dbg !410
  %call = call i64 @arch_local_save_flags() #9, !dbg !411
  store i64 %call, ptr %flags, align 8, !dbg !410
  call void @arch_local_irq_disable() #9, !dbg !412
  %0 = load i64, ptr %flags, align 8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !414
  ret i64 %0, !dbg !415
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !416 dso_local void @__default_send_IPI_dest_field(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #5 align 16 !dbg !420 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i64, ptr %flags.addr, align 8, !dbg !426
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #9, !dbg !428
  %tobool = icmp ne i32 %call, 0, !dbg !428
  br i1 %tobool, label %if.end, label %if.then, !dbg !429

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #9, !dbg !430
  br label %if.end, !dbg !430

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !431
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !432 {
entry:
  %call = call i64 @native_save_fl() #9, !dbg !433
  ret i64 %call, !dbg !434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #5 align 16 !dbg !435 {
entry:
  call void @native_irq_disable() #9, !dbg !436
  ret void, !dbg !437
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !438 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !440, metadata !DIExpression()), !dbg !442
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #10, !dbg !443, !srcloc !444
  %0 = load i64, ptr %flags, align 8, !dbg !445
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !446
  ret i64 %0, !dbg !447
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #5 align 16 !dbg !448 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !449, !srcloc !450
  ret void, !dbg !451
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !452 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i64, ptr %flags.addr, align 8, !dbg !458
  %and = and i64 %0, 512, !dbg !459
  %tobool = icmp ne i64 %and, 0, !dbg !460
  %lnot = xor i1 %tobool, true, !dbg !460
  %lnot.ext = zext i1 %lnot to i32, !dbg !460
  ret i32 %lnot.ext, !dbg !461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #5 align 16 !dbg !462 {
entry:
  call void @native_irq_enable() #9, !dbg !463
  ret void, !dbg !464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #5 align 16 !dbg !465 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !466, !srcloc !467
  ret void, !dbg !468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !469 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !476, metadata !DIExpression()), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !479 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !486, metadata !DIExpression()), !dbg !490
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !487, metadata !DIExpression()), !dbg !491
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !488, metadata !DIExpression()), !dbg !493
  %0 = load i64, ptr %nr.addr, align 8, !dbg !494
  %rem = urem i64 %0, 64, !dbg !494
  %shl = shl i64 1, %rem, !dbg !494
  store i64 %shl, ptr %mask, align 8, !dbg !493
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %p, metadata !489, metadata !DIExpression()), !dbg !496
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !497
  %2 = load i64, ptr %nr.addr, align 8, !dbg !498
  %div = udiv i64 %2, 64, !dbg !498
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !499
  store ptr %add.ptr, ptr %p, align 8, !dbg !496
  %3 = load i64, ptr %mask, align 8, !dbg !500
  %not = xor i64 %3, -1, !dbg !501
  %4 = load ptr, ptr %p, align 8, !dbg !502
  %5 = load i64, ptr %4, align 8, !dbg !503
  %and = and i64 %5, %not, !dbg !503
  store i64 %and, ptr %4, align 8, !dbg !503
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !504
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !504
  ret void, !dbg !504
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !505 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !508, metadata !DIExpression()), !dbg !510
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !509, metadata !DIExpression()), !dbg !511
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !512
  %1 = load i64, ptr %nr.addr, align 8, !dbg !513
  %div = udiv i64 %1, 64, !dbg !513
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !514
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !515
  %2 = load i64, ptr %nr.addr, align 8, !dbg !516
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !517
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !518
  ret void, !dbg !519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !520 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !529, metadata !DIExpression()), !dbg !531
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !530, metadata !DIExpression()), !dbg !532
  %0 = load ptr, ptr %v.addr, align 8, !dbg !533
  %1 = load i64, ptr %size.addr, align 8, !dbg !534
  %conv = trunc i64 %1 to i32, !dbg !534
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !535
  %2 = load ptr, ptr %v.addr, align 8, !dbg !536
  %3 = load i64, ptr %size.addr, align 8, !dbg !536
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #9, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !538 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !541, metadata !DIExpression()), !dbg !543
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !542, metadata !DIExpression()), !dbg !544
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !545
  %1 = load i64, ptr %nr.addr, align 8, !dbg !546
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !547, !srcloc !548
  ret void, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #0 align 16 !dbg !550 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !555, metadata !DIExpression()), !dbg !557
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !556, metadata !DIExpression()), !dbg !558
  ret i1 true, !dbg !559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #0 align 16 !dbg !560 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !565, metadata !DIExpression()), !dbg !568
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !566, metadata !DIExpression()), !dbg !569
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !567, metadata !DIExpression()), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_single_phys(i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_mask_sequence_phys(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_send_IPI_mask_allbutself_phys(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @apic_default_calc_apicid(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @physflat_probe() #2 align 16 !dbg !572 {
entry:
  %0 = load ptr, ptr @apic, align 8, !dbg !573
  %cmp = icmp eq ptr %0, @apic_physflat, !dbg !574
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !575

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #9, !dbg !576
  %cmp1 = icmp ugt i32 %call, 8, !dbg !577
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !578

lor.rhs:                                          ; preds = %lor.lhs.false
  %call2 = call zeroext i1 @jailhouse_paravirt() #9, !dbg !579
  br label %lor.end, !dbg !578

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %1 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call2, %lor.rhs ]
  %lor.ext = zext i1 %1 to i32, !dbg !578
  ret i32 %lor.ext, !dbg !580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @physflat_acpi_madt_oem_check(ptr noundef %oem_id, ptr noundef %oem_table_id) #2 align 16 !dbg !581 {
entry:
  %retval = alloca i32, align 4
  %oem_id.addr = alloca ptr, align 8
  %oem_table_id.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %oem_id, ptr %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_id.addr, metadata !583, metadata !DIExpression()), !dbg !585
  store ptr %oem_table_id, ptr %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_table_id.addr, metadata !584, metadata !DIExpression()), !dbg !586
  %0 = load i8, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_FADT, i32 0, i32 2), align 1, !dbg !587
  %conv = zext i8 %0 to i32, !dbg !589
  %cmp = icmp sge i32 %conv, 3, !dbg !590
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !591

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !592
  %and = and i32 %1, 524288, !dbg !593
  %tobool = icmp ne i32 %and, 0, !dbg !593
  br i1 %tobool, label %if.then, label %if.end, !dbg !594

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !595

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !598

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #13, !dbg !595
  store i32 %call, ptr %tmp, align 4, !dbg !598
  %2 = load i32, ptr %tmp, align 4, !dbg !595
  store i32 1, ptr %retval, align 4, !dbg !600
  br label %return, !dbg !600

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %oem_id.addr, align 8, !dbg !601
  %call2 = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.4, i64 noundef 3) #9, !dbg !603
  %tobool3 = icmp ne i32 %call2, 0, !dbg !603
  br i1 %tobool3, label %if.end12, label %land.lhs.true4, !dbg !604

land.lhs.true4:                                   ; preds = %if.end
  %4 = load ptr, ptr %oem_table_id.addr, align 8, !dbg !605
  %call5 = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.5, i64 noundef 3) #9, !dbg !606
  %tobool6 = icmp ne i32 %call5, 0, !dbg !606
  br i1 %tobool6, label %if.end12, label %if.then7, !dbg !607

if.then7:                                         ; preds = %land.lhs.true4
  br label %do.body8, !dbg !608

do.body8:                                         ; preds = %if.then7
  br label %do.end9, !dbg !611

do.end9:                                          ; preds = %do.body8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #13, !dbg !608
  store i32 %call11, ptr %tmp10, align 4, !dbg !611
  %5 = load i32, ptr %tmp10, align 4, !dbg !608
  store i32 1, ptr %retval, align 4, !dbg !613
  br label %return, !dbg !613

if.end12:                                         ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4, !dbg !614
  br label %return, !dbg !614

return:                                           ; preds = %if.end12, %do.end9, %do.end
  %6 = load i32, ptr %retval, align 4, !dbg !615
  ret i32 %6, !dbg !615
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #0 align 16 !dbg !616 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !622
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !622
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !622
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #9, !dbg !623
  ret i32 %call, !dbg !624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jailhouse_paravirt() #0 align 16 !dbg !625 {
entry:
  ret i1 false, !dbg !627
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !628 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !633, metadata !DIExpression()), !dbg !635
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !634, metadata !DIExpression()), !dbg !636
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !637
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !637
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !637

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !637
  %cmp = icmp ule i32 %2, 64, !dbg !637
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !637

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !637
  %cmp2 = icmp ugt i32 %3, 0, !dbg !637
  br i1 %cmp2, label %if.then, label %if.end, !dbg !639

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !640
  %5 = load i64, ptr %4, align 8, !dbg !641
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !642
  %sub = sub i32 0, %6, !dbg !642
  %and = and i32 %sub, 63, !dbg !642
  %sh_prom = zext i32 %and to i64, !dbg !642
  %shr = lshr i64 -1, %sh_prom, !dbg !642
  %and3 = and i64 %5, %shr, !dbg !643
  %call = call i64 @hweight_long(i64 noundef %and3) #9, !dbg !644
  %conv = trunc i64 %call to i32, !dbg !644
  store i32 %conv, ptr %retval, align 4, !dbg !645
  br label %return, !dbg !645

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !646
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !647
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #9, !dbg !648
  store i32 %call4, ptr %retval, align 4, !dbg !649
  br label %return, !dbg !649

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !650
  ret i32 %9, !dbg !650
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #5 align 16 !dbg !651 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !656, metadata !DIExpression()), !dbg !657
  %0 = load i64, ptr %w.addr, align 8, !dbg !658
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !658
  br i1 %1, label %cond.true, label %cond.false, !dbg !658

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !658
  %and = and i64 %2, 1, !dbg !658
  %tobool = icmp ne i64 %and, 0, !dbg !658
  %lnot = xor i1 %tobool, true, !dbg !658
  %lnot1 = xor i1 %lnot, true, !dbg !658
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !658
  %3 = load i64, ptr %w.addr, align 8, !dbg !658
  %and2 = and i64 %3, 2, !dbg !658
  %tobool3 = icmp ne i64 %and2, 0, !dbg !658
  %lnot4 = xor i1 %tobool3, true, !dbg !658
  %lnot6 = xor i1 %lnot4, true, !dbg !658
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !658
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !658
  %4 = load i64, ptr %w.addr, align 8, !dbg !658
  %and8 = and i64 %4, 4, !dbg !658
  %tobool9 = icmp ne i64 %and8, 0, !dbg !658
  %lnot10 = xor i1 %tobool9, true, !dbg !658
  %lnot12 = xor i1 %lnot10, true, !dbg !658
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !658
  %add14 = add i32 %add, %lnot.ext13, !dbg !658
  %5 = load i64, ptr %w.addr, align 8, !dbg !658
  %and15 = and i64 %5, 8, !dbg !658
  %tobool16 = icmp ne i64 %and15, 0, !dbg !658
  %lnot17 = xor i1 %tobool16, true, !dbg !658
  %lnot19 = xor i1 %lnot17, true, !dbg !658
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !658
  %add21 = add i32 %add14, %lnot.ext20, !dbg !658
  %6 = load i64, ptr %w.addr, align 8, !dbg !658
  %and22 = and i64 %6, 16, !dbg !658
  %tobool23 = icmp ne i64 %and22, 0, !dbg !658
  %lnot24 = xor i1 %tobool23, true, !dbg !658
  %lnot26 = xor i1 %lnot24, true, !dbg !658
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !658
  %add28 = add i32 %add21, %lnot.ext27, !dbg !658
  %7 = load i64, ptr %w.addr, align 8, !dbg !658
  %and29 = and i64 %7, 32, !dbg !658
  %tobool30 = icmp ne i64 %and29, 0, !dbg !658
  %lnot31 = xor i1 %tobool30, true, !dbg !658
  %lnot33 = xor i1 %lnot31, true, !dbg !658
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !658
  %add35 = add i32 %add28, %lnot.ext34, !dbg !658
  %8 = load i64, ptr %w.addr, align 8, !dbg !658
  %and36 = and i64 %8, 64, !dbg !658
  %tobool37 = icmp ne i64 %and36, 0, !dbg !658
  %lnot38 = xor i1 %tobool37, true, !dbg !658
  %lnot40 = xor i1 %lnot38, true, !dbg !658
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !658
  %add42 = add i32 %add35, %lnot.ext41, !dbg !658
  %9 = load i64, ptr %w.addr, align 8, !dbg !658
  %and43 = and i64 %9, 128, !dbg !658
  %tobool44 = icmp ne i64 %and43, 0, !dbg !658
  %lnot45 = xor i1 %tobool44, true, !dbg !658
  %lnot47 = xor i1 %lnot45, true, !dbg !658
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !658
  %add49 = add i32 %add42, %lnot.ext48, !dbg !658
  %10 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr = lshr i64 %10, 8, !dbg !658
  %and50 = and i64 %shr, 1, !dbg !658
  %tobool51 = icmp ne i64 %and50, 0, !dbg !658
  %lnot52 = xor i1 %tobool51, true, !dbg !658
  %lnot54 = xor i1 %lnot52, true, !dbg !658
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !658
  %11 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr56 = lshr i64 %11, 8, !dbg !658
  %and57 = and i64 %shr56, 2, !dbg !658
  %tobool58 = icmp ne i64 %and57, 0, !dbg !658
  %lnot59 = xor i1 %tobool58, true, !dbg !658
  %lnot61 = xor i1 %lnot59, true, !dbg !658
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !658
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !658
  %12 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr64 = lshr i64 %12, 8, !dbg !658
  %and65 = and i64 %shr64, 4, !dbg !658
  %tobool66 = icmp ne i64 %and65, 0, !dbg !658
  %lnot67 = xor i1 %tobool66, true, !dbg !658
  %lnot69 = xor i1 %lnot67, true, !dbg !658
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !658
  %add71 = add i32 %add63, %lnot.ext70, !dbg !658
  %13 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr72 = lshr i64 %13, 8, !dbg !658
  %and73 = and i64 %shr72, 8, !dbg !658
  %tobool74 = icmp ne i64 %and73, 0, !dbg !658
  %lnot75 = xor i1 %tobool74, true, !dbg !658
  %lnot77 = xor i1 %lnot75, true, !dbg !658
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !658
  %add79 = add i32 %add71, %lnot.ext78, !dbg !658
  %14 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr80 = lshr i64 %14, 8, !dbg !658
  %and81 = and i64 %shr80, 16, !dbg !658
  %tobool82 = icmp ne i64 %and81, 0, !dbg !658
  %lnot83 = xor i1 %tobool82, true, !dbg !658
  %lnot85 = xor i1 %lnot83, true, !dbg !658
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !658
  %add87 = add i32 %add79, %lnot.ext86, !dbg !658
  %15 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr88 = lshr i64 %15, 8, !dbg !658
  %and89 = and i64 %shr88, 32, !dbg !658
  %tobool90 = icmp ne i64 %and89, 0, !dbg !658
  %lnot91 = xor i1 %tobool90, true, !dbg !658
  %lnot93 = xor i1 %lnot91, true, !dbg !658
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !658
  %add95 = add i32 %add87, %lnot.ext94, !dbg !658
  %16 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr96 = lshr i64 %16, 8, !dbg !658
  %and97 = and i64 %shr96, 64, !dbg !658
  %tobool98 = icmp ne i64 %and97, 0, !dbg !658
  %lnot99 = xor i1 %tobool98, true, !dbg !658
  %lnot101 = xor i1 %lnot99, true, !dbg !658
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !658
  %add103 = add i32 %add95, %lnot.ext102, !dbg !658
  %17 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr104 = lshr i64 %17, 8, !dbg !658
  %and105 = and i64 %shr104, 128, !dbg !658
  %tobool106 = icmp ne i64 %and105, 0, !dbg !658
  %lnot107 = xor i1 %tobool106, true, !dbg !658
  %lnot109 = xor i1 %lnot107, true, !dbg !658
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !658
  %add111 = add i32 %add103, %lnot.ext110, !dbg !658
  %add112 = add i32 %add49, %add111, !dbg !658
  %18 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr113 = lshr i64 %18, 16, !dbg !658
  %and114 = and i64 %shr113, 1, !dbg !658
  %tobool115 = icmp ne i64 %and114, 0, !dbg !658
  %lnot116 = xor i1 %tobool115, true, !dbg !658
  %lnot118 = xor i1 %lnot116, true, !dbg !658
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !658
  %19 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr120 = lshr i64 %19, 16, !dbg !658
  %and121 = and i64 %shr120, 2, !dbg !658
  %tobool122 = icmp ne i64 %and121, 0, !dbg !658
  %lnot123 = xor i1 %tobool122, true, !dbg !658
  %lnot125 = xor i1 %lnot123, true, !dbg !658
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !658
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !658
  %20 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr128 = lshr i64 %20, 16, !dbg !658
  %and129 = and i64 %shr128, 4, !dbg !658
  %tobool130 = icmp ne i64 %and129, 0, !dbg !658
  %lnot131 = xor i1 %tobool130, true, !dbg !658
  %lnot133 = xor i1 %lnot131, true, !dbg !658
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !658
  %add135 = add i32 %add127, %lnot.ext134, !dbg !658
  %21 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr136 = lshr i64 %21, 16, !dbg !658
  %and137 = and i64 %shr136, 8, !dbg !658
  %tobool138 = icmp ne i64 %and137, 0, !dbg !658
  %lnot139 = xor i1 %tobool138, true, !dbg !658
  %lnot141 = xor i1 %lnot139, true, !dbg !658
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !658
  %add143 = add i32 %add135, %lnot.ext142, !dbg !658
  %22 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr144 = lshr i64 %22, 16, !dbg !658
  %and145 = and i64 %shr144, 16, !dbg !658
  %tobool146 = icmp ne i64 %and145, 0, !dbg !658
  %lnot147 = xor i1 %tobool146, true, !dbg !658
  %lnot149 = xor i1 %lnot147, true, !dbg !658
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !658
  %add151 = add i32 %add143, %lnot.ext150, !dbg !658
  %23 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr152 = lshr i64 %23, 16, !dbg !658
  %and153 = and i64 %shr152, 32, !dbg !658
  %tobool154 = icmp ne i64 %and153, 0, !dbg !658
  %lnot155 = xor i1 %tobool154, true, !dbg !658
  %lnot157 = xor i1 %lnot155, true, !dbg !658
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !658
  %add159 = add i32 %add151, %lnot.ext158, !dbg !658
  %24 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr160 = lshr i64 %24, 16, !dbg !658
  %and161 = and i64 %shr160, 64, !dbg !658
  %tobool162 = icmp ne i64 %and161, 0, !dbg !658
  %lnot163 = xor i1 %tobool162, true, !dbg !658
  %lnot165 = xor i1 %lnot163, true, !dbg !658
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !658
  %add167 = add i32 %add159, %lnot.ext166, !dbg !658
  %25 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr168 = lshr i64 %25, 16, !dbg !658
  %and169 = and i64 %shr168, 128, !dbg !658
  %tobool170 = icmp ne i64 %and169, 0, !dbg !658
  %lnot171 = xor i1 %tobool170, true, !dbg !658
  %lnot173 = xor i1 %lnot171, true, !dbg !658
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !658
  %add175 = add i32 %add167, %lnot.ext174, !dbg !658
  %26 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr176 = lshr i64 %26, 16, !dbg !658
  %shr177 = lshr i64 %shr176, 8, !dbg !658
  %and178 = and i64 %shr177, 1, !dbg !658
  %tobool179 = icmp ne i64 %and178, 0, !dbg !658
  %lnot180 = xor i1 %tobool179, true, !dbg !658
  %lnot182 = xor i1 %lnot180, true, !dbg !658
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !658
  %27 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr184 = lshr i64 %27, 16, !dbg !658
  %shr185 = lshr i64 %shr184, 8, !dbg !658
  %and186 = and i64 %shr185, 2, !dbg !658
  %tobool187 = icmp ne i64 %and186, 0, !dbg !658
  %lnot188 = xor i1 %tobool187, true, !dbg !658
  %lnot190 = xor i1 %lnot188, true, !dbg !658
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !658
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !658
  %28 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr193 = lshr i64 %28, 16, !dbg !658
  %shr194 = lshr i64 %shr193, 8, !dbg !658
  %and195 = and i64 %shr194, 4, !dbg !658
  %tobool196 = icmp ne i64 %and195, 0, !dbg !658
  %lnot197 = xor i1 %tobool196, true, !dbg !658
  %lnot199 = xor i1 %lnot197, true, !dbg !658
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !658
  %add201 = add i32 %add192, %lnot.ext200, !dbg !658
  %29 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr202 = lshr i64 %29, 16, !dbg !658
  %shr203 = lshr i64 %shr202, 8, !dbg !658
  %and204 = and i64 %shr203, 8, !dbg !658
  %tobool205 = icmp ne i64 %and204, 0, !dbg !658
  %lnot206 = xor i1 %tobool205, true, !dbg !658
  %lnot208 = xor i1 %lnot206, true, !dbg !658
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !658
  %add210 = add i32 %add201, %lnot.ext209, !dbg !658
  %30 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr211 = lshr i64 %30, 16, !dbg !658
  %shr212 = lshr i64 %shr211, 8, !dbg !658
  %and213 = and i64 %shr212, 16, !dbg !658
  %tobool214 = icmp ne i64 %and213, 0, !dbg !658
  %lnot215 = xor i1 %tobool214, true, !dbg !658
  %lnot217 = xor i1 %lnot215, true, !dbg !658
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !658
  %add219 = add i32 %add210, %lnot.ext218, !dbg !658
  %31 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr220 = lshr i64 %31, 16, !dbg !658
  %shr221 = lshr i64 %shr220, 8, !dbg !658
  %and222 = and i64 %shr221, 32, !dbg !658
  %tobool223 = icmp ne i64 %and222, 0, !dbg !658
  %lnot224 = xor i1 %tobool223, true, !dbg !658
  %lnot226 = xor i1 %lnot224, true, !dbg !658
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !658
  %add228 = add i32 %add219, %lnot.ext227, !dbg !658
  %32 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr229 = lshr i64 %32, 16, !dbg !658
  %shr230 = lshr i64 %shr229, 8, !dbg !658
  %and231 = and i64 %shr230, 64, !dbg !658
  %tobool232 = icmp ne i64 %and231, 0, !dbg !658
  %lnot233 = xor i1 %tobool232, true, !dbg !658
  %lnot235 = xor i1 %lnot233, true, !dbg !658
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !658
  %add237 = add i32 %add228, %lnot.ext236, !dbg !658
  %33 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr238 = lshr i64 %33, 16, !dbg !658
  %shr239 = lshr i64 %shr238, 8, !dbg !658
  %and240 = and i64 %shr239, 128, !dbg !658
  %tobool241 = icmp ne i64 %and240, 0, !dbg !658
  %lnot242 = xor i1 %tobool241, true, !dbg !658
  %lnot244 = xor i1 %lnot242, true, !dbg !658
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !658
  %add246 = add i32 %add237, %lnot.ext245, !dbg !658
  %add247 = add i32 %add175, %add246, !dbg !658
  %add248 = add i32 %add112, %add247, !dbg !658
  %34 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr249 = lshr i64 %34, 32, !dbg !658
  %and250 = and i64 %shr249, 1, !dbg !658
  %tobool251 = icmp ne i64 %and250, 0, !dbg !658
  %lnot252 = xor i1 %tobool251, true, !dbg !658
  %lnot254 = xor i1 %lnot252, true, !dbg !658
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !658
  %35 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr256 = lshr i64 %35, 32, !dbg !658
  %and257 = and i64 %shr256, 2, !dbg !658
  %tobool258 = icmp ne i64 %and257, 0, !dbg !658
  %lnot259 = xor i1 %tobool258, true, !dbg !658
  %lnot261 = xor i1 %lnot259, true, !dbg !658
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !658
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !658
  %36 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr264 = lshr i64 %36, 32, !dbg !658
  %and265 = and i64 %shr264, 4, !dbg !658
  %tobool266 = icmp ne i64 %and265, 0, !dbg !658
  %lnot267 = xor i1 %tobool266, true, !dbg !658
  %lnot269 = xor i1 %lnot267, true, !dbg !658
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !658
  %add271 = add i32 %add263, %lnot.ext270, !dbg !658
  %37 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr272 = lshr i64 %37, 32, !dbg !658
  %and273 = and i64 %shr272, 8, !dbg !658
  %tobool274 = icmp ne i64 %and273, 0, !dbg !658
  %lnot275 = xor i1 %tobool274, true, !dbg !658
  %lnot277 = xor i1 %lnot275, true, !dbg !658
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !658
  %add279 = add i32 %add271, %lnot.ext278, !dbg !658
  %38 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr280 = lshr i64 %38, 32, !dbg !658
  %and281 = and i64 %shr280, 16, !dbg !658
  %tobool282 = icmp ne i64 %and281, 0, !dbg !658
  %lnot283 = xor i1 %tobool282, true, !dbg !658
  %lnot285 = xor i1 %lnot283, true, !dbg !658
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !658
  %add287 = add i32 %add279, %lnot.ext286, !dbg !658
  %39 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr288 = lshr i64 %39, 32, !dbg !658
  %and289 = and i64 %shr288, 32, !dbg !658
  %tobool290 = icmp ne i64 %and289, 0, !dbg !658
  %lnot291 = xor i1 %tobool290, true, !dbg !658
  %lnot293 = xor i1 %lnot291, true, !dbg !658
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !658
  %add295 = add i32 %add287, %lnot.ext294, !dbg !658
  %40 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr296 = lshr i64 %40, 32, !dbg !658
  %and297 = and i64 %shr296, 64, !dbg !658
  %tobool298 = icmp ne i64 %and297, 0, !dbg !658
  %lnot299 = xor i1 %tobool298, true, !dbg !658
  %lnot301 = xor i1 %lnot299, true, !dbg !658
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !658
  %add303 = add i32 %add295, %lnot.ext302, !dbg !658
  %41 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr304 = lshr i64 %41, 32, !dbg !658
  %and305 = and i64 %shr304, 128, !dbg !658
  %tobool306 = icmp ne i64 %and305, 0, !dbg !658
  %lnot307 = xor i1 %tobool306, true, !dbg !658
  %lnot309 = xor i1 %lnot307, true, !dbg !658
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !658
  %add311 = add i32 %add303, %lnot.ext310, !dbg !658
  %42 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr312 = lshr i64 %42, 32, !dbg !658
  %shr313 = lshr i64 %shr312, 8, !dbg !658
  %and314 = and i64 %shr313, 1, !dbg !658
  %tobool315 = icmp ne i64 %and314, 0, !dbg !658
  %lnot316 = xor i1 %tobool315, true, !dbg !658
  %lnot318 = xor i1 %lnot316, true, !dbg !658
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !658
  %43 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr320 = lshr i64 %43, 32, !dbg !658
  %shr321 = lshr i64 %shr320, 8, !dbg !658
  %and322 = and i64 %shr321, 2, !dbg !658
  %tobool323 = icmp ne i64 %and322, 0, !dbg !658
  %lnot324 = xor i1 %tobool323, true, !dbg !658
  %lnot326 = xor i1 %lnot324, true, !dbg !658
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !658
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !658
  %44 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr329 = lshr i64 %44, 32, !dbg !658
  %shr330 = lshr i64 %shr329, 8, !dbg !658
  %and331 = and i64 %shr330, 4, !dbg !658
  %tobool332 = icmp ne i64 %and331, 0, !dbg !658
  %lnot333 = xor i1 %tobool332, true, !dbg !658
  %lnot335 = xor i1 %lnot333, true, !dbg !658
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !658
  %add337 = add i32 %add328, %lnot.ext336, !dbg !658
  %45 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr338 = lshr i64 %45, 32, !dbg !658
  %shr339 = lshr i64 %shr338, 8, !dbg !658
  %and340 = and i64 %shr339, 8, !dbg !658
  %tobool341 = icmp ne i64 %and340, 0, !dbg !658
  %lnot342 = xor i1 %tobool341, true, !dbg !658
  %lnot344 = xor i1 %lnot342, true, !dbg !658
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !658
  %add346 = add i32 %add337, %lnot.ext345, !dbg !658
  %46 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr347 = lshr i64 %46, 32, !dbg !658
  %shr348 = lshr i64 %shr347, 8, !dbg !658
  %and349 = and i64 %shr348, 16, !dbg !658
  %tobool350 = icmp ne i64 %and349, 0, !dbg !658
  %lnot351 = xor i1 %tobool350, true, !dbg !658
  %lnot353 = xor i1 %lnot351, true, !dbg !658
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !658
  %add355 = add i32 %add346, %lnot.ext354, !dbg !658
  %47 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr356 = lshr i64 %47, 32, !dbg !658
  %shr357 = lshr i64 %shr356, 8, !dbg !658
  %and358 = and i64 %shr357, 32, !dbg !658
  %tobool359 = icmp ne i64 %and358, 0, !dbg !658
  %lnot360 = xor i1 %tobool359, true, !dbg !658
  %lnot362 = xor i1 %lnot360, true, !dbg !658
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !658
  %add364 = add i32 %add355, %lnot.ext363, !dbg !658
  %48 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr365 = lshr i64 %48, 32, !dbg !658
  %shr366 = lshr i64 %shr365, 8, !dbg !658
  %and367 = and i64 %shr366, 64, !dbg !658
  %tobool368 = icmp ne i64 %and367, 0, !dbg !658
  %lnot369 = xor i1 %tobool368, true, !dbg !658
  %lnot371 = xor i1 %lnot369, true, !dbg !658
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !658
  %add373 = add i32 %add364, %lnot.ext372, !dbg !658
  %49 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr374 = lshr i64 %49, 32, !dbg !658
  %shr375 = lshr i64 %shr374, 8, !dbg !658
  %and376 = and i64 %shr375, 128, !dbg !658
  %tobool377 = icmp ne i64 %and376, 0, !dbg !658
  %lnot378 = xor i1 %tobool377, true, !dbg !658
  %lnot380 = xor i1 %lnot378, true, !dbg !658
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !658
  %add382 = add i32 %add373, %lnot.ext381, !dbg !658
  %add383 = add i32 %add311, %add382, !dbg !658
  %50 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr384 = lshr i64 %50, 32, !dbg !658
  %shr385 = lshr i64 %shr384, 16, !dbg !658
  %and386 = and i64 %shr385, 1, !dbg !658
  %tobool387 = icmp ne i64 %and386, 0, !dbg !658
  %lnot388 = xor i1 %tobool387, true, !dbg !658
  %lnot390 = xor i1 %lnot388, true, !dbg !658
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !658
  %51 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr392 = lshr i64 %51, 32, !dbg !658
  %shr393 = lshr i64 %shr392, 16, !dbg !658
  %and394 = and i64 %shr393, 2, !dbg !658
  %tobool395 = icmp ne i64 %and394, 0, !dbg !658
  %lnot396 = xor i1 %tobool395, true, !dbg !658
  %lnot398 = xor i1 %lnot396, true, !dbg !658
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !658
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !658
  %52 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr401 = lshr i64 %52, 32, !dbg !658
  %shr402 = lshr i64 %shr401, 16, !dbg !658
  %and403 = and i64 %shr402, 4, !dbg !658
  %tobool404 = icmp ne i64 %and403, 0, !dbg !658
  %lnot405 = xor i1 %tobool404, true, !dbg !658
  %lnot407 = xor i1 %lnot405, true, !dbg !658
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !658
  %add409 = add i32 %add400, %lnot.ext408, !dbg !658
  %53 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr410 = lshr i64 %53, 32, !dbg !658
  %shr411 = lshr i64 %shr410, 16, !dbg !658
  %and412 = and i64 %shr411, 8, !dbg !658
  %tobool413 = icmp ne i64 %and412, 0, !dbg !658
  %lnot414 = xor i1 %tobool413, true, !dbg !658
  %lnot416 = xor i1 %lnot414, true, !dbg !658
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !658
  %add418 = add i32 %add409, %lnot.ext417, !dbg !658
  %54 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr419 = lshr i64 %54, 32, !dbg !658
  %shr420 = lshr i64 %shr419, 16, !dbg !658
  %and421 = and i64 %shr420, 16, !dbg !658
  %tobool422 = icmp ne i64 %and421, 0, !dbg !658
  %lnot423 = xor i1 %tobool422, true, !dbg !658
  %lnot425 = xor i1 %lnot423, true, !dbg !658
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !658
  %add427 = add i32 %add418, %lnot.ext426, !dbg !658
  %55 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr428 = lshr i64 %55, 32, !dbg !658
  %shr429 = lshr i64 %shr428, 16, !dbg !658
  %and430 = and i64 %shr429, 32, !dbg !658
  %tobool431 = icmp ne i64 %and430, 0, !dbg !658
  %lnot432 = xor i1 %tobool431, true, !dbg !658
  %lnot434 = xor i1 %lnot432, true, !dbg !658
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !658
  %add436 = add i32 %add427, %lnot.ext435, !dbg !658
  %56 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr437 = lshr i64 %56, 32, !dbg !658
  %shr438 = lshr i64 %shr437, 16, !dbg !658
  %and439 = and i64 %shr438, 64, !dbg !658
  %tobool440 = icmp ne i64 %and439, 0, !dbg !658
  %lnot441 = xor i1 %tobool440, true, !dbg !658
  %lnot443 = xor i1 %lnot441, true, !dbg !658
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !658
  %add445 = add i32 %add436, %lnot.ext444, !dbg !658
  %57 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr446 = lshr i64 %57, 32, !dbg !658
  %shr447 = lshr i64 %shr446, 16, !dbg !658
  %and448 = and i64 %shr447, 128, !dbg !658
  %tobool449 = icmp ne i64 %and448, 0, !dbg !658
  %lnot450 = xor i1 %tobool449, true, !dbg !658
  %lnot452 = xor i1 %lnot450, true, !dbg !658
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !658
  %add454 = add i32 %add445, %lnot.ext453, !dbg !658
  %58 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr455 = lshr i64 %58, 32, !dbg !658
  %shr456 = lshr i64 %shr455, 16, !dbg !658
  %shr457 = lshr i64 %shr456, 8, !dbg !658
  %and458 = and i64 %shr457, 1, !dbg !658
  %tobool459 = icmp ne i64 %and458, 0, !dbg !658
  %lnot460 = xor i1 %tobool459, true, !dbg !658
  %lnot462 = xor i1 %lnot460, true, !dbg !658
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !658
  %59 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr464 = lshr i64 %59, 32, !dbg !658
  %shr465 = lshr i64 %shr464, 16, !dbg !658
  %shr466 = lshr i64 %shr465, 8, !dbg !658
  %and467 = and i64 %shr466, 2, !dbg !658
  %tobool468 = icmp ne i64 %and467, 0, !dbg !658
  %lnot469 = xor i1 %tobool468, true, !dbg !658
  %lnot471 = xor i1 %lnot469, true, !dbg !658
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !658
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !658
  %60 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr474 = lshr i64 %60, 32, !dbg !658
  %shr475 = lshr i64 %shr474, 16, !dbg !658
  %shr476 = lshr i64 %shr475, 8, !dbg !658
  %and477 = and i64 %shr476, 4, !dbg !658
  %tobool478 = icmp ne i64 %and477, 0, !dbg !658
  %lnot479 = xor i1 %tobool478, true, !dbg !658
  %lnot481 = xor i1 %lnot479, true, !dbg !658
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !658
  %add483 = add i32 %add473, %lnot.ext482, !dbg !658
  %61 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr484 = lshr i64 %61, 32, !dbg !658
  %shr485 = lshr i64 %shr484, 16, !dbg !658
  %shr486 = lshr i64 %shr485, 8, !dbg !658
  %and487 = and i64 %shr486, 8, !dbg !658
  %tobool488 = icmp ne i64 %and487, 0, !dbg !658
  %lnot489 = xor i1 %tobool488, true, !dbg !658
  %lnot491 = xor i1 %lnot489, true, !dbg !658
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !658
  %add493 = add i32 %add483, %lnot.ext492, !dbg !658
  %62 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr494 = lshr i64 %62, 32, !dbg !658
  %shr495 = lshr i64 %shr494, 16, !dbg !658
  %shr496 = lshr i64 %shr495, 8, !dbg !658
  %and497 = and i64 %shr496, 16, !dbg !658
  %tobool498 = icmp ne i64 %and497, 0, !dbg !658
  %lnot499 = xor i1 %tobool498, true, !dbg !658
  %lnot501 = xor i1 %lnot499, true, !dbg !658
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !658
  %add503 = add i32 %add493, %lnot.ext502, !dbg !658
  %63 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr504 = lshr i64 %63, 32, !dbg !658
  %shr505 = lshr i64 %shr504, 16, !dbg !658
  %shr506 = lshr i64 %shr505, 8, !dbg !658
  %and507 = and i64 %shr506, 32, !dbg !658
  %tobool508 = icmp ne i64 %and507, 0, !dbg !658
  %lnot509 = xor i1 %tobool508, true, !dbg !658
  %lnot511 = xor i1 %lnot509, true, !dbg !658
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !658
  %add513 = add i32 %add503, %lnot.ext512, !dbg !658
  %64 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr514 = lshr i64 %64, 32, !dbg !658
  %shr515 = lshr i64 %shr514, 16, !dbg !658
  %shr516 = lshr i64 %shr515, 8, !dbg !658
  %and517 = and i64 %shr516, 64, !dbg !658
  %tobool518 = icmp ne i64 %and517, 0, !dbg !658
  %lnot519 = xor i1 %tobool518, true, !dbg !658
  %lnot521 = xor i1 %lnot519, true, !dbg !658
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !658
  %add523 = add i32 %add513, %lnot.ext522, !dbg !658
  %65 = load i64, ptr %w.addr, align 8, !dbg !658
  %shr524 = lshr i64 %65, 32, !dbg !658
  %shr525 = lshr i64 %shr524, 16, !dbg !658
  %shr526 = lshr i64 %shr525, 8, !dbg !658
  %and527 = and i64 %shr526, 128, !dbg !658
  %tobool528 = icmp ne i64 %and527, 0, !dbg !658
  %lnot529 = xor i1 %tobool528, true, !dbg !658
  %lnot531 = xor i1 %lnot529, true, !dbg !658
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !658
  %add533 = add i32 %add523, %lnot.ext532, !dbg !658
  %add534 = add i32 %add454, %add533, !dbg !658
  %add535 = add i32 %add383, %add534, !dbg !658
  %add536 = add i32 %add248, %add535, !dbg !658
  %conv = zext i32 %add536 to i64, !dbg !658
  br label %cond.end, !dbg !658

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !658
  %call = call i64 @__arch_hweight64(i64 noundef %66) #9, !dbg !658
  br label %cond.end, !dbg !658

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !658
  ret i64 %cond, !dbg !659
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #5 align 16 !dbg !661 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %res, metadata !667, metadata !DIExpression()), !dbg !670
  %0 = load i64, ptr %w.addr, align 8, !dbg !671
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !672, !srcloc !673
  store i64 %1, ptr %res, align 8, !dbg !672
  %2 = load i64, ptr %res, align 8, !dbg !674
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !675
  ret i64 %2, !dbg !676
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !677 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !681 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: idx >= __end_of_fixed_addresses" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(read) }
attributes #12 = { noredzone noreturn }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apic_flat", scope: !2, file: !3, line: 79, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.apic_flat_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/apic_flat_64\22 -D KBUILD_BASENAME=\22apic_flat_64\22 -D KBUILD_MODNAME=\22apic_flat_64\22 -D __KBUILD_MODNAME=kmod_apic_flat_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/apic_flat_64.ll arch/x86/kernel/apic/apic_flat_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/apic/apic_flat_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64766a3a86bfa5f715aa406e9b0d5c62")
!4 = !{!5, !15, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "apic_delivery_modes", file: !6, line: 433, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/apicdef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdaaaf45bbaf966a6fbb9825227d537")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "APIC_DELIVERY_MODE_FIXED", value: 0)
!10 = !DIEnumerator(name: "APIC_DELIVERY_MODE_LOWESTPRIO", value: 1)
!11 = !DIEnumerator(name: "APIC_DELIVERY_MODE_SMI", value: 2)
!12 = !DIEnumerator(name: "APIC_DELIVERY_MODE_NMI", value: 4)
!13 = !DIEnumerator(name: "APIC_DELIVERY_MODE_INIT", value: 5)
!14 = !DIEnumerator(name: "APIC_DELIVERY_MODE_EXTINT", value: 7)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !16, line: 81, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!18 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!19 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!20 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!21 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!22 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!23 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!24 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!25 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!26 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!27 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!28 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 10, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "false", value: 0)
!33 = !DIEnumerator(name: "true", value: 1)
!34 = !{!35, !36, !42, !43, !45, !46, !47, !49, !51, !52, !55, !7, !64}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !39, line: 21, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !41, line: 27, baseType: !7)
!41 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !48, line: 42, baseType: !42)
!48 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !58, line: 19, size: 64, elements: !59)
!58 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !57, file: !58, line: 19, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !41, line: 31, baseType: !65)
!65 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!66 = !{!67, !175, !177, !182, !0, !187, !189, !194, !196, !201, !206, !208}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "apic", scope: !2, file: !3, line: 23, type: !69, isLocal: false, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic", file: !71, line: 258, size: 1920, elements: !72)
!71 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!72 = !{!73, !77, !78, !82, !86, !87, !91, !95, !99, !100, !104, !105, !106, !107, !108, !109, !110, !111, !115, !120, !121, !122, !126, !132, !138, !151, !152, !156, !160, !164, !168, !169, !173, !174}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !70, file: !71, line: 260, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "native_eoi", scope: !70, file: !71, line: 261, baseType: !74, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !70, file: !71, line: 262, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !38, !38}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !70, file: !71, line: 263, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!38, !38}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "wait_icr_idle", scope: !70, file: !71, line: 266, baseType: !74, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "safe_wait_icr_idle", scope: !70, file: !71, line: 267, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!38}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI", scope: !70, file: !71, line: 269, baseType: !92, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !46, !46}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask", scope: !70, file: !71, line: 270, baseType: !96, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !55, !46}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask_allbutself", scope: !70, file: !71, line: 271, baseType: !96, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_allbutself", scope: !70, file: !71, line: 272, baseType: !101, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !46}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_all", scope: !70, file: !71, line: 273, baseType: !101, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_self", scope: !70, file: !71, line: 274, baseType: !101, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !70, file: !71, line: 276, baseType: !5, size: 32, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "disable_esr", scope: !70, file: !71, line: 278, baseType: !38, size: 1, offset: 800, flags: DIFlagBitField, extraData: i64 800)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !70, file: !71, line: 279, baseType: !38, size: 1, offset: 801, flags: DIFlagBitField, extraData: i64 800)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_set_max_apicid", scope: !70, file: !71, line: 280, baseType: !38, size: 1, offset: 802, flags: DIFlagBitField, extraData: i64 800)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_to_offline_cpu", scope: !70, file: !71, line: 281, baseType: !38, size: 1, offset: 803, flags: DIFlagBitField, extraData: i64 800)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "calc_dest_apicid", scope: !70, file: !71, line: 283, baseType: !112, size: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!38, !7}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "icr_read", scope: !70, file: !71, line: 286, baseType: !116, size: 64, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !39, line: 23, baseType: !64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "icr_write", scope: !70, file: !71, line: 287, baseType: !79, size: 64, offset: 960)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "max_apic_id", scope: !70, file: !71, line: 290, baseType: !38, size: 32, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !70, file: !71, line: 293, baseType: !123, size: 64, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!46}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_madt_oem_check", scope: !70, file: !71, line: 294, baseType: !127, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!46, !130, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id_registered", scope: !70, file: !71, line: 295, baseType: !133, size: 64, offset: 1216)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 35, baseType: !137)
!137 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "check_apicid_used", scope: !70, file: !71, line: 297, baseType: !139, size: 64, offset: 1280)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!136, !142, !46}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "physid_mask_t", file: !144, line: 84, baseType: !145)
!144 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "physid_mask", file: !144, line: 80, size: 32768, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !145, file: !144, line: 81, baseType: !148, size: 32768)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32768, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "init_apic_ldr", scope: !70, file: !71, line: 298, baseType: !74, size: 64, offset: 1344)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic_phys_id_map", scope: !70, file: !71, line: 299, baseType: !153, size: 64, offset: 1408)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !142, !142}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_present_to_apicid", scope: !70, file: !71, line: 300, baseType: !157, size: 64, offset: 1472)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!46, !46}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "phys_pkg_id", scope: !70, file: !71, line: 301, baseType: !161, size: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!46, !46, !46}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "get_apic_id", scope: !70, file: !71, line: 303, baseType: !165, size: 64, offset: 1600)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!38, !42}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set_apic_id", scope: !70, file: !71, line: 304, baseType: !112, size: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu", scope: !70, file: !71, line: 307, baseType: !170, size: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!46, !46, !42}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu_64", scope: !70, file: !71, line: 309, baseType: !170, size: 64, offset: 1792)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 311, baseType: !130, size: 64, offset: 1856)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apic219", scope: !2, file: !3, line: 24, type: !35, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "__apicdrivers_apic_physflatapic_flat", scope: !2, file: !3, line: 193, type: !179, isLocal: true, isDefinition: true, align: 64)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 2)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 40, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 5)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !184, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 112, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 14)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "apic_physflat", scope: !2, file: !3, line: 150, type: !70, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 328, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 41)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 4)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !203, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 368, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 46)
!213 = !{i32 7, !"Dwarf Version", i32 5}
!214 = !{i32 2, !"Debug Info Version", i32 3}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 8, !"cf-protection-branch", i32 1}
!217 = !{i32 4, !"function_return_thunk_extern", i32 1}
!218 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!219 = !{i32 1, !"Code Model", i32 2}
!220 = !{i32 1, !"override-stack-alignment", i32 8}
!221 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!222 = distinct !DISubprogram(name: "native_apic_mem_eoi", scope: !71, file: !71, line: 103, type: !75, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!223 = !DILocation(line: 105, column: 2, scope: !222)
!224 = !DILocation(line: 106, column: 1, scope: !222)
!225 = distinct !DISubprogram(name: "native_apic_mem_write", scope: !71, file: !71, line: 89, type: !80, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227, !228, !229}
!227 = !DILocalVariable(name: "reg", arg: 1, scope: !225, file: !71, line: 89, type: !38)
!228 = !DILocalVariable(name: "v", arg: 2, scope: !225, file: !71, line: 89, type: !38)
!229 = !DILocalVariable(name: "addr", scope: !225, file: !71, line: 91, type: !36)
!230 = !DILocation(line: 89, column: 46, scope: !225)
!231 = !DILocation(line: 89, column: 55, scope: !225)
!232 = !DILocation(line: 91, column: 2, scope: !225)
!233 = !DILocation(line: 91, column: 16, scope: !225)
!234 = !DILocation(line: 91, column: 40, scope: !225)
!235 = !DILocation(line: 91, column: 52, scope: !225)
!236 = !DILocation(line: 91, column: 50, scope: !225)
!237 = !DILocation(line: 91, column: 23, scope: !225)
!238 = !DILocation(line: 93, column: 2, scope: !225)
!239 = !{i64 2153555585, i64 2153555613, i64 2153555619, i64 2153555635, i64 2153555651, i64 2153555678, i64 2153556004, i64 2153555323, i64 2153556010, i64 2153556058, i64 2153556122, i64 2153556186, i64 2153556243, i64 2153555404, i64 2153555429, i64 2153556467, i64 2153556596, i64 2153556528, i64 2153556610, i64 2153555521}
!240 = !DILocation(line: 96, column: 1, scope: !225)
!241 = distinct !DISubprogram(name: "native_apic_mem_read", scope: !71, file: !71, line: 98, type: !84, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!242 = !{!243}
!243 = !DILocalVariable(name: "reg", arg: 1, scope: !241, file: !71, line: 98, type: !38)
!244 = !DILocation(line: 98, column: 44, scope: !241)
!245 = !DILocation(line: 100, column: 32, scope: !241)
!246 = !DILocation(line: 100, column: 44, scope: !241)
!247 = !DILocation(line: 100, column: 42, scope: !241)
!248 = !DILocation(line: 100, column: 15, scope: !241)
!249 = !DILocation(line: 100, column: 9, scope: !241)
!250 = !DILocation(line: 100, column: 2, scope: !241)
!251 = distinct !DISubprogram(name: "flat_send_IPI_mask", scope: !3, file: !3, line: 40, type: !97, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!252 = !{!253, !254, !255}
!253 = !DILocalVariable(name: "cpumask", arg: 1, scope: !251, file: !3, line: 40, type: !55)
!254 = !DILocalVariable(name: "vector", arg: 2, scope: !251, file: !3, line: 40, type: !46)
!255 = !DILocalVariable(name: "mask", scope: !251, file: !3, line: 42, type: !42)
!256 = !DILocation(line: 40, column: 54, scope: !251)
!257 = !DILocation(line: 40, column: 67, scope: !251)
!258 = !DILocation(line: 42, column: 2, scope: !251)
!259 = !DILocation(line: 42, column: 16, scope: !251)
!260 = !DILocation(line: 42, column: 23, scope: !251)
!261 = !DILocation(line: 44, column: 22, scope: !251)
!262 = !DILocation(line: 44, column: 28, scope: !251)
!263 = !DILocation(line: 44, column: 2, scope: !251)
!264 = !DILocation(line: 45, column: 1, scope: !251)
!265 = distinct !DISubprogram(name: "flat_send_IPI_mask_allbutself", scope: !3, file: !3, line: 48, type: !97, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!266 = !{!267, !268, !269, !270, !271, !274, !278}
!267 = !DILocalVariable(name: "cpumask", arg: 1, scope: !265, file: !3, line: 48, type: !55)
!268 = !DILocalVariable(name: "vector", arg: 2, scope: !265, file: !3, line: 48, type: !46)
!269 = !DILocalVariable(name: "mask", scope: !265, file: !3, line: 50, type: !42)
!270 = !DILocalVariable(name: "cpu", scope: !265, file: !3, line: 51, type: !46)
!271 = !DILocalVariable(name: "pscr_ret__", scope: !272, file: !3, line: 51, type: !46)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 51, column: 12)
!273 = distinct !DILexicalBlock(scope: !265, file: !3, line: 51, column: 12)
!274 = !DILocalVariable(name: "__vpp_verify", scope: !275, file: !3, line: 51, type: !276)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 51, column: 12)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!278 = !DILocalVariable(name: "pfo_val__", scope: !279, file: !3, line: 51, type: !38)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 51, column: 12)
!280 = !DILocation(line: 48, column: 53, scope: !265)
!281 = !DILocation(line: 48, column: 66, scope: !265)
!282 = !DILocation(line: 50, column: 2, scope: !265)
!283 = !DILocation(line: 50, column: 16, scope: !265)
!284 = !DILocation(line: 50, column: 23, scope: !265)
!285 = !DILocation(line: 51, column: 2, scope: !265)
!286 = !DILocation(line: 51, column: 6, scope: !265)
!287 = !DILocation(line: 51, column: 12, scope: !273)
!288 = !DILocation(line: 51, column: 12, scope: !272)
!289 = !DILocation(line: 51, column: 12, scope: !275)
!290 = !DILocation(line: 51, column: 12, scope: !279)
!291 = !{i64 2153611525}
!292 = !DILocation(line: 53, column: 6, scope: !293)
!293 = distinct !DILexicalBlock(scope: !265, file: !3, line: 53, column: 6)
!294 = !DILocation(line: 53, column: 10, scope: !293)
!295 = !DILocation(line: 53, column: 6, scope: !265)
!296 = !DILocation(line: 54, column: 3, scope: !293)
!297 = !DILocation(line: 56, column: 22, scope: !265)
!298 = !DILocation(line: 56, column: 28, scope: !265)
!299 = !DILocation(line: 56, column: 2, scope: !265)
!300 = !DILocation(line: 57, column: 1, scope: !265)
!301 = distinct !DISubprogram(name: "flat_probe", scope: !3, file: !3, line: 74, type: !124, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!302 = !DILocation(line: 76, column: 2, scope: !301)
!303 = distinct !DISubprogram(name: "flat_acpi_madt_oem_check", scope: !3, file: !3, line: 26, type: !128, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!304 = !{!305, !306}
!305 = !DILocalVariable(name: "oem_id", arg: 1, scope: !303, file: !3, line: 26, type: !130)
!306 = !DILocalVariable(name: "oem_table_id", arg: 2, scope: !303, file: !3, line: 26, type: !130)
!307 = !DILocation(line: 26, column: 43, scope: !303)
!308 = !DILocation(line: 26, column: 57, scope: !303)
!309 = !DILocation(line: 28, column: 2, scope: !303)
!310 = distinct !DISubprogram(name: "flat_phys_pkg_id", scope: !3, file: !3, line: 69, type: !162, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "initial_apic_id", arg: 1, scope: !310, file: !3, line: 69, type: !46)
!313 = !DILocalVariable(name: "index_msb", arg: 2, scope: !310, file: !3, line: 69, type: !46)
!314 = !DILocation(line: 69, column: 33, scope: !310)
!315 = !DILocation(line: 69, column: 54, scope: !310)
!316 = !DILocation(line: 71, column: 9, scope: !310)
!317 = !DILocation(line: 71, column: 28, scope: !310)
!318 = !DILocation(line: 71, column: 25, scope: !310)
!319 = !DILocation(line: 71, column: 2, scope: !310)
!320 = distinct !DISubprogram(name: "flat_get_apic_id", scope: !3, file: !3, line: 59, type: !321, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!7, !42}
!323 = !{!324}
!324 = !DILocalVariable(name: "x", arg: 1, scope: !320, file: !3, line: 59, type: !42)
!325 = !DILocation(line: 59, column: 52, scope: !320)
!326 = !DILocation(line: 61, column: 10, scope: !320)
!327 = !DILocation(line: 61, column: 12, scope: !320)
!328 = !DILocation(line: 61, column: 19, scope: !320)
!329 = !DILocation(line: 61, column: 9, scope: !320)
!330 = !DILocation(line: 61, column: 2, scope: !320)
!331 = distinct !DISubprogram(name: "set_apic_id", scope: !3, file: !3, line: 64, type: !113, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!332 = !{!333}
!333 = !DILocalVariable(name: "id", arg: 1, scope: !331, file: !3, line: 64, type: !7)
!334 = !DILocation(line: 64, column: 37, scope: !331)
!335 = !DILocation(line: 66, column: 10, scope: !331)
!336 = !DILocation(line: 66, column: 13, scope: !331)
!337 = !DILocation(line: 66, column: 21, scope: !331)
!338 = !DILocation(line: 66, column: 2, scope: !331)
!339 = distinct !DISubprogram(name: "fix_to_virt", scope: !340, file: !340, line: 30, type: !341, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!340 = !DIFile(filename: "./include/asm-generic/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd8c6683336efdf1b0dfbdd9b73a00ed")
!341 = !DISubroutineType(types: !342)
!342 = !{!42, !343}
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!344 = !{!345}
!345 = !DILocalVariable(name: "idx", arg: 1, scope: !339, file: !340, line: 30, type: !343)
!346 = !DILocation(line: 30, column: 69, scope: !339)
!347 = !DILocation(line: 32, column: 2, scope: !339)
!348 = !DILocation(line: 32, column: 2, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !340, line: 32, column: 2)
!350 = distinct !DILexicalBlock(scope: !339, file: !340, line: 32, column: 2)
!351 = !DILocation(line: 32, column: 2, scope: !350)
!352 = !{i32 -2141630328}
!353 = !DILocation(line: 33, column: 9, scope: !339)
!354 = !DILocation(line: 33, column: 2, scope: !339)
!355 = !DISubprogram(name: "__compiletime_assert_205", scope: !340, file: !340, line: 32, type: !75, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!356 = distinct !DISubprogram(name: "readl", scope: !357, file: !357, line: 58, type: !358, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!357 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!358 = !DISubroutineType(types: !359)
!359 = !{!7, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!363 = !{!364, !365}
!364 = !DILocalVariable(name: "addr", arg: 1, scope: !356, file: !357, line: 58, type: !360)
!365 = !DILocalVariable(name: "ret", scope: !356, file: !357, line: 58, type: !7)
!366 = !DILocation(line: 58, column: 1, scope: !356)
!367 = !{i64 2153235999}
!368 = distinct !DISubprogram(name: "_flat_send_IPI_mask", scope: !3, file: !3, line: 31, type: !369, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !42, !46}
!371 = !{!372, !373, !374, !375, !379, !380, !384}
!372 = !DILocalVariable(name: "mask", arg: 1, scope: !368, file: !3, line: 31, type: !42)
!373 = !DILocalVariable(name: "vector", arg: 2, scope: !368, file: !3, line: 31, type: !46)
!374 = !DILocalVariable(name: "flags", scope: !368, file: !3, line: 33, type: !42)
!375 = !DILocalVariable(name: "__dummy", scope: !376, file: !3, line: 35, type: !42)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 35, column: 2)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 35, column: 2)
!378 = distinct !DILexicalBlock(scope: !368, file: !3, line: 35, column: 2)
!379 = !DILocalVariable(name: "__dummy2", scope: !376, file: !3, line: 35, type: !42)
!380 = !DILocalVariable(name: "__dummy", scope: !381, file: !3, line: 37, type: !42)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 37, column: 2)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 37, column: 2)
!383 = distinct !DILexicalBlock(scope: !368, file: !3, line: 37, column: 2)
!384 = !DILocalVariable(name: "__dummy2", scope: !381, file: !3, line: 37, type: !42)
!385 = !DILocation(line: 31, column: 47, scope: !368)
!386 = !DILocation(line: 31, column: 57, scope: !368)
!387 = !DILocation(line: 33, column: 2, scope: !368)
!388 = !DILocation(line: 33, column: 16, scope: !368)
!389 = !DILocation(line: 35, column: 2, scope: !368)
!390 = !DILocation(line: 35, column: 2, scope: !378)
!391 = !DILocation(line: 35, column: 2, scope: !376)
!392 = !DILocation(line: 35, column: 2, scope: !377)
!393 = !DILocation(line: 36, column: 32, scope: !368)
!394 = !DILocation(line: 36, column: 38, scope: !368)
!395 = !DILocation(line: 36, column: 2, scope: !368)
!396 = !DILocation(line: 37, column: 2, scope: !368)
!397 = !DILocation(line: 37, column: 2, scope: !383)
!398 = !DILocation(line: 37, column: 2, scope: !381)
!399 = !DILocation(line: 37, column: 2, scope: !382)
!400 = !DILocation(line: 37, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !382, file: !3, line: 37, column: 2)
!402 = !DILocation(line: 38, column: 1, scope: !368)
!403 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !404, file: !404, line: 101, type: !405, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!404 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!405 = !DISubroutineType(types: !406)
!406 = !{!42}
!407 = !{!408}
!408 = !DILocalVariable(name: "flags", scope: !403, file: !404, line: 103, type: !42)
!409 = !DILocation(line: 103, column: 2, scope: !403)
!410 = !DILocation(line: 103, column: 16, scope: !403)
!411 = !DILocation(line: 103, column: 24, scope: !403)
!412 = !DILocation(line: 104, column: 2, scope: !403)
!413 = !DILocation(line: 105, column: 9, scope: !403)
!414 = !DILocation(line: 106, column: 1, scope: !403)
!415 = !DILocation(line: 105, column: 2, scope: !403)
!416 = !DISubprogram(name: "__default_send_IPI_dest_field", scope: !417, file: !417, line: 56, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DIFile(filename: "arch/x86/kernel/apic/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72a37ec9fca34647e3570a708e38b5d0")
!418 = !DISubroutineType(types: !419)
!419 = !{null, !7, !46, !7}
!420 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !404, file: !404, line: 132, type: !421, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !42}
!423 = !{!424}
!424 = !DILocalVariable(name: "flags", arg: 1, scope: !420, file: !404, line: 132, type: !42)
!425 = !DILocation(line: 132, column: 66, scope: !420)
!426 = !DILocation(line: 134, column: 32, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !404, line: 134, column: 6)
!428 = !DILocation(line: 134, column: 7, scope: !427)
!429 = !DILocation(line: 134, column: 6, scope: !420)
!430 = !DILocation(line: 135, column: 3, scope: !427)
!431 = !DILocation(line: 136, column: 1, scope: !420)
!432 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !404, file: !404, line: 65, type: !405, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!433 = !DILocation(line: 67, column: 9, scope: !432)
!434 = !DILocation(line: 67, column: 2, scope: !432)
!435 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !404, file: !404, line: 70, type: !75, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!436 = !DILocation(line: 72, column: 2, scope: !435)
!437 = !DILocation(line: 73, column: 1, scope: !435)
!438 = distinct !DISubprogram(name: "native_save_fl", scope: !404, file: !404, line: 17, type: !405, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!439 = !{!440}
!440 = !DILocalVariable(name: "flags", scope: !438, file: !404, line: 19, type: !42)
!441 = !DILocation(line: 19, column: 2, scope: !438)
!442 = !DILocation(line: 19, column: 16, scope: !438)
!443 = !DILocation(line: 26, column: 2, scope: !438)
!444 = !{i64 2076745, i64 2076766}
!445 = !DILocation(line: 32, column: 9, scope: !438)
!446 = !DILocation(line: 33, column: 1, scope: !438)
!447 = !DILocation(line: 32, column: 2, scope: !438)
!448 = distinct !DISubprogram(name: "native_irq_disable", scope: !404, file: !404, line: 35, type: !75, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!449 = !DILocation(line: 37, column: 2, scope: !448)
!450 = !{i64 2076949}
!451 = !DILocation(line: 38, column: 1, scope: !448)
!452 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !404, file: !404, line: 120, type: !453, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!46, !42}
!455 = !{!456}
!456 = !DILocalVariable(name: "flags", arg: 1, scope: !452, file: !404, line: 120, type: !42)
!457 = !DILocation(line: 120, column: 67, scope: !452)
!458 = !DILocation(line: 122, column: 11, scope: !452)
!459 = !DILocation(line: 122, column: 17, scope: !452)
!460 = !DILocation(line: 122, column: 9, scope: !452)
!461 = !DILocation(line: 122, column: 2, scope: !452)
!462 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !404, file: !404, line: 75, type: !75, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!463 = !DILocation(line: 77, column: 2, scope: !462)
!464 = !DILocation(line: 78, column: 1, scope: !462)
!465 = distinct !DISubprogram(name: "native_irq_enable", scope: !404, file: !404, line: 40, type: !75, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!466 = !DILocation(line: 42, column: 2, scope: !465)
!467 = !{i64 2077041}
!468 = !DILocation(line: 43, column: 1, scope: !465)
!469 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !470, file: !470, line: 313, type: !471, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!470 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!475 = !{!476}
!476 = !DILocalVariable(name: "op", arg: 1, scope: !469, file: !470, line: 313, type: !473)
!477 = !DILocation(line: 313, column: 66, scope: !469)
!478 = !DILocation(line: 313, column: 72, scope: !469)
!479 = distinct !DISubprogram(name: "generic___clear_bit", scope: !480, file: !480, line: 37, type: !481, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!480 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!481 = !DISubroutineType(types: !482)
!482 = !{null, !42, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!485 = !{!486, !487, !488, !489}
!486 = !DILocalVariable(name: "nr", arg: 1, scope: !479, file: !480, line: 37, type: !42)
!487 = !DILocalVariable(name: "addr", arg: 2, scope: !479, file: !480, line: 37, type: !483)
!488 = !DILocalVariable(name: "mask", scope: !479, file: !480, line: 39, type: !42)
!489 = !DILocalVariable(name: "p", scope: !479, file: !480, line: 40, type: !51)
!490 = !DILocation(line: 37, column: 35, scope: !479)
!491 = !DILocation(line: 37, column: 63, scope: !479)
!492 = !DILocation(line: 39, column: 2, scope: !479)
!493 = !DILocation(line: 39, column: 16, scope: !479)
!494 = !DILocation(line: 39, column: 23, scope: !479)
!495 = !DILocation(line: 40, column: 2, scope: !479)
!496 = !DILocation(line: 40, column: 17, scope: !479)
!497 = !DILocation(line: 40, column: 39, scope: !479)
!498 = !DILocation(line: 40, column: 47, scope: !479)
!499 = !DILocation(line: 40, column: 45, scope: !479)
!500 = !DILocation(line: 42, column: 9, scope: !479)
!501 = !DILocation(line: 42, column: 8, scope: !479)
!502 = !DILocation(line: 42, column: 3, scope: !479)
!503 = !DILocation(line: 42, column: 5, scope: !479)
!504 = !DILocation(line: 43, column: 1, scope: !479)
!505 = distinct !DISubprogram(name: "___clear_bit", scope: !506, file: !506, line: 42, type: !481, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!506 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!507 = !{!508, !509}
!508 = !DILocalVariable(name: "nr", arg: 1, scope: !505, file: !506, line: 42, type: !42)
!509 = !DILocalVariable(name: "addr", arg: 2, scope: !505, file: !506, line: 42, type: !483)
!510 = !DILocation(line: 42, column: 28, scope: !505)
!511 = !DILocation(line: 42, column: 56, scope: !505)
!512 = !DILocation(line: 44, column: 19, scope: !505)
!513 = !DILocation(line: 44, column: 26, scope: !505)
!514 = !DILocation(line: 44, column: 24, scope: !505)
!515 = !DILocation(line: 44, column: 2, scope: !505)
!516 = !DILocation(line: 45, column: 19, scope: !505)
!517 = !DILocation(line: 45, column: 23, scope: !505)
!518 = !DILocation(line: 45, column: 2, scope: !505)
!519 = !DILocation(line: 46, column: 1, scope: !505)
!520 = distinct !DISubprogram(name: "instrument_write", scope: !521, file: !521, line: 38, type: !522, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!521 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!522 = !DISubroutineType(types: !523)
!523 = !{null, !360, !524}
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 61, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !526, line: 72, baseType: !527)
!526 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !526, line: 16, baseType: !42)
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "v", arg: 1, scope: !520, file: !521, line: 38, type: !360)
!530 = !DILocalVariable(name: "size", arg: 2, scope: !520, file: !521, line: 38, type: !524)
!531 = !DILocation(line: 38, column: 67, scope: !520)
!532 = !DILocation(line: 38, column: 77, scope: !520)
!533 = !DILocation(line: 40, column: 20, scope: !520)
!534 = !DILocation(line: 40, column: 23, scope: !520)
!535 = !DILocation(line: 40, column: 2, scope: !520)
!536 = !DILocation(line: 41, column: 2, scope: !520)
!537 = !DILocation(line: 42, column: 1, scope: !520)
!538 = distinct !DISubprogram(name: "arch___clear_bit", scope: !539, file: !539, line: 92, type: !481, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!539 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!540 = !{!541, !542}
!541 = !DILocalVariable(name: "nr", arg: 1, scope: !538, file: !539, line: 92, type: !42)
!542 = !DILocalVariable(name: "addr", arg: 2, scope: !538, file: !539, line: 92, type: !483)
!543 = !DILocation(line: 92, column: 32, scope: !538)
!544 = !DILocation(line: 92, column: 60, scope: !538)
!545 = !DILocation(line: 94, column: 44, scope: !538)
!546 = !DILocation(line: 94, column: 56, scope: !538)
!547 = !DILocation(line: 94, column: 2, scope: !538)
!548 = !{i64 2147828101}
!549 = !DILocation(line: 95, column: 1, scope: !538)
!550 = distinct !DISubprogram(name: "kasan_check_write", scope: !551, file: !551, line: 44, type: !552, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!551 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!552 = !DISubroutineType(types: !553)
!553 = !{!136, !360, !7}
!554 = !{!555, !556}
!555 = !DILocalVariable(name: "p", arg: 1, scope: !550, file: !551, line: 44, type: !360)
!556 = !DILocalVariable(name: "size", arg: 2, scope: !550, file: !551, line: 44, type: !7)
!557 = !DILocation(line: 44, column: 59, scope: !550)
!558 = !DILocation(line: 44, column: 75, scope: !550)
!559 = !DILocation(line: 46, column: 2, scope: !550)
!560 = distinct !DISubprogram(name: "kcsan_check_access", scope: !561, file: !561, line: 229, type: !562, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!561 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!562 = !DISubroutineType(types: !563)
!563 = !{null, !360, !524, !46}
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(name: "ptr", arg: 1, scope: !560, file: !561, line: 229, type: !360)
!566 = !DILocalVariable(name: "size", arg: 2, scope: !560, file: !561, line: 229, type: !524)
!567 = !DILocalVariable(name: "type", arg: 3, scope: !560, file: !561, line: 230, type: !46)
!568 = !DILocation(line: 229, column: 60, scope: !560)
!569 = !DILocation(line: 229, column: 72, scope: !560)
!570 = !DILocation(line: 230, column: 15, scope: !560)
!571 = !DILocation(line: 230, column: 23, scope: !560)
!572 = distinct !DISubprogram(name: "physflat_probe", scope: !3, file: !3, line: 145, type: !124, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!573 = !DILocation(line: 147, column: 9, scope: !572)
!574 = !DILocation(line: 147, column: 14, scope: !572)
!575 = !DILocation(line: 147, column: 32, scope: !572)
!576 = !DILocation(line: 147, column: 35, scope: !572)
!577 = !DILocation(line: 147, column: 55, scope: !572)
!578 = !DILocation(line: 147, column: 59, scope: !572)
!579 = !DILocation(line: 147, column: 62, scope: !572)
!580 = !DILocation(line: 147, column: 2, scope: !572)
!581 = distinct !DISubprogram(name: "physflat_acpi_madt_oem_check", scope: !3, file: !3, line: 122, type: !128, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!582 = !{!583, !584}
!583 = !DILocalVariable(name: "oem_id", arg: 1, scope: !581, file: !3, line: 122, type: !130)
!584 = !DILocalVariable(name: "oem_table_id", arg: 2, scope: !581, file: !3, line: 122, type: !130)
!585 = !DILocation(line: 122, column: 47, scope: !581)
!586 = !DILocation(line: 122, column: 61, scope: !581)
!587 = !DILocation(line: 130, column: 27, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !3, line: 130, column: 6)
!589 = !DILocation(line: 130, column: 6, scope: !588)
!590 = !DILocation(line: 130, column: 36, scope: !588)
!591 = !DILocation(line: 130, column: 57, scope: !588)
!592 = !DILocation(line: 131, column: 18, scope: !588)
!593 = !DILocation(line: 131, column: 24, scope: !588)
!594 = !DILocation(line: 130, column: 6, scope: !581)
!595 = !DILocation(line: 132, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 132, column: 3)
!597 = distinct !DILexicalBlock(scope: !588, file: !3, line: 131, column: 52)
!598 = !DILocation(line: 132, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 132, column: 3)
!600 = !DILocation(line: 133, column: 3, scope: !597)
!601 = !DILocation(line: 136, column: 15, scope: !602)
!602 = distinct !DILexicalBlock(scope: !581, file: !3, line: 136, column: 6)
!603 = !DILocation(line: 136, column: 7, scope: !602)
!604 = !DILocation(line: 136, column: 33, scope: !602)
!605 = !DILocation(line: 136, column: 45, scope: !602)
!606 = !DILocation(line: 136, column: 37, scope: !602)
!607 = !DILocation(line: 136, column: 6, scope: !581)
!608 = !DILocation(line: 137, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 137, column: 3)
!610 = distinct !DILexicalBlock(scope: !602, file: !3, line: 136, column: 70)
!611 = !DILocation(line: 137, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 137, column: 3)
!613 = !DILocation(line: 138, column: 3, scope: !610)
!614 = !DILocation(line: 142, column: 2, scope: !581)
!615 = !DILocation(line: 143, column: 1, scope: !581)
!616 = distinct !DISubprogram(name: "cpumask_weight", scope: !58, file: !58, line: 690, type: !617, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!7, !55}
!619 = !{!620}
!620 = !DILocalVariable(name: "srcp", arg: 1, scope: !616, file: !58, line: 690, type: !55)
!621 = !DILocation(line: 690, column: 65, scope: !616)
!622 = !DILocation(line: 692, column: 23, scope: !616)
!623 = !DILocation(line: 692, column: 9, scope: !616)
!624 = !DILocation(line: 692, column: 2, scope: !616)
!625 = distinct !DISubprogram(name: "jailhouse_paravirt", scope: !626, file: !626, line: 20, type: !134, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!626 = !DIFile(filename: "./arch/x86/include/asm/jailhouse_para.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7907880c21fe8c240eccb8df8bede1e")
!627 = !DILocation(line: 22, column: 2, scope: !625)
!628 = distinct !DISubprogram(name: "bitmap_weight", scope: !629, file: !629, line: 453, type: !630, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!629 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!630 = !DISubroutineType(types: !631)
!631 = !{!7, !49, !7}
!632 = !{!633, !634}
!633 = !DILocalVariable(name: "src", arg: 1, scope: !628, file: !629, line: 453, type: !49)
!634 = !DILocalVariable(name: "nbits", arg: 2, scope: !628, file: !629, line: 453, type: !7)
!635 = !DILocation(line: 453, column: 49, scope: !628)
!636 = !DILocation(line: 453, column: 67, scope: !628)
!637 = !DILocation(line: 455, column: 6, scope: !638)
!638 = distinct !DILexicalBlock(scope: !628, file: !629, line: 455, column: 6)
!639 = !DILocation(line: 455, column: 6, scope: !628)
!640 = !DILocation(line: 456, column: 24, scope: !638)
!641 = !DILocation(line: 456, column: 23, scope: !638)
!642 = !DILocation(line: 456, column: 30, scope: !638)
!643 = !DILocation(line: 456, column: 28, scope: !638)
!644 = !DILocation(line: 456, column: 10, scope: !638)
!645 = !DILocation(line: 456, column: 3, scope: !638)
!646 = !DILocation(line: 457, column: 25, scope: !628)
!647 = !DILocation(line: 457, column: 30, scope: !628)
!648 = !DILocation(line: 457, column: 9, scope: !628)
!649 = !DILocation(line: 457, column: 2, scope: !628)
!650 = !DILocation(line: 458, column: 1, scope: !628)
!651 = distinct !DISubprogram(name: "hweight_long", scope: !652, file: !652, line: 95, type: !653, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!652 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!653 = !DISubroutineType(types: !654)
!654 = !{!42, !42}
!655 = !{!656}
!656 = !DILocalVariable(name: "w", arg: 1, scope: !651, file: !652, line: 95, type: !42)
!657 = !DILocation(line: 95, column: 65, scope: !651)
!658 = !DILocation(line: 97, column: 41, scope: !651)
!659 = !DILocation(line: 97, column: 2, scope: !651)
!660 = !DISubprogram(name: "__bitmap_weight", scope: !629, file: !629, line: 171, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = distinct !DISubprogram(name: "__arch_hweight64", scope: !662, file: !662, line: 43, type: !663, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!662 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!663 = !DISubroutineType(types: !664)
!664 = !{!42, !64}
!665 = !{!666, !667}
!666 = !DILocalVariable(name: "w", arg: 1, scope: !661, file: !662, line: 43, type: !64)
!667 = !DILocalVariable(name: "res", scope: !661, file: !662, line: 45, type: !42)
!668 = !DILocation(line: 43, column: 61, scope: !661)
!669 = !DILocation(line: 45, column: 2, scope: !661)
!670 = !DILocation(line: 45, column: 16, scope: !661)
!671 = !DILocation(line: 49, column: 15, scope: !661)
!672 = !DILocation(line: 47, column: 2, scope: !661)
!673 = !{i64 2147887046, i64 2147887074, i64 2147887080, i64 2147887096, i64 2147887112, i64 2147887139, i64 2147887472, i64 2147886772, i64 2147887478, i64 2147887526, i64 2147887590, i64 2147887654, i64 2147887711, i64 2147886853, i64 2147886878, i64 2147887918, i64 2147888048, i64 2147887979, i64 2147888062, i64 2147886970}
!674 = !DILocation(line: 51, column: 9, scope: !661)
!675 = !DILocation(line: 52, column: 1, scope: !661)
!676 = !DILocation(line: 51, column: 2, scope: !661)
!677 = !DISubprogram(name: "_printk", scope: !678, file: !678, line: 153, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!679 = !DISubroutineType(types: !680)
!680 = !{!46, !473, null}
!681 = !DISubprogram(name: "strncmp", scope: !682, file: !682, line: 91, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!683 = !DISubroutineType(types: !684)
!684 = !{!46, !473, !473, !525}
