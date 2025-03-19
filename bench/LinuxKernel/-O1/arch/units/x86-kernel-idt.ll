; ModuleID = 'arch/x86/kernel/idt.c'
source_filename = "arch/x86/kernel/idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.idt_data = type { i32, i32, %struct.idt_bits, ptr }
%struct.pgprot = type { i64 }

@idt_descr = internal global %struct.desc_ptr <{ i16 4095, i64 ptrtoint (ptr @idt_table to i64) }>, section ".data..ro_after_init", align 1, !dbg !0
@idt_table = internal global [256 x %struct.gate_struct] zeroinitializer, section ".bss..page_aligned", align 4096, !dbg !58
@system_vectors = external dso_local global [0 x i64], align 8
@irq_entries_start = external dso_local global [0 x i8], align 1
@spurious_entries_start = external dso_local global [0 x i8], align 1
@idt_setup_done = internal global i8 0, section ".init.data", align 1, !dbg !53
@early_idt_handler_array = external dso_local constant [32 x [13 x i8]], align 16
@idt_invalidate.idt = internal constant %struct.desc_ptr zeroinitializer, align 1, !dbg !38
@.str = private unnamed_addr constant [22 x i8] c"arch/x86/kernel/idt.c\00", align 1, !dbg !48
@early_idts = internal constant [2 x { i32, i32, { i8, i8 }, ptr }] [{ i32, i32, { i8, i8 }, ptr } { i32 1, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_debug }, { i32, i32, { i8, i8 }, ptr } { i32 3, i32 16, { i8, i8 } { i8 0, i8 -18 }, ptr @asm_exc_int3 }], section ".init.rodata", align 16, !dbg !79
@def_idts = internal constant [20 x { i32, i32, { i8, i8 }, ptr }] [{ i32, i32, { i8, i8 }, ptr } { i32 0, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_divide_error }, { i32, i32, { i8, i8 }, ptr } { i32 2, i32 16, { i8, i8 } { i8 2, i8 -114 }, ptr @asm_exc_nmi }, { i32, i32, { i8, i8 }, ptr } { i32 5, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_bounds }, { i32, i32, { i8, i8 }, ptr } { i32 6, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_invalid_op }, { i32, i32, { i8, i8 }, ptr } { i32 7, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_device_not_available }, { i32, i32, { i8, i8 }, ptr } { i32 9, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_coproc_segment_overrun }, { i32, i32, { i8, i8 }, ptr } { i32 10, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_invalid_tss }, { i32, i32, { i8, i8 }, ptr } { i32 11, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_segment_not_present }, { i32, i32, { i8, i8 }, ptr } { i32 12, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_stack_segment }, { i32, i32, { i8, i8 }, ptr } { i32 13, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_general_protection }, { i32, i32, { i8, i8 }, ptr } { i32 15, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_spurious_interrupt_bug }, { i32, i32, { i8, i8 }, ptr } { i32 16, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_coprocessor_error }, { i32, i32, { i8, i8 }, ptr } { i32 17, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_alignment_check }, { i32, i32, { i8, i8 }, ptr } { i32 19, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_simd_coprocessor_error }, { i32, i32, { i8, i8 }, ptr } { i32 8, i32 16, { i8, i8 } { i8 1, i8 -114 }, ptr @asm_exc_double_fault }, { i32, i32, { i8, i8 }, ptr } { i32 1, i32 16, { i8, i8 } { i8 3, i8 -114 }, ptr @asm_exc_debug }, { i32, i32, { i8, i8 }, ptr } { i32 18, i32 16, { i8, i8 } { i8 4, i8 -114 }, ptr @asm_exc_machine_check }, { i32, i32, { i8, i8 }, ptr } { i32 21, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_control_protection }, { i32, i32, { i8, i8 }, ptr } { i32 4, i32 16, { i8, i8 } { i8 0, i8 -18 }, ptr @asm_exc_overflow }, { i32, i32, { i8, i8 }, ptr } { i32 128, i32 16, { i8, i8 } { i8 0, i8 -18 }, ptr @asm_int80_emulation }], section ".init.rodata", align 16, !dbg !93
@early_pf_idts = internal constant [1 x { i32, i32, { i8, i8 }, ptr }] [{ i32, i32, { i8, i8 }, ptr } { i32 14, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_exc_page_fault }], section ".init.rodata", align 16, !dbg !98
@apic_idts = internal constant [15 x { i32, i32, { i8, i8 }, ptr }] [{ i32, i32, { i8, i8 }, ptr } { i32 253, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_reschedule_ipi }, { i32, i32, { i8, i8 }, ptr } { i32 252, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_call_function }, { i32, i32, { i8, i8 }, ptr } { i32 251, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_call_function_single }, { i32, i32, { i8, i8 }, ptr } { i32 248, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_reboot }, { i32, i32, { i8, i8 }, ptr } { i32 250, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_thermal }, { i32, i32, { i8, i8 }, ptr } { i32 249, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_threshold }, { i32, i32, { i8, i8 }, ptr } { i32 244, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_deferred_error }, { i32, i32, { i8, i8 }, ptr } { i32 236, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_apic_timer_interrupt }, { i32, i32, { i8, i8 }, ptr } { i32 247, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_x86_platform_ipi }, { i32, i32, { i8, i8 }, ptr } { i32 242, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_kvm_posted_intr_ipi }, { i32, i32, { i8, i8 }, ptr } { i32 241, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_kvm_posted_intr_wakeup_ipi }, { i32, i32, { i8, i8 }, ptr } { i32 240, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_kvm_posted_intr_nested_ipi }, { i32, i32, { i8, i8 }, ptr } { i32 246, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_irq_work }, { i32, i32, { i8, i8 }, ptr } { i32 255, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_spurious_apic_interrupt }, { i32, i32, { i8, i8 }, ptr } { i32 254, i32 16, { i8, i8 } { i8 0, i8 -114 }, ptr @asm_sysvec_error_interrupt }], section ".init.rodata", align 16, !dbg !103
@.str.5 = private unnamed_addr constant [28 x i8] c"arch/x86/include/asm/desc.h\00", align 1, !dbg !108
@phys_base = external dso_local global i64, align 8
@__default_kernel_pte_mask = external dso_local global i64, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @load_current_idt() #0 align 16 !dbg !123 {
entry:
  br label %do.body, !dbg !124

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !125

do.end:                                           ; preds = %do.body
  call void @native_load_idt(ptr noundef @idt_descr) #12, !dbg !127
  ret void, !dbg !128
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_idt(ptr noundef %dtr) #1 align 16 !dbg !129 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !136
  call void asm sideeffect "lidt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #13, !dbg !137, !srcloc !138
  ret void, !dbg !139
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idt_setup_early_traps() #2 section ".init.text" align 16 !dbg !140 {
entry:
  call void @idt_setup_from_table(ptr noundef @idt_table, ptr noundef @early_idts, i32 noundef 2, i1 noundef zeroext true) #14, !dbg !141
  call void @native_load_idt(ptr noundef @idt_descr) #12, !dbg !142
  ret void, !dbg !143
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @idt_setup_from_table(ptr noundef %idt, ptr noundef %t, i32 noundef %size, i1 noundef zeroext %sys) #2 section ".init.text" align 16 !dbg !144 {
entry:
  %idt.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %sys.addr = alloca i8, align 1
  %desc = alloca %struct.gate_struct, align 1
  store ptr %idt, ptr %idt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idt.addr, metadata !150, metadata !DIExpression()), !dbg !155
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !151, metadata !DIExpression()), !dbg !156
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !152, metadata !DIExpression()), !dbg !157
  %frombool = zext i1 %sys to i8
  store i8 %frombool, ptr %sys.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sys.addr, metadata !153, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 16, ptr %desc) #13, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !154, metadata !DIExpression()), !dbg !160
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %size.addr, align 4, !dbg !162
  %cmp = icmp sgt i32 %0, 0, !dbg !165
  br i1 %cmp, label %for.body, label %for.end, !dbg !166

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %t.addr, align 8, !dbg !167
  call void @idt_init_desc(ptr noundef %desc, ptr noundef %1) #12, !dbg !169
  %2 = load ptr, ptr %idt.addr, align 8, !dbg !170
  %3 = load ptr, ptr %t.addr, align 8, !dbg !170
  %vector = getelementptr inbounds %struct.idt_data, ptr %3, i32 0, i32 0, !dbg !170
  %4 = load i32, ptr %vector, align 8, !dbg !170
  call void @native_write_idt_entry(ptr noundef %2, i32 noundef %4, ptr noundef %desc) #12, !dbg !170
  %5 = load i8, ptr %sys.addr, align 1, !dbg !171, !range !173, !noundef !174
  %tobool = trunc i8 %5 to i1, !dbg !171
  br i1 %tobool, label %if.then, label %if.end, !dbg !175

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %t.addr, align 8, !dbg !176
  %vector1 = getelementptr inbounds %struct.idt_data, ptr %6, i32 0, i32 0, !dbg !177
  %7 = load i32, ptr %vector1, align 8, !dbg !177
  %conv = zext i32 %7 to i64, !dbg !176
  call void @set_bit(i64 noundef %conv, ptr noundef @system_vectors) #12, !dbg !178
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !179

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %t.addr, align 8, !dbg !180
  %incdec.ptr = getelementptr %struct.idt_data, ptr %8, i32 1, !dbg !180
  store ptr %incdec.ptr, ptr %t.addr, align 8, !dbg !180
  %9 = load i32, ptr %size.addr, align 4, !dbg !181
  %dec = add i32 %9, -1, !dbg !181
  store i32 %dec, ptr %size.addr, align 4, !dbg !181
  br label %for.cond, !dbg !182, !llvm.loop !183

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %desc) #13, !dbg !187
  ret void, !dbg !187
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idt_setup_traps() #2 section ".init.text" align 16 !dbg !188 {
entry:
  call void @idt_setup_from_table(ptr noundef @idt_table, ptr noundef @def_idts, i32 noundef 20, i1 noundef zeroext true) #14, !dbg !189
  ret void, !dbg !190
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idt_setup_early_pf() #2 section ".init.text" align 16 !dbg !191 {
entry:
  call void @idt_setup_from_table(ptr noundef @idt_table, ptr noundef @early_pf_idts, i32 noundef 1, i1 noundef zeroext true) #14, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idt_setup_apic_and_irq_gates() #2 section ".init.text" align 16 !dbg !194 {
entry:
  %i = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %i, metadata !196, metadata !DIExpression()), !dbg !199
  store i32 32, ptr %i, align 4, !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !197, metadata !DIExpression()), !dbg !201
  call void @idt_setup_from_table(ptr noundef @idt_table, ptr noundef @apic_idts, i32 noundef 15, i1 noundef zeroext true) #14, !dbg !202
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !204
  %conv = sext i32 %0 to i64, !dbg !204
  %call = call i64 @find_next_zero_bit(ptr noundef @system_vectors, i64 noundef 236, i64 noundef %conv) #12, !dbg !204
  %conv2 = trunc i64 %call to i32, !dbg !204
  store i32 %conv2, ptr %i, align 4, !dbg !204
  %1 = load i32, ptr %i, align 4, !dbg !204
  %cmp = icmp slt i32 %1, 236, !dbg !204
  br i1 %cmp, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !208
  %sub = sub i32 %2, 32, !dbg !210
  %mul = mul i32 16, %sub, !dbg !211
  %idx.ext = sext i32 %mul to i64, !dbg !212
  %add.ptr = getelementptr i8, ptr @irq_entries_start, i64 %idx.ext, !dbg !212
  store ptr %add.ptr, ptr %entry1, align 8, !dbg !213
  %3 = load i32, ptr %i, align 4, !dbg !214
  %4 = load ptr, ptr %entry1, align 8, !dbg !215
  call void @set_intr_gate(i32 noundef %3, ptr noundef %4) #14, !dbg !216
  br label %for.inc, !dbg !217

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !204
  %inc = add i32 %5, 1, !dbg !204
  store i32 %inc, ptr %i, align 4, !dbg !204
  br label %for.cond, !dbg !204, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  br label %for.cond4, !dbg !220

for.cond4:                                        ; preds = %for.inc15, %for.end
  %6 = load i32, ptr %i, align 4, !dbg !221
  %conv5 = sext i32 %6 to i64, !dbg !221
  %call6 = call i64 @find_next_zero_bit(ptr noundef @system_vectors, i64 noundef 256, i64 noundef %conv5) #12, !dbg !221
  %conv7 = trunc i64 %call6 to i32, !dbg !221
  store i32 %conv7, ptr %i, align 4, !dbg !221
  %7 = load i32, ptr %i, align 4, !dbg !221
  %cmp8 = icmp slt i32 %7, 256, !dbg !221
  br i1 %cmp8, label %for.body10, label %for.end17, !dbg !224

for.body10:                                       ; preds = %for.cond4
  %8 = load i32, ptr %i, align 4, !dbg !225
  %sub11 = sub i32 %8, 236, !dbg !227
  %mul12 = mul i32 16, %sub11, !dbg !228
  %idx.ext13 = sext i32 %mul12 to i64, !dbg !229
  %add.ptr14 = getelementptr i8, ptr @spurious_entries_start, i64 %idx.ext13, !dbg !229
  store ptr %add.ptr14, ptr %entry1, align 8, !dbg !230
  %9 = load i32, ptr %i, align 4, !dbg !231
  %10 = load ptr, ptr %entry1, align 8, !dbg !232
  call void @set_intr_gate(i32 noundef %9, ptr noundef %10) #14, !dbg !233
  br label %for.inc15, !dbg !234

for.inc15:                                        ; preds = %for.body10
  %11 = load i32, ptr %i, align 4, !dbg !221
  %inc16 = add i32 %11, 1, !dbg !221
  store i32 %inc16, ptr %i, align 4, !dbg !221
  br label %for.cond4, !dbg !221, !llvm.loop !235

for.end17:                                        ; preds = %for.cond4
  call void @idt_map_in_cea() #14, !dbg !237
  call void @native_load_idt(ptr noundef @idt_descr) #12, !dbg !238
  %call18 = call i32 @set_memory_ro(i64 noundef ptrtoint (ptr @idt_table to i64), i32 noundef 1) #12, !dbg !239
  store i8 1, ptr @idt_setup_done, align 1, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !241
  ret void, !dbg !241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_zero_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !242 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !249, metadata !DIExpression()), !dbg !255
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !250, metadata !DIExpression()), !dbg !256
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !251, metadata !DIExpression()), !dbg !257
  %0 = load i64, ptr %size.addr, align 8, !dbg !258
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !258
  br i1 %1, label %land.lhs.true, label %if.end17, !dbg !258

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !258
  %cmp = icmp ule i64 %2, 64, !dbg !258
  br i1 %cmp, label %land.lhs.true1, label %if.end17, !dbg !258

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !258
  %cmp2 = icmp ugt i64 %3, 0, !dbg !258
  br i1 %cmp2, label %if.then, label %if.end17, !dbg !259

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %val, metadata !252, metadata !DIExpression()), !dbg !261
  %4 = load i64, ptr %offset.addr, align 8, !dbg !262
  %5 = load i64, ptr %size.addr, align 8, !dbg !262
  %cmp3 = icmp uge i64 %4, %5, !dbg !262
  %lnot = xor i1 %cmp3, true, !dbg !262
  %lnot4 = xor i1 %lnot, true, !dbg !262
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !262
  %conv = sext i32 %lnot.ext to i64, !dbg !262
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !262
  %tobool = icmp ne i64 %expval, 0, !dbg !262
  br i1 %tobool, label %if.then5, label %if.end, !dbg !264

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !265
  store i64 %6, ptr %retval, align 8, !dbg !266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !266

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !267
  %8 = load i64, ptr %7, align 8, !dbg !268
  %9 = load i64, ptr %offset.addr, align 8, !dbg !269
  %shl = shl i64 1, %9, !dbg !269
  %sub = sub i64 -1, %shl, !dbg !269
  %add = add i64 %sub, 1, !dbg !269
  %10 = load i64, ptr %size.addr, align 8, !dbg !269
  %sub6 = sub i64 %10, 1, !dbg !269
  %sub7 = sub i64 63, %sub6, !dbg !269
  %shr = lshr i64 -1, %sub7, !dbg !269
  %and = and i64 %add, %shr, !dbg !269
  %add8 = add i64 0, %and, !dbg !269
  %not = xor i64 %add8, -1, !dbg !270
  %or = or i64 %8, %not, !dbg !271
  store i64 %or, ptr %val, align 8, !dbg !272
  %11 = load i64, ptr %val, align 8, !dbg !273
  %cmp9 = icmp eq i64 %11, -1, !dbg !274
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !273

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %size.addr, align 8, !dbg !275
  br label %cond.end15, !dbg !273

cond.false:                                       ; preds = %if.end
  %13 = load i64, ptr %val, align 8, !dbg !276
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !276
  br i1 %14, label %cond.true11, label %cond.false14, !dbg !276

cond.true11:                                      ; preds = %cond.false
  %15 = load i64, ptr %val, align 8, !dbg !276
  %not12 = xor i64 %15, -1, !dbg !276
  %16 = call i64 @llvm.cttz.i64(i64 %not12, i1 true), !dbg !276
  %cast = trunc i64 %16 to i32, !dbg !276
  %conv13 = sext i32 %cast to i64, !dbg !276
  br label %cond.end, !dbg !276

cond.false14:                                     ; preds = %cond.false
  %17 = load i64, ptr %val, align 8, !dbg !276
  %call = call i64 @variable_ffz(i64 noundef %17) #12, !dbg !276
  br label %cond.end, !dbg !276

cond.end:                                         ; preds = %cond.false14, %cond.true11
  %cond = phi i64 [ %conv13, %cond.true11 ], [ %call, %cond.false14 ], !dbg !276
  br label %cond.end15, !dbg !273

cond.end15:                                       ; preds = %cond.end, %cond.true
  %cond16 = phi i64 [ %12, %cond.true ], [ %cond, %cond.end ], !dbg !273
  store i64 %cond16, ptr %retval, align 8, !dbg !277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !277

cleanup:                                          ; preds = %cond.end15, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !278
  br label %return

if.end17:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !279
  %19 = load i64, ptr %size.addr, align 8, !dbg !280
  %20 = load i64, ptr %offset.addr, align 8, !dbg !281
  %call18 = call i64 @_find_next_zero_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #12, !dbg !282
  store i64 %call18, ptr %retval, align 8, !dbg !283
  br label %return, !dbg !283

return:                                           ; preds = %if.end17, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !284
  ret i64 %21, !dbg !284
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @set_intr_gate(i32 noundef %n, ptr noundef %addr) #2 section ".init.text" align 16 !dbg !285 {
entry:
  %n.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %data = alloca %struct.idt_data, align 8
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !289, metadata !DIExpression()), !dbg !292
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 24, ptr %data) #13, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %data, metadata !291, metadata !DIExpression()), !dbg !295
  %0 = load i32, ptr %n.addr, align 4, !dbg !296
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !297
  call void @init_idt_data(ptr noundef %data, i32 noundef %0, ptr noundef %1) #12, !dbg !298
  call void @idt_setup_from_table(ptr noundef @idt_table, ptr noundef %data, i32 noundef 1, i1 noundef zeroext false) #14, !dbg !299
  call void @llvm.lifetime.end.p0(i64 24, ptr %data) #13, !dbg !300
  ret void, !dbg !300
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @idt_map_in_cea() #2 section ".init.text" align 16 !dbg !301 {
entry:
  %.compoundliteral = alloca %struct.pgprot, align 8
  %0 = load i64, ptr @phys_base, align 8, !dbg !302
  %add = add i64 sub (i64 ptrtoint (ptr @idt_table to i64), i64 -2147483648), %0, !dbg !302
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !303
  %1 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !303
  %and = and i64 -9223372036854775519, %1, !dbg !303
  store i64 %and, ptr %pgprot, align 8, !dbg !303
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !304
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !304
  call void @cea_set_pte(ptr noundef inttoptr (i64 -2199023255552 to ptr), i64 noundef %add, i64 %2) #12, !dbg !304
  store i64 -2199023255552, ptr getelementptr inbounds (%struct.desc_ptr, ptr @idt_descr, i32 0, i32 1), align 1, !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !307 dso_local i32 @set_memory_ro(i64 noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idt_setup_early_handler() #2 section ".init.text" align 16 !dbg !311 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %i, metadata !313, metadata !DIExpression()), !dbg !315
  store i32 0, ptr %i, align 4, !dbg !316
  br label %for.cond, !dbg !318

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !319
  %cmp = icmp slt i32 %0, 32, !dbg !321
  br i1 %cmp, label %for.body, label %for.end, !dbg !322

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !323
  %2 = load i32, ptr %i, align 4, !dbg !324
  %idxprom = sext i32 %2 to i64, !dbg !325
  %arrayidx = getelementptr [32 x [13 x i8]], ptr @early_idt_handler_array, i64 0, i64 %idxprom, !dbg !325
  %arraydecay = getelementptr inbounds [13 x i8], ptr %arrayidx, i64 0, i64 0, !dbg !325
  call void @set_intr_gate(i32 noundef %1, ptr noundef %arraydecay) #14, !dbg !326
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !327
  %inc = add i32 %3, 1, !dbg !327
  store i32 %inc, ptr %i, align 4, !dbg !327
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond
  call void @native_load_idt(ptr noundef @idt_descr) #12, !dbg !331
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !332
  ret void, !dbg !332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @idt_invalidate() #0 align 16 !dbg !40 {
entry:
  call void @native_load_idt(ptr noundef @idt_invalidate.idt) #12, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @alloc_intr_gate(i32 noundef %n, ptr noundef %addr) #2 section ".init.text" align 16 !dbg !335 {
entry:
  %n.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on26 = alloca i32, align 4
  %__flags42 = alloca i32, align 4
  %tmp55 = alloca i64, align 8
  %__ret_warn_on66 = alloca i32, align 4
  %__flags82 = alloca i32, align 4
  %tmp95 = alloca i64, align 8
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !337, metadata !DIExpression()), !dbg !357
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !338, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !339, metadata !DIExpression()), !dbg !359
  %0 = load i32, ptr %n.addr, align 4, !dbg !359
  %cmp = icmp ult i32 %0, 236, !dbg !359
  %lnot = xor i1 %cmp, true, !dbg !359
  %lnot1 = xor i1 %lnot, true, !dbg !359
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !359
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !359
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !360
  %tobool = icmp ne i32 %1, 0, !dbg !360
  %lnot2 = xor i1 %tobool, true, !dbg !360
  %lnot4 = xor i1 %lnot2, true, !dbg !360
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !360
  %conv = sext i32 %lnot.ext5 to i64, !dbg !360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !360
  %tobool6 = icmp ne i64 %expval, 0, !dbg !360
  br i1 %tobool6, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !360

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !342, metadata !DIExpression()), !dbg !361
  store i32 2305, ptr %__flags, align 4, !dbg !361
  br label %do.body7, !dbg !361

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !362

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !362

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !361

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !364
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 335, i32 %2, i64 12) #13, !dbg !364, !srcloc !366
  br label %do.cond9, !dbg !364

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !364

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !361

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !367

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !367

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !360
  br label %do.cond14, !dbg !361

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !361

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !361

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !359
  %tobool16 = icmp ne i32 %3, 0, !dbg !359
  %lnot17 = xor i1 %tobool16, true, !dbg !359
  %lnot19 = xor i1 %lnot17, true, !dbg !359
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !359
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !359
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !359
  store i64 %expval22, ptr %tmp, align 8, !dbg !360
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !369
  %4 = load i64, ptr %tmp, align 8, !dbg !359
  %tobool23 = icmp ne i64 %4, 0, !dbg !369
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !370

if.then24:                                        ; preds = %if.end
  br label %if.end105, !dbg !371

if.end25:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on26) #13, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on26, metadata !345, metadata !DIExpression()), !dbg !372
  %5 = load i8, ptr @idt_setup_done, align 1, !dbg !372, !range !173, !noundef !174
  %tobool27 = trunc i8 %5 to i1, !dbg !372
  %lnot28 = xor i1 %tobool27, true, !dbg !372
  %lnot30 = xor i1 %lnot28, true, !dbg !372
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !372
  store i32 %lnot.ext31, ptr %__ret_warn_on26, align 4, !dbg !372
  %6 = load i32, ptr %__ret_warn_on26, align 4, !dbg !373
  %tobool32 = icmp ne i32 %6, 0, !dbg !373
  %lnot33 = xor i1 %tobool32, true, !dbg !373
  %lnot35 = xor i1 %lnot33, true, !dbg !373
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !373
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !373
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !373
  %tobool39 = icmp ne i64 %expval38, 0, !dbg !373
  br i1 %tobool39, label %if.then40, label %if.end54, !dbg !372

if.then40:                                        ; preds = %if.end25
  br label %do.body41, !dbg !373

do.body41:                                        ; preds = %if.then40
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags42) #13, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %__flags42, metadata !348, metadata !DIExpression()), !dbg !374
  store i32 2305, ptr %__flags42, align 4, !dbg !374
  br label %do.body43, !dbg !374

do.body43:                                        ; preds = %do.body41
  br label %do.cond44, !dbg !375

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !375

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !374

do.body46:                                        ; preds = %do.end45
  %7 = load i32, ptr %__flags42, align 4, !dbg !377
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 338, i32 %7, i64 12) #13, !dbg !377, !srcloc !379
  br label %do.cond47, !dbg !377

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !377

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !374

do.body49:                                        ; preds = %do.end48
  br label %do.cond50, !dbg !380

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !380

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags42) #13, !dbg !373
  br label %do.cond52, !dbg !374

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !374

do.end53:                                         ; preds = %do.cond52
  br label %if.end54, !dbg !374

if.end54:                                         ; preds = %do.end53, %if.end25
  %8 = load i32, ptr %__ret_warn_on26, align 4, !dbg !372
  %tobool56 = icmp ne i32 %8, 0, !dbg !372
  %lnot57 = xor i1 %tobool56, true, !dbg !372
  %lnot59 = xor i1 %lnot57, true, !dbg !372
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !372
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !372
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !372
  store i64 %expval62, ptr %tmp55, align 8, !dbg !373
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on26) #13, !dbg !382
  %9 = load i64, ptr %tmp55, align 8, !dbg !372
  %tobool63 = icmp ne i64 %9, 0, !dbg !382
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !383

if.then64:                                        ; preds = %if.end54
  br label %if.end105, !dbg !384

if.end65:                                         ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on66) #13, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on66, metadata !351, metadata !DIExpression()), !dbg !385
  %10 = load i32, ptr %n.addr, align 4, !dbg !385
  %conv67 = zext i32 %10 to i64, !dbg !385
  %call = call zeroext i1 @test_and_set_bit(i64 noundef %conv67, ptr noundef @system_vectors) #12, !dbg !385
  %lnot68 = xor i1 %call, true, !dbg !385
  %lnot70 = xor i1 %lnot68, true, !dbg !385
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !385
  store i32 %lnot.ext71, ptr %__ret_warn_on66, align 4, !dbg !385
  %11 = load i32, ptr %__ret_warn_on66, align 4, !dbg !386
  %tobool72 = icmp ne i32 %11, 0, !dbg !386
  %lnot73 = xor i1 %tobool72, true, !dbg !386
  %lnot75 = xor i1 %lnot73, true, !dbg !386
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !386
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !386
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !386
  %tobool79 = icmp ne i64 %expval78, 0, !dbg !386
  br i1 %tobool79, label %if.then80, label %if.end94, !dbg !385

if.then80:                                        ; preds = %if.end65
  br label %do.body81, !dbg !386

do.body81:                                        ; preds = %if.then80
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags82) #13, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %__flags82, metadata !354, metadata !DIExpression()), !dbg !387
  store i32 2305, ptr %__flags82, align 4, !dbg !387
  br label %do.body83, !dbg !387

do.body83:                                        ; preds = %do.body81
  br label %do.cond84, !dbg !388

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !388

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !387

do.body86:                                        ; preds = %do.end85
  %12 = load i32, ptr %__flags82, align 4, !dbg !390
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 341, i32 %12, i64 12) #13, !dbg !390, !srcloc !392
  br label %do.cond87, !dbg !390

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !390

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !387

do.body89:                                        ; preds = %do.end88
  br label %do.cond90, !dbg !393

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !393

do.end91:                                         ; preds = %do.cond90
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags82) #13, !dbg !386
  br label %do.cond92, !dbg !387

do.cond92:                                        ; preds = %do.end91
  br label %do.end93, !dbg !387

do.end93:                                         ; preds = %do.cond92
  br label %if.end94, !dbg !387

if.end94:                                         ; preds = %do.end93, %if.end65
  %13 = load i32, ptr %__ret_warn_on66, align 4, !dbg !385
  %tobool96 = icmp ne i32 %13, 0, !dbg !385
  %lnot97 = xor i1 %tobool96, true, !dbg !385
  %lnot99 = xor i1 %lnot97, true, !dbg !385
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !385
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !385
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0), !dbg !385
  store i64 %expval102, ptr %tmp95, align 8, !dbg !386
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on66) #13, !dbg !395
  %14 = load i64, ptr %tmp95, align 8, !dbg !385
  %tobool103 = icmp ne i64 %14, 0, !dbg !395
  br i1 %tobool103, label %if.end105, label %if.then104, !dbg !396

if.then104:                                       ; preds = %if.end94
  %15 = load i32, ptr %n.addr, align 4, !dbg !397
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !398
  call void @set_intr_gate(i32 noundef %15, ptr noundef %16) #14, !dbg !399
  br label %if.end105, !dbg !399

if.end105:                                        ; preds = %if.then24, %if.then64, %if.then104, %if.end94
  ret void, !dbg !400
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !401 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !408, metadata !DIExpression()), !dbg !410
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !409, metadata !DIExpression()), !dbg !411
  br label %do.body, !dbg !412

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !413

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !415
  %1 = load i64, ptr %nr.addr, align 8, !dbg !416
  %div = sdiv i64 %1, 64, !dbg !416
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !417
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !418
  %2 = load i64, ptr %nr.addr, align 8, !dbg !419
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !420
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !421
  ret i1 %call, !dbg !422
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @idt_init_desc(ptr noundef %gate, ptr noundef %d) #5 align 16 !dbg !423 {
entry:
  %gate.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  store ptr %gate, ptr %gate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gate.addr, metadata !427, metadata !DIExpression()), !dbg !430
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !428, metadata !DIExpression()), !dbg !431
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13, !dbg !432
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !429, metadata !DIExpression()), !dbg !433
  %0 = load ptr, ptr %d.addr, align 8, !dbg !434
  %addr1 = getelementptr inbounds %struct.idt_data, ptr %0, i32 0, i32 3, !dbg !435
  %1 = load ptr, ptr %addr1, align 8, !dbg !435
  %2 = ptrtoint ptr %1 to i64, !dbg !436
  store i64 %2, ptr %addr, align 8, !dbg !433
  %3 = load i64, ptr %addr, align 8, !dbg !437
  %conv = trunc i64 %3 to i16, !dbg !438
  %4 = load ptr, ptr %gate.addr, align 8, !dbg !439
  %offset_low = getelementptr inbounds %struct.gate_struct, ptr %4, i32 0, i32 0, !dbg !440
  store i16 %conv, ptr %offset_low, align 1, !dbg !441
  %5 = load ptr, ptr %d.addr, align 8, !dbg !442
  %segment = getelementptr inbounds %struct.idt_data, ptr %5, i32 0, i32 1, !dbg !443
  %6 = load i32, ptr %segment, align 4, !dbg !443
  %conv2 = trunc i32 %6 to i16, !dbg !444
  %7 = load ptr, ptr %gate.addr, align 8, !dbg !445
  %segment3 = getelementptr inbounds %struct.gate_struct, ptr %7, i32 0, i32 1, !dbg !446
  store i16 %conv2, ptr %segment3, align 1, !dbg !447
  %8 = load ptr, ptr %gate.addr, align 8, !dbg !448
  %bits = getelementptr inbounds %struct.gate_struct, ptr %8, i32 0, i32 2, !dbg !449
  %9 = load ptr, ptr %d.addr, align 8, !dbg !450
  %bits4 = getelementptr inbounds %struct.idt_data, ptr %9, i32 0, i32 2, !dbg !451
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %bits, ptr align 8 %bits4, i64 2, i1 false), !dbg !451
  %10 = load i64, ptr %addr, align 8, !dbg !452
  %shr = lshr i64 %10, 16, !dbg !453
  %conv5 = trunc i64 %shr to i16, !dbg !454
  %11 = load ptr, ptr %gate.addr, align 8, !dbg !455
  %offset_middle = getelementptr inbounds %struct.gate_struct, ptr %11, i32 0, i32 3, !dbg !456
  store i16 %conv5, ptr %offset_middle, align 1, !dbg !457
  %12 = load i64, ptr %addr, align 8, !dbg !458
  %shr6 = lshr i64 %12, 32, !dbg !459
  %conv7 = trunc i64 %shr6 to i32, !dbg !460
  %13 = load ptr, ptr %gate.addr, align 8, !dbg !461
  %offset_high = getelementptr inbounds %struct.gate_struct, ptr %13, i32 0, i32 4, !dbg !462
  store i32 %conv7, ptr %offset_high, align 1, !dbg !463
  %14 = load ptr, ptr %gate.addr, align 8, !dbg !464
  %reserved = getelementptr inbounds %struct.gate_struct, ptr %14, i32 0, i32 5, !dbg !465
  store i32 0, ptr %reserved, align 1, !dbg !466
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13, !dbg !467
  ret void, !dbg !467
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_idt_entry(ptr noundef %idt, i32 noundef %entry1, ptr noundef %gate) #5 align 16 !dbg !468 {
entry:
  %idt.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %gate.addr = alloca ptr, align 8
  store ptr %idt, ptr %idt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idt.addr, metadata !474, metadata !DIExpression()), !dbg !477
  store i32 %entry1, ptr %entry.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !475, metadata !DIExpression()), !dbg !478
  store ptr %gate, ptr %gate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gate.addr, metadata !476, metadata !DIExpression()), !dbg !479
  %0 = load ptr, ptr %idt.addr, align 8, !dbg !480
  %1 = load i32, ptr %entry.addr, align 4, !dbg !481
  %idxprom = sext i32 %1 to i64, !dbg !480
  %arrayidx = getelementptr %struct.gate_struct, ptr %0, i64 %idxprom, !dbg !480
  %2 = load ptr, ptr %gate.addr, align 8, !dbg !482
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %2, i64 16, i1 false), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !485 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !489, metadata !DIExpression()), !dbg !491
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !490, metadata !DIExpression()), !dbg !492
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !493
  %1 = load i64, ptr %nr.addr, align 8, !dbg !494
  %div = sdiv i64 %1, 64, !dbg !494
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !495
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !496
  %2 = load i64, ptr %nr.addr, align 8, !dbg !497
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !498
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !499
  ret void, !dbg !500
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !501 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !513, metadata !DIExpression()), !dbg !515
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !514, metadata !DIExpression()), !dbg !516
  %0 = load ptr, ptr %v.addr, align 8, !dbg !517
  %1 = load i64, ptr %size.addr, align 8, !dbg !518
  %conv = trunc i64 %1 to i32, !dbg !518
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !519
  %2 = load ptr, ptr %v.addr, align 8, !dbg !520
  %3 = load i64, ptr %size.addr, align 8, !dbg !520
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !520
  ret void, !dbg !521
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !522 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !525, metadata !DIExpression()), !dbg !527
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !526, metadata !DIExpression()), !dbg !528
  %0 = load i64, ptr %nr.addr, align 8, !dbg !529
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !531
  br i1 %1, label %if.then, label %if.else, !dbg !532

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !533
  %3 = load i64, ptr %nr.addr, align 8, !dbg !533
  %shr = ashr i64 %3, 3, !dbg !533
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !533
  %4 = load i64, ptr %nr.addr, align 8, !dbg !535
  %and = and i64 %4, 7, !dbg !535
  %sh_prom = trunc i64 %and to i32, !dbg !535
  %shl = shl i32 1, %sh_prom, !dbg !535
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #13, !dbg !536, !srcloc !537
  br label %if.end, !dbg !538

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !539
  %6 = load i64, ptr %nr.addr, align 8, !dbg !541
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #13, !dbg !542, !srcloc !543
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !545 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !550, metadata !DIExpression()), !dbg !552
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !551, metadata !DIExpression()), !dbg !553
  ret i1 true, !dbg !554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !555 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !560, metadata !DIExpression()), !dbg !563
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !561, metadata !DIExpression()), !dbg !564
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !562, metadata !DIExpression()), !dbg !565
  ret void, !dbg !566
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_debug() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_int3() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_divide_error() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_nmi() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_bounds() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_invalid_op() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_device_not_available() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_coproc_segment_overrun() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_invalid_tss() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_segment_not_present() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_stack_segment() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_general_protection() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_spurious_interrupt_bug() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_coprocessor_error() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_alignment_check() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_simd_coprocessor_error() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_double_fault() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_machine_check() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_control_protection() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_overflow() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_int80_emulation() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_exc_page_fault() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_reschedule_ipi() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_call_function() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_call_function_single() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_reboot() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_thermal() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_threshold() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_deferred_error() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_apic_timer_interrupt() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_x86_platform_ipi() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_kvm_posted_intr_ipi() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_kvm_posted_intr_wakeup_ipi() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_kvm_posted_intr_nested_ipi() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_irq_work() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_spurious_apic_interrupt() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @asm_sysvec_error_interrupt() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable_ffz(i64 noundef %word) #1 align 16 !dbg !567 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !571, metadata !DIExpression()), !dbg !572
  %0 = load i64, ptr %word.addr, align 8, !dbg !573
  %not = xor i64 %0, -1, !dbg !574
  %1 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %not) #15, !dbg !575, !srcloc !576
  store i64 %1, ptr %word.addr, align 8, !dbg !575
  %2 = load i64, ptr %word.addr, align 8, !dbg !577
  ret i64 %2, !dbg !578
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !579 dso_local i64 @_find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_idt_data(ptr noundef %data, i32 noundef %n, ptr noundef %addr) #5 align 16 !dbg !580 {
entry:
  %data.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !585, metadata !DIExpression()), !dbg !588
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !586, metadata !DIExpression()), !dbg !589
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !587, metadata !DIExpression()), !dbg !590
  br label %do.body, !dbg !591

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %n.addr, align 4, !dbg !592
  %cmp = icmp ugt i32 %0, 255, !dbg !592
  %lnot = xor i1 %cmp, true, !dbg !592
  %lnot1 = xor i1 %lnot, true, !dbg !592
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !592
  %conv = sext i32 %lnot.ext to i64, !dbg !592
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !592
  %tobool = icmp ne i64 %expval, 0, !dbg !592
  br i1 %tobool, label %if.then, label %if.end, !dbg !595

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !592

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !596

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !598

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !596

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 410, i32 0, i64 12) #13, !dbg !600, !srcloc !602
  br label %do.end5, !dbg !600

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !596

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !596

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !595

do.end7:                                          ; preds = %if.end
  %1 = load ptr, ptr %data.addr, align 8, !dbg !603
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 24, i1 false), !dbg !604
  %2 = load i32, ptr %n.addr, align 4, !dbg !605
  %3 = load ptr, ptr %data.addr, align 8, !dbg !606
  %vector = getelementptr inbounds %struct.idt_data, ptr %3, i32 0, i32 0, !dbg !607
  store i32 %2, ptr %vector, align 8, !dbg !608
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !609
  %5 = load ptr, ptr %data.addr, align 8, !dbg !610
  %addr8 = getelementptr inbounds %struct.idt_data, ptr %5, i32 0, i32 3, !dbg !611
  store ptr %4, ptr %addr8, align 8, !dbg !612
  %6 = load ptr, ptr %data.addr, align 8, !dbg !613
  %segment = getelementptr inbounds %struct.idt_data, ptr %6, i32 0, i32 1, !dbg !614
  store i32 16, ptr %segment, align 4, !dbg !615
  %7 = load ptr, ptr %data.addr, align 8, !dbg !616
  %bits = getelementptr inbounds %struct.idt_data, ptr %7, i32 0, i32 2, !dbg !617
  %bf.load = load i16, ptr %bits, align 8, !dbg !618
  %bf.clear = and i16 %bf.load, -7937, !dbg !618
  %bf.set = or i16 %bf.clear, 3584, !dbg !618
  store i16 %bf.set, ptr %bits, align 8, !dbg !618
  %8 = load ptr, ptr %data.addr, align 8, !dbg !619
  %bits9 = getelementptr inbounds %struct.idt_data, ptr %8, i32 0, i32 2, !dbg !620
  %bf.load10 = load i16, ptr %bits9, align 8, !dbg !621
  %bf.clear11 = and i16 %bf.load10, 32767, !dbg !621
  %bf.set12 = or i16 %bf.clear11, -32768, !dbg !621
  store i16 %bf.set12, ptr %bits9, align 8, !dbg !621
  ret void, !dbg !622
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !623 dso_local void @cea_set_pte(ptr noundef, i64 noundef, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !637 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !639, metadata !DIExpression()), !dbg !641
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !640, metadata !DIExpression()), !dbg !642
  %0 = load ptr, ptr %v.addr, align 8, !dbg !643
  %1 = load i64, ptr %size.addr, align 8, !dbg !644
  %conv = trunc i64 %1 to i32, !dbg !644
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !645
  %2 = load ptr, ptr %v.addr, align 8, !dbg !646
  %3 = load i64, ptr %size.addr, align 8, !dbg !646
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !646
  ret void, !dbg !647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !648 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !650, metadata !DIExpression()), !dbg !654
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !651, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %c, metadata !652, metadata !DIExpression()), !dbg !656
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !656
  %1 = load i64, ptr %nr.addr, align 8, !dbg !656
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #13, !dbg !656, !srcloc !657
  %3 = icmp ult i8 %2, 2, !dbg !656
  call void @llvm.assume(i1 %3), !dbg !656
  store i8 %2, ptr %c, align 1, !dbg !656
  %4 = load i8, ptr %c, align 1, !dbg !656, !range !173, !noundef !174
  %tobool = trunc i8 %4 to i1, !dbg !656
  %frombool = zext i1 %tobool to i8, !dbg !656
  store i8 %frombool, ptr %tmp, align 1, !dbg !656
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !658
  %5 = load i8, ptr %tmp, align 1, !dbg !656, !range !173, !noundef !174
  %tobool1 = trunc i8 %5 to i1, !dbg !656
  ret i1 %tobool1, !dbg !659
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "idt_descr", scope: !2, file: !3, line: 168, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.idt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/idt\22 -D KBUILD_BASENAME=\22idt\22 -D KBUILD_MODNAME=\22idt\22 -D __KBUILD_MODNAME=kmod_idt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/idt.ll arch/x86/kernel/idt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/idt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b984fc46d3188c8ca36bc6cb0f2c52ac")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 40, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "GATE_INTERRUPT", value: 14)
!15 = !DIEnumerator(name: "GATE_TRAP", value: 15)
!16 = !DIEnumerator(name: "GATE_CALL", value: 12)
!17 = !DIEnumerator(name: "GATE_TASK", value: 5)
!18 = !{!19, !20, !21, !26, !28, !31, !32, !35}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !7)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!34 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !36, line: 14, baseType: !20)
!36 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!37 = !{!38, !48, !53, !58, !0, !79, !93, !98, !103, !108}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "idt", scope: !40, file: !3, line: 328, type: !43, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "idt_invalidate", scope: !3, file: !3, line: 326, type: !41, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_ptr", file: !12, line: 112, size: 80, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !12, line: 113, baseType: !25, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !44, file: !12, line: 114, baseType: !20, size: 64, offset: 16)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 176, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 22)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "idt_setup_done", scope: !2, file: !3, line: 56, type: !55, isLocal: true, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !56, line: 35, baseType: !57)
!56 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "idt_table", scope: !2, file: !3, line: 166, type: !60, isLocal: true, isDefinition: true, align: 32768)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32768, elements: !77)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gate_desc", file: !12, line: 95, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gate_struct", file: !12, line: 84, size: 128, elements: !63)
!63 = !{!64, !65, !66, !74, !75, !76}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "offset_low", scope: !62, file: !12, line: 85, baseType: !21, size: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !62, file: !12, line: 86, baseType: !21, size: 16, offset: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !62, file: !12, line: 87, baseType: !67, size: 16, offset: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idt_bits", file: !12, line: 69, size: 16, elements: !68)
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !67, file: !12, line: 70, baseType: !21, size: 3, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !67, file: !12, line: 71, baseType: !21, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !12, line: 72, baseType: !21, size: 5, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !67, file: !12, line: 73, baseType: !21, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !67, file: !12, line: 74, baseType: !21, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "offset_middle", scope: !62, file: !12, line: 88, baseType: !21, size: 16, offset: 48)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "offset_high", scope: !62, file: !12, line: 90, baseType: !26, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !62, file: !12, line: 91, baseType: !26, size: 32, offset: 96)
!77 = !{!78}
!78 = !DISubrange(count: 256)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "early_idts", scope: !2, file: !3, line: 62, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 384, elements: !91)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idt_data", file: !12, line: 77, size: 192, elements: !84)
!84 = !{!85, !86, !87, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !83, file: !12, line: 78, baseType: !7, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !83, file: !12, line: 79, baseType: !7, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !83, file: !12, line: 80, baseType: !67, size: 16, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !83, file: !12, line: 81, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!91 = !{!92}
!92 = !DISubrange(count: 2)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "def_idts", scope: !2, file: !3, line: 83, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 3840, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 20)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "early_pf_idts", scope: !2, file: !3, line: 235, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 192, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 1)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "apic_idts", scope: !2, file: !3, line: 129, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2880, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 15)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !110, line: 410, type: !111, isLocal: true, isDefinition: true)
!110 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 224, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 28)
!114 = !{i32 7, !"Dwarf Version", i32 5}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 8, !"cf-protection-branch", i32 1}
!118 = !{i32 4, !"function_return_thunk_extern", i32 1}
!119 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!120 = !{i32 1, !"Code Model", i32 2}
!121 = !{i32 1, !"override-stack-alignment", i32 8}
!122 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!123 = distinct !DISubprogram(name: "load_current_idt", scope: !3, file: !3, line: 173, type: !41, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!124 = !DILocation(line: 175, column: 2, scope: !123)
!125 = !DILocation(line: 175, column: 2, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 175, column: 2)
!127 = !DILocation(line: 176, column: 2, scope: !123)
!128 = !DILocation(line: 177, column: 1, scope: !123)
!129 = distinct !DISubprogram(name: "native_load_idt", scope: !110, file: !110, line: 213, type: !130, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!133 = !{!134}
!134 = !DILocalVariable(name: "dtr", arg: 1, scope: !129, file: !110, line: 213, type: !132)
!135 = !DILocation(line: 213, column: 68, scope: !129)
!136 = !DILocation(line: 215, column: 32, scope: !129)
!137 = !DILocation(line: 215, column: 2, scope: !129)
!138 = !{i64 8262181}
!139 = !DILocation(line: 216, column: 1, scope: !129)
!140 = distinct !DISubprogram(name: "idt_setup_early_traps", scope: !3, file: !3, line: 215, type: !41, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!141 = !DILocation(line: 217, column: 2, scope: !140)
!142 = !DILocation(line: 219, column: 2, scope: !140)
!143 = !DILocation(line: 220, column: 1, scope: !140)
!144 = distinct !DISubprogram(name: "idt_setup_from_table", scope: !3, file: !3, line: 187, type: !145, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !148, !19, !55}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!149 = !{!150, !151, !152, !153, !154}
!150 = !DILocalVariable(name: "idt", arg: 1, scope: !144, file: !3, line: 187, type: !147)
!151 = !DILocalVariable(name: "t", arg: 2, scope: !144, file: !3, line: 187, type: !148)
!152 = !DILocalVariable(name: "size", arg: 3, scope: !144, file: !3, line: 187, type: !19)
!153 = !DILocalVariable(name: "sys", arg: 4, scope: !144, file: !3, line: 187, type: !55)
!154 = !DILocalVariable(name: "desc", scope: !144, file: !3, line: 189, type: !61)
!155 = !DILocation(line: 187, column: 33, scope: !144)
!156 = !DILocation(line: 187, column: 61, scope: !144)
!157 = !DILocation(line: 187, column: 68, scope: !144)
!158 = !DILocation(line: 187, column: 79, scope: !144)
!159 = !DILocation(line: 189, column: 2, scope: !144)
!160 = !DILocation(line: 189, column: 12, scope: !144)
!161 = !DILocation(line: 191, column: 2, scope: !144)
!162 = !DILocation(line: 191, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 191, column: 2)
!164 = distinct !DILexicalBlock(scope: !144, file: !3, line: 191, column: 2)
!165 = !DILocation(line: 191, column: 14, scope: !163)
!166 = !DILocation(line: 191, column: 2, scope: !164)
!167 = !DILocation(line: 192, column: 24, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !3, line: 191, column: 32)
!169 = !DILocation(line: 192, column: 3, scope: !168)
!170 = !DILocation(line: 193, column: 3, scope: !168)
!171 = !DILocation(line: 194, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 194, column: 7)
!173 = !{i8 0, i8 2}
!174 = !{}
!175 = !DILocation(line: 194, column: 7, scope: !168)
!176 = !DILocation(line: 195, column: 12, scope: !172)
!177 = !DILocation(line: 195, column: 15, scope: !172)
!178 = !DILocation(line: 195, column: 4, scope: !172)
!179 = !DILocation(line: 196, column: 2, scope: !168)
!180 = !DILocation(line: 191, column: 20, scope: !163)
!181 = !DILocation(line: 191, column: 28, scope: !163)
!182 = !DILocation(line: 191, column: 2, scope: !163)
!183 = distinct !{!183, !166, !184, !185, !186}
!184 = !DILocation(line: 196, column: 2, scope: !164)
!185 = !{!"llvm.loop.mustprogress"}
!186 = !{!"llvm.loop.unroll.disable"}
!187 = !DILocation(line: 197, column: 1, scope: !144)
!188 = distinct !DISubprogram(name: "idt_setup_traps", scope: !3, file: !3, line: 225, type: !41, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!189 = !DILocation(line: 227, column: 2, scope: !188)
!190 = !DILocation(line: 228, column: 1, scope: !188)
!191 = distinct !DISubprogram(name: "idt_setup_early_pf", scope: !3, file: !3, line: 251, type: !41, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!192 = !DILocation(line: 253, column: 2, scope: !191)
!193 = !DILocation(line: 255, column: 1, scope: !191)
!194 = distinct !DISubprogram(name: "idt_setup_apic_and_irq_gates", scope: !3, file: !3, line: 274, type: !41, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!195 = !{!196, !197}
!196 = !DILocalVariable(name: "i", scope: !194, file: !3, line: 276, type: !19)
!197 = !DILocalVariable(name: "entry", scope: !194, file: !3, line: 277, type: !31)
!198 = !DILocation(line: 276, column: 2, scope: !194)
!199 = !DILocation(line: 276, column: 6, scope: !194)
!200 = !DILocation(line: 277, column: 2, scope: !194)
!201 = !DILocation(line: 277, column: 8, scope: !194)
!202 = !DILocation(line: 279, column: 2, scope: !194)
!203 = !DILocation(line: 281, column: 2, scope: !194)
!204 = !DILocation(line: 281, column: 2, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 281, column: 2)
!206 = distinct !DILexicalBlock(scope: !194, file: !3, line: 281, column: 2)
!207 = !DILocation(line: 281, column: 2, scope: !206)
!208 = !DILocation(line: 282, column: 44, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 281, column: 66)
!210 = !DILocation(line: 282, column: 46, scope: !209)
!211 = !DILocation(line: 282, column: 41, scope: !209)
!212 = !DILocation(line: 282, column: 29, scope: !209)
!213 = !DILocation(line: 282, column: 9, scope: !209)
!214 = !DILocation(line: 283, column: 17, scope: !209)
!215 = !DILocation(line: 283, column: 20, scope: !209)
!216 = !DILocation(line: 283, column: 3, scope: !209)
!217 = !DILocation(line: 284, column: 2, scope: !209)
!218 = distinct !{!218, !207, !219, !185, !186}
!219 = !DILocation(line: 284, column: 2, scope: !206)
!220 = !DILocation(line: 287, column: 2, scope: !194)
!221 = !DILocation(line: 287, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 287, column: 2)
!223 = distinct !DILexicalBlock(scope: !194, file: !3, line: 287, column: 2)
!224 = !DILocation(line: 287, column: 2, scope: !223)
!225 = !DILocation(line: 293, column: 49, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 287, column: 57)
!227 = !DILocation(line: 293, column: 51, scope: !226)
!228 = !DILocation(line: 293, column: 46, scope: !226)
!229 = !DILocation(line: 293, column: 34, scope: !226)
!230 = !DILocation(line: 293, column: 9, scope: !226)
!231 = !DILocation(line: 294, column: 17, scope: !226)
!232 = !DILocation(line: 294, column: 20, scope: !226)
!233 = !DILocation(line: 294, column: 3, scope: !226)
!234 = !DILocation(line: 295, column: 2, scope: !226)
!235 = distinct !{!235, !224, !236, !185, !186}
!236 = !DILocation(line: 295, column: 2, scope: !223)
!237 = !DILocation(line: 298, column: 2, scope: !194)
!238 = !DILocation(line: 299, column: 2, scope: !194)
!239 = !DILocation(line: 302, column: 2, scope: !194)
!240 = !DILocation(line: 304, column: 17, scope: !194)
!241 = !DILocation(line: 305, column: 1, scope: !194)
!242 = distinct !DISubprogram(name: "find_next_zero_bit", scope: !243, file: !243, line: 173, type: !244, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!243 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!244 = !DISubroutineType(types: !245)
!245 = !{!20, !246, !20, !20}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!248 = !{!249, !250, !251, !252}
!249 = !DILocalVariable(name: "addr", arg: 1, scope: !242, file: !243, line: 173, type: !246)
!250 = !DILocalVariable(name: "size", arg: 2, scope: !242, file: !243, line: 173, type: !20)
!251 = !DILocalVariable(name: "offset", arg: 3, scope: !242, file: !243, line: 174, type: !20)
!252 = !DILocalVariable(name: "val", scope: !253, file: !243, line: 177, type: !20)
!253 = distinct !DILexicalBlock(scope: !254, file: !243, line: 176, column: 31)
!254 = distinct !DILexicalBlock(scope: !242, file: !243, line: 176, column: 6)
!255 = !DILocation(line: 173, column: 55, scope: !242)
!256 = !DILocation(line: 173, column: 75, scope: !242)
!257 = !DILocation(line: 174, column: 20, scope: !242)
!258 = !DILocation(line: 176, column: 6, scope: !254)
!259 = !DILocation(line: 176, column: 6, scope: !242)
!260 = !DILocation(line: 177, column: 3, scope: !253)
!261 = !DILocation(line: 177, column: 17, scope: !253)
!262 = !DILocation(line: 179, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !253, file: !243, line: 179, column: 7)
!264 = !DILocation(line: 179, column: 7, scope: !253)
!265 = !DILocation(line: 180, column: 11, scope: !263)
!266 = !DILocation(line: 180, column: 4, scope: !263)
!267 = !DILocation(line: 182, column: 10, scope: !253)
!268 = !DILocation(line: 182, column: 9, scope: !253)
!269 = !DILocation(line: 182, column: 18, scope: !253)
!270 = !DILocation(line: 182, column: 17, scope: !253)
!271 = !DILocation(line: 182, column: 15, scope: !253)
!272 = !DILocation(line: 182, column: 7, scope: !253)
!273 = !DILocation(line: 183, column: 10, scope: !253)
!274 = !DILocation(line: 183, column: 14, scope: !253)
!275 = !DILocation(line: 183, column: 24, scope: !253)
!276 = !DILocation(line: 183, column: 31, scope: !253)
!277 = !DILocation(line: 183, column: 3, scope: !253)
!278 = !DILocation(line: 184, column: 2, scope: !254)
!279 = !DILocation(line: 186, column: 29, scope: !242)
!280 = !DILocation(line: 186, column: 35, scope: !242)
!281 = !DILocation(line: 186, column: 41, scope: !242)
!282 = !DILocation(line: 186, column: 9, scope: !242)
!283 = !DILocation(line: 186, column: 2, scope: !242)
!284 = !DILocation(line: 187, column: 1, scope: !242)
!285 = distinct !DISubprogram(name: "set_intr_gate", scope: !3, file: !3, line: 199, type: !286, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !7, !89}
!288 = !{!289, !290, !291}
!289 = !DILocalVariable(name: "n", arg: 1, scope: !285, file: !3, line: 199, type: !7)
!290 = !DILocalVariable(name: "addr", arg: 2, scope: !285, file: !3, line: 199, type: !89)
!291 = !DILocalVariable(name: "data", scope: !285, file: !3, line: 201, type: !83)
!292 = !DILocation(line: 199, column: 47, scope: !285)
!293 = !DILocation(line: 199, column: 62, scope: !285)
!294 = !DILocation(line: 201, column: 2, scope: !285)
!295 = !DILocation(line: 201, column: 18, scope: !285)
!296 = !DILocation(line: 203, column: 23, scope: !285)
!297 = !DILocation(line: 203, column: 26, scope: !285)
!298 = !DILocation(line: 203, column: 2, scope: !285)
!299 = !DILocation(line: 205, column: 2, scope: !285)
!300 = !DILocation(line: 206, column: 1, scope: !285)
!301 = distinct !DISubprogram(name: "idt_map_in_cea", scope: !3, file: !3, line: 258, type: !41, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!302 = !DILocation(line: 266, column: 43, scope: !301)
!303 = !DILocation(line: 267, column: 7, scope: !301)
!304 = !DILocation(line: 266, column: 2, scope: !301)
!305 = !DILocation(line: 268, column: 20, scope: !301)
!306 = !DILocation(line: 269, column: 1, scope: !301)
!307 = !DISubprogram(name: "set_memory_ro", scope: !308, file: !308, line: 8, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DIFile(filename: "./include/asm-generic/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7a10bb7eb3036a0b37c1df65b3e450e4")
!309 = !DISubroutineType(types: !310)
!310 = !{!19, !20, !19}
!311 = distinct !DISubprogram(name: "idt_setup_early_handler", scope: !3, file: !3, line: 310, type: !41, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313}
!313 = !DILocalVariable(name: "i", scope: !311, file: !3, line: 312, type: !19)
!314 = !DILocation(line: 312, column: 2, scope: !311)
!315 = !DILocation(line: 312, column: 6, scope: !311)
!316 = !DILocation(line: 314, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !311, file: !3, line: 314, column: 2)
!318 = !DILocation(line: 314, column: 7, scope: !317)
!319 = !DILocation(line: 314, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !3, line: 314, column: 2)
!321 = !DILocation(line: 314, column: 16, scope: !320)
!322 = !DILocation(line: 314, column: 2, scope: !317)
!323 = !DILocation(line: 315, column: 17, scope: !320)
!324 = !DILocation(line: 315, column: 44, scope: !320)
!325 = !DILocation(line: 315, column: 20, scope: !320)
!326 = !DILocation(line: 315, column: 3, scope: !320)
!327 = !DILocation(line: 314, column: 42, scope: !320)
!328 = !DILocation(line: 314, column: 2, scope: !320)
!329 = distinct !{!329, !322, !330, !185, !186}
!330 = !DILocation(line: 315, column: 46, scope: !317)
!331 = !DILocation(line: 320, column: 2, scope: !311)
!332 = !DILocation(line: 321, column: 1, scope: !311)
!333 = !DILocation(line: 330, column: 2, scope: !40)
!334 = !DILocation(line: 331, column: 1, scope: !40)
!335 = distinct !DISubprogram(name: "alloc_intr_gate", scope: !3, file: !3, line: 333, type: !286, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!336 = !{!337, !338, !339, !342, !345, !348, !351, !354}
!337 = !DILocalVariable(name: "n", arg: 1, scope: !335, file: !3, line: 333, type: !7)
!338 = !DILocalVariable(name: "addr", arg: 2, scope: !335, file: !3, line: 333, type: !89)
!339 = !DILocalVariable(name: "__ret_warn_on", scope: !340, file: !3, line: 335, type: !19)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 335, column: 6)
!341 = distinct !DILexicalBlock(scope: !335, file: !3, line: 335, column: 6)
!342 = !DILocalVariable(name: "__flags", scope: !343, file: !3, line: 335, type: !19)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 335, column: 6)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 335, column: 6)
!345 = !DILocalVariable(name: "__ret_warn_on", scope: !346, file: !3, line: 338, type: !19)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 338, column: 6)
!347 = distinct !DILexicalBlock(scope: !335, file: !3, line: 338, column: 6)
!348 = !DILocalVariable(name: "__flags", scope: !349, file: !3, line: 338, type: !19)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 338, column: 6)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 338, column: 6)
!351 = !DILocalVariable(name: "__ret_warn_on", scope: !352, file: !3, line: 341, type: !19)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 341, column: 7)
!353 = distinct !DILexicalBlock(scope: !335, file: !3, line: 341, column: 6)
!354 = !DILocalVariable(name: "__flags", scope: !355, file: !3, line: 341, type: !19)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 341, column: 7)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 341, column: 7)
!357 = !DILocation(line: 333, column: 42, scope: !335)
!358 = !DILocation(line: 333, column: 57, scope: !335)
!359 = !DILocation(line: 335, column: 6, scope: !340)
!360 = !DILocation(line: 335, column: 6, scope: !344)
!361 = !DILocation(line: 335, column: 6, scope: !343)
!362 = !DILocation(line: 335, column: 6, scope: !363)
!363 = distinct !DILexicalBlock(scope: !343, file: !3, line: 335, column: 6)
!364 = !DILocation(line: 335, column: 6, scope: !365)
!365 = distinct !DILexicalBlock(scope: !343, file: !3, line: 335, column: 6)
!366 = !{i64 2155821268, i64 2155821297, i64 2155821343, i64 2155821401, i64 2155821455, i64 2155821509, i64 2155821564, i64 2155821595, i64 2155821903, i64 2155821909, i64 2155821956, i64 2155821979, i64 2155822005}
!367 = !DILocation(line: 335, column: 6, scope: !368)
!368 = distinct !DILexicalBlock(scope: !343, file: !3, line: 335, column: 6)
!369 = !DILocation(line: 335, column: 6, scope: !341)
!370 = !DILocation(line: 335, column: 6, scope: !335)
!371 = !DILocation(line: 336, column: 3, scope: !341)
!372 = !DILocation(line: 338, column: 6, scope: !346)
!373 = !DILocation(line: 338, column: 6, scope: !350)
!374 = !DILocation(line: 338, column: 6, scope: !349)
!375 = !DILocation(line: 338, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !349, file: !3, line: 338, column: 6)
!377 = !DILocation(line: 338, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !349, file: !3, line: 338, column: 6)
!379 = !{i64 2155822767, i64 2155822796, i64 2155822842, i64 2155822900, i64 2155822954, i64 2155823008, i64 2155823063, i64 2155823094, i64 2155823402, i64 2155823408, i64 2155823455, i64 2155823478, i64 2155823504}
!380 = !DILocation(line: 338, column: 6, scope: !381)
!381 = distinct !DILexicalBlock(scope: !349, file: !3, line: 338, column: 6)
!382 = !DILocation(line: 338, column: 6, scope: !347)
!383 = !DILocation(line: 338, column: 6, scope: !335)
!384 = !DILocation(line: 339, column: 3, scope: !347)
!385 = !DILocation(line: 341, column: 7, scope: !352)
!386 = !DILocation(line: 341, column: 7, scope: !356)
!387 = !DILocation(line: 341, column: 7, scope: !355)
!388 = !DILocation(line: 341, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !355, file: !3, line: 341, column: 7)
!390 = !DILocation(line: 341, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !355, file: !3, line: 341, column: 7)
!392 = !{i64 2155824287, i64 2155824316, i64 2155824362, i64 2155824420, i64 2155824474, i64 2155824528, i64 2155824583, i64 2155824614, i64 2155824922, i64 2155824928, i64 2155824975, i64 2155824998, i64 2155825024}
!393 = !DILocation(line: 341, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !355, file: !3, line: 341, column: 7)
!395 = !DILocation(line: 341, column: 7, scope: !353)
!396 = !DILocation(line: 341, column: 6, scope: !335)
!397 = !DILocation(line: 342, column: 17, scope: !353)
!398 = !DILocation(line: 342, column: 20, scope: !353)
!399 = !DILocation(line: 342, column: 3, scope: !353)
!400 = !DILocation(line: 343, column: 1, scope: !335)
!401 = distinct !DISubprogram(name: "test_and_set_bit", scope: !402, file: !402, line: 68, type: !403, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!402 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!403 = !DISubroutineType(types: !404)
!404 = !{!55, !34, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!407 = !{!408, !409}
!408 = !DILocalVariable(name: "nr", arg: 1, scope: !401, file: !402, line: 68, type: !34)
!409 = !DILocalVariable(name: "addr", arg: 2, scope: !401, file: !402, line: 68, type: !405)
!410 = !DILocation(line: 68, column: 51, scope: !401)
!411 = !DILocation(line: 68, column: 79, scope: !401)
!412 = !DILocation(line: 70, column: 2, scope: !401)
!413 = !DILocation(line: 70, column: 2, scope: !414)
!414 = distinct !DILexicalBlock(scope: !401, file: !402, line: 70, column: 2)
!415 = !DILocation(line: 71, column: 31, scope: !401)
!416 = !DILocation(line: 71, column: 38, scope: !401)
!417 = !DILocation(line: 71, column: 36, scope: !401)
!418 = !DILocation(line: 71, column: 2, scope: !401)
!419 = !DILocation(line: 72, column: 31, scope: !401)
!420 = !DILocation(line: 72, column: 35, scope: !401)
!421 = !DILocation(line: 72, column: 9, scope: !401)
!422 = !DILocation(line: 72, column: 2, scope: !401)
!423 = distinct !DISubprogram(name: "idt_init_desc", scope: !110, file: !110, line: 420, type: !424, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !147, !148}
!426 = !{!427, !428, !429}
!427 = !DILocalVariable(name: "gate", arg: 1, scope: !423, file: !110, line: 420, type: !147)
!428 = !DILocalVariable(name: "d", arg: 2, scope: !423, file: !110, line: 420, type: !148)
!429 = !DILocalVariable(name: "addr", scope: !423, file: !110, line: 422, type: !20)
!430 = !DILocation(line: 420, column: 45, scope: !423)
!431 = !DILocation(line: 420, column: 74, scope: !423)
!432 = !DILocation(line: 422, column: 2, scope: !423)
!433 = !DILocation(line: 422, column: 16, scope: !423)
!434 = !DILocation(line: 422, column: 39, scope: !423)
!435 = !DILocation(line: 422, column: 42, scope: !423)
!436 = !DILocation(line: 422, column: 23, scope: !423)
!437 = !DILocation(line: 424, column: 27, scope: !423)
!438 = !DILocation(line: 424, column: 21, scope: !423)
!439 = !DILocation(line: 424, column: 2, scope: !423)
!440 = !DILocation(line: 424, column: 8, scope: !423)
!441 = !DILocation(line: 424, column: 19, scope: !423)
!442 = !DILocation(line: 425, column: 25, scope: !423)
!443 = !DILocation(line: 425, column: 28, scope: !423)
!444 = !DILocation(line: 425, column: 19, scope: !423)
!445 = !DILocation(line: 425, column: 2, scope: !423)
!446 = !DILocation(line: 425, column: 8, scope: !423)
!447 = !DILocation(line: 425, column: 17, scope: !423)
!448 = !DILocation(line: 426, column: 2, scope: !423)
!449 = !DILocation(line: 426, column: 8, scope: !423)
!450 = !DILocation(line: 426, column: 16, scope: !423)
!451 = !DILocation(line: 426, column: 19, scope: !423)
!452 = !DILocation(line: 427, column: 31, scope: !423)
!453 = !DILocation(line: 427, column: 36, scope: !423)
!454 = !DILocation(line: 427, column: 24, scope: !423)
!455 = !DILocation(line: 427, column: 2, scope: !423)
!456 = !DILocation(line: 427, column: 8, scope: !423)
!457 = !DILocation(line: 427, column: 22, scope: !423)
!458 = !DILocation(line: 429, column: 29, scope: !423)
!459 = !DILocation(line: 429, column: 34, scope: !423)
!460 = !DILocation(line: 429, column: 22, scope: !423)
!461 = !DILocation(line: 429, column: 2, scope: !423)
!462 = !DILocation(line: 429, column: 8, scope: !423)
!463 = !DILocation(line: 429, column: 20, scope: !423)
!464 = !DILocation(line: 430, column: 2, scope: !423)
!465 = !DILocation(line: 430, column: 8, scope: !423)
!466 = !DILocation(line: 430, column: 18, scope: !423)
!467 = !DILocation(line: 432, column: 1, scope: !423)
!468 = distinct !DISubprogram(name: "native_write_idt_entry", scope: !110, file: !110, line: 137, type: !469, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !147, !19, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!473 = !{!474, !475, !476}
!474 = !DILocalVariable(name: "idt", arg: 1, scope: !468, file: !110, line: 137, type: !147)
!475 = !DILocalVariable(name: "entry", arg: 2, scope: !468, file: !110, line: 137, type: !19)
!476 = !DILocalVariable(name: "gate", arg: 3, scope: !468, file: !110, line: 137, type: !471)
!477 = !DILocation(line: 137, column: 54, scope: !468)
!478 = !DILocation(line: 137, column: 63, scope: !468)
!479 = !DILocation(line: 137, column: 87, scope: !468)
!480 = !DILocation(line: 139, column: 10, scope: !468)
!481 = !DILocation(line: 139, column: 14, scope: !468)
!482 = !DILocation(line: 139, column: 22, scope: !468)
!483 = !DILocation(line: 139, column: 2, scope: !468)
!484 = !DILocation(line: 140, column: 1, scope: !468)
!485 = distinct !DISubprogram(name: "set_bit", scope: !402, file: !402, line: 26, type: !486, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !34, !405}
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "nr", arg: 1, scope: !485, file: !402, line: 26, type: !34)
!490 = !DILocalVariable(name: "addr", arg: 2, scope: !485, file: !402, line: 26, type: !405)
!491 = !DILocation(line: 26, column: 42, scope: !485)
!492 = !DILocation(line: 26, column: 70, scope: !485)
!493 = !DILocation(line: 28, column: 26, scope: !485)
!494 = !DILocation(line: 28, column: 33, scope: !485)
!495 = !DILocation(line: 28, column: 31, scope: !485)
!496 = !DILocation(line: 28, column: 2, scope: !485)
!497 = !DILocation(line: 29, column: 15, scope: !485)
!498 = !DILocation(line: 29, column: 19, scope: !485)
!499 = !DILocation(line: 29, column: 2, scope: !485)
!500 = !DILocation(line: 30, column: 1, scope: !485)
!501 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !502, file: !502, line: 80, type: !503, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!502 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505, !508}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 61, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !510, line: 72, baseType: !511)
!510 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !510, line: 16, baseType: !20)
!512 = !{!513, !514}
!513 = !DILocalVariable(name: "v", arg: 1, scope: !501, file: !502, line: 80, type: !505)
!514 = !DILocalVariable(name: "size", arg: 2, scope: !501, file: !502, line: 80, type: !508)
!515 = !DILocation(line: 80, column: 74, scope: !501)
!516 = !DILocation(line: 80, column: 84, scope: !501)
!517 = !DILocation(line: 82, column: 20, scope: !501)
!518 = !DILocation(line: 82, column: 23, scope: !501)
!519 = !DILocation(line: 82, column: 2, scope: !501)
!520 = !DILocation(line: 83, column: 2, scope: !501)
!521 = !DILocation(line: 84, column: 1, scope: !501)
!522 = distinct !DISubprogram(name: "arch_set_bit", scope: !523, file: !523, line: 52, type: !486, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!523 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!524 = !{!525, !526}
!525 = !DILocalVariable(name: "nr", arg: 1, scope: !522, file: !523, line: 52, type: !34)
!526 = !DILocalVariable(name: "addr", arg: 2, scope: !522, file: !523, line: 52, type: !405)
!527 = !DILocation(line: 52, column: 19, scope: !522)
!528 = !DILocation(line: 52, column: 47, scope: !522)
!529 = !DILocation(line: 54, column: 27, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !523, line: 54, column: 6)
!531 = !DILocation(line: 54, column: 6, scope: !530)
!532 = !DILocation(line: 54, column: 6, scope: !522)
!533 = !DILocation(line: 56, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !523, line: 54, column: 32)
!535 = !DILocation(line: 57, column: 12, scope: !534)
!536 = !DILocation(line: 55, column: 3, scope: !534)
!537 = !{i64 2147819269, i64 2147819308, i64 2147819329, i64 2147819366, i64 2147819389, i64 2147819259}
!538 = !DILocation(line: 59, column: 2, scope: !534)
!539 = !DILocation(line: 61, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !530, file: !523, line: 59, column: 9)
!541 = !DILocation(line: 61, column: 32, scope: !540)
!542 = !DILocation(line: 60, column: 3, scope: !540)
!543 = !{i64 2147819554, i64 2147819593, i64 2147819614, i64 2147819651, i64 2147819674, i64 2147819544}
!544 = !DILocation(line: 63, column: 1, scope: !522)
!545 = distinct !DISubprogram(name: "kasan_check_write", scope: !546, file: !546, line: 44, type: !547, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!546 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!547 = !DISubroutineType(types: !548)
!548 = !{!55, !505, !7}
!549 = !{!550, !551}
!550 = !DILocalVariable(name: "p", arg: 1, scope: !545, file: !546, line: 44, type: !505)
!551 = !DILocalVariable(name: "size", arg: 2, scope: !545, file: !546, line: 44, type: !7)
!552 = !DILocation(line: 44, column: 59, scope: !545)
!553 = !DILocation(line: 44, column: 75, scope: !545)
!554 = !DILocation(line: 46, column: 2, scope: !545)
!555 = distinct !DISubprogram(name: "kcsan_check_access", scope: !556, file: !556, line: 229, type: !557, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!556 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!557 = !DISubroutineType(types: !558)
!558 = !{null, !505, !508, !19}
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(name: "ptr", arg: 1, scope: !555, file: !556, line: 229, type: !505)
!561 = !DILocalVariable(name: "size", arg: 2, scope: !555, file: !556, line: 229, type: !508)
!562 = !DILocalVariable(name: "type", arg: 3, scope: !555, file: !556, line: 230, type: !19)
!563 = !DILocation(line: 229, column: 60, scope: !555)
!564 = !DILocation(line: 229, column: 72, scope: !555)
!565 = !DILocation(line: 230, column: 15, scope: !555)
!566 = !DILocation(line: 230, column: 23, scope: !555)
!567 = distinct !DISubprogram(name: "variable_ffz", scope: !523, file: !523, line: 269, type: !568, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!20, !20}
!570 = !{!571}
!571 = !DILocalVariable(name: "word", arg: 1, scope: !567, file: !523, line: 269, type: !20)
!572 = !DILocation(line: 269, column: 65, scope: !567)
!573 = !DILocation(line: 273, column: 11, scope: !567)
!574 = !DILocation(line: 273, column: 10, scope: !567)
!575 = !DILocation(line: 271, column: 2, scope: !567)
!576 = !{i64 328373}
!577 = !DILocation(line: 274, column: 9, scope: !567)
!578 = !DILocation(line: 274, column: 2, scope: !567)
!579 = !DISubprogram(name: "_find_next_zero_bit", scope: !243, file: !243, line: 19, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = distinct !DISubprogram(name: "init_idt_data", scope: !110, file: !110, line: 407, type: !581, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !583, !7, !89}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!584 = !{!585, !586, !587}
!585 = !DILocalVariable(name: "data", arg: 1, scope: !580, file: !110, line: 407, type: !583)
!586 = !DILocalVariable(name: "n", arg: 2, scope: !580, file: !110, line: 407, type: !7)
!587 = !DILocalVariable(name: "addr", arg: 3, scope: !580, file: !110, line: 408, type: !89)
!588 = !DILocation(line: 407, column: 51, scope: !580)
!589 = !DILocation(line: 407, column: 70, scope: !580)
!590 = !DILocation(line: 408, column: 18, scope: !580)
!591 = !DILocation(line: 410, column: 2, scope: !580)
!592 = !DILocation(line: 410, column: 2, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !110, line: 410, column: 2)
!594 = distinct !DILexicalBlock(scope: !580, file: !110, line: 410, column: 2)
!595 = !DILocation(line: 410, column: 2, scope: !594)
!596 = !DILocation(line: 410, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !110, line: 410, column: 2)
!598 = !DILocation(line: 410, column: 2, scope: !599)
!599 = distinct !DILexicalBlock(scope: !597, file: !110, line: 410, column: 2)
!600 = !DILocation(line: 410, column: 2, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !110, line: 410, column: 2)
!602 = !{i64 2155795212, i64 2155795241, i64 2155795287, i64 2155795345, i64 2155795399, i64 2155795453, i64 2155795508, i64 2155795539}
!603 = !DILocation(line: 412, column: 9, scope: !580)
!604 = !DILocation(line: 412, column: 2, scope: !580)
!605 = !DILocation(line: 413, column: 17, scope: !580)
!606 = !DILocation(line: 413, column: 2, scope: !580)
!607 = !DILocation(line: 413, column: 8, scope: !580)
!608 = !DILocation(line: 413, column: 15, scope: !580)
!609 = !DILocation(line: 414, column: 15, scope: !580)
!610 = !DILocation(line: 414, column: 2, scope: !580)
!611 = !DILocation(line: 414, column: 8, scope: !580)
!612 = !DILocation(line: 414, column: 13, scope: !580)
!613 = !DILocation(line: 415, column: 2, scope: !580)
!614 = !DILocation(line: 415, column: 8, scope: !580)
!615 = !DILocation(line: 415, column: 16, scope: !580)
!616 = !DILocation(line: 416, column: 2, scope: !580)
!617 = !DILocation(line: 416, column: 8, scope: !580)
!618 = !DILocation(line: 416, column: 18, scope: !580)
!619 = !DILocation(line: 417, column: 2, scope: !580)
!620 = !DILocation(line: 417, column: 8, scope: !580)
!621 = !DILocation(line: 417, column: 15, scope: !580)
!622 = !DILocation(line: 418, column: 1, scope: !580)
!623 = !DISubprogram(name: "cea_set_pte", scope: !624, file: !624, line: 138, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DIFile(filename: "./arch/x86/include/asm/cpu_entry_area.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b81fe974072fb47372fbb126df7d460b")
!625 = !DISubroutineType(types: !626)
!626 = !{null, !31, !627, !631}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !56, line: 159, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !630)
!630 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !632, line: 297, baseType: !633)
!632 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !632, line: 297, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !633, file: !632, line: 297, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !36, line: 19, baseType: !20)
!637 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !502, file: !502, line: 94, type: !503, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!638 = !{!639, !640}
!639 = !DILocalVariable(name: "v", arg: 1, scope: !637, file: !502, line: 94, type: !505)
!640 = !DILocalVariable(name: "size", arg: 2, scope: !637, file: !502, line: 94, type: !508)
!641 = !DILocation(line: 94, column: 79, scope: !637)
!642 = !DILocation(line: 94, column: 89, scope: !637)
!643 = !DILocation(line: 96, column: 20, scope: !637)
!644 = !DILocation(line: 96, column: 23, scope: !637)
!645 = !DILocation(line: 96, column: 2, scope: !637)
!646 = !DILocation(line: 97, column: 2, scope: !637)
!647 = !DILocation(line: 98, column: 1, scope: !637)
!648 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !523, file: !523, line: 136, type: !403, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !649)
!649 = !{!650, !651, !652}
!650 = !DILocalVariable(name: "nr", arg: 1, scope: !648, file: !523, line: 136, type: !34)
!651 = !DILocalVariable(name: "addr", arg: 2, scope: !648, file: !523, line: 136, type: !405)
!652 = !DILocalVariable(name: "c", scope: !653, file: !523, line: 138, type: !55)
!653 = distinct !DILexicalBlock(scope: !648, file: !523, line: 138, column: 9)
!654 = !DILocation(line: 136, column: 28, scope: !648)
!655 = !DILocation(line: 136, column: 56, scope: !648)
!656 = !DILocation(line: 138, column: 9, scope: !653)
!657 = !{i64 2147825720, i64 2147825759, i64 2147825780, i64 2147825817, i64 2147825840, i64 2147825849, i64 2147825952}
!658 = !DILocation(line: 138, column: 9, scope: !648)
!659 = !DILocation(line: 138, column: 2, scope: !648)
