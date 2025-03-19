; ModuleID = 'arch/x86/kernel/callthunks.c'
source_filename = "arch/x86/kernel/callthunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".pushsection .rodata\09\09\09\09"
module asm ".global skl_call_thunk_template\09\09"
module asm "skl_call_thunk_template:\09\09\09"
module asm "sarq $5, %gs:pcpu_hot + 16;\09"
module asm ".global skl_call_thunk_tail\09\09\09"
module asm "skl_call_thunk_tail:\09\09\09\09"
module asm ".popsection\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.paravirt_patch_site = type { ptr, i8, i8 }
%struct.callthunk_sites = type { ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.core_text = type { i64, i64, ptr }
%struct.static_call_key = type { ptr, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.17, %union.anon.18, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon.16, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { %struct.insn_field }
%union.anon.18 = type { %struct.insn_field }
%struct.anon.19 = type <{ i8, i32 }>

@__setup_str_debug_thunks = internal constant [17 x i8] c"debug-callthunks\00", section ".init.rodata", align 1, !dbg !0
@__setup_debug_thunks = internal global %struct.obs_kernel_param { ptr @__setup_str_debug_thunks, ptr @debug_thunks, i32 0 }, section ".init.setup", align 8, !dbg !124
@__call_sites = external dso_local global [0 x i32], align 4
@__call_sites_end = external dso_local global [0 x i32], align 4
@__parainstructions = external dso_local global [0 x %struct.paravirt_patch_site], align 8
@__parainstructions_end = external dso_local global [0 x %struct.paravirt_patch_site], align 8
@__const.callthunks_patch_builtin_calls.cs = private unnamed_addr constant %struct.callthunk_sites { ptr @__call_sites, ptr @__call_sites_end, ptr @__parainstructions, ptr @__parainstructions_end }, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [46 x i8] c"\016callthunks: Setting up call depth tracking\0A\00", align 1, !dbg !136
@text_mutex = external dso_local global %struct.mutex, align 8
@builtin_coretext = internal constant %struct.core_text { i64 ptrtoint (ptr @_text to i64), i64 ptrtoint (ptr @_etext to i64), ptr @.str.6 }, align 8, !dbg !179
@thunks_initialized = internal global i8 0, section ".data..ro_after_init", align 1, !dbg !141
@debug_callthunks = internal global i32 0, align 4, !dbg !146
@.str.1 = private unnamed_addr constant [38 x i8] c"\017callthunks: Patching call sites %s\0A\00", align 1, !dbg !148
@.str.2 = private unnamed_addr constant [42 x i8] c"\017callthunks: Patching call sites done%s\0A\00", align 1, !dbg !153
@.str.3 = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/callthunks.c\00", align 1, !dbg !158
@.str.4 = private unnamed_addr constant [57 x i8] c"\017callthunks: Patch call at: %pS %px to %pS %px -> %px \0A\00", align 1, !dbg !163
@.str.5 = private unnamed_addr constant [37 x i8] c"arch/x86/include/asm/text-patching.h\00", align 1, !dbg !168
@_text = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1, !dbg !174
@within_module_coretext.__UNIQUE_ID___addressable___SCK__preempt_schedule495 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !187
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@skl_call_thunk_tail = external dso_local global [0 x i8], align 1
@skl_call_thunk_template = external dso_local global [0 x i8], align 1
@nops = internal constant [32 x i8] c"\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90", align 16, !dbg !4165
@patch_dest.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4141
@.str.7 = private unnamed_addr constant [44 x i8] c"\014callthunks: Invalid padding area for %pS\0A\00", align 1, !dbg !4160
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_debug_thunks, ptr @within_module_coretext.__UNIQUE_ID___addressable___SCK__preempt_schedule495], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @debug_thunks(ptr noundef %str) #0 section ".init.text" align 16 !dbg !4182 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  store i32 1, ptr @debug_callthunks, align 4, !dbg !4186
  ret i32 1, !dbg !4187
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @callthunks_patch_builtin_calls() #0 section ".init.text" align 16 !dbg !4188 {
entry:
  %cs = alloca %struct.callthunk_sites, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr %cs) #15, !dbg !4205
  call void @llvm.dbg.declare(metadata ptr %cs, metadata !4190, metadata !DIExpression()), !dbg !4206
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cs, ptr align 8 @__const.callthunks_patch_builtin_calls.cs, i64 32, i1 false), !dbg !4206
  br i1 false, label %cond.true, label %cond.false, !dbg !4207

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4208

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4207

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4208

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4208

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 371, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #16, !dbg !4208
  br i1 %call, label %if.end, label %if.then, !dbg !4208

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 371) #16, !dbg !4208
  br i1 %call5, label %if.end, label %if.then, !dbg !4207

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4210

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !4211

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !4213

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4213

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #17, !dbg !4211
  store i32 %call6, ptr %tmp, align 4, !dbg !4213
  %0 = load i32, ptr %tmp, align 4, !dbg !4211
  call void @mutex_lock(ptr noundef @text_mutex) #16, !dbg !4215
  call void @callthunks_setup(ptr noundef %cs, ptr noundef @builtin_coretext) #16, !dbg !4216
  store i8 1, ptr @thunks_initialized, align 1, !dbg !4217
  call void @mutex_unlock(ptr noundef @text_mutex) #16, !dbg !4218
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4219
  br label %cleanup, !dbg !4219

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %cs) #15, !dbg !4219
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4219

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4220 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4228, metadata !DIExpression()), !dbg !4230
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4229, metadata !DIExpression()), !dbg !4231
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4232
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4233
  br i1 %1, label %cond.true, label %cond.false, !dbg !4233

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4234
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4235
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !4236
  %conv = zext i1 %call to i32, !dbg !4236
  br label %cond.end, !dbg !4233

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4237
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4238
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !4239
  %conv2 = zext i1 %call1 to i32, !dbg !4239
  br label %cond.end, !dbg !4233

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4233
  %tobool = icmp ne i32 %cond, 0, !dbg !4233
  ret i1 %tobool, !dbg !4240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !4241 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !4246, metadata !DIExpression()), !dbg !4249
  %0 = load i16, ptr %bit.addr, align 2, !dbg !4250
  %1 = load i16, ptr %bit.addr, align 2, !dbg !4251
  %conv = zext i16 %1 to i32, !dbg !4251
  %and = and i32 %conv, 7, !dbg !4252
  %shl = shl i32 1, %and, !dbg !4253
  %2 = load i16, ptr %bit.addr, align 2, !dbg !4254
  %conv1 = zext i16 %2 to i32, !dbg !4254
  %shr = ashr i32 %conv1, 3, !dbg !4255
  %idxprom = sext i32 %shr to i64, !dbg !4256
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !4256
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #15
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !4257, !srcloc !4258

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !4257

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !4247), !dbg !4259
  store i1 true, ptr %retval, align 1, !dbg !4260
  br label %return, !dbg !4260

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !4248), !dbg !4261
  store i1 false, ptr %retval, align 1, !dbg !4262
  br label %return, !dbg !4262

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !4263
  ret i1 %3, !dbg !4263
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4264 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4268 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @callthunks_setup(ptr noundef %cs, ptr noundef %ct) #7 align 16 !dbg !4272 {
entry:
  %cs.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !4278, metadata !DIExpression()), !dbg !4280
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !4279, metadata !DIExpression()), !dbg !4281
  br label %do.body, !dbg !4282

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug_callthunks, align 4, !dbg !4283
  %tobool = icmp ne i32 %0, 0, !dbg !4283
  br i1 %tobool, label %if.then, label %if.end, !dbg !4286

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !4287

do.body1:                                         ; preds = %if.then
  br label %do.end, !dbg !4289

do.end:                                           ; preds = %do.body1
  %1 = load ptr, ptr %ct.addr, align 8, !dbg !4287
  %name = getelementptr inbounds %struct.core_text, ptr %1, i32 0, i32 2, !dbg !4287
  %2 = load ptr, ptr %name, align 8, !dbg !4287
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %2) #17, !dbg !4287
  store i32 %call, ptr %tmp, align 4, !dbg !4289
  %3 = load i32, ptr %tmp, align 4, !dbg !4287
  br label %if.end, !dbg !4283

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end2, !dbg !4286

do.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %cs.addr, align 8, !dbg !4291
  %call_start = getelementptr inbounds %struct.callthunk_sites, ptr %4, i32 0, i32 0, !dbg !4292
  %5 = load ptr, ptr %call_start, align 8, !dbg !4292
  %6 = load ptr, ptr %cs.addr, align 8, !dbg !4293
  %call_end = getelementptr inbounds %struct.callthunk_sites, ptr %6, i32 0, i32 1, !dbg !4294
  %7 = load ptr, ptr %call_end, align 8, !dbg !4294
  %8 = load ptr, ptr %ct.addr, align 8, !dbg !4295
  call void @patch_call_sites(ptr noundef %5, ptr noundef %7, ptr noundef %8) #16, !dbg !4296
  %9 = load ptr, ptr %cs.addr, align 8, !dbg !4297
  %pv_start = getelementptr inbounds %struct.callthunk_sites, ptr %9, i32 0, i32 2, !dbg !4298
  %10 = load ptr, ptr %pv_start, align 8, !dbg !4298
  %11 = load ptr, ptr %cs.addr, align 8, !dbg !4299
  %pv_end = getelementptr inbounds %struct.callthunk_sites, ptr %11, i32 0, i32 3, !dbg !4300
  %12 = load ptr, ptr %pv_end, align 8, !dbg !4300
  %13 = load ptr, ptr %ct.addr, align 8, !dbg !4301
  call void @patch_paravirt_call_sites(ptr noundef %10, ptr noundef %12, ptr noundef %13) #16, !dbg !4302
  br label %do.body3, !dbg !4303

do.body3:                                         ; preds = %do.end2
  %14 = load i32, ptr @debug_callthunks, align 4, !dbg !4304
  %tobool4 = icmp ne i32 %14, 0, !dbg !4304
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !4307

if.then5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !4308

do.body6:                                         ; preds = %if.then5
  br label %do.end7, !dbg !4310

do.end7:                                          ; preds = %do.body6
  %15 = load ptr, ptr %ct.addr, align 8, !dbg !4308
  %name9 = getelementptr inbounds %struct.core_text, ptr %15, i32 0, i32 2, !dbg !4308
  %16 = load ptr, ptr %name9, align 8, !dbg !4308
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %16) #17, !dbg !4308
  store i32 %call10, ptr %tmp8, align 4, !dbg !4310
  %17 = load i32, ptr %tmp8, align 4, !dbg !4308
  br label %if.end11, !dbg !4304

if.end11:                                         ; preds = %do.end7, %do.body3
  br label %do.end12, !dbg !4307

do.end12:                                         ; preds = %if.end11
  ret void, !dbg !4312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4313 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @callthunks_translate_call_dest(ptr noundef %dest) #7 align 16 !dbg !4314 {
entry:
  %retval = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %target = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !4318, metadata !DIExpression()), !dbg !4320
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #15, !dbg !4321
  call void @llvm.dbg.declare(metadata ptr %target, metadata !4319, metadata !DIExpression()), !dbg !4322
  br label %do.body, !dbg !4323

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4324

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4324

do.end:                                           ; preds = %do.cond
  %0 = load i8, ptr @thunks_initialized, align 1, !dbg !4326, !range !4328, !noundef !573
  %tobool = trunc i8 %0 to i1, !dbg !4326
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4329

lor.lhs.false:                                    ; preds = %do.end
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !4330
  %call = call zeroext i1 @skip_addr(ptr noundef %1) #16, !dbg !4331
  br i1 %call, label %if.then, label %if.end, !dbg !4332

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !4333
  store ptr %2, ptr %retval, align 8, !dbg !4334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4334

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !4335
  %call1 = call zeroext i1 @is_coretext(ptr noundef null, ptr noundef %3) #16, !dbg !4337
  br i1 %call1, label %if.end3, label %if.then2, !dbg !4338

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !4339
  store ptr %4, ptr %retval, align 8, !dbg !4340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4340

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !4341
  %call4 = call ptr @patch_dest(ptr noundef %5, i1 noundef zeroext false) #16, !dbg !4342
  store ptr %call4, ptr %target, align 8, !dbg !4343
  %6 = load ptr, ptr %target, align 8, !dbg !4344
  %tobool5 = icmp ne ptr %6, null, !dbg !4344
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !4344

cond.true:                                        ; preds = %if.end3
  br label %cond.end, !dbg !4344

cond.false:                                       ; preds = %if.end3
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !4345
  br label %cond.end, !dbg !4344

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %7, %cond.false ], !dbg !4344
  store ptr %cond, ptr %retval, align 8, !dbg !4346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4346

cleanup:                                          ; preds = %cond.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #15, !dbg !4347
  %8 = load ptr, ptr %retval, align 8, !dbg !4347
  ret ptr %8, !dbg !4347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @skip_addr(ptr noundef %dest) #7 align 16 !dbg !4348 {
entry:
  %retval = alloca i1, align 1
  %dest.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !4352
  %cmp = icmp eq ptr %0, @error_entry, !dbg !4354
  br i1 %cmp, label %if.then, label %if.end, !dbg !4355

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4356
  br label %return, !dbg !4356

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !4357
  %cmp1 = icmp eq ptr %1, @paranoid_entry, !dbg !4359
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4360

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4361
  br label %return, !dbg !4361

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !4362
  %cmp4 = icmp eq ptr %2, @xen_error_entry, !dbg !4364
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4365

if.then5:                                         ; preds = %if.end3
  store i1 true, ptr %retval, align 1, !dbg !4366
  br label %return, !dbg !4366

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !4367
  %cmp7 = icmp eq ptr %3, @__switch_to_asm, !dbg !4369
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4370

if.then8:                                         ; preds = %if.end6
  store i1 true, ptr %retval, align 1, !dbg !4371
  br label %return, !dbg !4371

if.end9:                                          ; preds = %if.end6
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !4372
  %cmp10 = icmp eq ptr %4, @ret_from_fork, !dbg !4374
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4375

if.then11:                                        ; preds = %if.end9
  store i1 true, ptr %retval, align 1, !dbg !4376
  br label %return, !dbg !4376

if.end12:                                         ; preds = %if.end9
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !4377
  %cmp13 = icmp uge ptr %5, @relocate_kernel, !dbg !4379
  br i1 %cmp13, label %land.lhs.true, label %if.end16, !dbg !4380

land.lhs.true:                                    ; preds = %if.end12
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !4381
  %cmp14 = icmp ult ptr %6, getelementptr (i8, ptr @relocate_kernel, i64 2048), !dbg !4382
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4383

if.then15:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !4384
  br label %return, !dbg !4384

if.end16:                                         ; preds = %land.lhs.true, %if.end12
  store i1 false, ptr %retval, align 1, !dbg !4385
  br label %return, !dbg !4385

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !4386
  ret i1 %7, !dbg !4386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_coretext(ptr noundef %ct, ptr noundef %addr) #7 align 16 !dbg !4387 {
entry:
  %retval = alloca i1, align 1
  %ct.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !4391, metadata !DIExpression()), !dbg !4393
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4392, metadata !DIExpression()), !dbg !4394
  %0 = load ptr, ptr %ct.addr, align 8, !dbg !4395
  %tobool = icmp ne ptr %0, null, !dbg !4395
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4397

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %ct.addr, align 8, !dbg !4398
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4399
  %call = call zeroext i1 @within_coretext(ptr noundef %1, ptr noundef %2) #16, !dbg !4400
  br i1 %call, label %if.then, label %if.end, !dbg !4401

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !4402
  br label %return, !dbg !4402

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4403
  %call1 = call zeroext i1 @within_coretext(ptr noundef @builtin_coretext, ptr noundef %3) #16, !dbg !4405
  br i1 %call1, label %if.then2, label %if.end3, !dbg !4406

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4407
  br label %return, !dbg !4407

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !4408
  %call4 = call zeroext i1 @within_module_coretext(ptr noundef %4) #16, !dbg !4409
  store i1 %call4, ptr %retval, align 1, !dbg !4410
  br label %return, !dbg !4410

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !4411
  ret i1 %5, !dbg !4411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @patch_dest(ptr noundef %dest, i1 noundef zeroext %direct) #7 align 16 !dbg !4143 {
entry:
  %retval = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %direct.addr = alloca i8, align 1
  %tsize = alloca i32, align 4
  %pad = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !4147, metadata !DIExpression()), !dbg !4412
  %frombool = zext i1 %direct to i8
  store i8 %frombool, ptr %direct.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %direct.addr, metadata !4148, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 4, ptr %tsize) #15, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %tsize, metadata !4149, metadata !DIExpression()), !dbg !4415
  store i32 trunc (i64 sub (i64 ptrtoint (ptr @skl_call_thunk_tail to i64), i64 ptrtoint (ptr @skl_call_thunk_template to i64)) to i32), ptr %tsize, align 4, !dbg !4415
  call void @llvm.lifetime.start.p0(i64 8, ptr %pad) #15, !dbg !4416
  call void @llvm.dbg.declare(metadata ptr %pad, metadata !4150, metadata !DIExpression()), !dbg !4417
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !4418
  %1 = load i32, ptr %tsize, align 4, !dbg !4419
  %idx.ext = zext i32 %1 to i64, !dbg !4420
  %idx.neg = sub i64 0, %idx.ext, !dbg !4420
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.neg, !dbg !4420
  store ptr %add.ptr, ptr %pad, align 8, !dbg !4417
  %2 = load ptr, ptr %pad, align 8, !dbg !4421
  %3 = load i32, ptr %tsize, align 4, !dbg !4423
  %conv = zext i32 %3 to i64, !dbg !4423
  %call = call i32 @bcmp(ptr noundef %2, ptr noundef @skl_call_thunk_template, i64 noundef %conv) #16, !dbg !4424
  %tobool = icmp ne i32 %call, 0, !dbg !4424
  br i1 %tobool, label %if.end, label %if.then, !dbg !4425

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pad, align 8, !dbg !4426
  store ptr %4, ptr %retval, align 8, !dbg !4427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4427

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pad, align 8, !dbg !4428
  %6 = load i32, ptr %tsize, align 4, !dbg !4429
  %conv1 = zext i32 %6 to i64, !dbg !4429
  %call2 = call i32 @bcmp(ptr noundef %5, ptr noundef @nops, i64 noundef %conv1) #16, !dbg !4430
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4430
  br i1 %tobool3, label %if.then4, label %if.end38, !dbg !4431

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !4432
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4152, metadata !DIExpression()), !dbg !4432
  store i8 1, ptr %__ret_do_once, align 1, !dbg !4432
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4156, metadata !DIExpression()), !dbg !4433
  %7 = load i8, ptr %__ret_do_once, align 1, !dbg !4433, !range !4328, !noundef !573
  %tobool5 = trunc i8 %7 to i1, !dbg !4433
  %lnot = xor i1 %tobool5, true, !dbg !4433
  %lnot6 = xor i1 %lnot, true, !dbg !4433
  %frombool7 = zext i1 %lnot6 to i8, !dbg !4433
  store i8 %frombool7, ptr %__ret_cond, align 1, !dbg !4433
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4159, metadata !DIExpression()), !dbg !4433
  store i8 0, ptr %__ret_once, align 1, !dbg !4433
  %8 = load i8, ptr %__ret_cond, align 1, !dbg !4434, !range !4328, !noundef !573
  %tobool8 = trunc i8 %8 to i1, !dbg !4434
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !4434

land.rhs:                                         ; preds = %if.then4
  %9 = load i8, ptr @patch_dest.__already_done, align 1, !dbg !4434, !range !4328, !noundef !573
  %tobool10 = trunc i8 %9 to i1, !dbg !4434
  %lnot11 = xor i1 %tobool10, true, !dbg !4434
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then4
  %10 = phi i1 [ false, %if.then4 ], [ %lnot11, %land.rhs ], !dbg !4436
  %lnot12 = xor i1 %10, true, !dbg !4434
  %lnot13 = xor i1 %lnot12, true, !dbg !4434
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4434
  %conv14 = sext i32 %lnot.ext to i64, !dbg !4434
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !4434
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4434
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4433

if.then16:                                        ; preds = %land.end
  store i8 1, ptr @patch_dest.__already_done, align 1, !dbg !4437
  store i8 1, ptr %__ret_once, align 1, !dbg !4437
  br label %if.end17, !dbg !4437

if.end17:                                         ; preds = %if.then16, %land.end
  %11 = load i8, ptr %__ret_once, align 1, !dbg !4433, !range !4328, !noundef !573
  %tobool18 = trunc i8 %11 to i1, !dbg !4433
  %lnot19 = xor i1 %tobool18, true, !dbg !4433
  %lnot21 = xor i1 %lnot19, true, !dbg !4433
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4433
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4433
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4433
  store i64 %expval24, ptr %tmp, align 8, !dbg !4434
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !4439
  %12 = load i64, ptr %tmp, align 8, !dbg !4433
  %tobool25 = icmp ne i64 %12, 0, !dbg !4439
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !4432

if.then26:                                        ; preds = %if.end17
  br label %do.body, !dbg !4440

do.body:                                          ; preds = %if.then26
  br label %do.cond, !dbg !4442

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4442

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %dest.addr, align 8, !dbg !4440
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef %13) #17, !dbg !4440
  store i32 %call28, ptr %tmp27, align 4, !dbg !4442
  %14 = load i32, ptr %tmp27, align 4, !dbg !4440
  br label %if.end29, !dbg !4439

if.end29:                                         ; preds = %do.end, %if.end17
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !4432, !range !4328, !noundef !573
  %tobool31 = trunc i8 %15 to i1, !dbg !4432
  %lnot32 = xor i1 %tobool31, true, !dbg !4432
  %lnot34 = xor i1 %lnot32, true, !dbg !4432
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !4432
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !4432
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !4432
  store i64 %expval37, ptr %tmp30, align 8, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !4444
  %16 = load i64, ptr %tmp30, align 8, !dbg !4432
  store ptr null, ptr %retval, align 8, !dbg !4445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4445

if.end38:                                         ; preds = %if.end
  %17 = load i8, ptr %direct.addr, align 1, !dbg !4446, !range !4328, !noundef !573
  %tobool39 = trunc i8 %17 to i1, !dbg !4446
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !4448

if.then40:                                        ; preds = %if.end38
  %18 = load ptr, ptr %pad, align 8, !dbg !4449
  %19 = load i32, ptr %tsize, align 4, !dbg !4450
  %conv41 = zext i32 %19 to i64, !dbg !4450
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 @skl_call_thunk_template, i64 %conv41, i1 false), !dbg !4451
  br label %if.end44, !dbg !4451

if.else:                                          ; preds = %if.end38
  %20 = load ptr, ptr %pad, align 8, !dbg !4452
  %21 = load i32, ptr %tsize, align 4, !dbg !4453
  %conv42 = zext i32 %21 to i64, !dbg !4453
  %call43 = call ptr @text_poke_copy_locked(ptr noundef %20, ptr noundef @skl_call_thunk_template, i64 noundef %conv42, i1 noundef zeroext true) #16, !dbg !4454
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then40
  %22 = load ptr, ptr %pad, align 8, !dbg !4455
  store ptr %22, ptr %retval, align 8, !dbg !4456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4456

cleanup:                                          ; preds = %if.end44, %if.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pad) #15, !dbg !4457
  call void @llvm.lifetime.end.p0(i64 4, ptr %tsize) #15, !dbg !4457
  %23 = load ptr, ptr %retval, align 8, !dbg !4457
  ret ptr %23, !dbg !4457
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @callthunks_patch_module_calls(ptr noundef %cs, ptr noundef %mod) #8 align 16 !dbg !4458 {
entry:
  %cs.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %ct = alloca %struct.core_text, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !4462, metadata !DIExpression()), !dbg !4465
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.lifetime.start.p0(i64 24, ptr %ct) #15, !dbg !4467
  call void @llvm.dbg.declare(metadata ptr %ct, metadata !4464, metadata !DIExpression()), !dbg !4468
  %base = getelementptr inbounds %struct.core_text, ptr %ct, i32 0, i32 0, !dbg !4469
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4470
  %mem = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 22, !dbg !4471
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 0, !dbg !4470
  %base1 = getelementptr inbounds %struct.module_memory, ptr %arrayidx, i32 0, i32 0, !dbg !4472
  %1 = load ptr, ptr %base1, align 64, !dbg !4472
  %2 = ptrtoint ptr %1 to i64, !dbg !4473
  store i64 %2, ptr %base, align 8, !dbg !4469
  %end = getelementptr inbounds %struct.core_text, ptr %ct, i32 0, i32 1, !dbg !4469
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !4474
  %mem2 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 22, !dbg !4475
  %arrayidx3 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 0, !dbg !4474
  %base4 = getelementptr inbounds %struct.module_memory, ptr %arrayidx3, i32 0, i32 0, !dbg !4476
  %4 = load ptr, ptr %base4, align 64, !dbg !4476
  %5 = ptrtoint ptr %4 to i64, !dbg !4477
  %6 = load ptr, ptr %mod.addr, align 8, !dbg !4478
  %mem5 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 22, !dbg !4479
  %arrayidx6 = getelementptr [7 x %struct.module_memory], ptr %mem5, i64 0, i64 0, !dbg !4478
  %size = getelementptr inbounds %struct.module_memory, ptr %arrayidx6, i32 0, i32 1, !dbg !4480
  %7 = load i32, ptr %size, align 8, !dbg !4480
  %conv = zext i32 %7 to i64, !dbg !4478
  %add = add i64 %5, %conv, !dbg !4481
  store i64 %add, ptr %end, align 8, !dbg !4469
  %name = getelementptr inbounds %struct.core_text, ptr %ct, i32 0, i32 2, !dbg !4469
  %8 = load ptr, ptr %mod.addr, align 8, !dbg !4482
  %name7 = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 2, !dbg !4483
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name7, i64 0, i64 0, !dbg !4482
  store ptr %arraydecay, ptr %name, align 8, !dbg !4469
  %9 = load i8, ptr @thunks_initialized, align 1, !dbg !4484, !range !4328, !noundef !573
  %tobool = trunc i8 %9 to i1, !dbg !4484
  br i1 %tobool, label %if.end, label %if.then, !dbg !4486

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4487

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @text_mutex) #16, !dbg !4488
  %10 = load ptr, ptr %cs.addr, align 8, !dbg !4489
  call void @callthunks_setup(ptr noundef %10, ptr noundef %ct) #16, !dbg !4490
  call void @mutex_unlock(ptr noundef @text_mutex) #16, !dbg !4491
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4492
  br label %cleanup, !dbg !4492

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ct) #15, !dbg !4492
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4492

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4493 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4497, metadata !DIExpression()), !dbg !4499
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4498, metadata !DIExpression()), !dbg !4500
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4501
  %and = and i64 %0, 63, !dbg !4502
  %shl = shl i64 1, %and, !dbg !4503
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4504
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4505
  %shr = ashr i64 %2, 6, !dbg !4506
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4504
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4504
  %and1 = and i64 %shl, %3, !dbg !4507
  %cmp = icmp ne i64 %and1, 0, !dbg !4508
  ret i1 %cmp, !dbg !4509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4510 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4512, metadata !DIExpression()), !dbg !4515
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4513, metadata !DIExpression()), !dbg !4516
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !4517
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4514, metadata !DIExpression()), !dbg !4518
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4519
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4520
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !4521, !srcloc !4522
  %3 = icmp ult i8 %2, 2, !dbg !4521
  call void @llvm.assume(i1 %3), !dbg !4521
  store i8 %2, ptr %oldbit, align 1, !dbg !4521
  %4 = load i8, ptr %oldbit, align 1, !dbg !4523, !range !4328, !noundef !573
  %tobool = trunc i8 %4 to i1, !dbg !4523
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !4524
  ret i1 %tobool, !dbg !4525
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @patch_call_sites(ptr noundef %start, ptr noundef %end, ptr noundef %ct) #7 align 16 !dbg !4526 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4530, metadata !DIExpression()), !dbg !4534
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4531, metadata !DIExpression()), !dbg !4535
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !4532, metadata !DIExpression()), !dbg !4536
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4533, metadata !DIExpression()), !dbg !4538
  %0 = load ptr, ptr %start.addr, align 8, !dbg !4539
  store ptr %0, ptr %s, align 8, !dbg !4541
  br label %for.cond, !dbg !4542

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %s, align 8, !dbg !4543
  %2 = load ptr, ptr %end.addr, align 8, !dbg !4545
  %cmp = icmp ult ptr %1, %2, !dbg !4546
  br i1 %cmp, label %for.body, label %for.end, !dbg !4547

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s, align 8, !dbg !4548
  %4 = load ptr, ptr %s, align 8, !dbg !4549
  %5 = load i32, ptr %4, align 4, !dbg !4550
  %idx.ext = sext i32 %5 to i64, !dbg !4551
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !4551
  %6 = load ptr, ptr %ct.addr, align 8, !dbg !4552
  call void @patch_call(ptr noundef %add.ptr, ptr noundef %6) #16, !dbg !4553
  br label %for.inc, !dbg !4553

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %s, align 8, !dbg !4554
  %incdec.ptr = getelementptr i32, ptr %7, i32 1, !dbg !4554
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !4554
  br label %for.cond, !dbg !4555, !llvm.loop !4556

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !4560
  ret void, !dbg !4560
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @patch_paravirt_call_sites(ptr noundef %start, ptr noundef %end, ptr noundef %ct) #7 align 16 !dbg !4561 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4565, metadata !DIExpression()), !dbg !4569
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4566, metadata !DIExpression()), !dbg !4570
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !4567, metadata !DIExpression()), !dbg !4571
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4572
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4568, metadata !DIExpression()), !dbg !4573
  %0 = load ptr, ptr %start.addr, align 8, !dbg !4574
  store ptr %0, ptr %p, align 8, !dbg !4576
  br label %for.cond, !dbg !4577

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4578
  %2 = load ptr, ptr %end.addr, align 8, !dbg !4580
  %cmp = icmp ult ptr %1, %2, !dbg !4581
  br i1 %cmp, label %for.body, label %for.end, !dbg !4582

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !dbg !4583
  %instr = getelementptr inbounds %struct.paravirt_patch_site, ptr %3, i32 0, i32 0, !dbg !4584
  %4 = load ptr, ptr %instr, align 8, !dbg !4584
  %5 = load ptr, ptr %ct.addr, align 8, !dbg !4585
  call void @patch_call(ptr noundef %4, ptr noundef %5) #16, !dbg !4586
  br label %for.inc, !dbg !4586

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8, !dbg !4587
  %incdec.ptr = getelementptr %struct.paravirt_patch_site, ptr %6, i32 1, !dbg !4587
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !4587
  br label %for.cond, !dbg !4588, !llvm.loop !4589

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4591
  ret void, !dbg !4591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @patch_call(ptr noundef %addr, ptr noundef %ct) #7 align 16 !dbg !4592 {
entry:
  %addr.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %pad = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %bytes = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp45 = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4596, metadata !DIExpression()), !dbg !4608
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !4597, metadata !DIExpression()), !dbg !4609
  call void @llvm.lifetime.start.p0(i64 8, ptr %pad) #15, !dbg !4610
  call void @llvm.dbg.declare(metadata ptr %pad, metadata !4598, metadata !DIExpression()), !dbg !4611
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #15, !dbg !4610
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !4599, metadata !DIExpression()), !dbg !4612
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !4613
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4600, metadata !DIExpression()), !dbg !4614
  %0 = load ptr, ptr %ct.addr, align 8, !dbg !4615
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4617
  %call = call zeroext i1 @within_coretext(ptr noundef %0, ptr noundef %1) #16, !dbg !4618
  br i1 %call, label %if.end, label %if.then, !dbg !4619

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4620

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4621
  %call1 = call ptr @call_get_dest(ptr noundef %2) #16, !dbg !4622
  store ptr %call1, ptr %dest, align 8, !dbg !4623
  %3 = load ptr, ptr %dest, align 8, !dbg !4624
  %tobool = icmp ne ptr %3, null, !dbg !4624
  br i1 %tobool, label %lor.lhs.false, label %if.then29, !dbg !4625

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4626
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4602, metadata !DIExpression()), !dbg !4626
  %4 = load ptr, ptr %dest, align 8, !dbg !4626
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !4626
  %lnot = xor i1 %call2, true, !dbg !4626
  %lnot3 = xor i1 %lnot, true, !dbg !4626
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4626
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4626
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4627
  %tobool4 = icmp ne i32 %5, 0, !dbg !4627
  %lnot5 = xor i1 %tobool4, true, !dbg !4627
  %lnot7 = xor i1 %lnot5, true, !dbg !4627
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4627
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4627
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4627
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4627
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !4626

if.then10:                                        ; preds = %lor.lhs.false
  br label %do.body, !dbg !4627

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4628
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4605, metadata !DIExpression()), !dbg !4628
  store i32 2307, ptr %__flags, align 4, !dbg !4628
  br label %do.body11, !dbg !4628

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !4629

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !4629

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !4628

do.body12:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !4631
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 210, i32 %6, i64 12) #15, !dbg !4631, !srcloc !4633
  br label %do.cond13, !dbg !4631

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4631

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4628

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4634

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4634

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4627
  br label %do.cond18, !dbg !4628

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4628

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !4628

if.end20:                                         ; preds = %do.end19, %lor.lhs.false
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4626
  %tobool21 = icmp ne i32 %7, 0, !dbg !4626
  %lnot22 = xor i1 %tobool21, true, !dbg !4626
  %lnot24 = xor i1 %lnot22, true, !dbg !4626
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4626
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4626
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4626
  store i64 %expval27, ptr %tmp, align 8, !dbg !4627
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4636
  %8 = load i64, ptr %tmp, align 8, !dbg !4626
  %tobool28 = icmp ne i64 %8, 0, !dbg !4636
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4637

if.then29:                                        ; preds = %if.end20, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4638

if.end30:                                         ; preds = %if.end20
  %9 = load ptr, ptr %ct.addr, align 8, !dbg !4639
  %10 = load ptr, ptr %dest, align 8, !dbg !4641
  %call31 = call zeroext i1 @is_coretext(ptr noundef %9, ptr noundef %10) #16, !dbg !4642
  br i1 %call31, label %if.end33, label %if.then32, !dbg !4643

if.then32:                                        ; preds = %if.end30
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4644

if.end33:                                         ; preds = %if.end30
  %11 = load ptr, ptr %dest, align 8, !dbg !4645
  %12 = load ptr, ptr %ct.addr, align 8, !dbg !4646
  %13 = load ptr, ptr %dest, align 8, !dbg !4647
  %call34 = call zeroext i1 @within_coretext(ptr noundef %12, ptr noundef %13) #16, !dbg !4648
  %call35 = call ptr @patch_dest(ptr noundef %11, i1 noundef zeroext %call34) #16, !dbg !4649
  store ptr %call35, ptr %pad, align 8, !dbg !4650
  %14 = load ptr, ptr %pad, align 8, !dbg !4651
  %tobool36 = icmp ne ptr %14, null, !dbg !4651
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !4653

if.then37:                                        ; preds = %if.end33
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4654

if.end38:                                         ; preds = %if.end33
  br label %do.body39, !dbg !4655

do.body39:                                        ; preds = %if.end38
  %15 = load i32, ptr @debug_callthunks, align 4, !dbg !4656
  %tobool40 = icmp ne i32 %15, 0, !dbg !4656
  br i1 %tobool40, label %if.then41, label %if.end47, !dbg !4659

if.then41:                                        ; preds = %do.body39
  br label %do.body42, !dbg !4660

do.body42:                                        ; preds = %if.then41
  br label %do.cond43, !dbg !4662

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4662

do.end44:                                         ; preds = %do.cond43
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4660
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !4660
  %18 = load ptr, ptr %dest, align 8, !dbg !4660
  %19 = load ptr, ptr %dest, align 8, !dbg !4660
  %20 = load ptr, ptr %pad, align 8, !dbg !4660
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #17, !dbg !4660
  store i32 %call46, ptr %tmp45, align 4, !dbg !4662
  %21 = load i32, ptr %tmp45, align 4, !dbg !4660
  br label %if.end47, !dbg !4656

if.end47:                                         ; preds = %do.end44, %do.body39
  br label %do.cond48, !dbg !4659

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !4659

do.end49:                                         ; preds = %do.cond48
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bytes, i64 0, i64 0, !dbg !4664
  %22 = load ptr, ptr %addr.addr, align 8, !dbg !4665
  %23 = load ptr, ptr %pad, align 8, !dbg !4666
  call void @__text_gen_insn(ptr noundef %arraydecay, i8 noundef zeroext -24, ptr noundef %22, ptr noundef %23, i32 noundef 5) #16, !dbg !4667
  %24 = load ptr, ptr %addr.addr, align 8, !dbg !4668
  %arraydecay50 = getelementptr inbounds [8 x i8], ptr %bytes, i64 0, i64 0, !dbg !4669
  call void @text_poke_early(ptr noundef %24, ptr noundef %arraydecay50, i64 noundef 5) #16, !dbg !4670
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4671
  br label %cleanup, !dbg !4671

cleanup:                                          ; preds = %do.end49, %if.then37, %if.then32, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !4671
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #15, !dbg !4671
  call void @llvm.lifetime.end.p0(i64 8, ptr %pad) #15, !dbg !4671
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4671

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_coretext(ptr noundef %ct, ptr noundef %addr) #11 align 16 !dbg !4672 {
entry:
  %ct.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca i64, align 8
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !4674, metadata !DIExpression()), !dbg !4677
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4675, metadata !DIExpression()), !dbg !4678
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4676, metadata !DIExpression()), !dbg !4680
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4681
  %1 = ptrtoint ptr %0 to i64, !dbg !4682
  store i64 %1, ptr %p, align 8, !dbg !4680
  %2 = load ptr, ptr %ct.addr, align 8, !dbg !4683
  %base = getelementptr inbounds %struct.core_text, ptr %2, i32 0, i32 0, !dbg !4684
  %3 = load i64, ptr %base, align 8, !dbg !4684
  %4 = load i64, ptr %p, align 8, !dbg !4685
  %cmp = icmp ule i64 %3, %4, !dbg !4686
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4687

land.rhs:                                         ; preds = %entry
  %5 = load i64, ptr %p, align 8, !dbg !4688
  %6 = load ptr, ptr %ct.addr, align 8, !dbg !4689
  %end = getelementptr inbounds %struct.core_text, ptr %6, i32 0, i32 1, !dbg !4690
  %7 = load i64, ptr %end, align 8, !dbg !4690
  %cmp1 = icmp ult i64 %5, %7, !dbg !4691
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4692
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4693
  ret i1 %8, !dbg !4694
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @call_get_dest(ptr noundef %addr) #7 align 16 !dbg !4695 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %insn = alloca %struct.insn, align 8
  %dest = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4697, metadata !DIExpression()), !dbg !4746
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #15, !dbg !4747
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !4698, metadata !DIExpression()), !dbg !4748
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #15, !dbg !4749
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !4744, metadata !DIExpression()), !dbg !4750
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4751
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4745, metadata !DIExpression()), !dbg !4752
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4753
  %call = call i32 @insn_decode(ptr noundef %insn, ptr noundef %0, i32 noundef 15, i32 noundef 2) #16, !dbg !4753
  store i32 %call, ptr %ret, align 4, !dbg !4754
  %1 = load i32, ptr %ret, align 4, !dbg !4755
  %tobool = icmp ne i32 %1, 0, !dbg !4755
  br i1 %tobool, label %if.then, label %if.end, !dbg !4757

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !4758
  %conv = sext i32 %2 to i64, !dbg !4758
  %call1 = call ptr @ERR_PTR(i64 noundef %conv) #16, !dbg !4759
  store ptr %call1, ptr %retval, align 8, !dbg !4760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4760

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 3, !dbg !4761
  %3 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !4763
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 0, !dbg !4764
  %4 = load i8, ptr %arrayidx, align 8, !dbg !4764
  %conv2 = zext i8 %4 to i32, !dbg !4764
  %cmp = icmp ne i32 %conv2, 232, !dbg !4765
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4766

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4767

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4768
  %length = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !4769
  %6 = load i8, ptr %length, align 2, !dbg !4769
  %conv6 = zext i8 %6 to i32, !dbg !4770
  %idx.ext = sext i32 %conv6 to i64, !dbg !4771
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.ext, !dbg !4771
  %7 = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 7, !dbg !4772
  %8 = getelementptr inbounds %struct.insn_field, ptr %7, i32 0, i32 0, !dbg !4773
  %9 = load i32, ptr %8, align 8, !dbg !4773
  %idx.ext7 = sext i32 %9 to i64, !dbg !4774
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i64 %idx.ext7, !dbg !4774
  store ptr %add.ptr8, ptr %dest, align 8, !dbg !4775
  %10 = load ptr, ptr %dest, align 8, !dbg !4776
  %call9 = call zeroext i1 @skip_addr(ptr noundef %10) #16, !dbg !4778
  br i1 %call9, label %if.then10, label %if.end11, !dbg !4779

if.then10:                                        ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !4780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4780

if.end11:                                         ; preds = %if.end5
  %11 = load ptr, ptr %dest, align 8, !dbg !4781
  store ptr %11, ptr %retval, align 8, !dbg !4782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4782

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4783
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #15, !dbg !4783
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #15, !dbg !4783
  %12 = load ptr, ptr %retval, align 8, !dbg !4783
  ret ptr %12, !dbg !4783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #11 align 16 !dbg !4784 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4791
  %1 = ptrtoint ptr %0 to i64, !dbg !4791
  %2 = inttoptr i64 %1 to ptr, !dbg !4791
  %3 = ptrtoint ptr %2 to i64, !dbg !4791
  %cmp = icmp uge i64 %3, -4095, !dbg !4791
  %lnot = xor i1 %cmp, true, !dbg !4791
  %lnot1 = xor i1 %lnot, true, !dbg !4791
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4791
  %conv = sext i32 %lnot.ext to i64, !dbg !4791
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4791
  %tobool = icmp ne i64 %expval, 0, !dbg !4791
  ret i1 %tobool, !dbg !4792
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__text_gen_insn(ptr noundef %buf, i8 noundef zeroext %opcode, ptr noundef %addr, ptr noundef %dest, i32 noundef %size) #4 align 16 !dbg !4793 {
entry:
  %buf.addr = alloca ptr, align 8
  %opcode.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %insn = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4797, metadata !DIExpression()), !dbg !4815
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !4798, metadata !DIExpression()), !dbg !4816
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4799, metadata !DIExpression()), !dbg !4817
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !4800, metadata !DIExpression()), !dbg !4818
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4801, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 8, ptr %insn) #15, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !4802, metadata !DIExpression()), !dbg !4821
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4822
  store ptr %0, ptr %insn, align 8, !dbg !4821
  br label %do.body, !dbg !4823

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4, !dbg !4824
  %2 = load i8, ptr %opcode.addr, align 1, !dbg !4824
  %call = call i32 @text_opcode_size(i8 noundef zeroext %2) #16, !dbg !4824
  %cmp = icmp slt i32 %1, %call, !dbg !4824
  %lnot = xor i1 %cmp, true, !dbg !4824
  %lnot1 = xor i1 %lnot, true, !dbg !4824
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4824
  %conv = sext i32 %lnot.ext to i64, !dbg !4824
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4824
  %tobool = icmp ne i64 %expval, 0, !dbg !4824
  br i1 %tobool, label %if.then, label %if.end, !dbg !4827

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4824

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4828

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !4830

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4830

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4828

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 106, i32 0, i64 12) #15, !dbg !4832, !srcloc !4834
  br label %do.cond5, !dbg !4832

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4832

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !4828

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !4828

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !4827

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !4827

do.end10:                                         ; preds = %do.cond9
  %3 = load ptr, ptr %insn, align 8, !dbg !4835
  %4 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %3) #18, !dbg !4835, !srcloc !4836
  store ptr %4, ptr %insn, align 8, !dbg !4835
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4837
  %6 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %5) #18, !dbg !4837, !srcloc !4838
  store ptr %6, ptr %addr.addr, align 8, !dbg !4837
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !4839
  %8 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %7) #18, !dbg !4839, !srcloc !4840
  store ptr %8, ptr %dest.addr, align 8, !dbg !4839
  %9 = load i8, ptr %opcode.addr, align 1, !dbg !4841
  %10 = load ptr, ptr %insn, align 8, !dbg !4842
  %opcode11 = getelementptr inbounds %struct.anon.19, ptr %10, i32 0, i32 0, !dbg !4843
  store i8 %9, ptr %opcode11, align 1, !dbg !4844
  %11 = load i32, ptr %size.addr, align 4, !dbg !4845
  %cmp12 = icmp sgt i32 %11, 1, !dbg !4847
  br i1 %cmp12, label %if.then14, label %if.end46, !dbg !4848

if.then14:                                        ; preds = %do.end10
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !4849
  %13 = ptrtoint ptr %12 to i64, !dbg !4851
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !4852
  %15 = load i32, ptr %size.addr, align 4, !dbg !4853
  %idx.ext = sext i32 %15 to i64, !dbg !4854
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !4854
  %16 = ptrtoint ptr %add.ptr to i64, !dbg !4855
  %sub = sub i64 %13, %16, !dbg !4856
  %conv15 = trunc i64 %sub to i32, !dbg !4851
  %17 = load ptr, ptr %insn, align 8, !dbg !4857
  %disp = getelementptr inbounds %struct.anon.19, ptr %17, i32 0, i32 1, !dbg !4858
  store i32 %conv15, ptr %disp, align 1, !dbg !4859
  %18 = load i32, ptr %size.addr, align 4, !dbg !4860
  %cmp16 = icmp eq i32 %18, 2, !dbg !4862
  br i1 %cmp16, label %if.then18, label %if.end45, !dbg !4863

if.then18:                                        ; preds = %if.then14
  br label %do.body19, !dbg !4864

do.body19:                                        ; preds = %if.then18
  %19 = load ptr, ptr %insn, align 8, !dbg !4866
  %disp20 = getelementptr inbounds %struct.anon.19, ptr %19, i32 0, i32 1, !dbg !4866
  %20 = load i32, ptr %disp20, align 1, !dbg !4866
  %shr = ashr i32 %20, 31, !dbg !4866
  %21 = load ptr, ptr %insn, align 8, !dbg !4866
  %disp21 = getelementptr inbounds %struct.anon.19, ptr %21, i32 0, i32 1, !dbg !4866
  %22 = load i32, ptr %disp21, align 1, !dbg !4866
  %shr22 = ashr i32 %22, 7, !dbg !4866
  %cmp23 = icmp ne i32 %shr, %shr22, !dbg !4866
  %lnot25 = xor i1 %cmp23, true, !dbg !4866
  %lnot27 = xor i1 %lnot25, true, !dbg !4866
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4866
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4866
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4866
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !4866
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !4869

if.then32:                                        ; preds = %do.body19
  br label %do.body33, !dbg !4866

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !4870

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !4872

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4872

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !4870

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 126, i32 0, i64 12) #15, !dbg !4874, !srcloc !4876
  br label %do.cond38, !dbg !4874

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !4874

do.end39:                                         ; preds = %do.cond38
  unreachable, !dbg !4870

do.cond40:                                        ; No predecessors!
  br label %do.end41, !dbg !4870

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !4870

if.end42:                                         ; preds = %do.end41, %do.body19
  br label %do.cond43, !dbg !4869

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !4869

do.end44:                                         ; preds = %do.cond43
  br label %if.end45, !dbg !4877

if.end45:                                         ; preds = %do.end44, %if.then14
  br label %if.end46, !dbg !4878

if.end46:                                         ; preds = %if.end45, %do.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %insn) #15, !dbg !4879
  ret void, !dbg !4879
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4880 dso_local void @text_poke_early(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4883 dso_local i32 @insn_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #11 align 16 !dbg !4887 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  %0 = load i64, ptr %error.addr, align 8, !dbg !4893
  %1 = inttoptr i64 %0 to ptr, !dbg !4894
  ret ptr %1, !dbg !4895
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @text_opcode_size(i8 noundef zeroext %opcode) #4 align 16 !dbg !4896 {
entry:
  %opcode.addr = alloca i8, align 1
  %size = alloca i32, align 4
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !4900, metadata !DIExpression()), !dbg !4902
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !4903
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4901, metadata !DIExpression()), !dbg !4904
  store i32 0, ptr %size, align 4, !dbg !4904
  %0 = load i8, ptr %opcode.addr, align 1, !dbg !4905
  %conv = zext i8 %0 to i32, !dbg !4905
  switch i32 %conv, label %sw.epilog [
    i32 204, label %sw.bb
    i32 195, label %sw.bb1
    i32 232, label %sw.bb2
    i32 233, label %sw.bb3
    i32 235, label %sw.bb4
  ], !dbg !4906

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %size, align 4, !dbg !4907
  br label %sw.epilog, !dbg !4907

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %size, align 4, !dbg !4909
  br label %sw.epilog, !dbg !4909

sw.bb2:                                           ; preds = %entry
  store i32 5, ptr %size, align 4, !dbg !4910
  br label %sw.epilog, !dbg !4910

sw.bb3:                                           ; preds = %entry
  store i32 5, ptr %size, align 4, !dbg !4911
  br label %sw.epilog, !dbg !4911

sw.bb4:                                           ; preds = %entry
  store i32 2, ptr %size, align 4, !dbg !4912
  br label %sw.epilog, !dbg !4912

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %size, align 4, !dbg !4913
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !4914
  ret i32 %1, !dbg !4915
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @error_entry() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @paranoid_entry() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xen_error_entry() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__switch_to_asm(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ret_from_fork(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @relocate_kernel(i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_coretext(ptr noundef %addr) #11 align 16 !dbg !189 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  %mod = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !193, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #15, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !194, metadata !DIExpression()), !dbg !4918
  store i8 0, ptr %ret, align 1, !dbg !4918
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !195, metadata !DIExpression()), !dbg !4920
  br label %do.body, !dbg !4921

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !4922
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4922, !srcloc !4924
  br label %do.cond, !dbg !4922

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4922

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4925
  %1 = ptrtoint ptr %0 to i64, !dbg !4926
  %call = call ptr @__module_address(i64 noundef %1) #16, !dbg !4927
  store ptr %call, ptr %mod, align 8, !dbg !4928
  %2 = load ptr, ptr %mod, align 8, !dbg !4929
  %tobool = icmp ne ptr %2, null, !dbg !4929
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4931

land.lhs.true:                                    ; preds = %do.end
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4932
  %4 = ptrtoint ptr %3 to i64, !dbg !4933
  %5 = load ptr, ptr %mod, align 8, !dbg !4934
  %call1 = call zeroext i1 @within_module_core(i64 noundef %4, ptr noundef %5) #16, !dbg !4935
  br i1 %call1, label %if.then, label %if.end, !dbg !4936

if.then:                                          ; preds = %land.lhs.true
  store i8 1, ptr %ret, align 1, !dbg !4937
  br label %if.end, !dbg !4938

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  br label %do.body2, !dbg !4939

do.body2:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4940, !srcloc !4942
  %call3 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !4943
  %lnot = xor i1 %call3, true, !dbg !4943
  %lnot4 = xor i1 %lnot, true, !dbg !4943
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4943
  %conv = sext i32 %lnot.ext to i64, !dbg !4943
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4943
  %tobool5 = icmp ne i64 %expval, 0, !dbg !4943
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !4940

if.then6:                                         ; preds = %do.body2
  br label %do.body7, !dbg !4943

do.body7:                                         ; preds = %if.then6
  %6 = call i64 @llvm.read_register.i64(metadata !4172), !dbg !4945
  %7 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %6) #15, !dbg !4945, !srcloc !4947
  call void @llvm.write_register.i64(metadata !4172, i64 %7), !dbg !4945
  br label %do.cond8, !dbg !4945

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4945

do.end9:                                          ; preds = %do.cond8
  br label %if.end10, !dbg !4945

if.end10:                                         ; preds = %do.end9, %do.body2
  br label %do.cond11, !dbg !4940

do.cond11:                                        ; preds = %if.end10
  br label %do.end12, !dbg !4940

do.end12:                                         ; preds = %do.cond11
  %8 = load i8, ptr %ret, align 1, !dbg !4948, !range !4328, !noundef !573
  %tobool13 = trunc i8 %8 to i1, !dbg !4948
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #15, !dbg !4949
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #15, !dbg !4949
  ret i1 %tobool13, !dbg !4950
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !4951 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4954, metadata !DIExpression()), !dbg !4961
  br label %do.body, !dbg !4962

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !4963
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4955, metadata !DIExpression()), !dbg !4963
  %0 = load i32, ptr %val.addr, align 4, !dbg !4963
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4963
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4963

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4963
  %cmp = icmp eq i32 %2, 1, !dbg !4963
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4963

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4963
  %cmp1 = icmp eq i32 %3, -1, !dbg !4963
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4963

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4963
  br label %cond.end, !dbg !4963

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4963
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4963
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4964
  %cmp2 = icmp eq i32 %5, 1, !dbg !4964
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4963

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4965, !srcloc !4967
  br label %if.end8, !dbg !4964

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4968
  %cmp3 = icmp eq i32 %6, -1, !dbg !4968
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4964

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4969, !srcloc !4971
  br label %if.end, !dbg !4968

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4968

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4957, metadata !DIExpression()), !dbg !4972
  %7 = load i32, ptr %val.addr, align 4, !dbg !4972
  %conv = sext i32 %7 to i64, !dbg !4972
  %and = and i64 %conv, 4294967295, !dbg !4972
  %conv7 = trunc i64 %and to i32, !dbg !4972
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4972
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4972
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4972, !srcloc !4973
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !4968
  br label %do.cond, !dbg !4972

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4972

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !4962
  br label %do.end10, !dbg !4963

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4974
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4975 dso_local ptr @__module_address(i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_core(i64 noundef %addr, ptr noundef %mod) #11 align 16 !dbg !4978 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4984, metadata !DIExpression()), !dbg !4988
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4985, metadata !DIExpression()), !dbg !4989
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !4990
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4986, metadata !DIExpression()), !dbg !4990
  store i32 0, ptr %type, align 4, !dbg !4990
  br label %for.cond, !dbg !4990

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !4991
  %cmp = icmp slt i32 %0, 7, !dbg !4991
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !4990

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4990

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !4993
  %cmp1 = icmp eq i32 %1, 4, !dbg !4993
  br i1 %cmp1, label %if.end6, label %lor.lhs.false, !dbg !4993

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !4993
  %cmp2 = icmp eq i32 %2, 5, !dbg !4993
  br i1 %cmp2, label %if.end6, label %lor.lhs.false3, !dbg !4993

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !4993
  %cmp4 = icmp eq i32 %3, 6, !dbg !4993
  br i1 %cmp4, label %if.end6, label %if.then, !dbg !4991

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load i64, ptr %addr.addr, align 8, !dbg !4995
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !4998
  %6 = load i32, ptr %type, align 4, !dbg !4999
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #16, !dbg !5000
  br i1 %call, label %if.then5, label %if.end, !dbg !5001

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !5002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5002

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5003

if.end6:                                          ; preds = %if.end, %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4993

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !4991
  %inc = add i32 %7, 1, !dbg !4991
  store i32 %inc, ptr %type, align 4, !dbg !4991
  br label %for.cond, !dbg !4991, !llvm.loop !5004

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !4991
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !5006
  br label %return, !dbg !5006

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !5007
  ret i1 %8, !dbg !5007

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !5008 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !5012
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5010, metadata !DIExpression()), !dbg !5012
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !5012, !srcloc !5013
  %1 = icmp ult i8 %0, 2, !dbg !5012
  call void @llvm.assume(i1 %1), !dbg !5012
  store i8 %0, ptr %c, align 1, !dbg !5012
  %2 = load i8, ptr %c, align 1, !dbg !5012, !range !4328, !noundef !573
  %tobool = trunc i8 %2 to i1, !dbg !5012
  %frombool = zext i1 %tobool to i8, !dbg !5012
  store i8 %frombool, ptr %tmp, align 1, !dbg !5012
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !5014
  %3 = load i8, ptr %tmp, align 1, !dbg !5012, !range !4328, !noundef !573
  %tobool1 = trunc i8 %3 to i1, !dbg !5012
  ret i1 %tobool1, !dbg !5015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_mem_type(i64 noundef %addr, ptr noundef %mod, i32 noundef %type) #11 align 16 !dbg !5016 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5020, metadata !DIExpression()), !dbg !5025
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5021, metadata !DIExpression()), !dbg !5026
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5022, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5023, metadata !DIExpression()), !dbg !5029
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5024, metadata !DIExpression()), !dbg !5030
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5031
  %mem = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 22, !dbg !5032
  %1 = load i32, ptr %type.addr, align 4, !dbg !5033
  %idxprom = sext i32 %1 to i64, !dbg !5031
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 %idxprom, !dbg !5031
  %base1 = getelementptr inbounds %struct.module_memory, ptr %arrayidx, i32 0, i32 0, !dbg !5034
  %2 = load ptr, ptr %base1, align 8, !dbg !5034
  %3 = ptrtoint ptr %2 to i64, !dbg !5035
  store i64 %3, ptr %base, align 8, !dbg !5036
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !5037
  %mem2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 22, !dbg !5038
  %5 = load i32, ptr %type.addr, align 4, !dbg !5039
  %idxprom3 = sext i32 %5 to i64, !dbg !5037
  %arrayidx4 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 %idxprom3, !dbg !5037
  %size5 = getelementptr inbounds %struct.module_memory, ptr %arrayidx4, i32 0, i32 1, !dbg !5040
  %6 = load i32, ptr %size5, align 8, !dbg !5040
  %conv = zext i32 %6 to i64, !dbg !5037
  store i64 %conv, ptr %size, align 8, !dbg !5041
  %7 = load i64, ptr %addr.addr, align 8, !dbg !5042
  %8 = load i64, ptr %base, align 8, !dbg !5043
  %sub = sub i64 %7, %8, !dbg !5044
  %9 = load i64, ptr %size, align 8, !dbg !5045
  %cmp = icmp ult i64 %sub, %9, !dbg !5046
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !5047
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !5047
  ret i1 %cmp, !dbg !5048
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5049 dso_local i32 @bcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5053 dso_local ptr @text_poke_copy_locked(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4172}
!llvm.module.flags = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180}
!llvm.ident = !{!4181}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_debug_thunks", scope: !2, file: !3, line: 38, type: !4169, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.callthunks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/callthunks\22 -D KBUILD_BASENAME=\22callthunks\22 -D KBUILD_MODNAME=\22callthunks\22 -D __KBUILD_MODNAME=kmod_callthunks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/callthunks.ll arch/x86/kernel/callthunks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !111, globals: !123, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/callthunks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7711f599b163710f48f91113927266a")
!4 = !{!5, !11, !18, !23, !31, !47, !55, !61, !66, !72, !79, !86, !92, !104}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!15 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!16 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!17 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !32, line: 1325, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!34 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!35 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!36 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!37 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!38 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!39 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!40 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!41 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!42 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!43 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!44 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!45 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!46 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !48, line: 68, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !56, line: 54, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "USRQUOTA", value: 0)
!59 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!60 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !62, line: 65, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!65 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !80, line: 15, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!83 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!84 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !87, line: 26, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mod_mem_type", file: !12, line: 324, baseType: !93, size: 32, elements: !94)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103}
!95 = !DIEnumerator(name: "MOD_TEXT", value: 0)
!96 = !DIEnumerator(name: "MOD_DATA", value: 1)
!97 = !DIEnumerator(name: "MOD_RODATA", value: 2)
!98 = !DIEnumerator(name: "MOD_RO_AFTER_INIT", value: 3)
!99 = !DIEnumerator(name: "MOD_INIT_TEXT", value: 4)
!100 = !DIEnumerator(name: "MOD_INIT_DATA", value: 5)
!101 = !DIEnumerator(name: "MOD_INIT_RODATA", value: 6)
!102 = !DIEnumerator(name: "MOD_MEM_NUM_TYPES", value: 7)
!103 = !DIEnumerator(name: "MOD_INVALID", value: -1)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mode", file: !105, line: 143, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "INSN_MODE_32", value: 0)
!108 = !DIEnumerator(name: "INSN_MODE_64", value: 1)
!109 = !DIEnumerator(name: "INSN_MODE_KERN", value: 2)
!110 = !DIEnumerator(name: "INSN_NUM_MODES", value: 3)
!111 = !{!93, !112, !113, !114, !117, !118, !119, !7}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !120, line: 21, baseType: !121)
!120 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !122, line: 27, baseType: !7)
!122 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!123 = !{!124, !136, !141, !0, !146, !148, !153, !158, !163, !168, !174, !179, !187, !4141, !4160, !4165}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "__setup_debug_thunks", scope: !2, file: !3, line: 38, type: !126, isLocal: true, isDefinition: true, align: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !127, line: 324, size: 192, elements: !128)
!127 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!128 = !{!129, !130, !135}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !126, file: !127, line: 325, baseType: !114, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !126, file: !127, line: 326, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!93, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !126, file: !127, line: 327, baseType: !93, size: 32, offset: 128)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 368, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 46)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "thunks_initialized", scope: !2, file: !3, line: 62, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 35, baseType: !145)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!145 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "debug_callthunks", scope: !2, file: !3, line: 25, type: !93, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 304, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 38)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 336, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 42)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 232, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 29)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 456, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 57)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !170, line: 106, type: !171, isLocal: true, isDefinition: true)
!170 = !DIFile(filename: "./arch/x86/include/asm/text-patching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4df22955607f445a62da6adb58adb51")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 296, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 37)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "builtin_coretext", scope: !2, file: !3, line: 64, type: !181, isLocal: true, isDefinition: true)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_text", file: !3, line: 56, size: 192, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !182, file: !3, line: 57, baseType: !113, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !182, file: !3, line: 58, baseType: !113, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !3, line: 59, baseType: !114, size: 64, offset: 128)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule495", scope: !189, file: !3, line: 108, type: !117, isLocal: true, isDefinition: true)
!189 = distinct !DISubprogram(name: "within_module_coretext", scope: !3, file: !3, line: 97, type: !190, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!143, !117}
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: "addr", arg: 1, scope: !189, file: !3, line: 97, type: !117)
!194 = !DILocalVariable(name: "ret", scope: !189, file: !3, line: 99, type: !143)
!195 = !DILocalVariable(name: "mod", scope: !189, file: !3, line: 102, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !198)
!198 = !{!199, !200, !206, !210, !3813, !3839, !3840, !3841, !3842, !3846, !3849, !3850, !3851, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3918, !3922, !3940, !3957, !3958, !3959, !3960, !3969, !3992, !3993, !3996, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4010, !4011, !4097, !4105, !4106, !4107, !4109, !4113, !4114, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4136, !4137, !4138, !4140}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !12, line: 403, baseType: !11, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !197, file: !12, line: 406, baseType: !201, size: 128, offset: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !144, line: 190, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !144, line: 191, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !144, line: 191, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !12, line: 409, baseType: !207, size: 448, offset: 192)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 448, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 56)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !197, file: !12, line: 417, baseType: !211, size: 768, offset: 640)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !212)
!212 = !{!213, !3807, !3808, !3809, !3812}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !211, file: !12, line: 46, baseType: !214, size: 512)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !215, line: 64, size: 512, elements: !216)
!215 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!216 = !{!217, !218, !219, !221, !307, !3705, !3797, !3802, !3803, !3804, !3805, !3806}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !215, line: 65, baseType: !114, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !214, file: !215, line: 66, baseType: !201, size: 128, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !215, line: 67, baseType: !220, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !214, file: !215, line: 68, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !215, line: 168, size: 768, elements: !224)
!224 = !{!225, !226, !267, !268}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !223, file: !215, line: 169, baseType: !201, size: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !223, file: !215, line: 170, baseType: !227, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !228, line: 29, baseType: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !228, line: 17, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 18, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 18, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !232, file: !228, line: 19, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !236, line: 14, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !235, file: !236, line: 15, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !240, line: 44, baseType: !241)
!240 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !240, line: 14, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 15, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 15, size: 32, elements: !245)
!245 = !{!246, !251, !259}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !244, file: !240, line: 16, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 174, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 172, size: 32, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !248, file: !144, line: 173, baseType: !93, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !240, line: 24, baseType: !252, size: 16)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !240, line: 24, size: 16, elements: !253)
!253 = !{!254, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !252, file: !240, line: 25, baseType: !255, size: 8)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !120, line: 17, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !122, line: 21, baseType: !257)
!257 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !252, file: !240, line: 26, baseType: !255, size: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !240, line: 28, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !240, line: 28, size: 32, elements: !261)
!261 = !{!262, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !260, file: !240, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !120, line: 19, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !122, line: 24, baseType: !265)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !240, line: 30, baseType: !263, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !223, file: !215, line: 171, baseType: !214, size: 512, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !223, file: !215, line: 172, baseType: !269, size: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !215, line: 133, size: 192, elements: !272)
!272 = !{!273, !280, !285}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !271, file: !215, line: 134, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!93, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !215, line: 135, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!114, !278}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !271, file: !215, line: 136, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!93, !278, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !215, line: 125, size: 20736, elements: !292)
!292 = !{!293, !297, !301, !302, !306}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !291, file: !215, line: 126, baseType: !294, size: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 192, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !291, file: !215, line: 127, baseType: !298, size: 4096, offset: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 4096, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !291, file: !215, line: 128, baseType: !93, size: 32, offset: 4288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !291, file: !215, line: 129, baseType: !303, size: 16384, offset: 4320)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16384, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !291, file: !215, line: 130, baseType: !93, size: 32, offset: 20704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !214, file: !215, line: 69, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !215, line: 116, size: 384, elements: !311)
!311 = !{!312, !316, !343, !3667, !3695, !3699}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !310, file: !215, line: 117, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !220}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !310, file: !215, line: 118, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !320, line: 254, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!321 = !{!322, !336}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !319, file: !320, line: 255, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !220, !330, !134}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !144, line: 66, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !328, line: 73, baseType: !329)
!328 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !328, line: 15, baseType: !118)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !320, line: 30, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !320, line: 31, baseType: !114, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !331, file: !320, line: 32, baseType: !335, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !144, line: 24, baseType: !265)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !319, file: !320, line: 256, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!326, !220, !330, !114, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !328, line: 72, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !328, line: 16, baseType: !113)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !310, file: !215, line: 119, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !320, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !3663, !3665}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !320, line: 85, baseType: !114, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !320, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!335, !220, !330, !93}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !320, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!335, !220, !358, !93}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !320, line: 175, size: 512, elements: !360)
!360 = !{!361, !362, !363, !364, !3654, !3658, !3659}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !320, line: 176, baseType: !331, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !320, line: 177, baseType: !340, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !320, line: 178, baseType: !117, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !320, line: 179, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !370)
!370 = !{!371, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3648, !3649, !3650, !3651, !3652, !3653}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !369, file: !19, line: 473, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !374)
!374 = !{!375, !376, !377, !385, !386, !393, !394, !397, !398, !3426, !3427, !3428, !3429, !3430, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3470, !3473, !3474, !3475, !3484, !3485, !3486, !3487}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !373, file: !19, line: 642, baseType: !335, size: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !373, file: !19, line: 643, baseType: !265, size: 16, offset: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !373, file: !19, line: 644, baseType: !378, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !379, line: 23, baseType: !380)
!379 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 21, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !379, line: 22, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !144, line: 37, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !328, line: 49, baseType: !7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !373, file: !19, line: 645, baseType: !201, size: 128, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !373, file: !19, line: 646, baseType: !387, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !379, line: 28, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 26, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !388, file: !379, line: 27, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !144, line: 38, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !328, line: 50, baseType: !7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !373, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !373, file: !19, line: 650, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !373, file: !19, line: 651, baseType: !395, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !373, file: !19, line: 654, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !402)
!402 = !{!403, !3251, !3264, !3268, !3272, !3276, !3280, !3284, !3288, !3292, !3296, !3297, !3301, !3305, !3342, !3371, !3375, !3381, !3385, !3389, !3393, !3397, !3401, !3407, !3411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !401, file: !19, line: 1967, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !372, !407, !7}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !409, line: 82, size: 1536, elements: !410)
!409 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!410 = !{!411, !412, !422, !430, !431, !449, !450, !454, !467, !3234, !3235, !3236, !3237, !3243, !3244, !3245}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !408, file: !409, line: 84, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !408, file: !409, line: 85, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !414, line: 275, baseType: !415)
!414 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !414, line: 275, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !415, file: !414, line: 275, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !414, line: 69, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !414, line: 64, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !419, file: !414, line: 65, baseType: !7, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !408, file: !409, line: 86, baseType: !423, size: 128, offset: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !424, line: 38, size: 128, elements: !425)
!424 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !424, line: 39, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !423, file: !424, line: 39, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !408, file: !409, line: 87, baseType: !407, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !408, file: !409, line: 88, baseType: !432, size: 128, offset: 256)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !409, line: 49, size: 128, elements: !433)
!433 = !{!434, !446}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !409, line: 50, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !409, line: 50, size: 64, elements: !436)
!436 = !{!437, !442}
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !409, line: 51, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !409, line: 51, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !438, file: !409, line: 52, baseType: !119, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !438, file: !409, line: 52, baseType: !119, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !435, file: !409, line: 54, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !120, line: 23, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !122, line: 31, baseType: !445)
!445 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !409, line: 56, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !408, file: !409, line: 89, baseType: !372, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !408, file: !409, line: 91, baseType: !451, size: 256, offset: 448)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !408, file: !409, line: 94, baseType: !455, size: 64, offset: 704)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !456, line: 25, size: 64, elements: !457)
!456 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 26, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 26, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !459, file: !456, line: 28, baseType: !444, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !456, line: 30, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !456, line: 30, size: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !463, file: !456, line: 31, baseType: !227, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !456, line: 32, baseType: !93, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !408, file: !409, line: 95, baseType: !468, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !409, line: 128, size: 1024, align: 512, elements: !471)
!471 = !{!472, !476, !477, !484, !490, !494, !498, !502, !503, !507, !511, !3224, !3228}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !470, file: !409, line: 129, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!93, !407, !7}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !470, file: !409, line: 130, baseType: !473, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !470, file: !409, line: 131, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!93, !481, !483}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !470, file: !409, line: 132, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!93, !481, !7, !114, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !470, file: !409, line: 134, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!93, !481}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !470, file: !409, line: 135, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!93, !407}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !470, file: !409, line: 136, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !407}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !470, file: !409, line: 137, baseType: !499, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !470, file: !409, line: 138, baseType: !504, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !407, !372}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !470, file: !409, line: 139, baseType: !508, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!134, !407, !134, !93}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !470, file: !409, line: 140, baseType: !512, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !3223}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !517, line: 70, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!518 = !{!519, !520, !3219, !3220}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !516, file: !517, line: 71, baseType: !407, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !516, file: !517, line: 72, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !523)
!523 = !{!524, !525, !528, !529, !530, !534, !582, !1729, !1769, !1854, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1871, !1875, !1876, !1879, !1882, !1885, !1888, !1889, !1890, !1931, !3150, !3151, !3152, !3153, !3154, !3155, !3158, !3160, !3167, !3168, !3169, !3170, !3171, !3186, !3187, !3188, !3189, !3190, !3193, !3194, !3195, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !522, file: !19, line: 1191, baseType: !201, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !522, file: !19, line: 1192, baseType: !526, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !144, line: 21, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !144, line: 18, baseType: !119)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !522, file: !19, line: 1193, baseType: !257, size: 8, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !522, file: !19, line: 1194, baseType: !113, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !522, file: !19, line: 1195, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !144, line: 52, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !328, line: 88, baseType: !533)
!533 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !522, file: !19, line: 1196, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !537)
!537 = !{!538, !539, !540, !546, !550, !554, !558, !559, !560, !570, !574, !575, !576, !578, !579, !580, !581}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !19, line: 2367, baseType: !114, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !536, file: !19, line: 2368, baseType: !93, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !536, file: !19, line: 2376, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!93, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !517, line: 21, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !536, file: !19, line: 2377, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !536, file: !19, line: 2378, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!407, !535, !93, !114, !117}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !536, file: !19, line: 2380, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !521}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !536, file: !19, line: 2381, baseType: !196, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !19, line: 2382, baseType: !535, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !536, file: !19, line: 2383, baseType: !561, size: 64, offset: 512)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !144, line: 194, size: 64, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !561, file: !144, line: 195, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !144, line: 198, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !144, line: 199, baseType: !564, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !565, file: !144, line: 199, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !536, file: !19, line: 2385, baseType: !571, offset: 576)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !572, line: 206, elements: !573)
!572 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!573 = !{}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !536, file: !19, line: 2386, baseType: !571, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !536, file: !19, line: 2387, baseType: !571, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !536, file: !19, line: 2388, baseType: !577, offset: 576)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, elements: !295)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !536, file: !19, line: 2390, baseType: !571, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !536, file: !19, line: 2391, baseType: !571, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !536, file: !19, line: 2392, baseType: !571, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !536, file: !19, line: 2393, baseType: !571, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !522, file: !19, line: 1197, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !586)
!586 = !{!587, !591, !595, !596, !600, !606, !610, !611, !612, !616, !620, !624, !625, !626, !632, !637, !638, !1654, !1655, !1656, !1657, !1661, !1665, !1712, !1727, !1728}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !585, file: !19, line: 2058, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!372, !521}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !585, file: !19, line: 2059, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !372}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !585, file: !19, line: 2060, baseType: !592, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !585, file: !19, line: 2062, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !372, !93}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !585, file: !19, line: 2063, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!93, !372, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 309, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !585, file: !19, line: 2064, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!93, !372}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !585, file: !19, line: 2065, baseType: !592, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !585, file: !19, line: 2066, baseType: !555, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !585, file: !19, line: 2067, baseType: !613, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!93, !521, !93}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !585, file: !19, line: 2068, baseType: !617, size: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!93, !521, !18}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !585, file: !19, line: 2069, baseType: !621, size: 64, offset: 640)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!93, !521}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !585, file: !19, line: 2070, baseType: !617, size: 64, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !585, file: !19, line: 2071, baseType: !621, size: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !585, file: !19, line: 2072, baseType: !627, size: 64, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!93, !407, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !585, file: !19, line: 2073, baseType: !633, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!93, !521, !636, !134}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !585, file: !19, line: 2074, baseType: !555, size: 64, offset: 960)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !585, file: !19, line: 2076, baseType: !639, size: 64, offset: 1024)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!93, !642, !407}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !644, line: 17, size: 960, elements: !645)
!644 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !674, !696, !697, !1653}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !643, file: !644, line: 18, baseType: !134, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !643, file: !644, line: 19, baseType: !340, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !643, file: !644, line: 20, baseType: !340, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !644, line: 21, baseType: !340, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !643, file: !644, line: 22, baseType: !340, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !643, file: !644, line: 23, baseType: !531, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !643, file: !644, line: 24, baseType: !531, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !643, file: !644, line: 25, baseType: !654, size: 256, offset: 448)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !655, line: 66, size: 256, elements: !656)
!655 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!656 = !{!657, !666, !668, !673}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !654, file: !655, line: 67, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !659, line: 13, baseType: !660)
!659 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !144, line: 181, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 179, size: 64, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !661, file: !144, line: 180, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !120, line: 22, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !122, line: 30, baseType: !533)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !654, file: !655, line: 68, baseType: !667, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !236, line: 23, baseType: !235)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !654, file: !655, line: 70, baseType: !669, size: 32, offset: 96)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !670, line: 15, size: 32, elements: !671)
!670 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !669, file: !670, line: 20, baseType: !247, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !654, file: !655, line: 72, baseType: !201, size: 128, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !643, file: !644, line: 26, baseType: !675, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !644, line: 32, size: 256, elements: !678)
!678 = !{!679, !684, !688, !692}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !677, file: !644, line: 33, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!117, !642, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !677, file: !644, line: 34, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !642, !117}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !644, line: 35, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!117, !642, !117, !683}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !677, file: !644, line: 36, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!93, !642, !117}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !643, file: !644, line: 27, baseType: !93, size: 32, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !643, file: !644, line: 28, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !701)
!701 = !{!702, !721, !722, !724, !725, !726, !727, !728, !791, !1001, !1010, !1016, !1017, !1643, !1644, !1645, !1646, !1648, !1649, !1652}
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !19, line: 995, baseType: !703, size: 128)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !19, line: 995, size: 128, elements: !704)
!704 = !{!705, !711, !720}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !703, file: !19, line: 996, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !707, line: 60, size: 64, elements: !708)
!707 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !707, line: 61, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !703, file: !19, line: 997, baseType: !712, size: 128, align: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !144, line: 232, size: 128, align: 64, elements: !713)
!713 = !{!714, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !144, line: 233, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !712, file: !144, line: 234, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !715}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !703, file: !19, line: 998, baseType: !7, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !700, file: !19, line: 1005, baseType: !227, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !700, file: !19, line: 1006, baseType: !723, size: 32, offset: 160)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !144, line: 156, baseType: !7)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !700, file: !19, line: 1007, baseType: !658, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !700, file: !19, line: 1008, baseType: !654, size: 256, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !700, file: !19, line: 1009, baseType: !531, size: 64, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !700, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !700, file: !19, line: 1011, baseType: !729, size: 256, offset: 640)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !730)
!730 = !{!731, !752, !787, !788, !789, !790}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !19, line: 949, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !733, line: 34, baseType: !734)
!733 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 25, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !734, file: !733, line: 26, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !738, line: 27, baseType: !739)
!738 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !738, line: 13, size: 64, elements: !740)
!740 = !{!741, !751}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !738, line: 14, baseType: !742, size: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !738, line: 14, size: 32, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !742, file: !738, line: 15, baseType: !247, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !738, line: 16, baseType: !746, size: 32)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !738, line: 16, size: 32, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !746, file: !738, line: 18, baseType: !255, size: 8)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !746, file: !738, line: 19, baseType: !750, size: 24, offset: 8)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 24, elements: !295)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !739, file: !738, line: 26, baseType: !239, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !729, file: !19, line: 950, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !755)
!755 = !{!756, !762, !763, !764, !768, !769, !776, !777}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !24, line: 61, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !758, line: 113, baseType: !759)
!758 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !758, line: 111, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !759, file: !758, line: 112, baseType: !247, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !754, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !24, line: 63, baseType: !227, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !754, file: !24, line: 65, baseType: !765, size: 256, offset: 128)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 4)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !754, file: !24, line: 66, baseType: !561, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !754, file: !24, line: 68, baseType: !770, size: 192, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !771, line: 41, baseType: !772)
!771 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !771, line: 37, size: 192, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !771, line: 38, baseType: !227, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !772, file: !771, line: 39, baseType: !201, size: 128, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !754, file: !24, line: 69, baseType: !712, size: 128, align: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !754, file: !24, line: 70, baseType: !778, offset: 768)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, elements: !785)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !779, file: !24, line: 55, baseType: !93, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !779, file: !24, line: 56, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!785 = !{!786}
!786 = !DISubrange(count: -1)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !729, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !729, file: !19, line: 952, baseType: !378, size: 32, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !729, file: !19, line: 952, baseType: !378, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !729, file: !19, line: 953, baseType: !93, size: 32, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !700, file: !19, line: 1012, baseType: !792, size: 64, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !795, line: 110, size: 1472, elements: !796)
!795 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !813, !814, !815, !816, !817, !818, !946, !947, !948, !949, !950, !981, !984, !988, !996}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !794, file: !795, line: 111, baseType: !658, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !794, file: !795, line: 112, baseType: !378, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !794, file: !795, line: 113, baseType: !387, size: 32, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !794, file: !795, line: 114, baseType: !378, size: 32, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !794, file: !795, line: 115, baseType: !387, size: 32, offset: 160)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !794, file: !795, line: 116, baseType: !378, size: 32, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !794, file: !795, line: 117, baseType: !387, size: 32, offset: 224)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !794, file: !795, line: 118, baseType: !378, size: 32, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !794, file: !795, line: 119, baseType: !387, size: 32, offset: 288)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !794, file: !795, line: 120, baseType: !7, size: 32, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !794, file: !795, line: 121, baseType: !808, size: 64, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !809, line: 24, baseType: !810)
!809 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !809, line: 24, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !810, file: !809, line: 24, baseType: !443, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !794, file: !795, line: 122, baseType: !808, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !794, file: !795, line: 123, baseType: !808, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !794, file: !795, line: 124, baseType: !808, size: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !794, file: !795, line: 125, baseType: !808, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !794, file: !795, line: 127, baseType: !257, size: 8, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !794, file: !795, line: 129, baseType: !819, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !821, line: 195, size: 1728, elements: !822)
!821 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!822 = !{!823, !824, !829, !841, !850, !853, !854, !861, !862, !863, !864, !867, !868, !869, !871, !872, !910, !931}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !820, file: !821, line: 196, baseType: !757, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !820, file: !821, line: 197, baseType: !825, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !821, line: 28, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !144, line: 104, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !120, line: 20, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !122, line: 26, baseType: !93)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !821, line: 198, baseType: !830, size: 192, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !821, line: 198, size: 192, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !830, file: !821, line: 199, baseType: !201, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !830, file: !821, line: 200, baseType: !834, size: 192, align: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !835, line: 5, size: 192, align: 64, elements: !836)
!835 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!836 = !{!837, !838, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !834, file: !835, line: 6, baseType: !113, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !834, file: !835, line: 7, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !834, file: !835, line: 8, baseType: !839, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !820, file: !821, line: 205, baseType: !842, size: 320, offset: 256)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !843, line: 48, size: 320, elements: !844)
!843 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!844 = !{!845, !846, !847, !848, !849}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !842, file: !843, line: 49, baseType: !658, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !842, file: !843, line: 55, baseType: !658, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !842, file: !843, line: 57, baseType: !669, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !842, file: !843, line: 59, baseType: !667, size: 32, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !842, file: !843, line: 60, baseType: !201, size: 128, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !820, file: !821, line: 206, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !821, line: 206, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !820, file: !821, line: 207, baseType: !117, size: 64, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !821, line: 208, baseType: !855, size: 64, offset: 704)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !821, line: 208, size: 64, elements: !856)
!856 = !{!857, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !855, file: !821, line: 209, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !859, line: 8, baseType: !665)
!859 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !855, file: !821, line: 210, baseType: !858, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !820, file: !821, line: 212, baseType: !858, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !820, file: !821, line: 213, baseType: !378, size: 32, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !820, file: !821, line: 214, baseType: !387, size: 32, offset: 864)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !820, file: !821, line: 215, baseType: !865, size: 32, offset: 896)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !821, line: 31, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !144, line: 110, baseType: !119)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !820, file: !821, line: 216, baseType: !265, size: 16, offset: 928)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !820, file: !821, line: 217, baseType: !265, size: 16, offset: 944)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !820, file: !821, line: 221, baseType: !870, size: 16, offset: 960)
!870 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !821, line: 228, baseType: !113, size: 64, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !821, line: 245, baseType: !873, size: 320, offset: 1088)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !821, line: 245, size: 320, elements: !874)
!874 = !{!875, !902}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !873, file: !821, line: 246, baseType: !876, size: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !821, line: 114, size: 320, elements: !877)
!877 = !{!878, !879, !891, !894, !901}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !876, file: !821, line: 116, baseType: !113, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !821, line: 117, baseType: !880, size: 64, offset: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !821, line: 117, size: 64, elements: !881)
!881 = !{!882, !890}
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !821, line: 118, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !880, file: !821, line: 118, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !883, file: !821, line: 120, baseType: !263, size: 16)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !883, file: !821, line: 121, baseType: !887, size: 48, offset: 16)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 48, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 6)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !880, file: !821, line: 127, baseType: !113, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !821, line: 129, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !821, line: 102, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !876, file: !821, line: 130, baseType: !895, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !821, line: 108, size: 192, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !896, file: !821, line: 109, baseType: !712, size: 128, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !896, file: !821, line: 110, baseType: !757, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !896, file: !821, line: 111, baseType: !143, size: 8, offset: 160)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !876, file: !821, line: 131, baseType: !114, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !821, line: 247, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !821, line: 247, size: 320, elements: !904)
!904 = !{!905, !906, !907, !908, !909}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !903, file: !821, line: 248, baseType: !113, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !903, file: !821, line: 249, baseType: !113, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !903, file: !821, line: 250, baseType: !892, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !903, file: !821, line: 251, baseType: !895, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !903, file: !821, line: 252, baseType: !134, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !821, line: 260, baseType: !911, size: 256, offset: 1408)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !821, line: 260, size: 256, elements: !912)
!912 = !{!913, !919}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !911, file: !821, line: 261, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !821, line: 134, size: 256, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !914, file: !821, line: 135, baseType: !117, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !914, file: !821, line: 136, baseType: !918, size: 256)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !766)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !821, line: 262, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !821, line: 262, size: 256, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !920, file: !821, line: 264, baseType: !201, size: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !920, file: !821, line: 265, baseType: !924, size: 128, offset: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !925, line: 22, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!926 = !{!927, !930}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !924, file: !925, line: 23, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !925, line: 23, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !924, file: !925, line: 24, baseType: !113, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !820, file: !821, line: 280, baseType: !932, size: 64, offset: 1664)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !821, line: 176, size: 192, elements: !934)
!934 = !{!935, !944, !945}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !933, file: !821, line: 177, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !821, line: 171, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!93, !819, !940, !942, !819}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !933, file: !821, line: 178, baseType: !819, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !933, file: !821, line: 179, baseType: !892, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !794, file: !795, line: 130, baseType: !819, size: 64, offset: 832)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !794, file: !795, line: 131, baseType: !819, size: 64, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !794, file: !795, line: 132, baseType: !819, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !794, file: !795, line: 135, baseType: !117, size: 64, offset: 1024)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !794, file: !795, line: 137, baseType: !951, size: 64, offset: 1088)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !953, line: 14, size: 1088, elements: !954)
!953 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!954 = !{!955, !956, !965, !966, !967, !968, !969, !970}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !952, file: !953, line: 15, baseType: !757, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !952, file: !953, line: 17, baseType: !957, size: 320, offset: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !958, line: 22, size: 320, elements: !959)
!958 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !958, line: 23, baseType: !667, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !957, file: !958, line: 24, baseType: !664, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !957, file: !958, line: 26, baseType: !201, size: 128, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !957, file: !958, line: 28, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !952, file: !953, line: 19, baseType: !113, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !952, file: !953, line: 20, baseType: !658, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !952, file: !953, line: 23, baseType: !565, size: 128, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !952, file: !953, line: 24, baseType: !378, size: 32, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !952, file: !953, line: 29, baseType: !658, size: 64, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !952, file: !953, line: 36, baseType: !971, size: 320, offset: 768)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !972, line: 15, size: 320, elements: !973)
!972 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!973 = !{!974, !975, !976, !977, !978, !979, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !972, line: 16, baseType: !667, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !971, file: !972, line: 18, baseType: !93, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !971, file: !972, line: 19, baseType: !93, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !971, file: !972, line: 20, baseType: !93, size: 32, offset: 96)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !971, file: !972, line: 21, baseType: !93, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !971, file: !972, line: 22, baseType: !113, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !971, file: !972, line: 23, baseType: !113, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !794, file: !795, line: 138, baseType: !982, size: 64, offset: 1152)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !379, line: 18, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !794, file: !795, line: 139, baseType: !985, size: 64, offset: 1216)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !987, line: 16, flags: DIFlagFwdDecl)
!987 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!988 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !794, file: !795, line: 140, baseType: !989, size: 64, offset: 1280)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !795, line: 25, size: 64, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !990, file: !795, line: 26, baseType: !247, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !990, file: !795, line: 27, baseType: !93, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !990, file: !795, line: 28, baseType: !995, offset: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, elements: !785)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 142, baseType: !997, size: 128, offset: 1344)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 142, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !997, file: !795, line: 143, baseType: !93, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !997, file: !795, line: 144, baseType: !712, size: 128, align: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !700, file: !19, line: 1013, baseType: !1002, size: 256, offset: 960)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1002, file: !19, line: 971, baseType: !113, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1002, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1002, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1002, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1002, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1002, file: !19, line: 976, baseType: !531, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !700, file: !19, line: 1014, baseType: !1011, size: 128, offset: 1216)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1012, line: 8, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1011, file: !1012, line: 9, baseType: !515, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1011, file: !1012, line: 10, baseType: !407, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !700, file: !19, line: 1015, baseType: !372, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !700, file: !19, line: 1016, baseType: !1018, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1021)
!1021 = !{!1022, !1023, !1028, !1032, !1036, !1064, !1065, !1071, !1084, !1092, !1096, !1097, !1564, !1565, !1569, !1574, !1575, !1579, !1583, !1589, !1590, !1594, !1595, !1602, !1606, !1610, !1616, !1620, !1624, !1628, !1632, !1633, !1639}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1020, file: !19, line: 1915, baseType: !196, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1020, file: !19, line: 1916, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!531, !1027, !531, !93}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1020, file: !19, line: 1917, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!326, !1027, !134, !340, !683}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1020, file: !19, line: 1918, baseType: !1033, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!326, !1027, !114, !340, !683}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1020, file: !19, line: 1919, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!326, !1040, !1062}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1049, !1050, !1051, !1052}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1041, file: !19, line: 374, baseType: !1027, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1041, file: !19, line: 375, baseType: !531, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1041, file: !19, line: 376, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !1040, !118}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1041, file: !19, line: 377, baseType: !117, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1041, file: !19, line: 378, baseType: !93, size: 32, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1041, file: !19, line: 379, baseType: !263, size: 16, offset: 288)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !19, line: 380, baseType: !1053, size: 64, offset: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !19, line: 380, size: 64, elements: !1054)
!1054 = !{!1055, !1058}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1053, file: !19, line: 386, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !19, line: 386, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1053, file: !19, line: 395, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!326, !117}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !19, line: 69, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1020, file: !19, line: 1920, baseType: !1037, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1020, file: !19, line: 1921, baseType: !1066, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!93, !1040, !1069, !7}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1020, file: !19, line: 1923, baseType: !1072, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!93, !1027, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !1077)
!1077 = !{!1078, !1083}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1076, file: !19, line: 1859, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!143, !1075, !114, !93, !531, !443, !7}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1076, file: !19, line: 1860, baseType: !531, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1020, file: !19, line: 1924, baseType: !1085, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1088, !1027, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1089, line: 59, baseType: !7)
!1089 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !19, line: 61, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1020, file: !19, line: 1925, baseType: !1093, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!118, !1027, !7, !113}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1020, file: !19, line: 1926, baseType: !1093, size: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1020, file: !19, line: 1927, baseType: !1098, size: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!93, !1027, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !32, line: 625, size: 1344, elements: !1103)
!1103 = !{!1104, !1113, !1281, !1287, !1294, !1295, !1300, !1301, !1306, !1307, !1310, !1557, !1558, !1559, !1560, !1561, !1562}
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !32, line: 628, baseType: !1105, size: 128)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1102, file: !32, line: 628, size: 128, elements: !1106)
!1106 = !{!1107, !1112}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !32, line: 629, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1105, file: !32, line: 629, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1108, file: !32, line: 631, baseType: !113, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1108, file: !32, line: 632, baseType: !113, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1105, file: !32, line: 635, baseType: !712, size: 128, align: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1102, file: !32, line: 639, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !32, line: 733, size: 10240, elements: !1116)
!1116 = !{!1117, !1279}
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !32, line: 734, baseType: !1118, size: 10240)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !32, line: 734, size: 10240, elements: !1119)
!1119 = !{!1120, !1124, !1137, !1141, !1142, !1143, !1144, !1145, !1146, !1155, !1156, !1157, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1198, !1201, !1248, !1249, !1250, !1253, !1254, !1255, !1258, !1259, !1260, !1266, !1267}
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !32, line: 739, baseType: !1121, size: 512, align: 512)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1118, file: !32, line: 739, size: 512, align: 512, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1121, file: !32, line: 747, baseType: !247, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1118, file: !32, line: 750, baseType: !1125, size: 128, offset: 512)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1126, line: 218, size: 128, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1127 = !{!1128, !1135, !1136}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1126, line: 219, baseType: !1129, size: 32)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !1126, line: 219, size: 32, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1129, file: !1126, line: 220, baseType: !227, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1129, file: !1126, line: 221, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1126, line: 197, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1126, line: 197, elements: !573)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1125, file: !1126, line: 223, baseType: !7, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1125, file: !1126, line: 224, baseType: !117, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1118, file: !32, line: 752, baseType: !1138, size: 64, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!113, !1027, !113, !113, !113, !113}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1118, file: !32, line: 756, baseType: !113, size: 64, offset: 704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1118, file: !32, line: 757, baseType: !113, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1118, file: !32, line: 760, baseType: !113, size: 64, offset: 832)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1118, file: !32, line: 761, baseType: !113, size: 64, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1118, file: !32, line: 763, baseType: !113, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1118, file: !32, line: 764, baseType: !1147, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1149, line: 299, baseType: !1150)
!1149 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1149, line: 299, size: 64, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1150, file: !1149, line: 299, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1154, line: 18, baseType: !113)
!1154 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1118, file: !32, line: 773, baseType: !247, size: 32, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1118, file: !32, line: 785, baseType: !247, size: 32, offset: 1120)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1118, file: !32, line: 795, baseType: !1158, size: 64, offset: 1152)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !32, line: 726, size: 128, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1159, file: !32, line: 727, baseType: !443, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1159, file: !32, line: 728, baseType: !93, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1118, file: !32, line: 801, baseType: !113, size: 64, offset: 1216)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1118, file: !32, line: 804, baseType: !658, size: 64, offset: 1280)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1118, file: !32, line: 806, baseType: !93, size: 32, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1118, file: !32, line: 808, baseType: !227, size: 32, offset: 1376)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1118, file: !32, line: 823, baseType: !842, size: 320, offset: 1408)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1118, file: !32, line: 825, baseType: !201, size: 128, offset: 1728)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1118, file: !32, line: 845, baseType: !93, size: 32, offset: 1856)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1118, file: !32, line: 849, baseType: !113, size: 64, offset: 1920)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1118, file: !32, line: 850, baseType: !113, size: 64, offset: 1984)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1118, file: !32, line: 852, baseType: !113, size: 64, offset: 2048)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1118, file: !32, line: 853, baseType: !113, size: 64, offset: 2112)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1118, file: !32, line: 854, baseType: !660, size: 64, offset: 2176)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1118, file: !32, line: 855, baseType: !113, size: 64, offset: 2240)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1118, file: !32, line: 856, baseType: !113, size: 64, offset: 2304)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1118, file: !32, line: 857, baseType: !113, size: 64, offset: 2368)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1118, file: !32, line: 858, baseType: !113, size: 64, offset: 2432)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1118, file: !32, line: 865, baseType: !418, size: 32, offset: 2496)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1118, file: !32, line: 867, baseType: !227, size: 32, offset: 2528)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1118, file: !32, line: 869, baseType: !113, size: 64, offset: 2560)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1118, file: !32, line: 869, baseType: !113, size: 64, offset: 2624)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1118, file: !32, line: 869, baseType: !113, size: 64, offset: 2688)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1118, file: !32, line: 869, baseType: !113, size: 64, offset: 2752)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1118, file: !32, line: 870, baseType: !113, size: 64, offset: 2816)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1118, file: !32, line: 870, baseType: !113, size: 64, offset: 2880)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1118, file: !32, line: 870, baseType: !113, size: 64, offset: 2944)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1118, file: !32, line: 871, baseType: !113, size: 64, offset: 3008)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1118, file: !32, line: 871, baseType: !113, size: 64, offset: 3072)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1118, file: !32, line: 871, baseType: !113, size: 64, offset: 3136)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1118, file: !32, line: 871, baseType: !113, size: 64, offset: 3200)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1118, file: !32, line: 873, baseType: !1193, size: 3328, offset: 3264)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3328, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 52)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1118, file: !32, line: 875, baseType: !1197, size: 1280, offset: 6592)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 1280, elements: !766)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1118, file: !32, line: 877, baseType: !1199, size: 64, offset: 7872)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !32, line: 877, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1118, file: !32, line: 880, baseType: !1202, size: 1088, offset: 7936)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1203, line: 72, baseType: !1204)
!1203 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1203, line: 23, size: 1088, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1213, !1214, !1215, !1216, !1243, !1244, !1245}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1204, file: !1203, line: 28, baseType: !443, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1204, file: !1203, line: 38, baseType: !660, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1204, file: !1203, line: 40, baseType: !113, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1204, file: !1203, line: 43, baseType: !842, size: 320, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1204, file: !1203, line: 44, baseType: !1211, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1203, line: 44, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1203, line: 48, baseType: !113, size: 64, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1204, file: !1203, line: 59, baseType: !654, size: 256, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1204, file: !1203, line: 60, baseType: !117, size: 64, offset: 896)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1204, file: !1203, line: 61, baseType: !1217, size: 64, offset: 960)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1220, line: 13, size: 1216, elements: !1221)
!1220 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1219, file: !1220, line: 14, baseType: !117, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1219, file: !1220, line: 15, baseType: !113, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1219, file: !1220, line: 17, baseType: !113, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1219, file: !1220, line: 17, baseType: !113, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1219, file: !1220, line: 18, baseType: !113, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1219, file: !1220, line: 18, baseType: !113, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1219, file: !1220, line: 19, baseType: !1229, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1219, file: !1220, line: 21, baseType: !118, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1219, file: !1220, line: 23, baseType: !118, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1219, file: !1220, line: 24, baseType: !118, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1219, file: !1220, line: 25, baseType: !118, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1219, file: !1220, line: 26, baseType: !118, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1219, file: !1220, line: 27, baseType: !118, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1219, file: !1220, line: 28, baseType: !118, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1219, file: !1220, line: 29, baseType: !118, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1219, file: !1220, line: 30, baseType: !118, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1219, file: !1220, line: 31, baseType: !118, size: 64, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1219, file: !1220, line: 32, baseType: !118, size: 64, offset: 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1219, file: !1220, line: 33, baseType: !118, size: 64, offset: 1152)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1204, file: !1203, line: 63, baseType: !247, size: 32, offset: 1024)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1204, file: !1203, line: 69, baseType: !263, size: 16, offset: 1056)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1204, file: !1203, line: 70, baseType: !1246, size: 16, offset: 1072)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !120, line: 18, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !122, line: 23, baseType: !870)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !32, line: 882, baseType: !113, size: 64, offset: 9024)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1118, file: !32, line: 885, baseType: !227, size: 32, offset: 9088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1118, file: !32, line: 886, baseType: !1251, size: 64, offset: 9152)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !32, line: 732, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1118, file: !32, line: 901, baseType: !982, size: 64, offset: 9216)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1118, file: !32, line: 904, baseType: !1027, size: 64, offset: 9280)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1118, file: !32, line: 906, baseType: !1256, size: 64, offset: 9344)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !32, line: 906, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1118, file: !32, line: 930, baseType: !247, size: 32, offset: 9408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1118, file: !32, line: 933, baseType: !247, size: 32, offset: 9440)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1118, file: !32, line: 935, baseType: !1261, size: 64, offset: 9472)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1261, file: !73, line: 104, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1118, file: !32, line: 940, baseType: !658, size: 64, offset: 9536)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1118, file: !32, line: 942, baseType: !1268, size: 256, offset: 9600)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1269, line: 98, size: 256, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1268, file: !1269, line: 99, baseType: !658, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1268, file: !1269, line: 100, baseType: !201, size: 128, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1268, file: !1269, line: 101, baseType: !1274, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1269, line: 21, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1115, file: !32, line: 986, baseType: !1280, offset: 10240)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !785)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1102, file: !32, line: 640, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1149, line: 297, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1149, line: 297, size: 64, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1283, file: !1149, line: 297, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1154, line: 19, baseType: !113)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !32, line: 646, baseType: !1288, size: 64, offset: 256)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1102, file: !32, line: 646, size: 64, elements: !1289)
!1289 = !{!1290, !1293}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1288, file: !32, line: 647, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !32, line: 542, baseType: !113)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1288, file: !32, line: 648, baseType: !1292, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1102, file: !32, line: 666, baseType: !93, size: 32, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1102, file: !32, line: 667, baseType: !1296, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !32, line: 579, size: 320, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1297, file: !32, line: 580, baseType: !842, size: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1102, file: !32, line: 670, baseType: !143, size: 8, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1102, file: !32, line: 681, baseType: !1302, size: 256, offset: 512)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !32, line: 678, size: 256, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1302, file: !32, line: 679, baseType: !834, size: 192, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1302, file: !32, line: 680, baseType: !113, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1102, file: !32, line: 689, baseType: !201, size: 128, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1102, file: !32, line: 691, baseType: !1308, size: 64, offset: 896)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !32, line: 691, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1102, file: !32, line: 694, baseType: !1311, size: 64, offset: 960)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1314, line: 563, size: 1024, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1315 = !{!1316, !1320, !1321, !1325, !1329, !1333, !1521, !1525, !1529, !1533, !1534, !1535, !1539, !1543, !1549, !1553}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1313, file: !1314, line: 564, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !1101}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1313, file: !1314, line: 569, baseType: !1317, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1313, file: !1314, line: 571, baseType: !1322, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!93, !1101, !113}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1313, file: !1314, line: 572, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!93, !1101}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1313, file: !1314, line: 578, baseType: !1330, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!93, !1101, !113, !113, !113}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1313, file: !1314, line: 580, baseType: !1334, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !32, line: 1184, baseType: !7)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1314, line: 512, size: 896, elements: !1340)
!1340 = !{!1341, !1350, !1351, !1358, !1365, !1375, !1514, !1515, !1517, !1519}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1314, line: 513, baseType: !1342, size: 320)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !1314, line: 513, size: 320, elements: !1343)
!1343 = !{!1344, !1345, !1347, !1348, !1349}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1342, file: !1314, line: 514, baseType: !1101, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1342, file: !1314, line: 515, baseType: !1346, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !144, line: 154, baseType: !7)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1342, file: !1314, line: 516, baseType: !113, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1342, file: !1314, line: 517, baseType: !113, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1342, file: !1314, line: 518, baseType: !113, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1339, file: !1314, line: 520, baseType: !31, size: 32, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1339, file: !1314, line: 522, baseType: !1352, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1154, line: 22, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1154, line: 22, size: 64, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1354, file: !1154, line: 22, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1154, line: 15, baseType: !113)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1339, file: !1314, line: 524, baseType: !1359, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1149, line: 372, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1149, line: 372, size: 64, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1361, file: !1149, line: 372, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1154, line: 16, baseType: !113)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1314, line: 527, baseType: !1366, size: 64, offset: 512)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1314, line: 527, size: 64, elements: !1367)
!1367 = !{!1368, !1374}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1366, file: !1314, line: 528, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1154, line: 21, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1154, line: 21, size: 64, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1370, file: !1154, line: 21, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1154, line: 14, baseType: !113)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1366, file: !1314, line: 529, baseType: !1353, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1339, file: !1314, line: 534, baseType: !1376, size: 64, offset: 576)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !32, line: 74, size: 512, align: 128, elements: !1378)
!1378 = !{!1379, !1380, !1508, !1513}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1377, file: !32, line: 75, baseType: !113, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !32, line: 83, baseType: !1381, size: 320, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !32, line: 83, size: 320, elements: !1382)
!1382 = !{!1383, !1404, !1418, !1422, !1507}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !32, line: 84, baseType: !1384, size: 320)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !32, line: 84, size: 320, elements: !1385)
!1385 = !{!1386, !1397, !1398, !1403}
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !32, line: 90, baseType: !1387, size: 128)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !32, line: 90, size: 128, elements: !1388)
!1388 = !{!1389, !1390, !1395, !1396}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1387, file: !32, line: 91, baseType: !201, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !32, line: 94, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1387, file: !32, line: 94, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1391, file: !32, line: 96, baseType: !117, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1391, file: !32, line: 98, baseType: !7, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1387, file: !32, line: 102, baseType: !201, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1387, file: !32, line: 103, baseType: !201, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1384, file: !32, line: 106, baseType: !368, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !32, line: 107, baseType: !1399, size: 64, offset: 192)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !32, line: 107, size: 64, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1399, file: !32, line: 108, baseType: !113, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1399, file: !32, line: 109, baseType: !113, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1384, file: !32, line: 117, baseType: !113, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !32, line: 119, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !32, line: 119, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1411, !1412, !1413}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1405, file: !32, line: 124, baseType: !113, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1405, file: !32, line: 125, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !32, line: 125, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1405, file: !32, line: 126, baseType: !113, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1405, file: !32, line: 127, baseType: !113, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !32, line: 128, baseType: !1414, size: 64, offset: 256)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !32, line: 128, size: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1414, file: !32, line: 133, baseType: !113, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1414, file: !32, line: 138, baseType: !658, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !32, line: 141, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !32, line: 141, size: 64, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1419, file: !32, line: 142, baseType: !113, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !32, line: 144, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !32, line: 144, size: 128, elements: !1424)
!1424 = !{!1425, !1506}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1423, file: !32, line: 146, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 126, size: 1216, elements: !1428)
!1428 = !{!1429, !1439, !1460, !1471, !1472, !1473, !1474, !1488, !1489, !1490}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1427, file: !48, line: 127, baseType: !1430, size: 384)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 21, size: 384, elements: !1431)
!1431 = !{!1432, !1433, !1435, !1436, !1437, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1430, file: !48, line: 22, baseType: !113, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1430, file: !48, line: 23, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1430, file: !48, line: 24, baseType: !1434, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1430, file: !48, line: 25, baseType: !113, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1430, file: !48, line: 26, baseType: !113, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1430, file: !48, line: 27, baseType: !113, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1427, file: !48, line: 128, baseType: !1440, size: 128, offset: 384)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1441, line: 105, size: 128, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1440, file: !1441, line: 110, baseType: !113, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1440, file: !1441, line: 118, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1441, line: 95, size: 448, elements: !1447)
!1447 = !{!1448, !1449, !1455, !1456, !1457, !1458, !1459}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1446, file: !1441, line: 96, baseType: !658, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1446, file: !1441, line: 97, baseType: !1450, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1441, line: 60, baseType: !1452)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1446, file: !1441, line: 98, baseType: !1450, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1446, file: !1441, line: 99, baseType: !143, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1446, file: !1441, line: 100, baseType: !143, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !1441, line: 101, baseType: !712, size: 128, align: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1446, file: !1441, line: 102, baseType: !1454, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1427, file: !48, line: 129, baseType: !1461, size: 256, offset: 512)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1462, line: 26, size: 256, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1461, file: !1462, line: 27, baseType: !7, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1461, file: !1462, line: 28, baseType: !1466, size: 192, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1467, line: 43, size: 192, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1467, line: 44, baseType: !667, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1466, file: !1467, line: 45, baseType: !201, size: 128, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1427, file: !48, line: 130, baseType: !47, size: 32, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !48, line: 131, baseType: !7, size: 32, offset: 800)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1427, file: !48, line: 132, baseType: !113, size: 64, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1427, file: !48, line: 133, baseType: !1475, size: 64, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 77, size: 192, elements: !1478)
!1478 = !{!1479, !1483, !1484}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1477, file: !48, line: 83, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1376}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1477, file: !48, line: 89, baseType: !1334, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1477, file: !48, line: 100, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!93, !1426, !113, !113, !93}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1427, file: !48, line: 134, baseType: !117, size: 64, offset: 960)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1427, file: !48, line: 135, baseType: !93, size: 32, offset: 1024)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !48, line: 136, baseType: !1491, size: 128, offset: 1088)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !48, line: 136, size: 128, elements: !1492)
!1492 = !{!1493, !1499}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1491, file: !48, line: 137, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1495, line: 6, size: 128, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1494, file: !1495, line: 7, baseType: !443, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1494, file: !1495, line: 8, baseType: !443, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !48, line: 138, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !48, line: 138, elements: !1501)
!1501 = !{!1502, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1500, file: !48, line: 138, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !48, line: 138, elements: !573)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1500, file: !48, line: 138, baseType: !1505)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1494, elements: !785)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1423, file: !32, line: 147, baseType: !117, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1381, file: !32, line: 161, baseType: !712, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !32, line: 164, baseType: !1509, size: 32, offset: 384)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !32, line: 164, size: 32, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1509, file: !32, line: 169, baseType: !247, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1509, file: !32, line: 177, baseType: !7, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1377, file: !32, line: 181, baseType: !247, size: 32, offset: 416)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1339, file: !1314, line: 535, baseType: !1376, size: 64, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1339, file: !1314, line: 541, baseType: !1516, size: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1339, file: !1314, line: 545, baseType: !1518, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1339, file: !1314, line: 549, baseType: !1520, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1149, line: 520, baseType: !1376)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1313, file: !1314, line: 581, baseType: !1522, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1337, !1338, !7}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1313, file: !1314, line: 582, baseType: !1526, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!1337, !1338, !113, !113}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1313, file: !1314, line: 584, baseType: !1530, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!113, !1101}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1313, file: !1314, line: 588, baseType: !1334, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1313, file: !1314, line: 591, baseType: !1334, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1313, file: !1314, line: 597, baseType: !1536, size: 64, offset: 704)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!93, !1101, !113, !117, !93, !93}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1313, file: !1314, line: 603, baseType: !1540, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!114, !1101}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1313, file: !1314, line: 613, baseType: !1544, size: 64, offset: 832)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!93, !1101, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !32, line: 717, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1313, file: !1314, line: 625, baseType: !1550, size: 64, offset: 896)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1547, !1101, !113}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1313, file: !1314, line: 633, baseType: !1554, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1376, !1101, !113}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1102, file: !32, line: 697, baseType: !113, size: 64, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1102, file: !32, line: 699, baseType: !1027, size: 64, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1102, file: !32, line: 700, baseType: !117, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1102, file: !32, line: 711, baseType: !658, size: 64, offset: 1216)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1102, file: !32, line: 717, baseType: !1547, size: 64, offset: 1280)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1102, file: !32, line: 722, baseType: !1563, offset: 1344)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !32, line: 570, elements: !573)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1020, file: !19, line: 1928, baseType: !113, size: 64, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1020, file: !19, line: 1929, baseType: !1566, size: 64, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!93, !372, !1027}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1020, file: !19, line: 1930, baseType: !1570, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!93, !1027, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !117)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1020, file: !19, line: 1931, baseType: !1566, size: 64, offset: 960)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1020, file: !19, line: 1932, baseType: !1576, size: 64, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!93, !1027, !531, !531, !93}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1020, file: !19, line: 1933, baseType: !1580, size: 64, offset: 1088)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!93, !93, !1027, !93}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1020, file: !19, line: 1934, baseType: !1584, size: 64, offset: 1152)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!93, !1027, !93, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1020, file: !19, line: 1935, baseType: !1138, size: 64, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1020, file: !19, line: 1936, baseType: !1591, size: 64, offset: 1280)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!93, !93}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1020, file: !19, line: 1937, baseType: !1584, size: 64, offset: 1344)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1020, file: !19, line: 1938, baseType: !1596, size: 64, offset: 1408)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!326, !1599, !1027, !683, !340, !7}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1601, line: 59, flags: DIFlagFwdDecl)
!1601 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1020, file: !19, line: 1939, baseType: !1603, size: 64, offset: 1472)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!326, !1027, !683, !1599, !340, !7}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1020, file: !19, line: 1940, baseType: !1607, size: 64, offset: 1536)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1027}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1020, file: !19, line: 1941, baseType: !1611, size: 64, offset: 1600)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!93, !1027, !93, !1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1020, file: !19, line: 1942, baseType: !1617, size: 64, offset: 1664)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!118, !1027, !93, !531, !531}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1020, file: !19, line: 1944, baseType: !1621, size: 64, offset: 1728)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !642, !1027}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1020, file: !19, line: 1948, baseType: !1625, size: 64, offset: 1792)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!326, !1027, !531, !1027, !531, !340, !7}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1020, file: !19, line: 1950, baseType: !1629, size: 64, offset: 1856)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!531, !1027, !531, !1027, !531, !531, !7}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1020, file: !19, line: 1953, baseType: !1576, size: 64, offset: 1920)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1020, file: !19, line: 1954, baseType: !1634, size: 64, offset: 1984)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!93, !1637, !7}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1020, file: !19, line: 1955, baseType: !1640, size: 64, offset: 2048)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!93, !1637, !1069, !7}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !700, file: !19, line: 1018, baseType: !443, size: 64, offset: 1472)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !700, file: !19, line: 1020, baseType: !117, size: 64, offset: 1536)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !700, file: !19, line: 1023, baseType: !117, size: 64, offset: 1600)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !700, file: !19, line: 1027, baseType: !1647, size: 64, offset: 1664)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !700, file: !19, line: 1029, baseType: !368, size: 64, offset: 1728)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !700, file: !19, line: 1030, baseType: !1650, size: 32, offset: 1792)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1651, line: 8, baseType: !119)
!1651 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !700, file: !19, line: 1031, baseType: !1650, size: 32, offset: 1824)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !643, file: !644, line: 29, baseType: !117, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !585, file: !19, line: 2077, baseType: !639, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !585, file: !19, line: 2078, baseType: !639, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !585, file: !19, line: 2079, baseType: !639, size: 64, offset: 1216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !585, file: !19, line: 2081, baseType: !1658, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!326, !521, !93, !134, !340, !531}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !585, file: !19, line: 2082, baseType: !1662, size: 64, offset: 1344)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!326, !521, !93, !114, !340, !531}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !585, file: !19, line: 2083, baseType: !1666, size: 64, offset: 1408)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!1669, !372}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !56, line: 296, size: 1664, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1697, !1698, !1699}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1671, file: !56, line: 297, baseType: !565, size: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1671, file: !56, line: 298, baseType: !201, size: 128, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1671, file: !56, line: 299, baseType: !201, size: 128, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1671, file: !56, line: 300, baseType: !201, size: 128, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1671, file: !56, line: 301, baseType: !654, size: 256, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1671, file: !56, line: 302, baseType: !227, size: 32, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1671, file: !56, line: 303, baseType: !247, size: 32, offset: 800)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1671, file: !56, line: 304, baseType: !521, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1671, file: !56, line: 305, baseType: !1682, size: 64, offset: 896)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !56, line: 68, size: 64, elements: !1683)
!1683 = !{!1684, !1696}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !56, line: 69, baseType: !1685, size: 32)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !56, line: 69, size: 32, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1685, file: !56, line: 70, baseType: !378, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1685, file: !56, line: 71, baseType: !387, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1685, file: !56, line: 72, baseType: !1690, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1691, line: 24, baseType: !1692)
!1691 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1691, line: 22, size: 32, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1692, file: !1691, line: 23, baseType: !1695, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1691, line: 20, baseType: !384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1682, file: !56, line: 74, baseType: !55, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1671, file: !56, line: 306, baseType: !531, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1671, file: !56, line: 307, baseType: !113, size: 64, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1671, file: !56, line: 308, baseType: !1700, size: 576, offset: 1088)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !56, line: 205, size: 576, elements: !1701)
!1701 = !{!1702, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1700, file: !56, line: 206, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !56, line: 66, baseType: !533)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1700, file: !56, line: 207, baseType: !1703, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1700, file: !56, line: 208, baseType: !1703, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1700, file: !56, line: 209, baseType: !1703, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1700, file: !56, line: 210, baseType: !1703, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1700, file: !56, line: 211, baseType: !1703, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1700, file: !56, line: 212, baseType: !1703, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1700, file: !56, line: 213, baseType: !858, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1700, file: !56, line: 214, baseType: !858, size: 64, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !585, file: !19, line: 2085, baseType: !1713, size: 64, offset: 1472)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!118, !521, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1718, line: 15, size: 256, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1719 = !{!1720, !1721, !1722, !1723, !1724}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1717, file: !1718, line: 16, baseType: !1346, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1717, file: !1718, line: 19, baseType: !93, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1717, file: !1718, line: 26, baseType: !113, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1717, file: !1718, line: 33, baseType: !113, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1717, file: !1718, line: 36, baseType: !1725, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1718, line: 36, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !585, file: !19, line: 2087, baseType: !1713, size: 64, offset: 1536)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !585, file: !19, line: 2089, baseType: !555, size: 64, offset: 1600)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !522, file: !19, line: 1198, baseType: !1730, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !56, line: 324, size: 704, elements: !1733)
!1733 = !{!1734, !1738, !1742, !1746, !1747, !1748, !1749, !1750, !1755, !1760, !1764}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1732, file: !56, line: 325, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!93, !1670}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1732, file: !56, line: 326, baseType: !1739, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!1670, !521, !93}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1732, file: !56, line: 327, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1670}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1732, file: !56, line: 328, baseType: !1735, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1732, file: !56, line: 329, baseType: !1735, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1732, file: !56, line: 330, baseType: !1735, size: 64, offset: 320)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1732, file: !56, line: 331, baseType: !613, size: 64, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1732, file: !56, line: 334, baseType: !1751, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1754, !372}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1732, file: !56, line: 335, baseType: !1756, size: 64, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!93, !372, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1732, file: !56, line: 337, baseType: !1761, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!93, !372, !1754}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1732, file: !56, line: 339, baseType: !1765, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!93, !521, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !522, file: !19, line: 1199, baseType: !1770, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !56, line: 430, size: 704, elements: !1773)
!1773 = !{!1774, !1780, !1781, !1785, !1786, !1787, !1802, !1825, !1829, !1830, !1853}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1772, file: !56, line: 431, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!93, !521, !93, !93, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1772, file: !56, line: 432, baseType: !613, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1772, file: !56, line: 433, baseType: !1782, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!93, !521, !7}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1772, file: !56, line: 434, baseType: !1782, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1772, file: !56, line: 435, baseType: !613, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1772, file: !56, line: 436, baseType: !1788, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!93, !521, !93, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !56, line: 417, size: 256, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1792, file: !56, line: 418, baseType: !93, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1792, file: !56, line: 419, baseType: !7, size: 32, offset: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1792, file: !56, line: 420, baseType: !7, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1792, file: !56, line: 422, baseType: !7, size: 32, offset: 96)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1792, file: !56, line: 423, baseType: !7, size: 32, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1792, file: !56, line: 424, baseType: !7, size: 32, offset: 160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1792, file: !56, line: 425, baseType: !7, size: 32, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1792, file: !56, line: 426, baseType: !7, size: 32, offset: 224)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1772, file: !56, line: 437, baseType: !1803, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!93, !521, !1682, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !56, line: 345, size: 960, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1807, file: !56, line: 346, baseType: !93, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1807, file: !56, line: 347, baseType: !443, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1807, file: !56, line: 348, baseType: !443, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1807, file: !56, line: 349, baseType: !443, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1807, file: !56, line: 350, baseType: !443, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1807, file: !56, line: 351, baseType: !443, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1807, file: !56, line: 352, baseType: !443, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1807, file: !56, line: 353, baseType: !664, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1807, file: !56, line: 355, baseType: !664, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1807, file: !56, line: 356, baseType: !93, size: 32, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1807, file: !56, line: 357, baseType: !93, size: 32, offset: 608)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1807, file: !56, line: 358, baseType: !443, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1807, file: !56, line: 359, baseType: !443, size: 64, offset: 704)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1807, file: !56, line: 360, baseType: !443, size: 64, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1807, file: !56, line: 361, baseType: !664, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1807, file: !56, line: 362, baseType: !93, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1772, file: !56, line: 438, baseType: !1826, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!93, !521, !1768, !1806}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1772, file: !56, line: 440, baseType: !1803, size: 64, offset: 512)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1772, file: !56, line: 441, baseType: !1831, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!93, !521, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !56, line: 411, size: 1408, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1835, file: !56, line: 412, baseType: !7, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1835, file: !56, line: 413, baseType: !1839, size: 1344, offset: 64)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, size: 1344, elements: !295)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !56, line: 397, size: 448, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1852}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1840, file: !56, line: 398, baseType: !7, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1840, file: !56, line: 399, baseType: !7, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1840, file: !56, line: 401, baseType: !7, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1840, file: !56, line: 402, baseType: !7, size: 32, offset: 96)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1840, file: !56, line: 403, baseType: !7, size: 32, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1840, file: !56, line: 404, baseType: !7, size: 32, offset: 160)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1840, file: !56, line: 405, baseType: !7, size: 32, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1840, file: !56, line: 406, baseType: !445, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1840, file: !56, line: 407, baseType: !1851, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !144, line: 132, baseType: !443)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1840, file: !56, line: 408, baseType: !1851, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1772, file: !56, line: 442, baseType: !1782, size: 64, offset: 640)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !522, file: !19, line: 1200, baseType: !1855, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !522, file: !19, line: 1201, baseType: !113, size: 64, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !522, file: !19, line: 1202, baseType: !113, size: 64, offset: 704)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !522, file: !19, line: 1203, baseType: !113, size: 64, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !522, file: !19, line: 1204, baseType: !407, size: 64, offset: 832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !522, file: !19, line: 1205, baseType: !842, size: 320, offset: 896)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !522, file: !19, line: 1206, baseType: !93, size: 32, offset: 1216)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !522, file: !19, line: 1207, baseType: !247, size: 32, offset: 1248)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !522, file: !19, line: 1209, baseType: !117, size: 64, offset: 1280)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !522, file: !19, line: 1211, baseType: !1867, size: 64, offset: 1344)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !522, file: !19, line: 1223, baseType: !1872, size: 64, offset: 1408)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !424, line: 34, size: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1872, file: !424, line: 35, baseType: !427, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !522, file: !19, line: 1224, baseType: !201, size: 128, offset: 1472)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !522, file: !19, line: 1225, baseType: !1877, size: 64, offset: 1600)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !19, line: 1225, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !522, file: !19, line: 1226, baseType: !1880, size: 64, offset: 1664)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !522, file: !19, line: 1227, baseType: !1883, size: 64, offset: 1728)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !19, line: 50, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !522, file: !19, line: 1228, baseType: !1886, size: 64, offset: 1792)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !522, file: !19, line: 1229, baseType: !565, size: 128, offset: 1856)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !522, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !522, file: !19, line: 1231, baseType: !1891, size: 2496, offset: 2048)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !56, line: 521, size: 2496, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1897, !1929}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !56, line: 522, baseType: !7, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1891, file: !56, line: 523, baseType: !842, size: 320, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1891, file: !56, line: 524, baseType: !1896, size: 192, offset: 384)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !295)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1891, file: !56, line: 525, baseType: !1898, size: 1728, offset: 576)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 1728, elements: !295)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !56, line: 222, size: 576, elements: !1900)
!1900 = !{!1901, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1899, file: !56, line: 223, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !56, line: 445, size: 256, elements: !1904)
!1904 = !{!1905, !1906, !1919, !1920}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1903, file: !56, line: 446, baseType: !93, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1903, file: !56, line: 447, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !56, line: 312, size: 512, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1909, file: !56, line: 313, baseType: !613, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1909, file: !56, line: 314, baseType: !613, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1909, file: !56, line: 315, baseType: !613, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1909, file: !56, line: 316, baseType: !613, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1909, file: !56, line: 317, baseType: !1735, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1909, file: !56, line: 318, baseType: !1735, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1909, file: !56, line: 319, baseType: !1735, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1909, file: !56, line: 320, baseType: !1765, size: 64, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1903, file: !56, line: 448, baseType: !196, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1903, file: !56, line: 449, baseType: !1902, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1899, file: !56, line: 224, baseType: !93, size: 32, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1899, file: !56, line: 226, baseType: !201, size: 128, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1899, file: !56, line: 227, baseType: !113, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1899, file: !56, line: 228, baseType: !7, size: 32, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1899, file: !56, line: 229, baseType: !7, size: 32, offset: 352)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1899, file: !56, line: 230, baseType: !1703, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1899, file: !56, line: 231, baseType: !1703, size: 64, offset: 448)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1899, file: !56, line: 232, baseType: !117, size: 64, offset: 512)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1891, file: !56, line: 526, baseType: !1930, size: 192, offset: 2304)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1907, size: 192, elements: !295)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !522, file: !19, line: 1233, baseType: !1932, size: 2368, offset: 4544)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !1933)
!1933 = !{!1934, !1935, !1936}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1932, file: !19, line: 1185, baseType: !265, size: 16)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1932, file: !19, line: 1186, baseType: !265, size: 16, offset: 16)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1932, file: !19, line: 1187, baseType: !1937, size: 2304, offset: 64)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1938, size: 2304, elements: !295)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1939, line: 12, size: 768, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1940 = !{!1941, !1949, !1951, !3148, !3149}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1938, file: !1939, line: 13, baseType: !1942, size: 384)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1943, line: 17, size: 384, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1944 = !{!1945, !1946, !1947, !1948}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1942, file: !1943, line: 18, baseType: !93, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1942, file: !1943, line: 19, baseType: !93, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1942, file: !1943, line: 20, baseType: !770, size: 192, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1942, file: !1943, line: 22, baseType: !712, size: 128, align: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1938, file: !1939, line: 14, baseType: !1950, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1938, file: !1939, line: 15, baseType: !1952, size: 64, offset: 448)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1953, line: 16, size: 64, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1952, file: !1953, line: 17, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1601, line: 746, size: 58368, elements: !1958)
!1958 = !{!1959, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2039, !2050, !2143, !2147, !2150, !2181, !2182, !2183, !2184, !2195, !2197, !2198, !2199, !2200, !2201, !2202, !2213, !2214, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2231, !2232, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2320, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2335, !2336, !2337, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2369, !2375, !2376, !2377, !2378, !2379, !2383, !2386, !2393, !2398, !2401, !2404, !2407, !2410, !2550, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2590, !2591, !2592, !2601, !2609, !2610, !2611, !2612, !2613, !2618, !2619, !2620, !2623, !2624, !2627, !2630, !2633, !2641, !2644, !2645, !2730, !2731, !2732, !2733, !2734, !2740, !2741, !2742, !2743, !2746, !2747, !2750, !2753, !2754, !2757, !2758, !2759, !2762, !2763, !2764, !2765, !2766, !2767, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2799, !2800, !2806, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2818, !2890, !2892, !2893, !2894, !2895, !2896, !2908, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2925, !2926, !2927}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1957, file: !1601, line: 752, baseType: !1960, size: 192)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1961, line: 56, size: 192, elements: !1962)
!1961 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1960, file: !1961, line: 57, baseType: !113, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1960, file: !1961, line: 58, baseType: !113, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1960, file: !1961, line: 59, baseType: !119, size: 32, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1960, file: !1961, line: 61, baseType: !119, size: 32, offset: 160)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1957, file: !1601, line: 754, baseType: !7, size: 32, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1957, file: !1601, line: 767, baseType: !117, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1957, file: !1601, line: 768, baseType: !757, size: 32, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1957, file: !1601, line: 770, baseType: !7, size: 32, offset: 352)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1957, file: !1601, line: 771, baseType: !7, size: 32, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1957, file: !1601, line: 774, baseType: !93, size: 32, offset: 416)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1957, file: !1601, line: 775, baseType: !1974, size: 128, offset: 448)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1975, line: 58, size: 128, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1976 = !{!1977, !1978, !1983, !1984}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1974, file: !1975, line: 59, baseType: !706, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1975, line: 60, baseType: !1979, size: 32, offset: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !1975, line: 60, size: 32, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1979, file: !1975, line: 61, baseType: !7, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1979, file: !1975, line: 62, baseType: !247, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1974, file: !1975, line: 65, baseType: !263, size: 16, offset: 96)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1974, file: !1975, line: 65, baseType: !263, size: 16, offset: 112)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1957, file: !1601, line: 776, baseType: !7, size: 32, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1957, file: !1601, line: 777, baseType: !113, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1957, file: !1601, line: 778, baseType: !1956, size: 64, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1957, file: !1601, line: 787, baseType: !93, size: 32, offset: 768)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1957, file: !1601, line: 788, baseType: !93, size: 32, offset: 800)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1957, file: !1601, line: 790, baseType: !93, size: 32, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1957, file: !1601, line: 792, baseType: !93, size: 32, offset: 864)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1957, file: !1601, line: 793, baseType: !93, size: 32, offset: 896)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1957, file: !1601, line: 794, baseType: !93, size: 32, offset: 928)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1957, file: !1601, line: 795, baseType: !7, size: 32, offset: 960)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1957, file: !1601, line: 797, baseType: !1996, size: 2048, offset: 1024)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1601, line: 551, size: 2048, elements: !1997)
!1997 = !{!1998, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2018, !2021, !2022, !2023}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1996, file: !1601, line: 553, baseType: !1999, size: 128)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1601, line: 411, size: 128, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1999, file: !1601, line: 412, baseType: !113, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1999, file: !1601, line: 413, baseType: !119, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1996, file: !1601, line: 554, baseType: !834, size: 192, align: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1996, file: !1601, line: 555, baseType: !443, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1996, file: !1601, line: 556, baseType: !443, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1996, file: !1601, line: 558, baseType: !201, size: 128, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1996, file: !1601, line: 559, baseType: !7, size: 32, offset: 576)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1996, file: !1601, line: 561, baseType: !443, size: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1996, file: !1601, line: 562, baseType: !443, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1996, file: !1601, line: 563, baseType: !443, size: 64, offset: 768)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1996, file: !1601, line: 564, baseType: !443, size: 64, offset: 832)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1996, file: !1601, line: 565, baseType: !664, size: 64, offset: 896)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1996, file: !1601, line: 566, baseType: !443, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1996, file: !1601, line: 568, baseType: !443, size: 64, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1996, file: !1601, line: 571, baseType: !93, size: 32, offset: 1088)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1996, file: !1601, line: 572, baseType: !2017, size: 64, offset: 1152)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1996, file: !1601, line: 574, baseType: !2019, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1601, line: 49, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1996, file: !1601, line: 576, baseType: !2019, size: 64, offset: 1280)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1996, file: !1601, line: 578, baseType: !113, size: 64, offset: 1344)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1996, file: !1601, line: 588, baseType: !2024, size: 512, align: 512, offset: 1536)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1601, line: 497, size: 512, align: 512, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2024, file: !1601, line: 498, baseType: !443, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2024, file: !1601, line: 499, baseType: !443, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2024, file: !1601, line: 500, baseType: !443, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2024, file: !1601, line: 501, baseType: !119, size: 32, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2024, file: !1601, line: 502, baseType: !119, size: 32, offset: 224)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2024, file: !1601, line: 503, baseType: !113, size: 64, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2024, file: !1601, line: 504, baseType: !113, size: 64, offset: 320)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2024, file: !1601, line: 505, baseType: !113, size: 64, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2024, file: !1601, line: 506, baseType: !2035, size: 64, align: 64, offset: 448)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1601, line: 445, size: 64, align: 64, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2035, file: !1601, line: 446, baseType: !7, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2035, file: !1601, line: 447, baseType: !7, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1957, file: !1601, line: 798, baseType: !2040, size: 384, offset: 3072)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1601, line: 592, size: 384, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2040, file: !1601, line: 593, baseType: !201, size: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2040, file: !1601, line: 594, baseType: !113, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2040, file: !1601, line: 595, baseType: !113, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2040, file: !1601, line: 596, baseType: !7, size: 32, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2040, file: !1601, line: 597, baseType: !265, size: 16, offset: 288)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2040, file: !1601, line: 598, baseType: !265, size: 16, offset: 304)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2040, file: !1601, line: 600, baseType: !2049, size: 64, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1957, file: !1601, line: 799, baseType: !2051, size: 1792, offset: 3456)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1601, line: 610, size: 1792, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2140, !2141}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2051, file: !1601, line: 611, baseType: !834, size: 192, align: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2051, file: !1601, line: 618, baseType: !443, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2051, file: !1601, line: 619, baseType: !443, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2051, file: !1601, line: 620, baseType: !443, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2051, file: !1601, line: 621, baseType: !443, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2051, file: !1601, line: 622, baseType: !443, size: 64, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2051, file: !1601, line: 629, baseType: !664, size: 64, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2051, file: !1601, line: 630, baseType: !443, size: 64, offset: 576)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2051, file: !1601, line: 631, baseType: !7, size: 32, offset: 640)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2051, file: !1601, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2051, file: !1601, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2051, file: !1601, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2051, file: !1601, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2051, file: !1601, line: 662, baseType: !2067, size: 512, offset: 704)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !2068)
!2068 = !{!2069, !2077, !2078, !2083, !2136, !2137, !2138, !2139}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2067, file: !62, line: 119, baseType: !2070, size: 256)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2071, line: 9, size: 256, elements: !2072)
!2071 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2070, file: !2071, line: 10, baseType: !834, size: 192, align: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2070, file: !2071, line: 11, baseType: !2075, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2076, line: 29, baseType: !664)
!2076 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2067, file: !62, line: 120, baseType: !2075, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2067, file: !62, line: 121, baseType: !2079, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!61, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2067, file: !62, line: 122, baseType: !2084, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !2086)
!2086 = !{!2087, !2110, !2111, !2114, !2119, !2120, !2131, !2135}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2085, file: !62, line: 160, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 215, size: 4608, align: 512, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2089, file: !62, line: 216, baseType: !667, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2089, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2089, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2089, file: !62, line: 219, baseType: !7, size: 32, offset: 96)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2089, file: !62, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2089, file: !62, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2089, file: !62, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2089, file: !62, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2089, file: !62, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2089, file: !62, line: 226, baseType: !7, size: 32, offset: 160)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2089, file: !62, line: 227, baseType: !265, size: 16, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2089, file: !62, line: 228, baseType: !265, size: 16, offset: 208)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2089, file: !62, line: 229, baseType: !7, size: 32, offset: 224)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2089, file: !62, line: 235, baseType: !2075, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2089, file: !62, line: 236, baseType: !2082, size: 64, offset: 320)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2089, file: !62, line: 237, baseType: !2075, size: 64, offset: 384)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2089, file: !62, line: 238, baseType: !2082, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2089, file: !62, line: 239, baseType: !2109, size: 4096, align: 512, offset: 512)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2085, size: 4096, align: 512, elements: !177)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2085, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2085, file: !62, line: 162, baseType: !2112, size: 32, offset: 96)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !144, line: 32, baseType: !2113)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !328, line: 96, baseType: !93)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2085, file: !62, line: 163, baseType: !2115, size: 32, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !414, line: 274, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !414, line: 274, size: 32, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2116, file: !414, line: 274, baseType: !418, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2085, file: !62, line: 164, baseType: !2082, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2085, file: !62, line: 165, baseType: !2121, size: 128, offset: 256)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2071, line: 14, size: 128, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2121, file: !2071, line: 15, baseType: !2124, size: 128)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !835, line: 26, size: 128, elements: !2125)
!2125 = !{!2126, !2130}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2124, file: !835, line: 27, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !835, line: 12, size: 64, elements: !2128)
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2127, file: !835, line: 13, baseType: !839, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2124, file: !835, line: 28, baseType: !839, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2085, file: !62, line: 166, baseType: !2132, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2075}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2085, file: !62, line: 167, baseType: !2075, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2067, file: !62, line: 123, baseType: !255, size: 8, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2067, file: !62, line: 124, baseType: !255, size: 8, offset: 456)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2067, file: !62, line: 125, baseType: !255, size: 8, offset: 464)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2067, file: !62, line: 126, baseType: !255, size: 8, offset: 472)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2051, file: !1601, line: 671, baseType: !2067, size: 512, offset: 1216)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2051, file: !1601, line: 679, baseType: !2142, size: 64, offset: 1728)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1957, file: !1601, line: 800, baseType: !2144, size: 64, offset: 5248)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1601, line: 800, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1957, file: !1601, line: 809, baseType: !2148, size: 64, offset: 5312)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1601, line: 70, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1957, file: !1601, line: 825, baseType: !2151, size: 2048, align: 512, offset: 5632)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1601, line: 509, size: 2048, align: 512, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2151, file: !1601, line: 511, baseType: !443, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2151, file: !1601, line: 512, baseType: !443, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2151, file: !1601, line: 513, baseType: !443, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2151, file: !1601, line: 514, baseType: !443, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2151, file: !1601, line: 515, baseType: !443, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2151, file: !1601, line: 516, baseType: !443, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2151, file: !1601, line: 518, baseType: !443, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2151, file: !1601, line: 519, baseType: !443, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2151, file: !1601, line: 520, baseType: !664, size: 64, offset: 512)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2151, file: !1601, line: 522, baseType: !443, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2151, file: !1601, line: 523, baseType: !443, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2151, file: !1601, line: 524, baseType: !664, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2151, file: !1601, line: 526, baseType: !664, size: 64, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2151, file: !1601, line: 527, baseType: !443, size: 64, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2151, file: !1601, line: 529, baseType: !443, size: 64, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2151, file: !1601, line: 530, baseType: !443, size: 64, offset: 960)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2151, file: !1601, line: 531, baseType: !443, size: 64, offset: 1024)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2151, file: !1601, line: 532, baseType: !443, size: 64, offset: 1088)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2151, file: !1601, line: 533, baseType: !443, size: 64, offset: 1152)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2151, file: !1601, line: 535, baseType: !443, size: 64, offset: 1216)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2151, file: !1601, line: 536, baseType: !443, size: 64, offset: 1280)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2151, file: !1601, line: 537, baseType: !443, size: 64, offset: 1344)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2151, file: !1601, line: 538, baseType: !443, size: 64, offset: 1408)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2151, file: !1601, line: 539, baseType: !443, size: 64, offset: 1472)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2151, file: !1601, line: 540, baseType: !443, size: 64, offset: 1536)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2151, file: !1601, line: 541, baseType: !443, size: 64, offset: 1600)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2151, file: !1601, line: 542, baseType: !443, size: 64, offset: 1664)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2151, file: !1601, line: 543, baseType: !443, size: 64, offset: 1728)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1957, file: !1601, line: 833, baseType: !7, size: 32, offset: 7680)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1957, file: !1601, line: 836, baseType: !7, size: 32, offset: 7712)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1957, file: !1601, line: 837, baseType: !93, size: 32, offset: 7744)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1957, file: !1601, line: 838, baseType: !2185, size: 64, offset: 7808)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2188, line: 19, baseType: !2189)
!2188 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2188, line: 19, size: 64, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2189, file: !2188, line: 19, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 1)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1957, file: !1601, line: 839, baseType: !2196, size: 64, offset: 7872)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1957, file: !1601, line: 840, baseType: !2187, size: 64, offset: 7936)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1957, file: !1601, line: 841, baseType: !117, size: 64, offset: 8000)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1957, file: !1601, line: 843, baseType: !265, size: 16, offset: 8064)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1957, file: !1601, line: 845, baseType: !265, size: 16, offset: 8080)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1957, file: !1601, line: 848, baseType: !93, size: 32, offset: 8096)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1957, file: !1601, line: 849, baseType: !2203, size: 32, offset: 8128)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1601, line: 718, size: 32, elements: !2204)
!2204 = !{!2205, !2212}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2203, file: !1601, line: 724, baseType: !2206, size: 32)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !1601, line: 719, size: 32, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2206, file: !1601, line: 720, baseType: !255, size: 8)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2206, file: !1601, line: 721, baseType: !255, size: 8, offset: 8)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2206, file: !1601, line: 722, baseType: !255, size: 8, offset: 16)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2206, file: !1601, line: 723, baseType: !255, size: 8, offset: 24)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2203, file: !1601, line: 725, baseType: !119, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1957, file: !1601, line: 850, baseType: !201, size: 128, offset: 8192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1957, file: !1601, line: 851, baseType: !2215, size: 64, offset: 8320)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1601, line: 60, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1957, file: !1601, line: 855, baseType: !113, size: 64, offset: 8384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1957, file: !1601, line: 856, baseType: !255, size: 8, offset: 8448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1957, file: !1601, line: 857, baseType: !255, size: 8, offset: 8456)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1957, file: !1601, line: 858, baseType: !93, size: 32, offset: 8480)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1957, file: !1601, line: 859, baseType: !201, size: 128, offset: 8512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1957, file: !1601, line: 860, baseType: !93, size: 32, offset: 8640)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1957, file: !1601, line: 861, baseType: !201, size: 128, offset: 8704)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1957, file: !1601, line: 873, baseType: !2225, size: 256, offset: 8832)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1601, line: 376, size: 256, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2225, file: !1601, line: 381, baseType: !113, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2225, file: !1601, line: 384, baseType: !445, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2225, file: !1601, line: 389, baseType: !445, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2225, file: !1601, line: 392, baseType: !445, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1957, file: !1601, line: 875, baseType: !201, size: 128, offset: 9088)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1957, file: !1601, line: 877, baseType: !2233, size: 320, offset: 9216)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2234, line: 86, size: 320, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2233, file: !2234, line: 87, baseType: !93, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2233, file: !2234, line: 88, baseType: !201, size: 128, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2233, file: !2234, line: 89, baseType: !201, size: 128, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1957, file: !1601, line: 878, baseType: !834, size: 192, align: 64, offset: 9536)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1957, file: !1601, line: 881, baseType: !1114, size: 64, offset: 9728)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1957, file: !1601, line: 882, baseType: !1114, size: 64, offset: 9792)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1957, file: !1601, line: 884, baseType: !93, size: 32, offset: 9856)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1957, file: !1601, line: 885, baseType: !93, size: 32, offset: 9888)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1957, file: !1601, line: 886, baseType: !93, size: 32, offset: 9920)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1957, file: !1601, line: 888, baseType: !93, size: 32, offset: 9952)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1957, file: !1601, line: 890, baseType: !113, size: 64, offset: 9984)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1957, file: !1601, line: 893, baseType: !7, size: 32, offset: 10048)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1957, file: !1601, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1957, file: !1601, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1957, file: !1601, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1957, file: !1601, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1957, file: !1601, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1957, file: !1601, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1957, file: !1601, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1957, file: !1601, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1957, file: !1601, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1957, file: !1601, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1957, file: !1601, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1957, file: !1601, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1957, file: !1601, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1957, file: !1601, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1957, file: !1601, line: 969, baseType: !113, size: 64, offset: 10176)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1957, file: !1601, line: 971, baseType: !2264, size: 448, offset: 10240)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 448, elements: !2265)
!2265 = !{!2266, !2267, !2272}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2264, file: !67, line: 26, baseType: !113, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2264, file: !67, line: 27, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!118, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !67, line: 28, baseType: !2273, size: 320, offset: 128)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !67, line: 28, size: 320, elements: !2274)
!2274 = !{!2275, !2285, !2310}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2273, file: !67, line: 37, baseType: !2276, size: 320)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !67, line: 30, size: 320, elements: !2277)
!2277 = !{!2278, !2280, !2281, !2282, !2283, !2284}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2276, file: !67, line: 31, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2276, file: !67, line: 32, baseType: !119, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !67, line: 33, baseType: !119, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2276, file: !67, line: 34, baseType: !119, size: 32, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2276, file: !67, line: 35, baseType: !443, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2276, file: !67, line: 36, baseType: !2279, size: 64, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2273, file: !67, line: 47, baseType: !2286, size: 192)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !67, line: 39, size: 192, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2309}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2286, file: !67, line: 40, baseType: !2112, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2286, file: !67, line: 41, baseType: !66, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !67, line: 42, baseType: !2291, size: 64, offset: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !67, line: 42, size: 64, elements: !2292)
!2292 = !{!2293, !2301}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2291, file: !67, line: 43, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2296, line: 7, size: 128, elements: !2297)
!2296 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2297 = !{!2298, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2295, file: !2296, line: 8, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !328, line: 93, baseType: !533)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2295, file: !2296, line: 9, baseType: !533, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2291, file: !67, line: 44, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2304, line: 7, size: 64, elements: !2305)
!2304 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2305 = !{!2306, !2308}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2303, file: !2304, line: 8, baseType: !2307, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2304, line: 5, baseType: !827)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2303, file: !2304, line: 9, baseType: !827, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2286, file: !67, line: 46, baseType: !443, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2273, file: !67, line: 55, baseType: !2311, size: 256)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !67, line: 49, size: 256, elements: !2312)
!2312 = !{!2313, !2316, !2317, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2311, file: !67, line: 50, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2311, file: !67, line: 51, baseType: !93, size: 32, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2311, file: !67, line: 52, baseType: !93, size: 32, offset: 96)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2311, file: !67, line: 53, baseType: !113, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2311, file: !67, line: 54, baseType: !113, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1957, file: !1601, line: 973, baseType: !2321, size: 32, offset: 10688)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !144, line: 27, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !328, line: 28, baseType: !93)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1957, file: !1601, line: 974, baseType: !2321, size: 32, offset: 10720)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1957, file: !1601, line: 978, baseType: !113, size: 64, offset: 10752)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1957, file: !1601, line: 987, baseType: !1956, size: 64, offset: 10816)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1957, file: !1601, line: 990, baseType: !1956, size: 64, offset: 10880)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1957, file: !1601, line: 995, baseType: !201, size: 128, offset: 10944)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1957, file: !1601, line: 996, baseType: !201, size: 128, offset: 11072)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1957, file: !1601, line: 997, baseType: !1956, size: 64, offset: 11200)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1957, file: !1601, line: 1005, baseType: !201, size: 128, offset: 11264)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1957, file: !1601, line: 1006, baseType: !201, size: 128, offset: 11392)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1957, file: !1601, line: 1009, baseType: !753, size: 64, offset: 11520)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1957, file: !1601, line: 1010, baseType: !2334, size: 512, offset: 11584)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 512, elements: !766)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1957, file: !1601, line: 1011, baseType: !201, size: 128, offset: 12096)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1957, file: !1601, line: 1012, baseType: !201, size: 128, offset: 12224)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1957, file: !1601, line: 1014, baseType: !2338, size: 64, offset: 12352)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1957, file: !1601, line: 1017, baseType: !636, size: 64, offset: 12416)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1957, file: !1601, line: 1020, baseType: !636, size: 64, offset: 12480)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1957, file: !1601, line: 1023, baseType: !117, size: 64, offset: 12544)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1957, file: !1601, line: 1025, baseType: !443, size: 64, offset: 12608)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1957, file: !1601, line: 1026, baseType: !443, size: 64, offset: 12672)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1957, file: !1601, line: 1031, baseType: !443, size: 64, offset: 12736)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1957, file: !1601, line: 1032, baseType: !2346, size: 192, offset: 12800)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1601, line: 324, size: 192, elements: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2346, file: !1601, line: 326, baseType: !443, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2346, file: !1601, line: 327, baseType: !443, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2346, file: !1601, line: 328, baseType: !667, size: 32, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1957, file: !1601, line: 1041, baseType: !113, size: 64, offset: 12992)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1957, file: !1601, line: 1042, baseType: !113, size: 64, offset: 13056)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1957, file: !1601, line: 1045, baseType: !443, size: 64, offset: 13120)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1957, file: !1601, line: 1048, baseType: !443, size: 64, offset: 13184)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1957, file: !1601, line: 1051, baseType: !113, size: 64, offset: 13248)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1957, file: !1601, line: 1052, baseType: !113, size: 64, offset: 13312)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1957, file: !1601, line: 1055, baseType: !2358, size: 640, offset: 13376)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2359, line: 132, size: 640, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2360 = !{!2361, !2367, !2368}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2358, file: !2359, line: 133, baseType: !2362, size: 576)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 576, elements: !295)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2359, line: 117, size: 192, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2363, file: !2359, line: 118, baseType: !443, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2363, file: !2359, line: 119, baseType: !2121, size: 128, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2358, file: !2359, line: 134, baseType: !7, size: 32, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2358, file: !2359, line: 135, baseType: !7, size: 32, offset: 608)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1957, file: !1601, line: 1058, baseType: !2370, size: 448, offset: 14016)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2359, line: 144, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2370, file: !2359, line: 145, baseType: !712, size: 128, align: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2370, file: !2359, line: 146, baseType: !654, size: 256, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2370, file: !2359, line: 147, baseType: !7, size: 32, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1957, file: !1601, line: 1064, baseType: !792, size: 64, offset: 14464)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1957, file: !1601, line: 1067, baseType: !792, size: 64, offset: 14528)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1957, file: !1601, line: 1070, baseType: !792, size: 64, offset: 14592)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1957, file: !1601, line: 1074, baseType: !819, size: 64, offset: 14656)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1957, file: !1601, line: 1084, baseType: !2380, size: 128, offset: 14720)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, elements: !2381)
!2381 = !{!2382}
!2382 = !DISubrange(count: 16)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1957, file: !1601, line: 1086, baseType: !2384, size: 64, offset: 14848)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1601, line: 55, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1957, file: !1601, line: 1089, baseType: !2387, size: 64, offset: 14912)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2388, line: 12, size: 64, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2387, file: !2388, line: 13, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2388, line: 8, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1957, file: !1601, line: 1090, baseType: !2394, size: 128, offset: 14976)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2395, line: 13, size: 128, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2394, file: !2395, line: 14, baseType: !201, size: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1957, file: !1601, line: 1097, baseType: !2399, size: 64, offset: 15104)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1601, line: 50, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1957, file: !1601, line: 1100, baseType: !2402, size: 64, offset: 15168)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1601, line: 1100, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1957, file: !1601, line: 1103, baseType: !2405, size: 64, offset: 15232)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1601, line: 53, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1957, file: !1601, line: 1107, baseType: !2408, size: 64, offset: 15296)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1601, line: 56, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1957, file: !1601, line: 1110, baseType: !2411, size: 64, offset: 15360)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2413, line: 93, size: 8768, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2464, !2473, !2474, !2476, !2477, !2478, !2481, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2519, !2520, !2527, !2537, !2540, !2541, !2544, !2545, !2546, !2547, !2548, !2549}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2412, file: !2413, line: 94, baseType: !757, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2412, file: !2413, line: 95, baseType: !247, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2412, file: !2413, line: 96, baseType: !93, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2412, file: !2413, line: 97, baseType: !93, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2412, file: !2413, line: 98, baseType: !201, size: 128, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2412, file: !2413, line: 100, baseType: !770, size: 192, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2412, file: !2413, line: 103, baseType: !1956, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2412, file: !2413, line: 106, baseType: !2423, size: 192, offset: 512)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !987, line: 32, size: 192, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2423, file: !987, line: 33, baseType: !201, size: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2423, file: !987, line: 34, baseType: !2427, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2428, line: 25, baseType: !2429)
!2428 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2428, line: 23, size: 64, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2429, file: !2428, line: 24, baseType: !2192, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2412, file: !2413, line: 109, baseType: !561, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2412, file: !2413, line: 112, baseType: !93, size: 32, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2412, file: !2413, line: 114, baseType: !93, size: 32, offset: 800)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2412, file: !2413, line: 115, baseType: !1956, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2412, file: !2413, line: 118, baseType: !93, size: 32, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !2413, line: 119, baseType: !7, size: 32, offset: 928)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2412, file: !2413, line: 121, baseType: !2439, size: 64, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2413, line: 80, size: 448, elements: !2441)
!2441 = !{!2442, !2443, !2449}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2440, file: !2413, line: 81, baseType: !247, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2440, file: !2413, line: 82, baseType: !2444, size: 128, offset: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2413, line: 75, size: 128, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2444, file: !2413, line: 76, baseType: !1956, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2444, file: !2413, line: 77, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2440, file: !2413, line: 83, baseType: !1461, size: 256, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2412, file: !2413, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2412, file: !2413, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2412, file: !2413, line: 138, baseType: !7, size: 32, offset: 1056)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2412, file: !2413, line: 139, baseType: !201, size: 128, offset: 1088)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2412, file: !2413, line: 142, baseType: !2067, size: 512, offset: 1216)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2412, file: !2413, line: 143, baseType: !2075, size: 64, offset: 1728)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2412, file: !2413, line: 150, baseType: !2457, size: 256, offset: 1792)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2458, size: 256, elements: !2462)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2413, line: 38, size: 128, elements: !2459)
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2458, file: !2413, line: 39, baseType: !443, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2458, file: !2413, line: 40, baseType: !443, size: 64, offset: 64)
!2462 = !{!2463}
!2463 = !DISubrange(count: 2)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2412, file: !2413, line: 156, baseType: !2465, size: 192, offset: 2048)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2413, line: 66, size: 192, elements: !2466)
!2466 = !{!2467}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2465, file: !2413, line: 67, baseType: !2468, size: 192)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2413, line: 47, size: 192, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2468, file: !2413, line: 48, baseType: !660, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2468, file: !2413, line: 49, baseType: !660, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2468, file: !2413, line: 50, baseType: !660, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2412, file: !2413, line: 160, baseType: !2358, size: 640, offset: 2240)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2412, file: !2413, line: 163, baseType: !2475, size: 256, offset: 2880)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 256, elements: !766)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2412, file: !2413, line: 169, baseType: !753, size: 64, offset: 3136)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2412, file: !2413, line: 172, baseType: !93, size: 32, offset: 3200)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2412, file: !2413, line: 174, baseType: !2479, size: 64, offset: 3264)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2413, line: 174, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2412, file: !2413, line: 185, baseType: !2482, size: 64, offset: 3328)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !414, line: 860, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 853, size: 64, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2483, file: !414, line: 858, baseType: !413, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2483, file: !414, line: 859, baseType: !227, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2412, file: !2413, line: 186, baseType: !443, size: 64, offset: 3392)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2412, file: !2413, line: 186, baseType: !443, size: 64, offset: 3456)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2412, file: !2413, line: 186, baseType: !443, size: 64, offset: 3520)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2412, file: !2413, line: 186, baseType: !443, size: 64, offset: 3584)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2412, file: !2413, line: 187, baseType: !443, size: 64, offset: 3648)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2412, file: !2413, line: 188, baseType: !443, size: 64, offset: 3712)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2412, file: !2413, line: 189, baseType: !2346, size: 192, offset: 3776)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2412, file: !2413, line: 190, baseType: !113, size: 64, offset: 3968)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2412, file: !2413, line: 190, baseType: !113, size: 64, offset: 4032)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2412, file: !2413, line: 190, baseType: !113, size: 64, offset: 4096)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2412, file: !2413, line: 190, baseType: !113, size: 64, offset: 4160)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2412, file: !2413, line: 191, baseType: !113, size: 64, offset: 4224)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2412, file: !2413, line: 191, baseType: !113, size: 64, offset: 4288)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2412, file: !2413, line: 191, baseType: !113, size: 64, offset: 4352)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2412, file: !2413, line: 191, baseType: !113, size: 64, offset: 4416)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2412, file: !2413, line: 192, baseType: !113, size: 64, offset: 4480)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2412, file: !2413, line: 192, baseType: !113, size: 64, offset: 4544)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2412, file: !2413, line: 192, baseType: !113, size: 64, offset: 4608)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2412, file: !2413, line: 192, baseType: !113, size: 64, offset: 4672)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2412, file: !2413, line: 193, baseType: !113, size: 64, offset: 4736)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2412, file: !2413, line: 193, baseType: !113, size: 64, offset: 4800)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2412, file: !2413, line: 194, baseType: !2509, size: 448, offset: 4864)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2510, line: 12, size: 448, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2509, file: !2510, line: 15, baseType: !443, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2509, file: !2510, line: 17, baseType: !443, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2509, file: !2510, line: 19, baseType: !443, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2509, file: !2510, line: 21, baseType: !443, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2509, file: !2510, line: 29, baseType: !443, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2509, file: !2510, line: 35, baseType: !443, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2509, file: !2510, line: 44, baseType: !443, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2412, file: !2413, line: 202, baseType: !445, size: 64, offset: 5312)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2412, file: !2413, line: 213, baseType: !2521, size: 2048, offset: 5376)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2522, size: 2048, elements: !2381)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2523, line: 43, size: 128, elements: !2524)
!2523 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2522, file: !2523, line: 44, baseType: !342, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2522, file: !2523, line: 45, baseType: !342, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2412, file: !2413, line: 216, baseType: !2528, size: 448, offset: 7424)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2413, line: 30, size: 448, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2528, file: !2413, line: 31, baseType: !93, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2528, file: !2413, line: 32, baseType: !118, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2528, file: !2413, line: 33, baseType: !113, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2528, file: !2413, line: 34, baseType: !443, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2528, file: !2413, line: 34, baseType: !443, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2528, file: !2413, line: 35, baseType: !113, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2528, file: !2413, line: 35, baseType: !113, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2412, file: !2413, line: 219, baseType: !2538, size: 64, offset: 7872)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2413, line: 219, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2412, file: !2413, line: 222, baseType: !7, size: 32, offset: 7936)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2412, file: !2413, line: 223, baseType: !2542, size: 64, offset: 8000)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2413, line: 223, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2412, file: !2413, line: 230, baseType: !143, size: 8, offset: 8064)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2412, file: !2413, line: 231, baseType: !870, size: 16, offset: 8080)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2412, file: !2413, line: 232, baseType: !870, size: 16, offset: 8096)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2412, file: !2413, line: 234, baseType: !1114, size: 64, offset: 8128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2412, file: !2413, line: 237, baseType: !654, size: 256, offset: 8192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2412, file: !2413, line: 243, baseType: !842, size: 320, offset: 8448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1957, file: !1601, line: 1111, baseType: !2551, size: 64, offset: 15424)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2413, line: 20, size: 16640, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2552, file: !2413, line: 21, baseType: !227, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2552, file: !2413, line: 22, baseType: !757, size: 32, offset: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2552, file: !2413, line: 23, baseType: !770, size: 192, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2552, file: !2413, line: 24, baseType: !2558, size: 16384, offset: 256)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2559, size: 16384, elements: !299)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !987, line: 51, size: 256, elements: !2560)
!2560 = !{!2561}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2559, file: !987, line: 52, baseType: !2562, size: 256)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !987, line: 37, size: 256, elements: !2563)
!2563 = !{!2564, !2571, !2572, !2578}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2562, file: !987, line: 39, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2566, line: 83, baseType: !2567)
!2566 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2566, line: 82, baseType: !2569)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !93}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2562, file: !987, line: 40, baseType: !113, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2562, file: !987, line: 46, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2566, line: 86, baseType: !2574)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2566, line: 85, baseType: !2576)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{null}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2562, file: !987, line: 48, baseType: !2427, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1957, file: !1601, line: 1112, baseType: !2427, size: 64, offset: 15488)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1957, file: !1601, line: 1113, baseType: !2427, size: 64, offset: 15552)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1957, file: !1601, line: 1115, baseType: !2427, size: 64, offset: 15616)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1957, file: !1601, line: 1116, baseType: !2423, size: 192, offset: 15680)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1957, file: !1601, line: 1117, baseType: !113, size: 64, offset: 15872)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1957, file: !1601, line: 1118, baseType: !340, size: 64, offset: 15936)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1957, file: !1601, line: 1119, baseType: !7, size: 32, offset: 16000)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1957, file: !1601, line: 1121, baseType: !715, size: 64, offset: 16064)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1957, file: !1601, line: 1125, baseType: !2588, size: 64, offset: 16128)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1601, line: 43, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1957, file: !1601, line: 1127, baseType: !378, size: 32, offset: 16192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1957, file: !1601, line: 1128, baseType: !7, size: 32, offset: 16224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1957, file: !1601, line: 1130, baseType: !2593, size: 128, offset: 16256)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2594, line: 37, size: 128, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2595 = !{!2596, !2597, !2598}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2593, file: !2594, line: 38, baseType: !93, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2593, file: !2594, line: 39, baseType: !247, size: 32, offset: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2593, file: !2594, line: 40, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2594, line: 24, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1957, file: !1601, line: 1131, baseType: !2602, size: 256, offset: 16384)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2603, line: 12, size: 256, elements: !2604)
!2603 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2604 = !{!2605, !2606, !2607, !2608}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2602, file: !2603, line: 13, baseType: !134, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2602, file: !2603, line: 14, baseType: !113, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2602, file: !2603, line: 15, baseType: !113, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2602, file: !2603, line: 16, baseType: !143, size: 8, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1957, file: !1601, line: 1134, baseType: !443, size: 64, offset: 16640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1957, file: !1601, line: 1135, baseType: !443, size: 64, offset: 16704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1957, file: !1601, line: 1138, baseType: !227, size: 32, offset: 16768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1957, file: !1601, line: 1141, baseType: !667, size: 32, offset: 16800)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1957, file: !1601, line: 1143, baseType: !2614, size: 64, offset: 16832)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1601, line: 735, size: 64, elements: !2615)
!2615 = !{!2616}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2614, file: !1601, line: 736, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1957, file: !1601, line: 1147, baseType: !2124, size: 128, offset: 16896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1957, file: !1601, line: 1149, baseType: !1956, size: 64, offset: 17024)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1957, file: !1601, line: 1151, baseType: !2621, size: 64, offset: 17088)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1601, line: 1151, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1957, file: !1601, line: 1188, baseType: !117, size: 64, offset: 17152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1957, file: !1601, line: 1191, baseType: !2625, size: 64, offset: 17216)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1601, line: 44, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1957, file: !1601, line: 1194, baseType: !2628, size: 64, offset: 17280)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1601, line: 45, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1957, file: !1601, line: 1197, baseType: !2631, size: 64, offset: 17344)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1601, line: 61, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1957, file: !1601, line: 1199, baseType: !2634, size: 64, offset: 17408)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2636, line: 99, size: 128, elements: !2637)
!2636 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2637 = !{!2638, !2639, !2640}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2635, file: !2636, line: 100, baseType: !658, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2635, file: !2636, line: 101, baseType: !247, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2635, file: !2636, line: 103, baseType: !265, size: 16, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1957, file: !1601, line: 1202, baseType: !2642, size: 64, offset: 17472)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1601, line: 48, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1957, file: !1601, line: 1205, baseType: !113, size: 64, offset: 17536)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1957, file: !1601, line: 1206, baseType: !2646, size: 64, offset: 17600)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !987, line: 14, baseType: !2648)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !987, line: 12, size: 384, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !987, line: 13, baseType: !2651, size: 384)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !987, line: 13, size: 384, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2651, file: !987, line: 13, baseType: !93, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2651, file: !987, line: 13, baseType: !93, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2651, file: !987, line: 13, baseType: !93, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2651, file: !987, line: 13, baseType: !2657, size: 256, offset: 128)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2658, line: 37, size: 256, elements: !2659)
!2658 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2659 = !{!2660, !2665, !2678, !2684, !2693, !2719, !2724}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2657, file: !2658, line: 42, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 39, size: 64, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2661, file: !2658, line: 40, baseType: !2322, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2661, file: !2658, line: 41, baseType: !384, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2657, file: !2658, line: 50, baseType: !2666, size: 192)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 45, size: 192, elements: !2667)
!2667 = !{!2668, !2670, !2671, !2677}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2666, file: !2658, line: 46, baseType: !2669, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !328, line: 95, baseType: !93)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2666, file: !2658, line: 47, baseType: !93, size: 32, offset: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2666, file: !2658, line: 48, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2658, line: 11, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2658, line: 8, size: 64, elements: !2674)
!2674 = !{!2675, !2676}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2673, file: !2658, line: 9, baseType: !93, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2673, file: !2658, line: 10, baseType: !117, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2666, file: !2658, line: 49, baseType: !93, size: 32, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2657, file: !2658, line: 57, baseType: !2679, size: 128)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 53, size: 128, elements: !2680)
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2679, file: !2658, line: 54, baseType: !2322, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2679, file: !2658, line: 55, baseType: !384, size: 32, offset: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2679, file: !2658, line: 56, baseType: !2672, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2657, file: !2658, line: 66, baseType: !2685, size: 256)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 60, size: 256, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2692}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2685, file: !2658, line: 61, baseType: !2322, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2685, file: !2658, line: 62, baseType: !384, size: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2685, file: !2658, line: 63, baseType: !93, size: 32, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2685, file: !2658, line: 64, baseType: !2691, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !328, line: 94, baseType: !329)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2685, file: !2658, line: 65, baseType: !2691, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2657, file: !2658, line: 105, baseType: !2694, size: 256)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 69, size: 256, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2694, file: !2658, line: 70, baseType: !117, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !2658, line: 79, baseType: !2698, size: 192, offset: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2694, file: !2658, line: 79, size: 192, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2708, !2713}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2698, file: !2658, line: 81, baseType: !93, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2698, file: !2658, line: 86, baseType: !870, size: 16)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2698, file: !2658, line: 92, baseType: !2703, size: 192)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !2658, line: 88, size: 192, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2703, file: !2658, line: 89, baseType: !176, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2703, file: !2658, line: 90, baseType: !117, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2703, file: !2658, line: 91, baseType: !117, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2698, file: !2658, line: 97, baseType: !2709, size: 96)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !2658, line: 94, size: 96, elements: !2710)
!2710 = !{!2711, !2712}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2709, file: !2658, line: 95, baseType: !176, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2709, file: !2658, line: 96, baseType: !121, size: 32, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2698, file: !2658, line: 103, baseType: !2714, size: 128)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2698, file: !2658, line: 99, size: 128, elements: !2715)
!2715 = !{!2716, !2717, !2718}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2714, file: !2658, line: 100, baseType: !113, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2714, file: !2658, line: 101, baseType: !121, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2714, file: !2658, line: 102, baseType: !121, size: 32, offset: 96)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2657, file: !2658, line: 111, baseType: !2720, size: 128)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 108, size: 128, elements: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2720, file: !2658, line: 109, baseType: !118, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2720, file: !2658, line: 110, baseType: !93, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2657, file: !2658, line: 118, baseType: !2725, size: 128)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !2658, line: 114, size: 128, elements: !2726)
!2726 = !{!2727, !2728, !2729}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2725, file: !2658, line: 115, baseType: !117, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2725, file: !2658, line: 116, baseType: !93, size: 32, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2725, file: !2658, line: 117, baseType: !7, size: 32, offset: 96)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1957, file: !1601, line: 1208, baseType: !2509, size: 448, offset: 17664)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1957, file: !1601, line: 1215, baseType: !443, size: 64, offset: 18112)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1957, file: !1601, line: 1217, baseType: !443, size: 64, offset: 18176)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1957, file: !1601, line: 1219, baseType: !443, size: 64, offset: 18240)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1957, file: !1601, line: 1223, baseType: !2735, size: 64, offset: 18304)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2736, line: 99, baseType: !2737)
!2736 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2736, line: 99, size: 64, elements: !2738)
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2737, file: !2736, line: 99, baseType: !2192, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1957, file: !1601, line: 1225, baseType: !413, size: 32, offset: 18368)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1957, file: !1601, line: 1226, baseType: !93, size: 32, offset: 18400)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1957, file: !1601, line: 1227, baseType: !93, size: 32, offset: 18432)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1957, file: !1601, line: 1231, baseType: !2744, size: 64, offset: 18496)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1601, line: 1231, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1957, file: !1601, line: 1233, baseType: !201, size: 128, offset: 18560)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1957, file: !1601, line: 1240, baseType: !2748, size: 64, offset: 18688)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1601, line: 62, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1957, file: !1601, line: 1242, baseType: !2751, size: 64, offset: 18752)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1601, line: 1242, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1957, file: !1601, line: 1244, baseType: !201, size: 128, offset: 18816)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1957, file: !1601, line: 1245, baseType: !2755, size: 64, offset: 18944)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1601, line: 51, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1957, file: !1601, line: 1246, baseType: !654, size: 256, offset: 19008)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1957, file: !1601, line: 1247, baseType: !7, size: 32, offset: 19264)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1957, file: !1601, line: 1250, baseType: !2760, size: 64, offset: 19328)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1601, line: 57, flags: DIFlagFwdDecl)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1957, file: !1601, line: 1251, baseType: !654, size: 256, offset: 19392)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1957, file: !1601, line: 1252, baseType: !201, size: 128, offset: 19648)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1957, file: !1601, line: 1259, baseType: !1547, size: 64, offset: 19776)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1957, file: !1601, line: 1260, baseType: !870, size: 16, offset: 19840)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1957, file: !1601, line: 1261, baseType: !870, size: 16, offset: 19856)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1957, file: !1601, line: 1314, baseType: !2768, size: 64, offset: 19904)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2770, line: 62, size: 256, align: 256, elements: !2771)
!2770 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2769, file: !2770, line: 75, baseType: !121, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2769, file: !2770, line: 90, baseType: !121, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2769, file: !2770, line: 112, baseType: !444, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2769, file: !2770, line: 132, baseType: !121, size: 32, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2769, file: !2770, line: 140, baseType: !121, size: 32, offset: 160)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2769, file: !2770, line: 149, baseType: !121, size: 32, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2769, file: !2770, line: 154, baseType: !2779, offset: 224)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, elements: !785)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1957, file: !1601, line: 1315, baseType: !119, size: 32, offset: 19968)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1957, file: !1601, line: 1316, baseType: !119, size: 32, offset: 20000)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1957, file: !1601, line: 1321, baseType: !113, size: 64, offset: 20032)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1957, file: !1601, line: 1325, baseType: !93, size: 32, offset: 20096)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1957, file: !1601, line: 1326, baseType: !93, size: 32, offset: 20128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1957, file: !1601, line: 1327, baseType: !93, size: 32, offset: 20160)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1957, file: !1601, line: 1328, baseType: !93, size: 32, offset: 20192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1957, file: !1601, line: 1329, baseType: !712, size: 128, align: 64, offset: 20224)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1957, file: !1601, line: 1332, baseType: !2789, size: 128, offset: 20352)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2790, line: 51, size: 128, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2791 = !{!2792, !2797, !2798}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2789, file: !2790, line: 60, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2794, line: 7, size: 64, elements: !2795)
!2794 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2793, file: !2794, line: 12, baseType: !2189, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2789, file: !2790, line: 63, baseType: !143, size: 8, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2789, file: !2790, line: 70, baseType: !143, size: 8, offset: 72)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1957, file: !1601, line: 1335, baseType: !1599, size: 64, offset: 20480)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1957, file: !1601, line: 1337, baseType: !2801, size: 128, offset: 20544)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2790, line: 39, size: 128, elements: !2802)
!2802 = !{!2803, !2804, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2801, file: !2790, line: 40, baseType: !1376, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2801, file: !2790, line: 42, baseType: !121, size: 32, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2801, file: !2790, line: 43, baseType: !121, size: 32, offset: 96)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1957, file: !1601, line: 1340, baseType: !2807, size: 64, offset: 20672)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1601, line: 69, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1957, file: !1601, line: 1351, baseType: !93, size: 32, offset: 20736)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1957, file: !1601, line: 1352, baseType: !93, size: 32, offset: 20768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1957, file: !1601, line: 1354, baseType: !113, size: 64, offset: 20800)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1957, file: !1601, line: 1364, baseType: !443, size: 64, offset: 20864)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1957, file: !1601, line: 1365, baseType: !443, size: 64, offset: 20928)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1957, file: !1601, line: 1412, baseType: !113, size: 64, offset: 20992)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1957, file: !1601, line: 1453, baseType: !2816, size: 64, offset: 21056)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1601, line: 1453, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1957, file: !1601, line: 1457, baseType: !2819, size: 64, offset: 21120)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !2821)
!2821 = !{!2822, !2823, !2842, !2845, !2846, !2879, !2889}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2820, file: !73, line: 62, baseType: !72, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, scope: !2820, file: !73, line: 64, baseType: !2824, size: 192, offset: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2820, file: !73, line: 64, size: 192, elements: !2825)
!2825 = !{!2826, !2837}
!2826 = !DIDerivedType(tag: DW_TAG_member, scope: !2824, file: !73, line: 65, baseType: !2827, size: 192)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2824, file: !73, line: 65, size: 192, elements: !2828)
!2828 = !{!2829, !2836}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2827, file: !73, line: 66, baseType: !2830, size: 128)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2831, line: 50, size: 128, elements: !2832)
!2831 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2830, file: !2831, line: 52, baseType: !113, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2830, file: !2831, line: 54, baseType: !7, size: 32, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2830, file: !2831, line: 55, baseType: !7, size: 32, offset: 96)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2827, file: !73, line: 67, baseType: !113, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2824, file: !73, line: 70, baseType: !2838, size: 192)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2824, file: !73, line: 70, size: 192, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2838, file: !73, line: 71, baseType: !712, size: 128, align: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2838, file: !73, line: 72, baseType: !113, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2820, file: !73, line: 76, baseType: !2843, size: 64, offset: 256)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2820, file: !73, line: 77, baseType: !113, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2820, file: !73, line: 79, baseType: !2847, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2831, line: 25, size: 256, elements: !2849)
!2849 = !{!2850, !2856, !2860}
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2848, file: !2831, line: 26, baseType: !2851, size: 128)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2848, file: !2831, line: 26, size: 128, elements: !2852)
!2852 = !{!2853, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2851, file: !2831, line: 27, baseType: !2854, size: 128)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 128, elements: !2381)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2851, file: !2831, line: 28, baseType: !2854, size: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2848, file: !2831, line: 31, baseType: !2857, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2831, line: 23, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, scope: !2848, file: !2831, line: 33, baseType: !2861, size: 64, offset: 192)
!2861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2848, file: !2831, line: 33, size: 64, elements: !2862)
!2862 = !{!2863, !2869, !2874}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2861, file: !2831, line: 38, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2861, file: !2831, line: 34, size: 64, elements: !2865)
!2865 = !{!2866, !2867, !2868}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2864, file: !2831, line: 35, baseType: !827, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2864, file: !2831, line: 36, baseType: !255, size: 8, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2864, file: !2831, line: 37, baseType: !255, size: 8, offset: 40)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2861, file: !2831, line: 42, baseType: !2870, size: 16)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2861, file: !2831, line: 39, size: 16, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2870, file: !2831, line: 40, baseType: !255, size: 8)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2870, file: !2831, line: 41, baseType: !255, size: 8, offset: 8)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2861, file: !2831, line: 46, baseType: !2875, size: 16)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2861, file: !2831, line: 43, size: 16, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2875, file: !2831, line: 44, baseType: !255, size: 8)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2875, file: !2831, line: 45, baseType: !255, size: 8, offset: 8)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2820, file: !73, line: 81, baseType: !2880, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !2882)
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2881, file: !73, line: 86, baseType: !2843, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2881, file: !73, line: 87, baseType: !113, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2881, file: !73, line: 88, baseType: !113, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2881, file: !73, line: 89, baseType: !113, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2881, file: !73, line: 90, baseType: !143, size: 8, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2881, file: !73, line: 92, baseType: !2880, size: 64, offset: 320)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2820, file: !73, line: 82, baseType: !7, size: 32, offset: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1957, file: !1601, line: 1463, baseType: !2891, offset: 21184)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1601, line: 739, elements: !573)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1957, file: !1601, line: 1470, baseType: !712, size: 128, align: 64, offset: 21184)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1957, file: !1601, line: 1471, baseType: !757, size: 32, offset: 21312)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1957, file: !1601, line: 1472, baseType: !93, size: 32, offset: 21344)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1957, file: !1601, line: 1474, baseType: !1956, size: 64, offset: 21376)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1957, file: !1601, line: 1475, baseType: !2897, size: 320, offset: 21440)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2898, line: 11, size: 320, elements: !2899)
!2898 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2899 = !{!2900, !2901, !2902, !2907}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2897, file: !2898, line: 16, baseType: !565, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2897, file: !2898, line: 17, baseType: !113, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2897, file: !2898, line: 18, baseType: !2903, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2897, file: !2898, line: 19, baseType: !119, size: 32, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1957, file: !1601, line: 1478, baseType: !2909, size: 64, offset: 21760)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1601, line: 1478, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1957, file: !1601, line: 1482, baseType: !757, size: 32, offset: 21824)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1957, file: !1601, line: 1489, baseType: !117, size: 64, offset: 21888)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1957, file: !1601, line: 1504, baseType: !117, size: 64, offset: 21952)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1957, file: !1601, line: 1505, baseType: !444, size: 64, offset: 22016)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1957, file: !1601, line: 1506, baseType: !443, size: 64, offset: 22080)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1957, file: !1601, line: 1507, baseType: !444, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1957, file: !1601, line: 1508, baseType: !444, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1957, file: !1601, line: 1509, baseType: !444, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1957, file: !1601, line: 1510, baseType: !712, size: 128, align: 64, offset: 22208)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1957, file: !1601, line: 1511, baseType: !93, size: 32, offset: 22336)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1957, file: !1601, line: 1515, baseType: !2922, size: 64, offset: 22400)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !707, line: 56, size: 64, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2922, file: !707, line: 57, baseType: !710, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1957, file: !1601, line: 1518, baseType: !2922, size: 64, offset: 22464)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1957, file: !1601, line: 1528, baseType: !712, size: 128, align: 64, offset: 22528)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1957, file: !1601, line: 1552, baseType: !2928, size: 35328, offset: 23040)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2929, line: 430, size: 35328, elements: !2930)
!2929 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2930 = !{!2931, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2960, !2961, !2962, !2963, !2964, !2965, !2968, !2969, !2970, !2971}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2928, file: !2929, line: 432, baseType: !2932, size: 192)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2933, size: 192, elements: !295)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2934, line: 16, size: 64, elements: !2935)
!2934 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2933, file: !2934, line: 17, baseType: !263, size: 16)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2933, file: !2934, line: 18, baseType: !263, size: 16, offset: 16)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2933, file: !2934, line: 19, baseType: !263, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2933, file: !2934, line: 19, baseType: !263, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2933, file: !2934, line: 19, baseType: !263, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2933, file: !2934, line: 19, baseType: !263, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2933, file: !2934, line: 19, baseType: !263, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2933, file: !2934, line: 20, baseType: !263, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2933, file: !2934, line: 20, baseType: !263, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2933, file: !2934, line: 20, baseType: !263, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2933, file: !2934, line: 20, baseType: !263, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2933, file: !2934, line: 20, baseType: !263, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2933, file: !2934, line: 20, baseType: !263, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2928, file: !2929, line: 436, baseType: !113, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2928, file: !2929, line: 440, baseType: !265, size: 16, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2928, file: !2929, line: 441, baseType: !265, size: 16, offset: 272)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2928, file: !2929, line: 442, baseType: !265, size: 16, offset: 288)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2928, file: !2929, line: 443, baseType: !265, size: 16, offset: 304)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2928, file: !2929, line: 447, baseType: !113, size: 64, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2928, file: !2929, line: 448, baseType: !113, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2928, file: !2929, line: 459, baseType: !2957, size: 256, offset: 448)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2958, size: 256, elements: !766)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2929, line: 428, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2928, file: !2929, line: 461, baseType: !113, size: 64, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2928, file: !2929, line: 463, baseType: !113, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2928, file: !2929, line: 465, baseType: !113, size: 64, offset: 832)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2928, file: !2929, line: 466, baseType: !113, size: 64, offset: 896)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2928, file: !2929, line: 467, baseType: !113, size: 64, offset: 960)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2928, file: !2929, line: 473, baseType: !2966, size: 64, offset: 1024)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2929, line: 10, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2928, file: !2929, line: 480, baseType: !113, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2928, file: !2929, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2928, file: !2929, line: 491, baseType: !119, size: 32, offset: 1184)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2928, file: !2929, line: 501, baseType: !2972, size: 33792, offset: 1536)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2973, line: 448, size: 33792, elements: !2974)
!2973 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2974 = !{!2975, !2976, !2977, !3139, !3140, !3146, !3147}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2972, file: !2973, line: 461, baseType: !7, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2972, file: !2973, line: 468, baseType: !113, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2972, file: !2973, line: 476, baseType: !2978, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2973, line: 356, size: 33280, align: 512, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2979, file: !2973, line: 358, baseType: !7, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2979, file: !2973, line: 361, baseType: !7, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2979, file: !2973, line: 364, baseType: !443, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2979, file: !2973, line: 367, baseType: !443, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2979, file: !2973, line: 370, baseType: !443, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2979, file: !2973, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2979, file: !2973, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2979, file: !2973, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2979, file: !2973, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2979, file: !2973, line: 397, baseType: !2991, size: 32768, offset: 512)
!2991 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2973, line: 348, size: 32768, elements: !2992)
!2992 = !{!2993, !3008, !3045, !3122, !3135}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2991, file: !2973, line: 349, baseType: !2994, size: 896)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2973, line: 12, size: 896, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3007}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2994, file: !2973, line: 13, baseType: !119, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2994, file: !2973, line: 14, baseType: !119, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2994, file: !2973, line: 15, baseType: !119, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2994, file: !2973, line: 16, baseType: !119, size: 32, offset: 96)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2994, file: !2973, line: 17, baseType: !119, size: 32, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2994, file: !2973, line: 18, baseType: !119, size: 32, offset: 160)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2994, file: !2973, line: 19, baseType: !119, size: 32, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2994, file: !2973, line: 22, baseType: !3004, size: 640, offset: 224)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !3005)
!3005 = !{!3006}
!3006 = !DISubrange(count: 20)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2994, file: !2973, line: 25, baseType: !119, size: 32, offset: 864)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2991, file: !2973, line: 350, baseType: !3009, size: 4096, align: 128)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2973, line: 34, size: 4096, align: 128, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3030, !3031, !3032, !3034, !3036, !3040}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3009, file: !2973, line: 35, baseType: !263, size: 16)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3009, file: !2973, line: 36, baseType: !263, size: 16, offset: 16)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3009, file: !2973, line: 37, baseType: !263, size: 16, offset: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3009, file: !2973, line: 38, baseType: !263, size: 16, offset: 48)
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !2973, line: 39, baseType: !3016, size: 128, offset: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !2973, line: 39, size: 128, elements: !3017)
!3017 = !{!3018, !3023}
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !3016, file: !2973, line: 40, baseType: !3019, size: 128)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !2973, line: 40, size: 128, elements: !3020)
!3020 = !{!3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3019, file: !2973, line: 41, baseType: !443, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3019, file: !2973, line: 42, baseType: !443, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3016, file: !2973, line: 44, baseType: !3024, size: 128)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !2973, line: 44, size: 128, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3024, file: !2973, line: 45, baseType: !119, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3024, file: !2973, line: 46, baseType: !119, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3024, file: !2973, line: 47, baseType: !119, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3024, file: !2973, line: 48, baseType: !119, size: 32, offset: 96)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3009, file: !2973, line: 51, baseType: !119, size: 32, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3009, file: !2973, line: 52, baseType: !119, size: 32, offset: 224)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3009, file: !2973, line: 55, baseType: !3033, size: 1024, offset: 256)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 1024, elements: !452)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3009, file: !2973, line: 58, baseType: !3035, size: 2048, offset: 1280)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 2048, elements: !299)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3009, file: !2973, line: 60, baseType: !3037, size: 384, offset: 3328)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 384, elements: !3038)
!3038 = !{!3039}
!3039 = !DISubrange(count: 12)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !2973, line: 62, baseType: !3041, size: 384, offset: 3712)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !2973, line: 62, size: 384, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3041, file: !2973, line: 63, baseType: !3037, size: 384)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3041, file: !2973, line: 64, baseType: !3037, size: 384)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2991, file: !2973, line: 351, baseType: !3046, size: 1088)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2973, line: 79, size: 1088, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3121}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3046, file: !2973, line: 80, baseType: !119, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3046, file: !2973, line: 81, baseType: !119, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3046, file: !2973, line: 82, baseType: !119, size: 32, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3046, file: !2973, line: 83, baseType: !119, size: 32, offset: 96)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3046, file: !2973, line: 84, baseType: !119, size: 32, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3046, file: !2973, line: 85, baseType: !119, size: 32, offset: 160)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3046, file: !2973, line: 86, baseType: !119, size: 32, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3046, file: !2973, line: 88, baseType: !3004, size: 640, offset: 224)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3046, file: !2973, line: 89, baseType: !255, size: 8, offset: 864)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3046, file: !2973, line: 90, baseType: !255, size: 8, offset: 872)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3046, file: !2973, line: 91, baseType: !255, size: 8, offset: 880)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3046, file: !2973, line: 92, baseType: !255, size: 8, offset: 888)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3046, file: !2973, line: 93, baseType: !255, size: 8, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3046, file: !2973, line: 94, baseType: !255, size: 8, offset: 904)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3046, file: !2973, line: 95, baseType: !3063, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3065, line: 11, size: 128, elements: !3066)
!3065 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3064, file: !3065, line: 12, baseType: !118, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3064, file: !3065, line: 13, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3071, line: 103, size: 1344, elements: !3072)
!3071 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3072 = !{!3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3101, !3102, !3103}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3070, file: !3071, line: 109, baseType: !113, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3070, file: !3071, line: 110, baseType: !113, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3070, file: !3071, line: 111, baseType: !113, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3070, file: !3071, line: 112, baseType: !113, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3070, file: !3071, line: 113, baseType: !113, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3070, file: !3071, line: 114, baseType: !113, size: 64, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3070, file: !3071, line: 117, baseType: !113, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3070, file: !3071, line: 118, baseType: !113, size: 64, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3070, file: !3071, line: 119, baseType: !113, size: 64, offset: 512)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3070, file: !3071, line: 120, baseType: !113, size: 64, offset: 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3070, file: !3071, line: 121, baseType: !113, size: 64, offset: 640)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3070, file: !3071, line: 122, baseType: !113, size: 64, offset: 704)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3070, file: !3071, line: 123, baseType: !113, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3070, file: !3071, line: 124, baseType: !113, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3070, file: !3071, line: 125, baseType: !113, size: 64, offset: 896)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3070, file: !3071, line: 139, baseType: !113, size: 64, offset: 960)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3070, file: !3071, line: 142, baseType: !113, size: 64, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !3071, line: 144, baseType: !3091, size: 64, offset: 1088)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3070, file: !3071, line: 144, size: 64, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3091, file: !3071, line: 146, baseType: !263, size: 16)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3091, file: !3071, line: 148, baseType: !443, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3091, file: !3071, line: 150, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3071, line: 59, size: 64, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3096, file: !3071, line: 61, baseType: !443, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3096, file: !3071, line: 63, baseType: !443, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3096, file: !3071, line: 65, baseType: !443, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3070, file: !3071, line: 153, baseType: !113, size: 64, offset: 1152)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3070, file: !3071, line: 154, baseType: !113, size: 64, offset: 1216)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !3071, line: 156, baseType: !3104, size: 64, offset: 1280)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3070, file: !3071, line: 156, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3104, file: !3071, line: 158, baseType: !263, size: 16)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3104, file: !3071, line: 160, baseType: !443, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3104, file: !3071, line: 162, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3071, line: 69, size: 64, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3109, file: !3071, line: 71, baseType: !443, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3109, file: !3071, line: 73, baseType: !443, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3109, file: !3071, line: 75, baseType: !443, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3109, file: !3071, line: 77, baseType: !443, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3109, file: !3071, line: 80, baseType: !443, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3109, file: !3071, line: 83, baseType: !443, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3109, file: !3071, line: 86, baseType: !443, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3109, file: !3071, line: 88, baseType: !443, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3109, file: !3071, line: 93, baseType: !443, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3109, file: !3071, line: 100, baseType: !443, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3046, file: !2973, line: 96, baseType: !119, size: 32, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2991, file: !2973, line: 352, baseType: !3123, size: 4608, align: 512)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2973, line: 333, size: 4608, align: 512, elements: !3124)
!3124 = !{!3125, !3126, !3133}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3123, file: !2973, line: 334, baseType: !3009, size: 4096, align: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3123, file: !2973, line: 335, baseType: !3127, size: 512, offset: 4096)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2973, line: 312, size: 512, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3127, file: !2973, line: 313, baseType: !443, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3127, file: !2973, line: 314, baseType: !443, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3127, file: !2973, line: 315, baseType: !3132, size: 384, offset: 128)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !888)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3123, file: !2973, line: 336, baseType: !3134, offset: 4608)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, elements: !785)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2991, file: !2973, line: 353, baseType: !3136, size: 32768)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 32768, elements: !3137)
!3137 = !{!3138}
!3138 = !DISubrange(count: 4096)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2972, file: !2973, line: 484, baseType: !2978, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2972, file: !2973, line: 491, baseType: !3141, size: 128, offset: 256)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2973, line: 404, size: 128, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3141, file: !2973, line: 424, baseType: !443, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3141, file: !2973, line: 432, baseType: !7, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3141, file: !2973, line: 440, baseType: !7, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2972, file: !2973, line: 498, baseType: !3141, size: 128, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2972, file: !2973, line: 508, baseType: !2979, size: 33280, align: 512, offset: 512)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1938, file: !1939, line: 16, baseType: !770, size: 192, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1938, file: !1939, line: 17, baseType: !247, size: 32, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !522, file: !19, line: 1240, baseType: !117, size: 64, offset: 6912)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !522, file: !19, line: 1243, baseType: !119, size: 32, offset: 6976)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !522, file: !19, line: 1245, baseType: !858, size: 64, offset: 7040)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !522, file: !19, line: 1246, baseType: !858, size: 64, offset: 7104)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !522, file: !19, line: 1248, baseType: !121, size: 32, offset: 7168)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !522, file: !19, line: 1249, baseType: !3156, size: 64, offset: 7232)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !522, file: !19, line: 1252, baseType: !3159, size: 256, offset: 7296)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !452)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !522, file: !19, line: 1253, baseType: !3161, size: 128, offset: 7552)
!3161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3162, line: 21, baseType: !3163)
!3162 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3162, line: 19, size: 128, elements: !3164)
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3163, file: !3162, line: 20, baseType: !3166, size: 128)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !2381)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !522, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !522, file: !19, line: 1261, baseType: !654, size: 256, offset: 7744)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !522, file: !19, line: 1267, baseType: !114, size: 64, offset: 8000)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !522, file: !19, line: 1269, baseType: !468, size: 64, offset: 8064)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !522, file: !19, line: 1271, baseType: !3172, size: 448, offset: 8128)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1718, line: 63, size: 448, elements: !3173)
!3173 = !{!3174, !3179, !3180, !3181, !3182, !3183, !3184}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3172, file: !1718, line: 64, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!113, !3178, !1716}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3172, file: !1718, line: 66, baseType: !3175, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3172, file: !1718, line: 69, baseType: !118, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3172, file: !1718, line: 70, baseType: !93, size: 32, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3172, file: !1718, line: 71, baseType: !7, size: 32, offset: 224)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3172, file: !1718, line: 74, baseType: !201, size: 128, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3172, file: !1718, line: 85, baseType: !3185, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !522, file: !19, line: 1274, baseType: !658, size: 64, offset: 8576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !522, file: !19, line: 1280, baseType: !658, size: 64, offset: 8640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !522, file: !19, line: 1283, baseType: !93, size: 32, offset: 8704)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !522, file: !19, line: 1286, baseType: !1650, size: 32, offset: 8736)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !522, file: !19, line: 1289, baseType: !3191, size: 64, offset: 8768)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1269, line: 18, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !522, file: !19, line: 1290, baseType: !561, size: 64, offset: 8832)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !522, file: !19, line: 1297, baseType: !982, size: 64, offset: 8896)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !522, file: !19, line: 1304, baseType: !3196, size: 64, offset: 8960)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3197, line: 49, size: 64, elements: !3198)
!3197 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3196, file: !3197, line: 50, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3197, line: 41, size: 512, align: 512, elements: !3202)
!3202 = !{!3203, !3204, !3209}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3201, file: !3197, line: 43, baseType: !227, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3201, file: !3197, line: 45, baseType: !3205, size: 192, offset: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3197, line: 29, size: 192, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3205, file: !3197, line: 30, baseType: !201, size: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3205, file: !3197, line: 32, baseType: !118, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3201, file: !3197, line: 46, baseType: !118, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !522, file: !19, line: 1305, baseType: !3196, size: 64, offset: 9024)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !522, file: !19, line: 1306, baseType: !712, size: 128, align: 64, offset: 9088)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !522, file: !19, line: 1307, baseType: !1268, size: 256, offset: 9216)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !522, file: !19, line: 1309, baseType: !654, size: 256, offset: 9472)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !522, file: !19, line: 1314, baseType: !93, size: 32, offset: 9728)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !522, file: !19, line: 1317, baseType: !227, size: 32, align: 512, offset: 10240)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !522, file: !19, line: 1318, baseType: !201, size: 128, offset: 10304)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !522, file: !19, line: 1320, baseType: !227, size: 32, offset: 10432)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !522, file: !19, line: 1321, baseType: !201, size: 128, offset: 10496)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !516, file: !517, line: 73, baseType: !93, size: 32, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !516, file: !517, line: 74, baseType: !3221, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !809, line: 42, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !470, file: !409, line: 141, baseType: !3225, size: 64, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!93, !1778, !143}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !470, file: !409, line: 142, baseType: !3229, size: 64, offset: 768)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!407, !407, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !408, file: !409, line: 96, baseType: !521, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !408, file: !409, line: 97, baseType: !113, size: 64, offset: 896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !408, file: !409, line: 98, baseType: !117, size: 64, offset: 960)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !409, line: 100, baseType: !3238, size: 128, offset: 1024)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 100, size: 128, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3238, file: !409, line: 101, baseType: !201, size: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3238, file: !409, line: 102, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !408, file: !409, line: 104, baseType: !201, size: 128, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !408, file: !409, line: 105, baseType: !201, size: 128, offset: 1280)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !408, file: !409, line: 113, baseType: !3246, size: 128, offset: 1408)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 109, size: 128, elements: !3247)
!3247 = !{!3248, !3249, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3246, file: !409, line: 110, baseType: !565, size: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3246, file: !409, line: 111, baseType: !423, size: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3246, file: !409, line: 112, baseType: !712, size: 128, align: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !401, file: !19, line: 1968, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!114, !407, !372, !3255}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3257, line: 10, size: 128, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3258 = !{!3259, !3263}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3256, file: !3257, line: 11, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !117}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3256, file: !3257, line: 12, baseType: !117, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !401, file: !19, line: 1969, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!93, !3221, !372, !93}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !401, file: !19, line: 1970, baseType: !3269, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!395, !372, !93, !143}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !401, file: !19, line: 1972, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!93, !407, !134, !93}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !401, file: !19, line: 1974, baseType: !3277, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!93, !3221, !372, !407, !335, !143}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !401, file: !19, line: 1976, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!93, !407, !372, !407}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !401, file: !19, line: 1977, baseType: !3285, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!93, !372, !407}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !401, file: !19, line: 1978, baseType: !3289, size: 64, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!93, !3221, !372, !407, !114}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !401, file: !19, line: 1980, baseType: !3293, size: 64, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!93, !3221, !372, !407, !335}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !401, file: !19, line: 1982, baseType: !3285, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !401, file: !19, line: 1983, baseType: !3298, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!93, !3221, !372, !407, !335, !526}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !401, file: !19, line: 1985, baseType: !3302, size: 64, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!93, !3221, !372, !407, !372, !407, !7}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !401, file: !19, line: 1987, baseType: !3306, size: 64, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!93, !3221, !407, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3324, !3333, !3334, !3339, !3340, !3341}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3310, file: !19, line: 227, baseType: !7, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3310, file: !19, line: 228, baseType: !335, size: 16, offset: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !19, line: 241, baseType: !3315, size: 32, offset: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !19, line: 241, size: 32, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3315, file: !19, line: 242, baseType: !378, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3315, file: !19, line: 243, baseType: !3319, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3320, line: 16, baseType: !3321)
!3320 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3320, line: 14, size: 32, elements: !3322)
!3322 = !{!3323}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3321, file: !3320, line: 15, baseType: !383, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !19, line: 245, baseType: !3325, size: 32, offset: 96)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !19, line: 245, size: 32, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3325, file: !19, line: 246, baseType: !387, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3325, file: !19, line: 247, baseType: !3329, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3320, line: 20, baseType: !3330)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3320, line: 18, size: 32, elements: !3331)
!3331 = !{!3332}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3330, file: !3320, line: 19, baseType: !391, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3310, file: !19, line: 249, baseType: !531, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3310, file: !19, line: 250, baseType: !3335, size: 128, offset: 192)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !859, line: 13, size: 128, elements: !3336)
!3336 = !{!3337, !3338}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3335, file: !859, line: 14, baseType: !858, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3335, file: !859, line: 15, baseType: !118, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3310, file: !19, line: 251, baseType: !3335, size: 128, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3310, file: !19, line: 252, baseType: !3335, size: 128, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3310, file: !19, line: 259, baseType: !1027, size: 64, offset: 576)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !401, file: !19, line: 1988, baseType: !3343, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!93, !3221, !1778, !3346, !119, !7}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3348, line: 22, size: 1280, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3347, file: !3348, line: 23, baseType: !119, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3347, file: !3348, line: 24, baseType: !335, size: 16, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3347, file: !3348, line: 25, baseType: !7, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3347, file: !3348, line: 26, baseType: !866, size: 32, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3347, file: !3348, line: 27, baseType: !443, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3347, file: !3348, line: 28, baseType: !443, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3347, file: !3348, line: 41, baseType: !443, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3347, file: !3348, line: 42, baseType: !526, size: 32, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3347, file: !3348, line: 43, baseType: !526, size: 32, offset: 352)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3347, file: !3348, line: 44, baseType: !378, size: 32, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3347, file: !3348, line: 45, baseType: !387, size: 32, offset: 416)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3347, file: !3348, line: 46, baseType: !531, size: 64, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3347, file: !3348, line: 47, baseType: !3335, size: 128, offset: 512)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3347, file: !3348, line: 48, baseType: !3335, size: 128, offset: 640)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3347, file: !3348, line: 49, baseType: !3335, size: 128, offset: 768)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3347, file: !3348, line: 50, baseType: !3335, size: 128, offset: 896)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3347, file: !3348, line: 51, baseType: !443, size: 64, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3347, file: !3348, line: 52, baseType: !443, size: 64, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3347, file: !3348, line: 53, baseType: !119, size: 32, offset: 1152)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3347, file: !3348, line: 54, baseType: !119, size: 32, offset: 1184)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3347, file: !3348, line: 55, baseType: !443, size: 64, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !401, file: !19, line: 1990, baseType: !3372, size: 64, offset: 960)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!326, !407, !134, !340}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !401, file: !19, line: 1991, baseType: !3376, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!93, !372, !3379, !443, !443}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !401, file: !19, line: 1993, baseType: !3382, size: 64, offset: 1088)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!93, !372, !93}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !401, file: !19, line: 1994, baseType: !3386, size: 64, offset: 1152)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!93, !372, !407, !1027, !7, !335}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !401, file: !19, line: 1997, baseType: !3390, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!93, !3221, !372, !1027, !335}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !401, file: !19, line: 1999, baseType: !3394, size: 64, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!395, !3221, !407, !93}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !401, file: !19, line: 2001, baseType: !3398, size: 64, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!93, !3221, !407, !395, !93}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !401, file: !19, line: 2003, baseType: !3402, size: 64, offset: 1408)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!93, !3221, !407, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !401, file: !19, line: 2005, baseType: !3408, size: 64, offset: 1472)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!93, !407, !3405}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !401, file: !19, line: 2006, baseType: !3412, size: 64, offset: 1536)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!3415, !372}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !3417)
!3417 = !{!3418, !3425}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3416, file: !19, line: 3193, baseType: !3419, size: 128)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3420, line: 296, size: 128, elements: !3421)
!3420 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3421 = !{!3422, !3423, !3424}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3419, file: !3420, line: 297, baseType: !227, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3419, file: !3420, line: 299, baseType: !1346, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3419, file: !3420, line: 300, baseType: !117, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3416, file: !19, line: 3194, baseType: !119, size: 32, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !373, file: !19, line: 655, baseType: !521, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !373, file: !19, line: 656, baseType: !368, size: 64, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !373, file: !19, line: 659, baseType: !117, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !373, file: !19, line: 663, baseType: !113, size: 64, offset: 640)
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !19, line: 671, baseType: !3431, size: 32, offset: 704)
!3431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !19, line: 671, size: 32, elements: !3432)
!3432 = !{!3433, !3435}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3431, file: !19, line: 672, baseType: !3434, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3431, file: !19, line: 673, baseType: !7, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !373, file: !19, line: 675, baseType: !526, size: 32, offset: 736)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !373, file: !19, line: 676, baseType: !531, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !373, file: !19, line: 677, baseType: !3335, size: 128, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !373, file: !19, line: 678, baseType: !3335, size: 128, offset: 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !373, file: !19, line: 679, baseType: !3335, size: 128, offset: 1088)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !373, file: !19, line: 680, baseType: !227, size: 32, offset: 1216)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !373, file: !19, line: 681, baseType: !265, size: 16, offset: 1248)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !373, file: !19, line: 682, baseType: !255, size: 8, offset: 1264)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !373, file: !19, line: 683, baseType: !255, size: 8, offset: 1272)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !373, file: !19, line: 684, baseType: !1851, size: 64, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !373, file: !19, line: 691, baseType: !113, size: 64, offset: 1344)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !373, file: !19, line: 692, baseType: !842, size: 320, offset: 1408)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !373, file: !19, line: 694, baseType: !113, size: 64, offset: 1728)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !373, file: !19, line: 695, baseType: !113, size: 64, offset: 1792)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !373, file: !19, line: 697, baseType: !565, size: 128, offset: 1856)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !373, file: !19, line: 698, baseType: !201, size: 128, offset: 1984)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !373, file: !19, line: 707, baseType: !201, size: 128, offset: 2112)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !373, file: !19, line: 708, baseType: !201, size: 128, offset: 2240)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !19, line: 709, baseType: !3455, size: 128, offset: 2368)
!3455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !19, line: 709, size: 128, elements: !3456)
!3456 = !{!3457, !3458}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3455, file: !19, line: 710, baseType: !561, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3455, file: !19, line: 711, baseType: !712, size: 128, align: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !373, file: !19, line: 713, baseType: !660, size: 64, offset: 2496)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !373, file: !19, line: 714, baseType: !660, size: 64, offset: 2560)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !373, file: !19, line: 715, baseType: !247, size: 32, offset: 2624)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !373, file: !19, line: 716, baseType: !247, size: 32, offset: 2656)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !373, file: !19, line: 717, baseType: !247, size: 32, offset: 2688)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !373, file: !19, line: 719, baseType: !247, size: 32, offset: 2720)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !19, line: 721, baseType: !3466, size: 64, offset: 2752)
!3466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !19, line: 721, size: 64, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3466, file: !19, line: 722, baseType: !1018, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3466, file: !19, line: 723, baseType: !592, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !373, file: !19, line: 725, baseType: !3471, size: 64, offset: 2816)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !373, file: !19, line: 726, baseType: !369, size: 1536, align: 64, offset: 2880)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !373, file: !19, line: 727, baseType: !201, size: 128, offset: 4416)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !19, line: 728, baseType: !3476, size: 64, offset: 4544)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !19, line: 728, size: 64, elements: !3477)
!3477 = !{!3478, !3479, !3482, !3483}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3476, file: !19, line: 729, baseType: !1599, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3476, file: !19, line: 730, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3476, file: !19, line: 731, baseType: !134, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3476, file: !19, line: 732, baseType: !7, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !373, file: !19, line: 735, baseType: !121, size: 32, offset: 4608)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !373, file: !19, line: 738, baseType: !121, size: 32, offset: 4640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !373, file: !19, line: 739, baseType: !3156, size: 64, offset: 4672)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !373, file: !19, line: 750, baseType: !117, size: 64, offset: 4736)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !369, file: !19, line: 474, baseType: !3419, size: 128, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !369, file: !19, line: 475, baseType: !842, size: 320, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !369, file: !19, line: 476, baseType: !1346, size: 32, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !369, file: !19, line: 477, baseType: !247, size: 32, offset: 544)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !369, file: !19, line: 482, baseType: !2124, size: 128, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !369, file: !19, line: 483, baseType: !113, size: 64, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !369, file: !19, line: 484, baseType: !113, size: 64, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !369, file: !19, line: 485, baseType: !3496, size: 64, offset: 832)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !3499)
!3499 = !{!3500, !3504, !3574, !3578, !3582, !3588, !3593, !3597, !3602, !3606, !3610, !3614, !3615, !3619, !3623, !3627, !3632, !3636, !3643, !3644}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3498, file: !19, line: 405, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!93, !1376, !604}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3498, file: !19, line: 406, baseType: !3505, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!93, !1027, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !32, line: 293, size: 1536, elements: !3510)
!3510 = !{!3511, !3541, !3555}
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !32, line: 295, baseType: !3512, size: 512)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3509, file: !32, line: 295, size: 512, elements: !3513)
!3513 = !{!3514, !3540}
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3512, file: !32, line: 296, baseType: !3515, size: 448)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !32, line: 296, size: 448, elements: !3516)
!3516 = !{!3517, !3518, !3527, !3528, !3529, !3538, !3539}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3515, file: !32, line: 298, baseType: !113, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !32, line: 299, baseType: !3519, size: 128, offset: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !32, line: 299, size: 128, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3519, file: !32, line: 300, baseType: !201, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !3519, file: !32, line: 302, baseType: !3523, size: 128)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3519, file: !32, line: 302, size: 128, elements: !3524)
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3523, file: !32, line: 303, baseType: !117, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3523, file: !32, line: 305, baseType: !7, size: 32, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3515, file: !32, line: 310, baseType: !368, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3515, file: !32, line: 311, baseType: !113, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !32, line: 312, baseType: !3530, size: 64, offset: 320)
!3530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !32, line: 312, size: 64, elements: !3531)
!3531 = !{!3532, !3533}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3530, file: !32, line: 313, baseType: !117, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3530, file: !32, line: 314, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !32, line: 257, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 255, size: 64, elements: !3536)
!3536 = !{!3537}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3535, file: !32, line: 256, baseType: !113, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3515, file: !32, line: 316, baseType: !247, size: 32, offset: 384)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3515, file: !32, line: 317, baseType: !247, size: 32, offset: 416)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3512, file: !32, line: 323, baseType: !1377, size: 512, align: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !32, line: 325, baseType: !3542, size: 512, offset: 512)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3509, file: !32, line: 325, size: 512, elements: !3543)
!3543 = !{!3544, !3554}
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !32, line: 326, baseType: !3545, size: 320)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !32, line: 326, size: 320, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3545, file: !32, line: 327, baseType: !113, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3545, file: !32, line: 328, baseType: !113, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3545, file: !32, line: 329, baseType: !113, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3545, file: !32, line: 331, baseType: !247, size: 32, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3545, file: !32, line: 332, baseType: !247, size: 32, offset: 224)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3545, file: !32, line: 333, baseType: !247, size: 32, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3545, file: !32, line: 335, baseType: !7, size: 32, offset: 288)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3542, file: !32, line: 339, baseType: !1377, size: 512, align: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !32, line: 341, baseType: !3556, size: 512, offset: 1024)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3509, file: !32, line: 341, size: 512, elements: !3557)
!3557 = !{!3558, !3567, !3573}
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3556, file: !32, line: 342, baseType: !3559, size: 384)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3556, file: !32, line: 342, size: 384, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3559, file: !32, line: 343, baseType: !113, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3559, file: !32, line: 344, baseType: !113, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3559, file: !32, line: 346, baseType: !117, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3559, file: !32, line: 347, baseType: !117, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3559, file: !32, line: 348, baseType: !117, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3559, file: !32, line: 349, baseType: !117, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3556, file: !32, line: 352, baseType: !3568, size: 256)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3556, file: !32, line: 352, size: 256, elements: !3569)
!3569 = !{!3570, !3571, !3572}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3568, file: !32, line: 353, baseType: !113, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3568, file: !32, line: 354, baseType: !113, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3568, file: !32, line: 356, baseType: !201, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3556, file: !32, line: 359, baseType: !1377, size: 512, align: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3498, file: !19, line: 409, baseType: !3575, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!93, !368, !604}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3498, file: !19, line: 412, baseType: !3579, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!143, !368, !3508}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3498, file: !19, line: 414, baseType: !3583, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !19, line: 310, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3498, file: !19, line: 416, baseType: !3589, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!93, !1027, !368, !531, !7, !3592, !1615}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3498, file: !19, line: 419, baseType: !3594, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!93, !1027, !368, !531, !7, !7, !1376, !117}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3498, file: !19, line: 424, baseType: !3598, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!3601, !368, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !144, line: 131, baseType: !443)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3498, file: !19, line: 425, baseType: !3603, size: 64, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !3508, !340, !340}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3498, file: !19, line: 426, baseType: !3607, size: 64, offset: 576)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!143, !3508, !1346}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3498, file: !19, line: 427, baseType: !3611, size: 64, offset: 640)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3508}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3498, file: !19, line: 428, baseType: !1037, size: 64, offset: 704)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3498, file: !19, line: 433, baseType: !3616, size: 64, offset: 768)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!93, !368, !3508, !3508, !79}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3498, file: !19, line: 435, baseType: !3620, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!93, !3508}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3498, file: !19, line: 436, baseType: !3624, size: 64, offset: 896)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!143, !3508, !340, !340}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3498, file: !19, line: 438, baseType: !3628, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3508, !3631, !3631}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3498, file: !19, line: 439, baseType: !3633, size: 64, offset: 1024)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!93, !368, !1376}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3498, file: !19, line: 442, baseType: !3637, size: 64, offset: 1088)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!93, !3640, !1027, !3642}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3498, file: !19, line: 444, baseType: !1607, size: 64, offset: 1152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3498, file: !19, line: 445, baseType: !3645, size: 64, offset: 1216)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!93, !1040, !1062}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !19, line: 486, baseType: !113, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !369, file: !19, line: 487, baseType: !842, size: 320, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !369, file: !19, line: 488, baseType: !1650, size: 32, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !369, file: !19, line: 489, baseType: !227, size: 32, offset: 1312)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !369, file: !19, line: 490, baseType: !201, size: 128, offset: 1344)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !19, line: 491, baseType: !117, size: 64, offset: 1472)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !320, line: 180, baseType: !3655, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!326, !1027, !220, !358, !134, !531, !340}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !320, line: 182, baseType: !3655, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !320, line: 184, baseType: !3660, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!93, !1027, !220, !358, !1101}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !320, line: 90, baseType: !3664, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !320, line: 91, baseType: !3666, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !310, file: !215, line: 120, baseType: !3668, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!3671, !278}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !87, line: 39, size: 384, elements: !3674)
!3674 = !{!3675, !3676, !3680, !3684, !3690, !3694}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3673, file: !87, line: 40, baseType: !86, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3673, file: !87, line: 41, baseType: !3677, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!143}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3673, file: !87, line: 42, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!117}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3673, file: !87, line: 43, baseType: !3685, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!1229, !3688}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !87, line: 19, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3673, file: !87, line: 44, baseType: !3691, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!1229}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3673, file: !87, line: 45, baseType: !3260, size: 64, offset: 320)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !310, file: !215, line: 121, baseType: !3696, size: 64, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!1229, !278}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !310, file: !215, line: 122, baseType: !3700, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !278, !3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !214, file: !215, line: 70, baseType: !3706, size: 64, offset: 384)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3708, line: 190, size: 1152, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3789, !3790, !3791, !3792, !3793, !3796}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3707, file: !3708, line: 191, baseType: !247, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3707, file: !3708, line: 192, baseType: !247, size: 32, offset: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3707, file: !3708, line: 202, baseType: !3706, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3707, file: !3708, line: 203, baseType: !114, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3707, file: !3708, line: 205, baseType: !834, size: 192, align: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3707, file: !3708, line: 207, baseType: !1229, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3707, file: !3708, line: 208, baseType: !7, size: 32, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !3708, line: 209, baseType: !3718, size: 256, offset: 512)
!3718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3707, file: !3708, line: 209, size: 256, elements: !3719)
!3719 = !{!3720, !3729, !3733}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3718, file: !3708, line: 210, baseType: !3721, size: 256)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3708, line: 153, size: 256, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3728}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3721, file: !3708, line: 154, baseType: !113, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3721, file: !3708, line: 156, baseType: !2127, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3721, file: !3708, line: 162, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3708, line: 162, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3721, file: !3708, line: 167, baseType: !113, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3718, file: !3708, line: 211, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3708, line: 170, size: 64, elements: !3731)
!3731 = !{!3732}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3730, file: !3708, line: 171, baseType: !3706, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3718, file: !3708, line: 212, baseType: !3734, size: 256)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3708, line: 174, size: 256, elements: !3735)
!3735 = !{!3736, !3784, !3787, !3788}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3734, file: !3708, line: 175, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3739)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3708, line: 271, size: 768, elements: !3740)
!3740 = !{!3741, !3761, !3765, !3766, !3767, !3768, !3769, !3773, !3774, !3775, !3776, !3780}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3739, file: !3708, line: 276, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!93, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3708, line: 251, size: 1216, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3746, file: !3708, line: 253, baseType: !3706, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3746, file: !3708, line: 254, baseType: !1027, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3746, file: !3708, line: 255, baseType: !642, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3746, file: !3708, line: 256, baseType: !117, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3746, file: !3708, line: 259, baseType: !654, size: 256, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3746, file: !3708, line: 260, baseType: !654, size: 256, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3746, file: !3708, line: 261, baseType: !93, size: 32, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3746, file: !3708, line: 262, baseType: !201, size: 128, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3746, file: !3708, line: 263, baseType: !134, size: 64, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3746, file: !3708, line: 265, baseType: !340, size: 64, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3746, file: !3708, line: 266, baseType: !143, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3746, file: !3708, line: 267, baseType: !143, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3746, file: !3708, line: 268, baseType: !1311, size: 64, offset: 1152)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3739, file: !3708, line: 277, baseType: !3762, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !3745}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3739, file: !3708, line: 290, baseType: !693, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3739, file: !3708, line: 292, baseType: !680, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3739, file: !3708, line: 293, baseType: !689, size: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3739, file: !3708, line: 294, baseType: !685, size: 64, offset: 320)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3739, file: !3708, line: 296, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!326, !3745, !134, !340, !531}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3739, file: !3708, line: 306, baseType: !340, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3739, file: !3708, line: 313, baseType: !143, size: 8, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3739, file: !3708, line: 314, baseType: !3770, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3739, file: !3708, line: 317, baseType: !3777, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!1088, !3745, !1090}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3739, file: !3708, line: 320, baseType: !3781, size: 64, offset: 704)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!93, !3745, !1101}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3734, file: !3708, line: 176, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3708, line: 35, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3734, file: !3708, line: 177, baseType: !531, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3734, file: !3708, line: 178, baseType: !3706, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3707, file: !3708, line: 215, baseType: !117, size: 64, offset: 768)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3707, file: !3708, line: 221, baseType: !443, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3707, file: !3708, line: 223, baseType: !265, size: 16, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3707, file: !3708, line: 224, baseType: !335, size: 16, offset: 912)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3707, file: !3708, line: 225, baseType: !3794, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3708, line: 36, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3707, file: !3708, line: 227, baseType: !712, size: 128, align: 64, offset: 1024)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !214, file: !215, line: 71, baseType: !3798, size: 32, offset: 448)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3799, line: 19, size: 32, elements: !3800)
!3799 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3800 = !{!3801}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3798, file: !3799, line: 20, baseType: !757, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !214, file: !215, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !214, file: !215, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !214, file: !215, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !214, file: !215, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !214, file: !215, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !211, file: !12, line: 47, baseType: !196, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !211, file: !12, line: 48, baseType: !220, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !211, file: !12, line: 49, baseType: !3810, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !211, file: !12, line: 50, baseType: !2338, size: 64, offset: 704)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !197, file: !12, line: 418, baseType: !3814, size: 64, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !3816)
!3816 = !{!3817, !3818, !3823, !3827, !3831, !3835}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3815, file: !12, line: 54, baseType: !331, size: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3815, file: !12, line: 55, baseType: !3819, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!326, !3814, !3822, !134}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3815, file: !12, line: 57, baseType: !3824, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!326, !3814, !3822, !114, !340}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3815, file: !12, line: 59, baseType: !3828, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !196, !114}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3815, file: !12, line: 60, baseType: !3832, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!93, !196}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3815, file: !12, line: 61, baseType: !3836, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !196}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !197, file: !12, line: 419, baseType: !114, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !197, file: !12, line: 420, baseType: !114, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !197, file: !12, line: 421, baseType: !220, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !197, file: !12, line: 424, baseType: !3843, size: 64, offset: 1664)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3845)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !197, file: !12, line: 425, baseType: !3847, size: 64, offset: 1728)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !197, file: !12, line: 426, baseType: !7, size: 32, offset: 1792)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !197, file: !12, line: 435, baseType: !654, size: 256, offset: 1856)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !197, file: !12, line: 437, baseType: !3852, size: 64, offset: 2112)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3854, line: 69, size: 320, elements: !3855)
!3854 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3855 = !{!3856, !3857, !3858, !3875, !3877, !3881, !3882}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3853, file: !3854, line: 70, baseType: !114, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3853, file: !3854, line: 71, baseType: !196, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3853, file: !3854, line: 72, baseType: !3859, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3854, line: 47, size: 256, elements: !3862)
!3862 = !{!3863, !3864, !3870, !3874}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3861, file: !3854, line: 49, baseType: !7, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3861, file: !3854, line: 51, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!93, !114, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3853)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3861, file: !3854, line: 53, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!93, !134, !3868}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3861, file: !3854, line: 55, baseType: !3260, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3853, file: !3854, line: 73, baseType: !3876, size: 16, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3853, file: !3854, line: 74, baseType: !3878, size: 8, offset: 208)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !120, line: 16, baseType: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !122, line: 20, baseType: !3880)
!3880 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !3854, line: 75, baseType: !255, size: 8, offset: 216)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !3854, line: 76, baseType: !3883, size: 64, offset: 256)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !3854, line: 76, size: 64, elements: !3884)
!3884 = !{!3885, !3886, !3893}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3883, file: !3854, line: 77, baseType: !117, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3883, file: !3854, line: 78, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3854, line: 86, size: 128, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3889, file: !3854, line: 87, baseType: !7, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3889, file: !3854, line: 88, baseType: !134, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3883, file: !3854, line: 79, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3854, line: 92, size: 256, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3896, file: !3854, line: 94, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3896, file: !3854, line: 95, baseType: !7, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3896, file: !3854, line: 96, baseType: !1950, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3896, file: !3854, line: 97, baseType: !3859, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3896, file: !3854, line: 98, baseType: !117, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !197, file: !12, line: 438, baseType: !7, size: 32, offset: 2176)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !197, file: !12, line: 441, baseType: !7, size: 32, offset: 2208)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !197, file: !12, line: 442, baseType: !3843, size: 64, offset: 2240)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !197, file: !12, line: 443, baseType: !3847, size: 64, offset: 2304)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !197, file: !12, line: 444, baseType: !143, size: 8, offset: 2368)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !197, file: !12, line: 451, baseType: !143, size: 8, offset: 2376)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !197, file: !12, line: 454, baseType: !7, size: 32, offset: 2400)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !197, file: !12, line: 455, baseType: !3911, size: 64, offset: 2432)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3913, line: 23, size: 96, elements: !3914)
!3913 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3914 = !{!3915, !3916, !3917}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3912, file: !3913, line: 24, baseType: !93, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3912, file: !3913, line: 24, baseType: !93, size: 32, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3912, file: !3913, line: 24, baseType: !93, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !197, file: !12, line: 458, baseType: !3919, size: 64, offset: 2496)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!93}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !197, file: !12, line: 460, baseType: !3923, size: 4032, align: 512, offset: 2560)
!3923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3924, size: 4032, elements: !3938)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3924, file: !12, line: 363, baseType: !117, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3924, file: !12, line: 364, baseType: !7, size: 32, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3924, file: !12, line: 367, baseType: !3929, size: 448, offset: 128)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3929, file: !12, line: 320, baseType: !196, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3929, file: !12, line: 321, baseType: !3933, size: 384, offset: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3934, line: 40, size: 384, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3935 = !{!3936}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3933, file: !3934, line: 41, baseType: !3937, size: 384, align: 64)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 384, align: 64, elements: !2462)
!3938 = !{!3939}
!3939 = !DISubrange(count: 7)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !197, file: !12, line: 463, baseType: !3941, size: 192, offset: 6592)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3942, line: 8, size: 192, elements: !3943)
!3942 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3943 = !{!3944, !3945, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3941, file: !3942, line: 10, baseType: !7, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3941, file: !3942, line: 11, baseType: !636, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3941, file: !3942, line: 12, baseType: !3947, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3949, line: 59, size: 48, elements: !3950)
!3949 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3948, file: !3949, line: 60, baseType: !1246, size: 16)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3948, file: !3949, line: 61, baseType: !1246, size: 16, offset: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3948, file: !3949, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3948, file: !3949, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3948, file: !3949, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3948, file: !3949, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !197, file: !12, line: 465, baseType: !113, size: 64, offset: 6784)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !197, file: !12, line: 469, baseType: !7, size: 32, offset: 6848)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !197, file: !12, line: 470, baseType: !201, size: 128, offset: 6912)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !197, file: !12, line: 471, baseType: !3961, size: 64, offset: 7040)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3963, line: 33, size: 96, elements: !3964)
!3963 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3964 = !{!3965, !3966, !3967, !3968}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3962, file: !3963, line: 37, baseType: !93, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3962, file: !3963, line: 43, baseType: !93, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3962, file: !3963, line: 45, baseType: !265, size: 16, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3962, file: !3963, line: 47, baseType: !265, size: 16, offset: 80)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !197, file: !12, line: 476, baseType: !3970, size: 64, offset: 7104)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !3972)
!3972 = !{!3973, !3989, !3990, !3991}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3971, file: !12, line: 379, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3976, line: 204, baseType: !3977)
!3976 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3976, line: 197, size: 192, elements: !3978)
!3978 = !{!3979, !3981, !3982, !3983, !3985, !3987}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3977, file: !3976, line: 198, baseType: !3980, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3976, line: 21, baseType: !121)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3977, file: !3976, line: 199, baseType: !257, size: 8, offset: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3977, file: !3976, line: 200, baseType: !257, size: 8, offset: 40)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3977, file: !3976, line: 201, baseType: !3984, size: 16, offset: 48)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3976, line: 17, baseType: !264)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3977, file: !3976, line: 202, baseType: !3986, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3976, line: 16, baseType: !444)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3977, file: !3976, line: 203, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3976, line: 22, baseType: !444)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3971, file: !12, line: 380, baseType: !7, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3971, file: !12, line: 381, baseType: !134, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3971, file: !12, line: 382, baseType: !134, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !197, file: !12, line: 477, baseType: !3971, size: 256, offset: 7168)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !197, file: !12, line: 480, baseType: !3994, size: 64, offset: 7424)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !197, file: !12, line: 483, baseType: !3997, size: 64, offset: 7488)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !197, file: !12, line: 488, baseType: !134, size: 64, offset: 7552)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !197, file: !12, line: 492, baseType: !117, size: 64, offset: 7616)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !197, file: !12, line: 493, baseType: !7, size: 32, offset: 7680)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !197, file: !12, line: 495, baseType: !117, size: 64, offset: 7744)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !197, file: !12, line: 496, baseType: !7, size: 32, offset: 7808)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !197, file: !12, line: 499, baseType: !7, size: 32, offset: 7840)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !197, file: !12, line: 500, baseType: !4006, size: 64, offset: 7872)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4008, line: 45, baseType: !4009)
!4008 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !197, file: !12, line: 503, baseType: !7, size: 32, offset: 7936)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !197, file: !12, line: 504, baseType: !4012, size: 64, offset: 8000)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4015, line: 96, size: 192, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4016 = !{!4017, !4018, !4061, !4063}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4014, file: !4015, line: 97, baseType: !7, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4014, file: !4015, line: 98, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4015, line: 24, size: 3072, elements: !4021)
!4021 = !{!4022, !4024, !4025, !4026, !4027, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4058, !4059, !4060}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4020, file: !4015, line: 26, baseType: !4023, size: 128)
!4023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 128, elements: !2462)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4020, file: !4015, line: 27, baseType: !4023, size: 128, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4020, file: !4015, line: 28, baseType: !93, size: 32, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4020, file: !4015, line: 31, baseType: !227, size: 32, align: 512, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4020, file: !4015, line: 32, baseType: !4028, size: 960, offset: 576)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4029, line: 206, size: 960, elements: !4030)
!4029 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4030 = !{!4031, !4032, !4035, !4037, !4038, !4040}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4028, file: !4029, line: 207, baseType: !715, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4028, file: !4029, line: 208, baseType: !4033, size: 256, offset: 64)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4034, size: 256, elements: !766)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4028, file: !4029, line: 209, baseType: !4036, size: 256, offset: 320)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !766)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4028, file: !4029, line: 213, baseType: !118, size: 64, offset: 576)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4028, file: !4029, line: 215, baseType: !4039, size: 256, offset: 640)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !766)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4028, file: !4029, line: 216, baseType: !255, size: 8, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4020, file: !4015, line: 33, baseType: !113, size: 64, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4020, file: !4015, line: 34, baseType: !113, size: 64, offset: 1600)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4020, file: !4015, line: 35, baseType: !143, size: 8, offset: 1664)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4020, file: !4015, line: 36, baseType: !2897, size: 320, offset: 1728)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4020, file: !4015, line: 37, baseType: !1268, size: 256, offset: 2048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4020, file: !4015, line: 38, baseType: !712, size: 128, align: 64, offset: 2304)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4020, file: !4015, line: 39, baseType: !4048, size: 64, offset: 2432)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4015, line: 49, size: 768, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4049, file: !4015, line: 50, baseType: !227, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4049, file: !4015, line: 51, baseType: !4036, size: 256, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4049, file: !4015, line: 53, baseType: !4036, size: 256, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4049, file: !4015, line: 54, baseType: !113, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4049, file: !4015, line: 55, baseType: !4048, size: 64, offset: 640)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4049, file: !4015, line: 56, baseType: !93, size: 32, offset: 704)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4049, file: !4015, line: 57, baseType: !93, size: 32, offset: 736)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4020, file: !4015, line: 40, baseType: !113, size: 64, offset: 2496)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4020, file: !4015, line: 42, baseType: !93, size: 32, offset: 2560)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4020, file: !4015, line: 43, baseType: !4013, size: 64, offset: 2624)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4014, file: !4015, line: 99, baseType: !4062, offset: 128)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !572, line: 211, elements: !573)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4014, file: !4015, line: 100, baseType: !4064, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4015, line: 63, size: 3008, elements: !4066)
!4066 = !{!4067, !4068, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4096}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4065, file: !4015, line: 64, baseType: !4048, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4065, file: !4015, line: 65, baseType: !4069, size: 192, offset: 64)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4048, size: 192, elements: !295)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4065, file: !4015, line: 67, baseType: !93, size: 32, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4065, file: !4015, line: 68, baseType: !654, size: 256, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4065, file: !4015, line: 69, baseType: !227, size: 32, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4065, file: !4015, line: 70, baseType: !654, size: 256, offset: 640)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4065, file: !4015, line: 71, baseType: !113, size: 64, offset: 896)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4065, file: !4015, line: 72, baseType: !113, size: 64, offset: 960)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4065, file: !4015, line: 73, baseType: !113, size: 64, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4065, file: !4015, line: 74, baseType: !113, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4065, file: !4015, line: 75, baseType: !113, size: 64, offset: 1152)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4065, file: !4015, line: 76, baseType: !113, size: 64, offset: 1216)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4065, file: !4015, line: 77, baseType: !113, size: 64, offset: 1280)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4065, file: !4015, line: 78, baseType: !113, size: 64, offset: 1344)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4065, file: !4015, line: 79, baseType: !143, size: 8, offset: 1408)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4065, file: !4015, line: 80, baseType: !113, size: 64, offset: 1472)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4065, file: !4015, line: 81, baseType: !654, size: 256, offset: 1536)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4065, file: !4015, line: 82, baseType: !1461, size: 256, offset: 1792)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4065, file: !4015, line: 84, baseType: !247, size: 32, offset: 2048)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4065, file: !4015, line: 87, baseType: !113, size: 64, offset: 2112)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4065, file: !4015, line: 88, baseType: !113, size: 64, offset: 2176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4065, file: !4015, line: 89, baseType: !4090, size: 704, offset: 2240)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1269, line: 111, size: 704, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4090, file: !1269, line: 112, baseType: !1268, size: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4090, file: !1269, line: 113, baseType: !2897, size: 320, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4090, file: !1269, line: 116, baseType: !3191, size: 64, offset: 576)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4090, file: !1269, line: 117, baseType: !93, size: 32, offset: 640)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4065, file: !4015, line: 90, baseType: !4013, size: 64, offset: 2944)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !197, file: !12, line: 515, baseType: !4098, size: 64, offset: 8064)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4100, line: 117, size: 128, elements: !4101)
!4100 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4099, file: !4100, line: 118, baseType: !827, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4099, file: !4100, line: 119, baseType: !827, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4099, file: !4100, line: 120, baseType: !118, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !197, file: !12, line: 516, baseType: !7, size: 32, offset: 8128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !197, file: !12, line: 519, baseType: !7, size: 32, offset: 8160)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !197, file: !12, line: 520, baseType: !4108, size: 64, offset: 8192)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !197, file: !12, line: 523, baseType: !4110, size: 64, offset: 8256)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !197, file: !12, line: 524, baseType: !7, size: 32, offset: 8320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !197, file: !12, line: 525, baseType: !4115, size: 64, offset: 8384)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4118, line: 28, size: 192, elements: !4119)
!4118 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4119 = !{!4120, !4121, !4122}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4117, file: !4118, line: 29, baseType: !114, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4117, file: !4118, line: 30, baseType: !114, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4117, file: !4118, line: 31, baseType: !113, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !197, file: !12, line: 526, baseType: !7, size: 32, offset: 8448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !197, file: !12, line: 533, baseType: !117, size: 64, offset: 8512)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !197, file: !12, line: 534, baseType: !7, size: 32, offset: 8576)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !197, file: !12, line: 535, baseType: !112, size: 64, offset: 8640)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !197, file: !12, line: 536, baseType: !7, size: 32, offset: 8704)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !197, file: !12, line: 539, baseType: !93, size: 32, offset: 8736)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !197, file: !12, line: 540, baseType: !4130, size: 64, offset: 8768)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4132, line: 32, size: 64, elements: !4133)
!4132 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4131, file: !4132, line: 33, baseType: !827, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4131, file: !4132, line: 34, baseType: !827, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !197, file: !12, line: 563, baseType: !201, size: 128, offset: 8832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !197, file: !12, line: 565, baseType: !201, size: 128, offset: 8960)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !197, file: !12, line: 568, baseType: !4139, size: 64, offset: 9088)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !197, file: !12, line: 570, baseType: !247, size: 32, offset: 9152)
!4141 = !DIGlobalVariableExpression(var: !4142, expr: !DIExpression())
!4142 = distinct !DIGlobalVariable(name: "__already_done", scope: !4143, file: !3, line: 190, type: !143, isLocal: true, isDefinition: true)
!4143 = distinct !DISubprogram(name: "patch_dest", scope: !3, file: !3, line: 179, type: !4144, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!117, !117, !143}
!4146 = !{!4147, !4148, !4149, !4150, !4152, !4156, !4159}
!4147 = !DILocalVariable(name: "dest", arg: 1, scope: !4143, file: !3, line: 179, type: !117)
!4148 = !DILocalVariable(name: "direct", arg: 2, scope: !4143, file: !3, line: 179, type: !143)
!4149 = !DILocalVariable(name: "tsize", scope: !4143, file: !3, line: 181, type: !7)
!4150 = !DILocalVariable(name: "pad", scope: !4143, file: !3, line: 182, type: !4151)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!4152 = !DILocalVariable(name: "__ret_do_once", scope: !4153, file: !3, line: 190, type: !143)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 190, column: 3)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 189, column: 30)
!4155 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 189, column: 6)
!4156 = !DILocalVariable(name: "__ret_cond", scope: !4157, file: !3, line: 190, type: !143)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 190, column: 3)
!4158 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 190, column: 3)
!4159 = !DILocalVariable(name: "__ret_once", scope: !4157, file: !3, line: 190, type: !143)
!4160 = !DIGlobalVariableExpression(var: !4161, expr: !DIExpression())
!4161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !4162, isLocal: true, isDefinition: true)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 352, elements: !4163)
!4163 = !{!4164}
!4164 = !DISubrange(count: 44)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "nops", scope: !2, file: !3, line: 172, type: !4167, isLocal: true, isDefinition: true)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4168, size: 256, elements: !452)
!4168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 136, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 17)
!4172 = !{!"rsp"}
!4173 = !{i32 7, !"Dwarf Version", i32 5}
!4174 = !{i32 2, !"Debug Info Version", i32 3}
!4175 = !{i32 1, !"wchar_size", i32 2}
!4176 = !{i32 8, !"cf-protection-branch", i32 1}
!4177 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4178 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4179 = !{i32 1, !"Code Model", i32 2}
!4180 = !{i32 1, !"override-stack-alignment", i32 8}
!4181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4182 = distinct !DISubprogram(name: "debug_thunks", scope: !3, file: !3, line: 33, type: !132, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4183 = !{!4184}
!4184 = !DILocalVariable(name: "str", arg: 1, scope: !4182, file: !3, line: 33, type: !134)
!4185 = !DILocation(line: 33, column: 38, scope: !4182)
!4186 = !DILocation(line: 35, column: 19, scope: !4182)
!4187 = !DILocation(line: 36, column: 2, scope: !4182)
!4188 = distinct !DISubprogram(name: "callthunks_patch_builtin_calls", scope: !3, file: !3, line: 255, type: !2576, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4189)
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "cs", scope: !4188, file: !3, line: 257, type: !4191)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callthunk_sites", file: !4192, line: 106, size: 256, elements: !4193)
!4192 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!4193 = !{!4194, !4195, !4196, !4204}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "call_start", scope: !4191, file: !4192, line: 107, baseType: !964, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "call_end", scope: !4191, file: !4192, line: 107, baseType: !964, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "pv_start", scope: !4191, file: !4192, line: 108, baseType: !4197, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "paravirt_patch_site", file: !4199, line: 7, size: 128, elements: !4200)
!4199 = !DIFile(filename: "./arch/x86/include/asm/paravirt_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6536b931051cedf88271762a2f1845b")
!4200 = !{!4201, !4202, !4203}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "instr", scope: !4198, file: !4199, line: 8, baseType: !4151, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4198, file: !4199, line: 9, baseType: !255, size: 8, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4198, file: !4199, line: 10, baseType: !255, size: 8, offset: 72)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pv_end", scope: !4191, file: !4192, line: 108, baseType: !4197, size: 64, offset: 192)
!4205 = !DILocation(line: 257, column: 2, scope: !4188)
!4206 = !DILocation(line: 257, column: 25, scope: !4188)
!4207 = !DILocation(line: 264, column: 6, scope: !4188)
!4208 = !DILocation(line: 264, column: 7, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 264, column: 6)
!4210 = !DILocation(line: 265, column: 3, scope: !4209)
!4211 = !DILocation(line: 267, column: 2, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 267, column: 2)
!4213 = !DILocation(line: 267, column: 2, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 267, column: 2)
!4215 = !DILocation(line: 268, column: 2, scope: !4188)
!4216 = !DILocation(line: 269, column: 2, scope: !4188)
!4217 = !DILocation(line: 270, column: 21, scope: !4188)
!4218 = !DILocation(line: 271, column: 2, scope: !4188)
!4219 = !DILocation(line: 272, column: 1, scope: !4188)
!4220 = distinct !DISubprogram(name: "arch_test_bit", scope: !4221, file: !4221, line: 237, type: !4222, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4221 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!143, !113, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4226)
!4226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!4227 = !{!4228, !4229}
!4228 = !DILocalVariable(name: "nr", arg: 1, scope: !4220, file: !4221, line: 237, type: !113)
!4229 = !DILocalVariable(name: "addr", arg: 2, scope: !4220, file: !4221, line: 237, type: !4224)
!4230 = !DILocation(line: 237, column: 29, scope: !4220)
!4231 = !DILocation(line: 237, column: 63, scope: !4220)
!4232 = !DILocation(line: 239, column: 30, scope: !4220)
!4233 = !DILocation(line: 239, column: 9, scope: !4220)
!4234 = !DILocation(line: 239, column: 54, scope: !4220)
!4235 = !DILocation(line: 239, column: 58, scope: !4220)
!4236 = !DILocation(line: 239, column: 36, scope: !4220)
!4237 = !DILocation(line: 240, column: 26, scope: !4220)
!4238 = !DILocation(line: 240, column: 30, scope: !4220)
!4239 = !DILocation(line: 240, column: 8, scope: !4220)
!4240 = !DILocation(line: 239, column: 2, scope: !4220)
!4241 = distinct !DISubprogram(name: "_static_cpu_has", scope: !4242, file: !4242, line: 173, type: !4243, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4245)
!4242 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!143, !263}
!4245 = !{!4246, !4247, !4248}
!4246 = !DILocalVariable(name: "bit", arg: 1, scope: !4241, file: !4242, line: 173, type: !263)
!4247 = !DILabel(scope: !4241, name: "t_yes", file: !4242, line: 187)
!4248 = !DILabel(scope: !4241, name: "t_no", file: !4242, line: 189)
!4249 = !DILocation(line: 173, column: 49, scope: !4241)
!4250 = !DILocation(line: 183, column: 24, scope: !4241)
!4251 = !DILocation(line: 184, column: 30, scope: !4241)
!4252 = !DILocation(line: 184, column: 34, scope: !4241)
!4253 = !DILocation(line: 184, column: 26, scope: !4241)
!4254 = !DILocation(line: 185, column: 70, scope: !4241)
!4255 = !DILocation(line: 185, column: 74, scope: !4241)
!4256 = !DILocation(line: 185, column: 25, scope: !4241)
!4257 = !DILocation(line: 175, column: 2, scope: !4241)
!4258 = !{i64 2149620729, i64 2149620762, i64 2149620768, i64 2149620784, i64 2149620803, i64 2149620834, i64 2149621787, i64 2149620376, i64 2149621793, i64 2149621841, i64 2149621905, i64 2149621969, i64 2149622026, i64 2149622233, i64 2149622281, i64 2149622345, i64 2149622409, i64 2149622466, i64 2149620494, i64 2149620519, i64 2149622676, i64 2149622804, i64 2149622737, i64 2149622818, i64 2149622832, i64 2149622948, i64 2149622893, i64 2149622962, i64 2149620653, i64 1084325, i64 1084365, i64 1084374, i64 1084424, i64 1084445, i64 1084465}
!4259 = !DILocation(line: 187, column: 1, scope: !4241)
!4260 = !DILocation(line: 188, column: 2, scope: !4241)
!4261 = !DILocation(line: 189, column: 1, scope: !4241)
!4262 = !DILocation(line: 190, column: 2, scope: !4241)
!4263 = !DILocation(line: 191, column: 1, scope: !4241)
!4264 = !DISubprogram(name: "_printk", scope: !4265, file: !4265, line: 153, type: !4266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4265 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!93, !114, null}
!4268 = !DISubprogram(name: "mutex_lock", scope: !655, file: !655, line: 227, type: !4269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!4272 = distinct !DISubprogram(name: "callthunks_setup", scope: !3, file: !3, line: 247, type: !4273, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4277)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{null, !4275, !4276}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4277 = !{!4278, !4279}
!4278 = !DILocalVariable(name: "cs", arg: 1, scope: !4272, file: !3, line: 247, type: !4275)
!4279 = !DILocalVariable(name: "ct", arg: 2, scope: !4272, file: !3, line: 247, type: !4276)
!4280 = !DILocation(line: 247, column: 42, scope: !4272)
!4281 = !DILocation(line: 247, column: 70, scope: !4272)
!4282 = !DILocation(line: 249, column: 2, scope: !4272)
!4283 = !DILocation(line: 249, column: 2, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 249, column: 2)
!4285 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 249, column: 2)
!4286 = !DILocation(line: 249, column: 2, scope: !4285)
!4287 = !DILocation(line: 249, column: 2, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 249, column: 2)
!4289 = !DILocation(line: 249, column: 2, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 249, column: 2)
!4291 = !DILocation(line: 250, column: 19, scope: !4272)
!4292 = !DILocation(line: 250, column: 23, scope: !4272)
!4293 = !DILocation(line: 250, column: 35, scope: !4272)
!4294 = !DILocation(line: 250, column: 39, scope: !4272)
!4295 = !DILocation(line: 250, column: 49, scope: !4272)
!4296 = !DILocation(line: 250, column: 2, scope: !4272)
!4297 = !DILocation(line: 251, column: 28, scope: !4272)
!4298 = !DILocation(line: 251, column: 32, scope: !4272)
!4299 = !DILocation(line: 251, column: 42, scope: !4272)
!4300 = !DILocation(line: 251, column: 46, scope: !4272)
!4301 = !DILocation(line: 251, column: 54, scope: !4272)
!4302 = !DILocation(line: 251, column: 2, scope: !4272)
!4303 = !DILocation(line: 252, column: 2, scope: !4272)
!4304 = !DILocation(line: 252, column: 2, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 252, column: 2)
!4306 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 252, column: 2)
!4307 = !DILocation(line: 252, column: 2, scope: !4306)
!4308 = !DILocation(line: 252, column: 2, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 252, column: 2)
!4310 = !DILocation(line: 252, column: 2, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 252, column: 2)
!4312 = !DILocation(line: 253, column: 1, scope: !4272)
!4313 = !DISubprogram(name: "mutex_unlock", scope: !655, file: !655, line: 246, type: !4269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4314 = distinct !DISubprogram(name: "callthunks_translate_call_dest", scope: !3, file: !3, line: 274, type: !4315, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!117, !117}
!4317 = !{!4318, !4319}
!4318 = !DILocalVariable(name: "dest", arg: 1, scope: !4314, file: !3, line: 274, type: !117)
!4319 = !DILocalVariable(name: "target", scope: !4314, file: !3, line: 276, type: !117)
!4320 = !DILocation(line: 274, column: 44, scope: !4314)
!4321 = !DILocation(line: 276, column: 2, scope: !4314)
!4322 = !DILocation(line: 276, column: 8, scope: !4314)
!4323 = !DILocation(line: 278, column: 2, scope: !4314)
!4324 = !DILocation(line: 278, column: 2, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 278, column: 2)
!4326 = !DILocation(line: 280, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 280, column: 6)
!4328 = !{i8 0, i8 2}
!4329 = !DILocation(line: 280, column: 26, scope: !4327)
!4330 = !DILocation(line: 280, column: 39, scope: !4327)
!4331 = !DILocation(line: 280, column: 29, scope: !4327)
!4332 = !DILocation(line: 280, column: 6, scope: !4314)
!4333 = !DILocation(line: 281, column: 10, scope: !4327)
!4334 = !DILocation(line: 281, column: 3, scope: !4327)
!4335 = !DILocation(line: 283, column: 25, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 283, column: 6)
!4337 = !DILocation(line: 283, column: 7, scope: !4336)
!4338 = !DILocation(line: 283, column: 6, scope: !4314)
!4339 = !DILocation(line: 284, column: 10, scope: !4336)
!4340 = !DILocation(line: 284, column: 3, scope: !4336)
!4341 = !DILocation(line: 286, column: 22, scope: !4314)
!4342 = !DILocation(line: 286, column: 11, scope: !4314)
!4343 = !DILocation(line: 286, column: 9, scope: !4314)
!4344 = !DILocation(line: 287, column: 9, scope: !4314)
!4345 = !DILocation(line: 287, column: 20, scope: !4314)
!4346 = !DILocation(line: 287, column: 2, scope: !4314)
!4347 = !DILocation(line: 288, column: 1, scope: !4314)
!4348 = distinct !DISubprogram(name: "skip_addr", scope: !3, file: !3, line: 122, type: !190, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4349)
!4349 = !{!4350}
!4350 = !DILocalVariable(name: "dest", arg: 1, scope: !4348, file: !3, line: 122, type: !117)
!4351 = !DILocation(line: 122, column: 29, scope: !4348)
!4352 = !DILocation(line: 124, column: 6, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 124, column: 6)
!4354 = !DILocation(line: 124, column: 11, scope: !4353)
!4355 = !DILocation(line: 124, column: 6, scope: !4348)
!4356 = !DILocation(line: 125, column: 3, scope: !4353)
!4357 = !DILocation(line: 126, column: 6, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 126, column: 6)
!4359 = !DILocation(line: 126, column: 11, scope: !4358)
!4360 = !DILocation(line: 126, column: 6, scope: !4348)
!4361 = !DILocation(line: 127, column: 3, scope: !4358)
!4362 = !DILocation(line: 128, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 128, column: 6)
!4364 = !DILocation(line: 128, column: 11, scope: !4363)
!4365 = !DILocation(line: 128, column: 6, scope: !4348)
!4366 = !DILocation(line: 129, column: 3, scope: !4363)
!4367 = !DILocation(line: 131, column: 6, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 131, column: 6)
!4369 = !DILocation(line: 131, column: 11, scope: !4368)
!4370 = !DILocation(line: 131, column: 6, scope: !4348)
!4371 = !DILocation(line: 132, column: 3, scope: !4368)
!4372 = !DILocation(line: 134, column: 6, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 134, column: 6)
!4374 = !DILocation(line: 134, column: 11, scope: !4373)
!4375 = !DILocation(line: 134, column: 6, scope: !4348)
!4376 = !DILocation(line: 135, column: 3, scope: !4373)
!4377 = !DILocation(line: 145, column: 6, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 145, column: 6)
!4379 = !DILocation(line: 145, column: 11, scope: !4378)
!4380 = !DILocation(line: 145, column: 38, scope: !4378)
!4381 = !DILocation(line: 146, column: 6, scope: !4378)
!4382 = !DILocation(line: 146, column: 11, scope: !4378)
!4383 = !DILocation(line: 145, column: 6, scope: !4348)
!4384 = !DILocation(line: 147, column: 3, scope: !4378)
!4385 = !DILocation(line: 149, column: 2, scope: !4348)
!4386 = !DILocation(line: 150, column: 1, scope: !4348)
!4387 = distinct !DISubprogram(name: "is_coretext", scope: !3, file: !3, line: 113, type: !4388, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4390)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!143, !4276, !117}
!4390 = !{!4391, !4392}
!4391 = !DILocalVariable(name: "ct", arg: 1, scope: !4387, file: !3, line: 113, type: !4276)
!4392 = !DILocalVariable(name: "addr", arg: 2, scope: !4387, file: !3, line: 113, type: !117)
!4393 = !DILocation(line: 113, column: 49, scope: !4387)
!4394 = !DILocation(line: 113, column: 59, scope: !4387)
!4395 = !DILocation(line: 115, column: 6, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 115, column: 6)
!4397 = !DILocation(line: 115, column: 9, scope: !4396)
!4398 = !DILocation(line: 115, column: 28, scope: !4396)
!4399 = !DILocation(line: 115, column: 32, scope: !4396)
!4400 = !DILocation(line: 115, column: 12, scope: !4396)
!4401 = !DILocation(line: 115, column: 6, scope: !4387)
!4402 = !DILocation(line: 116, column: 3, scope: !4396)
!4403 = !DILocation(line: 117, column: 41, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 117, column: 6)
!4405 = !DILocation(line: 117, column: 6, scope: !4404)
!4406 = !DILocation(line: 117, column: 6, scope: !4387)
!4407 = !DILocation(line: 118, column: 3, scope: !4404)
!4408 = !DILocation(line: 119, column: 32, scope: !4387)
!4409 = !DILocation(line: 119, column: 9, scope: !4387)
!4410 = !DILocation(line: 119, column: 2, scope: !4387)
!4411 = !DILocation(line: 120, column: 1, scope: !4387)
!4412 = !DILocation(line: 179, column: 31, scope: !4143)
!4413 = !DILocation(line: 179, column: 42, scope: !4143)
!4414 = !DILocation(line: 181, column: 2, scope: !4143)
!4415 = !DILocation(line: 181, column: 15, scope: !4143)
!4416 = !DILocation(line: 182, column: 2, scope: !4143)
!4417 = !DILocation(line: 182, column: 6, scope: !4143)
!4418 = !DILocation(line: 182, column: 12, scope: !4143)
!4419 = !DILocation(line: 182, column: 19, scope: !4143)
!4420 = !DILocation(line: 182, column: 17, scope: !4143)
!4421 = !DILocation(line: 185, column: 12, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 185, column: 6)
!4423 = !DILocation(line: 185, column: 42, scope: !4422)
!4424 = !DILocation(line: 185, column: 7, scope: !4422)
!4425 = !DILocation(line: 185, column: 6, scope: !4143)
!4426 = !DILocation(line: 186, column: 10, scope: !4422)
!4427 = !DILocation(line: 186, column: 3, scope: !4422)
!4428 = !DILocation(line: 189, column: 11, scope: !4155)
!4429 = !DILocation(line: 189, column: 22, scope: !4155)
!4430 = !DILocation(line: 189, column: 6, scope: !4155)
!4431 = !DILocation(line: 189, column: 6, scope: !4143)
!4432 = !DILocation(line: 190, column: 3, scope: !4153)
!4433 = !DILocation(line: 190, column: 3, scope: !4157)
!4434 = !DILocation(line: 190, column: 3, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 190, column: 3)
!4436 = !DILocation(line: 0, scope: !4435)
!4437 = !DILocation(line: 190, column: 3, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 190, column: 3)
!4439 = !DILocation(line: 190, column: 3, scope: !4158)
!4440 = !DILocation(line: 190, column: 3, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 190, column: 3)
!4442 = !DILocation(line: 190, column: 3, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 190, column: 3)
!4444 = !DILocation(line: 190, column: 3, scope: !4154)
!4445 = !DILocation(line: 191, column: 3, scope: !4154)
!4446 = !DILocation(line: 194, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 194, column: 6)
!4448 = !DILocation(line: 194, column: 6, scope: !4143)
!4449 = !DILocation(line: 195, column: 10, scope: !4447)
!4450 = !DILocation(line: 195, column: 40, scope: !4447)
!4451 = !DILocation(line: 195, column: 3, scope: !4447)
!4452 = !DILocation(line: 197, column: 25, scope: !4447)
!4453 = !DILocation(line: 197, column: 55, scope: !4447)
!4454 = !DILocation(line: 197, column: 3, scope: !4447)
!4455 = !DILocation(line: 198, column: 9, scope: !4143)
!4456 = !DILocation(line: 198, column: 2, scope: !4143)
!4457 = !DILocation(line: 199, column: 1, scope: !4143)
!4458 = distinct !DISubprogram(name: "callthunks_patch_module_calls", scope: !3, file: !3, line: 323, type: !4459, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !4275, !196}
!4461 = !{!4462, !4463, !4464}
!4462 = !DILocalVariable(name: "cs", arg: 1, scope: !4458, file: !3, line: 323, type: !4275)
!4463 = !DILocalVariable(name: "mod", arg: 2, scope: !4458, file: !3, line: 324, type: !196)
!4464 = !DILocalVariable(name: "ct", scope: !4458, file: !3, line: 326, type: !182)
!4465 = !DILocation(line: 323, column: 69, scope: !4458)
!4466 = !DILocation(line: 324, column: 25, scope: !4458)
!4467 = !DILocation(line: 326, column: 2, scope: !4458)
!4468 = !DILocation(line: 326, column: 19, scope: !4458)
!4469 = !DILocation(line: 326, column: 24, scope: !4458)
!4470 = !DILocation(line: 327, column: 26, scope: !4458)
!4471 = !DILocation(line: 327, column: 31, scope: !4458)
!4472 = !DILocation(line: 327, column: 45, scope: !4458)
!4473 = !DILocation(line: 327, column: 11, scope: !4458)
!4474 = !DILocation(line: 328, column: 26, scope: !4458)
!4475 = !DILocation(line: 328, column: 31, scope: !4458)
!4476 = !DILocation(line: 328, column: 45, scope: !4458)
!4477 = !DILocation(line: 328, column: 11, scope: !4458)
!4478 = !DILocation(line: 328, column: 52, scope: !4458)
!4479 = !DILocation(line: 328, column: 57, scope: !4458)
!4480 = !DILocation(line: 328, column: 71, scope: !4458)
!4481 = !DILocation(line: 328, column: 50, scope: !4458)
!4482 = !DILocation(line: 329, column: 11, scope: !4458)
!4483 = !DILocation(line: 329, column: 16, scope: !4458)
!4484 = !DILocation(line: 332, column: 7, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 332, column: 6)
!4486 = !DILocation(line: 332, column: 6, scope: !4458)
!4487 = !DILocation(line: 333, column: 3, scope: !4485)
!4488 = !DILocation(line: 335, column: 2, scope: !4458)
!4489 = !DILocation(line: 336, column: 19, scope: !4458)
!4490 = !DILocation(line: 336, column: 2, scope: !4458)
!4491 = !DILocation(line: 337, column: 2, scope: !4458)
!4492 = !DILocation(line: 338, column: 1, scope: !4458)
!4493 = distinct !DISubprogram(name: "constant_test_bit", scope: !4221, file: !4221, line: 204, type: !4494, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!143, !118, !4224}
!4496 = !{!4497, !4498}
!4497 = !DILocalVariable(name: "nr", arg: 1, scope: !4493, file: !4221, line: 204, type: !118)
!4498 = !DILocalVariable(name: "addr", arg: 2, scope: !4493, file: !4221, line: 204, type: !4224)
!4499 = !DILocation(line: 204, column: 52, scope: !4493)
!4500 = !DILocation(line: 204, column: 86, scope: !4493)
!4501 = !DILocation(line: 206, column: 19, scope: !4493)
!4502 = !DILocation(line: 206, column: 22, scope: !4493)
!4503 = !DILocation(line: 206, column: 15, scope: !4493)
!4504 = !DILocation(line: 207, column: 4, scope: !4493)
!4505 = !DILocation(line: 207, column: 9, scope: !4493)
!4506 = !DILocation(line: 207, column: 12, scope: !4493)
!4507 = !DILocation(line: 206, column: 44, scope: !4493)
!4508 = !DILocation(line: 207, column: 37, scope: !4493)
!4509 = !DILocation(line: 206, column: 2, scope: !4493)
!4510 = distinct !DISubprogram(name: "variable_test_bit", scope: !4221, file: !4221, line: 224, type: !4494, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513, !4514}
!4512 = !DILocalVariable(name: "nr", arg: 1, scope: !4510, file: !4221, line: 224, type: !118)
!4513 = !DILocalVariable(name: "addr", arg: 2, scope: !4510, file: !4221, line: 224, type: !4224)
!4514 = !DILocalVariable(name: "oldbit", scope: !4510, file: !4221, line: 226, type: !143)
!4515 = !DILocation(line: 224, column: 52, scope: !4510)
!4516 = !DILocation(line: 224, column: 86, scope: !4510)
!4517 = !DILocation(line: 226, column: 2, scope: !4510)
!4518 = !DILocation(line: 226, column: 7, scope: !4510)
!4519 = !DILocation(line: 231, column: 33, scope: !4510)
!4520 = !DILocation(line: 231, column: 46, scope: !4510)
!4521 = !DILocation(line: 228, column: 2, scope: !4510)
!4522 = !{i64 2148157422, i64 2148157496}
!4523 = !DILocation(line: 233, column: 9, scope: !4510)
!4524 = !DILocation(line: 234, column: 1, scope: !4510)
!4525 = !DILocation(line: 233, column: 2, scope: !4510)
!4526 = distinct !DISubprogram(name: "patch_call_sites", scope: !3, file: !3, line: 227, type: !4527, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !964, !964, !4276}
!4529 = !{!4530, !4531, !4532, !4533}
!4530 = !DILocalVariable(name: "start", arg: 1, scope: !4526, file: !3, line: 227, type: !964)
!4531 = !DILocalVariable(name: "end", arg: 2, scope: !4526, file: !3, line: 227, type: !964)
!4532 = !DILocalVariable(name: "ct", arg: 3, scope: !4526, file: !3, line: 227, type: !4276)
!4533 = !DILocalVariable(name: "s", scope: !4526, file: !3, line: 229, type: !964)
!4534 = !DILocation(line: 227, column: 23, scope: !4526)
!4535 = !DILocation(line: 227, column: 35, scope: !4526)
!4536 = !DILocation(line: 227, column: 64, scope: !4526)
!4537 = !DILocation(line: 229, column: 2, scope: !4526)
!4538 = !DILocation(line: 229, column: 7, scope: !4526)
!4539 = !DILocation(line: 231, column: 11, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 231, column: 2)
!4541 = !DILocation(line: 231, column: 9, scope: !4540)
!4542 = !DILocation(line: 231, column: 7, scope: !4540)
!4543 = !DILocation(line: 231, column: 18, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 231, column: 2)
!4545 = !DILocation(line: 231, column: 22, scope: !4544)
!4546 = !DILocation(line: 231, column: 20, scope: !4544)
!4547 = !DILocation(line: 231, column: 2, scope: !4540)
!4548 = !DILocation(line: 232, column: 22, scope: !4544)
!4549 = !DILocation(line: 232, column: 27, scope: !4544)
!4550 = !DILocation(line: 232, column: 26, scope: !4544)
!4551 = !DILocation(line: 232, column: 24, scope: !4544)
!4552 = !DILocation(line: 232, column: 30, scope: !4544)
!4553 = !DILocation(line: 232, column: 3, scope: !4544)
!4554 = !DILocation(line: 231, column: 28, scope: !4544)
!4555 = !DILocation(line: 231, column: 2, scope: !4544)
!4556 = distinct !{!4556, !4547, !4557, !4558, !4559}
!4557 = !DILocation(line: 232, column: 32, scope: !4540)
!4558 = !{!"llvm.loop.mustprogress"}
!4559 = !{!"llvm.loop.unroll.disable"}
!4560 = !DILocation(line: 233, column: 1, scope: !4526)
!4561 = distinct !DISubprogram(name: "patch_paravirt_call_sites", scope: !3, file: !3, line: 236, type: !4562, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4564)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !4197, !4197, !4276}
!4564 = !{!4565, !4566, !4567, !4568}
!4565 = !DILocalVariable(name: "start", arg: 1, scope: !4561, file: !3, line: 236, type: !4197)
!4566 = !DILocalVariable(name: "end", arg: 2, scope: !4561, file: !3, line: 237, type: !4197)
!4567 = !DILocalVariable(name: "ct", arg: 3, scope: !4561, file: !3, line: 238, type: !4276)
!4568 = !DILocalVariable(name: "p", scope: !4561, file: !3, line: 240, type: !4197)
!4569 = !DILocation(line: 236, column: 55, scope: !4561)
!4570 = !DILocation(line: 237, column: 34, scope: !4561)
!4571 = !DILocation(line: 238, column: 30, scope: !4561)
!4572 = !DILocation(line: 240, column: 2, scope: !4561)
!4573 = !DILocation(line: 240, column: 30, scope: !4561)
!4574 = !DILocation(line: 242, column: 11, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 242, column: 2)
!4576 = !DILocation(line: 242, column: 9, scope: !4575)
!4577 = !DILocation(line: 242, column: 7, scope: !4575)
!4578 = !DILocation(line: 242, column: 18, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 242, column: 2)
!4580 = !DILocation(line: 242, column: 22, scope: !4579)
!4581 = !DILocation(line: 242, column: 20, scope: !4579)
!4582 = !DILocation(line: 242, column: 2, scope: !4575)
!4583 = !DILocation(line: 243, column: 14, scope: !4579)
!4584 = !DILocation(line: 243, column: 17, scope: !4579)
!4585 = !DILocation(line: 243, column: 24, scope: !4579)
!4586 = !DILocation(line: 243, column: 3, scope: !4579)
!4587 = !DILocation(line: 242, column: 28, scope: !4579)
!4588 = !DILocation(line: 242, column: 2, scope: !4579)
!4589 = distinct !{!4589, !4582, !4590, !4558, !4559}
!4590 = !DILocation(line: 243, column: 26, scope: !4575)
!4591 = !DILocation(line: 244, column: 1, scope: !4561)
!4592 = distinct !DISubprogram(name: "patch_call", scope: !3, file: !3, line: 201, type: !4593, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4595)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !117, !4276}
!4595 = !{!4596, !4597, !4598, !4599, !4600, !4602, !4605}
!4596 = !DILocalVariable(name: "addr", arg: 1, scope: !4592, file: !3, line: 201, type: !117)
!4597 = !DILocalVariable(name: "ct", arg: 2, scope: !4592, file: !3, line: 201, type: !4276)
!4598 = !DILocalVariable(name: "pad", scope: !4592, file: !3, line: 203, type: !117)
!4599 = !DILocalVariable(name: "dest", scope: !4592, file: !3, line: 203, type: !117)
!4600 = !DILocalVariable(name: "bytes", scope: !4592, file: !3, line: 204, type: !4601)
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 64, elements: !177)
!4602 = !DILocalVariable(name: "__ret_warn_on", scope: !4603, file: !3, line: 210, type: !93)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 210, column: 15)
!4604 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 210, column: 6)
!4605 = !DILocalVariable(name: "__flags", scope: !4606, file: !3, line: 210, type: !93)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 210, column: 15)
!4607 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 210, column: 15)
!4608 = !DILocation(line: 201, column: 47, scope: !4592)
!4609 = !DILocation(line: 201, column: 77, scope: !4592)
!4610 = !DILocation(line: 203, column: 2, scope: !4592)
!4611 = !DILocation(line: 203, column: 8, scope: !4592)
!4612 = !DILocation(line: 203, column: 14, scope: !4592)
!4613 = !DILocation(line: 204, column: 2, scope: !4592)
!4614 = !DILocation(line: 204, column: 5, scope: !4592)
!4615 = !DILocation(line: 206, column: 23, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 206, column: 6)
!4617 = !DILocation(line: 206, column: 27, scope: !4616)
!4618 = !DILocation(line: 206, column: 7, scope: !4616)
!4619 = !DILocation(line: 206, column: 6, scope: !4592)
!4620 = !DILocation(line: 207, column: 3, scope: !4616)
!4621 = !DILocation(line: 209, column: 23, scope: !4592)
!4622 = !DILocation(line: 209, column: 9, scope: !4592)
!4623 = !DILocation(line: 209, column: 7, scope: !4592)
!4624 = !DILocation(line: 210, column: 7, scope: !4604)
!4625 = !DILocation(line: 210, column: 12, scope: !4604)
!4626 = !DILocation(line: 210, column: 15, scope: !4603)
!4627 = !DILocation(line: 210, column: 15, scope: !4607)
!4628 = !DILocation(line: 210, column: 15, scope: !4606)
!4629 = !DILocation(line: 210, column: 15, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 210, column: 15)
!4631 = !DILocation(line: 210, column: 15, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 210, column: 15)
!4633 = !{i64 2156089419, i64 2156089448, i64 2156089494, i64 2156089552, i64 2156089606, i64 2156089660, i64 2156089715, i64 2156089746, i64 2156090054, i64 2156090060, i64 2156090107, i64 2156090130, i64 2156090156}
!4634 = !DILocation(line: 210, column: 15, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 210, column: 15)
!4636 = !DILocation(line: 210, column: 15, scope: !4604)
!4637 = !DILocation(line: 210, column: 6, scope: !4592)
!4638 = !DILocation(line: 211, column: 3, scope: !4604)
!4639 = !DILocation(line: 213, column: 19, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 213, column: 6)
!4641 = !DILocation(line: 213, column: 23, scope: !4640)
!4642 = !DILocation(line: 213, column: 7, scope: !4640)
!4643 = !DILocation(line: 213, column: 6, scope: !4592)
!4644 = !DILocation(line: 214, column: 3, scope: !4640)
!4645 = !DILocation(line: 216, column: 19, scope: !4592)
!4646 = !DILocation(line: 216, column: 41, scope: !4592)
!4647 = !DILocation(line: 216, column: 45, scope: !4592)
!4648 = !DILocation(line: 216, column: 25, scope: !4592)
!4649 = !DILocation(line: 216, column: 8, scope: !4592)
!4650 = !DILocation(line: 216, column: 6, scope: !4592)
!4651 = !DILocation(line: 217, column: 7, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 217, column: 6)
!4653 = !DILocation(line: 217, column: 6, scope: !4592)
!4654 = !DILocation(line: 218, column: 3, scope: !4652)
!4655 = !DILocation(line: 220, column: 2, scope: !4592)
!4656 = !DILocation(line: 220, column: 2, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 220, column: 2)
!4658 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 220, column: 2)
!4659 = !DILocation(line: 220, column: 2, scope: !4658)
!4660 = !DILocation(line: 220, column: 2, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 220, column: 2)
!4662 = !DILocation(line: 220, column: 2, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 220, column: 2)
!4664 = !DILocation(line: 222, column: 18, scope: !4592)
!4665 = !DILocation(line: 222, column: 43, scope: !4592)
!4666 = !DILocation(line: 222, column: 49, scope: !4592)
!4667 = !DILocation(line: 222, column: 2, scope: !4592)
!4668 = !DILocation(line: 223, column: 18, scope: !4592)
!4669 = !DILocation(line: 223, column: 24, scope: !4592)
!4670 = !DILocation(line: 223, column: 2, scope: !4592)
!4671 = !DILocation(line: 224, column: 1, scope: !4592)
!4672 = distinct !DISubprogram(name: "within_coretext", scope: !3, file: !3, line: 90, type: !4388, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4673)
!4673 = !{!4674, !4675, !4676}
!4674 = !DILocalVariable(name: "ct", arg: 1, scope: !4672, file: !3, line: 90, type: !4276)
!4675 = !DILocalVariable(name: "addr", arg: 2, scope: !4672, file: !3, line: 90, type: !117)
!4676 = !DILocalVariable(name: "p", scope: !4672, file: !3, line: 92, type: !113)
!4677 = !DILocation(line: 90, column: 60, scope: !4672)
!4678 = !DILocation(line: 90, column: 70, scope: !4672)
!4679 = !DILocation(line: 92, column: 2, scope: !4672)
!4680 = !DILocation(line: 92, column: 16, scope: !4672)
!4681 = !DILocation(line: 92, column: 35, scope: !4672)
!4682 = !DILocation(line: 92, column: 20, scope: !4672)
!4683 = !DILocation(line: 94, column: 9, scope: !4672)
!4684 = !DILocation(line: 94, column: 13, scope: !4672)
!4685 = !DILocation(line: 94, column: 21, scope: !4672)
!4686 = !DILocation(line: 94, column: 18, scope: !4672)
!4687 = !DILocation(line: 94, column: 23, scope: !4672)
!4688 = !DILocation(line: 94, column: 26, scope: !4672)
!4689 = !DILocation(line: 94, column: 30, scope: !4672)
!4690 = !DILocation(line: 94, column: 34, scope: !4672)
!4691 = !DILocation(line: 94, column: 28, scope: !4672)
!4692 = !DILocation(line: 0, scope: !4672)
!4693 = !DILocation(line: 95, column: 1, scope: !4672)
!4694 = !DILocation(line: 94, column: 2, scope: !4672)
!4695 = distinct !DISubprogram(name: "call_get_dest", scope: !3, file: !3, line: 152, type: !4315, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4696)
!4696 = !{!4697, !4698, !4744, !4745}
!4697 = !DILocalVariable(name: "addr", arg: 1, scope: !4695, file: !3, line: 152, type: !117)
!4698 = !DILocalVariable(name: "insn", scope: !4695, file: !3, line: 154, type: !4699)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !105, line: 68, size: 896, elements: !4700)
!4700 = !{!4701, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4727, !4732, !4733, !4735, !4736, !4737, !4738, !4739, !4742, !4743}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !4699, file: !105, line: 69, baseType: !4702, size: 64)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !105, line: 16, size: 64, elements: !4703)
!4703 = !{!4704, !4713, !4714}
!4704 = !DIDerivedType(tag: DW_TAG_member, scope: !4702, file: !105, line: 17, baseType: !4705, size: 32)
!4705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4702, file: !105, line: 17, size: 32, elements: !4706)
!4706 = !{!4707, !4710}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4705, file: !105, line: 18, baseType: !4708, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !4709, line: 13, baseType: !93)
!4709 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4705, file: !105, line: 19, baseType: !4711, size: 32)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4712, size: 32, elements: !766)
!4712 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !4709, line: 12, baseType: !257)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !4702, file: !105, line: 22, baseType: !257, size: 8, offset: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4702, file: !105, line: 23, baseType: !257, size: 8, offset: 40)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !4699, file: !105, line: 73, baseType: !4702, size: 64, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !4699, file: !105, line: 74, baseType: !4702, size: 64, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4699, file: !105, line: 75, baseType: !4702, size: 64, offset: 192)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !4699, file: !105, line: 80, baseType: !4702, size: 64, offset: 256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !4699, file: !105, line: 81, baseType: !4702, size: 64, offset: 320)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !4699, file: !105, line: 82, baseType: !4702, size: 64, offset: 384)
!4721 = !DIDerivedType(tag: DW_TAG_member, scope: !4699, file: !105, line: 83, baseType: !4722, size: 64, offset: 448)
!4722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4699, file: !105, line: 83, size: 64, elements: !4723)
!4723 = !{!4724, !4725, !4726}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !4722, file: !105, line: 84, baseType: !4702, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !4722, file: !105, line: 85, baseType: !4702, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !4722, file: !105, line: 86, baseType: !4702, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, scope: !4699, file: !105, line: 88, baseType: !4728, size: 64, offset: 512)
!4728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4699, file: !105, line: 88, size: 64, elements: !4729)
!4729 = !{!4730, !4731}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !4728, file: !105, line: 89, baseType: !4702, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !4728, file: !105, line: 90, baseType: !4702, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !4699, file: !105, line: 93, baseType: !93, size: 32, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4699, file: !105, line: 94, baseType: !4734, size: 32, offset: 608)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !4709, line: 11, baseType: !7)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !4699, file: !105, line: 95, baseType: !257, size: 8, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !4699, file: !105, line: 96, baseType: !257, size: 8, offset: 648)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4699, file: !105, line: 97, baseType: !257, size: 8, offset: 656)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !4699, file: !105, line: 98, baseType: !257, size: 8, offset: 664)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !4699, file: !105, line: 100, baseType: !4740, size: 64, offset: 704)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4712)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !4699, file: !105, line: 101, baseType: !4740, size: 64, offset: 768)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !4699, file: !105, line: 102, baseType: !4740, size: 64, offset: 832)
!4744 = !DILocalVariable(name: "dest", scope: !4695, file: !3, line: 155, type: !117)
!4745 = !DILocalVariable(name: "ret", scope: !4695, file: !3, line: 156, type: !93)
!4746 = !DILocation(line: 152, column: 51, scope: !4695)
!4747 = !DILocation(line: 154, column: 2, scope: !4695)
!4748 = !DILocation(line: 154, column: 14, scope: !4695)
!4749 = !DILocation(line: 155, column: 2, scope: !4695)
!4750 = !DILocation(line: 155, column: 8, scope: !4695)
!4751 = !DILocation(line: 156, column: 2, scope: !4695)
!4752 = !DILocation(line: 156, column: 6, scope: !4695)
!4753 = !DILocation(line: 158, column: 8, scope: !4695)
!4754 = !DILocation(line: 158, column: 6, scope: !4695)
!4755 = !DILocation(line: 159, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 159, column: 6)
!4757 = !DILocation(line: 159, column: 6, scope: !4695)
!4758 = !DILocation(line: 160, column: 18, scope: !4756)
!4759 = !DILocation(line: 160, column: 10, scope: !4756)
!4760 = !DILocation(line: 160, column: 3, scope: !4756)
!4761 = !DILocation(line: 163, column: 11, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 163, column: 6)
!4763 = !DILocation(line: 163, column: 18, scope: !4762)
!4764 = !DILocation(line: 163, column: 6, scope: !4762)
!4765 = !DILocation(line: 163, column: 27, scope: !4762)
!4766 = !DILocation(line: 163, column: 6, scope: !4695)
!4767 = !DILocation(line: 164, column: 3, scope: !4762)
!4768 = !DILocation(line: 166, column: 9, scope: !4695)
!4769 = !DILocation(line: 166, column: 21, scope: !4695)
!4770 = !DILocation(line: 166, column: 16, scope: !4695)
!4771 = !DILocation(line: 166, column: 14, scope: !4695)
!4772 = !DILocation(line: 166, column: 35, scope: !4695)
!4773 = !DILocation(line: 166, column: 45, scope: !4695)
!4774 = !DILocation(line: 166, column: 28, scope: !4695)
!4775 = !DILocation(line: 166, column: 7, scope: !4695)
!4776 = !DILocation(line: 167, column: 16, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 167, column: 6)
!4778 = !DILocation(line: 167, column: 6, scope: !4777)
!4779 = !DILocation(line: 167, column: 6, scope: !4695)
!4780 = !DILocation(line: 168, column: 3, scope: !4777)
!4781 = !DILocation(line: 169, column: 9, scope: !4695)
!4782 = !DILocation(line: 169, column: 2, scope: !4695)
!4783 = !DILocation(line: 170, column: 1, scope: !4695)
!4784 = distinct !DISubprogram(name: "IS_ERR", scope: !4785, file: !4785, line: 59, type: !4786, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4788)
!4785 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!143, !1229}
!4788 = !{!4789}
!4789 = !DILocalVariable(name: "ptr", arg: 1, scope: !4784, file: !4785, line: 59, type: !1229)
!4790 = !DILocation(line: 59, column: 60, scope: !4784)
!4791 = !DILocation(line: 61, column: 9, scope: !4784)
!4792 = !DILocation(line: 61, column: 2, scope: !4784)
!4793 = distinct !DISubprogram(name: "__text_gen_insn", scope: !170, file: !170, line: 102, type: !4794, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4796)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !117, !255, !1229, !1229, !93}
!4796 = !{!4797, !4798, !4799, !4800, !4801, !4802}
!4797 = !DILocalVariable(name: "buf", arg: 1, scope: !4793, file: !170, line: 102, type: !117)
!4798 = !DILocalVariable(name: "opcode", arg: 2, scope: !4793, file: !170, line: 102, type: !255)
!4799 = !DILocalVariable(name: "addr", arg: 3, scope: !4793, file: !170, line: 102, type: !1229)
!4800 = !DILocalVariable(name: "dest", arg: 4, scope: !4793, file: !170, line: 102, type: !1229)
!4801 = !DILocalVariable(name: "size", arg: 5, scope: !4793, file: !170, line: 102, type: !93)
!4802 = !DILocalVariable(name: "insn", scope: !4793, file: !170, line: 104, type: !4803)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "text_poke_insn", file: !170, line: 93, size: 40, elements: !4805)
!4805 = !{!4806, !4810}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4804, file: !170, line: 94, baseType: !4807, size: 40)
!4807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 40, elements: !4808)
!4808 = !{!4809}
!4809 = !DISubrange(count: 5)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !4804, file: !170, line: 95, baseType: !4811, size: 40)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4804, file: !170, line: 95, size: 40, elements: !4812)
!4812 = !{!4813, !4814}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4811, file: !170, line: 96, baseType: !255, size: 8)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "disp", scope: !4811, file: !170, line: 97, baseType: !827, size: 32, offset: 8)
!4815 = !DILocation(line: 102, column: 28, scope: !4793)
!4816 = !DILocation(line: 102, column: 36, scope: !4793)
!4817 = !DILocation(line: 102, column: 56, scope: !4793)
!4818 = !DILocation(line: 102, column: 74, scope: !4793)
!4819 = !DILocation(line: 102, column: 84, scope: !4793)
!4820 = !DILocation(line: 104, column: 2, scope: !4793)
!4821 = !DILocation(line: 104, column: 24, scope: !4793)
!4822 = !DILocation(line: 104, column: 31, scope: !4793)
!4823 = !DILocation(line: 106, column: 2, scope: !4793)
!4824 = !DILocation(line: 106, column: 2, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !170, line: 106, column: 2)
!4826 = distinct !DILexicalBlock(scope: !4793, file: !170, line: 106, column: 2)
!4827 = !DILocation(line: 106, column: 2, scope: !4826)
!4828 = !DILocation(line: 106, column: 2, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4825, file: !170, line: 106, column: 2)
!4830 = !DILocation(line: 106, column: 2, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4829, file: !170, line: 106, column: 2)
!4832 = !DILocation(line: 106, column: 2, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !170, line: 106, column: 2)
!4834 = !{i64 2154478957, i64 2154478986, i64 2154479032, i64 2154479090, i64 2154479144, i64 2154479198, i64 2154479253, i64 2154479284}
!4835 = !DILocation(line: 113, column: 2, scope: !4793)
!4836 = !{i64 2154479685}
!4837 = !DILocation(line: 114, column: 2, scope: !4793)
!4838 = !{i64 2154479733}
!4839 = !DILocation(line: 115, column: 2, scope: !4793)
!4840 = !{i64 2154479781}
!4841 = !DILocation(line: 117, column: 17, scope: !4793)
!4842 = !DILocation(line: 117, column: 2, scope: !4793)
!4843 = !DILocation(line: 117, column: 8, scope: !4793)
!4844 = !DILocation(line: 117, column: 15, scope: !4793)
!4845 = !DILocation(line: 119, column: 6, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4793, file: !170, line: 119, column: 6)
!4847 = !DILocation(line: 119, column: 11, scope: !4846)
!4848 = !DILocation(line: 119, column: 6, scope: !4793)
!4849 = !DILocation(line: 120, column: 22, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4846, file: !170, line: 119, column: 16)
!4851 = !DILocation(line: 120, column: 16, scope: !4850)
!4852 = !DILocation(line: 120, column: 36, scope: !4850)
!4853 = !DILocation(line: 120, column: 43, scope: !4850)
!4854 = !DILocation(line: 120, column: 41, scope: !4850)
!4855 = !DILocation(line: 120, column: 29, scope: !4850)
!4856 = !DILocation(line: 120, column: 27, scope: !4850)
!4857 = !DILocation(line: 120, column: 3, scope: !4850)
!4858 = !DILocation(line: 120, column: 9, scope: !4850)
!4859 = !DILocation(line: 120, column: 14, scope: !4850)
!4860 = !DILocation(line: 121, column: 7, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4850, file: !170, line: 121, column: 7)
!4862 = !DILocation(line: 121, column: 12, scope: !4861)
!4863 = !DILocation(line: 121, column: 7, scope: !4850)
!4864 = !DILocation(line: 126, column: 4, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4861, file: !170, line: 121, column: 18)
!4866 = !DILocation(line: 126, column: 4, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !170, line: 126, column: 4)
!4868 = distinct !DILexicalBlock(scope: !4865, file: !170, line: 126, column: 4)
!4869 = !DILocation(line: 126, column: 4, scope: !4868)
!4870 = !DILocation(line: 126, column: 4, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4867, file: !170, line: 126, column: 4)
!4872 = !DILocation(line: 126, column: 4, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4871, file: !170, line: 126, column: 4)
!4874 = !DILocation(line: 126, column: 4, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !170, line: 126, column: 4)
!4876 = !{i64 2154480154, i64 2154480183, i64 2154480229, i64 2154480287, i64 2154480341, i64 2154480395, i64 2154480450, i64 2154480481}
!4877 = !DILocation(line: 127, column: 3, scope: !4865)
!4878 = !DILocation(line: 128, column: 2, scope: !4850)
!4879 = !DILocation(line: 129, column: 1, scope: !4793)
!4880 = !DISubprogram(name: "text_poke_early", scope: !170, file: !170, line: 28, type: !4881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{null, !117, !1229, !340}
!4883 = !DISubprogram(name: "insn_decode", scope: !105, file: !105, line: 151, type: !4884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!93, !4886, !1229, !93, !104}
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4887 = distinct !DISubprogram(name: "ERR_PTR", scope: !4785, file: !4785, line: 39, type: !4888, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!117, !118}
!4890 = !{!4891}
!4891 = !DILocalVariable(name: "error", arg: 1, scope: !4887, file: !4785, line: 39, type: !118)
!4892 = !DILocation(line: 39, column: 48, scope: !4887)
!4893 = !DILocation(line: 41, column: 18, scope: !4887)
!4894 = !DILocation(line: 41, column: 9, scope: !4887)
!4895 = !DILocation(line: 41, column: 2, scope: !4887)
!4896 = distinct !DISubprogram(name: "text_opcode_size", scope: !170, file: !170, line: 73, type: !4897, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!93, !255}
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "opcode", arg: 1, scope: !4896, file: !170, line: 73, type: !255)
!4901 = !DILocalVariable(name: "size", scope: !4896, file: !170, line: 75, type: !93)
!4902 = !DILocation(line: 73, column: 48, scope: !4896)
!4903 = !DILocation(line: 75, column: 2, scope: !4896)
!4904 = !DILocation(line: 75, column: 6, scope: !4896)
!4905 = !DILocation(line: 80, column: 9, scope: !4896)
!4906 = !DILocation(line: 80, column: 2, scope: !4896)
!4907 = !DILocation(line: 81, column: 2, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4896, file: !170, line: 80, column: 17)
!4909 = !DILocation(line: 82, column: 2, scope: !4908)
!4910 = !DILocation(line: 83, column: 2, scope: !4908)
!4911 = !DILocation(line: 84, column: 2, scope: !4908)
!4912 = !DILocation(line: 85, column: 2, scope: !4908)
!4913 = !DILocation(line: 90, column: 9, scope: !4896)
!4914 = !DILocation(line: 91, column: 1, scope: !4896)
!4915 = !DILocation(line: 90, column: 2, scope: !4896)
!4916 = !DILocation(line: 97, column: 49, scope: !189)
!4917 = !DILocation(line: 99, column: 2, scope: !189)
!4918 = !DILocation(line: 99, column: 7, scope: !189)
!4919 = !DILocation(line: 102, column: 2, scope: !189)
!4920 = !DILocation(line: 102, column: 17, scope: !189)
!4921 = !DILocation(line: 104, column: 2, scope: !189)
!4922 = !DILocation(line: 104, column: 2, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !189, file: !3, line: 104, column: 2)
!4924 = !{i64 2156085253}
!4925 = !DILocation(line: 105, column: 40, scope: !189)
!4926 = !DILocation(line: 105, column: 25, scope: !189)
!4927 = !DILocation(line: 105, column: 8, scope: !189)
!4928 = !DILocation(line: 105, column: 6, scope: !189)
!4929 = !DILocation(line: 106, column: 6, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !189, file: !3, line: 106, column: 6)
!4931 = !DILocation(line: 106, column: 10, scope: !4930)
!4932 = !DILocation(line: 106, column: 47, scope: !4930)
!4933 = !DILocation(line: 106, column: 32, scope: !4930)
!4934 = !DILocation(line: 106, column: 53, scope: !4930)
!4935 = !DILocation(line: 106, column: 13, scope: !4930)
!4936 = !DILocation(line: 106, column: 6, scope: !189)
!4937 = !DILocation(line: 107, column: 7, scope: !4930)
!4938 = !DILocation(line: 107, column: 3, scope: !4930)
!4939 = !DILocation(line: 108, column: 2, scope: !189)
!4940 = !DILocation(line: 108, column: 2, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !189, file: !3, line: 108, column: 2)
!4942 = !{i64 2156085399}
!4943 = !DILocation(line: 108, column: 2, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 108, column: 2)
!4945 = !DILocation(line: 108, column: 2, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 108, column: 2)
!4947 = !{i64 2156085581}
!4948 = !DILocation(line: 110, column: 9, scope: !189)
!4949 = !DILocation(line: 111, column: 1, scope: !189)
!4950 = !DILocation(line: 110, column: 2, scope: !189)
!4951 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4952, file: !4952, line: 78, type: !2569, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4953)
!4952 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4953 = !{!4954, !4955, !4957}
!4954 = !DILocalVariable(name: "val", arg: 1, scope: !4951, file: !4952, line: 78, type: !93)
!4955 = !DILocalVariable(name: "pao_ID__", scope: !4956, file: !4952, line: 80, type: !4009)
!4956 = distinct !DILexicalBlock(scope: !4951, file: !4952, line: 80, column: 2)
!4957 = !DILocalVariable(name: "pto_val__", scope: !4958, file: !4952, line: 80, type: !119)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !4952, line: 80, column: 2)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !4952, line: 80, column: 2)
!4960 = distinct !DILexicalBlock(scope: !4956, file: !4952, line: 80, column: 2)
!4961 = !DILocation(line: 78, column: 53, scope: !4951)
!4962 = !DILocation(line: 80, column: 2, scope: !4951)
!4963 = !DILocation(line: 80, column: 2, scope: !4956)
!4964 = !DILocation(line: 80, column: 2, scope: !4960)
!4965 = !DILocation(line: 80, column: 2, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4960, file: !4952, line: 80, column: 2)
!4967 = !{i64 2149641818}
!4968 = !DILocation(line: 80, column: 2, scope: !4959)
!4969 = !DILocation(line: 80, column: 2, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4959, file: !4952, line: 80, column: 2)
!4971 = !{i64 2149642113}
!4972 = !DILocation(line: 80, column: 2, scope: !4958)
!4973 = !{i64 2149642818}
!4974 = !DILocation(line: 81, column: 1, scope: !4951)
!4975 = !DISubprogram(name: "__module_address", scope: !12, file: !12, line: 607, type: !4976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!196, !113}
!4978 = distinct !DISubprogram(name: "within_module_core", scope: !12, file: !12, line: 624, type: !4979, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4983)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!143, !113, !4981}
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!4983 = !{!4984, !4985, !4986}
!4984 = !DILocalVariable(name: "addr", arg: 1, scope: !4978, file: !12, line: 624, type: !113)
!4985 = !DILocalVariable(name: "mod", arg: 2, scope: !4978, file: !12, line: 625, type: !4981)
!4986 = !DILocalVariable(name: "type", scope: !4987, file: !12, line: 627, type: !92)
!4987 = distinct !DILexicalBlock(scope: !4978, file: !12, line: 627, column: 2)
!4988 = !DILocation(line: 624, column: 53, scope: !4978)
!4989 = !DILocation(line: 625, column: 32, scope: !4978)
!4990 = !DILocation(line: 627, column: 2, scope: !4987)
!4991 = !DILocation(line: 627, column: 2, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4987, file: !12, line: 627, column: 2)
!4993 = !DILocation(line: 627, column: 2, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4992, file: !12, line: 627, column: 2)
!4995 = !DILocation(line: 628, column: 30, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !12, line: 628, column: 7)
!4997 = distinct !DILexicalBlock(scope: !4994, file: !12, line: 627, column: 37)
!4998 = !DILocation(line: 628, column: 36, scope: !4996)
!4999 = !DILocation(line: 628, column: 41, scope: !4996)
!5000 = !DILocation(line: 628, column: 7, scope: !4996)
!5001 = !DILocation(line: 628, column: 7, scope: !4997)
!5002 = !DILocation(line: 629, column: 4, scope: !4996)
!5003 = !DILocation(line: 630, column: 2, scope: !4997)
!5004 = distinct !{!5004, !4990, !5005, !4558, !4559}
!5005 = !DILocation(line: 630, column: 2, scope: !4987)
!5006 = !DILocation(line: 631, column: 2, scope: !4978)
!5007 = !DILocation(line: 632, column: 1, scope: !4978)
!5008 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4952, file: !4952, line: 93, type: !3678, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5009)
!5009 = !{!5010}
!5010 = !DILocalVariable(name: "c", scope: !5011, file: !4952, line: 95, type: !143)
!5011 = distinct !DILexicalBlock(scope: !5008, file: !4952, line: 95, column: 9)
!5012 = !DILocation(line: 95, column: 9, scope: !5011)
!5013 = !{i64 2149646174, i64 2149646267}
!5014 = !DILocation(line: 95, column: 9, scope: !5008)
!5015 = !DILocation(line: 95, column: 2, scope: !5008)
!5016 = distinct !DISubprogram(name: "within_module_mem_type", scope: !12, file: !12, line: 613, type: !5017, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!143, !113, !4981, !92}
!5019 = !{!5020, !5021, !5022, !5023, !5024}
!5020 = !DILocalVariable(name: "addr", arg: 1, scope: !5016, file: !12, line: 613, type: !113)
!5021 = !DILocalVariable(name: "mod", arg: 2, scope: !5016, file: !12, line: 614, type: !4981)
!5022 = !DILocalVariable(name: "type", arg: 3, scope: !5016, file: !12, line: 615, type: !92)
!5023 = !DILocalVariable(name: "base", scope: !5016, file: !12, line: 617, type: !113)
!5024 = !DILocalVariable(name: "size", scope: !5016, file: !12, line: 617, type: !113)
!5025 = !DILocation(line: 613, column: 57, scope: !5016)
!5026 = !DILocation(line: 614, column: 29, scope: !5016)
!5027 = !DILocation(line: 615, column: 26, scope: !5016)
!5028 = !DILocation(line: 617, column: 2, scope: !5016)
!5029 = !DILocation(line: 617, column: 16, scope: !5016)
!5030 = !DILocation(line: 617, column: 22, scope: !5016)
!5031 = !DILocation(line: 619, column: 24, scope: !5016)
!5032 = !DILocation(line: 619, column: 29, scope: !5016)
!5033 = !DILocation(line: 619, column: 33, scope: !5016)
!5034 = !DILocation(line: 619, column: 39, scope: !5016)
!5035 = !DILocation(line: 619, column: 9, scope: !5016)
!5036 = !DILocation(line: 619, column: 7, scope: !5016)
!5037 = !DILocation(line: 620, column: 9, scope: !5016)
!5038 = !DILocation(line: 620, column: 14, scope: !5016)
!5039 = !DILocation(line: 620, column: 18, scope: !5016)
!5040 = !DILocation(line: 620, column: 24, scope: !5016)
!5041 = !DILocation(line: 620, column: 7, scope: !5016)
!5042 = !DILocation(line: 621, column: 9, scope: !5016)
!5043 = !DILocation(line: 621, column: 16, scope: !5016)
!5044 = !DILocation(line: 621, column: 14, scope: !5016)
!5045 = !DILocation(line: 621, column: 23, scope: !5016)
!5046 = !DILocation(line: 621, column: 21, scope: !5016)
!5047 = !DILocation(line: 622, column: 1, scope: !5016)
!5048 = !DILocation(line: 621, column: 2, scope: !5016)
!5049 = !DISubprogram(name: "bcmp", scope: !5050, file: !5050, line: 199, type: !5051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5050 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!93, !1229, !1229, !341}
!5053 = !DISubprogram(name: "text_poke_copy_locked", scope: !170, file: !170, line: 48, type: !5054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!117, !117, !1229, !340, !143}
