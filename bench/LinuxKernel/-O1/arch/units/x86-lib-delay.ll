; ModuleID = 'arch/x86/lib/delay.c'
source_filename = "arch/x86/lib/delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___delay: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __delay ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___const_udelay: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __const_udelay ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___udelay: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __udelay ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ndelay: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __ndelay ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.tss_struct = type { %struct.x86_hw_tss, %struct.x86_io_bitmap, [3960 x i8] }
%struct.x86_hw_tss = type <{ i32, i64, i64, i64, i64, [7 x i64], i32, i32, i16, i16 }>
%struct.x86_io_bitmap = type { i64, i32, [1025 x i64], [1025 x i64] }

@delay_fn = internal global ptr @delay_loop, section ".data..ro_after_init", align 8, !dbg !0
@delay_halt_fn = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !60
@__UNIQUE_ID___addressable___delay152 = internal global ptr @__delay, section ".discard.addressable", align 8, !dbg !52
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@loops_per_jiffy = external dso_local global i64, align 8
@__UNIQUE_ID___addressable___const_udelay153 = internal global ptr @__const_udelay, section ".discard.addressable", align 8, !dbg !54
@__UNIQUE_ID___addressable___udelay154 = internal global ptr @__udelay, section ".discard.addressable", align 8, !dbg !56
@__UNIQUE_ID___addressable___ndelay155 = internal global ptr @__ndelay, section ".discard.addressable", align 8, !dbg !58
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !65
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@delay_tsc.__UNIQUE_ID___addressable___SCK__preempt_schedule148 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !71
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@delay_tsc.__UNIQUE_ID___addressable___SCK__preempt_schedule149 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !109
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@cpu_tss_rw = external dso_local global %struct.tss_struct, section ".data..percpu..page_aligned", align 4096
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___delay152, ptr @__UNIQUE_ID___addressable___const_udelay153, ptr @__UNIQUE_ID___addressable___udelay154, ptr @__UNIQUE_ID___addressable___ndelay155, ptr @delay_tsc.__UNIQUE_ID___addressable___SCK__preempt_schedule148, ptr @delay_tsc.__UNIQUE_ID___addressable___SCK__preempt_schedule149], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @use_tsc_delay() #0 section ".init.text" align 16 !dbg !122 {
entry:
  %0 = load ptr, ptr @delay_fn, align 8, !dbg !125
  %cmp = icmp eq ptr %0, @delay_loop, !dbg !127
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  store ptr @delay_tsc, ptr @delay_fn, align 8, !dbg !129
  br label %if.end, !dbg !130

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !131
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delay_loop(i64 noundef %__loops) #1 align 16 !dbg !132 {
entry:
  %__loops.addr = alloca i64, align 8
  %loops = alloca i64, align 8
  store i64 %__loops, ptr %__loops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__loops.addr, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %loops) #12, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %loops, metadata !135, metadata !DIExpression()), !dbg !138
  %0 = load i64, ptr %__loops.addr, align 8, !dbg !139
  store i64 %0, ptr %loops, align 8, !dbg !138
  %1 = load i64, ptr %loops, align 8, !dbg !140
  %2 = call i64 asm sideeffect "\09test $0,$0\09\0A\09jz 3f\09\09\0A\09jmp 1f\09\09\0A.align 16\09\09\0A1:\09jmp 2f\09\09\0A.align 16\09\09\0A2:\09dec $0\09\09\0A\09jnz 2b\09\09\0A3:\09dec $0\09\09\0A", "={ax},0,~{dirflag},~{fpsr},~{flags}"(i64 %1) #12, !dbg !140, !srcloc !141
  store i64 %2, ptr %loops, align 8, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %loops) #12, !dbg !142
  ret void, !dbg !142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delay_tsc(i64 noundef %cycles) #1 align 16 !dbg !73 {
entry:
  %cycles.addr = alloca i64, align 8
  %bclock = alloca i64, align 8
  %now = alloca i64, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %pscr_ret__24 = alloca i32, align 4
  %__vpp_verify26 = alloca ptr, align 8
  %pfo_val__29 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %pscr_ret__47 = alloca i32, align 4
  %__vpp_verify49 = alloca ptr, align 8
  %pfo_val__52 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %tmp56 = alloca i32, align 4
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !77, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 8, ptr %bclock) #12, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %bclock, metadata !78, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #12, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %now, metadata !79, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !80, metadata !DIExpression()), !dbg !148
  br label %do.body, !dbg !149

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !150
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !150, !srcloc !152
  br label %do.cond, !dbg !150

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !150

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !154
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !81, metadata !DIExpression()), !dbg !154
  br label %do.body1, !dbg !154

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !84, metadata !DIExpression()), !dbg !155
  store ptr null, ptr %__vpp_verify, align 8, !dbg !155
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !155
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !154
  br label %do.cond2, !dbg !155

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !155

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !88, metadata !DIExpression()), !dbg !156
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !156, !srcloc !157
  store i32 %1, ptr %pfo_val__, align 4, !dbg !156
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !156
  %conv = zext i32 %2 to i64, !dbg !156
  %conv5 = trunc i64 %conv to i32, !dbg !156
  store i32 %conv5, ptr %tmp4, align 4, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !154
  %3 = load i32, ptr %tmp4, align 4, !dbg !156
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !154
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !154
  store i32 %4, ptr %tmp6, align 4, !dbg !154
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !153
  %5 = load i32, ptr %tmp6, align 4, !dbg !154
  store i32 %5, ptr %tmp, align 4, !dbg !153
  %6 = load i32, ptr %tmp, align 4, !dbg !153
  store i32 %6, ptr %cpu, align 4, !dbg !158
  %call = call i64 @rdtsc_ordered() #13, !dbg !159
  store i64 %call, ptr %bclock, align 8, !dbg !160
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %if.end58, %do.end3
  %call7 = call i64 @rdtsc_ordered() #13, !dbg !162
  store i64 %call7, ptr %now, align 8, !dbg !163
  %7 = load i64, ptr %now, align 8, !dbg !164
  %8 = load i64, ptr %bclock, align 8, !dbg !166
  %sub = sub i64 %7, %8, !dbg !167
  %9 = load i64, ptr %cycles.addr, align 8, !dbg !168
  %cmp = icmp uge i64 %sub, %9, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !170

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !171

if.end:                                           ; preds = %for.cond
  br label %do.body9, !dbg !172

do.body9:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !173, !srcloc !175
  %call10 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !176
  %lnot = xor i1 %call10, true, !dbg !176
  %lnot11 = xor i1 %lnot, true, !dbg !176
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !176
  %conv12 = sext i32 %lnot.ext to i64, !dbg !176
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !176
  %tobool = icmp ne i64 %expval, 0, !dbg !176
  br i1 %tobool, label %if.then13, label %if.end17, !dbg !173

if.then13:                                        ; preds = %do.body9
  br label %do.body14, !dbg !176

do.body14:                                        ; preds = %if.then13
  %10 = call i64 @llvm.read_register.i64(metadata !112), !dbg !178
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #12, !dbg !178, !srcloc !180
  call void @llvm.write_register.i64(metadata !112, i64 %11), !dbg !178
  br label %do.cond15, !dbg !178

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !178

do.end16:                                         ; preds = %do.cond15
  br label %if.end17, !dbg !178

if.end17:                                         ; preds = %do.end16, %do.body9
  br label %do.cond18, !dbg !173

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !173

do.end19:                                         ; preds = %do.cond18
  call void @rep_nop() #13, !dbg !181
  br label %do.body20, !dbg !182

do.body20:                                        ; preds = %do.end19
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !183
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !183, !srcloc !185
  br label %do.cond21, !dbg !183

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !183

do.end22:                                         ; preds = %do.cond21
  %12 = load i32, ptr %cpu, align 4, !dbg !186
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !187
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__24) #12, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__24, metadata !90, metadata !DIExpression()), !dbg !188
  br label %do.body25, !dbg !188

do.body25:                                        ; preds = %do.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify26) #12, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify26, metadata !97, metadata !DIExpression()), !dbg !189
  store ptr null, ptr %__vpp_verify26, align 8, !dbg !189
  %13 = load ptr, ptr %__vpp_verify26, align 8, !dbg !189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify26) #12, !dbg !188
  br label %do.cond27, !dbg !189

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !189

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__29) #12, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %pfo_val__29, metadata !99, metadata !DIExpression()), !dbg !190
  %14 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !190, !srcloc !191
  store i32 %14, ptr %pfo_val__29, align 4, !dbg !190
  %15 = load i32, ptr %pfo_val__29, align 4, !dbg !190
  %conv31 = zext i32 %15 to i64, !dbg !190
  %conv32 = trunc i64 %conv31 to i32, !dbg !190
  store i32 %conv32, ptr %tmp30, align 4, !dbg !190
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__29) #12, !dbg !188
  %16 = load i32, ptr %tmp30, align 4, !dbg !190
  store i32 %16, ptr %pscr_ret__24, align 4, !dbg !188
  %17 = load i32, ptr %pscr_ret__24, align 4, !dbg !188
  store i32 %17, ptr %tmp33, align 4, !dbg !188
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__24) #12, !dbg !187
  %18 = load i32, ptr %tmp33, align 4, !dbg !188
  store i32 %18, ptr %tmp23, align 4, !dbg !187
  %19 = load i32, ptr %tmp23, align 4, !dbg !187
  %cmp34 = icmp ne i32 %12, %19, !dbg !186
  %lnot36 = xor i1 %cmp34, true, !dbg !186
  %lnot38 = xor i1 %lnot36, true, !dbg !186
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !186
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !186
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !186
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !186
  br i1 %tobool42, label %if.then43, label %if.end58, !dbg !192

if.then43:                                        ; preds = %do.end28
  %20 = load i64, ptr %now, align 8, !dbg !193
  %21 = load i64, ptr %bclock, align 8, !dbg !194
  %sub44 = sub i64 %20, %21, !dbg !195
  %22 = load i64, ptr %cycles.addr, align 8, !dbg !196
  %sub45 = sub i64 %22, %sub44, !dbg !196
  store i64 %sub45, ptr %cycles.addr, align 8, !dbg !196
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !197
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__47) #12, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__47, metadata !101, metadata !DIExpression()), !dbg !198
  br label %do.body48, !dbg !198

do.body48:                                        ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify49) #12, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify49, metadata !105, metadata !DIExpression()), !dbg !199
  store ptr null, ptr %__vpp_verify49, align 8, !dbg !199
  %23 = load ptr, ptr %__vpp_verify49, align 8, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify49) #12, !dbg !198
  br label %do.cond50, !dbg !199

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !199

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__52) #12, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %pfo_val__52, metadata !107, metadata !DIExpression()), !dbg !200
  %24 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !200, !srcloc !201
  store i32 %24, ptr %pfo_val__52, align 4, !dbg !200
  %25 = load i32, ptr %pfo_val__52, align 4, !dbg !200
  %conv54 = zext i32 %25 to i64, !dbg !200
  %conv55 = trunc i64 %conv54 to i32, !dbg !200
  store i32 %conv55, ptr %tmp53, align 4, !dbg !200
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__52) #12, !dbg !198
  %26 = load i32, ptr %tmp53, align 4, !dbg !200
  store i32 %26, ptr %pscr_ret__47, align 4, !dbg !198
  %27 = load i32, ptr %pscr_ret__47, align 4, !dbg !198
  store i32 %27, ptr %tmp56, align 4, !dbg !198
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__47) #12, !dbg !197
  %28 = load i32, ptr %tmp56, align 4, !dbg !198
  store i32 %28, ptr %tmp46, align 4, !dbg !197
  %29 = load i32, ptr %tmp46, align 4, !dbg !197
  store i32 %29, ptr %cpu, align 4, !dbg !202
  %call57 = call i64 @rdtsc_ordered() #13, !dbg !203
  store i64 %call57, ptr %bclock, align 8, !dbg !204
  br label %if.end58, !dbg !205

if.end58:                                         ; preds = %do.end51, %do.end28
  br label %for.cond, !dbg !206, !llvm.loop !207

for.end:                                          ; preds = %if.then
  br label %do.body59, !dbg !211

do.body59:                                        ; preds = %for.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !212, !srcloc !214
  %call60 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !215
  %lnot61 = xor i1 %call60, true, !dbg !215
  %lnot63 = xor i1 %lnot61, true, !dbg !215
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !215
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !215
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !215
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !215
  br i1 %tobool67, label %if.then68, label %if.end72, !dbg !212

if.then68:                                        ; preds = %do.body59
  br label %do.body69, !dbg !215

do.body69:                                        ; preds = %if.then68
  %30 = call i64 @llvm.read_register.i64(metadata !112), !dbg !217
  %31 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %30) #12, !dbg !217, !srcloc !219
  call void @llvm.write_register.i64(metadata !112, i64 %31), !dbg !217
  br label %do.cond70, !dbg !217

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !217

do.end71:                                         ; preds = %do.cond70
  br label %if.end72, !dbg !217

if.end72:                                         ; preds = %do.end71, %do.body59
  br label %do.cond73, !dbg !212

do.cond73:                                        ; preds = %if.end72
  br label %do.end74, !dbg !212

do.end74:                                         ; preds = %do.cond73
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #12, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr %bclock) #12, !dbg !220
  ret void, !dbg !220
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @use_tpause_delay() #0 section ".init.text" align 16 !dbg !221 {
entry:
  store ptr @delay_halt_tpause, ptr @delay_halt_fn, align 8, !dbg !222
  store ptr @delay_halt, ptr @delay_fn, align 8, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delay_halt_tpause(i64 noundef %start, i64 noundef %cycles) #1 align 16 !dbg !225 {
entry:
  %start.addr = alloca i64, align 8
  %cycles.addr = alloca i64, align 8
  %until = alloca i64, align 8
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !227, metadata !DIExpression()), !dbg !232
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !228, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %until) #12, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %until, metadata !229, metadata !DIExpression()), !dbg !235
  %0 = load i64, ptr %start.addr, align 8, !dbg !236
  %1 = load i64, ptr %cycles.addr, align 8, !dbg !237
  %add = add i64 %0, %1, !dbg !238
  store i64 %add, ptr %until, align 8, !dbg !235
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #12, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !230, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #12, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !231, metadata !DIExpression()), !dbg !241
  %2 = load i64, ptr %until, align 8, !dbg !242
  %and = and i64 %2, 4294967295, !dbg !242
  %conv = trunc i64 %and to i32, !dbg !242
  store i32 %conv, ptr %eax, align 4, !dbg !243
  %3 = load i64, ptr %until, align 8, !dbg !244
  %shr = lshr i64 %3, 16, !dbg !244
  %shr1 = lshr i64 %shr, 16, !dbg !244
  %conv2 = trunc i64 %shr1 to i32, !dbg !244
  store i32 %conv2, ptr %edx, align 4, !dbg !245
  %4 = load i32, ptr %edx, align 4, !dbg !246
  %5 = load i32, ptr %eax, align 4, !dbg !247
  call void @__tpause(i32 noundef 0, i32 noundef %4, i32 noundef %5) #13, !dbg !248
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #12, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #12, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %until) #12, !dbg !249
  ret void, !dbg !249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delay_halt(i64 noundef %__cycles) #1 align 16 !dbg !250 {
entry:
  %__cycles.addr = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %cycles = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %__cycles, ptr %__cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__cycles.addr, metadata !252, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #12, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %start, metadata !253, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #12, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %end, metadata !254, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycles) #12, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %cycles, metadata !255, metadata !DIExpression()), !dbg !260
  %0 = load i64, ptr %__cycles.addr, align 8, !dbg !261
  store i64 %0, ptr %cycles, align 8, !dbg !260
  %1 = load i64, ptr %cycles, align 8, !dbg !262
  %tobool = icmp ne i64 %1, 0, !dbg !262
  br i1 %tobool, label %if.end, label %if.then, !dbg !264

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %entry
  %call = call i64 @rdtsc_ordered() #13, !dbg !266
  store i64 %call, ptr %start, align 8, !dbg !267
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %if.end3, %if.end
  %2 = load ptr, ptr @delay_halt_fn, align 8, !dbg !269
  %3 = load i64, ptr %start, align 8, !dbg !273
  %4 = load i64, ptr %cycles, align 8, !dbg !274
  call void %2(i64 noundef %3, i64 noundef %4) #13, !dbg !269
  %call1 = call i64 @rdtsc_ordered() #13, !dbg !275
  store i64 %call1, ptr %end, align 8, !dbg !276
  %5 = load i64, ptr %cycles, align 8, !dbg !277
  %6 = load i64, ptr %end, align 8, !dbg !279
  %7 = load i64, ptr %start, align 8, !dbg !280
  %sub = sub i64 %6, %7, !dbg !281
  %cmp = icmp ule i64 %5, %sub, !dbg !282
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !283

if.then2:                                         ; preds = %for.cond
  br label %for.end, !dbg !284

if.end3:                                          ; preds = %for.cond
  %8 = load i64, ptr %end, align 8, !dbg !285
  %9 = load i64, ptr %start, align 8, !dbg !286
  %sub4 = sub i64 %8, %9, !dbg !287
  %10 = load i64, ptr %cycles, align 8, !dbg !288
  %sub5 = sub i64 %10, %sub4, !dbg !288
  store i64 %sub5, ptr %cycles, align 8, !dbg !288
  %11 = load i64, ptr %end, align 8, !dbg !289
  store i64 %11, ptr %start, align 8, !dbg !290
  br label %for.cond, !dbg !291, !llvm.loop !292

for.end:                                          ; preds = %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !295
  br label %cleanup, !dbg !295

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycles) #12, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #12, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #12, !dbg !295
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !295

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @use_mwaitx_delay() #1 align 16 !dbg !296 {
entry:
  store ptr @delay_halt_mwaitx, ptr @delay_halt_fn, align 8, !dbg !297
  store ptr @delay_halt, ptr @delay_fn, align 8, !dbg !298
  ret void, !dbg !299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delay_halt_mwaitx(i64 noundef %unused, i64 noundef %cycles) #1 align 16 !dbg !300 {
entry:
  %unused.addr = alloca i64, align 8
  %cycles.addr = alloca i64, align 8
  %delay = alloca i64, align 8
  %__UNIQUE_ID___x150 = alloca i64, align 8
  %__UNIQUE_ID___y151 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store i64 %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !302, metadata !DIExpression()), !dbg !313
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !303, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay) #12, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !304, metadata !DIExpression()), !dbg !316
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x150) #12, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x150, metadata !305, metadata !DIExpression()), !dbg !317
  store i64 4294967295, ptr %__UNIQUE_ID___x150, align 8, !dbg !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y151) #12, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y151, metadata !307, metadata !DIExpression()), !dbg !317
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !317
  store i64 %0, ptr %__UNIQUE_ID___y151, align 8, !dbg !317
  %1 = load i64, ptr %__UNIQUE_ID___x150, align 8, !dbg !317
  %2 = load i64, ptr %__UNIQUE_ID___y151, align 8, !dbg !317
  %cmp = icmp ult i64 %1, %2, !dbg !317
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !317

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x150, align 8, !dbg !317
  br label %cond.end, !dbg !317

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y151, align 8, !dbg !317
  br label %cond.end, !dbg !317

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !317
  store i64 %cond, ptr %tmp, align 8, !dbg !317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y151) #12, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x150) #12, !dbg !318
  %5 = load i64, ptr %tmp, align 8, !dbg !317
  store i64 %5, ptr %delay, align 8, !dbg !319
  br label %do.body, !dbg !320

do.body:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !308, metadata !DIExpression()), !dbg !321
  store ptr null, ptr %__vpp_verify, align 8, !dbg !321
  %6 = load ptr, ptr %__vpp_verify, align 8, !dbg !321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !320
  br label %do.cond, !dbg !321

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !321

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !311, metadata !DIExpression()), !dbg !322
  %7 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_tss_rw) #14, !dbg !322, !srcloc !323
  store i64 %7, ptr %tcp_ptr__, align 8, !dbg !322
  %8 = load i64, ptr %tcp_ptr__, align 8, !dbg !322
  %9 = inttoptr i64 %8 to ptr, !dbg !322
  store ptr %9, ptr %tmp2, align 8, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !320
  %10 = load ptr, ptr %tmp2, align 8, !dbg !322
  store ptr %10, ptr %tmp1, align 8, !dbg !321
  %11 = load ptr, ptr %tmp1, align 8, !dbg !320
  call void @__monitorx(ptr noundef %11, i64 noundef 0, i64 noundef 0) #13, !dbg !324
  %12 = load i64, ptr %delay, align 8, !dbg !325
  call void @__mwaitx(i64 noundef 240, i64 noundef %12, i64 noundef 2) #13, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay) #12, !dbg !327
  ret void, !dbg !327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @read_current_timer(ptr noundef %timer_val) #1 align 16 !dbg !328 {
entry:
  %retval = alloca i32, align 4
  %timer_val.addr = alloca ptr, align 8
  store ptr %timer_val, ptr %timer_val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer_val.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load ptr, ptr @delay_fn, align 8, !dbg !334
  %cmp = icmp eq ptr %0, @delay_tsc, !dbg !336
  br i1 %cmp, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %call = call i64 @rdtsc() #13, !dbg !338
  %1 = load ptr, ptr %timer_val.addr, align 8, !dbg !340
  store i64 %call, ptr %1, align 8, !dbg !341
  store i32 0, ptr %retval, align 4, !dbg !342
  br label %return, !dbg !342

if.end:                                           ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !343
  br label %return, !dbg !343

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !344
  ret i32 %2, !dbg !344
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc() #3 align 16 !dbg !345 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %low, metadata !350, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %high, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !353, !srcloc !354
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !353
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !353
  store i64 %asmresult, ptr %low, align 8, !dbg !353
  store i64 %asmresult1, ptr %high, align 8, !dbg !353
  %1 = load i64, ptr %low, align 8, !dbg !355
  %2 = load i64, ptr %high, align 8, !dbg !355
  %shl = shl i64 %2, 32, !dbg !355
  %or = or i64 %1, %shl, !dbg !355
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !356
  ret i64 %or, !dbg !357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__delay(i64 noundef %loops) #1 align 16 !dbg !358 {
entry:
  %loops.addr = alloca i64, align 8
  store i64 %loops, ptr %loops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %loops.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load ptr, ptr @delay_fn, align 8, !dbg !364
  %1 = load i64, ptr %loops.addr, align 8, !dbg !365
  call void %0(i64 noundef %1) #13, !dbg !364
  ret void, !dbg !366
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__const_udelay(i64 noundef %xloops) #4 align 16 !dbg !367 {
entry:
  %xloops.addr = alloca i64, align 8
  %lpj = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %d0 = alloca i32, align 4
  store i64 %xloops, ptr %xloops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xloops.addr, metadata !369, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj) #12, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %lpj, metadata !370, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !371, metadata !DIExpression()), !dbg !381
  br label %do.body, !dbg !381

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !373, metadata !DIExpression()), !dbg !382
  store ptr null, ptr %__vpp_verify, align 8, !dbg !382
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !381
  br label %do.cond, !dbg !382

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !382

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !375, metadata !DIExpression()), !dbg !383
  %1 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.cpuinfo_x86, ptr @cpu_info, i32 0, i32 19)) #12, !dbg !383, !srcloc !384
  store i64 %1, ptr %pfo_val__, align 8, !dbg !383
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !383
  store i64 %2, ptr %tmp, align 8, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !381
  %3 = load i64, ptr %tmp, align 8, !dbg !383
  store i64 %3, ptr %pscr_ret__, align 8, !dbg !381
  %4 = load i64, ptr %pscr_ret__, align 8, !dbg !381
  store i64 %4, ptr %tmp1, align 8, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !385
  %5 = load i64, ptr %tmp1, align 8, !dbg !381
  %tobool = icmp ne i64 %5, 0, !dbg !385
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !385

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !385

cond.false:                                       ; preds = %do.end
  %6 = load i64, ptr @loops_per_jiffy, align 8, !dbg !386
  br label %cond.end, !dbg !385

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !385
  store i64 %cond, ptr %lpj, align 8, !dbg !380
  call void @llvm.lifetime.start.p0(i64 4, ptr %d0) #12, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %d0, metadata !377, metadata !DIExpression()), !dbg !388
  %7 = load i64, ptr %xloops.addr, align 8, !dbg !389
  %mul = mul i64 %7, 4, !dbg !389
  store i64 %mul, ptr %xloops.addr, align 8, !dbg !389
  %8 = load i64, ptr %xloops.addr, align 8, !dbg !390
  %9 = load i64, ptr %lpj, align 8, !dbg !391
  %mul2 = mul i64 %9, 250, !dbg !392
  %10 = call { i64, i64 } asm "mull %edx", "={dx},=&{ax},1,0,~{dirflag},~{fpsr},~{flags}"(i64 %8, i64 %mul2) #15, !dbg !393, !srcloc !394
  %asmresult = extractvalue { i64, i64 } %10, 0, !dbg !393
  %asmresult3 = extractvalue { i64, i64 } %10, 1, !dbg !393
  store i64 %asmresult, ptr %xloops.addr, align 8, !dbg !393
  %11 = trunc i64 %asmresult3 to i32, !dbg !393
  store i32 %11, ptr %d0, align 4, !dbg !393
  %12 = load i64, ptr %xloops.addr, align 8, !dbg !395
  %inc = add i64 %12, 1, !dbg !395
  store i64 %inc, ptr %xloops.addr, align 8, !dbg !395
  call void @__delay(i64 noundef %inc) #13, !dbg !396
  call void @llvm.lifetime.end.p0(i64 4, ptr %d0) #12, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj) #12, !dbg !397
  ret void, !dbg !397
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__udelay(i64 noundef %usecs) #1 align 16 !dbg !398 {
entry:
  %usecs.addr = alloca i64, align 8
  store i64 %usecs, ptr %usecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usecs.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i64, ptr %usecs.addr, align 8, !dbg !402
  %mul = mul i64 %0, 4295, !dbg !403
  call void @__const_udelay(i64 noundef %mul) #13, !dbg !404
  ret void, !dbg !405
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__ndelay(i64 noundef %nsecs) #1 align 16 !dbg !406 {
entry:
  %nsecs.addr = alloca i64, align 8
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, ptr %nsecs.addr, align 8, !dbg !410
  %mul = mul i64 %0, 5, !dbg !411
  call void @__const_udelay(i64 noundef %mul) #13, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !414 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !419, metadata !DIExpression()), !dbg !427
  br label %do.body, !dbg !428

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !420, metadata !DIExpression()), !dbg !429
  %0 = load i32, ptr %val.addr, align 4, !dbg !429
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !429
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !429

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !429
  %cmp = icmp eq i32 %2, 1, !dbg !429
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !429

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !429
  %cmp1 = icmp eq i32 %3, -1, !dbg !429
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !429

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !429
  br label %cond.end, !dbg !429

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !429

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !429
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !429
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !430
  %cmp2 = icmp eq i32 %5, 1, !dbg !430
  br i1 %cmp2, label %if.then, label %if.else, !dbg !429

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !431, !srcloc !433
  br label %if.end8, !dbg !430

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !434
  %cmp3 = icmp eq i32 %6, -1, !dbg !434
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !430

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !435, !srcloc !437
  br label %if.end, !dbg !434

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !434

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !423, metadata !DIExpression()), !dbg !438
  %7 = load i32, ptr %val.addr, align 4, !dbg !438
  %conv = sext i32 %7 to i64, !dbg !438
  %and = and i64 %conv, 4294967295, !dbg !438
  %conv7 = trunc i64 %and to i32, !dbg !438
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !438
  %8 = load i32, ptr %pto_val__, align 4, !dbg !438
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !438, !srcloc !439
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !434
  br label %do.cond, !dbg !438

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !438

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !428
  br label %do.end10, !dbg !429

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !440
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !441 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !448, metadata !DIExpression()), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc_ordered() #3 align 16 !dbg !451 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %low, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %high, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !456, !srcloc !457
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !456
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !456
  store i64 %asmresult, ptr %low, align 8, !dbg !456
  store i64 %asmresult1, ptr %high, align 8, !dbg !456
  %1 = load i64, ptr %low, align 8, !dbg !458
  %2 = load i64, ptr %high, align 8, !dbg !458
  %shl = shl i64 %2, 32, !dbg !458
  %or = or i64 %1, %shl, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !459
  ret i64 %or, !dbg !460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !461 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %c, metadata !468, metadata !DIExpression()), !dbg !470
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !470, !srcloc !471
  %1 = icmp ult i8 %0, 2, !dbg !470
  call void @llvm.assume(i1 %1), !dbg !470
  store i8 %0, ptr %c, align 1, !dbg !470
  %2 = load i8, ptr %c, align 1, !dbg !470, !range !472, !noundef !473
  %tobool = trunc i8 %2 to i1, !dbg !470
  %frombool = zext i1 %tobool to i8, !dbg !470
  store i8 %frombool, ptr %tmp, align 1, !dbg !470
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !474
  %3 = load i8, ptr %tmp, align 1, !dbg !470, !range !472, !noundef !473
  %tobool1 = trunc i8 %3 to i1, !dbg !470
  ret i1 %tobool1, !dbg !475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !476 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !478, !srcloc !479
  ret void, !dbg !480
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__tpause(i32 noundef %ecx, i32 noundef %edx, i32 noundef %eax) #11 align 16 !dbg !481 {
entry:
  %ecx.addr = alloca i32, align 4
  %edx.addr = alloca i32, align 4
  %eax.addr = alloca i32, align 4
  store i32 %ecx, ptr %ecx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !486, metadata !DIExpression()), !dbg !489
  store i32 %edx, ptr %edx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !487, metadata !DIExpression()), !dbg !490
  store i32 %eax, ptr %eax.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !488, metadata !DIExpression()), !dbg !491
  %0 = load i32, ptr %ecx.addr, align 4, !dbg !492
  %1 = load i32, ptr %edx.addr, align 4, !dbg !493
  %2 = load i32, ptr %eax.addr, align 4, !dbg !494
  call void asm sideeffect "tpause %ecx\0A", "{cx},{dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #12, !dbg !495, !srcloc !496
  ret void, !dbg !497
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__monitorx(ptr noundef %eax, i64 noundef %ecx, i64 noundef %edx) #3 align 16 !dbg !498 {
entry:
  %eax.addr = alloca ptr, align 8
  %ecx.addr = alloca i64, align 8
  %edx.addr = alloca i64, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !502, metadata !DIExpression()), !dbg !505
  store i64 %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !503, metadata !DIExpression()), !dbg !506
  store i64 %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !504, metadata !DIExpression()), !dbg !507
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !508
  %1 = load i64, ptr %ecx.addr, align 8, !dbg !509
  %2 = load i64, ptr %edx.addr, align 8, !dbg !510
  call void asm sideeffect ".byte 0x0f, 0x01, 0xfa;", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(ptr %0, i64 %1, i64 %2) #12, !dbg !511, !srcloc !512
  ret void, !dbg !513
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mwaitx(i64 noundef %eax, i64 noundef %ebx, i64 noundef %ecx) #3 align 16 !dbg !514 {
entry:
  %eax.addr = alloca i64, align 8
  %ebx.addr = alloca i64, align 8
  %ecx.addr = alloca i64, align 8
  store i64 %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !518, metadata !DIExpression()), !dbg !521
  store i64 %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !519, metadata !DIExpression()), !dbg !522
  store i64 %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !520, metadata !DIExpression()), !dbg !523
  %0 = load i64, ptr %eax.addr, align 8, !dbg !524
  %1 = load i64, ptr %ebx.addr, align 8, !dbg !525
  %2 = load i64, ptr %ecx.addr, align 8, !dbg !526
  call void asm sideeffect ".byte 0x0f, 0x01, 0xfb;", "{ax},{bx},{cx},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1, i64 %2) #12, !dbg !527, !srcloc !528
  ret void, !dbg !529
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(read) }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "delay_fn", scope: !2, file: !3, line: 36, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.delay.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/delay\22 -D KBUILD_BASENAME=\22delay\22 -D KBUILD_MODNAME=\22delay\22 -D __KBUILD_MODNAME=kmod_delay -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/delay.ll arch/x86/lib/delay.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/delay.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d2476dbdba14e1bc1a4e2182bfd96db")
!4 = !{!5, !6, !7, !8, !9, !10, !15, !18}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !11, line: 23, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !17)
!17 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tss_struct", file: !20, line: 378, size: 163840, align: 32768, elements: !21)
!20 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!21 = !{!22, !41}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tss", scope: !19, file: !20, line: 384, baseType: !23, size: 832)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hw_tss", file: !20, line: 286, size: 832, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !34, !35, !36, !40}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !23, file: !20, line: 287, baseType: !10, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sp0", scope: !23, file: !20, line: 288, baseType: !15, size: 64, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "sp1", scope: !23, file: !20, line: 289, baseType: !15, size: 64, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sp2", scope: !23, file: !20, line: 296, baseType: !15, size: 64, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !23, file: !20, line: 298, baseType: !15, size: 64, offset: 224)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !23, file: !20, line: 299, baseType: !31, size: 448, offset: 288)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 448, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 7)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !23, file: !20, line: 300, baseType: !10, size: 32, offset: 736)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !23, file: !20, line: 301, baseType: !10, size: 32, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !23, file: !20, line: 302, baseType: !37, size: 16, offset: 800)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !11, line: 19, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !13, line: 24, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap_base", scope: !23, file: !20, line: 303, baseType: !37, size: 16, offset: 816)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !19, file: !20, line: 386, baseType: !42, size: 131328, offset: 832)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_io_bitmap", file: !20, line: 350, size: 131328, elements: !43)
!43 = !{!44, !45, !46, !50}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sequence", scope: !42, file: !20, line: 352, baseType: !15, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "prev_max", scope: !42, file: !20, line: 361, baseType: !14, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !42, file: !20, line: 369, baseType: !47, size: 65600, offset: 128)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 65600, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1025)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "mapall", scope: !42, file: !20, line: 375, baseType: !47, size: 65600, offset: 65728)
!51 = !{!52, !54, !56, !58, !60, !0, !65, !71, !109}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___delay152", scope: !2, file: !3, line: 205, type: !5, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___const_udelay153", scope: !2, file: !3, line: 219, type: !5, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___udelay154", scope: !2, file: !3, line: 225, type: !5, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ndelay155", scope: !2, file: !3, line: 231, type: !5, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "delay_halt_fn", scope: !2, file: !3, line: 37, type: !62, isLocal: true, isDefinition: true)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !15, !15}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 40, elements: !69)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !{!70}
!70 = !DISubrange(count: 5)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule148", scope: !73, file: !3, line: 77, type: !5, isLocal: true, isDefinition: true)
!73 = distinct !DISubprogram(name: "delay_tsc", scope: !3, file: !3, line: 63, type: !74, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !15}
!76 = !{!77, !78, !79, !80, !81, !84, !88, !90, !97, !99, !101, !105, !107}
!77 = !DILocalVariable(name: "cycles", arg: 1, scope: !73, file: !3, line: 63, type: !15)
!78 = !DILocalVariable(name: "bclock", scope: !73, file: !3, line: 65, type: !15)
!79 = !DILocalVariable(name: "now", scope: !73, file: !3, line: 65, type: !15)
!80 = !DILocalVariable(name: "cpu", scope: !73, file: !3, line: 66, type: !9)
!81 = !DILocalVariable(name: "pscr_ret__", scope: !82, file: !3, line: 69, type: !9)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 69, column: 8)
!83 = distinct !DILexicalBlock(scope: !73, file: !3, line: 69, column: 8)
!84 = !DILocalVariable(name: "__vpp_verify", scope: !85, file: !3, line: 69, type: !86)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 69, column: 8)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!88 = !DILocalVariable(name: "pfo_val__", scope: !89, file: !3, line: 69, type: !10)
!89 = distinct !DILexicalBlock(scope: !82, file: !3, line: 69, column: 8)
!90 = !DILocalVariable(name: "pscr_ret__", scope: !91, file: !3, line: 90, type: !9)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 90, column: 7)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 90, column: 7)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 90, column: 7)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 71, column: 11)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 71, column: 2)
!96 = distinct !DILexicalBlock(scope: !73, file: !3, line: 71, column: 2)
!97 = !DILocalVariable(name: "__vpp_verify", scope: !98, file: !3, line: 90, type: !86)
!98 = distinct !DILexicalBlock(scope: !91, file: !3, line: 90, column: 7)
!99 = !DILocalVariable(name: "pfo_val__", scope: !100, file: !3, line: 90, type: !10)
!100 = distinct !DILexicalBlock(scope: !91, file: !3, line: 90, column: 7)
!101 = !DILocalVariable(name: "pscr_ret__", scope: !102, file: !3, line: 92, type: !9)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 92, column: 10)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 92, column: 10)
!104 = distinct !DILexicalBlock(scope: !93, file: !3, line: 90, column: 44)
!105 = !DILocalVariable(name: "__vpp_verify", scope: !106, file: !3, line: 92, type: !86)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 92, column: 10)
!107 = !DILocalVariable(name: "pfo_val__", scope: !108, file: !3, line: 92, type: !10)
!108 = distinct !DILexicalBlock(scope: !102, file: !3, line: 92, column: 10)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule149", scope: !73, file: !3, line: 96, type: !5, isLocal: true, isDefinition: true)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!112 = !{!"rsp"}
!113 = !{i32 7, !"Dwarf Version", i32 5}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 8, !"cf-protection-branch", i32 1}
!117 = !{i32 4, !"function_return_thunk_extern", i32 1}
!118 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!119 = !{i32 1, !"Code Model", i32 2}
!120 = !{i32 1, !"override-stack-alignment", i32 8}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = distinct !DISubprogram(name: "use_tsc_delay", scope: !3, file: !3, line: 174, type: !123, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!123 = !DISubroutineType(types: !124)
!124 = !{null}
!125 = !DILocation(line: 176, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 176, column: 6)
!127 = !DILocation(line: 176, column: 15, scope: !126)
!128 = !DILocation(line: 176, column: 6, scope: !122)
!129 = !DILocation(line: 177, column: 12, scope: !126)
!130 = !DILocation(line: 177, column: 3, scope: !126)
!131 = !DILocation(line: 178, column: 1, scope: !122)
!132 = distinct !DISubprogram(name: "delay_loop", scope: !3, file: !3, line: 40, type: !74, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "__loops", arg: 1, scope: !132, file: !3, line: 40, type: !15)
!135 = !DILocalVariable(name: "loops", scope: !132, file: !3, line: 42, type: !7)
!136 = !DILocation(line: 40, column: 28, scope: !132)
!137 = !DILocation(line: 42, column: 2, scope: !132)
!138 = !DILocation(line: 42, column: 16, scope: !132)
!139 = !DILocation(line: 42, column: 39, scope: !132)
!140 = !DILocation(line: 44, column: 2, scope: !132)
!141 = !{i64 1160, i64 1180, i64 1195, i64 1212, i64 1230, i64 1249, i64 1267, i64 1285, i64 1301}
!142 = !DILocation(line: 60, column: 1, scope: !132)
!143 = !DILocation(line: 63, column: 27, scope: !73)
!144 = !DILocation(line: 65, column: 2, scope: !73)
!145 = !DILocation(line: 65, column: 6, scope: !73)
!146 = !DILocation(line: 65, column: 14, scope: !73)
!147 = !DILocation(line: 66, column: 2, scope: !73)
!148 = !DILocation(line: 66, column: 6, scope: !73)
!149 = !DILocation(line: 68, column: 2, scope: !73)
!150 = !DILocation(line: 68, column: 2, scope: !151)
!151 = distinct !DILexicalBlock(scope: !73, file: !3, line: 68, column: 2)
!152 = !{i64 2150983413}
!153 = !DILocation(line: 69, column: 8, scope: !83)
!154 = !DILocation(line: 69, column: 8, scope: !82)
!155 = !DILocation(line: 69, column: 8, scope: !85)
!156 = !DILocation(line: 69, column: 8, scope: !89)
!157 = !{i64 2150986072}
!158 = !DILocation(line: 69, column: 6, scope: !73)
!159 = !DILocation(line: 70, column: 11, scope: !73)
!160 = !DILocation(line: 70, column: 9, scope: !73)
!161 = !DILocation(line: 71, column: 2, scope: !73)
!162 = !DILocation(line: 72, column: 9, scope: !94)
!163 = !DILocation(line: 72, column: 7, scope: !94)
!164 = !DILocation(line: 73, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !94, file: !3, line: 73, column: 7)
!166 = !DILocation(line: 73, column: 14, scope: !165)
!167 = !DILocation(line: 73, column: 12, scope: !165)
!168 = !DILocation(line: 73, column: 25, scope: !165)
!169 = !DILocation(line: 73, column: 22, scope: !165)
!170 = !DILocation(line: 73, column: 7, scope: !94)
!171 = !DILocation(line: 74, column: 4, scope: !165)
!172 = !DILocation(line: 77, column: 3, scope: !94)
!173 = !DILocation(line: 77, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !94, file: !3, line: 77, column: 3)
!175 = !{i64 2150986972}
!176 = !DILocation(line: 77, column: 3, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 77, column: 3)
!178 = !DILocation(line: 77, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !177, file: !3, line: 77, column: 3)
!180 = !{i64 2150987154}
!181 = !DILocation(line: 78, column: 3, scope: !94)
!182 = !DILocation(line: 79, column: 3, scope: !94)
!183 = !DILocation(line: 79, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !94, file: !3, line: 79, column: 3)
!185 = !{i64 2150988882}
!186 = !DILocation(line: 90, column: 7, scope: !93)
!187 = !DILocation(line: 90, column: 7, scope: !92)
!188 = !DILocation(line: 90, column: 7, scope: !91)
!189 = !DILocation(line: 90, column: 7, scope: !98)
!190 = !DILocation(line: 90, column: 7, scope: !100)
!191 = !{i64 2150997310}
!192 = !DILocation(line: 90, column: 7, scope: !94)
!193 = !DILocation(line: 91, column: 15, scope: !104)
!194 = !DILocation(line: 91, column: 21, scope: !104)
!195 = !DILocation(line: 91, column: 19, scope: !104)
!196 = !DILocation(line: 91, column: 11, scope: !104)
!197 = !DILocation(line: 92, column: 10, scope: !103)
!198 = !DILocation(line: 92, column: 10, scope: !102)
!199 = !DILocation(line: 92, column: 10, scope: !106)
!200 = !DILocation(line: 92, column: 10, scope: !108)
!201 = !{i64 2151000528}
!202 = !DILocation(line: 92, column: 8, scope: !104)
!203 = !DILocation(line: 93, column: 13, scope: !104)
!204 = !DILocation(line: 93, column: 11, scope: !104)
!205 = !DILocation(line: 94, column: 3, scope: !104)
!206 = !DILocation(line: 71, column: 2, scope: !95)
!207 = distinct !{!207, !208, !209, !210}
!208 = !DILocation(line: 71, column: 2, scope: !96)
!209 = !DILocation(line: 95, column: 2, scope: !96)
!210 = !{!"llvm.loop.unroll.disable"}
!211 = !DILocation(line: 96, column: 2, scope: !73)
!212 = !DILocation(line: 96, column: 2, scope: !213)
!213 = distinct !DILexicalBlock(scope: !73, file: !3, line: 96, column: 2)
!214 = !{i64 2151001428}
!215 = !DILocation(line: 96, column: 2, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 96, column: 2)
!217 = !DILocation(line: 96, column: 2, scope: !218)
!218 = distinct !DILexicalBlock(scope: !216, file: !3, line: 96, column: 2)
!219 = !{i64 2151001610}
!220 = !DILocation(line: 97, column: 1, scope: !73)
!221 = distinct !DISubprogram(name: "use_tpause_delay", scope: !3, file: !3, line: 180, type: !123, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!222 = !DILocation(line: 182, column: 16, scope: !221)
!223 = !DILocation(line: 183, column: 11, scope: !221)
!224 = !DILocation(line: 184, column: 1, scope: !221)
!225 = distinct !DISubprogram(name: "delay_halt_tpause", scope: !3, file: !3, line: 105, type: !63, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227, !228, !229, !230, !231}
!227 = !DILocalVariable(name: "start", arg: 1, scope: !225, file: !3, line: 105, type: !15)
!228 = !DILocalVariable(name: "cycles", arg: 2, scope: !225, file: !3, line: 105, type: !15)
!229 = !DILocalVariable(name: "until", scope: !225, file: !3, line: 107, type: !15)
!230 = !DILocalVariable(name: "eax", scope: !225, file: !3, line: 108, type: !10)
!231 = !DILocalVariable(name: "edx", scope: !225, file: !3, line: 108, type: !10)
!232 = !DILocation(line: 105, column: 35, scope: !225)
!233 = !DILocation(line: 105, column: 46, scope: !225)
!234 = !DILocation(line: 107, column: 2, scope: !225)
!235 = !DILocation(line: 107, column: 6, scope: !225)
!236 = !DILocation(line: 107, column: 14, scope: !225)
!237 = !DILocation(line: 107, column: 22, scope: !225)
!238 = !DILocation(line: 107, column: 20, scope: !225)
!239 = !DILocation(line: 108, column: 2, scope: !225)
!240 = !DILocation(line: 108, column: 6, scope: !225)
!241 = !DILocation(line: 108, column: 11, scope: !225)
!242 = !DILocation(line: 110, column: 8, scope: !225)
!243 = !DILocation(line: 110, column: 6, scope: !225)
!244 = !DILocation(line: 111, column: 8, scope: !225)
!245 = !DILocation(line: 111, column: 6, scope: !225)
!246 = !DILocation(line: 117, column: 29, scope: !225)
!247 = !DILocation(line: 117, column: 34, scope: !225)
!248 = !DILocation(line: 117, column: 2, scope: !225)
!249 = !DILocation(line: 118, column: 1, scope: !225)
!250 = distinct !DISubprogram(name: "delay_halt", scope: !3, file: !3, line: 149, type: !74, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DILocalVariable(name: "__cycles", arg: 1, scope: !250, file: !3, line: 149, type: !15)
!253 = !DILocalVariable(name: "start", scope: !250, file: !3, line: 151, type: !15)
!254 = !DILocalVariable(name: "end", scope: !250, file: !3, line: 151, type: !15)
!255 = !DILocalVariable(name: "cycles", scope: !250, file: !3, line: 151, type: !15)
!256 = !DILocation(line: 149, column: 28, scope: !250)
!257 = !DILocation(line: 151, column: 2, scope: !250)
!258 = !DILocation(line: 151, column: 6, scope: !250)
!259 = !DILocation(line: 151, column: 13, scope: !250)
!260 = !DILocation(line: 151, column: 18, scope: !250)
!261 = !DILocation(line: 151, column: 27, scope: !250)
!262 = !DILocation(line: 157, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !250, file: !3, line: 157, column: 6)
!264 = !DILocation(line: 157, column: 6, scope: !250)
!265 = !DILocation(line: 158, column: 3, scope: !263)
!266 = !DILocation(line: 160, column: 10, scope: !250)
!267 = !DILocation(line: 160, column: 8, scope: !250)
!268 = !DILocation(line: 162, column: 2, scope: !250)
!269 = !DILocation(line: 163, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 162, column: 11)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 162, column: 2)
!272 = distinct !DILexicalBlock(scope: !250, file: !3, line: 162, column: 2)
!273 = !DILocation(line: 163, column: 17, scope: !270)
!274 = !DILocation(line: 163, column: 24, scope: !270)
!275 = !DILocation(line: 164, column: 9, scope: !270)
!276 = !DILocation(line: 164, column: 7, scope: !270)
!277 = !DILocation(line: 166, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !3, line: 166, column: 7)
!279 = !DILocation(line: 166, column: 17, scope: !278)
!280 = !DILocation(line: 166, column: 23, scope: !278)
!281 = !DILocation(line: 166, column: 21, scope: !278)
!282 = !DILocation(line: 166, column: 14, scope: !278)
!283 = !DILocation(line: 166, column: 7, scope: !270)
!284 = !DILocation(line: 167, column: 4, scope: !278)
!285 = !DILocation(line: 169, column: 13, scope: !270)
!286 = !DILocation(line: 169, column: 19, scope: !270)
!287 = !DILocation(line: 169, column: 17, scope: !270)
!288 = !DILocation(line: 169, column: 10, scope: !270)
!289 = !DILocation(line: 170, column: 11, scope: !270)
!290 = !DILocation(line: 170, column: 9, scope: !270)
!291 = !DILocation(line: 162, column: 2, scope: !271)
!292 = distinct !{!292, !293, !294, !210}
!293 = !DILocation(line: 162, column: 2, scope: !272)
!294 = !DILocation(line: 171, column: 2, scope: !272)
!295 = !DILocation(line: 172, column: 1, scope: !250)
!296 = distinct !DISubprogram(name: "use_mwaitx_delay", scope: !3, file: !3, line: 186, type: !123, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!297 = !DILocation(line: 188, column: 16, scope: !296)
!298 = !DILocation(line: 189, column: 11, scope: !296)
!299 = !DILocation(line: 190, column: 1, scope: !296)
!300 = distinct !DISubprogram(name: "delay_halt_mwaitx", scope: !3, file: !3, line: 125, type: !63, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!301 = !{!302, !303, !304, !305, !307, !308, !311}
!302 = !DILocalVariable(name: "unused", arg: 1, scope: !300, file: !3, line: 125, type: !15)
!303 = !DILocalVariable(name: "cycles", arg: 2, scope: !300, file: !3, line: 125, type: !15)
!304 = !DILocalVariable(name: "delay", scope: !300, file: !3, line: 127, type: !15)
!305 = !DILocalVariable(name: "__UNIQUE_ID___x150", scope: !306, file: !3, line: 129, type: !15)
!306 = distinct !DILexicalBlock(scope: !300, file: !3, line: 129, column: 10)
!307 = !DILocalVariable(name: "__UNIQUE_ID___y151", scope: !306, file: !3, line: 129, type: !15)
!308 = !DILocalVariable(name: "__vpp_verify", scope: !309, file: !3, line: 134, type: !86)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 134, column: 14)
!310 = distinct !DILexicalBlock(scope: !300, file: !3, line: 134, column: 14)
!311 = !DILocalVariable(name: "tcp_ptr__", scope: !312, file: !3, line: 134, type: !7)
!312 = distinct !DILexicalBlock(scope: !310, file: !3, line: 134, column: 14)
!313 = !DILocation(line: 125, column: 35, scope: !300)
!314 = !DILocation(line: 125, column: 47, scope: !300)
!315 = !DILocation(line: 127, column: 2, scope: !300)
!316 = !DILocation(line: 127, column: 6, scope: !300)
!317 = !DILocation(line: 129, column: 10, scope: !306)
!318 = !DILocation(line: 129, column: 10, scope: !300)
!319 = !DILocation(line: 129, column: 8, scope: !300)
!320 = !DILocation(line: 134, column: 14, scope: !310)
!321 = !DILocation(line: 134, column: 14, scope: !309)
!322 = !DILocation(line: 134, column: 14, scope: !312)
!323 = !{i64 2151012783}
!324 = !DILocation(line: 134, column: 3, scope: !300)
!325 = !DILocation(line: 141, column: 35, scope: !300)
!326 = !DILocation(line: 141, column: 2, scope: !300)
!327 = !DILocation(line: 142, column: 1, scope: !300)
!328 = distinct !DISubprogram(name: "read_current_timer", scope: !3, file: !3, line: 192, type: !329, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!9, !6}
!331 = !{!332}
!332 = !DILocalVariable(name: "timer_val", arg: 1, scope: !328, file: !3, line: 192, type: !6)
!333 = !DILocation(line: 192, column: 39, scope: !328)
!334 = !DILocation(line: 194, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !3, line: 194, column: 6)
!336 = !DILocation(line: 194, column: 15, scope: !335)
!337 = !DILocation(line: 194, column: 6, scope: !328)
!338 = !DILocation(line: 195, column: 16, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 194, column: 29)
!340 = !DILocation(line: 195, column: 4, scope: !339)
!341 = !DILocation(line: 195, column: 14, scope: !339)
!342 = !DILocation(line: 196, column: 3, scope: !339)
!343 = !DILocation(line: 198, column: 2, scope: !328)
!344 = !DILocation(line: 199, column: 1, scope: !328)
!345 = distinct !DISubprogram(name: "rdtsc", scope: !346, file: !346, line: 180, type: !347, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!346 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!347 = !DISubroutineType(types: !348)
!348 = !{!17}
!349 = !{!350, !351}
!350 = !DILocalVariable(name: "low", scope: !345, file: !346, line: 182, type: !7)
!351 = !DILocalVariable(name: "high", scope: !345, file: !346, line: 182, type: !7)
!352 = !DILocation(line: 182, column: 2, scope: !345)
!353 = !DILocation(line: 184, column: 2, scope: !345)
!354 = !{i64 1814441}
!355 = !DILocation(line: 186, column: 9, scope: !345)
!356 = !DILocation(line: 187, column: 1, scope: !345)
!357 = !DILocation(line: 186, column: 2, scope: !345)
!358 = distinct !DISubprogram(name: "__delay", scope: !3, file: !3, line: 201, type: !359, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !7}
!361 = !{!362}
!362 = !DILocalVariable(name: "loops", arg: 1, scope: !358, file: !3, line: 201, type: !7)
!363 = !DILocation(line: 201, column: 28, scope: !358)
!364 = !DILocation(line: 203, column: 2, scope: !358)
!365 = !DILocation(line: 203, column: 11, scope: !358)
!366 = !DILocation(line: 204, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "__const_udelay", scope: !3, file: !3, line: 207, type: !359, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!369, !370, !371, !373, !375, !377}
!369 = !DILocalVariable(name: "xloops", arg: 1, scope: !367, file: !3, line: 207, type: !7)
!370 = !DILocalVariable(name: "lpj", scope: !367, file: !3, line: 209, type: !7)
!371 = !DILocalVariable(name: "pscr_ret__", scope: !372, file: !3, line: 209, type: !7)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 209, column: 22)
!373 = !DILocalVariable(name: "__vpp_verify", scope: !374, file: !3, line: 209, type: !86)
!374 = distinct !DILexicalBlock(scope: !372, file: !3, line: 209, column: 22)
!375 = !DILocalVariable(name: "pfo_val__", scope: !376, file: !3, line: 209, type: !15)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 209, column: 22)
!377 = !DILocalVariable(name: "d0", scope: !367, file: !3, line: 210, type: !9)
!378 = !DILocation(line: 207, column: 44, scope: !367)
!379 = !DILocation(line: 209, column: 2, scope: !367)
!380 = !DILocation(line: 209, column: 16, scope: !367)
!381 = !DILocation(line: 209, column: 22, scope: !372)
!382 = !DILocation(line: 209, column: 22, scope: !374)
!383 = !DILocation(line: 209, column: 22, scope: !376)
!384 = !{i64 2151018224}
!385 = !DILocation(line: 209, column: 22, scope: !367)
!386 = !DILocation(line: 209, column: 66, scope: !367)
!387 = !DILocation(line: 210, column: 2, scope: !367)
!388 = !DILocation(line: 210, column: 6, scope: !367)
!389 = !DILocation(line: 212, column: 9, scope: !367)
!390 = !DILocation(line: 215, column: 9, scope: !367)
!391 = !DILocation(line: 215, column: 23, scope: !367)
!392 = !DILocation(line: 215, column: 27, scope: !367)
!393 = !DILocation(line: 213, column: 2, scope: !367)
!394 = !{i64 4758}
!395 = !DILocation(line: 217, column: 10, scope: !367)
!396 = !DILocation(line: 217, column: 2, scope: !367)
!397 = !DILocation(line: 218, column: 1, scope: !367)
!398 = distinct !DISubprogram(name: "__udelay", scope: !3, file: !3, line: 221, type: !359, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!399 = !{!400}
!400 = !DILocalVariable(name: "usecs", arg: 1, scope: !398, file: !3, line: 221, type: !7)
!401 = !DILocation(line: 221, column: 29, scope: !398)
!402 = !DILocation(line: 223, column: 17, scope: !398)
!403 = !DILocation(line: 223, column: 23, scope: !398)
!404 = !DILocation(line: 223, column: 2, scope: !398)
!405 = !DILocation(line: 224, column: 1, scope: !398)
!406 = distinct !DISubprogram(name: "__ndelay", scope: !3, file: !3, line: 227, type: !359, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!407 = !{!408}
!408 = !DILocalVariable(name: "nsecs", arg: 1, scope: !406, file: !3, line: 227, type: !7)
!409 = !DILocation(line: 227, column: 29, scope: !406)
!410 = !DILocation(line: 229, column: 17, scope: !406)
!411 = !DILocation(line: 229, column: 23, scope: !406)
!412 = !DILocation(line: 229, column: 2, scope: !406)
!413 = !DILocation(line: 230, column: 1, scope: !406)
!414 = distinct !DISubprogram(name: "__preempt_count_add", scope: !415, file: !415, line: 78, type: !416, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!415 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!416 = !DISubroutineType(types: !417)
!417 = !{null, !9}
!418 = !{!419, !420, !423}
!419 = !DILocalVariable(name: "val", arg: 1, scope: !414, file: !415, line: 78, type: !9)
!420 = !DILocalVariable(name: "pao_ID__", scope: !421, file: !415, line: 80, type: !422)
!421 = distinct !DILexicalBlock(scope: !414, file: !415, line: 80, column: 2)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!423 = !DILocalVariable(name: "pto_val__", scope: !424, file: !415, line: 80, type: !10)
!424 = distinct !DILexicalBlock(scope: !425, file: !415, line: 80, column: 2)
!425 = distinct !DILexicalBlock(scope: !426, file: !415, line: 80, column: 2)
!426 = distinct !DILexicalBlock(scope: !421, file: !415, line: 80, column: 2)
!427 = !DILocation(line: 78, column: 53, scope: !414)
!428 = !DILocation(line: 80, column: 2, scope: !414)
!429 = !DILocation(line: 80, column: 2, scope: !421)
!430 = !DILocation(line: 80, column: 2, scope: !426)
!431 = !DILocation(line: 80, column: 2, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !415, line: 80, column: 2)
!433 = !{i64 2149583919}
!434 = !DILocation(line: 80, column: 2, scope: !425)
!435 = !DILocation(line: 80, column: 2, scope: !436)
!436 = distinct !DILexicalBlock(scope: !425, file: !415, line: 80, column: 2)
!437 = !{i64 2149584214}
!438 = !DILocation(line: 80, column: 2, scope: !424)
!439 = !{i64 2149584919}
!440 = !DILocation(line: 81, column: 1, scope: !414)
!441 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !442, file: !442, line: 313, type: !443, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!442 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!447 = !{!448}
!448 = !DILocalVariable(name: "op", arg: 1, scope: !441, file: !442, line: 313, type: !445)
!449 = !DILocation(line: 313, column: 66, scope: !441)
!450 = !DILocation(line: 313, column: 72, scope: !441)
!451 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !346, file: !346, line: 197, type: !347, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "low", scope: !451, file: !346, line: 199, type: !7)
!454 = !DILocalVariable(name: "high", scope: !451, file: !346, line: 199, type: !7)
!455 = !DILocation(line: 199, column: 2, scope: !451)
!456 = !DILocation(line: 215, column: 2, scope: !451)
!457 = !{i64 2149494661, i64 2149494694, i64 2149494700, i64 2149494716, i64 2149494735, i64 2149494766, i64 2149495718, i64 2149494292, i64 2149495724, i64 2149495772, i64 2149495836, i64 2149495900, i64 2149495957, i64 2149496164, i64 2149496212, i64 2149496276, i64 2149496340, i64 2149496397, i64 2149494410, i64 2149494435, i64 2149496604, i64 2149496733, i64 2149496665, i64 2149496747, i64 2149496761, i64 2149496883, i64 2149496822, i64 2149496897, i64 2149494569}
!458 = !DILocation(line: 222, column: 9, scope: !451)
!459 = !DILocation(line: 223, column: 1, scope: !451)
!460 = !DILocation(line: 222, column: 2, scope: !451)
!461 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !415, file: !415, line: 93, type: !462, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!462 = !DISubroutineType(types: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !465, line: 35, baseType: !466)
!465 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!466 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!467 = !{!468}
!468 = !DILocalVariable(name: "c", scope: !469, file: !415, line: 95, type: !464)
!469 = distinct !DILexicalBlock(scope: !461, file: !415, line: 95, column: 9)
!470 = !DILocation(line: 95, column: 9, scope: !469)
!471 = !{i64 2149588275, i64 2149588368}
!472 = !{i8 0, i8 2}
!473 = !{}
!474 = !DILocation(line: 95, column: 9, scope: !461)
!475 = !DILocation(line: 95, column: 2, scope: !461)
!476 = distinct !DISubprogram(name: "rep_nop", scope: !477, file: !477, line: 11, type: !123, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!477 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!478 = !DILocation(line: 13, column: 2, scope: !476)
!479 = !{i64 2052705}
!480 = !DILocation(line: 14, column: 1, scope: !476)
!481 = distinct !DISubprogram(name: "__tpause", scope: !482, file: !482, line: 137, type: !483, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!482 = !DIFile(filename: "./arch/x86/include/asm/mwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c52f6b66d0f35fe461fc5329e919046")
!483 = !DISubroutineType(types: !484)
!484 = !{null, !10, !10, !10}
!485 = !{!486, !487, !488}
!486 = !DILocalVariable(name: "ecx", arg: 1, scope: !481, file: !482, line: 137, type: !10)
!487 = !DILocalVariable(name: "edx", arg: 2, scope: !481, file: !482, line: 137, type: !10)
!488 = !DILocalVariable(name: "eax", arg: 3, scope: !481, file: !482, line: 137, type: !10)
!489 = !DILocation(line: 137, column: 33, scope: !481)
!490 = !DILocation(line: 137, column: 42, scope: !481)
!491 = !DILocation(line: 137, column: 51, scope: !481)
!492 = !DILocation(line: 143, column: 14, scope: !481)
!493 = !DILocation(line: 143, column: 24, scope: !481)
!494 = !DILocation(line: 143, column: 34, scope: !481)
!495 = !DILocation(line: 141, column: 2, scope: !481)
!496 = !{i64 3468042}
!497 = !DILocation(line: 149, column: 1, scope: !481)
!498 = distinct !DISubprogram(name: "__monitorx", scope: !482, file: !482, line: 37, type: !499, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !86, !7, !7}
!501 = !{!502, !503, !504}
!502 = !DILocalVariable(name: "eax", arg: 1, scope: !498, file: !482, line: 37, type: !86)
!503 = !DILocalVariable(name: "ecx", arg: 2, scope: !498, file: !482, line: 37, type: !7)
!504 = !DILocalVariable(name: "edx", arg: 3, scope: !498, file: !482, line: 38, type: !7)
!505 = !DILocation(line: 37, column: 52, scope: !498)
!506 = !DILocation(line: 37, column: 71, scope: !498)
!507 = !DILocation(line: 38, column: 24, scope: !498)
!508 = !DILocation(line: 42, column: 16, scope: !498)
!509 = !DILocation(line: 42, column: 27, scope: !498)
!510 = !DILocation(line: 42, column: 37, scope: !498)
!511 = !DILocation(line: 41, column: 2, scope: !498)
!512 = !{i64 3464811}
!513 = !DILocation(line: 43, column: 1, scope: !498)
!514 = distinct !DISubprogram(name: "__mwaitx", scope: !482, file: !482, line: 80, type: !515, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !7, !7, !7}
!517 = !{!518, !519, !520}
!518 = !DILocalVariable(name: "eax", arg: 1, scope: !514, file: !482, line: 80, type: !7)
!519 = !DILocalVariable(name: "ebx", arg: 2, scope: !514, file: !482, line: 80, type: !7)
!520 = !DILocalVariable(name: "ecx", arg: 3, scope: !514, file: !482, line: 81, type: !7)
!521 = !DILocation(line: 80, column: 52, scope: !514)
!522 = !DILocation(line: 80, column: 71, scope: !514)
!523 = !DILocation(line: 81, column: 24, scope: !514)
!524 = !DILocation(line: 87, column: 16, scope: !514)
!525 = !DILocation(line: 87, column: 27, scope: !514)
!526 = !DILocation(line: 87, column: 38, scope: !514)
!527 = !DILocation(line: 86, column: 2, scope: !514)
!528 = !{i64 3466410}
!529 = !DILocation(line: 88, column: 1, scope: !514)
