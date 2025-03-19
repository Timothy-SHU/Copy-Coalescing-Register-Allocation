; ModuleID = 'arch/x86/kernel/apic/ipi.c'
source_filename = "arch/x86/kernel/apic/ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_ipi__217_29_print_ipi_mode\22, \22a\22\09\09"
module asm "__initcall__kmod_ipi__217_29_print_ipi_mode7:\09\09\09"
module asm ".long\09__initstub__kmod_ipi__217_29_print_ipi_mode7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.irq_cpustat_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [60 x i8] }
%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@apic_use_ipi_shorthand = hidden global %struct.static_key_false zeroinitializer, align 8, !dbg !0
@__setup_str_apic_ipi_shorthand = internal constant [18 x i8] c"no_ipi_broadcast=\00", section ".init.rodata", align 1, !dbg !92
@__setup_apic_ipi_shorthand = internal global %struct.obs_kernel_param { ptr @__setup_str_apic_ipi_shorthand, ptr @apic_ipi_shorthand, i32 0 }, section ".init.setup", align 8, !dbg !58
@__UNIQUE_ID___addressable___initstub__kmod_ipi__217_29_print_ipi_mode7218 = internal global ptr @__initstub__kmod_ipi__217_29_print_ipi_mode7, section ".discard.addressable", align 8, !dbg !73
@apic_ipi_shorthand_off = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !90
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@cpus_booted_once_mask = external dso_local global %struct.cpumask, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [49 x i8] c"sched: Unexpected reschedule of offline CPU#%d!\0A\00", align 1, !dbg !75
@.str.1 = private unnamed_addr constant [27 x i8] c"arch/x86/kernel/apic/ipi.c\00", align 1, !dbg !80
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !85
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@apic = external dso_local global ptr, align 8
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@x86_cpu_to_apicid = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"\016IPI shorthand broadcast: %s\0A\00", align 1, !dbg !97
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1, !dbg !102
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1, !dbg !107
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__apic_send_IPI_allbutself.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_allbutself213 = internal global ptr @__SCK__apic_call_send_IPI_allbutself, section ".discard.addressable", align 8, !dbg !112
@__SCK__apic_call_send_IPI_allbutself = external dso_local global %struct.static_call_key, align 8
@__apic_send_IPI_mask_allbutself.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask_allbutself212 = internal global ptr @__SCK__apic_call_send_IPI_mask_allbutself, section ".discard.addressable", align 8, !dbg !120
@__SCK__apic_call_send_IPI_mask_allbutself = external dso_local global %struct.static_call_key, align 8
@__apic_send_IPI.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI210 = internal global ptr @__SCK__apic_call_send_IPI, section ".discard.addressable", align 8, !dbg !128
@__SCK__apic_call_send_IPI = external dso_local global %struct.static_call_key, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@__apic_send_IPI_all.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_all214 = internal global ptr @__SCK__apic_call_send_IPI_all, section ".discard.addressable", align 8, !dbg !136
@__SCK__apic_call_send_IPI_all = external dso_local global %struct.static_call_key, align 8
@__apic_send_IPI_mask.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask211 = internal global ptr @__SCK__apic_call_send_IPI_mask, section ".discard.addressable", align 8, !dbg !141
@__SCK__apic_call_send_IPI_mask = external dso_local global %struct.static_call_key, align 8
@apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read204 = internal global ptr @__SCK__apic_call_read, section ".discard.addressable", align 8, !dbg !147
@__SCK__apic_call_read = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [8 x ptr] [ptr @__setup_apic_ipi_shorthand, ptr @__UNIQUE_ID___addressable___initstub__kmod_ipi__217_29_print_ipi_mode7218, ptr @__apic_send_IPI_allbutself.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_allbutself213, ptr @__apic_send_IPI_mask_allbutself.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask_allbutself212, ptr @__apic_send_IPI.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI210, ptr @__apic_send_IPI_all.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_all214, ptr @__apic_send_IPI_mask.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask211, ptr @apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read204], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @apic_ipi_shorthand(ptr noundef %str) #0 section ".init.text" align 16 !dbg !192 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %call = call i32 @get_option(ptr noundef %str.addr, ptr noundef @apic_ipi_shorthand_off) #13, !dbg !196
  ret i32 1, !dbg !197
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_ipi__217_29_print_ipi_mode7() #0 section ".init.text" align 16 !dbg !198 {
entry:
  %call = call i32 @print_ipi_mode() #14, !dbg !201
  ret i32 %call, !dbg !201
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @print_ipi_mode() #0 section ".init.text" align 16 !dbg !202 {
entry:
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !203

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !205

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr @apic_ipi_shorthand_off, align 4, !dbg !203
  %tobool = icmp ne i32 %0, 0, !dbg !203
  %1 = zext i1 %tobool to i64, !dbg !203
  %cond = select i1 %tobool, ptr @.str.4, ptr @.str.5, !dbg !203
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %cond) #14, !dbg !203
  store i32 %call, ptr %tmp, align 4, !dbg !205
  %2 = load i32, ptr %tmp, align 4, !dbg !203
  ret i32 0, !dbg !207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @apic_smt_update() #1 align 16 !dbg !208 {
entry:
  %0 = load i32, ptr @apic_ipi_shorthand_off, align 4, !dbg !211
  %tobool = icmp ne i32 %0, 0, !dbg !211
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !213

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @num_online_cpus() #13, !dbg !214
  %cmp = icmp eq i32 %call, 1, !dbg !215
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !216

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %call2 = call zeroext i1 @cpumask_equal(ptr noundef @__cpu_present_mask, ptr noundef @cpus_booted_once_mask) #13, !dbg !217
  br i1 %call2, label %if.else, label %if.then, !dbg !218

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  call void @static_key_disable(ptr noundef @apic_use_ipi_shorthand) #13, !dbg !219
  br label %if.end, !dbg !221

if.else:                                          ; preds = %lor.lhs.false1
  call void @static_key_enable(ptr noundef @apic_use_ipi_shorthand) #13, !dbg !222
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #2 align 16 !dbg !225 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #13, !dbg !228
  ret i32 %call, !dbg !229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_equal(ptr noundef %src1p, ptr noundef %src2p) #3 align 16 !dbg !230 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !236, metadata !DIExpression()), !dbg !238
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !237, metadata !DIExpression()), !dbg !239
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !240
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !240
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !240
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !241
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !241
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !241
  %call = call zeroext i1 @bitmap_equal(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #13, !dbg !242
  ret i1 %call, !dbg !243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !244 dso_local void @static_key_disable(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !248 dso_local void @static_key_enable(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @apic_send_IPI_allbutself(i32 noundef %vector) #1 align 16 !dbg !249 {
entry:
  %vector.addr = alloca i32, align 4
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !253, metadata !DIExpression()), !dbg !257
  %call = call i32 @num_online_cpus() #13, !dbg !258
  %cmp = icmp ult i32 %call, 2, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  br label %if.end6, !dbg !262

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #15, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !254, metadata !DIExpression()), !dbg !263
  %call1 = call zeroext i1 @arch_static_branch_jump(ptr noundef @apic_use_ipi_shorthand, i1 noundef zeroext true) #13, !dbg !264
  %lnot = xor i1 %call1, true, !dbg !264
  %frombool = zext i1 %lnot to i8, !dbg !264
  store i8 %frombool, ptr %branch, align 1, !dbg !264
  %0 = load i8, ptr %branch, align 1, !dbg !263, !range !267, !noundef !268
  %tobool = trunc i8 %0 to i1, !dbg !263
  %lnot2 = xor i1 %tobool, true, !dbg !263
  %lnot3 = xor i1 %lnot2, true, !dbg !263
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !263
  %conv = sext i32 %lnot.ext to i64, !dbg !263
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !263
  store i64 %expval, ptr %tmp, align 8, !dbg !269
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #15, !dbg !270
  %1 = load i64, ptr %tmp, align 8, !dbg !263
  %tobool4 = icmp ne i64 %1, 0, !dbg !270
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !271

if.then5:                                         ; preds = %if.end
  %2 = load i32, ptr %vector.addr, align 4, !dbg !272
  call void @__apic_send_IPI_allbutself(i32 noundef %2) #13, !dbg !273
  br label %if.end6, !dbg !273

if.else:                                          ; preds = %if.end
  %3 = load i32, ptr %vector.addr, align 4, !dbg !274
  call void @__apic_send_IPI_mask_allbutself(ptr noundef @__cpu_online_mask, i32 noundef %3) #13, !dbg !275
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else, %if.then5
  ret void, !dbg !276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !277 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !284, metadata !DIExpression()), !dbg !287
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !285, metadata !DIExpression()), !dbg !288
  %0 = load ptr, ptr %key.addr, align 8, !dbg !289
  %1 = load i8, ptr %branch.addr, align 1, !dbg !290, !range !267, !noundef !268
  %tobool = trunc i8 %1 to i1, !dbg !290
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #15
          to label %asm.fallthrough [label %l_yes], !dbg !291, !srcloc !292

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !293
  br label %return, !dbg !293

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !286), !dbg !294
  store i1 true, ptr %retval, align 1, !dbg !295
  br label %return, !dbg !295

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !296
  ret i1 %2, !dbg !296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI_allbutself(i32 noundef %vector) #2 align 16 !dbg !114 {
entry:
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !119, metadata !DIExpression()), !dbg !297
  store ptr @__SCT__apic_call_send_IPI_allbutself, ptr %tmp, align 8, !dbg !298
  %0 = load ptr, ptr %tmp, align 8, !dbg !298
  %1 = load i32, ptr %vector.addr, align 4, !dbg !300
  call void %0(i32 noundef %1) #13, !dbg !301
  ret void, !dbg !302
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI_mask_allbutself(ptr noundef %mask, i32 noundef %vector) #2 align 16 !dbg !122 {
entry:
  %mask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !126, metadata !DIExpression()), !dbg !303
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !127, metadata !DIExpression()), !dbg !304
  store ptr @__SCT__apic_call_send_IPI_mask_allbutself, ptr %tmp, align 8, !dbg !305
  %0 = load ptr, ptr %tmp, align 8, !dbg !305
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !307
  %2 = load i32, ptr %vector.addr, align 4, !dbg !308
  call void %0(ptr noundef %1, i32 noundef %2) #13, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @native_smp_send_reschedule(i32 noundef %cpu) #1 align 16 !dbg !311 {
entry:
  %cpu.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !313, metadata !DIExpression()), !dbg !322
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !323
  %call = call zeroext i1 @cpu_online(i32 noundef %0) #13, !dbg !323
  %lnot = xor i1 %call, true, !dbg !323
  %lnot1 = xor i1 %lnot, true, !dbg !323
  %lnot2 = xor i1 %lnot1, true, !dbg !323
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !323
  %conv = sext i32 %lnot.ext to i64, !dbg !323
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !323
  %tobool = icmp ne i64 %expval, 0, !dbg !323
  %lnot3 = xor i1 %tobool, true, !dbg !323
  %lnot5 = xor i1 %lnot3, true, !dbg !323
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !323
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !323
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !323
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !323
  br i1 %tobool9, label %if.then, label %if.end44, !dbg !324

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !314, metadata !DIExpression()), !dbg !325
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !325
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !326
  %tobool10 = icmp ne i32 %1, 0, !dbg !326
  %lnot11 = xor i1 %tobool10, true, !dbg !326
  %lnot13 = xor i1 %lnot11, true, !dbg !326
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !326
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !326
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !326
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !326
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !325

if.then18:                                        ; preds = %if.then
  br label %do.body, !dbg !326

do.body:                                          ; preds = %if.then18
  br label %do.body19, !dbg !327

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !328

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !328

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !327
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %2) #13, !dbg !327
  br label %do.body20, !dbg !327

do.body20:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !318, metadata !DIExpression()), !dbg !330
  store i32 2313, ptr %__flags, align 4, !dbg !330
  br label %do.body21, !dbg !330

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !331

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !331

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !330

do.body24:                                        ; preds = %do.end23
  %3 = load i32, ptr %__flags, align 4, !dbg !333
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 70, i32 %3, i64 12) #15, !dbg !333, !srcloc !335
  br label %do.cond25, !dbg !333

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !333

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !330

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !336

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !336

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !327
  br label %do.cond30, !dbg !330

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !330

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !327

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !338

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !338

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !327

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !327

do.end36:                                         ; preds = %do.cond35
  br label %if.end, !dbg !327

if.end:                                           ; preds = %do.end36, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !325
  %tobool37 = icmp ne i32 %4, 0, !dbg !325
  %lnot38 = xor i1 %tobool37, true, !dbg !325
  %lnot40 = xor i1 %lnot38, true, !dbg !325
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !325
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !325
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !325
  store i64 %expval43, ptr %tmp, align 8, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !340
  %5 = load i64, ptr %tmp, align 8, !dbg !325
  br label %return, !dbg !341

if.end44:                                         ; preds = %entry
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !342
  call void @__apic_send_IPI(i32 noundef %6, i32 noundef 253) #13, !dbg !343
  br label %return, !dbg !344

return:                                           ; preds = %if.end44, %if.end
  ret void, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !345 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !351
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !352
  ret i1 %call, !dbg !353
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !354 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI(i32 noundef %cpu, i32 noundef %vector) #2 align 16 !dbg !130 {
entry:
  %cpu.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !134, metadata !DIExpression()), !dbg !358
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !135, metadata !DIExpression()), !dbg !359
  store ptr @__SCT__apic_call_send_IPI, ptr %tmp, align 8, !dbg !360
  %0 = load ptr, ptr %tmp, align 8, !dbg !360
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !362
  %2 = load i32, ptr %vector.addr, align 4, !dbg !363
  call void %0(i32 noundef %1, i32 noundef %2) #13, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @native_send_call_func_single_ipi(i32 noundef %cpu) #1 align 16 !dbg !366 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !370
  call void @__apic_send_IPI(i32 noundef %0, i32 noundef 251) #13, !dbg !371
  ret void, !dbg !372
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @native_send_call_func_ipi(ptr noundef %mask) #1 align 16 !dbg !373 {
entry:
  %mask.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %cpu = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !377, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #15, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !378, metadata !DIExpression()), !dbg !394
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @apic_use_ipi_shorthand, i1 noundef zeroext true) #13, !dbg !395
  %lnot = xor i1 %call, true, !dbg !395
  %frombool = zext i1 %lnot to i8, !dbg !395
  store i8 %frombool, ptr %branch, align 1, !dbg !395
  %0 = load i8, ptr %branch, align 1, !dbg !394, !range !267, !noundef !268
  %tobool = trunc i8 %0 to i1, !dbg !394
  %lnot1 = xor i1 %tobool, true, !dbg !394
  %lnot2 = xor i1 %lnot1, true, !dbg !394
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !394
  %conv = sext i32 %lnot.ext to i64, !dbg !394
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !394
  store i64 %expval, ptr %tmp, align 8, !dbg !398
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #15, !dbg !399
  %1 = load i64, ptr %tmp, align 8, !dbg !394
  %tobool3 = icmp ne i64 %1, 0, !dbg !399
  br i1 %tobool3, label %if.then, label %if.end19, !dbg !400

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !381, metadata !DIExpression()), !dbg !402
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #13, !dbg !403
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !383, metadata !DIExpression()), !dbg !404
  br label %do.body, !dbg !404

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !386, metadata !DIExpression()), !dbg !405
  store ptr null, ptr %__vpp_verify, align 8, !dbg !405
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !404
  br label %do.cond, !dbg !405

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !405

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !390, metadata !DIExpression()), !dbg !406
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #16, !dbg !406, !srcloc !407
  store i32 %3, ptr %pfo_val__, align 4, !dbg !406
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !406
  %conv6 = zext i32 %4 to i64, !dbg !406
  %conv7 = trunc i64 %conv6 to i32, !dbg !406
  store i32 %conv7, ptr %tmp5, align 4, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !404
  %5 = load i32, ptr %tmp5, align 4, !dbg !406
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !404
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !404
  store i32 %6, ptr %tmp8, align 4, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !403
  %7 = load i32, ptr %tmp8, align 4, !dbg !404
  store i32 %7, ptr %tmp4, align 4, !dbg !403
  %8 = load i32, ptr %tmp4, align 4, !dbg !403
  store i32 %8, ptr %cpu, align 4, !dbg !402
  %9 = load ptr, ptr %mask.addr, align 8, !dbg !408
  %10 = load i32, ptr %cpu, align 4, !dbg !410
  %call9 = call ptr @get_cpu_mask(i32 noundef %10) #13, !dbg !410
  %call10 = call zeroext i1 @cpumask_or_equal(ptr noundef %9, ptr noundef %call9, ptr noundef @__cpu_online_mask) #13, !dbg !411
  br i1 %call10, label %if.end, label %if.then11, !dbg !412

if.then11:                                        ; preds = %do.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

if.end:                                           ; preds = %do.end
  %11 = load i32, ptr %cpu, align 4, !dbg !414
  %12 = load ptr, ptr %mask.addr, align 8, !dbg !416
  %call12 = call zeroext i1 @cpumask_test_cpu(i32 noundef %11, ptr noundef %12) #13, !dbg !417
  br i1 %call12, label %if.then13, label %if.else, !dbg !418

if.then13:                                        ; preds = %if.end
  call void @__apic_send_IPI_all(i32 noundef 252) #13, !dbg !419
  br label %if.end18, !dbg !419

if.else:                                          ; preds = %if.end
  %call14 = call i32 @num_online_cpus() #13, !dbg !420
  %cmp = icmp ugt i32 %call14, 1, !dbg !422
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !423

if.then16:                                        ; preds = %if.else
  call void @__apic_send_IPI_allbutself(i32 noundef 252) #13, !dbg !424
  br label %if.end17, !dbg !424

if.end17:                                         ; preds = %if.then16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !425

cleanup:                                          ; preds = %if.then11, %if.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !426
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 1, label %return
    i32 4, label %sendmask
  ]

if.end19:                                         ; preds = %entry
  br label %sendmask, !dbg !399

sendmask:                                         ; preds = %if.end19, %cleanup
  call void @llvm.dbg.label(metadata !392), !dbg !427
  %13 = load ptr, ptr %mask.addr, align 8, !dbg !428
  call void @__apic_send_IPI_mask(ptr noundef %13, i32 noundef 252) #13, !dbg !429
  br label %return, !dbg !430

return:                                           ; preds = %sendmask, %cleanup
  ret void, !dbg !430

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #2 align 16 !dbg !431 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !436, metadata !DIExpression()), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_or_equal(ptr noundef %src1p, ptr noundef %src2p, ptr noundef %src3p) #3 align 16 !dbg !439 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  %src3p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !443, metadata !DIExpression()), !dbg !446
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !444, metadata !DIExpression()), !dbg !447
  store ptr %src3p, ptr %src3p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src3p.addr, metadata !445, metadata !DIExpression()), !dbg !448
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !449
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !449
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !449
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !450
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !450
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !450
  %2 = load ptr, ptr %src3p.addr, align 8, !dbg !451
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !451
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !451
  %call = call zeroext i1 @bitmap_or_equal(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #13, !dbg !452
  ret i1 %call, !dbg !453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #3 align 16 !dbg !454 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %p, metadata !459, metadata !DIExpression()), !dbg !464
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !465
  %rem = urem i32 %0, 64, !dbg !466
  %add = add i32 1, %rem, !dbg !467
  %idxprom = zext i32 %add to i64, !dbg !468
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !468
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !468
  store ptr %arraydecay, ptr %p, align 8, !dbg !464
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !469
  %div = udiv i32 %1, 64, !dbg !470
  %2 = load ptr, ptr %p, align 8, !dbg !471
  %idx.ext = zext i32 %div to i64, !dbg !471
  %idx.neg = sub i64 0, %idx.ext, !dbg !471
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !471
  store ptr %add.ptr, ptr %p, align 8, !dbg !471
  %3 = load ptr, ptr %p, align 8, !dbg !472
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !473
  ret ptr %3, !dbg !474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #2 align 16 !dbg !475 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !479, metadata !DIExpression()), !dbg !481
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !480, metadata !DIExpression()), !dbg !482
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !483
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !483
  %conv = zext i32 %call to i64, !dbg !483
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !483
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !483
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !483
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !483
  ret i1 %call1, !dbg !484
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI_all(i32 noundef %vector) #2 align 16 !dbg !138 {
entry:
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !140, metadata !DIExpression()), !dbg !485
  store ptr @__SCT__apic_call_send_IPI_all, ptr %tmp, align 8, !dbg !486
  %0 = load ptr, ptr %tmp, align 8, !dbg !486
  %1 = load i32, ptr %vector.addr, align 4, !dbg !488
  call void %0(i32 noundef %1) #13, !dbg !489
  ret void, !dbg !490
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI_mask(ptr noundef %mask, i32 noundef %vector) #2 align 16 !dbg !143 {
entry:
  %mask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !145, metadata !DIExpression()), !dbg !491
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !146, metadata !DIExpression()), !dbg !492
  store ptr @__SCT__apic_call_send_IPI_mask, ptr %tmp, align 8, !dbg !493
  %0 = load ptr, ptr %tmp, align 8, !dbg !493
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !495
  %2 = load i32, ptr %vector.addr, align 4, !dbg !496
  call void %0(ptr noundef %1, i32 noundef %2) #13, !dbg !497
  ret void, !dbg !498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @apic_send_nmi_to_offline_cpu(i32 noundef %cpu) #1 align 16 !dbg !499 {
entry:
  %cpu.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %__flags45 = alloca i32, align 4
  %tmp58 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !501, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !502, metadata !DIExpression()), !dbg !515
  %0 = load ptr, ptr @apic, align 8, !dbg !515
  %nmi_to_offline_cpu = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 13, !dbg !515
  %bf.load = load i8, ptr %nmi_to_offline_cpu, align 4, !dbg !515
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !515
  %bf.clear = and i8 %bf.lshr, 1, !dbg !515
  %bf.cast = zext i8 %bf.clear to i32, !dbg !515
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !515
  %lnot = xor i1 %tobool, true, !dbg !515
  %lnot1 = xor i1 %lnot, true, !dbg !515
  %lnot2 = xor i1 %lnot1, true, !dbg !515
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !515
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !515
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !516
  %tobool3 = icmp ne i32 %1, 0, !dbg !516
  %lnot4 = xor i1 %tobool3, true, !dbg !516
  %lnot6 = xor i1 %lnot4, true, !dbg !516
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !516
  %conv = sext i32 %lnot.ext7 to i64, !dbg !516
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !516
  %tobool8 = icmp ne i64 %expval, 0, !dbg !516
  br i1 %tobool8, label %if.then, label %if.end, !dbg !515

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !516

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !505, metadata !DIExpression()), !dbg !517
  store i32 2307, ptr %__flags, align 4, !dbg !517
  br label %do.body9, !dbg !517

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !518

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !518

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !517

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !520
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 102, i32 %2, i64 12) #15, !dbg !520, !srcloc !522
  br label %do.cond11, !dbg !520

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !520

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !517

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !523

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !523

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !516
  br label %do.cond16, !dbg !517

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !517

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !517

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !515
  %tobool18 = icmp ne i32 %3, 0, !dbg !515
  %lnot19 = xor i1 %tobool18, true, !dbg !515
  %lnot21 = xor i1 %lnot19, true, !dbg !515
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !515
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !515
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !515
  store i64 %expval24, ptr %tmp, align 8, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !525
  %4 = load i64, ptr %tmp, align 8, !dbg !515
  %tobool25 = icmp ne i64 %4, 0, !dbg !525
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !526

if.then26:                                        ; preds = %if.end
  br label %return, !dbg !527

if.end27:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #15, !dbg !528
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !508, metadata !DIExpression()), !dbg !528
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !528
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %5, ptr noundef @cpus_booted_once_mask) #13, !dbg !528
  %lnot29 = xor i1 %call, true, !dbg !528
  %lnot31 = xor i1 %lnot29, true, !dbg !528
  %lnot33 = xor i1 %lnot31, true, !dbg !528
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !528
  store i32 %lnot.ext34, ptr %__ret_warn_on28, align 4, !dbg !528
  %6 = load i32, ptr %__ret_warn_on28, align 4, !dbg !529
  %tobool35 = icmp ne i32 %6, 0, !dbg !529
  %lnot36 = xor i1 %tobool35, true, !dbg !529
  %lnot38 = xor i1 %lnot36, true, !dbg !529
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !529
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !529
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !529
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !529
  br i1 %tobool42, label %if.then43, label %if.end57, !dbg !528

if.then43:                                        ; preds = %if.end27
  br label %do.body44, !dbg !529

do.body44:                                        ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags45) #15, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %__flags45, metadata !511, metadata !DIExpression()), !dbg !530
  store i32 2307, ptr %__flags45, align 4, !dbg !530
  br label %do.body46, !dbg !530

do.body46:                                        ; preds = %do.body44
  br label %do.cond47, !dbg !531

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !531

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !530

do.body49:                                        ; preds = %do.end48
  %7 = load i32, ptr %__flags45, align 4, !dbg !533
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 104, i32 %7, i64 12) #15, !dbg !533, !srcloc !535
  br label %do.cond50, !dbg !533

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !533

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !530

do.body52:                                        ; preds = %do.end51
  br label %do.cond53, !dbg !536

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !536

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags45) #15, !dbg !529
  br label %do.cond55, !dbg !530

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !530

do.end56:                                         ; preds = %do.cond55
  br label %if.end57, !dbg !530

if.end57:                                         ; preds = %do.end56, %if.end27
  %8 = load i32, ptr %__ret_warn_on28, align 4, !dbg !528
  %tobool59 = icmp ne i32 %8, 0, !dbg !528
  %lnot60 = xor i1 %tobool59, true, !dbg !528
  %lnot62 = xor i1 %lnot60, true, !dbg !528
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !528
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !528
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !528
  store i64 %expval65, ptr %tmp58, align 8, !dbg !529
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #15, !dbg !538
  %9 = load i64, ptr %tmp58, align 8, !dbg !528
  %tobool66 = icmp ne i64 %9, 0, !dbg !538
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !539

if.then67:                                        ; preds = %if.end57
  br label %return, !dbg !540

if.end68:                                         ; preds = %if.end57
  %10 = load ptr, ptr @apic, align 8, !dbg !541
  %send_IPI = getelementptr inbounds %struct.apic, ptr %10, i32 0, i32 6, !dbg !542
  %11 = load ptr, ptr %send_IPI, align 8, !dbg !542
  %12 = load i32, ptr %cpu.addr, align 4, !dbg !543
  call void %11(i32 noundef %12, i32 noundef 2) #13, !dbg !541
  br label %return, !dbg !544

return:                                           ; preds = %if.end68, %if.then67, %if.then26
  ret void, !dbg !544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @apic_mem_wait_icr_idle_timeout() #1 align 16 !dbg !545 {
entry:
  %retval = alloca i32, align 4
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #15, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !549, metadata !DIExpression()), !dbg !560
  store i32 0, ptr %cnt, align 4, !dbg !561
  br label %for.cond, !dbg !562

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cnt, align 4, !dbg !563
  %cmp = icmp slt i32 %0, 1000, !dbg !564
  br i1 %cmp, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %for.cond
  %call = call i32 @apic_read(i32 noundef 768) #13, !dbg !566
  %and = and i32 %call, 4096, !dbg !568
  %tobool = icmp ne i32 %and, 0, !dbg !568
  br i1 %tobool, label %if.end, label %if.then, !dbg !569

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !570

if.end:                                           ; preds = %for.body
  br label %do.body, !dbg !571

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !572

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !550, metadata !DIExpression()), !dbg !573
  store ptr null, ptr %__vpp_verify, align 8, !dbg !573
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !572
  br label %do.cond, !dbg !573

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !573

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !572

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !556, metadata !DIExpression()), !dbg !574
  store i32 1, ptr %pao_ID__, align 4, !dbg !574
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 3), ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 3)) #15, !dbg !575, !srcloc !578
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !572
  br label %do.cond3, !dbg !574

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !574

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !572

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !572

do.end6:                                          ; preds = %do.cond5
  call void @__const_udelay(i64 noundef 429500) #13, !dbg !579
  br label %for.inc, !dbg !584

for.inc:                                          ; preds = %do.end6
  %2 = load i32, ptr %cnt, align 4, !dbg !585
  %inc = add i32 %2, 1, !dbg !585
  store i32 %inc, ptr %cnt, align 4, !dbg !585
  br label %for.cond, !dbg !586, !llvm.loop !587

for.end:                                          ; preds = %for.cond
  store i32 4096, ptr %retval, align 4, !dbg !591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !591

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #15, !dbg !592
  %3 = load i32, ptr %retval, align 4, !dbg !592
  ret i32 %3, !dbg !592
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apic_read(i32 noundef %reg) #2 align 16 !dbg !149 {
entry:
  %reg.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !153, metadata !DIExpression()), !dbg !593
  store ptr @__SCT__apic_call_read, ptr %tmp, align 8, !dbg !594
  %0 = load ptr, ptr %tmp, align 8, !dbg !594
  %1 = load i32, ptr %reg.addr, align 4, !dbg !596
  %call = call i32 %0(i32 noundef %1) #13, !dbg !597
  ret i32 %call, !dbg !598
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !599 dso_local void @__const_udelay(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @apic_mem_wait_icr_idle() #1 align 16 !dbg !603 {
entry:
  br label %while.cond, !dbg !604

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @native_apic_mem_read(i32 noundef 768) #13, !dbg !605
  %and = and i32 %call, 4096, !dbg !606
  %tobool = icmp ne i32 %and, 0, !dbg !604
  br i1 %tobool, label %while.body, label %while.end, !dbg !604

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #13, !dbg !607
  br label %while.cond, !dbg !604, !llvm.loop !608

while.end:                                        ; preds = %while.cond
  ret void, !dbg !610
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_apic_mem_read(i32 noundef %reg) #3 align 16 !dbg !611 {
entry:
  %reg.addr = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %call = call i64 @fix_to_virt(i32 noundef 515) #13, !dbg !615
  %0 = load i32, ptr %reg.addr, align 4, !dbg !616
  %conv = zext i32 %0 to i64, !dbg !616
  %add = add i64 %call, %conv, !dbg !617
  %1 = inttoptr i64 %add to ptr, !dbg !618
  %call1 = call i32 @readl(ptr noundef %1) #13, !dbg !619
  ret i32 %call1, !dbg !620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #2 align 16 !dbg !621 {
entry:
  call void @rep_nop() #13, !dbg !623
  ret void, !dbg !624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__default_send_IPI_dest_field(i32 noundef %dest_mask, i32 noundef %vector, i32 noundef %dest_mode) #1 align 16 !dbg !625 {
entry:
  %dest_mask.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  %dest_mode.addr = alloca i32, align 4
  store i32 %dest_mask, ptr %dest_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dest_mask.addr, metadata !629, metadata !DIExpression()), !dbg !632
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !630, metadata !DIExpression()), !dbg !633
  store i32 %dest_mode, ptr %dest_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dest_mode.addr, metadata !631, metadata !DIExpression()), !dbg !634
  %0 = load i32, ptr %vector.addr, align 4, !dbg !635
  %cmp = icmp eq i32 %0, 2, !dbg !635
  %lnot = xor i1 %cmp, true, !dbg !635
  %lnot1 = xor i1 %lnot, true, !dbg !635
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !635
  %conv = sext i32 %lnot.ext to i64, !dbg !635
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !635
  %tobool = icmp ne i64 %expval, 0, !dbg !635
  br i1 %tobool, label %if.then, label %if.else, !dbg !637

if.then:                                          ; preds = %entry
  %call = call i32 @apic_mem_wait_icr_idle_timeout() #13, !dbg !638
  br label %if.end, !dbg !638

if.else:                                          ; preds = %entry
  call void @apic_mem_wait_icr_idle() #13, !dbg !639
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %dest_mask.addr, align 4, !dbg !640
  %call2 = call i32 @__prepare_ICR2(i32 noundef %1) #13, !dbg !641
  call void @native_apic_mem_write(i32 noundef 784, i32 noundef %call2) #13, !dbg !642
  %2 = load i32, ptr %vector.addr, align 4, !dbg !643
  %3 = load i32, ptr %dest_mode.addr, align 4, !dbg !644
  %call3 = call i32 @__prepare_ICR(i32 noundef 0, i32 noundef %2, i32 noundef %3) #13, !dbg !645
  call void @native_apic_mem_write(i32 noundef 768, i32 noundef %call3) #13, !dbg !646
  ret void, !dbg !647
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_apic_mem_write(i32 noundef %reg, i32 noundef %v) #3 align 16 !dbg !648 {
entry:
  %reg.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %addr = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !652, metadata !DIExpression()), !dbg !655
  store i32 %v, ptr %v.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !653, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !654, metadata !DIExpression()), !dbg !658
  %call = call i64 @fix_to_virt(i32 noundef 515) #13, !dbg !659
  %0 = load i32, ptr %reg.addr, align 4, !dbg !660
  %conv = zext i32 %0 to i64, !dbg !660
  %add = add i64 %call, %conv, !dbg !661
  %1 = inttoptr i64 %add to ptr, !dbg !662
  store ptr %1, ptr %addr, align 8, !dbg !658
  %2 = load ptr, ptr %addr, align 8, !dbg !663
  %3 = load i32, ptr %v.addr, align 4, !dbg !663
  %4 = load ptr, ptr %addr, align 8, !dbg !663
  %5 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movl $0, ${1:P}\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (22*32 + (5))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09xchgl $0, ${1:P}\0A6651:\0A.popsection\0A", "=r,=*m,i,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, i32 0, i32 %3, ptr elementtype(i32) %4) #15, !dbg !663, !srcloc !664
  store i32 %5, ptr %v.addr, align 4, !dbg !663
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !665
  ret void, !dbg !665
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__prepare_ICR2(i32 noundef %mask) #3 align 16 !dbg !666 {
entry:
  %mask.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !670, metadata !DIExpression()), !dbg !671
  %0 = load i32, ptr %mask.addr, align 4, !dbg !672
  %shl = shl i32 %0, 24, !dbg !672
  ret i32 %shl, !dbg !673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__prepare_ICR(i32 noundef %shortcut, i32 noundef %vector, i32 noundef %dest) #3 align 16 !dbg !674 {
entry:
  %shortcut.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %icr = alloca i32, align 4
  store i32 %shortcut, ptr %shortcut.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shortcut.addr, metadata !679, metadata !DIExpression()), !dbg !683
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !680, metadata !DIExpression()), !dbg !684
  store i32 %dest, ptr %dest.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !681, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %icr) #15, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %icr, metadata !682, metadata !DIExpression()), !dbg !687
  %0 = load i32, ptr %shortcut.addr, align 4, !dbg !688
  %1 = load i32, ptr %dest.addr, align 4, !dbg !689
  %or = or i32 %0, %1, !dbg !690
  store i32 %or, ptr %icr, align 4, !dbg !687
  %2 = load i32, ptr %vector.addr, align 4, !dbg !691
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
  ], !dbg !692

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %vector.addr, align 4, !dbg !693
  %or1 = or i32 0, %3, !dbg !695
  %4 = load i32, ptr %icr, align 4, !dbg !696
  %or2 = or i32 %4, %or1, !dbg !696
  store i32 %or2, ptr %icr, align 4, !dbg !696
  br label %sw.epilog, !dbg !697

sw.bb:                                            ; preds = %entry
  %5 = load i32, ptr %icr, align 4, !dbg !698
  %or3 = or i32 %5, 1024, !dbg !698
  store i32 %or3, ptr %icr, align 4, !dbg !698
  br label %sw.epilog, !dbg !699

sw.epilog:                                        ; preds = %sw.bb, %sw.default
  %6 = load i32, ptr %icr, align 4, !dbg !700
  call void @llvm.lifetime.end.p0(i64 4, ptr %icr) #15, !dbg !701
  ret i32 %6, !dbg !702
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_single_phys(i32 noundef %cpu, i32 noundef %vector) #1 align 16 !dbg !703 {
entry:
  %cpu.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !705, metadata !DIExpression()), !dbg !723
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !706, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !707, metadata !DIExpression()), !dbg !726
  br label %do.body, !dbg !727

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !728

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !708, metadata !DIExpression()), !dbg !729
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !712, metadata !DIExpression()), !dbg !729
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !729
  %conv = zext i1 %cmp to i32, !dbg !729
  store i32 1, ptr %tmp, align 4, !dbg !729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !730
  %0 = load i32, ptr %tmp, align 4, !dbg !729
  %call = call i64 @arch_local_irq_save() #13, !dbg !730
  store i64 %call, ptr %flags, align 8, !dbg !730
  br label %do.cond, !dbg !730

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !730

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !728

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !728

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !731

do.body4:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !732
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !713, metadata !DIExpression()), !dbg !732
  store ptr null, ptr %__vpp_verify, align 8, !dbg !732
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !731
  br label %do.cond5, !dbg !732

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !732

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !716, metadata !DIExpression()), !dbg !733
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr, align 8, !dbg !733
  %2 = load i64, ptr %__ptr, align 8, !dbg !733
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !733
  %idxprom = sext i32 %3 to i64, !dbg !733
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !733
  %4 = load i64, ptr %arrayidx, align 8, !dbg !733
  %add = add i64 %2, %4, !dbg !733
  %5 = inttoptr i64 %add to ptr, !dbg !733
  store ptr %5, ptr %tmp8, align 8, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !731
  %6 = load ptr, ptr %tmp8, align 8, !dbg !733
  store ptr %6, ptr %tmp7, align 8, !dbg !732
  %7 = load ptr, ptr %tmp7, align 8, !dbg !731
  %8 = load i16, ptr %7, align 2, !dbg !734
  %conv9 = zext i16 %8 to i32, !dbg !734
  %9 = load i32, ptr %vector.addr, align 4, !dbg !735
  call void @__default_send_IPI_dest_field(i32 noundef %conv9, i32 noundef %9, i32 noundef 0) #13, !dbg !736
  br label %do.body10, !dbg !737

do.body10:                                        ; preds = %do.end6
  br label %do.body11, !dbg !738

do.body11:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #15, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !718, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #15, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !722, metadata !DIExpression()), !dbg !739
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !739
  %conv15 = zext i1 %cmp14 to i32, !dbg !739
  store i32 1, ptr %tmp16, align 4, !dbg !739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #15, !dbg !740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #15, !dbg !740
  %10 = load i32, ptr %tmp16, align 4, !dbg !739
  br label %do.body17, !dbg !740

do.body17:                                        ; preds = %do.body11
  br label %do.cond18, !dbg !741

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !741

do.end19:                                         ; preds = %do.cond18
  %11 = load i64, ptr %flags, align 8, !dbg !740
  call void @arch_local_irq_restore(i64 noundef %11) #13, !dbg !740
  br label %do.cond20, !dbg !740

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !740

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !738

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !738

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !743
  ret void, !dbg !743
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #2 align 16 !dbg !744 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !749, metadata !DIExpression()), !dbg !751
  %call = call i64 @arch_local_save_flags() #13, !dbg !752
  store i64 %call, ptr %flags, align 8, !dbg !751
  call void @arch_local_irq_disable() #13, !dbg !753
  %0 = load i64, ptr %flags, align 8, !dbg !754
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !755
  ret i64 %0, !dbg !756
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #2 align 16 !dbg !757 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !759, metadata !DIExpression()), !dbg !760
  %0 = load i64, ptr %flags.addr, align 8, !dbg !761
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #13, !dbg !763
  %tobool = icmp ne i32 %call, 0, !dbg !763
  br i1 %tobool, label %if.end, label %if.then, !dbg !764

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #13, !dbg !765
  br label %if.end, !dbg !765

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !766
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_mask_sequence_phys(ptr noundef %mask, i32 noundef %vector) #1 align 16 !dbg !767 {
entry:
  %mask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %cpu = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp11 = alloca ptr, align 8
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !769, metadata !DIExpression()), !dbg !791
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !770, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !771, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #15, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !772, metadata !DIExpression()), !dbg !796
  br label %do.body, !dbg !797

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !798

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !773, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !777, metadata !DIExpression()), !dbg !799
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !799
  %conv = zext i1 %cmp to i32, !dbg !799
  store i32 1, ptr %tmp, align 4, !dbg !799
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !800
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !800
  %0 = load i32, ptr %tmp, align 4, !dbg !799
  %call = call i64 @arch_local_irq_save() #13, !dbg !800
  store i64 %call, ptr %flags, align 8, !dbg !800
  br label %do.cond, !dbg !800

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !800

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !798

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !798

do.end3:                                          ; preds = %do.cond2
  store i64 0, ptr %cpu, align 8, !dbg !801
  br label %for.cond, !dbg !801

for.cond:                                         ; preds = %for.inc, %do.end3
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !802
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !802
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !802
  %2 = load i64, ptr %cpu, align 8, !dbg !802
  %call4 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %2) #13, !dbg !802
  store i64 %call4, ptr %cpu, align 8, !dbg !802
  %3 = load i64, ptr %cpu, align 8, !dbg !802
  %cmp5 = icmp ult i64 %3, 64, !dbg !802
  br i1 %cmp5, label %for.body, label %for.end, !dbg !801

for.body:                                         ; preds = %for.cond
  br label %do.body7, !dbg !803

do.body7:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !778, metadata !DIExpression()), !dbg !804
  store ptr null, ptr %__vpp_verify, align 8, !dbg !804
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !803
  br label %do.cond8, !dbg !804

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !804

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !784, metadata !DIExpression()), !dbg !805
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr, align 8, !dbg !805
  %5 = load i64, ptr %__ptr, align 8, !dbg !805
  %6 = load i64, ptr %cpu, align 8, !dbg !805
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %6, !dbg !805
  %7 = load i64, ptr %arrayidx, align 8, !dbg !805
  %add = add i64 %5, %7, !dbg !805
  %8 = inttoptr i64 %add to ptr, !dbg !805
  store ptr %8, ptr %tmp11, align 8, !dbg !805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !803
  %9 = load ptr, ptr %tmp11, align 8, !dbg !805
  store ptr %9, ptr %tmp10, align 8, !dbg !804
  %10 = load ptr, ptr %tmp10, align 8, !dbg !803
  %11 = load i16, ptr %10, align 2, !dbg !806
  %conv12 = zext i16 %11 to i32, !dbg !806
  %12 = load i32, ptr %vector.addr, align 4, !dbg !807
  call void @__default_send_IPI_dest_field(i32 noundef %conv12, i32 noundef %12, i32 noundef 0) #13, !dbg !808
  br label %for.inc, !dbg !809

for.inc:                                          ; preds = %do.end9
  %13 = load i64, ptr %cpu, align 8, !dbg !802
  %inc = add i64 %13, 1, !dbg !802
  store i64 %inc, ptr %cpu, align 8, !dbg !802
  br label %for.cond, !dbg !802, !llvm.loop !810

for.end:                                          ; preds = %for.cond
  br label %do.body13, !dbg !812

do.body13:                                        ; preds = %for.end
  br label %do.body14, !dbg !813

do.body14:                                        ; preds = %do.body13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy15) #15, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %__dummy15, metadata !786, metadata !DIExpression()), !dbg !814
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy216) #15, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %__dummy216, metadata !790, metadata !DIExpression()), !dbg !814
  %cmp17 = icmp eq ptr %__dummy15, %__dummy216, !dbg !814
  %conv18 = zext i1 %cmp17 to i32, !dbg !814
  store i32 1, ptr %tmp19, align 4, !dbg !814
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy216) #15, !dbg !815
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy15) #15, !dbg !815
  %14 = load i32, ptr %tmp19, align 4, !dbg !814
  br label %do.body20, !dbg !815

do.body20:                                        ; preds = %do.body14
  br label %do.cond21, !dbg !816

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !816

do.end22:                                         ; preds = %do.cond21
  %15 = load i64, ptr %flags, align 8, !dbg !815
  call void @arch_local_irq_restore(i64 noundef %15) #13, !dbg !815
  br label %do.cond23, !dbg !815

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !815

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !813

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !813

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #15, !dbg !818
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !818
  ret void, !dbg !818
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !819 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !824, metadata !DIExpression()), !dbg !830
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !825, metadata !DIExpression()), !dbg !831
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !826, metadata !DIExpression()), !dbg !832
  %0 = load i64, ptr %size.addr, align 8, !dbg !833
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !833
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !833

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !833
  %cmp = icmp ule i64 %2, 64, !dbg !833
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !833

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !833
  %cmp2 = icmp ugt i64 %3, 0, !dbg !833
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !834

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %val, metadata !827, metadata !DIExpression()), !dbg !836
  %4 = load i64, ptr %offset.addr, align 8, !dbg !837
  %5 = load i64, ptr %size.addr, align 8, !dbg !837
  %cmp3 = icmp uge i64 %4, %5, !dbg !837
  %lnot = xor i1 %cmp3, true, !dbg !837
  %lnot4 = xor i1 %lnot, true, !dbg !837
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !837
  %conv = sext i32 %lnot.ext to i64, !dbg !837
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !837
  %tobool = icmp ne i64 %expval, 0, !dbg !837
  br i1 %tobool, label %if.then5, label %if.end, !dbg !839

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !840
  store i64 %6, ptr %retval, align 8, !dbg !841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !841

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !842
  %8 = load i64, ptr %7, align 8, !dbg !843
  %9 = load i64, ptr %offset.addr, align 8, !dbg !844
  %shl = shl i64 1, %9, !dbg !844
  %sub = sub i64 -1, %shl, !dbg !844
  %add = add i64 %sub, 1, !dbg !844
  %10 = load i64, ptr %size.addr, align 8, !dbg !844
  %sub6 = sub i64 %10, 1, !dbg !844
  %sub7 = sub i64 63, %sub6, !dbg !844
  %shr = lshr i64 -1, %sub7, !dbg !844
  %and = and i64 %add, %shr, !dbg !844
  %add8 = add i64 0, %and, !dbg !844
  %and9 = and i64 %8, %add8, !dbg !845
  store i64 %and9, ptr %val, align 8, !dbg !846
  %11 = load i64, ptr %val, align 8, !dbg !847
  %tobool10 = icmp ne i64 %11, 0, !dbg !847
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !847

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !848
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !848
  br i1 %13, label %cond.true11, label %cond.false, !dbg !848

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !848
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !848
  %cast = trunc i64 %15 to i32, !dbg !848
  %conv12 = sext i32 %cast to i64, !dbg !848
  br label %cond.end, !dbg !848

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !848
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !848
  br label %cond.end, !dbg !848

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !848
  br label %cond.end14, !dbg !847

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !849
  br label %cond.end14, !dbg !847

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !847
  store i64 %cond15, ptr %retval, align 8, !dbg !850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !850

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !851
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !852
  %19 = load i64, ptr %size.addr, align 8, !dbg !853
  %20 = load i64, ptr %offset.addr, align 8, !dbg !854
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !855
  store i64 %call17, ptr %retval, align 8, !dbg !856
  br label %return, !dbg !856

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !857
  ret i64 %21, !dbg !857
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_mask_allbutself_phys(ptr noundef %mask, i32 noundef %vector) #1 align 16 !dbg !858 {
entry:
  %mask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %cpu = alloca i32, align 4
  %this_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %__vpp_verify20 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp24 = alloca ptr, align 8
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !860, metadata !DIExpression()), !dbg !890
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !861, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !862, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #15, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !863, metadata !DIExpression()), !dbg !894
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #13, !dbg !895
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !864, metadata !DIExpression()), !dbg !896
  br label %do.body, !dbg !896

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !867, metadata !DIExpression()), !dbg !897
  store ptr null, ptr %__vpp_verify, align 8, !dbg !897
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !896
  br label %do.cond, !dbg !897

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !897

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !869, metadata !DIExpression()), !dbg !898
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #16, !dbg !898, !srcloc !899
  store i32 %1, ptr %pfo_val__, align 4, !dbg !898
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !898
  %conv = zext i32 %2 to i64, !dbg !898
  %conv2 = trunc i64 %conv to i32, !dbg !898
  store i32 %conv2, ptr %tmp1, align 4, !dbg !898
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !896
  %3 = load i32, ptr %tmp1, align 4, !dbg !898
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !896
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !896
  store i32 %4, ptr %tmp3, align 4, !dbg !896
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !895
  %5 = load i32, ptr %tmp3, align 4, !dbg !896
  store i32 %5, ptr %tmp, align 4, !dbg !895
  %6 = load i32, ptr %tmp, align 4, !dbg !895
  store i32 %6, ptr %this_cpu, align 4, !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !871, metadata !DIExpression()), !dbg !901
  br label %do.body4, !dbg !902

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !903

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !872, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !876, metadata !DIExpression()), !dbg !904
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !904
  %conv6 = zext i1 %cmp to i32, !dbg !904
  store i32 1, ptr %tmp7, align 4, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !905
  %7 = load i32, ptr %tmp7, align 4, !dbg !904
  %call = call i64 @arch_local_irq_save() #13, !dbg !905
  store i64 %call, ptr %flags, align 8, !dbg !905
  br label %do.cond8, !dbg !905

do.cond8:                                         ; preds = %do.body5
  br label %do.end9, !dbg !905

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !903

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !903

do.end11:                                         ; preds = %do.cond10
  store i32 0, ptr %cpu, align 4, !dbg !906
  br label %for.cond, !dbg !906

for.cond:                                         ; preds = %for.inc, %do.end11
  %8 = load ptr, ptr %mask.addr, align 8, !dbg !907
  %bits = getelementptr inbounds %struct.cpumask, ptr %8, i32 0, i32 0, !dbg !907
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !907
  %9 = load i32, ptr %cpu, align 4, !dbg !907
  %conv12 = zext i32 %9 to i64, !dbg !907
  %call13 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv12) #13, !dbg !907
  %conv14 = trunc i64 %call13 to i32, !dbg !907
  store i32 %conv14, ptr %cpu, align 4, !dbg !907
  %10 = load i32, ptr %cpu, align 4, !dbg !907
  %cmp15 = icmp ult i32 %10, 64, !dbg !907
  br i1 %cmp15, label %for.body, label %for.end, !dbg !906

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %cpu, align 4, !dbg !908
  %12 = load i32, ptr %this_cpu, align 4, !dbg !910
  %cmp17 = icmp eq i32 %11, %12, !dbg !911
  br i1 %cmp17, label %if.then, label %if.end, !dbg !912

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !913

if.end:                                           ; preds = %for.body
  br label %do.body19, !dbg !914

do.body19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify20) #15, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify20, metadata !877, metadata !DIExpression()), !dbg !915
  store ptr null, ptr %__vpp_verify20, align 8, !dbg !915
  %13 = load ptr, ptr %__vpp_verify20, align 8, !dbg !915
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify20) #15, !dbg !914
  br label %do.cond21, !dbg !915

do.cond21:                                        ; preds = %do.body19
  br label %do.end22, !dbg !915

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !916
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !883, metadata !DIExpression()), !dbg !916
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr, align 8, !dbg !916
  %14 = load i64, ptr %__ptr, align 8, !dbg !916
  %15 = load i32, ptr %cpu, align 4, !dbg !916
  %idxprom = zext i32 %15 to i64, !dbg !916
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !916
  %16 = load i64, ptr %arrayidx, align 8, !dbg !916
  %add = add i64 %14, %16, !dbg !916
  %17 = inttoptr i64 %add to ptr, !dbg !916
  store ptr %17, ptr %tmp24, align 8, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !914
  %18 = load ptr, ptr %tmp24, align 8, !dbg !916
  store ptr %18, ptr %tmp23, align 8, !dbg !915
  %19 = load ptr, ptr %tmp23, align 8, !dbg !914
  %20 = load i16, ptr %19, align 2, !dbg !917
  %conv25 = zext i16 %20 to i32, !dbg !917
  %21 = load i32, ptr %vector.addr, align 4, !dbg !918
  call void @__default_send_IPI_dest_field(i32 noundef %conv25, i32 noundef %21, i32 noundef 0) #13, !dbg !919
  br label %for.inc, !dbg !920

for.inc:                                          ; preds = %do.end22, %if.then
  %22 = load i32, ptr %cpu, align 4, !dbg !907
  %inc = add i32 %22, 1, !dbg !907
  store i32 %inc, ptr %cpu, align 4, !dbg !907
  br label %for.cond, !dbg !907, !llvm.loop !921

for.end:                                          ; preds = %for.cond
  br label %do.body26, !dbg !923

do.body26:                                        ; preds = %for.end
  br label %do.body27, !dbg !924

do.body27:                                        ; preds = %do.body26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #15, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !885, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy229) #15, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %__dummy229, metadata !889, metadata !DIExpression()), !dbg !925
  %cmp30 = icmp eq ptr %__dummy28, %__dummy229, !dbg !925
  %conv31 = zext i1 %cmp30 to i32, !dbg !925
  store i32 1, ptr %tmp32, align 4, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy229) #15, !dbg !926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #15, !dbg !926
  %23 = load i32, ptr %tmp32, align 4, !dbg !925
  br label %do.body33, !dbg !926

do.body33:                                        ; preds = %do.body27
  br label %do.cond34, !dbg !927

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !927

do.end35:                                         ; preds = %do.cond34
  %24 = load i64, ptr %flags, align 8, !dbg !926
  call void @arch_local_irq_restore(i64 noundef %24) #13, !dbg !926
  br label %do.cond36, !dbg !926

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !926

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !924

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !924

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !929
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #15, !dbg !929
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !929
  ret void, !dbg !929
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_single(i32 noundef %cpu, i32 noundef %vector) #1 align 16 !dbg !930 {
entry:
  %cpu.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !932, metadata !DIExpression()), !dbg !934
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !933, metadata !DIExpression()), !dbg !935
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !936
  %call = call ptr @get_cpu_mask(i32 noundef %0) #13, !dbg !936
  %1 = load i32, ptr %vector.addr, align 4, !dbg !937
  call void @__apic_send_IPI_mask(ptr noundef %call, i32 noundef %1) #13, !dbg !938
  ret void, !dbg !939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_allbutself(i32 noundef %vector) #1 align 16 !dbg !940 {
entry:
  %vector.addr = alloca i32, align 4
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load i32, ptr %vector.addr, align 4, !dbg !944
  call void @__default_send_IPI_shortcut(i32 noundef 786432, i32 noundef %0) #13, !dbg !945
  ret void, !dbg !946
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__default_send_IPI_shortcut(i32 noundef %shortcut, i32 noundef %vector) #1 align 16 !dbg !947 {
entry:
  %shortcut.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  store i32 %shortcut, ptr %shortcut.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shortcut.addr, metadata !951, metadata !DIExpression()), !dbg !953
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !952, metadata !DIExpression()), !dbg !954
  %0 = load i32, ptr %vector.addr, align 4, !dbg !955
  %cmp = icmp eq i32 %0, 2, !dbg !955
  %lnot = xor i1 %cmp, true, !dbg !955
  %lnot1 = xor i1 %lnot, true, !dbg !955
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !955
  %conv = sext i32 %lnot.ext to i64, !dbg !955
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !955
  %tobool = icmp ne i64 %expval, 0, !dbg !955
  br i1 %tobool, label %if.then, label %if.else, !dbg !957

if.then:                                          ; preds = %entry
  %call = call i32 @apic_mem_wait_icr_idle_timeout() #13, !dbg !958
  br label %if.end, !dbg !958

if.else:                                          ; preds = %entry
  call void @apic_mem_wait_icr_idle() #13, !dbg !959
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %shortcut.addr, align 4, !dbg !960
  %2 = load i32, ptr %vector.addr, align 4, !dbg !961
  %call2 = call i32 @__prepare_ICR(i32 noundef %1, i32 noundef %2, i32 noundef 0) #13, !dbg !962
  call void @native_apic_mem_write(i32 noundef 768, i32 noundef %call2) #13, !dbg !963
  ret void, !dbg !964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_all(i32 noundef %vector) #1 align 16 !dbg !965 {
entry:
  %vector.addr = alloca i32, align 4
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !967, metadata !DIExpression()), !dbg !968
  %0 = load i32, ptr %vector.addr, align 4, !dbg !969
  call void @__default_send_IPI_shortcut(i32 noundef 524288, i32 noundef %0) #13, !dbg !970
  ret void, !dbg !971
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_send_IPI_self(i32 noundef %vector) #1 align 16 !dbg !972 {
entry:
  %vector.addr = alloca i32, align 4
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = load i32, ptr %vector.addr, align 4, !dbg !976
  call void @__default_send_IPI_shortcut(i32 noundef 262144, i32 noundef %0) #13, !dbg !977
  ret void, !dbg !978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !979 dso_local i32 @get_option(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !984 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !988 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !995, metadata !DIExpression()), !dbg !996
  %0 = load ptr, ptr %v.addr, align 8, !dbg !997
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !998
  ret i32 %call, !dbg !999
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !1000 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1005
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1005
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1005
  ret i32 %1, !dbg !1006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_equal(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #3 align 16 !dbg !1007 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1012, metadata !DIExpression()), !dbg !1015
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1013, metadata !DIExpression()), !dbg !1016
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1014, metadata !DIExpression()), !dbg !1017
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1018
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1018
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1018

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1018
  %cmp = icmp ule i32 %2, 64, !dbg !1018
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1018

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1018
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1018
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1020

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1021
  %5 = load i64, ptr %4, align 8, !dbg !1022
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !1023
  %7 = load i64, ptr %6, align 8, !dbg !1024
  %xor = xor i64 %5, %7, !dbg !1025
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1026
  %sub = sub i32 0, %8, !dbg !1026
  %and = and i32 %sub, 63, !dbg !1026
  %sh_prom = zext i32 %and to i64, !dbg !1026
  %shr = lshr i64 -1, %sh_prom, !dbg !1026
  %and3 = and i64 %xor, %shr, !dbg !1027
  %tobool = icmp ne i64 %and3, 0, !dbg !1028
  %lnot = xor i1 %tobool, true, !dbg !1028
  store i1 %lnot, ptr %retval, align 1, !dbg !1029
  br label %return, !dbg !1029

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !1030
  %and4 = and i32 %9, 7, !dbg !1032
  %10 = call i1 @llvm.is.constant.i32(i32 %and4), !dbg !1033
  br i1 %10, label %land.lhs.true5, label %if.end11, !dbg !1034

land.lhs.true5:                                   ; preds = %if.end
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !1035
  %and6 = and i32 %11, 7, !dbg !1035
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1035
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !1036

if.then8:                                         ; preds = %land.lhs.true5
  %12 = load ptr, ptr %src1.addr, align 8, !dbg !1037
  %13 = load ptr, ptr %src2.addr, align 8, !dbg !1038
  %14 = load i32, ptr %nbits.addr, align 4, !dbg !1039
  %div = udiv i32 %14, 8, !dbg !1040
  %conv = zext i32 %div to i64, !dbg !1039
  %call = call i32 @memcmp(ptr noundef %12, ptr noundef %13, i64 noundef %conv) #13, !dbg !1041
  %tobool9 = icmp ne i32 %call, 0, !dbg !1042
  %lnot10 = xor i1 %tobool9, true, !dbg !1042
  store i1 %lnot10, ptr %retval, align 1, !dbg !1043
  br label %return, !dbg !1043

if.end11:                                         ; preds = %land.lhs.true5, %if.end
  %15 = load ptr, ptr %src1.addr, align 8, !dbg !1044
  %16 = load ptr, ptr %src2.addr, align 8, !dbg !1045
  %17 = load i32, ptr %nbits.addr, align 4, !dbg !1046
  %call12 = call zeroext i1 @__bitmap_equal(ptr noundef %15, ptr noundef %16, i32 noundef %17) #13, !dbg !1047
  store i1 %call12, ptr %retval, align 1, !dbg !1048
  br label %return, !dbg !1048

return:                                           ; preds = %if.end11, %if.then8, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !1049
  ret i1 %18, !dbg !1049
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1050 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1057 dso_local zeroext i1 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_allbutself(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_mask_allbutself(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_or_equal(ptr noundef %src1, ptr noundef %src2, ptr noundef %src3, i32 noundef %nbits) #3 align 16 !dbg !1058 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %src3.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1062, metadata !DIExpression()), !dbg !1066
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1063, metadata !DIExpression()), !dbg !1067
  store ptr %src3, ptr %src3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src3.addr, metadata !1064, metadata !DIExpression()), !dbg !1068
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1065, metadata !DIExpression()), !dbg !1069
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1070
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1070
  br i1 %1, label %land.lhs.true, label %if.then, !dbg !1070

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1070
  %cmp = icmp ule i32 %2, 64, !dbg !1070
  br i1 %cmp, label %land.lhs.true1, label %if.then, !dbg !1070

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1070
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1070
  br i1 %cmp2, label %if.end, label %if.then, !dbg !1072

if.then:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1073
  %5 = load ptr, ptr %src2.addr, align 8, !dbg !1074
  %6 = load ptr, ptr %src3.addr, align 8, !dbg !1075
  %7 = load i32, ptr %nbits.addr, align 4, !dbg !1076
  %call = call zeroext i1 @__bitmap_or_equal(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #17, !dbg !1077
  store i1 %call, ptr %retval, align 1, !dbg !1078
  br label %return, !dbg !1078

if.end:                                           ; preds = %land.lhs.true1
  %8 = load ptr, ptr %src1.addr, align 8, !dbg !1079
  %9 = load i64, ptr %8, align 8, !dbg !1080
  %10 = load ptr, ptr %src2.addr, align 8, !dbg !1081
  %11 = load i64, ptr %10, align 8, !dbg !1082
  %or = or i64 %9, %11, !dbg !1083
  %12 = load ptr, ptr %src3.addr, align 8, !dbg !1084
  %13 = load i64, ptr %12, align 8, !dbg !1085
  %xor = xor i64 %or, %13, !dbg !1086
  %14 = load i32, ptr %nbits.addr, align 4, !dbg !1087
  %sub = sub i32 0, %14, !dbg !1087
  %and = and i32 %sub, 63, !dbg !1087
  %sh_prom = zext i32 %and to i64, !dbg !1087
  %shr = lshr i64 -1, %sh_prom, !dbg !1087
  %and3 = and i64 %xor, %shr, !dbg !1088
  %tobool = icmp ne i64 %and3, 0, !dbg !1089
  %lnot = xor i1 %tobool, true, !dbg !1089
  store i1 %lnot, ptr %retval, align 1, !dbg !1090
  br label %return, !dbg !1090

return:                                           ; preds = %if.end, %if.then
  %15 = load i1, ptr %retval, align 1, !dbg !1091
  ret i1 %15, !dbg !1091
}

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1092 dso_local zeroext i1 @__bitmap_or_equal(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !1093 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1101, metadata !DIExpression()), !dbg !1103
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1102, metadata !DIExpression()), !dbg !1104
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1105
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1106
  %div = udiv i64 %1, 64, !dbg !1106
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1107
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !1108
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1109
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1110
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1111
  ret i1 %call, !dbg !1112
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #2 align 16 !dbg !1113 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1119
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !1120
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1121
  ret i32 %1, !dbg !1122
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !1123 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1132, metadata !DIExpression()), !dbg !1134
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1133, metadata !DIExpression()), !dbg !1135
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1136
  %1 = load i64, ptr %size.addr, align 8, !dbg !1137
  %conv = trunc i64 %1 to i32, !dbg !1137
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !1138
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1139
  %3 = load i64, ptr %size.addr, align 8, !dbg !1139
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !1139
  ret void, !dbg !1140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !1141 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1144, metadata !DIExpression()), !dbg !1146
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1145, metadata !DIExpression()), !dbg !1147
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1148
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1149
  br i1 %1, label %cond.true, label %cond.false, !dbg !1149

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1150
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1151
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1152
  %conv = zext i1 %call to i32, !dbg !1152
  br label %cond.end, !dbg !1149

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1153
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1154
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !1155
  %conv2 = zext i1 %call1 to i32, !dbg !1155
  br label %cond.end, !dbg !1149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1149
  %tobool = icmp ne i32 %cond, 0, !dbg !1149
  ret i1 %tobool, !dbg !1156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1157 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1162, metadata !DIExpression()), !dbg !1164
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1163, metadata !DIExpression()), !dbg !1165
  ret i1 true, !dbg !1166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1167 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1172, metadata !DIExpression()), !dbg !1175
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1173, metadata !DIExpression()), !dbg !1176
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1174, metadata !DIExpression()), !dbg !1177
  ret void, !dbg !1178
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !1179 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1183, metadata !DIExpression()), !dbg !1185
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1184, metadata !DIExpression()), !dbg !1186
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1187
  %and = and i64 %0, 63, !dbg !1188
  %shl = shl i64 1, %and, !dbg !1189
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1190
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1191
  %shr = ashr i64 %2, 6, !dbg !1192
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1190
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1190
  %and1 = and i64 %shl, %3, !dbg !1193
  %cmp = icmp ne i64 %and1, 0, !dbg !1194
  ret i1 %cmp, !dbg !1195
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !1196 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1198, metadata !DIExpression()), !dbg !1201
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1200, metadata !DIExpression()), !dbg !1204
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1205
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1206
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !1207, !srcloc !1208
  %3 = icmp ult i8 %2, 2, !dbg !1207
  call void @llvm.assume(i1 %3), !dbg !1207
  store i8 %2, ptr %oldbit, align 1, !dbg !1207
  %4 = load i8, ptr %oldbit, align 1, !dbg !1209, !range !267, !noundef !268
  %tobool = trunc i8 %4 to i1, !dbg !1209
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !1210
  ret i1 %tobool, !dbg !1211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #2 align 16 !dbg !1212 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1216, metadata !DIExpression()), !dbg !1218
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1217, metadata !DIExpression()), !dbg !1219
  ret void, !dbg !1220
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_all(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_mask(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #3 align 16 !dbg !1221 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1226, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1227, metadata !DIExpression()), !dbg !1228
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1228
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #15, !dbg !1228, !srcloc !1229
  store i32 %1, ptr %ret, align 4, !dbg !1228
  %2 = load i32, ptr %ret, align 4, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1228
  ret i32 %2, !dbg !1228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fix_to_virt(i32 noundef %idx) #2 align 16 !dbg !1230 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1236, metadata !DIExpression()), !dbg !1237
  br label %do.body, !dbg !1238

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %idx.addr, align 4, !dbg !1239
  %cmp = icmp uge i32 %0, 1536, !dbg !1239
  br i1 %cmp, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_203() #18, !dbg !1239, !srcloc !1243
  unreachable, !dbg !1239

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1242

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %idx.addr, align 4, !dbg !1244
  %shl = shl i32 %1, 12, !dbg !1244
  %conv = zext i32 %shl to i64, !dbg !1244
  %sub = sub i64 -8392704, %conv, !dbg !1244
  ret i64 %sub, !dbg !1245
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1246 dso_local void @__compiletime_assert_203() #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #2 align 16 !dbg !1247 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !1248, !srcloc !1249
  ret void, !dbg !1250
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #2 align 16 !dbg !1251 {
entry:
  %call = call i64 @native_save_fl() #13, !dbg !1252
  ret i64 %call, !dbg !1253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #2 align 16 !dbg !1254 {
entry:
  call void @native_irq_disable() #13, !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #2 align 16 !dbg !1257 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !1262, !srcloc !1263
  %0 = load i64, ptr %flags, align 8, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !1265
  ret i64 %0, !dbg !1266
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #2 align 16 !dbg !1267 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !1268, !srcloc !1269
  ret void, !dbg !1270
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #2 align 16 !dbg !1271 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1275, metadata !DIExpression()), !dbg !1276
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1277
  %and = and i64 %0, 512, !dbg !1278
  %tobool = icmp ne i64 %and, 0, !dbg !1279
  %lnot = xor i1 %tobool, true, !dbg !1279
  %lnot.ext = zext i1 %lnot to i32, !dbg !1279
  ret i32 %lnot.ext, !dbg !1280
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #2 align 16 !dbg !1281 {
entry:
  call void @native_irq_enable() #13, !dbg !1282
  ret void, !dbg !1283
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #2 align 16 !dbg !1284 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !1285, !srcloc !1286
  ret void, !dbg !1287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #2 align 16 !dbg !1288 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1292, metadata !DIExpression()), !dbg !1293
  %0 = load i64, ptr %word.addr, align 8, !dbg !1294
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !1295, !srcloc !1296
  store i64 %1, ptr %word.addr, align 8, !dbg !1295
  %2 = load i64, ptr %word.addr, align 8, !dbg !1297
  ret i64 %2, !dbg !1298
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1299 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: idx >= __end_of_fixed_addresses" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone nounwind willreturn memory(read) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apic_use_ipi_shorthand", scope: !2, file: !3, line: 11, type: !154, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.ipi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/ipi\22 -D KBUILD_BASENAME=\22ipi\22 -D KBUILD_MODNAME=\22ipi\22 -D __KBUILD_MODNAME=kmod_ipi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/ipi.ll arch/x86/kernel/apic/ipi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/apic/ipi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "50bf7648816e9e855664b586a1ef8f34")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !12, line: 81, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!15 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!16 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!17 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!18 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!19 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!20 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!21 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!22 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!23 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!24 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!25 = !{!26, !27, !37, !38, !34, !39, !40, !7, !46, !49, !50, !51, !53}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !30, line: 19, size: 64, elements: !31)
!30 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !29, file: !30, line: 19, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !35)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !42, line: 19, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !42, line: 21, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !44, line: 27, baseType: !7)
!57 = !{!0, !58, !73, !75, !80, !85, !90, !92, !97, !102, !107, !112, !120, !128, !136, !141, !147}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__setup_apic_ipi_shorthand", scope: !2, file: !3, line: 21, type: !60, isLocal: true, isDefinition: true, align: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !61, line: 324, size: 192, elements: !62)
!61 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!62 = !{!63, !67, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !60, file: !61, line: 325, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !60, file: !61, line: 326, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!38, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !60, file: !61, line: 327, baseType: !38, size: 32, offset: 128)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_ipi__217_29_print_ipi_mode7218", scope: !2, file: !3, line: 29, type: !26, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 392, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 49)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 216, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 27)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 40, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 5)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "apic_ipi_shorthand_off", scope: !2, file: !3, line: 14, type: !38, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "__setup_str_apic_ipi_shorthand", scope: !2, file: !3, line: 21, type: !94, isLocal: true, isDefinition: true, align: 8)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 144, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 18)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 248, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 31)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 72, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 9)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_allbutself213", scope: !114, file: !115, line: 444, type: !26, isLocal: true, isDefinition: true)
!114 = distinct !DISubprogram(name: "__apic_send_IPI_allbutself", scope: !115, file: !115, line: 442, type: !116, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!115 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!116 = !DISubroutineType(types: !117)
!117 = !{null, !38}
!118 = !{!119}
!119 = !DILocalVariable(name: "vector", arg: 1, scope: !114, file: !115, line: 442, type: !38)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask_allbutself212", scope: !122, file: !115, line: 439, type: !26, isLocal: true, isDefinition: true)
!122 = distinct !DISubprogram(name: "__apic_send_IPI_mask_allbutself", scope: !115, file: !115, line: 437, type: !123, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !27, !38}
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "mask", arg: 1, scope: !122, file: !115, line: 437, type: !27)
!127 = !DILocalVariable(name: "vector", arg: 2, scope: !122, file: !115, line: 437, type: !38)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI210", scope: !130, file: !115, line: 429, type: !26, isLocal: true, isDefinition: true)
!130 = distinct !DISubprogram(name: "__apic_send_IPI", scope: !115, file: !115, line: 427, type: !131, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !38, !38}
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "cpu", arg: 1, scope: !130, file: !115, line: 427, type: !38)
!135 = !DILocalVariable(name: "vector", arg: 2, scope: !130, file: !115, line: 427, type: !38)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_all214", scope: !138, file: !115, line: 449, type: !26, isLocal: true, isDefinition: true)
!138 = distinct !DISubprogram(name: "__apic_send_IPI_all", scope: !115, file: !115, line: 447, type: !116, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!139 = !{!140}
!140 = !DILocalVariable(name: "vector", arg: 1, scope: !138, file: !115, line: 447, type: !38)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask211", scope: !143, file: !115, line: 434, type: !26, isLocal: true, isDefinition: true)
!143 = distinct !DISubprogram(name: "__apic_send_IPI_mask", scope: !115, file: !115, line: 432, type: !123, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "mask", arg: 1, scope: !143, file: !115, line: 432, type: !27)
!146 = !DILocalVariable(name: "vector", arg: 2, scope: !143, file: !115, line: 432, type: !38)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_read204", scope: !149, file: !115, line: 399, type: !26, isLocal: true, isDefinition: true)
!149 = distinct !DISubprogram(name: "apic_read", scope: !115, file: !115, line: 397, type: !150, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!55, !55}
!152 = !{!153}
!153 = !DILocalVariable(name: "reg", arg: 1, scope: !149, file: !115, line: 397, type: !55)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !155, line: 363, size: 128, elements: !156)
!155 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !154, file: !155, line: 364, baseType: !158, size: 128)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !155, line: 85, size: 128, elements: !159)
!159 = !{!160, !166}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !158, file: !155, line: 86, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !162, line: 174, baseType: !163)
!162 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 172, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !163, file: !162, line: 173, baseType: !38, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !155, line: 101, baseType: !167, size: 64, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !155, line: 101, size: 64, elements: !168)
!168 = !{!169, !170, !180}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !155, line: 102, baseType: !34, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !167, file: !155, line: 103, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !155, line: 117, size: 128, elements: !173)
!173 = !{!174, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !172, file: !155, line: 118, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !42, line: 20, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !44, line: 26, baseType: !38)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !172, file: !155, line: 119, baseType: !175, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !172, file: !155, line: 120, baseType: !179, size: 64, offset: 64)
!179 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !155, line: 104, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !155, line: 104, flags: DIFlagFwdDecl)
!183 = !{i32 7, !"Dwarf Version", i32 5}
!184 = !{i32 2, !"Debug Info Version", i32 3}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 8, !"cf-protection-branch", i32 1}
!187 = !{i32 4, !"function_return_thunk_extern", i32 1}
!188 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!189 = !{i32 1, !"Code Model", i32 2}
!190 = !{i32 1, !"override-stack-alignment", i32 8}
!191 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!192 = distinct !DISubprogram(name: "apic_ipi_shorthand", scope: !3, file: !3, line: 16, type: !69, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!193 = !{!194}
!194 = !DILocalVariable(name: "str", arg: 1, scope: !192, file: !3, line: 16, type: !71)
!195 = !DILocation(line: 16, column: 44, scope: !192)
!196 = !DILocation(line: 18, column: 2, scope: !192)
!197 = !DILocation(line: 19, column: 2, scope: !192)
!198 = distinct !DISubprogram(name: "__initstub__kmod_ipi__217_29_print_ipi_mode7", scope: !3, file: !3, line: 29, type: !199, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!199 = !DISubroutineType(types: !200)
!200 = !{!38}
!201 = !DILocation(line: 29, column: 1, scope: !198)
!202 = distinct !DISubprogram(name: "print_ipi_mode", scope: !3, file: !3, line: 23, type: !199, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!203 = !DILocation(line: 25, column: 2, scope: !204)
!204 = distinct !DILexicalBlock(scope: !202, file: !3, line: 25, column: 2)
!205 = !DILocation(line: 25, column: 2, scope: !206)
!206 = distinct !DILexicalBlock(scope: !204, file: !3, line: 25, column: 2)
!207 = !DILocation(line: 27, column: 2, scope: !202)
!208 = distinct !DISubprogram(name: "apic_smt_update", scope: !3, file: !3, line: 31, type: !209, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!209 = !DISubroutineType(types: !210)
!210 = !{null}
!211 = !DILocation(line: 43, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 43, column: 6)
!213 = !DILocation(line: 43, column: 29, scope: !212)
!214 = !DILocation(line: 43, column: 32, scope: !212)
!215 = !DILocation(line: 43, column: 50, scope: !212)
!216 = !DILocation(line: 43, column: 55, scope: !212)
!217 = !DILocation(line: 44, column: 7, scope: !212)
!218 = !DILocation(line: 43, column: 6, scope: !208)
!219 = !DILocation(line: 45, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !3, line: 44, column: 64)
!221 = !DILocation(line: 46, column: 2, scope: !220)
!222 = !DILocation(line: 47, column: 3, scope: !223)
!223 = distinct !DILexicalBlock(scope: !212, file: !3, line: 46, column: 9)
!224 = !DILocation(line: 49, column: 1, scope: !208)
!225 = distinct !DISubprogram(name: "num_online_cpus", scope: !30, file: !30, line: 1072, type: !226, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!226 = !DISubroutineType(types: !227)
!227 = !{!7}
!228 = !DILocation(line: 1074, column: 9, scope: !225)
!229 = !DILocation(line: 1074, column: 2, scope: !225)
!230 = distinct !DISubprogram(name: "cpumask_equal", scope: !30, file: !30, line: 621, type: !231, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !27, !27}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !162, line: 35, baseType: !234)
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !{!236, !237}
!236 = !DILocalVariable(name: "src1p", arg: 1, scope: !230, file: !30, line: 621, type: !27)
!237 = !DILocalVariable(name: "src2p", arg: 2, scope: !230, file: !30, line: 622, type: !27)
!238 = !DILocation(line: 621, column: 56, scope: !230)
!239 = !DILocation(line: 622, column: 27, scope: !230)
!240 = !DILocation(line: 624, column: 22, scope: !230)
!241 = !DILocation(line: 624, column: 43, scope: !230)
!242 = !DILocation(line: 624, column: 9, scope: !230)
!243 = !DILocation(line: 624, column: 2, scope: !230)
!244 = !DISubprogram(name: "static_key_disable", scope: !155, file: !155, line: 234, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!248 = !DISubprogram(name: "static_key_enable", scope: !155, file: !155, line: 233, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = distinct !DISubprogram(name: "apic_send_IPI_allbutself", scope: !3, file: !3, line: 51, type: !250, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !7}
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "vector", arg: 1, scope: !249, file: !3, line: 51, type: !7)
!254 = !DILocalVariable(name: "branch", scope: !255, file: !3, line: 56, type: !233)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 56, column: 6)
!256 = distinct !DILexicalBlock(scope: !249, file: !3, line: 56, column: 6)
!257 = !DILocation(line: 51, column: 44, scope: !249)
!258 = !DILocation(line: 53, column: 6, scope: !259)
!259 = distinct !DILexicalBlock(scope: !249, file: !3, line: 53, column: 6)
!260 = !DILocation(line: 53, column: 24, scope: !259)
!261 = !DILocation(line: 53, column: 6, scope: !249)
!262 = !DILocation(line: 54, column: 3, scope: !259)
!263 = !DILocation(line: 56, column: 6, scope: !255)
!264 = !DILocation(line: 56, column: 6, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 56, column: 6)
!266 = distinct !DILexicalBlock(scope: !255, file: !3, line: 56, column: 6)
!267 = !{i8 0, i8 2}
!268 = !{}
!269 = !DILocation(line: 56, column: 6, scope: !266)
!270 = !DILocation(line: 56, column: 6, scope: !256)
!271 = !DILocation(line: 56, column: 6, scope: !249)
!272 = !DILocation(line: 57, column: 30, scope: !256)
!273 = !DILocation(line: 57, column: 3, scope: !256)
!274 = !DILocation(line: 59, column: 52, scope: !256)
!275 = !DILocation(line: 59, column: 3, scope: !256)
!276 = !DILocation(line: 60, column: 1, scope: !249)
!277 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !278, file: !278, line: 53, type: !279, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!278 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!279 = !DISubroutineType(types: !280)
!280 = !{!233, !281, !282}
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!283 = !{!284, !285, !286}
!284 = !DILocalVariable(name: "key", arg: 1, scope: !277, file: !278, line: 53, type: !281)
!285 = !DILocalVariable(name: "branch", arg: 2, scope: !277, file: !278, line: 53, type: !282)
!286 = !DILabel(scope: !277, name: "l_yes", file: !278, line: 61)
!287 = !DILocation(line: 53, column: 79, scope: !277)
!288 = !DILocation(line: 53, column: 95, scope: !277)
!289 = !DILocation(line: 58, column: 13, scope: !277)
!290 = !DILocation(line: 58, column: 24, scope: !277)
!291 = !DILocation(line: 55, column: 2, scope: !277)
!292 = !{i64 731312, i64 731335, i64 2148216082, i64 2148216103, i64 2148216129, i64 2148216162, i64 2148216196, i64 2148216220}
!293 = !DILocation(line: 60, column: 2, scope: !277)
!294 = !DILocation(line: 61, column: 1, scope: !277)
!295 = !DILocation(line: 62, column: 2, scope: !277)
!296 = !DILocation(line: 63, column: 1, scope: !277)
!297 = !DILocation(line: 442, column: 60, scope: !114)
!298 = !DILocation(line: 444, column: 2, scope: !299)
!299 = distinct !DILexicalBlock(scope: !114, file: !115, line: 444, column: 2)
!300 = !DILocation(line: 444, column: 45, scope: !114)
!301 = !DILocation(line: 444, column: 2, scope: !114)
!302 = !DILocation(line: 445, column: 1, scope: !114)
!303 = !DILocation(line: 437, column: 83, scope: !122)
!304 = !DILocation(line: 437, column: 93, scope: !122)
!305 = !DILocation(line: 439, column: 2, scope: !306)
!306 = distinct !DILexicalBlock(scope: !122, file: !115, line: 439, column: 2)
!307 = !DILocation(line: 439, column: 50, scope: !122)
!308 = !DILocation(line: 439, column: 56, scope: !122)
!309 = !DILocation(line: 439, column: 2, scope: !122)
!310 = !DILocation(line: 440, column: 1, scope: !122)
!311 = distinct !DISubprogram(name: "native_smp_send_reschedule", scope: !3, file: !3, line: 67, type: !116, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !318}
!313 = !DILocalVariable(name: "cpu", arg: 1, scope: !311, file: !3, line: 67, type: !38)
!314 = !DILocalVariable(name: "__ret_warn_on", scope: !315, file: !3, line: 70, type: !38)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 70, column: 3)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 69, column: 37)
!317 = distinct !DILexicalBlock(scope: !311, file: !3, line: 69, column: 6)
!318 = !DILocalVariable(name: "__flags", scope: !319, file: !3, line: 70, type: !38)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 70, column: 3)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 70, column: 3)
!321 = distinct !DILexicalBlock(scope: !315, file: !3, line: 70, column: 3)
!322 = !DILocation(line: 67, column: 37, scope: !311)
!323 = !DILocation(line: 69, column: 6, scope: !317)
!324 = !DILocation(line: 69, column: 6, scope: !311)
!325 = !DILocation(line: 70, column: 3, scope: !315)
!326 = !DILocation(line: 70, column: 3, scope: !321)
!327 = !DILocation(line: 70, column: 3, scope: !320)
!328 = !DILocation(line: 70, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !320, file: !3, line: 70, column: 3)
!330 = !DILocation(line: 70, column: 3, scope: !319)
!331 = !DILocation(line: 70, column: 3, scope: !332)
!332 = distinct !DILexicalBlock(scope: !319, file: !3, line: 70, column: 3)
!333 = !DILocation(line: 70, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !319, file: !3, line: 70, column: 3)
!335 = !{i64 2152818223, i64 2152818252, i64 2152818298, i64 2152818356, i64 2152818410, i64 2152818464, i64 2152818519, i64 2152818550, i64 2152818858, i64 2152818864, i64 2152818911, i64 2152818934, i64 2152818960}
!336 = !DILocation(line: 70, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !319, file: !3, line: 70, column: 3)
!338 = !DILocation(line: 70, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !320, file: !3, line: 70, column: 3)
!340 = !DILocation(line: 70, column: 3, scope: !316)
!341 = !DILocation(line: 71, column: 3, scope: !316)
!342 = !DILocation(line: 73, column: 18, scope: !311)
!343 = !DILocation(line: 73, column: 2, scope: !311)
!344 = !DILocation(line: 74, column: 1, scope: !311)
!345 = distinct !DISubprogram(name: "cpu_online", scope: !30, file: !30, line: 1080, type: !346, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!233, !7}
!348 = !{!349}
!349 = !DILocalVariable(name: "cpu", arg: 1, scope: !345, file: !30, line: 1080, type: !7)
!350 = !DILocation(line: 1080, column: 44, scope: !345)
!351 = !DILocation(line: 1082, column: 26, scope: !345)
!352 = !DILocation(line: 1082, column: 9, scope: !345)
!353 = !DILocation(line: 1082, column: 2, scope: !345)
!354 = !DISubprogram(name: "__warn_printk", scope: !355, file: !355, line: 93, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!356 = !DISubroutineType(types: !357)
!357 = !{null, !64, null}
!358 = !DILocation(line: 427, column: 49, scope: !130)
!359 = !DILocation(line: 427, column: 58, scope: !130)
!360 = !DILocation(line: 429, column: 2, scope: !361)
!361 = distinct !DILexicalBlock(scope: !130, file: !115, line: 429, column: 2)
!362 = !DILocation(line: 429, column: 34, scope: !130)
!363 = !DILocation(line: 429, column: 39, scope: !130)
!364 = !DILocation(line: 429, column: 2, scope: !130)
!365 = !DILocation(line: 430, column: 1, scope: !130)
!366 = distinct !DISubprogram(name: "native_send_call_func_single_ipi", scope: !3, file: !3, line: 76, type: !116, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!367 = !{!368}
!368 = !DILocalVariable(name: "cpu", arg: 1, scope: !366, file: !3, line: 76, type: !38)
!369 = !DILocation(line: 76, column: 43, scope: !366)
!370 = !DILocation(line: 78, column: 18, scope: !366)
!371 = !DILocation(line: 78, column: 2, scope: !366)
!372 = !DILocation(line: 79, column: 1, scope: !366)
!373 = distinct !DISubprogram(name: "native_send_call_func_ipi", scope: !3, file: !3, line: 81, type: !374, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !27}
!376 = !{!377, !378, !381, !383, !386, !390, !392}
!377 = !DILocalVariable(name: "mask", arg: 1, scope: !373, file: !3, line: 81, type: !27)
!378 = !DILocalVariable(name: "branch", scope: !379, file: !3, line: 83, type: !233)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 83, column: 6)
!380 = distinct !DILexicalBlock(scope: !373, file: !3, line: 83, column: 6)
!381 = !DILocalVariable(name: "cpu", scope: !382, file: !3, line: 84, type: !7)
!382 = distinct !DILexicalBlock(scope: !380, file: !3, line: 83, column: 53)
!383 = !DILocalVariable(name: "pscr_ret__", scope: !384, file: !3, line: 84, type: !38)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 84, column: 22)
!385 = distinct !DILexicalBlock(scope: !382, file: !3, line: 84, column: 22)
!386 = !DILocalVariable(name: "__vpp_verify", scope: !387, file: !3, line: 84, type: !388)
!387 = distinct !DILexicalBlock(scope: !384, file: !3, line: 84, column: 22)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!390 = !DILocalVariable(name: "pfo_val__", scope: !391, file: !3, line: 84, type: !55)
!391 = distinct !DILexicalBlock(scope: !384, file: !3, line: 84, column: 22)
!392 = !DILabel(scope: !373, name: "sendmask", file: !3, line: 96)
!393 = !DILocation(line: 81, column: 54, scope: !373)
!394 = !DILocation(line: 83, column: 6, scope: !379)
!395 = !DILocation(line: 83, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 83, column: 6)
!397 = distinct !DILexicalBlock(scope: !379, file: !3, line: 83, column: 6)
!398 = !DILocation(line: 83, column: 6, scope: !397)
!399 = !DILocation(line: 83, column: 6, scope: !380)
!400 = !DILocation(line: 83, column: 6, scope: !373)
!401 = !DILocation(line: 84, column: 3, scope: !382)
!402 = !DILocation(line: 84, column: 16, scope: !382)
!403 = !DILocation(line: 84, column: 22, scope: !385)
!404 = !DILocation(line: 84, column: 22, scope: !384)
!405 = !DILocation(line: 84, column: 22, scope: !387)
!406 = !DILocation(line: 84, column: 22, scope: !391)
!407 = !{i64 2152822416}
!408 = !DILocation(line: 86, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !382, file: !3, line: 86, column: 7)
!410 = !DILocation(line: 86, column: 31, scope: !409)
!411 = !DILocation(line: 86, column: 8, scope: !409)
!412 = !DILocation(line: 86, column: 7, scope: !382)
!413 = !DILocation(line: 87, column: 4, scope: !409)
!414 = !DILocation(line: 89, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !382, file: !3, line: 89, column: 7)
!416 = !DILocation(line: 89, column: 29, scope: !415)
!417 = !DILocation(line: 89, column: 7, scope: !415)
!418 = !DILocation(line: 89, column: 7, scope: !382)
!419 = !DILocation(line: 90, column: 4, scope: !415)
!420 = !DILocation(line: 91, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !415, file: !3, line: 91, column: 12)
!422 = !DILocation(line: 91, column: 30, scope: !421)
!423 = !DILocation(line: 91, column: 12, scope: !415)
!424 = !DILocation(line: 92, column: 4, scope: !421)
!425 = !DILocation(line: 93, column: 3, scope: !382)
!426 = !DILocation(line: 94, column: 2, scope: !380)
!427 = !DILocation(line: 96, column: 1, scope: !373)
!428 = !DILocation(line: 97, column: 23, scope: !373)
!429 = !DILocation(line: 97, column: 2, scope: !373)
!430 = !DILocation(line: 98, column: 1, scope: !373)
!431 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !432, file: !432, line: 313, type: !433, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!432 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!433 = !DISubroutineType(types: !434)
!434 = !{null, !64}
!435 = !{!436}
!436 = !DILocalVariable(name: "op", arg: 1, scope: !431, file: !432, line: 313, type: !64)
!437 = !DILocation(line: 313, column: 66, scope: !431)
!438 = !DILocation(line: 313, column: 72, scope: !431)
!439 = distinct !DISubprogram(name: "cpumask_or_equal", scope: !30, file: !30, line: 634, type: !440, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!233, !27, !27, !27}
!442 = !{!443, !444, !445}
!443 = !DILocalVariable(name: "src1p", arg: 1, scope: !439, file: !30, line: 634, type: !27)
!444 = !DILocalVariable(name: "src2p", arg: 2, scope: !439, file: !30, line: 635, type: !27)
!445 = !DILocalVariable(name: "src3p", arg: 3, scope: !439, file: !30, line: 636, type: !27)
!446 = !DILocation(line: 634, column: 59, scope: !439)
!447 = !DILocation(line: 635, column: 31, scope: !439)
!448 = !DILocation(line: 636, column: 31, scope: !439)
!449 = !DILocation(line: 638, column: 25, scope: !439)
!450 = !DILocation(line: 638, column: 46, scope: !439)
!451 = !DILocation(line: 639, column: 11, scope: !439)
!452 = !DILocation(line: 638, column: 9, scope: !439)
!453 = !DILocation(line: 638, column: 2, scope: !439)
!454 = distinct !DISubprogram(name: "get_cpu_mask", scope: !30, file: !30, line: 1056, type: !455, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!27, !7}
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "cpu", arg: 1, scope: !454, file: !30, line: 1056, type: !7)
!459 = !DILocalVariable(name: "p", scope: !454, file: !30, line: 1058, type: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!462 = !DILocation(line: 1056, column: 63, scope: !454)
!463 = !DILocation(line: 1058, column: 2, scope: !454)
!464 = !DILocation(line: 1058, column: 23, scope: !454)
!465 = !DILocation(line: 1058, column: 46, scope: !454)
!466 = !DILocation(line: 1058, column: 50, scope: !454)
!467 = !DILocation(line: 1058, column: 44, scope: !454)
!468 = !DILocation(line: 1058, column: 27, scope: !454)
!469 = !DILocation(line: 1059, column: 7, scope: !454)
!470 = !DILocation(line: 1059, column: 11, scope: !454)
!471 = !DILocation(line: 1059, column: 4, scope: !454)
!472 = !DILocation(line: 1060, column: 9, scope: !454)
!473 = !DILocation(line: 1061, column: 1, scope: !454)
!474 = !DILocation(line: 1060, column: 2, scope: !454)
!475 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !30, file: !30, line: 502, type: !476, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!233, !38, !27}
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "cpu", arg: 1, scope: !475, file: !30, line: 502, type: !38)
!480 = !DILocalVariable(name: "cpumask", arg: 2, scope: !475, file: !30, line: 502, type: !27)
!481 = !DILocation(line: 502, column: 50, scope: !475)
!482 = !DILocation(line: 502, column: 77, scope: !475)
!483 = !DILocation(line: 504, column: 9, scope: !475)
!484 = !DILocation(line: 504, column: 2, scope: !475)
!485 = !DILocation(line: 447, column: 53, scope: !138)
!486 = !DILocation(line: 449, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !138, file: !115, line: 449, column: 2)
!488 = !DILocation(line: 449, column: 38, scope: !138)
!489 = !DILocation(line: 449, column: 2, scope: !138)
!490 = !DILocation(line: 450, column: 1, scope: !138)
!491 = !DILocation(line: 432, column: 72, scope: !143)
!492 = !DILocation(line: 432, column: 82, scope: !143)
!493 = !DILocation(line: 434, column: 2, scope: !494)
!494 = distinct !DILexicalBlock(scope: !143, file: !115, line: 434, column: 2)
!495 = !DILocation(line: 434, column: 43, scope: !143)
!496 = !DILocation(line: 434, column: 49, scope: !143)
!497 = !DILocation(line: 434, column: 2, scope: !143)
!498 = !DILocation(line: 435, column: 1, scope: !143)
!499 = distinct !DISubprogram(name: "apic_send_nmi_to_offline_cpu", scope: !3, file: !3, line: 100, type: !250, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!500 = !{!501, !502, !505, !508, !511}
!501 = !DILocalVariable(name: "cpu", arg: 1, scope: !499, file: !3, line: 100, type: !7)
!502 = !DILocalVariable(name: "__ret_warn_on", scope: !503, file: !3, line: 102, type: !38)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 102, column: 6)
!504 = distinct !DILexicalBlock(scope: !499, file: !3, line: 102, column: 6)
!505 = !DILocalVariable(name: "__flags", scope: !506, file: !3, line: 102, type: !38)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 102, column: 6)
!507 = distinct !DILexicalBlock(scope: !503, file: !3, line: 102, column: 6)
!508 = !DILocalVariable(name: "__ret_warn_on", scope: !509, file: !3, line: 104, type: !38)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 104, column: 6)
!510 = distinct !DILexicalBlock(scope: !499, file: !3, line: 104, column: 6)
!511 = !DILocalVariable(name: "__flags", scope: !512, file: !3, line: 104, type: !38)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 104, column: 6)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 104, column: 6)
!514 = !DILocation(line: 100, column: 48, scope: !499)
!515 = !DILocation(line: 102, column: 6, scope: !503)
!516 = !DILocation(line: 102, column: 6, scope: !507)
!517 = !DILocation(line: 102, column: 6, scope: !506)
!518 = !DILocation(line: 102, column: 6, scope: !519)
!519 = distinct !DILexicalBlock(scope: !506, file: !3, line: 102, column: 6)
!520 = !DILocation(line: 102, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !506, file: !3, line: 102, column: 6)
!522 = !{i64 2152823831, i64 2152823860, i64 2152823906, i64 2152823964, i64 2152824018, i64 2152824072, i64 2152824127, i64 2152824158, i64 2152824466, i64 2152824472, i64 2152824519, i64 2152824542, i64 2152824568}
!523 = !DILocation(line: 102, column: 6, scope: !524)
!524 = distinct !DILexicalBlock(scope: !506, file: !3, line: 102, column: 6)
!525 = !DILocation(line: 102, column: 6, scope: !504)
!526 = !DILocation(line: 102, column: 6, scope: !499)
!527 = !DILocation(line: 103, column: 3, scope: !504)
!528 = !DILocation(line: 104, column: 6, scope: !509)
!529 = !DILocation(line: 104, column: 6, scope: !513)
!530 = !DILocation(line: 104, column: 6, scope: !512)
!531 = !DILocation(line: 104, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !512, file: !3, line: 104, column: 6)
!533 = !DILocation(line: 104, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !512, file: !3, line: 104, column: 6)
!535 = !{i64 2152825395, i64 2152825424, i64 2152825470, i64 2152825528, i64 2152825582, i64 2152825636, i64 2152825691, i64 2152825722, i64 2152826030, i64 2152826036, i64 2152826083, i64 2152826106, i64 2152826132}
!536 = !DILocation(line: 104, column: 6, scope: !537)
!537 = distinct !DILexicalBlock(scope: !512, file: !3, line: 104, column: 6)
!538 = !DILocation(line: 104, column: 6, scope: !510)
!539 = !DILocation(line: 104, column: 6, scope: !499)
!540 = !DILocation(line: 105, column: 3, scope: !510)
!541 = !DILocation(line: 106, column: 2, scope: !499)
!542 = !DILocation(line: 106, column: 8, scope: !499)
!543 = !DILocation(line: 106, column: 17, scope: !499)
!544 = !DILocation(line: 107, column: 1, scope: !499)
!545 = distinct !DISubprogram(name: "apic_mem_wait_icr_idle_timeout", scope: !3, file: !3, line: 115, type: !546, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!55}
!548 = !{!549, !550, !556}
!549 = !DILocalVariable(name: "cnt", scope: !545, file: !3, line: 117, type: !38)
!550 = !DILocalVariable(name: "__vpp_verify", scope: !551, file: !3, line: 122, type: !388)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 122, column: 3)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 122, column: 3)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 119, column: 35)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 119, column: 2)
!555 = distinct !DILexicalBlock(scope: !545, file: !3, line: 119, column: 2)
!556 = !DILocalVariable(name: "pao_ID__", scope: !557, file: !3, line: 122, type: !558)
!557 = distinct !DILexicalBlock(scope: !552, file: !3, line: 122, column: 3)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!559 = !DILocation(line: 117, column: 2, scope: !545)
!560 = !DILocation(line: 117, column: 6, scope: !545)
!561 = !DILocation(line: 119, column: 11, scope: !555)
!562 = !DILocation(line: 119, column: 7, scope: !555)
!563 = !DILocation(line: 119, column: 16, scope: !554)
!564 = !DILocation(line: 119, column: 20, scope: !554)
!565 = !DILocation(line: 119, column: 2, scope: !555)
!566 = !DILocation(line: 120, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !553, file: !3, line: 120, column: 7)
!568 = !DILocation(line: 120, column: 29, scope: !567)
!569 = !DILocation(line: 120, column: 7, scope: !553)
!570 = !DILocation(line: 121, column: 4, scope: !567)
!571 = !DILocation(line: 122, column: 3, scope: !553)
!572 = !DILocation(line: 122, column: 3, scope: !552)
!573 = !DILocation(line: 122, column: 3, scope: !551)
!574 = !DILocation(line: 122, column: 3, scope: !557)
!575 = !DILocation(line: 122, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 122, column: 3)
!577 = distinct !DILexicalBlock(scope: !557, file: !3, line: 122, column: 3)
!578 = !{i64 2152832787}
!579 = !DILocation(line: 123, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 123, column: 3)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 123, column: 3)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 123, column: 3)
!583 = distinct !DILexicalBlock(scope: !553, file: !3, line: 123, column: 3)
!584 = !DILocation(line: 124, column: 2, scope: !553)
!585 = !DILocation(line: 119, column: 31, scope: !554)
!586 = !DILocation(line: 119, column: 2, scope: !554)
!587 = distinct !{!587, !565, !588, !589, !590}
!588 = !DILocation(line: 124, column: 2, scope: !555)
!589 = !{!"llvm.loop.mustprogress"}
!590 = !{!"llvm.loop.unroll.disable"}
!591 = !DILocation(line: 125, column: 2, scope: !545)
!592 = !DILocation(line: 126, column: 1, scope: !545)
!593 = !DILocation(line: 397, column: 42, scope: !149)
!594 = !DILocation(line: 399, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !149, file: !115, line: 399, column: 9)
!596 = !DILocation(line: 399, column: 37, scope: !149)
!597 = !DILocation(line: 399, column: 9, scope: !149)
!598 = !DILocation(line: 399, column: 2, scope: !149)
!599 = !DISubprogram(name: "__const_udelay", scope: !600, file: !600, line: 11, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!601 = !DISubroutineType(types: !602)
!602 = !{null, !34}
!603 = distinct !DISubprogram(name: "apic_mem_wait_icr_idle", scope: !3, file: !3, line: 128, type: !209, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!604 = !DILocation(line: 130, column: 2, scope: !603)
!605 = !DILocation(line: 130, column: 9, scope: !603)
!606 = !DILocation(line: 130, column: 40, scope: !603)
!607 = !DILocation(line: 131, column: 3, scope: !603)
!608 = distinct !{!608, !604, !609, !589, !590}
!609 = !DILocation(line: 131, column: 13, scope: !603)
!610 = !DILocation(line: 132, column: 1, scope: !603)
!611 = distinct !DISubprogram(name: "native_apic_mem_read", scope: !115, file: !115, line: 98, type: !150, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!612 = !{!613}
!613 = !DILocalVariable(name: "reg", arg: 1, scope: !611, file: !115, line: 98, type: !55)
!614 = !DILocation(line: 98, column: 44, scope: !611)
!615 = !DILocation(line: 100, column: 32, scope: !611)
!616 = !DILocation(line: 100, column: 44, scope: !611)
!617 = !DILocation(line: 100, column: 42, scope: !611)
!618 = !DILocation(line: 100, column: 15, scope: !611)
!619 = !DILocation(line: 100, column: 9, scope: !611)
!620 = !DILocation(line: 100, column: 2, scope: !611)
!621 = distinct !DISubprogram(name: "cpu_relax", scope: !622, file: !622, line: 16, type: !209, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!622 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!623 = !DILocation(line: 18, column: 2, scope: !621)
!624 = !DILocation(line: 19, column: 1, scope: !621)
!625 = distinct !DISubprogram(name: "__default_send_IPI_dest_field", scope: !3, file: !3, line: 173, type: !626, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !7, !38, !7}
!628 = !{!629, !630, !631}
!629 = !DILocalVariable(name: "dest_mask", arg: 1, scope: !625, file: !3, line: 173, type: !7)
!630 = !DILocalVariable(name: "vector", arg: 2, scope: !625, file: !3, line: 173, type: !38)
!631 = !DILocalVariable(name: "dest_mode", arg: 3, scope: !625, file: !3, line: 174, type: !7)
!632 = !DILocation(line: 173, column: 49, scope: !625)
!633 = !DILocation(line: 173, column: 64, scope: !625)
!634 = !DILocation(line: 174, column: 21, scope: !625)
!635 = !DILocation(line: 177, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !625, file: !3, line: 177, column: 6)
!637 = !DILocation(line: 177, column: 6, scope: !625)
!638 = !DILocation(line: 178, column: 3, scope: !636)
!639 = !DILocation(line: 180, column: 3, scope: !636)
!640 = !DILocation(line: 183, column: 50, scope: !625)
!641 = !DILocation(line: 183, column: 35, scope: !625)
!642 = !DILocation(line: 183, column: 2, scope: !625)
!643 = !DILocation(line: 185, column: 51, scope: !625)
!644 = !DILocation(line: 185, column: 59, scope: !625)
!645 = !DILocation(line: 185, column: 34, scope: !625)
!646 = !DILocation(line: 185, column: 2, scope: !625)
!647 = !DILocation(line: 186, column: 1, scope: !625)
!648 = distinct !DISubprogram(name: "native_apic_mem_write", scope: !115, file: !115, line: 89, type: !649, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !55, !55}
!651 = !{!652, !653, !654}
!652 = !DILocalVariable(name: "reg", arg: 1, scope: !648, file: !115, line: 89, type: !55)
!653 = !DILocalVariable(name: "v", arg: 2, scope: !648, file: !115, line: 89, type: !55)
!654 = !DILocalVariable(name: "addr", scope: !648, file: !115, line: 91, type: !53)
!655 = !DILocation(line: 89, column: 46, scope: !648)
!656 = !DILocation(line: 89, column: 55, scope: !648)
!657 = !DILocation(line: 91, column: 2, scope: !648)
!658 = !DILocation(line: 91, column: 16, scope: !648)
!659 = !DILocation(line: 91, column: 40, scope: !648)
!660 = !DILocation(line: 91, column: 52, scope: !648)
!661 = !DILocation(line: 91, column: 50, scope: !648)
!662 = !DILocation(line: 91, column: 23, scope: !648)
!663 = !DILocation(line: 93, column: 2, scope: !648)
!664 = !{i64 2152756383, i64 2152756411, i64 2152756417, i64 2152756433, i64 2152756449, i64 2152756476, i64 2152756802, i64 2152756121, i64 2152756808, i64 2152756856, i64 2152756920, i64 2152756984, i64 2152757041, i64 2152756202, i64 2152756227, i64 2152757265, i64 2152757394, i64 2152757326, i64 2152757408, i64 2152756319}
!665 = !DILocation(line: 96, column: 1, scope: !648)
!666 = distinct !DISubprogram(name: "__prepare_ICR2", scope: !3, file: !3, line: 110, type: !667, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!38, !7}
!669 = !{!670}
!670 = !DILocalVariable(name: "mask", arg: 1, scope: !666, file: !3, line: 110, type: !7)
!671 = !DILocation(line: 110, column: 47, scope: !666)
!672 = !DILocation(line: 112, column: 9, scope: !666)
!673 = !DILocation(line: 112, column: 2, scope: !666)
!674 = distinct !DISubprogram(name: "__prepare_ICR", scope: !675, file: !675, line: 31, type: !676, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !678)
!675 = !DIFile(filename: "arch/x86/kernel/apic/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72a37ec9fca34647e3570a708e38b5d0")
!676 = !DISubroutineType(types: !677)
!677 = !{!7, !7, !38, !7}
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(name: "shortcut", arg: 1, scope: !674, file: !675, line: 31, type: !7)
!680 = !DILocalVariable(name: "vector", arg: 2, scope: !674, file: !675, line: 31, type: !38)
!681 = !DILocalVariable(name: "dest", arg: 3, scope: !674, file: !675, line: 32, type: !7)
!682 = !DILocalVariable(name: "icr", scope: !674, file: !675, line: 34, type: !7)
!683 = !DILocation(line: 31, column: 55, scope: !674)
!684 = !DILocation(line: 31, column: 69, scope: !674)
!685 = !DILocation(line: 32, column: 20, scope: !674)
!686 = !DILocation(line: 34, column: 2, scope: !674)
!687 = !DILocation(line: 34, column: 15, scope: !674)
!688 = !DILocation(line: 34, column: 21, scope: !674)
!689 = !DILocation(line: 34, column: 32, scope: !674)
!690 = !DILocation(line: 34, column: 30, scope: !674)
!691 = !DILocation(line: 36, column: 10, scope: !674)
!692 = !DILocation(line: 36, column: 2, scope: !674)
!693 = !DILocation(line: 38, column: 26, scope: !694)
!694 = distinct !DILexicalBlock(scope: !674, file: !675, line: 36, column: 18)
!695 = !DILocation(line: 38, column: 24, scope: !694)
!696 = !DILocation(line: 38, column: 7, scope: !694)
!697 = !DILocation(line: 39, column: 3, scope: !694)
!698 = !DILocation(line: 41, column: 7, scope: !694)
!699 = !DILocation(line: 42, column: 3, scope: !694)
!700 = !DILocation(line: 44, column: 9, scope: !674)
!701 = !DILocation(line: 45, column: 1, scope: !674)
!702 = !DILocation(line: 44, column: 2, scope: !674)
!703 = distinct !DISubprogram(name: "default_send_IPI_single_phys", scope: !3, file: !3, line: 188, type: !131, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !704)
!704 = !{!705, !706, !707, !708, !712, !713, !716, !718, !722}
!705 = !DILocalVariable(name: "cpu", arg: 1, scope: !703, file: !3, line: 188, type: !38)
!706 = !DILocalVariable(name: "vector", arg: 2, scope: !703, file: !3, line: 188, type: !38)
!707 = !DILocalVariable(name: "flags", scope: !703, file: !3, line: 190, type: !34)
!708 = !DILocalVariable(name: "__dummy", scope: !709, file: !3, line: 192, type: !34)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 192, column: 2)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 192, column: 2)
!711 = distinct !DILexicalBlock(scope: !703, file: !3, line: 192, column: 2)
!712 = !DILocalVariable(name: "__dummy2", scope: !709, file: !3, line: 192, type: !34)
!713 = !DILocalVariable(name: "__vpp_verify", scope: !714, file: !3, line: 193, type: !388)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 193, column: 32)
!715 = distinct !DILexicalBlock(scope: !703, file: !3, line: 193, column: 32)
!716 = !DILocalVariable(name: "__ptr", scope: !717, file: !3, line: 193, type: !34)
!717 = distinct !DILexicalBlock(scope: !715, file: !3, line: 193, column: 32)
!718 = !DILocalVariable(name: "__dummy", scope: !719, file: !3, line: 195, type: !34)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 195, column: 2)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 195, column: 2)
!721 = distinct !DILexicalBlock(scope: !703, file: !3, line: 195, column: 2)
!722 = !DILocalVariable(name: "__dummy2", scope: !719, file: !3, line: 195, type: !34)
!723 = !DILocation(line: 188, column: 39, scope: !703)
!724 = !DILocation(line: 188, column: 48, scope: !703)
!725 = !DILocation(line: 190, column: 2, scope: !703)
!726 = !DILocation(line: 190, column: 16, scope: !703)
!727 = !DILocation(line: 192, column: 2, scope: !703)
!728 = !DILocation(line: 192, column: 2, scope: !711)
!729 = !DILocation(line: 192, column: 2, scope: !709)
!730 = !DILocation(line: 192, column: 2, scope: !710)
!731 = !DILocation(line: 193, column: 32, scope: !715)
!732 = !DILocation(line: 193, column: 32, scope: !714)
!733 = !DILocation(line: 193, column: 32, scope: !717)
!734 = !DILocation(line: 193, column: 32, scope: !703)
!735 = !DILocation(line: 194, column: 11, scope: !703)
!736 = !DILocation(line: 193, column: 2, scope: !703)
!737 = !DILocation(line: 195, column: 2, scope: !703)
!738 = !DILocation(line: 195, column: 2, scope: !721)
!739 = !DILocation(line: 195, column: 2, scope: !719)
!740 = !DILocation(line: 195, column: 2, scope: !720)
!741 = !DILocation(line: 195, column: 2, scope: !742)
!742 = distinct !DILexicalBlock(scope: !720, file: !3, line: 195, column: 2)
!743 = !DILocation(line: 196, column: 1, scope: !703)
!744 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !745, file: !745, line: 101, type: !746, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!745 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!746 = !DISubroutineType(types: !747)
!747 = !{!34}
!748 = !{!749}
!749 = !DILocalVariable(name: "flags", scope: !744, file: !745, line: 103, type: !34)
!750 = !DILocation(line: 103, column: 2, scope: !744)
!751 = !DILocation(line: 103, column: 16, scope: !744)
!752 = !DILocation(line: 103, column: 24, scope: !744)
!753 = !DILocation(line: 104, column: 2, scope: !744)
!754 = !DILocation(line: 105, column: 9, scope: !744)
!755 = !DILocation(line: 106, column: 1, scope: !744)
!756 = !DILocation(line: 105, column: 2, scope: !744)
!757 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !745, file: !745, line: 132, type: !601, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !758)
!758 = !{!759}
!759 = !DILocalVariable(name: "flags", arg: 1, scope: !757, file: !745, line: 132, type: !34)
!760 = !DILocation(line: 132, column: 66, scope: !757)
!761 = !DILocation(line: 134, column: 32, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !745, line: 134, column: 6)
!763 = !DILocation(line: 134, column: 7, scope: !762)
!764 = !DILocation(line: 134, column: 6, scope: !757)
!765 = !DILocation(line: 135, column: 3, scope: !762)
!766 = !DILocation(line: 136, column: 1, scope: !757)
!767 = distinct !DISubprogram(name: "default_send_IPI_mask_sequence_phys", scope: !3, file: !3, line: 198, type: !123, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!768 = !{!769, !770, !771, !772, !773, !777, !778, !784, !786, !790}
!769 = !DILocalVariable(name: "mask", arg: 1, scope: !767, file: !3, line: 198, type: !27)
!770 = !DILocalVariable(name: "vector", arg: 2, scope: !767, file: !3, line: 198, type: !38)
!771 = !DILocalVariable(name: "flags", scope: !767, file: !3, line: 200, type: !34)
!772 = !DILocalVariable(name: "cpu", scope: !767, file: !3, line: 201, type: !34)
!773 = !DILocalVariable(name: "__dummy", scope: !774, file: !3, line: 203, type: !34)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 203, column: 2)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 203, column: 2)
!776 = distinct !DILexicalBlock(scope: !767, file: !3, line: 203, column: 2)
!777 = !DILocalVariable(name: "__dummy2", scope: !774, file: !3, line: 203, type: !34)
!778 = !DILocalVariable(name: "__vpp_verify", scope: !779, file: !3, line: 205, type: !388)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 205, column: 33)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 205, column: 33)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 204, column: 26)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 204, column: 2)
!783 = distinct !DILexicalBlock(scope: !767, file: !3, line: 204, column: 2)
!784 = !DILocalVariable(name: "__ptr", scope: !785, file: !3, line: 205, type: !34)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 205, column: 33)
!786 = !DILocalVariable(name: "__dummy", scope: !787, file: !3, line: 208, type: !34)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 208, column: 2)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 208, column: 2)
!789 = distinct !DILexicalBlock(scope: !767, file: !3, line: 208, column: 2)
!790 = !DILocalVariable(name: "__dummy2", scope: !787, file: !3, line: 208, type: !34)
!791 = !DILocation(line: 198, column: 64, scope: !767)
!792 = !DILocation(line: 198, column: 74, scope: !767)
!793 = !DILocation(line: 200, column: 2, scope: !767)
!794 = !DILocation(line: 200, column: 16, scope: !767)
!795 = !DILocation(line: 201, column: 2, scope: !767)
!796 = !DILocation(line: 201, column: 16, scope: !767)
!797 = !DILocation(line: 203, column: 2, scope: !767)
!798 = !DILocation(line: 203, column: 2, scope: !776)
!799 = !DILocation(line: 203, column: 2, scope: !774)
!800 = !DILocation(line: 203, column: 2, scope: !775)
!801 = !DILocation(line: 204, column: 2, scope: !783)
!802 = !DILocation(line: 204, column: 2, scope: !782)
!803 = !DILocation(line: 205, column: 33, scope: !780)
!804 = !DILocation(line: 205, column: 33, scope: !779)
!805 = !DILocation(line: 205, column: 33, scope: !785)
!806 = !DILocation(line: 205, column: 33, scope: !781)
!807 = !DILocation(line: 206, column: 11, scope: !781)
!808 = !DILocation(line: 205, column: 3, scope: !781)
!809 = !DILocation(line: 207, column: 2, scope: !781)
!810 = distinct !{!810, !801, !811, !589, !590}
!811 = !DILocation(line: 207, column: 2, scope: !783)
!812 = !DILocation(line: 208, column: 2, scope: !767)
!813 = !DILocation(line: 208, column: 2, scope: !789)
!814 = !DILocation(line: 208, column: 2, scope: !787)
!815 = !DILocation(line: 208, column: 2, scope: !788)
!816 = !DILocation(line: 208, column: 2, scope: !817)
!817 = distinct !DILexicalBlock(scope: !788, file: !3, line: 208, column: 2)
!818 = !DILocation(line: 209, column: 1, scope: !767)
!819 = distinct !DISubprogram(name: "find_next_bit", scope: !820, file: !820, line: 54, type: !821, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !823)
!820 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!821 = !DISubroutineType(types: !822)
!822 = !{!34, !460, !34, !34}
!823 = !{!824, !825, !826, !827}
!824 = !DILocalVariable(name: "addr", arg: 1, scope: !819, file: !820, line: 54, type: !460)
!825 = !DILocalVariable(name: "size", arg: 2, scope: !819, file: !820, line: 54, type: !34)
!826 = !DILocalVariable(name: "offset", arg: 3, scope: !819, file: !820, line: 55, type: !34)
!827 = !DILocalVariable(name: "val", scope: !828, file: !820, line: 58, type: !34)
!828 = distinct !DILexicalBlock(scope: !829, file: !820, line: 57, column: 31)
!829 = distinct !DILexicalBlock(scope: !819, file: !820, line: 57, column: 6)
!830 = !DILocation(line: 54, column: 50, scope: !819)
!831 = !DILocation(line: 54, column: 70, scope: !819)
!832 = !DILocation(line: 55, column: 22, scope: !819)
!833 = !DILocation(line: 57, column: 6, scope: !829)
!834 = !DILocation(line: 57, column: 6, scope: !819)
!835 = !DILocation(line: 58, column: 3, scope: !828)
!836 = !DILocation(line: 58, column: 17, scope: !828)
!837 = !DILocation(line: 60, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !828, file: !820, line: 60, column: 7)
!839 = !DILocation(line: 60, column: 7, scope: !828)
!840 = !DILocation(line: 61, column: 11, scope: !838)
!841 = !DILocation(line: 61, column: 4, scope: !838)
!842 = !DILocation(line: 63, column: 10, scope: !828)
!843 = !DILocation(line: 63, column: 9, scope: !828)
!844 = !DILocation(line: 63, column: 17, scope: !828)
!845 = !DILocation(line: 63, column: 15, scope: !828)
!846 = !DILocation(line: 63, column: 7, scope: !828)
!847 = !DILocation(line: 64, column: 10, scope: !828)
!848 = !DILocation(line: 64, column: 16, scope: !828)
!849 = !DILocation(line: 64, column: 29, scope: !828)
!850 = !DILocation(line: 64, column: 3, scope: !828)
!851 = !DILocation(line: 65, column: 2, scope: !829)
!852 = !DILocation(line: 67, column: 24, scope: !819)
!853 = !DILocation(line: 67, column: 30, scope: !819)
!854 = !DILocation(line: 67, column: 36, scope: !819)
!855 = !DILocation(line: 67, column: 9, scope: !819)
!856 = !DILocation(line: 67, column: 2, scope: !819)
!857 = !DILocation(line: 68, column: 1, scope: !819)
!858 = distinct !DISubprogram(name: "default_send_IPI_mask_allbutself_phys", scope: !3, file: !3, line: 211, type: !123, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!859 = !{!860, !861, !862, !863, !864, !867, !869, !871, !872, !876, !877, !883, !885, !889}
!860 = !DILocalVariable(name: "mask", arg: 1, scope: !858, file: !3, line: 211, type: !27)
!861 = !DILocalVariable(name: "vector", arg: 2, scope: !858, file: !3, line: 212, type: !38)
!862 = !DILocalVariable(name: "cpu", scope: !858, file: !3, line: 214, type: !7)
!863 = !DILocalVariable(name: "this_cpu", scope: !858, file: !3, line: 214, type: !7)
!864 = !DILocalVariable(name: "pscr_ret__", scope: !865, file: !3, line: 214, type: !38)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 214, column: 31)
!866 = distinct !DILexicalBlock(scope: !858, file: !3, line: 214, column: 31)
!867 = !DILocalVariable(name: "__vpp_verify", scope: !868, file: !3, line: 214, type: !388)
!868 = distinct !DILexicalBlock(scope: !865, file: !3, line: 214, column: 31)
!869 = !DILocalVariable(name: "pfo_val__", scope: !870, file: !3, line: 214, type: !55)
!870 = distinct !DILexicalBlock(scope: !865, file: !3, line: 214, column: 31)
!871 = !DILocalVariable(name: "flags", scope: !858, file: !3, line: 215, type: !34)
!872 = !DILocalVariable(name: "__dummy", scope: !873, file: !3, line: 217, type: !34)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 217, column: 2)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 217, column: 2)
!875 = distinct !DILexicalBlock(scope: !858, file: !3, line: 217, column: 2)
!876 = !DILocalVariable(name: "__dummy2", scope: !873, file: !3, line: 217, type: !34)
!877 = !DILocalVariable(name: "__vpp_verify", scope: !878, file: !3, line: 221, type: !388)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 221, column: 33)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 221, column: 33)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 218, column: 26)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 218, column: 2)
!882 = distinct !DILexicalBlock(scope: !858, file: !3, line: 218, column: 2)
!883 = !DILocalVariable(name: "__ptr", scope: !884, file: !3, line: 221, type: !34)
!884 = distinct !DILexicalBlock(scope: !879, file: !3, line: 221, column: 33)
!885 = !DILocalVariable(name: "__dummy", scope: !886, file: !3, line: 224, type: !34)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 224, column: 2)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 224, column: 2)
!888 = distinct !DILexicalBlock(scope: !858, file: !3, line: 224, column: 2)
!889 = !DILocalVariable(name: "__dummy2", scope: !886, file: !3, line: 224, type: !34)
!890 = !DILocation(line: 211, column: 66, scope: !858)
!891 = !DILocation(line: 212, column: 12, scope: !858)
!892 = !DILocation(line: 214, column: 2, scope: !858)
!893 = !DILocation(line: 214, column: 15, scope: !858)
!894 = !DILocation(line: 214, column: 20, scope: !858)
!895 = !DILocation(line: 214, column: 31, scope: !866)
!896 = !DILocation(line: 214, column: 31, scope: !865)
!897 = !DILocation(line: 214, column: 31, scope: !868)
!898 = !DILocation(line: 214, column: 31, scope: !870)
!899 = !{i64 2152842379}
!900 = !DILocation(line: 215, column: 2, scope: !858)
!901 = !DILocation(line: 215, column: 16, scope: !858)
!902 = !DILocation(line: 217, column: 2, scope: !858)
!903 = !DILocation(line: 217, column: 2, scope: !875)
!904 = !DILocation(line: 217, column: 2, scope: !873)
!905 = !DILocation(line: 217, column: 2, scope: !874)
!906 = !DILocation(line: 218, column: 2, scope: !882)
!907 = !DILocation(line: 218, column: 2, scope: !881)
!908 = !DILocation(line: 219, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !880, file: !3, line: 219, column: 7)
!910 = !DILocation(line: 219, column: 14, scope: !909)
!911 = !DILocation(line: 219, column: 11, scope: !909)
!912 = !DILocation(line: 219, column: 7, scope: !880)
!913 = !DILocation(line: 220, column: 4, scope: !909)
!914 = !DILocation(line: 221, column: 33, scope: !879)
!915 = !DILocation(line: 221, column: 33, scope: !878)
!916 = !DILocation(line: 221, column: 33, scope: !884)
!917 = !DILocation(line: 221, column: 33, scope: !880)
!918 = !DILocation(line: 222, column: 12, scope: !880)
!919 = !DILocation(line: 221, column: 3, scope: !880)
!920 = !DILocation(line: 223, column: 2, scope: !880)
!921 = distinct !{!921, !906, !922, !589, !590}
!922 = !DILocation(line: 223, column: 2, scope: !882)
!923 = !DILocation(line: 224, column: 2, scope: !858)
!924 = !DILocation(line: 224, column: 2, scope: !888)
!925 = !DILocation(line: 224, column: 2, scope: !886)
!926 = !DILocation(line: 224, column: 2, scope: !887)
!927 = !DILocation(line: 224, column: 2, scope: !928)
!928 = distinct !DILexicalBlock(scope: !887, file: !3, line: 224, column: 2)
!929 = !DILocation(line: 225, column: 1, scope: !858)
!930 = distinct !DISubprogram(name: "default_send_IPI_single", scope: !3, file: !3, line: 230, type: !131, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!931 = !{!932, !933}
!932 = !DILocalVariable(name: "cpu", arg: 1, scope: !930, file: !3, line: 230, type: !38)
!933 = !DILocalVariable(name: "vector", arg: 2, scope: !930, file: !3, line: 230, type: !38)
!934 = !DILocation(line: 230, column: 34, scope: !930)
!935 = !DILocation(line: 230, column: 43, scope: !930)
!936 = !DILocation(line: 232, column: 23, scope: !930)
!937 = !DILocation(line: 232, column: 40, scope: !930)
!938 = !DILocation(line: 232, column: 2, scope: !930)
!939 = !DILocation(line: 233, column: 1, scope: !930)
!940 = distinct !DISubprogram(name: "default_send_IPI_allbutself", scope: !3, file: !3, line: 235, type: !116, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !941)
!941 = !{!942}
!942 = !DILocalVariable(name: "vector", arg: 1, scope: !940, file: !3, line: 235, type: !38)
!943 = !DILocation(line: 235, column: 38, scope: !940)
!944 = !DILocation(line: 237, column: 48, scope: !940)
!945 = !DILocation(line: 237, column: 2, scope: !940)
!946 = !DILocation(line: 238, column: 1, scope: !940)
!947 = distinct !DISubprogram(name: "__default_send_IPI_shortcut", scope: !3, file: !3, line: 152, type: !948, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !7, !38}
!950 = !{!951, !952}
!951 = !DILocalVariable(name: "shortcut", arg: 1, scope: !947, file: !3, line: 152, type: !7)
!952 = !DILocalVariable(name: "vector", arg: 2, scope: !947, file: !3, line: 152, type: !38)
!953 = !DILocation(line: 152, column: 54, scope: !947)
!954 = !DILocation(line: 152, column: 68, scope: !947)
!955 = !DILocation(line: 160, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !947, file: !3, line: 160, column: 6)
!957 = !DILocation(line: 160, column: 6, scope: !947)
!958 = !DILocation(line: 161, column: 3, scope: !956)
!959 = !DILocation(line: 163, column: 3, scope: !956)
!960 = !DILocation(line: 166, column: 48, scope: !947)
!961 = !DILocation(line: 166, column: 58, scope: !947)
!962 = !DILocation(line: 166, column: 34, scope: !947)
!963 = !DILocation(line: 166, column: 2, scope: !947)
!964 = !DILocation(line: 167, column: 1, scope: !947)
!965 = distinct !DISubprogram(name: "default_send_IPI_all", scope: !3, file: !3, line: 240, type: !116, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!966 = !{!967}
!967 = !DILocalVariable(name: "vector", arg: 1, scope: !965, file: !3, line: 240, type: !38)
!968 = !DILocation(line: 240, column: 31, scope: !965)
!969 = !DILocation(line: 242, column: 48, scope: !965)
!970 = !DILocation(line: 242, column: 2, scope: !965)
!971 = !DILocation(line: 243, column: 1, scope: !965)
!972 = distinct !DISubprogram(name: "default_send_IPI_self", scope: !3, file: !3, line: 245, type: !116, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!973 = !{!974}
!974 = !DILocalVariable(name: "vector", arg: 1, scope: !972, file: !3, line: 245, type: !38)
!975 = !DILocation(line: 245, column: 32, scope: !972)
!976 = !DILocation(line: 247, column: 46, scope: !972)
!977 = !DILocation(line: 247, column: 2, scope: !972)
!978 = !DILocation(line: 248, column: 1, scope: !972)
!979 = !DISubprogram(name: "get_option", scope: !980, file: !980, line: 207, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!981 = !DISubroutineType(types: !982)
!982 = !{!38, !983, !37}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!984 = !DISubprogram(name: "_printk", scope: !985, file: !985, line: 153, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!986 = !DISubroutineType(types: !987)
!987 = !{!38, !64, null}
!988 = distinct !DISubprogram(name: "raw_atomic_read", scope: !989, file: !989, line: 442, type: !990, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!989 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!990 = !DISubroutineType(types: !991)
!991 = !{!38, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!994 = !{!995}
!995 = !DILocalVariable(name: "v", arg: 1, scope: !988, file: !989, line: 442, type: !992)
!996 = !DILocation(line: 442, column: 33, scope: !988)
!997 = !DILocation(line: 444, column: 26, scope: !988)
!998 = !DILocation(line: 444, column: 9, scope: !988)
!999 = !DILocation(line: 444, column: 2, scope: !988)
!1000 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1001, file: !1001, line: 17, type: !990, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1001 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "v", arg: 1, scope: !1000, file: !1001, line: 17, type: !992)
!1004 = !DILocation(line: 17, column: 61, scope: !1000)
!1005 = !DILocation(line: 23, column: 9, scope: !1000)
!1006 = !DILocation(line: 23, column: 2, scope: !1000)
!1007 = distinct !DISubprogram(name: "bitmap_equal", scope: !1008, file: !1008, line: 386, type: !1009, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1011)
!1008 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!233, !460, !460, !7}
!1011 = !{!1012, !1013, !1014}
!1012 = !DILocalVariable(name: "src1", arg: 1, scope: !1007, file: !1008, line: 386, type: !460)
!1013 = !DILocalVariable(name: "src2", arg: 2, scope: !1007, file: !1008, line: 387, type: !460)
!1014 = !DILocalVariable(name: "nbits", arg: 3, scope: !1007, file: !1008, line: 387, type: !7)
!1015 = !DILocation(line: 386, column: 54, scope: !1007)
!1016 = !DILocation(line: 387, column: 26, scope: !1007)
!1017 = !DILocation(line: 387, column: 45, scope: !1007)
!1018 = !DILocation(line: 389, column: 6, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1007, file: !1008, line: 389, column: 6)
!1020 = !DILocation(line: 389, column: 6, scope: !1007)
!1021 = !DILocation(line: 390, column: 14, scope: !1019)
!1022 = !DILocation(line: 390, column: 13, scope: !1019)
!1023 = !DILocation(line: 390, column: 22, scope: !1019)
!1024 = !DILocation(line: 390, column: 21, scope: !1019)
!1025 = !DILocation(line: 390, column: 19, scope: !1019)
!1026 = !DILocation(line: 390, column: 30, scope: !1019)
!1027 = !DILocation(line: 390, column: 28, scope: !1019)
!1028 = !DILocation(line: 390, column: 10, scope: !1019)
!1029 = !DILocation(line: 390, column: 3, scope: !1019)
!1030 = !DILocation(line: 391, column: 27, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1007, file: !1008, line: 391, column: 6)
!1032 = !DILocation(line: 391, column: 33, scope: !1031)
!1033 = !DILocation(line: 391, column: 6, scope: !1031)
!1034 = !DILocation(line: 391, column: 52, scope: !1031)
!1035 = !DILocation(line: 392, column: 6, scope: !1031)
!1036 = !DILocation(line: 391, column: 6, scope: !1007)
!1037 = !DILocation(line: 393, column: 18, scope: !1031)
!1038 = !DILocation(line: 393, column: 24, scope: !1031)
!1039 = !DILocation(line: 393, column: 30, scope: !1031)
!1040 = !DILocation(line: 393, column: 36, scope: !1031)
!1041 = !DILocation(line: 393, column: 11, scope: !1031)
!1042 = !DILocation(line: 393, column: 10, scope: !1031)
!1043 = !DILocation(line: 393, column: 3, scope: !1031)
!1044 = !DILocation(line: 394, column: 24, scope: !1007)
!1045 = !DILocation(line: 394, column: 30, scope: !1007)
!1046 = !DILocation(line: 394, column: 36, scope: !1007)
!1047 = !DILocation(line: 394, column: 9, scope: !1007)
!1048 = !DILocation(line: 394, column: 2, scope: !1007)
!1049 = !DILocation(line: 395, column: 1, scope: !1007)
!1050 = !DISubprogram(name: "memcmp", scope: !1051, file: !1051, line: 196, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!38, !388, !388, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1055, line: 72, baseType: !1056)
!1055 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1055, line: 16, baseType: !34)
!1057 = !DISubprogram(name: "__bitmap_equal", scope: !1008, file: !1008, line: 142, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = distinct !DISubprogram(name: "bitmap_or_equal", scope: !1008, file: !1008, line: 406, type: !1059, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !460, !460, !460, !7}
!1061 = !{!1062, !1063, !1064, !1065}
!1062 = !DILocalVariable(name: "src1", arg: 1, scope: !1058, file: !1008, line: 406, type: !460)
!1063 = !DILocalVariable(name: "src2", arg: 2, scope: !1058, file: !1008, line: 407, type: !460)
!1064 = !DILocalVariable(name: "src3", arg: 3, scope: !1058, file: !1008, line: 408, type: !460)
!1065 = !DILocalVariable(name: "nbits", arg: 4, scope: !1058, file: !1008, line: 409, type: !7)
!1066 = !DILocation(line: 406, column: 57, scope: !1058)
!1067 = !DILocation(line: 407, column: 29, scope: !1058)
!1068 = !DILocation(line: 408, column: 29, scope: !1058)
!1069 = !DILocation(line: 409, column: 21, scope: !1058)
!1070 = !DILocation(line: 411, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1058, file: !1008, line: 411, column: 6)
!1072 = !DILocation(line: 411, column: 6, scope: !1058)
!1073 = !DILocation(line: 412, column: 28, scope: !1071)
!1074 = !DILocation(line: 412, column: 34, scope: !1071)
!1075 = !DILocation(line: 412, column: 40, scope: !1071)
!1076 = !DILocation(line: 412, column: 46, scope: !1071)
!1077 = !DILocation(line: 412, column: 10, scope: !1071)
!1078 = !DILocation(line: 412, column: 3, scope: !1071)
!1079 = !DILocation(line: 414, column: 14, scope: !1058)
!1080 = !DILocation(line: 414, column: 13, scope: !1058)
!1081 = !DILocation(line: 414, column: 22, scope: !1058)
!1082 = !DILocation(line: 414, column: 21, scope: !1058)
!1083 = !DILocation(line: 414, column: 19, scope: !1058)
!1084 = !DILocation(line: 414, column: 31, scope: !1058)
!1085 = !DILocation(line: 414, column: 30, scope: !1058)
!1086 = !DILocation(line: 414, column: 28, scope: !1058)
!1087 = !DILocation(line: 414, column: 39, scope: !1058)
!1088 = !DILocation(line: 414, column: 37, scope: !1058)
!1089 = !DILocation(line: 414, column: 9, scope: !1058)
!1090 = !DILocation(line: 414, column: 2, scope: !1058)
!1091 = !DILocation(line: 415, column: 1, scope: !1058)
!1092 = !DISubprogram(name: "__bitmap_or_equal", scope: !1008, file: !1008, line: 144, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = distinct !DISubprogram(name: "_test_bit", scope: !1094, file: !1094, line: 139, type: !1095, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1100)
!1094 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!233, !34, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!1100 = !{!1101, !1102}
!1101 = !DILocalVariable(name: "nr", arg: 1, scope: !1093, file: !1094, line: 139, type: !34)
!1102 = !DILocalVariable(name: "addr", arg: 2, scope: !1093, file: !1094, line: 139, type: !1097)
!1103 = !DILocation(line: 139, column: 25, scope: !1093)
!1104 = !DILocation(line: 139, column: 59, scope: !1093)
!1105 = !DILocation(line: 141, column: 25, scope: !1093)
!1106 = !DILocation(line: 141, column: 32, scope: !1093)
!1107 = !DILocation(line: 141, column: 30, scope: !1093)
!1108 = !DILocation(line: 141, column: 2, scope: !1093)
!1109 = !DILocation(line: 142, column: 23, scope: !1093)
!1110 = !DILocation(line: 142, column: 27, scope: !1093)
!1111 = !DILocation(line: 142, column: 9, scope: !1093)
!1112 = !DILocation(line: 142, column: 2, scope: !1093)
!1113 = distinct !DISubprogram(name: "cpumask_check", scope: !30, file: !30, line: 148, type: !1114, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!7, !7}
!1116 = !{!1117}
!1117 = !DILocalVariable(name: "cpu", arg: 1, scope: !1113, file: !30, line: 148, type: !7)
!1118 = !DILocation(line: 148, column: 64, scope: !1113)
!1119 = !DILocation(line: 150, column: 20, scope: !1113)
!1120 = !DILocation(line: 150, column: 2, scope: !1113)
!1121 = !DILocation(line: 151, column: 9, scope: !1113)
!1122 = !DILocation(line: 151, column: 2, scope: !1113)
!1123 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1124, file: !1124, line: 66, type: !1125, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1131)
!1124 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1127, !1130}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 61, baseType: !1054)
!1131 = !{!1132, !1133}
!1132 = !DILocalVariable(name: "v", arg: 1, scope: !1123, file: !1124, line: 66, type: !1127)
!1133 = !DILocalVariable(name: "size", arg: 2, scope: !1123, file: !1124, line: 66, type: !1130)
!1134 = !DILocation(line: 66, column: 73, scope: !1123)
!1135 = !DILocation(line: 66, column: 83, scope: !1123)
!1136 = !DILocation(line: 68, column: 19, scope: !1123)
!1137 = !DILocation(line: 68, column: 22, scope: !1123)
!1138 = !DILocation(line: 68, column: 2, scope: !1123)
!1139 = !DILocation(line: 69, column: 2, scope: !1123)
!1140 = !DILocation(line: 70, column: 1, scope: !1123)
!1141 = distinct !DISubprogram(name: "arch_test_bit", scope: !1142, file: !1142, line: 237, type: !1095, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1143 = !{!1144, !1145}
!1144 = !DILocalVariable(name: "nr", arg: 1, scope: !1141, file: !1142, line: 237, type: !34)
!1145 = !DILocalVariable(name: "addr", arg: 2, scope: !1141, file: !1142, line: 237, type: !1097)
!1146 = !DILocation(line: 237, column: 29, scope: !1141)
!1147 = !DILocation(line: 237, column: 63, scope: !1141)
!1148 = !DILocation(line: 239, column: 30, scope: !1141)
!1149 = !DILocation(line: 239, column: 9, scope: !1141)
!1150 = !DILocation(line: 239, column: 54, scope: !1141)
!1151 = !DILocation(line: 239, column: 58, scope: !1141)
!1152 = !DILocation(line: 239, column: 36, scope: !1141)
!1153 = !DILocation(line: 240, column: 26, scope: !1141)
!1154 = !DILocation(line: 240, column: 30, scope: !1141)
!1155 = !DILocation(line: 240, column: 8, scope: !1141)
!1156 = !DILocation(line: 239, column: 2, scope: !1141)
!1157 = distinct !DISubprogram(name: "kasan_check_read", scope: !1158, file: !1158, line: 40, type: !1159, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1161)
!1158 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!233, !1127, !7}
!1161 = !{!1162, !1163}
!1162 = !DILocalVariable(name: "p", arg: 1, scope: !1157, file: !1158, line: 40, type: !1127)
!1163 = !DILocalVariable(name: "size", arg: 2, scope: !1157, file: !1158, line: 40, type: !7)
!1164 = !DILocation(line: 40, column: 58, scope: !1157)
!1165 = !DILocation(line: 40, column: 74, scope: !1157)
!1166 = !DILocation(line: 42, column: 2, scope: !1157)
!1167 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1168, file: !1168, line: 229, type: !1169, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1168 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1127, !1130, !38}
!1171 = !{!1172, !1173, !1174}
!1172 = !DILocalVariable(name: "ptr", arg: 1, scope: !1167, file: !1168, line: 229, type: !1127)
!1173 = !DILocalVariable(name: "size", arg: 2, scope: !1167, file: !1168, line: 229, type: !1130)
!1174 = !DILocalVariable(name: "type", arg: 3, scope: !1167, file: !1168, line: 230, type: !38)
!1175 = !DILocation(line: 229, column: 60, scope: !1167)
!1176 = !DILocation(line: 229, column: 72, scope: !1167)
!1177 = !DILocation(line: 230, column: 15, scope: !1167)
!1178 = !DILocation(line: 230, column: 23, scope: !1167)
!1179 = distinct !DISubprogram(name: "constant_test_bit", scope: !1142, file: !1142, line: 204, type: !1180, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!233, !179, !1097}
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "nr", arg: 1, scope: !1179, file: !1142, line: 204, type: !179)
!1184 = !DILocalVariable(name: "addr", arg: 2, scope: !1179, file: !1142, line: 204, type: !1097)
!1185 = !DILocation(line: 204, column: 52, scope: !1179)
!1186 = !DILocation(line: 204, column: 86, scope: !1179)
!1187 = !DILocation(line: 206, column: 19, scope: !1179)
!1188 = !DILocation(line: 206, column: 22, scope: !1179)
!1189 = !DILocation(line: 206, column: 15, scope: !1179)
!1190 = !DILocation(line: 207, column: 4, scope: !1179)
!1191 = !DILocation(line: 207, column: 9, scope: !1179)
!1192 = !DILocation(line: 207, column: 12, scope: !1179)
!1193 = !DILocation(line: 206, column: 44, scope: !1179)
!1194 = !DILocation(line: 207, column: 37, scope: !1179)
!1195 = !DILocation(line: 206, column: 2, scope: !1179)
!1196 = distinct !DISubprogram(name: "variable_test_bit", scope: !1142, file: !1142, line: 224, type: !1180, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1197 = !{!1198, !1199, !1200}
!1198 = !DILocalVariable(name: "nr", arg: 1, scope: !1196, file: !1142, line: 224, type: !179)
!1199 = !DILocalVariable(name: "addr", arg: 2, scope: !1196, file: !1142, line: 224, type: !1097)
!1200 = !DILocalVariable(name: "oldbit", scope: !1196, file: !1142, line: 226, type: !233)
!1201 = !DILocation(line: 224, column: 52, scope: !1196)
!1202 = !DILocation(line: 224, column: 86, scope: !1196)
!1203 = !DILocation(line: 226, column: 2, scope: !1196)
!1204 = !DILocation(line: 226, column: 7, scope: !1196)
!1205 = !DILocation(line: 231, column: 33, scope: !1196)
!1206 = !DILocation(line: 231, column: 46, scope: !1196)
!1207 = !DILocation(line: 228, column: 2, scope: !1196)
!1208 = !{i64 2147841906, i64 2147841980}
!1209 = !DILocation(line: 233, column: 9, scope: !1196)
!1210 = !DILocation(line: 234, column: 1, scope: !1196)
!1211 = !DILocation(line: 233, column: 2, scope: !1196)
!1212 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !30, file: !30, line: 140, type: !1213, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !7, !7}
!1215 = !{!1216, !1217}
!1216 = !DILocalVariable(name: "cpu", arg: 1, scope: !1212, file: !30, line: 140, type: !7)
!1217 = !DILocalVariable(name: "bits", arg: 2, scope: !1212, file: !30, line: 140, type: !7)
!1218 = !DILocation(line: 140, column: 60, scope: !1212)
!1219 = !DILocation(line: 140, column: 78, scope: !1212)
!1220 = !DILocation(line: 145, column: 1, scope: !1212)
!1221 = distinct !DISubprogram(name: "readl", scope: !1222, file: !1222, line: 58, type: !1223, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1222 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!7, !1127}
!1225 = !{!1226, !1227}
!1226 = !DILocalVariable(name: "addr", arg: 1, scope: !1221, file: !1222, line: 58, type: !1127)
!1227 = !DILocalVariable(name: "ret", scope: !1221, file: !1222, line: 58, type: !7)
!1228 = !DILocation(line: 58, column: 1, scope: !1221)
!1229 = !{i64 2152669042}
!1230 = distinct !DISubprogram(name: "fix_to_virt", scope: !1231, file: !1231, line: 30, type: !1232, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1231 = !DIFile(filename: "./include/asm-generic/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd8c6683336efdf1b0dfbdd9b73a00ed")
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!34, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "idx", arg: 1, scope: !1230, file: !1231, line: 30, type: !1234)
!1237 = !DILocation(line: 30, column: 69, scope: !1230)
!1238 = !DILocation(line: 32, column: 2, scope: !1230)
!1239 = !DILocation(line: 32, column: 2, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !1231, line: 32, column: 2)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !1231, line: 32, column: 2)
!1242 = !DILocation(line: 32, column: 2, scope: !1241)
!1243 = !{i32 -2142324808}
!1244 = !DILocation(line: 33, column: 9, scope: !1230)
!1245 = !DILocation(line: 33, column: 2, scope: !1230)
!1246 = !DISubprogram(name: "__compiletime_assert_203", scope: !1231, file: !1231, line: 32, type: !209, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1247 = distinct !DISubprogram(name: "rep_nop", scope: !622, file: !622, line: 11, type: !209, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1248 = !DILocation(line: 13, column: 2, scope: !1247)
!1249 = !{i64 2065092}
!1250 = !DILocation(line: 14, column: 1, scope: !1247)
!1251 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !745, file: !745, line: 65, type: !746, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1252 = !DILocation(line: 67, column: 9, scope: !1251)
!1253 = !DILocation(line: 67, column: 2, scope: !1251)
!1254 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !745, file: !745, line: 70, type: !209, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1255 = !DILocation(line: 72, column: 2, scope: !1254)
!1256 = !DILocation(line: 73, column: 1, scope: !1254)
!1257 = distinct !DISubprogram(name: "native_save_fl", scope: !745, file: !745, line: 17, type: !746, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1258)
!1258 = !{!1259}
!1259 = !DILocalVariable(name: "flags", scope: !1257, file: !745, line: 19, type: !34)
!1260 = !DILocation(line: 19, column: 2, scope: !1257)
!1261 = !DILocation(line: 19, column: 16, scope: !1257)
!1262 = !DILocation(line: 26, column: 2, scope: !1257)
!1263 = !{i64 1661934, i64 1661955}
!1264 = !DILocation(line: 32, column: 9, scope: !1257)
!1265 = !DILocation(line: 33, column: 1, scope: !1257)
!1266 = !DILocation(line: 32, column: 2, scope: !1257)
!1267 = distinct !DISubprogram(name: "native_irq_disable", scope: !745, file: !745, line: 35, type: !209, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1268 = !DILocation(line: 37, column: 2, scope: !1267)
!1269 = !{i64 1662138}
!1270 = !DILocation(line: 38, column: 1, scope: !1267)
!1271 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !745, file: !745, line: 120, type: !1272, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!38, !34}
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "flags", arg: 1, scope: !1271, file: !745, line: 120, type: !34)
!1276 = !DILocation(line: 120, column: 67, scope: !1271)
!1277 = !DILocation(line: 122, column: 11, scope: !1271)
!1278 = !DILocation(line: 122, column: 17, scope: !1271)
!1279 = !DILocation(line: 122, column: 9, scope: !1271)
!1280 = !DILocation(line: 122, column: 2, scope: !1271)
!1281 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !745, file: !745, line: 75, type: !209, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1282 = !DILocation(line: 77, column: 2, scope: !1281)
!1283 = !DILocation(line: 78, column: 1, scope: !1281)
!1284 = distinct !DISubprogram(name: "native_irq_enable", scope: !745, file: !745, line: 40, type: !209, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1285 = !DILocation(line: 42, column: 2, scope: !1284)
!1286 = !{i64 1662230}
!1287 = !DILocation(line: 43, column: 1, scope: !1284)
!1288 = distinct !DISubprogram(name: "variable__ffs", scope: !1142, file: !1142, line: 250, type: !1289, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!34, !34}
!1291 = !{!1292}
!1292 = !DILocalVariable(name: "word", arg: 1, scope: !1288, file: !1142, line: 250, type: !34)
!1293 = !DILocation(line: 250, column: 66, scope: !1288)
!1294 = !DILocation(line: 254, column: 11, scope: !1288)
!1295 = !DILocation(line: 252, column: 2, scope: !1288)
!1296 = !{i64 336981}
!1297 = !DILocation(line: 255, column: 9, scope: !1288)
!1298 = !DILocation(line: 255, column: 2, scope: !1288)
!1299 = !DISubprogram(name: "_find_next_bit", scope: !820, file: !820, line: 11, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
