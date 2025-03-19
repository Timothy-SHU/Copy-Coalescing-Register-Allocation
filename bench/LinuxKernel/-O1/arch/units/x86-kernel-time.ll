; ModuleID = 'arch/x86/kernel/time.c'
source_filename = "arch/x86/kernel/time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_profile_pc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad profile_pc ; .previous"

%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.2, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i64, [88 x i8] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [48 x i8] }

@__UNIQUE_ID___addressable_profile_pc194 = internal global ptr @profile_pc, section ".discard.addressable", align 8, !dbg !0
@late_time_init = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [89 x i8] c"\014clocksource %s registered with invalid mask %016llx for VDSO. Disabling VDSO support.\0A\00", align 1, !dbg !41
@.str.1 = private unnamed_addr constant [6 x i8] c"timer\00", align 1, !dbg !46
@.str.2 = private unnamed_addr constant [45 x i8] c"\016Failed to register legacy timer interrupt\0A\00", align 1, !dbg !51
@global_clock_event = external dso_local global ptr, align 8
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_profile_pc194], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @profile_pc(ptr noundef %regs) #0 align 16 !dbg !65 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !131
  %call = call i64 @instruction_pointer(ptr noundef %0) #10, !dbg !132
  ret i64 %call, !dbg !133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @instruction_pointer(ptr noundef %regs) #2 align 16 !dbg !134 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !138
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !139
  %1 = load i64, ptr %ip, align 8, !dbg !139
  ret i64 %1, !dbg !140
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @hpet_time_init() #3 section ".init.text" align 16 !dbg !141 {
entry:
  %call = call i32 @hpet_enable() #10, !dbg !144
  %tobool = icmp ne i32 %call, 0, !dbg !144
  br i1 %tobool, label %if.end3, label %if.then, !dbg !146

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @pit_timer_init() #10, !dbg !147
  br i1 %call1, label %if.end, label %if.then2, !dbg !150

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !151

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !152

if.end3:                                          ; preds = %if.end, %entry
  call void @setup_default_timer_irq() #11, !dbg !153
  br label %return, !dbg !154

return:                                           ; preds = %if.end3, %if.then2
  ret void, !dbg !154
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !155 dso_local i32 @hpet_enable() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !159 dso_local zeroext i1 @pit_timer_init() #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @setup_default_timer_irq() #3 section ".init.text" align 16 !dbg !166 {
entry:
  %flags = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !168, metadata !DIExpression()), !dbg !170
  store i64 88576, ptr %flags, align 8, !dbg !170
  %0 = load i64, ptr %flags, align 8, !dbg !171
  %call = call i32 @request_irq(i32 noundef 0, ptr noundef @timer_interrupt, i64 noundef %0, ptr noundef @.str.1, ptr noundef null) #10, !dbg !173
  %tobool = icmp ne i32 %call, 0, !dbg !173
  br i1 %tobool, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !175

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !177

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !177

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #11, !dbg !175
  store i32 %call1, ptr %tmp, align 4, !dbg !177
  %1 = load i32, ptr %tmp, align 4, !dbg !175
  br label %if.end, !dbg !179

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !180
  ret void, !dbg !180
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @time_init() #3 section ".init.text" align 16 !dbg !181 {
entry:
  store ptr @x86_late_time_init, ptr @late_time_init, align 8, !dbg !182
  ret void, !dbg !183
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @x86_late_time_init() #3 section ".init.text" align 16 !dbg !184 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 2, i32 2), align 8, !dbg !185
  call void %0() #10, !dbg !186
  %1 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 5, i32 1), align 8, !dbg !187
  call void %1() #10, !dbg !188
  %2 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 2, i32 3), align 8, !dbg !189
  call void %2() #10, !dbg !190
  call void @tsc_init() #10, !dbg !191
  br i1 false, label %cond.true, label %cond.false2, !dbg !192

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !193

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %if.end, !dbg !193

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 517, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !193
  br i1 %call, label %if.then, label %if.end, !dbg !193

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 517) #10, !dbg !193
  br i1 %call3, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @use_tpause_delay() #11, !dbg !195
  br label %if.end, !dbg !195

if.end:                                           ; preds = %if.then, %cond.false2, %cond.false, %cond.true1
  ret void, !dbg !196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clocksource_arch_init(ptr noundef %cs) #0 align 16 !dbg !197 {
entry:
  %cs.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load ptr, ptr %cs.addr, align 8, !dbg !248
  %vdso_clock_mode = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 12, !dbg !250
  %1 = load i32, ptr %vdso_clock_mode, align 8, !dbg !250
  %cmp = icmp eq i32 %1, 0, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  br label %if.end5, !dbg !253

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cs.addr, align 8, !dbg !254
  %mask = getelementptr inbounds %struct.clocksource, ptr %2, i32 0, i32 1, !dbg !256
  %3 = load i64, ptr %mask, align 8, !dbg !256
  %cmp1 = icmp ne i64 %3, -1, !dbg !257
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !258

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !259

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !262

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %cs.addr, align 8, !dbg !259
  %name = getelementptr inbounds %struct.clocksource, ptr %4, i32 0, i32 8, !dbg !259
  %5 = load ptr, ptr %name, align 8, !dbg !259
  %6 = load ptr, ptr %cs.addr, align 8, !dbg !259
  %mask3 = getelementptr inbounds %struct.clocksource, ptr %6, i32 0, i32 1, !dbg !259
  %7 = load i64, ptr %mask3, align 8, !dbg !259
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %5, i64 noundef %7) #11, !dbg !259
  store i32 %call, ptr %tmp, align 4, !dbg !262
  %8 = load i32, ptr %tmp, align 4, !dbg !259
  %9 = load ptr, ptr %cs.addr, align 8, !dbg !264
  %vdso_clock_mode4 = getelementptr inbounds %struct.clocksource, ptr %9, i32 0, i32 12, !dbg !265
  store i32 0, ptr %vdso_clock_mode4, align 8, !dbg !266
  br label %if.end5, !dbg !267

if.end5:                                          ; preds = %if.then, %do.end, %if.end
  ret void, !dbg !268
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !269 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_irq(i32 noundef %irq, ptr noundef %handler, i64 noundef %flags, ptr noundef %name, ptr noundef %dev) #2 align 16 !dbg !273 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !283, metadata !DIExpression()), !dbg !288
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !284, metadata !DIExpression()), !dbg !289
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !285, metadata !DIExpression()), !dbg !290
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !286, metadata !DIExpression()), !dbg !291
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !287, metadata !DIExpression()), !dbg !292
  %0 = load i32, ptr %irq.addr, align 4, !dbg !293
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !294
  %2 = load i64, ptr %flags.addr, align 8, !dbg !295
  %3 = load ptr, ptr %name.addr, align 8, !dbg !296
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !297
  %call = call i32 @request_threaded_irq(i32 noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %2, ptr noundef %3, ptr noundef %4) #10, !dbg !298
  ret i32 %call, !dbg !299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 16 !dbg !300 {
entry:
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !302, metadata !DIExpression()), !dbg !304
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !303, metadata !DIExpression()), !dbg !305
  %0 = load ptr, ptr @global_clock_event, align 8, !dbg !306
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 0, !dbg !307
  %1 = load ptr, ptr %event_handler, align 64, !dbg !307
  %2 = load ptr, ptr @global_clock_event, align 8, !dbg !308
  call void %1(ptr noundef %2) #10, !dbg !306
  ret i32 1, !dbg !309
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !310 dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !313 dso_local void @tsc_init() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !315 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !323, metadata !DIExpression()), !dbg !325
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !324, metadata !DIExpression()), !dbg !326
  %0 = load i64, ptr %nr.addr, align 8, !dbg !327
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !328
  br i1 %1, label %cond.true, label %cond.false, !dbg !328

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !329
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !330
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !331
  %conv = zext i1 %call to i32, !dbg !331
  br label %cond.end, !dbg !328

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !332
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !333
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !334
  %conv2 = zext i1 %call1 to i32, !dbg !334
  br label %cond.end, !dbg !328

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !328
  %tobool = icmp ne i32 %cond, 0, !dbg !328
  ret i1 %tobool, !dbg !335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !336 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !341, metadata !DIExpression()), !dbg !344
  %0 = load i16, ptr %bit.addr, align 2, !dbg !345
  %1 = load i16, ptr %bit.addr, align 2, !dbg !346
  %conv = zext i16 %1 to i32, !dbg !346
  %and = and i32 %conv, 7, !dbg !347
  %shl = shl i32 1, %and, !dbg !348
  %2 = load i16, ptr %bit.addr, align 2, !dbg !349
  %conv1 = zext i16 %2 to i32, !dbg !349
  %shr = ashr i32 %conv1, 3, !dbg !350
  %idxprom = sext i32 %shr to i64, !dbg !351
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !351
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !352, !srcloc !353

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !352

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !342), !dbg !354
  store i1 true, ptr %retval, align 1, !dbg !355
  br label %return, !dbg !355

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !343), !dbg !356
  store i1 false, ptr %retval, align 1, !dbg !357
  br label %return, !dbg !357

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !358
  ret i1 %3, !dbg !358
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !359 dso_local void @use_tpause_delay() #5 section ".init.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !361 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !366, metadata !DIExpression()), !dbg !368
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !367, metadata !DIExpression()), !dbg !369
  %0 = load i64, ptr %nr.addr, align 8, !dbg !370
  %and = and i64 %0, 63, !dbg !371
  %shl = shl i64 1, %and, !dbg !372
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !373
  %2 = load i64, ptr %nr.addr, align 8, !dbg !374
  %shr = ashr i64 %2, 6, !dbg !375
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !373
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !373
  %and1 = and i64 %shl, %3, !dbg !376
  %cmp = icmp ne i64 %and1, 0, !dbg !377
  ret i1 %cmp, !dbg !378
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !379 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !381, metadata !DIExpression()), !dbg !384
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !382, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !383, metadata !DIExpression()), !dbg !387
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !388
  %1 = load i64, ptr %nr.addr, align 8, !dbg !389
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !390, !srcloc !391
  %3 = icmp ult i8 %2, 2, !dbg !390
  call void @llvm.assume(i1 %3), !dbg !390
  store i8 %2, ptr %oldbit, align 1, !dbg !390
  %4 = load i8, ptr %oldbit, align 1, !dbg !392, !range !393, !noundef !394
  %tobool = trunc i8 %4 to i1, !dbg !392
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !395
  ret i1 %tobool, !dbg !396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_profile_pc194", scope: !2, file: !3, line: 32, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.time.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/time\22 -D KBUILD_BASENAME=\22time\22 -D KBUILD_MODNAME=\22time\22 -D __KBUILD_MODNAME=kmod_time -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/time.ll arch/x86/kernel/time.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !40, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/time.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f9ddec55cbb17b373c735a9e8c19f13")
!4 = !{!5, !12, !21, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clocksource_ids", file: !6, line: 6, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clocksource_ids.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "774f19ce120af1af8c42b816fa8c1ff1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "CSID_GENERIC", value: 0)
!10 = !DIEnumerator(name: "CSID_ARM_ARCH_COUNTER", value: 1)
!11 = !DIEnumerator(name: "CSID_MAX", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !13, line: 11, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!16 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!17 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!18 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!19 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!20 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !22, line: 11, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!25 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!26 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 10, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "false", value: 0)
!31 = !DIEnumerator(name: "true", value: 1)
!32 = !{!33, !34, !35, !37}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!0, !41, !46, !51}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 712, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 89)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 6)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 360, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 45)
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 8, !"cf-protection-branch", i32 1}
!60 = !{i32 4, !"function_return_thunk_extern", i32 1}
!61 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!62 = !{i32 1, !"Code Model", i32 2}
!63 = !{i32 1, !"override-stack-alignment", i32 8}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = distinct !DISubprogram(name: "profile_pc", scope: !3, file: !3, line: 28, type: !66, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!66 = !DISubroutineType(types: !67)
!67 = !{!36, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !70, line: 103, size: 1344, elements: !71)
!70 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !108, !109, !110}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !69, file: !70, line: 109, baseType: !36, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !69, file: !70, line: 110, baseType: !36, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !69, file: !70, line: 111, baseType: !36, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !69, file: !70, line: 112, baseType: !36, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !69, file: !70, line: 113, baseType: !36, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !69, file: !70, line: 114, baseType: !36, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !69, file: !70, line: 117, baseType: !36, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !69, file: !70, line: 118, baseType: !36, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !69, file: !70, line: 119, baseType: !36, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !69, file: !70, line: 120, baseType: !36, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !69, file: !70, line: 121, baseType: !36, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !69, file: !70, line: 122, baseType: !36, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !69, file: !70, line: 123, baseType: !36, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !69, file: !70, line: 124, baseType: !36, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !69, file: !70, line: 125, baseType: !36, size: 64, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !69, file: !70, line: 139, baseType: !36, size: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !69, file: !70, line: 142, baseType: !36, size: 64, offset: 1024)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !70, line: 144, baseType: !90, size: 64, offset: 1088)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !70, line: 144, size: 64, elements: !91)
!91 = !{!92, !98, !102}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !90, file: !70, line: 146, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !90, file: !70, line: 148, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !101)
!101 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !90, file: !70, line: 150, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !70, line: 59, size: 64, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !103, file: !70, line: 61, baseType: !99, size: 16, flags: DIFlagBitField, extraData: i64 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !103, file: !70, line: 63, baseType: !99, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !103, file: !70, line: 65, baseType: !99, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !70, line: 153, baseType: !36, size: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !69, file: !70, line: 154, baseType: !36, size: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !70, line: 156, baseType: !111, size: 64, offset: 1280)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !70, line: 156, size: 64, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !111, file: !70, line: 158, baseType: !93, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !111, file: !70, line: 160, baseType: !99, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !111, file: !70, line: 162, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !70, line: 69, size: 64, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !116, file: !70, line: 71, baseType: !99, size: 16, flags: DIFlagBitField, extraData: i64 0)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !116, file: !70, line: 73, baseType: !99, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !116, file: !70, line: 75, baseType: !99, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !116, file: !70, line: 77, baseType: !99, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !116, file: !70, line: 80, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !70, line: 83, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !116, file: !70, line: 86, baseType: !99, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !116, file: !70, line: 88, baseType: !99, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !116, file: !70, line: 93, baseType: !99, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !116, file: !70, line: 100, baseType: !99, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!128 = !{!129}
!129 = !DILocalVariable(name: "regs", arg: 1, scope: !65, file: !3, line: 28, type: !68)
!130 = !DILocation(line: 28, column: 42, scope: !65)
!131 = !DILocation(line: 30, column: 29, scope: !65)
!132 = !DILocation(line: 30, column: 9, scope: !65)
!133 = !DILocation(line: 30, column: 2, scope: !65)
!134 = distinct !DISubprogram(name: "instruction_pointer", scope: !70, file: !70, line: 285, type: !66, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!135 = !{!136}
!136 = !DILocalVariable(name: "regs", arg: 1, scope: !134, file: !70, line: 285, type: !68)
!137 = !DILocation(line: 285, column: 65, scope: !134)
!138 = !DILocation(line: 287, column: 9, scope: !134)
!139 = !DILocation(line: 287, column: 15, scope: !134)
!140 = !DILocation(line: 287, column: 2, scope: !134)
!141 = distinct !DISubprogram(name: "hpet_time_init", scope: !3, file: !3, line: 57, type: !142, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!142 = !DISubroutineType(types: !143)
!143 = !{null}
!144 = !DILocation(line: 59, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 59, column: 6)
!146 = !DILocation(line: 59, column: 6, scope: !141)
!147 = !DILocation(line: 60, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 60, column: 7)
!149 = distinct !DILexicalBlock(scope: !145, file: !3, line: 59, column: 22)
!150 = !DILocation(line: 60, column: 7, scope: !149)
!151 = !DILocation(line: 61, column: 4, scope: !148)
!152 = !DILocation(line: 62, column: 2, scope: !149)
!153 = !DILocation(line: 64, column: 2, scope: !141)
!154 = !DILocation(line: 65, column: 1, scope: !141)
!155 = !DISubprogram(name: "hpet_enable", scope: !156, file: !156, line: 72, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DIFile(filename: "./arch/x86/include/asm/hpet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bf2ddcd811b6804706aefc6f053a8835")
!157 = !DISubroutineType(types: !158)
!158 = !{!34}
!159 = !DISubprogram(name: "pit_timer_init", scope: !160, file: !160, line: 9, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DIFile(filename: "./arch/x86/include/asm/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e29d7c8ec7d5cf27f2ce4d8516beea7f")
!161 = !DISubroutineType(types: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!166 = distinct !DISubprogram(name: "setup_default_timer_irq", scope: !3, file: !3, line: 43, type: !142, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!167 = !{!168}
!168 = !DILocalVariable(name: "flags", scope: !166, file: !3, line: 45, type: !36)
!169 = !DILocation(line: 45, column: 2, scope: !166)
!170 = !DILocation(line: 45, column: 16, scope: !166)
!171 = !DILocation(line: 52, column: 38, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !3, line: 52, column: 6)
!173 = !DILocation(line: 52, column: 6, scope: !172)
!174 = !DILocation(line: 52, column: 6, scope: !166)
!175 = !DILocation(line: 53, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 53, column: 3)
!177 = !DILocation(line: 53, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !3, line: 53, column: 3)
!179 = !DILocation(line: 53, column: 3, scope: !172)
!180 = !DILocation(line: 54, column: 1, scope: !166)
!181 = distinct !DISubprogram(name: "time_init", scope: !3, file: !3, line: 93, type: !142, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!182 = !DILocation(line: 95, column: 17, scope: !181)
!183 = !DILocation(line: 96, column: 1, scope: !181)
!184 = distinct !DISubprogram(name: "x86_late_time_init", scope: !3, file: !3, line: 67, type: !142, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!185 = !DILocation(line: 73, column: 16, scope: !184)
!186 = !DILocation(line: 73, column: 2, scope: !184)
!187 = !DILocation(line: 76, column: 18, scope: !184)
!188 = !DILocation(line: 76, column: 2, scope: !184)
!189 = !DILocation(line: 82, column: 16, scope: !184)
!190 = !DILocation(line: 82, column: 2, scope: !184)
!191 = !DILocation(line: 83, column: 2, scope: !184)
!192 = !DILocation(line: 85, column: 6, scope: !184)
!193 = !DILocation(line: 85, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !184, file: !3, line: 85, column: 6)
!195 = !DILocation(line: 86, column: 3, scope: !194)
!196 = !DILocation(line: 87, column: 1, scope: !184)
!197 = distinct !DISubprogram(name: "clocksource_arch_init", scope: !3, file: !3, line: 101, type: !198, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !202, line: 96, size: 1472, elements: !203)
!202 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!203 = !{!204, !208, !209, !212, !213, !214, !215, !216, !217, !218, !224, !225, !226, !227, !228, !232, !234, !235, !236, !237, !238, !239, !240, !241}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !201, file: !202, line: 97, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!99, !200}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !201, file: !202, line: 98, baseType: !99, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !201, file: !202, line: 99, baseType: !210, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !7)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !201, file: !202, line: 100, baseType: !210, size: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_ns", scope: !201, file: !202, line: 101, baseType: !99, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "maxadj", scope: !201, file: !202, line: 102, baseType: !210, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uncertainty_margin", scope: !201, file: !202, line: 103, baseType: !210, size: 32, offset: 288)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "max_cycles", scope: !201, file: !202, line: 107, baseType: !99, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !202, line: 108, baseType: !37, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !201, file: !202, line: 109, baseType: !219, size: 128, offset: 448)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !164, line: 190, size: 128, elements: !220)
!220 = !{!221, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !164, line: 191, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !219, file: !164, line: 191, baseType: !222, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !201, file: !202, line: 110, baseType: !34, size: 32, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !201, file: !202, line: 111, baseType: !5, size: 32, offset: 608)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_clock_mode", scope: !201, file: !202, line: 112, baseType: !12, size: 32, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !202, line: 113, baseType: !36, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !201, file: !202, line: 115, baseType: !229, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!34, !200}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !201, file: !202, line: 116, baseType: !233, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !201, file: !202, line: 117, baseType: !233, size: 64, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !201, file: !202, line: 118, baseType: !233, size: 64, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mark_unstable", scope: !201, file: !202, line: 119, baseType: !233, size: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tick_stable", scope: !201, file: !202, line: 120, baseType: !233, size: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wd_list", scope: !201, file: !202, line: 125, baseType: !219, size: 128, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "cs_last", scope: !201, file: !202, line: 126, baseType: !99, size: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wd_last", scope: !201, file: !202, line: 127, baseType: !99, size: 64, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !201, file: !202, line: 129, baseType: !242, size: 64, offset: 1408)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !244, line: 103, flags: DIFlagFwdDecl)
!244 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!245 = !{!246}
!246 = !DILocalVariable(name: "cs", arg: 1, scope: !197, file: !3, line: 101, type: !200)
!247 = !DILocation(line: 101, column: 48, scope: !197)
!248 = !DILocation(line: 103, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !197, file: !3, line: 103, column: 6)
!250 = !DILocation(line: 103, column: 10, scope: !249)
!251 = !DILocation(line: 103, column: 26, scope: !249)
!252 = !DILocation(line: 103, column: 6, scope: !197)
!253 = !DILocation(line: 104, column: 3, scope: !249)
!254 = !DILocation(line: 106, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !197, file: !3, line: 106, column: 6)
!256 = !DILocation(line: 106, column: 10, scope: !255)
!257 = !DILocation(line: 106, column: 15, scope: !255)
!258 = !DILocation(line: 106, column: 6, scope: !197)
!259 = !DILocation(line: 107, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 107, column: 3)
!261 = distinct !DILexicalBlock(scope: !255, file: !3, line: 106, column: 40)
!262 = !DILocation(line: 107, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 107, column: 3)
!264 = !DILocation(line: 109, column: 3, scope: !261)
!265 = !DILocation(line: 109, column: 7, scope: !261)
!266 = !DILocation(line: 109, column: 23, scope: !261)
!267 = !DILocation(line: 110, column: 2, scope: !261)
!268 = !DILocation(line: 111, column: 1, scope: !197)
!269 = !DISubprogram(name: "_printk", scope: !270, file: !270, line: 153, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!271 = !DISubroutineType(types: !272)
!272 = !{!34, !37, null}
!273 = distinct !DISubprogram(name: "request_irq", scope: !274, file: !274, line: 165, type: !275, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!274 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!275 = !DISubroutineType(types: !276)
!276 = !{!34, !7, !277, !36, !37, !33}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !274, line: 100, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !34, !33}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !22, line: 17, baseType: !21)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DILocalVariable(name: "irq", arg: 1, scope: !273, file: !274, line: 165, type: !7)
!284 = !DILocalVariable(name: "handler", arg: 2, scope: !273, file: !274, line: 165, type: !277)
!285 = !DILocalVariable(name: "flags", arg: 3, scope: !273, file: !274, line: 165, type: !36)
!286 = !DILocalVariable(name: "name", arg: 4, scope: !273, file: !274, line: 166, type: !37)
!287 = !DILocalVariable(name: "dev", arg: 5, scope: !273, file: !274, line: 166, type: !33)
!288 = !DILocation(line: 165, column: 26, scope: !273)
!289 = !DILocation(line: 165, column: 45, scope: !273)
!290 = !DILocation(line: 165, column: 68, scope: !273)
!291 = !DILocation(line: 166, column: 18, scope: !273)
!292 = !DILocation(line: 166, column: 30, scope: !273)
!293 = !DILocation(line: 168, column: 30, scope: !273)
!294 = !DILocation(line: 168, column: 35, scope: !273)
!295 = !DILocation(line: 168, column: 50, scope: !273)
!296 = !DILocation(line: 168, column: 57, scope: !273)
!297 = !DILocation(line: 168, column: 63, scope: !273)
!298 = !DILocation(line: 168, column: 9, scope: !273)
!299 = !DILocation(line: 168, column: 2, scope: !273)
!300 = distinct !DISubprogram(name: "timer_interrupt", scope: !3, file: !3, line: 37, type: !279, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!301 = !{!302, !303}
!302 = !DILocalVariable(name: "irq", arg: 1, scope: !300, file: !3, line: 37, type: !34)
!303 = !DILocalVariable(name: "dev_id", arg: 2, scope: !300, file: !3, line: 37, type: !33)
!304 = !DILocation(line: 37, column: 40, scope: !300)
!305 = !DILocation(line: 37, column: 51, scope: !300)
!306 = !DILocation(line: 39, column: 2, scope: !300)
!307 = !DILocation(line: 39, column: 22, scope: !300)
!308 = !DILocation(line: 39, column: 36, scope: !300)
!309 = !DILocation(line: 40, column: 2, scope: !300)
!310 = !DISubprogram(name: "request_threaded_irq", scope: !274, file: !274, line: 147, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!34, !7, !277, !277, !36, !37, !33}
!313 = !DISubprogram(name: "tsc_init", scope: !314, file: !314, line: 34, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DIFile(filename: "./arch/x86/include/asm/tsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c263a7d672afe42de3ea9a5e4b53aa46")
!315 = distinct !DISubprogram(name: "arch_test_bit", scope: !316, file: !316, line: 237, type: !317, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!316 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!317 = !DISubroutineType(types: !318)
!318 = !{!163, !36, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!322 = !{!323, !324}
!323 = !DILocalVariable(name: "nr", arg: 1, scope: !315, file: !316, line: 237, type: !36)
!324 = !DILocalVariable(name: "addr", arg: 2, scope: !315, file: !316, line: 237, type: !319)
!325 = !DILocation(line: 237, column: 29, scope: !315)
!326 = !DILocation(line: 237, column: 63, scope: !315)
!327 = !DILocation(line: 239, column: 30, scope: !315)
!328 = !DILocation(line: 239, column: 9, scope: !315)
!329 = !DILocation(line: 239, column: 54, scope: !315)
!330 = !DILocation(line: 239, column: 58, scope: !315)
!331 = !DILocation(line: 239, column: 36, scope: !315)
!332 = !DILocation(line: 240, column: 26, scope: !315)
!333 = !DILocation(line: 240, column: 30, scope: !315)
!334 = !DILocation(line: 240, column: 8, scope: !315)
!335 = !DILocation(line: 239, column: 2, scope: !315)
!336 = distinct !DISubprogram(name: "_static_cpu_has", scope: !337, file: !337, line: 173, type: !338, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!337 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!338 = !DISubroutineType(types: !339)
!339 = !{!163, !93}
!340 = !{!341, !342, !343}
!341 = !DILocalVariable(name: "bit", arg: 1, scope: !336, file: !337, line: 173, type: !93)
!342 = !DILabel(scope: !336, name: "t_yes", file: !337, line: 187)
!343 = !DILabel(scope: !336, name: "t_no", file: !337, line: 189)
!344 = !DILocation(line: 173, column: 49, scope: !336)
!345 = !DILocation(line: 183, column: 24, scope: !336)
!346 = !DILocation(line: 184, column: 30, scope: !336)
!347 = !DILocation(line: 184, column: 34, scope: !336)
!348 = !DILocation(line: 184, column: 26, scope: !336)
!349 = !DILocation(line: 185, column: 70, scope: !336)
!350 = !DILocation(line: 185, column: 74, scope: !336)
!351 = !DILocation(line: 185, column: 25, scope: !336)
!352 = !DILocation(line: 175, column: 2, scope: !336)
!353 = !{i64 2149312384, i64 2149312417, i64 2149312423, i64 2149312439, i64 2149312458, i64 2149312489, i64 2149313442, i64 2149312031, i64 2149313448, i64 2149313496, i64 2149313560, i64 2149313624, i64 2149313681, i64 2149313888, i64 2149313936, i64 2149314000, i64 2149314064, i64 2149314121, i64 2149312149, i64 2149312174, i64 2149314331, i64 2149314459, i64 2149314392, i64 2149314473, i64 2149314487, i64 2149314603, i64 2149314548, i64 2149314617, i64 2149312308, i64 1826805, i64 1826845, i64 1826854, i64 1826904, i64 1826925, i64 1826945}
!354 = !DILocation(line: 187, column: 1, scope: !336)
!355 = !DILocation(line: 188, column: 2, scope: !336)
!356 = !DILocation(line: 189, column: 1, scope: !336)
!357 = !DILocation(line: 190, column: 2, scope: !336)
!358 = !DILocation(line: 191, column: 1, scope: !336)
!359 = !DISubprogram(name: "use_tpause_delay", scope: !360, file: !360, line: 9, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIFile(filename: "./arch/x86/include/asm/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1669c2cc60c632f0c76a6da415ad94bc")
!361 = distinct !DISubprogram(name: "constant_test_bit", scope: !316, file: !316, line: 204, type: !362, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!362 = !DISubroutineType(types: !363)
!363 = !{!163, !364, !319}
!364 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!365 = !{!366, !367}
!366 = !DILocalVariable(name: "nr", arg: 1, scope: !361, file: !316, line: 204, type: !364)
!367 = !DILocalVariable(name: "addr", arg: 2, scope: !361, file: !316, line: 204, type: !319)
!368 = !DILocation(line: 204, column: 52, scope: !361)
!369 = !DILocation(line: 204, column: 86, scope: !361)
!370 = !DILocation(line: 206, column: 19, scope: !361)
!371 = !DILocation(line: 206, column: 22, scope: !361)
!372 = !DILocation(line: 206, column: 15, scope: !361)
!373 = !DILocation(line: 207, column: 4, scope: !361)
!374 = !DILocation(line: 207, column: 9, scope: !361)
!375 = !DILocation(line: 207, column: 12, scope: !361)
!376 = !DILocation(line: 206, column: 44, scope: !361)
!377 = !DILocation(line: 207, column: 37, scope: !361)
!378 = !DILocation(line: 206, column: 2, scope: !361)
!379 = distinct !DISubprogram(name: "variable_test_bit", scope: !316, file: !316, line: 224, type: !362, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(name: "nr", arg: 1, scope: !379, file: !316, line: 224, type: !364)
!382 = !DILocalVariable(name: "addr", arg: 2, scope: !379, file: !316, line: 224, type: !319)
!383 = !DILocalVariable(name: "oldbit", scope: !379, file: !316, line: 226, type: !163)
!384 = !DILocation(line: 224, column: 52, scope: !379)
!385 = !DILocation(line: 224, column: 86, scope: !379)
!386 = !DILocation(line: 226, column: 2, scope: !379)
!387 = !DILocation(line: 226, column: 7, scope: !379)
!388 = !DILocation(line: 231, column: 33, scope: !379)
!389 = !DILocation(line: 231, column: 46, scope: !379)
!390 = !DILocation(line: 228, column: 2, scope: !379)
!391 = !{i64 2148212800, i64 2148212874}
!392 = !DILocation(line: 233, column: 9, scope: !379)
!393 = !{i8 0, i8 2}
!394 = !{}
!395 = !DILocation(line: 234, column: 1, scope: !379)
!396 = !DILocation(line: 233, column: 2, scope: !379)
