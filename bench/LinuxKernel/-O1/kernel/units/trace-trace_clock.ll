; ModuleID = 'kernel/trace/trace_clock.c'
source_filename = "kernel/trace/trace_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_clock_local: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_clock_local ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_clock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_clock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_clock_jiffies: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_clock_jiffies ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_clock_global: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_clock_global ; .previous"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.anon.1 = type { i64, %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.anon.3 = type { i8, i8 }

@trace_clock_local.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace195 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !0
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__UNIQUE_ID___addressable_trace_clock_local196 = internal global ptr @trace_clock_local, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable_trace_clock197 = internal global ptr @trace_clock, section ".discard.addressable", align 8, !dbg !45
@jiffies_64 = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID___addressable_trace_clock_jiffies198 = internal global ptr @trace_clock_jiffies, section ".discard.addressable", align 8, !dbg !47
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@trace_clock_struct = internal global %struct.anon.1 zeroinitializer, align 64, !dbg !58
@__UNIQUE_ID___addressable_trace_clock_global201 = internal global ptr @trace_clock_global, section ".discard.addressable", align 8, !dbg !49
@trace_counter = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !51
@llvm.compiler.used = appending global [5 x ptr] [ptr @trace_clock_local.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace195, ptr @__UNIQUE_ID___addressable_trace_clock_local196, ptr @__UNIQUE_ID___addressable_trace_clock197, ptr @__UNIQUE_ID___addressable_trace_clock_jiffies198, ptr @__UNIQUE_ID___addressable_trace_clock_global201], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trace_clock_local() #0 align 16 !dbg !2 {
entry:
  %clock = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %clock) #11, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %clock, metadata !90, metadata !DIExpression()), !dbg !102
  br label %do.body, !dbg !103

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !104
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !104, !srcloc !106
  br label %do.cond, !dbg !104

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !104

do.end:                                           ; preds = %do.cond
  %call = call i64 @sched_clock() #12, !dbg !107
  store i64 %call, ptr %clock, align 8, !dbg !108
  br label %do.body1, !dbg !109

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !110, !srcloc !112
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !113
  %lnot = xor i1 %call2, true, !dbg !113
  %lnot3 = xor i1 %lnot, true, !dbg !113
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !113
  %conv = sext i32 %lnot.ext to i64, !dbg !113
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !113
  %tobool = icmp ne i64 %expval, 0, !dbg !113
  br i1 %tobool, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !113

do.body4:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !91), !dbg !115
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !115, !srcloc !117
  call void @llvm.write_register.i64(metadata !91, i64 %1), !dbg !115
  br label %do.cond5, !dbg !115

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !115

do.end6:                                          ; preds = %do.cond5
  br label %if.end, !dbg !115

if.end:                                           ; preds = %do.end6, %do.body1
  br label %do.cond7, !dbg !110

do.cond7:                                         ; preds = %if.end
  br label %do.end8, !dbg !110

do.end8:                                          ; preds = %do.cond7
  %2 = load i64, ptr %clock, align 8, !dbg !118
  call void @llvm.lifetime.end.p0(i64 8, ptr %clock) #11, !dbg !119
  ret i64 %2, !dbg !120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !121 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !126, metadata !DIExpression()), !dbg !134
  br label %do.body, !dbg !135

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !127, metadata !DIExpression()), !dbg !136
  %0 = load i32, ptr %val.addr, align 4, !dbg !136
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !136
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !136

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !136
  %cmp = icmp eq i32 %2, 1, !dbg !136
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !136

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !136
  %cmp1 = icmp eq i32 %3, -1, !dbg !136
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !136

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !136
  br label %cond.end, !dbg !136

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !136
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !136
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !137
  %cmp2 = icmp eq i32 %5, 1, !dbg !137
  br i1 %cmp2, label %if.then, label %if.else, !dbg !136

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !138, !srcloc !140
  br label %if.end8, !dbg !137

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !141
  %cmp3 = icmp eq i32 %6, -1, !dbg !141
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !137

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !142, !srcloc !144
  br label %if.end, !dbg !141

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !141

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !130, metadata !DIExpression()), !dbg !145
  %7 = load i32, ptr %val.addr, align 4, !dbg !145
  %conv = sext i32 %7 to i64, !dbg !145
  %and = and i64 %conv, 4294967295, !dbg !145
  %conv7 = trunc i64 %and to i32, !dbg !145
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !145
  %8 = load i32, ptr %pto_val__, align 4, !dbg !145
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !145, !srcloc !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !141
  br label %do.cond, !dbg !145

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !145

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !135
  br label %do.end10, !dbg !136

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !148 dso_local i64 @sched_clock() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !150 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !158
  call void @llvm.dbg.declare(metadata ptr %c, metadata !156, metadata !DIExpression()), !dbg !158
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !158, !srcloc !159
  %1 = icmp ult i8 %0, 2, !dbg !158
  call void @llvm.assume(i1 %1), !dbg !158
  store i8 %0, ptr %c, align 1, !dbg !158
  %2 = load i8, ptr %c, align 1, !dbg !158, !range !160, !noundef !161
  %tobool = trunc i8 %2 to i1, !dbg !158
  %frombool = zext i1 %tobool to i8, !dbg !158
  store i8 %frombool, ptr %tmp, align 1, !dbg !158
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !162
  %3 = load i8, ptr %tmp, align 1, !dbg !158, !range !160, !noundef !161
  %tobool1 = trunc i8 %3 to i1, !dbg !158
  ret i1 %tobool1, !dbg !163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trace_clock() #0 align 16 !dbg !164 {
entry:
  %call = call i64 @local_clock() #12, !dbg !165
  ret i64 %call, !dbg !166
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !167 dso_local i64 @local_clock() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trace_clock_jiffies() #0 align 16 !dbg !168 {
entry:
  %0 = load i64, ptr @jiffies_64, align 64, !dbg !169
  %sub = sub i64 %0, 4294667296, !dbg !170
  %call = call i64 @jiffies_64_to_clock_t(i64 noundef %sub) #12, !dbg !171
  ret i64 %call, !dbg !172
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !173 dso_local i64 @jiffies_64_to_clock_t(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trace_clock_global() #0 align 16 !dbg !177 {
entry:
  %flags = alloca i64, align 8
  %this_cpu = alloca i32, align 4
  %now = alloca i64, align 8
  %prev_time = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %tmp40 = alloca i64, align 8
  %__dummy48 = alloca i64, align 8
  %__dummy249 = alloca i64, align 8
  %tmp52 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !179, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #11, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !180, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #11, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %now, metadata !181, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_time) #11, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %prev_time, metadata !182, metadata !DIExpression()), !dbg !206
  br label %do.body, !dbg !207

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !183, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !186, metadata !DIExpression()), !dbg !208
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !208
  %conv = zext i1 %cmp to i32, !dbg !208
  store i32 1, ptr %tmp, align 4, !dbg !208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !209
  %0 = load i32, ptr %tmp, align 4, !dbg !208
  %call = call i64 @arch_local_irq_save() #12, !dbg !209
  store i64 %call, ptr %flags, align 8, !dbg !209
  br label %do.cond, !dbg !209

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !209

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !187, metadata !DIExpression()), !dbg !210
  br label %do.body1, !dbg !210

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !189, metadata !DIExpression()), !dbg !211
  store ptr null, ptr %__vpp_verify, align 8, !dbg !211
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !210
  br label %do.cond2, !dbg !211

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !211

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !193, metadata !DIExpression()), !dbg !212
  %2 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !212, !srcloc !213
  store i32 %2, ptr %pfo_val__, align 4, !dbg !212
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !212
  %conv5 = zext i32 %3 to i64, !dbg !212
  %conv6 = trunc i64 %conv5 to i32, !dbg !212
  store i32 %conv6, ptr %tmp4, align 4, !dbg !212
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !210
  %4 = load i32, ptr %tmp4, align 4, !dbg !212
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !210
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !210
  store i32 %5, ptr %tmp7, align 4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !214
  %6 = load i32, ptr %tmp7, align 4, !dbg !210
  store i32 %6, ptr %this_cpu, align 4, !dbg !215
  br label %do.body8, !dbg !216

do.body8:                                         ; preds = %do.end3
  br label %do.body9, !dbg !217

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !219

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !219

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !217

do.body12:                                        ; preds = %do.end11
  br label %do.body13, !dbg !221

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !223

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !223

do.end15:                                         ; preds = %do.cond14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !221, !srcloc !225
  br label %do.cond16, !dbg !221

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !221

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !217

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !217

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !226

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !228

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !228

do.end22:                                         ; preds = %do.cond21
  %7 = load volatile i64, ptr @trace_clock_struct, align 64, !dbg !226
  store i64 %7, ptr %tmp23, align 8, !dbg !228
  %8 = load i64, ptr %tmp23, align 8, !dbg !226
  store i64 %8, ptr %prev_time, align 8, !dbg !230
  %9 = load i32, ptr %this_cpu, align 4, !dbg !231
  %call24 = call i64 @sched_clock_cpu(i32 noundef %9) #12, !dbg !232
  store i64 %call24, ptr %now, align 8, !dbg !233
  %10 = load i64, ptr %now, align 8, !dbg !234
  %11 = load i64, ptr %prev_time, align 8, !dbg !236
  %sub = sub i64 %10, %11, !dbg !237
  %cmp25 = icmp slt i64 %sub, 0, !dbg !238
  br i1 %cmp25, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %do.end22
  %12 = load i64, ptr %prev_time, align 8, !dbg !240
  store i64 %12, ptr %now, align 8, !dbg !241
  br label %if.end, !dbg !242

if.end:                                           ; preds = %if.then, %do.end22
  %call27 = call i32 @preempt_count() #12, !dbg !243
  %conv28 = sext i32 %call27 to i64, !dbg !243
  %and = and i64 %conv28, 15728640, !dbg !243
  %tobool = icmp ne i64 %and, 0, !dbg !243
  %lnot = xor i1 %tobool, true, !dbg !243
  %lnot29 = xor i1 %lnot, true, !dbg !243
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !243
  %conv30 = sext i32 %lnot.ext to i64, !dbg !243
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !243
  %tobool31 = icmp ne i64 %expval, 0, !dbg !243
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !245

if.then32:                                        ; preds = %if.end
  br label %out, !dbg !246

if.end33:                                         ; preds = %if.end
  %call34 = call i32 @queued_spin_trylock(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @trace_clock_struct, i32 0, i32 1)) #12, !dbg !247
  %tobool35 = icmp ne i32 %call34, 0, !dbg !247
  br i1 %tobool35, label %if.then36, label %if.end46, !dbg !249

if.then36:                                        ; preds = %if.end33
  br label %do.body37, !dbg !250

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !253

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !253

do.end39:                                         ; preds = %do.cond38
  %13 = load volatile i64, ptr @trace_clock_struct, align 64, !dbg !250
  store i64 %13, ptr %tmp40, align 8, !dbg !253
  %14 = load i64, ptr %tmp40, align 8, !dbg !250
  store i64 %14, ptr %prev_time, align 8, !dbg !255
  %15 = load i64, ptr %now, align 8, !dbg !256
  %16 = load i64, ptr %prev_time, align 8, !dbg !258
  %sub41 = sub i64 %15, %16, !dbg !259
  %cmp42 = icmp slt i64 %sub41, 0, !dbg !260
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !261

if.then44:                                        ; preds = %do.end39
  %17 = load i64, ptr %prev_time, align 8, !dbg !262
  store i64 %17, ptr %now, align 8, !dbg !263
  br label %if.end45, !dbg !264

if.end45:                                         ; preds = %if.then44, %do.end39
  %18 = load i64, ptr %now, align 8, !dbg !265
  store i64 %18, ptr @trace_clock_struct, align 64, !dbg !266
  call void @queued_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @trace_clock_struct, i32 0, i32 1)) #12, !dbg !267
  br label %if.end46, !dbg !268

if.end46:                                         ; preds = %if.end45, %if.end33
  br label %out, !dbg !247

out:                                              ; preds = %if.end46, %if.then32
  call void @llvm.dbg.label(metadata !195), !dbg !269
  br label %do.body47, !dbg !270

do.body47:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy48) #11, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__dummy48, metadata !196, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy249) #11, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__dummy249, metadata !199, metadata !DIExpression()), !dbg !271
  %cmp50 = icmp eq ptr %__dummy48, %__dummy249, !dbg !271
  %conv51 = zext i1 %cmp50 to i32, !dbg !271
  store i32 1, ptr %tmp52, align 4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy249) #11, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy48) #11, !dbg !272
  %19 = load i32, ptr %tmp52, align 4, !dbg !271
  br label %do.body53, !dbg !272

do.body53:                                        ; preds = %do.body47
  br label %do.cond54, !dbg !273

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !273

do.end55:                                         ; preds = %do.cond54
  %20 = load i64, ptr %flags, align 8, !dbg !272
  call void @arch_local_irq_restore(i64 noundef %20) #12, !dbg !272
  br label %do.cond56, !dbg !272

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !272

do.end57:                                         ; preds = %do.cond56
  %21 = load i64, ptr %now, align 8, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_time) #11, !dbg !276
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #11, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #11, !dbg !276
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !276
  ret i64 %21, !dbg !277
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !278 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !283, metadata !DIExpression()), !dbg !285
  %call = call i64 @arch_local_save_flags() #12, !dbg !286
  store i64 %call, ptr %flags, align 8, !dbg !285
  call void @arch_local_irq_disable() #12, !dbg !287
  %0 = load i64, ptr %flags, align 8, !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !289
  ret i64 %0, !dbg !290
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !291 dso_local i64 @sched_clock_cpu(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #3 align 16 !dbg !294 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !298, metadata !DIExpression()), !dbg !300
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !300, !srcloc !301
  store i32 %0, ptr %pfo_val__, align 4, !dbg !300
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !300
  %conv = zext i32 %1 to i64, !dbg !300
  %conv1 = trunc i64 %conv to i32, !dbg !300
  store i32 %conv1, ptr %tmp, align 4, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !302
  %2 = load i32, ptr %tmp, align 4, !dbg !300
  %and = and i32 %2, 2147483647, !dbg !303
  ret i32 %and, !dbg !304
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_trylock(ptr noundef %lock) #3 align 16 !dbg !305 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !311, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #11, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %val, metadata !312, metadata !DIExpression()), !dbg !315
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !316
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !317
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !318
  store i32 %call, ptr %val, align 4, !dbg !315
  %2 = load i32, ptr %val, align 4, !dbg !319
  %tobool = icmp ne i32 %2, 0, !dbg !319
  %lnot = xor i1 %tobool, true, !dbg !319
  %lnot1 = xor i1 %lnot, true, !dbg !319
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !319
  %conv = sext i32 %lnot.ext to i64, !dbg !319
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !319
  %tobool2 = icmp ne i64 %expval, 0, !dbg !319
  br i1 %tobool2, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !322

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !323
  %4 = getelementptr inbounds %struct.qspinlock, ptr %3, i32 0, i32 0, !dbg !323
  %call3 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %4, ptr noundef %val, i32 noundef 1) #12, !dbg !323
  %lnot4 = xor i1 %call3, true, !dbg !323
  %lnot6 = xor i1 %lnot4, true, !dbg !323
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !323
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !323
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !323
  %conv10 = trunc i64 %expval9 to i32, !dbg !323
  store i32 %conv10, ptr %retval, align 4, !dbg !324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !324

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #11, !dbg !325
  %5 = load i32, ptr %retval, align 4, !dbg !325
  ret i32 %5, !dbg !325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_unlock(ptr noundef %lock) #3 align 16 !dbg !326 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !330, metadata !DIExpression()), !dbg !331
  br label %do.body, !dbg !332

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !333

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !335

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !333

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !337

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !339

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !337, !srcloc !341
  br label %do.body5, !dbg !337

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !342

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !344

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !342

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !346
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !346
  %locked = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 0, !dbg !346
  store volatile i8 0, ptr %locked, align 4, !dbg !346
  br label %do.end9, !dbg !346

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !342

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !337

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !333

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !348
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !349 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i64, ptr %flags.addr, align 8, !dbg !355
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #12, !dbg !357
  %tobool = icmp ne i32 %call, 0, !dbg !357
  br i1 %tobool, label %if.end, label %if.then, !dbg !358

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #12, !dbg !359
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trace_clock_counter() #0 align 16 !dbg !361 {
entry:
  %call = call i64 @atomic64_inc_return(ptr noundef @trace_counter) #12, !dbg !362
  ret i64 %call, !dbg !363
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_inc_return(ptr noundef %v) #3 align 16 !dbg !364 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !370, metadata !DIExpression()), !dbg !371
  br label %do.body, !dbg !372

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !373

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !375
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !376
  %1 = load ptr, ptr %v.addr, align 8, !dbg !377
  %call = call i64 @raw_atomic64_inc_return(ptr noundef %1) #12, !dbg !378
  ret i64 %call, !dbg !379
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !380 {
entry:
  %call = call i64 @native_save_fl() #12, !dbg !381
  ret i64 %call, !dbg !382
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !383 {
entry:
  call void @native_irq_disable() #12, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !388 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !390, metadata !DIExpression()), !dbg !392
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #11, !dbg !393, !srcloc !394
  %0 = load i64, ptr %flags, align 8, !dbg !395
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !396
  ret i64 %0, !dbg !397
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !398 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !399, !srcloc !400
  ret void, !dbg !401
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !402 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load ptr, ptr %v.addr, align 8, !dbg !410
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #12, !dbg !411
  %1 = load ptr, ptr %v.addr, align 8, !dbg !412
  %call = call i32 @raw_atomic_read(ptr noundef %1) #12, !dbg !413
  ret i32 %call, !dbg !414
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !415 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !420, metadata !DIExpression()), !dbg !423
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !421, metadata !DIExpression()), !dbg !424
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !422, metadata !DIExpression()), !dbg !425
  %0 = load ptr, ptr %v.addr, align 8, !dbg !426
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !427
  %1 = load ptr, ptr %old.addr, align 8, !dbg !428
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #12, !dbg !429
  %2 = load ptr, ptr %v.addr, align 8, !dbg !430
  %3 = load ptr, ptr %old.addr, align 8, !dbg !431
  %4 = load i32, ptr %new.addr, align 4, !dbg !432
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #12, !dbg !433
  ret i1 %call, !dbg !434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !435 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !447, metadata !DIExpression()), !dbg !449
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !448, metadata !DIExpression()), !dbg !450
  %0 = load ptr, ptr %v.addr, align 8, !dbg !451
  %1 = load i64, ptr %size.addr, align 8, !dbg !452
  %conv = trunc i64 %1 to i32, !dbg !452
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !453
  %2 = load ptr, ptr %v.addr, align 8, !dbg !454
  %3 = load i64, ptr %size.addr, align 8, !dbg !454
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !454
  ret void, !dbg !455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !456 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load ptr, ptr %v.addr, align 8, !dbg !461
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !462
  ret i32 %call, !dbg !463
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !464 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !469, metadata !DIExpression()), !dbg !471
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !470, metadata !DIExpression()), !dbg !472
  ret i1 true, !dbg !473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #10 align 16 !dbg !474 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !479, metadata !DIExpression()), !dbg !482
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !480, metadata !DIExpression()), !dbg !483
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !481, metadata !DIExpression()), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !486 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load ptr, ptr %v.addr, align 8, !dbg !491
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !491
  %1 = load volatile i32, ptr %counter, align 4, !dbg !491
  ret i32 %1, !dbg !492
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !493 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !495, metadata !DIExpression()), !dbg !497
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !496, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %v.addr, align 8, !dbg !499
  %1 = load i64, ptr %size.addr, align 8, !dbg !500
  %conv = trunc i64 %1 to i32, !dbg !500
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !501
  %2 = load ptr, ptr %v.addr, align 8, !dbg !502
  %3 = load i64, ptr %size.addr, align 8, !dbg !502
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !502
  ret void, !dbg !503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !504 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !506, metadata !DIExpression()), !dbg !509
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !507, metadata !DIExpression()), !dbg !510
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !508, metadata !DIExpression()), !dbg !511
  %0 = load ptr, ptr %v.addr, align 8, !dbg !512
  %1 = load ptr, ptr %old.addr, align 8, !dbg !513
  %2 = load i32, ptr %new.addr, align 4, !dbg !514
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12, !dbg !515
  ret i1 %call, !dbg !516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !517 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !519, metadata !DIExpression()), !dbg !521
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !520, metadata !DIExpression()), !dbg !522
  ret i1 true, !dbg !523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !524 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !526, metadata !DIExpression()), !dbg !535
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !527, metadata !DIExpression()), !dbg !536
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !528, metadata !DIExpression()), !dbg !537
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %success, metadata !529, metadata !DIExpression()), !dbg !538
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #11, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !531, metadata !DIExpression()), !dbg !538
  %0 = load ptr, ptr %old.addr, align 8, !dbg !538
  store ptr %0, ptr %_old, align 8, !dbg !538
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #11, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !532, metadata !DIExpression()), !dbg !538
  %1 = load ptr, ptr %_old, align 8, !dbg !538
  %2 = load i32, ptr %1, align 4, !dbg !538
  store i32 %2, ptr %__old, align 4, !dbg !538
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #11, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !533, metadata !DIExpression()), !dbg !538
  %3 = load i32, ptr %new.addr, align 4, !dbg !538
  store i32 %3, ptr %__new, align 4, !dbg !538
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !534, metadata !DIExpression()), !dbg !538
  %4 = load ptr, ptr %v.addr, align 8, !dbg !538
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !538
  store ptr %counter, ptr %__ptr, align 8, !dbg !538
  %5 = load ptr, ptr %__ptr, align 8, !dbg !538
  %6 = load i32, ptr %__old, align 4, !dbg !538
  %7 = load i32, ptr %__new, align 4, !dbg !538
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #11, !dbg !538, !srcloc !539
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !538
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !538
  %9 = icmp ult i8 %asmresult, 2, !dbg !538
  call void @llvm.assume(i1 %9), !dbg !538
  store i8 %asmresult, ptr %success, align 1, !dbg !538
  store i32 %asmresult1, ptr %__old, align 4, !dbg !538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !538
  %10 = load i8, ptr %success, align 1, !dbg !540, !range !160, !noundef !161
  %tobool = trunc i8 %10 to i1, !dbg !540
  %lnot = xor i1 %tobool, true, !dbg !540
  %lnot2 = xor i1 %lnot, true, !dbg !540
  %lnot3 = xor i1 %lnot2, true, !dbg !540
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !540
  %conv = sext i32 %lnot.ext to i64, !dbg !540
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !540
  %tobool4 = icmp ne i64 %expval, 0, !dbg !540
  br i1 %tobool4, label %if.then, label %if.end, !dbg !538

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !540
  %12 = load ptr, ptr %_old, align 8, !dbg !540
  store i32 %11, ptr %12, align 4, !dbg !540
  br label %if.end, !dbg !540

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !538, !range !160, !noundef !161
  %tobool5 = trunc i8 %13 to i1, !dbg !538
  %lnot6 = xor i1 %tobool5, true, !dbg !538
  %lnot8 = xor i1 %lnot6, true, !dbg !538
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !538
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !538
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !538
  store i64 %expval11, ptr %tmp, align 8, !dbg !540
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #11, !dbg !542
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #11, !dbg !542
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #11, !dbg !542
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11, !dbg !542
  %14 = load i64, ptr %tmp, align 8, !dbg !538
  %tobool12 = icmp ne i64 %14, 0, !dbg !542
  ret i1 %tobool12, !dbg !543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !544 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load i64, ptr %flags.addr, align 8, !dbg !550
  %and = and i64 %0, 512, !dbg !551
  %tobool = icmp ne i64 %and, 0, !dbg !552
  %lnot = xor i1 %tobool, true, !dbg !552
  %lnot.ext = zext i1 %lnot to i32, !dbg !552
  ret i32 %lnot.ext, !dbg !553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !554 {
entry:
  call void @native_irq_enable() #12, !dbg !555
  ret void, !dbg !556
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !557 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !558, !srcloc !559
  ret void, !dbg !560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_inc_return(ptr noundef %v) #3 align 16 !dbg !561 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load ptr, ptr %v.addr, align 8, !dbg !565
  %call = call i64 @raw_atomic64_add_return(i64 noundef 1, ptr noundef %0) #12, !dbg !566
  ret i64 %call, !dbg !567
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !568 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !572, metadata !DIExpression()), !dbg !574
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !573, metadata !DIExpression()), !dbg !575
  %0 = load i64, ptr %i.addr, align 8, !dbg !576
  %1 = load ptr, ptr %v.addr, align 8, !dbg !577
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #12, !dbg !578
  ret i64 %call, !dbg !579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !580 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !583, metadata !DIExpression()), !dbg !587
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !584, metadata !DIExpression()), !dbg !588
  %0 = load i64, ptr %i.addr, align 8, !dbg !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #11, !dbg !590
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !585, metadata !DIExpression()), !dbg !590
  %1 = load i64, ptr %i.addr, align 8, !dbg !590
  store i64 %1, ptr %__ret, align 8, !dbg !590
  %2 = load i64, ptr %__ret, align 8, !dbg !590
  %3 = load ptr, ptr %v.addr, align 8, !dbg !590
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !590
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #11, !dbg !590, !srcloc !591
  store i64 %4, ptr %__ret, align 8, !dbg !590
  %5 = load i64, ptr %__ret, align 8, !dbg !590
  store i64 %5, ptr %tmp, align 8, !dbg !590
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #11, !dbg !592
  %6 = load i64, ptr %tmp, align 8, !dbg !590
  %add = add i64 %0, %6, !dbg !593
  ret i64 %add, !dbg !594
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!11}
!llvm.named.register.rsp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace195", scope: !2, file: !3, line: 43, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "trace_clock_local", scope: !3, file: !3, line: 32, type: !4, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !89)
!3 = !DIFile(filename: "kernel/trace/trace_clock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d79521e57eaf712ad8227161d72d4a32")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.trace_clock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/trace_clock\22 -D KBUILD_BASENAME=\22trace_clock\22 -D KBUILD_MODNAME=\22trace_clock\22 -D __KBUILD_MODNAME=kmod_trace_clock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/trace_clock.ll kernel/trace/trace_clock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !19, globals: !42, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "false", value: 0)
!18 = !DIEnumerator(name: "true", value: 1)
!19 = !{!20, !21, !15, !22, !23, !24, !27, !30, !32, !35, !37}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !7, line: 22, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !9, line: 30, baseType: !29)
!29 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !15)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!0, !43, !45, !47, !49, !51, !58}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_clock_local196", scope: !11, file: !3, line: 47, type: !20, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_clock197", scope: !11, file: !3, line: 61, type: !20, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_clock_jiffies198", scope: !11, file: !3, line: 74, type: !20, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_clock_global201", scope: !11, file: !3, line: 146, type: !20, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "trace_counter", scope: !11, file: !3, line: 148, type: !53, isLocal: true, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !54, line: 181, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 179, size: 64, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !54, line: 180, baseType: !27, size: 64)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "trace_clock_struct", scope: !11, file: !3, line: 89, type: !60, isLocal: true, isDefinition: true, align: 512)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 86, size: 128, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "prev_time", scope: !60, file: !3, line: 87, baseType: !6, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !60, file: !3, line: 88, baseType: !64, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !65, line: 44, baseType: !66)
!65 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !65, line: 14, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !65, line: 15, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 15, size: 32, elements: !70)
!70 = !{!71, !76, !81}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !69, file: !65, line: 16, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !54, line: 174, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 172, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !73, file: !54, line: 173, baseType: !23, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !65, line: 24, baseType: !77, size: 16)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !69, file: !65, line: 24, size: 16, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !77, file: !65, line: 25, baseType: !39, size: 8)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !77, file: !65, line: 26, baseType: !39, size: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !65, line: 28, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !69, file: !65, line: 28, size: 32, elements: !83)
!83 = !{!84, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !82, file: !65, line: 29, baseType: !85, size: 16)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !87)
!87 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !82, file: !65, line: 30, baseType: !85, size: 16, offset: 16)
!89 = !{!90}
!90 = !DILocalVariable(name: "clock", scope: !2, file: !3, line: 34, type: !6)
!91 = !{!"rsp"}
!92 = !{i32 7, !"Dwarf Version", i32 5}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 8, !"cf-protection-branch", i32 1}
!96 = !{i32 4, !"function_return_thunk_extern", i32 1}
!97 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!98 = !{i32 1, !"Code Model", i32 2}
!99 = !{i32 1, !"override-stack-alignment", i32 8}
!100 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!101 = !DILocation(line: 34, column: 2, scope: !2)
!102 = !DILocation(line: 34, column: 6, scope: !2)
!103 = !DILocation(line: 41, column: 2, scope: !2)
!104 = !DILocation(line: 41, column: 2, scope: !105)
!105 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!106 = !{i64 2152290547}
!107 = !DILocation(line: 42, column: 10, scope: !2)
!108 = !DILocation(line: 42, column: 8, scope: !2)
!109 = !DILocation(line: 43, column: 2, scope: !2)
!110 = !DILocation(line: 43, column: 2, scope: !111)
!111 = distinct !DILexicalBlock(scope: !2, file: !3, line: 43, column: 2)
!112 = !{i64 2152290703}
!113 = !DILocation(line: 43, column: 2, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 43, column: 2)
!115 = !DILocation(line: 43, column: 2, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !3, line: 43, column: 2)
!117 = !{i64 2152290862}
!118 = !DILocation(line: 45, column: 9, scope: !2)
!119 = !DILocation(line: 46, column: 1, scope: !2)
!120 = !DILocation(line: 45, column: 2, scope: !2)
!121 = distinct !DISubprogram(name: "__preempt_count_add", scope: !122, file: !122, line: 78, type: !123, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !125)
!122 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!123 = !DISubroutineType(types: !124)
!124 = !{null, !23}
!125 = !{!126, !127, !130}
!126 = !DILocalVariable(name: "val", arg: 1, scope: !121, file: !122, line: 78, type: !23)
!127 = !DILocalVariable(name: "pao_ID__", scope: !128, file: !122, line: 80, type: !129)
!128 = distinct !DILexicalBlock(scope: !121, file: !122, line: 80, column: 2)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!130 = !DILocalVariable(name: "pto_val__", scope: !131, file: !122, line: 80, type: !30)
!131 = distinct !DILexicalBlock(scope: !132, file: !122, line: 80, column: 2)
!132 = distinct !DILexicalBlock(scope: !133, file: !122, line: 80, column: 2)
!133 = distinct !DILexicalBlock(scope: !128, file: !122, line: 80, column: 2)
!134 = !DILocation(line: 78, column: 53, scope: !121)
!135 = !DILocation(line: 80, column: 2, scope: !121)
!136 = !DILocation(line: 80, column: 2, scope: !128)
!137 = !DILocation(line: 80, column: 2, scope: !133)
!138 = !DILocation(line: 80, column: 2, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !122, line: 80, column: 2)
!140 = !{i64 2149452740}
!141 = !DILocation(line: 80, column: 2, scope: !132)
!142 = !DILocation(line: 80, column: 2, scope: !143)
!143 = distinct !DILexicalBlock(scope: !132, file: !122, line: 80, column: 2)
!144 = !{i64 2149453035}
!145 = !DILocation(line: 80, column: 2, scope: !131)
!146 = !{i64 2149453740}
!147 = !DILocation(line: 81, column: 1, scope: !121)
!148 = !DISubprogram(name: "sched_clock", scope: !149, file: !149, line: 15, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "820797187d326b72c061635bf384b4aa")
!150 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !122, file: !122, line: 93, type: !151, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !154)
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !{!156}
!156 = !DILocalVariable(name: "c", scope: !157, file: !122, line: 95, type: !153)
!157 = distinct !DILexicalBlock(scope: !150, file: !122, line: 95, column: 9)
!158 = !DILocation(line: 95, column: 9, scope: !157)
!159 = !{i64 2149457096, i64 2149457189}
!160 = !{i8 0, i8 2}
!161 = !{}
!162 = !DILocation(line: 95, column: 9, scope: !150)
!163 = !DILocation(line: 95, column: 2, scope: !150)
!164 = distinct !DISubprogram(name: "trace_clock", scope: !3, file: !3, line: 57, type: !4, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!165 = !DILocation(line: 59, column: 9, scope: !164)
!166 = !DILocation(line: 59, column: 2, scope: !164)
!167 = !DISubprogram(name: "local_clock", scope: !149, file: !149, line: 97, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = distinct !DISubprogram(name: "trace_clock_jiffies", scope: !3, file: !3, line: 70, type: !4, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!169 = !DILocation(line: 72, column: 31, scope: !168)
!170 = !DILocation(line: 72, column: 42, scope: !168)
!171 = !DILocation(line: 72, column: 9, scope: !168)
!172 = !DILocation(line: 72, column: 2, scope: !168)
!173 = !DISubprogram(name: "jiffies_64_to_clock_t", scope: !174, file: !174, line: 591, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!175 = !DISubroutineType(types: !176)
!176 = !{!6, !6}
!177 = distinct !DISubprogram(name: "trace_clock_global", scope: !3, file: !3, line: 94, type: !4, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !178)
!178 = !{!179, !180, !181, !182, !183, !186, !187, !189, !193, !195, !196, !199}
!179 = !DILocalVariable(name: "flags", scope: !177, file: !3, line: 96, type: !21)
!180 = !DILocalVariable(name: "this_cpu", scope: !177, file: !3, line: 97, type: !23)
!181 = !DILocalVariable(name: "now", scope: !177, file: !3, line: 98, type: !6)
!182 = !DILocalVariable(name: "prev_time", scope: !177, file: !3, line: 98, type: !6)
!183 = !DILocalVariable(name: "__dummy", scope: !184, file: !3, line: 100, type: !21)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 100, column: 2)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 100, column: 2)
!186 = !DILocalVariable(name: "__dummy2", scope: !184, file: !3, line: 100, type: !21)
!187 = !DILocalVariable(name: "pscr_ret__", scope: !188, file: !3, line: 102, type: !23)
!188 = distinct !DILexicalBlock(scope: !177, file: !3, line: 102, column: 13)
!189 = !DILocalVariable(name: "__vpp_verify", scope: !190, file: !3, line: 102, type: !191)
!190 = distinct !DILexicalBlock(scope: !188, file: !3, line: 102, column: 13)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DILocalVariable(name: "pfo_val__", scope: !194, file: !3, line: 102, type: !30)
!194 = distinct !DILexicalBlock(scope: !188, file: !3, line: 102, column: 13)
!195 = !DILabel(scope: !177, name: "out", file: !3, line: 141)
!196 = !DILocalVariable(name: "__dummy", scope: !197, file: !3, line: 142, type: !21)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 142, column: 2)
!198 = distinct !DILexicalBlock(scope: !177, file: !3, line: 142, column: 2)
!199 = !DILocalVariable(name: "__dummy2", scope: !197, file: !3, line: 142, type: !21)
!200 = !DILocation(line: 96, column: 2, scope: !177)
!201 = !DILocation(line: 96, column: 16, scope: !177)
!202 = !DILocation(line: 97, column: 2, scope: !177)
!203 = !DILocation(line: 97, column: 6, scope: !177)
!204 = !DILocation(line: 98, column: 2, scope: !177)
!205 = !DILocation(line: 98, column: 6, scope: !177)
!206 = !DILocation(line: 98, column: 11, scope: !177)
!207 = !DILocation(line: 100, column: 2, scope: !177)
!208 = !DILocation(line: 100, column: 2, scope: !184)
!209 = !DILocation(line: 100, column: 2, scope: !185)
!210 = !DILocation(line: 102, column: 13, scope: !188)
!211 = !DILocation(line: 102, column: 13, scope: !190)
!212 = !DILocation(line: 102, column: 13, scope: !194)
!213 = !{i64 2152305155}
!214 = !DILocation(line: 102, column: 13, scope: !177)
!215 = !DILocation(line: 102, column: 11, scope: !177)
!216 = !DILocation(line: 114, column: 2, scope: !177)
!217 = !DILocation(line: 114, column: 2, scope: !218)
!218 = distinct !DILexicalBlock(scope: !177, file: !3, line: 114, column: 2)
!219 = !DILocation(line: 114, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !3, line: 114, column: 2)
!221 = !DILocation(line: 114, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !3, line: 114, column: 2)
!223 = !DILocation(line: 114, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !3, line: 114, column: 2)
!225 = !{i64 2152306105}
!226 = !DILocation(line: 115, column: 14, scope: !227)
!227 = distinct !DILexicalBlock(scope: !177, file: !3, line: 115, column: 14)
!228 = !DILocation(line: 115, column: 14, scope: !229)
!229 = distinct !DILexicalBlock(scope: !227, file: !3, line: 115, column: 14)
!230 = !DILocation(line: 115, column: 12, scope: !177)
!231 = !DILocation(line: 116, column: 24, scope: !177)
!232 = !DILocation(line: 116, column: 8, scope: !177)
!233 = !DILocation(line: 116, column: 6, scope: !177)
!234 = !DILocation(line: 119, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !177, file: !3, line: 119, column: 6)
!236 = !DILocation(line: 119, column: 18, scope: !235)
!237 = !DILocation(line: 119, column: 16, scope: !235)
!238 = !DILocation(line: 119, column: 29, scope: !235)
!239 = !DILocation(line: 119, column: 6, scope: !177)
!240 = !DILocation(line: 120, column: 9, scope: !235)
!241 = !DILocation(line: 120, column: 7, scope: !235)
!242 = !DILocation(line: 120, column: 3, scope: !235)
!243 = !DILocation(line: 126, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !177, file: !3, line: 126, column: 6)
!245 = !DILocation(line: 126, column: 6, scope: !177)
!246 = !DILocation(line: 127, column: 3, scope: !244)
!247 = !DILocation(line: 130, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !177, file: !3, line: 130, column: 6)
!249 = !DILocation(line: 130, column: 6, scope: !177)
!250 = !DILocation(line: 132, column: 15, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 132, column: 15)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 130, column: 51)
!253 = !DILocation(line: 132, column: 15, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !3, line: 132, column: 15)
!255 = !DILocation(line: 132, column: 13, scope: !252)
!256 = !DILocation(line: 133, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !3, line: 133, column: 7)
!258 = !DILocation(line: 133, column: 19, scope: !257)
!259 = !DILocation(line: 133, column: 17, scope: !257)
!260 = !DILocation(line: 133, column: 30, scope: !257)
!261 = !DILocation(line: 133, column: 7, scope: !252)
!262 = !DILocation(line: 134, column: 10, scope: !257)
!263 = !DILocation(line: 134, column: 8, scope: !257)
!264 = !DILocation(line: 134, column: 4, scope: !257)
!265 = !DILocation(line: 136, column: 34, scope: !252)
!266 = !DILocation(line: 136, column: 32, scope: !252)
!267 = !DILocation(line: 139, column: 3, scope: !252)
!268 = !DILocation(line: 140, column: 2, scope: !252)
!269 = !DILocation(line: 141, column: 2, scope: !177)
!270 = !DILocation(line: 142, column: 2, scope: !177)
!271 = !DILocation(line: 142, column: 2, scope: !197)
!272 = !DILocation(line: 142, column: 2, scope: !198)
!273 = !DILocation(line: 142, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !198, file: !3, line: 142, column: 2)
!275 = !DILocation(line: 144, column: 9, scope: !177)
!276 = !DILocation(line: 145, column: 1, scope: !177)
!277 = !DILocation(line: 144, column: 2, scope: !177)
!278 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !279, file: !279, line: 101, type: !280, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !282)
!279 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!280 = !DISubroutineType(types: !281)
!281 = !{!21}
!282 = !{!283}
!283 = !DILocalVariable(name: "flags", scope: !278, file: !279, line: 103, type: !21)
!284 = !DILocation(line: 103, column: 2, scope: !278)
!285 = !DILocation(line: 103, column: 16, scope: !278)
!286 = !DILocation(line: 103, column: 24, scope: !278)
!287 = !DILocation(line: 104, column: 2, scope: !278)
!288 = !DILocation(line: 105, column: 9, scope: !278)
!289 = !DILocation(line: 106, column: 1, scope: !278)
!290 = !DILocation(line: 105, column: 2, scope: !278)
!291 = !DISubprogram(name: "sched_clock_cpu", scope: !149, file: !149, line: 30, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!6, !23}
!294 = distinct !DISubprogram(name: "preempt_count", scope: !122, file: !122, line: 25, type: !295, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!23}
!297 = !{!298}
!298 = !DILocalVariable(name: "pfo_val__", scope: !299, file: !122, line: 27, type: !30)
!299 = distinct !DILexicalBlock(scope: !294, file: !122, line: 27, column: 9)
!300 = !DILocation(line: 27, column: 9, scope: !299)
!301 = !{i64 2149442775}
!302 = !DILocation(line: 27, column: 9, scope: !294)
!303 = !DILocation(line: 27, column: 48, scope: !294)
!304 = !DILocation(line: 27, column: 2, scope: !294)
!305 = distinct !DISubprogram(name: "queued_spin_trylock", scope: !306, file: !306, line: 90, type: !307, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !310)
!306 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!307 = !DISubroutineType(types: !308)
!308 = !{!23, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!310 = !{!311, !312}
!311 = !DILocalVariable(name: "lock", arg: 1, scope: !305, file: !306, line: 90, type: !309)
!312 = !DILocalVariable(name: "val", scope: !305, file: !306, line: 92, type: !23)
!313 = !DILocation(line: 90, column: 66, scope: !305)
!314 = !DILocation(line: 92, column: 2, scope: !305)
!315 = !DILocation(line: 92, column: 6, scope: !305)
!316 = !DILocation(line: 92, column: 25, scope: !305)
!317 = !DILocation(line: 92, column: 31, scope: !305)
!318 = !DILocation(line: 92, column: 12, scope: !305)
!319 = !DILocation(line: 94, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !305, file: !306, line: 94, column: 6)
!321 = !DILocation(line: 94, column: 6, scope: !305)
!322 = !DILocation(line: 95, column: 3, scope: !320)
!323 = !DILocation(line: 97, column: 9, scope: !305)
!324 = !DILocation(line: 97, column: 2, scope: !305)
!325 = !DILocation(line: 98, column: 1, scope: !305)
!326 = distinct !DISubprogram(name: "queued_spin_unlock", scope: !306, file: !306, line: 123, type: !327, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !329)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !309}
!329 = !{!330}
!330 = !DILocalVariable(name: "lock", arg: 1, scope: !326, file: !306, line: 123, type: !309)
!331 = !DILocation(line: 123, column: 66, scope: !326)
!332 = !DILocation(line: 128, column: 2, scope: !326)
!333 = !DILocation(line: 128, column: 2, scope: !334)
!334 = distinct !DILexicalBlock(scope: !326, file: !306, line: 128, column: 2)
!335 = !DILocation(line: 128, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !306, line: 128, column: 2)
!337 = !DILocation(line: 128, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !306, line: 128, column: 2)
!339 = !DILocation(line: 128, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !306, line: 128, column: 2)
!341 = !{i64 2149613277}
!342 = !DILocation(line: 128, column: 2, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !306, line: 128, column: 2)
!344 = !DILocation(line: 128, column: 2, scope: !345)
!345 = distinct !DILexicalBlock(scope: !343, file: !306, line: 128, column: 2)
!346 = !DILocation(line: 128, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !306, line: 128, column: 2)
!348 = !DILocation(line: 129, column: 1, scope: !326)
!349 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !279, file: !279, line: 132, type: !350, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !21}
!352 = !{!353}
!353 = !DILocalVariable(name: "flags", arg: 1, scope: !349, file: !279, line: 132, type: !21)
!354 = !DILocation(line: 132, column: 66, scope: !349)
!355 = !DILocation(line: 134, column: 32, scope: !356)
!356 = distinct !DILexicalBlock(scope: !349, file: !279, line: 134, column: 6)
!357 = !DILocation(line: 134, column: 7, scope: !356)
!358 = !DILocation(line: 134, column: 6, scope: !349)
!359 = !DILocation(line: 135, column: 3, scope: !356)
!360 = !DILocation(line: 136, column: 1, scope: !349)
!361 = distinct !DISubprogram(name: "trace_clock_counter", scope: !3, file: !3, line: 155, type: !4, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!362 = !DILocation(line: 157, column: 9, scope: !361)
!363 = !DILocation(line: 157, column: 2, scope: !361)
!364 = distinct !DISubprogram(name: "atomic64_inc_return", scope: !365, file: !365, line: 2014, type: !366, scopeLine: 2015, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !369)
!365 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!366 = !DISubroutineType(types: !367)
!367 = !{!27, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!369 = !{!370}
!370 = !DILocalVariable(name: "v", arg: 1, scope: !364, file: !365, line: 2014, type: !368)
!371 = !DILocation(line: 2014, column: 33, scope: !364)
!372 = !DILocation(line: 2016, column: 2, scope: !364)
!373 = !DILocation(line: 2016, column: 2, scope: !374)
!374 = distinct !DILexicalBlock(scope: !364, file: !365, line: 2016, column: 2)
!375 = !DILocation(line: 2017, column: 31, scope: !364)
!376 = !DILocation(line: 2017, column: 2, scope: !364)
!377 = !DILocation(line: 2018, column: 33, scope: !364)
!378 = !DILocation(line: 2018, column: 9, scope: !364)
!379 = !DILocation(line: 2018, column: 2, scope: !364)
!380 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !279, file: !279, line: 65, type: !280, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!381 = !DILocation(line: 67, column: 9, scope: !380)
!382 = !DILocation(line: 67, column: 2, scope: !380)
!383 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !279, file: !279, line: 70, type: !384, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!384 = !DISubroutineType(types: !385)
!385 = !{null}
!386 = !DILocation(line: 72, column: 2, scope: !383)
!387 = !DILocation(line: 73, column: 1, scope: !383)
!388 = distinct !DISubprogram(name: "native_save_fl", scope: !279, file: !279, line: 17, type: !280, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !389)
!389 = !{!390}
!390 = !DILocalVariable(name: "flags", scope: !388, file: !279, line: 19, type: !21)
!391 = !DILocation(line: 19, column: 2, scope: !388)
!392 = !DILocation(line: 19, column: 16, scope: !388)
!393 = !DILocation(line: 26, column: 2, scope: !388)
!394 = !{i64 1879662, i64 1879683}
!395 = !DILocation(line: 32, column: 9, scope: !388)
!396 = !DILocation(line: 33, column: 1, scope: !388)
!397 = !DILocation(line: 32, column: 2, scope: !388)
!398 = distinct !DISubprogram(name: "native_irq_disable", scope: !279, file: !279, line: 35, type: !384, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!399 = !DILocation(line: 37, column: 2, scope: !398)
!400 = !{i64 1879866}
!401 = !DILocation(line: 38, column: 1, scope: !398)
!402 = distinct !DISubprogram(name: "atomic_read", scope: !365, file: !365, line: 30, type: !403, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !407)
!403 = !DISubroutineType(types: !404)
!404 = !{!23, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!407 = !{!408}
!408 = !DILocalVariable(name: "v", arg: 1, scope: !402, file: !365, line: 30, type: !405)
!409 = !DILocation(line: 30, column: 29, scope: !402)
!410 = !DILocation(line: 32, column: 25, scope: !402)
!411 = !DILocation(line: 32, column: 2, scope: !402)
!412 = !DILocation(line: 33, column: 25, scope: !402)
!413 = !DILocation(line: 33, column: 9, scope: !402)
!414 = !DILocation(line: 33, column: 2, scope: !402)
!415 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !365, file: !365, line: 1292, type: !416, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !419)
!416 = !DISubroutineType(types: !417)
!417 = !{!153, !418, !22, !23}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "v", arg: 1, scope: !415, file: !365, line: 1292, type: !418)
!421 = !DILocalVariable(name: "old", arg: 2, scope: !415, file: !365, line: 1292, type: !22)
!422 = !DILocalVariable(name: "new", arg: 3, scope: !415, file: !365, line: 1292, type: !23)
!423 = !DILocation(line: 1292, column: 38, scope: !415)
!424 = !DILocation(line: 1292, column: 46, scope: !415)
!425 = !DILocation(line: 1292, column: 55, scope: !415)
!426 = !DILocation(line: 1294, column: 31, scope: !415)
!427 = !DILocation(line: 1294, column: 2, scope: !415)
!428 = !DILocation(line: 1295, column: 31, scope: !415)
!429 = !DILocation(line: 1295, column: 2, scope: !415)
!430 = !DILocation(line: 1296, column: 40, scope: !415)
!431 = !DILocation(line: 1296, column: 43, scope: !415)
!432 = !DILocation(line: 1296, column: 48, scope: !415)
!433 = !DILocation(line: 1296, column: 9, scope: !415)
!434 = !DILocation(line: 1296, column: 2, scope: !415)
!435 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !436, file: !436, line: 66, type: !437, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !446)
!436 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !442}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !444, line: 72, baseType: !445)
!444 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !444, line: 16, baseType: !21)
!446 = !{!447, !448}
!447 = !DILocalVariable(name: "v", arg: 1, scope: !435, file: !436, line: 66, type: !439)
!448 = !DILocalVariable(name: "size", arg: 2, scope: !435, file: !436, line: 66, type: !442)
!449 = !DILocation(line: 66, column: 73, scope: !435)
!450 = !DILocation(line: 66, column: 83, scope: !435)
!451 = !DILocation(line: 68, column: 19, scope: !435)
!452 = !DILocation(line: 68, column: 22, scope: !435)
!453 = !DILocation(line: 68, column: 2, scope: !435)
!454 = !DILocation(line: 69, column: 2, scope: !435)
!455 = !DILocation(line: 70, column: 1, scope: !435)
!456 = distinct !DISubprogram(name: "raw_atomic_read", scope: !457, file: !457, line: 442, type: !403, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !458)
!457 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!458 = !{!459}
!459 = !DILocalVariable(name: "v", arg: 1, scope: !456, file: !457, line: 442, type: !405)
!460 = !DILocation(line: 442, column: 33, scope: !456)
!461 = !DILocation(line: 444, column: 26, scope: !456)
!462 = !DILocation(line: 444, column: 9, scope: !456)
!463 = !DILocation(line: 444, column: 2, scope: !456)
!464 = distinct !DISubprogram(name: "kasan_check_read", scope: !465, file: !465, line: 40, type: !466, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !468)
!465 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!466 = !DISubroutineType(types: !467)
!467 = !{!153, !439, !15}
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "p", arg: 1, scope: !464, file: !465, line: 40, type: !439)
!470 = !DILocalVariable(name: "size", arg: 2, scope: !464, file: !465, line: 40, type: !15)
!471 = !DILocation(line: 40, column: 58, scope: !464)
!472 = !DILocation(line: 40, column: 74, scope: !464)
!473 = !DILocation(line: 42, column: 2, scope: !464)
!474 = distinct !DISubprogram(name: "kcsan_check_access", scope: !475, file: !475, line: 229, type: !476, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !478)
!475 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!476 = !DISubroutineType(types: !477)
!477 = !{null, !439, !442, !23}
!478 = !{!479, !480, !481}
!479 = !DILocalVariable(name: "ptr", arg: 1, scope: !474, file: !475, line: 229, type: !439)
!480 = !DILocalVariable(name: "size", arg: 2, scope: !474, file: !475, line: 229, type: !442)
!481 = !DILocalVariable(name: "type", arg: 3, scope: !474, file: !475, line: 230, type: !23)
!482 = !DILocation(line: 229, column: 60, scope: !474)
!483 = !DILocation(line: 229, column: 72, scope: !474)
!484 = !DILocation(line: 230, column: 15, scope: !474)
!485 = !DILocation(line: 230, column: 23, scope: !474)
!486 = distinct !DISubprogram(name: "arch_atomic_read", scope: !487, file: !487, line: 17, type: !403, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !488)
!487 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!488 = !{!489}
!489 = !DILocalVariable(name: "v", arg: 1, scope: !486, file: !487, line: 17, type: !405)
!490 = !DILocation(line: 17, column: 61, scope: !486)
!491 = !DILocation(line: 23, column: 9, scope: !486)
!492 = !DILocation(line: 23, column: 2, scope: !486)
!493 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !436, file: !436, line: 94, type: !437, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !494)
!494 = !{!495, !496}
!495 = !DILocalVariable(name: "v", arg: 1, scope: !493, file: !436, line: 94, type: !439)
!496 = !DILocalVariable(name: "size", arg: 2, scope: !493, file: !436, line: 94, type: !442)
!497 = !DILocation(line: 94, column: 79, scope: !493)
!498 = !DILocation(line: 94, column: 89, scope: !493)
!499 = !DILocation(line: 96, column: 20, scope: !493)
!500 = !DILocation(line: 96, column: 23, scope: !493)
!501 = !DILocation(line: 96, column: 2, scope: !493)
!502 = !DILocation(line: 97, column: 2, scope: !493)
!503 = !DILocation(line: 98, column: 1, scope: !493)
!504 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !457, file: !457, line: 2142, type: !416, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !505)
!505 = !{!506, !507, !508}
!506 = !DILocalVariable(name: "v", arg: 1, scope: !504, file: !457, line: 2142, type: !418)
!507 = !DILocalVariable(name: "old", arg: 2, scope: !504, file: !457, line: 2142, type: !22)
!508 = !DILocalVariable(name: "new", arg: 3, scope: !504, file: !457, line: 2142, type: !23)
!509 = !DILocation(line: 2142, column: 42, scope: !504)
!510 = !DILocation(line: 2142, column: 50, scope: !504)
!511 = !DILocation(line: 2142, column: 59, scope: !504)
!512 = !DILocation(line: 2151, column: 33, scope: !504)
!513 = !DILocation(line: 2151, column: 36, scope: !504)
!514 = !DILocation(line: 2151, column: 41, scope: !504)
!515 = !DILocation(line: 2151, column: 9, scope: !504)
!516 = !DILocation(line: 2151, column: 2, scope: !504)
!517 = distinct !DISubprogram(name: "kasan_check_write", scope: !465, file: !465, line: 44, type: !466, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !518)
!518 = !{!519, !520}
!519 = !DILocalVariable(name: "p", arg: 1, scope: !517, file: !465, line: 44, type: !439)
!520 = !DILocalVariable(name: "size", arg: 2, scope: !517, file: !465, line: 44, type: !15)
!521 = !DILocation(line: 44, column: 59, scope: !517)
!522 = !DILocation(line: 44, column: 75, scope: !517)
!523 = !DILocation(line: 46, column: 2, scope: !517)
!524 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !487, file: !487, line: 113, type: !416, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !525)
!525 = !{!526, !527, !528, !529, !531, !532, !533, !534}
!526 = !DILocalVariable(name: "v", arg: 1, scope: !524, file: !487, line: 113, type: !418)
!527 = !DILocalVariable(name: "old", arg: 2, scope: !524, file: !487, line: 113, type: !22)
!528 = !DILocalVariable(name: "new", arg: 3, scope: !524, file: !487, line: 113, type: !23)
!529 = !DILocalVariable(name: "success", scope: !530, file: !487, line: 115, type: !153)
!530 = distinct !DILexicalBlock(scope: !524, file: !487, line: 115, column: 9)
!531 = !DILocalVariable(name: "_old", scope: !530, file: !487, line: 115, type: !22)
!532 = !DILocalVariable(name: "__old", scope: !530, file: !487, line: 115, type: !23)
!533 = !DILocalVariable(name: "__new", scope: !530, file: !487, line: 115, type: !23)
!534 = !DILocalVariable(name: "__ptr", scope: !530, file: !487, line: 115, type: !35)
!535 = !DILocation(line: 113, column: 63, scope: !524)
!536 = !DILocation(line: 113, column: 71, scope: !524)
!537 = !DILocation(line: 113, column: 80, scope: !524)
!538 = !DILocation(line: 115, column: 9, scope: !530)
!539 = !{i64 2148822062, i64 2148822101, i64 2148822122, i64 2148822159, i64 2148822182, i64 2148822191, i64 2148822489}
!540 = !DILocation(line: 115, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !530, file: !487, line: 115, column: 9)
!542 = !DILocation(line: 115, column: 9, scope: !524)
!543 = !DILocation(line: 115, column: 2, scope: !524)
!544 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !279, file: !279, line: 120, type: !545, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!23, !21}
!547 = !{!548}
!548 = !DILocalVariable(name: "flags", arg: 1, scope: !544, file: !279, line: 120, type: !21)
!549 = !DILocation(line: 120, column: 67, scope: !544)
!550 = !DILocation(line: 122, column: 11, scope: !544)
!551 = !DILocation(line: 122, column: 17, scope: !544)
!552 = !DILocation(line: 122, column: 9, scope: !544)
!553 = !DILocation(line: 122, column: 2, scope: !544)
!554 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !279, file: !279, line: 75, type: !384, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!555 = !DILocation(line: 77, column: 2, scope: !554)
!556 = !DILocation(line: 78, column: 1, scope: !554)
!557 = distinct !DISubprogram(name: "native_irq_enable", scope: !279, file: !279, line: 40, type: !384, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!558 = !DILocation(line: 42, column: 2, scope: !557)
!559 = !{i64 1879958}
!560 = !DILocation(line: 43, column: 1, scope: !557)
!561 = distinct !DISubprogram(name: "raw_atomic64_inc_return", scope: !457, file: !457, line: 3108, type: !366, scopeLine: 3109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !562)
!562 = !{!563}
!563 = !DILocalVariable(name: "v", arg: 1, scope: !561, file: !457, line: 3108, type: !368)
!564 = !DILocation(line: 3108, column: 37, scope: !561)
!565 = !DILocation(line: 3119, column: 36, scope: !561)
!566 = !DILocation(line: 3119, column: 9, scope: !561)
!567 = !DILocation(line: 3119, column: 2, scope: !561)
!568 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !457, file: !457, line: 2660, type: !569, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!27, !27, !368}
!571 = !{!572, !573}
!572 = !DILocalVariable(name: "i", arg: 1, scope: !568, file: !457, line: 2660, type: !27)
!573 = !DILocalVariable(name: "v", arg: 2, scope: !568, file: !457, line: 2660, type: !368)
!574 = !DILocation(line: 2660, column: 29, scope: !568)
!575 = !DILocation(line: 2660, column: 44, scope: !568)
!576 = !DILocation(line: 2663, column: 34, scope: !568)
!577 = !DILocation(line: 2663, column: 37, scope: !568)
!578 = !DILocation(line: 2663, column: 9, scope: !568)
!579 = !DILocation(line: 2663, column: 2, scope: !568)
!580 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !581, file: !581, line: 77, type: !569, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !582)
!581 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!582 = !{!583, !584, !585}
!583 = !DILocalVariable(name: "i", arg: 1, scope: !580, file: !581, line: 77, type: !27)
!584 = !DILocalVariable(name: "v", arg: 2, scope: !580, file: !581, line: 77, type: !368)
!585 = !DILocalVariable(name: "__ret", scope: !586, file: !581, line: 79, type: !27)
!586 = distinct !DILexicalBlock(scope: !580, file: !581, line: 79, column: 13)
!587 = !DILocation(line: 77, column: 57, scope: !580)
!588 = !DILocation(line: 77, column: 72, scope: !580)
!589 = !DILocation(line: 79, column: 9, scope: !580)
!590 = !DILocation(line: 79, column: 13, scope: !586)
!591 = !{i64 2148842851, i64 2148842890, i64 2148842911, i64 2148842948, i64 2148842971, i64 2148842980}
!592 = !DILocation(line: 79, column: 13, scope: !580)
!593 = !DILocation(line: 79, column: 11, scope: !580)
!594 = !DILocation(line: 79, column: 2, scope: !580)
