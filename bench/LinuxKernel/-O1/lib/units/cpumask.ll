; ModuleID = 'lib/cpumask.c'
source_filename = "lib/cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpumask_next_wrap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpumask_next_wrap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpumask_local_spread: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpumask_local_spread ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpumask_any_and_distribute: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpumask_any_and_distribute ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpumask_any_distribute: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpumask_any_distribute ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.atomic_t = type { i32 }

@nr_cpu_ids = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_cpumask_next_wrap277 = internal global ptr @cpumask_next_wrap, section ".discard.addressable", align 8, !dbg !0
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [14 x i8] c"lib/cpumask.c\00", align 1, !dbg !33
@__UNIQUE_ID___addressable_cpumask_local_spread278 = internal global ptr @cpumask_local_spread, section ".discard.addressable", align 8, !dbg !39
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !41
@distribute_cpu_mask_prev = internal global i32 0, section ".data..percpu", align 4, !dbg !55
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !46
@__UNIQUE_ID___addressable_cpumask_any_and_distribute279 = internal global ptr @cpumask_any_and_distribute, section ".discard.addressable", align 8, !dbg !51
@__UNIQUE_ID___addressable_cpumask_any_distribute280 = internal global ptr @cpumask_any_distribute, section ".discard.addressable", align 8, !dbg !53
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_cpumask_next_wrap277, ptr @__UNIQUE_ID___addressable_cpumask_local_spread278, ptr @__UNIQUE_ID___addressable_cpumask_any_and_distribute279, ptr @__UNIQUE_ID___addressable_cpumask_any_distribute280], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define hidden i32 @cpumask_next_wrap(i32 noundef %n, ptr noundef %mask, i32 noundef %start, i1 noundef zeroext %wrap) #0 align 16 !dbg !66 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %wrap.addr = alloca i8, align 1
  %next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !73, metadata !DIExpression()), !dbg !79
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !74, metadata !DIExpression()), !dbg !80
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !75, metadata !DIExpression()), !dbg !81
  %frombool = zext i1 %wrap to i8
  store i8 %frombool, ptr %wrap.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wrap.addr, metadata !76, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #9, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %next, metadata !77, metadata !DIExpression()), !dbg !84
  br label %again, !dbg !83

again:                                            ; preds = %if.then4, %entry
  call void @llvm.dbg.label(metadata !78), !dbg !85
  %0 = load i32, ptr %n.addr, align 4, !dbg !86
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !87
  %call = call i32 @cpumask_next(i32 noundef %0, ptr noundef %1) #10, !dbg !88
  store i32 %call, ptr %next, align 4, !dbg !89
  %2 = load i8, ptr %wrap.addr, align 1, !dbg !90, !range !92, !noundef !93
  %tobool = trunc i8 %2 to i1, !dbg !90
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !94

land.lhs.true:                                    ; preds = %again
  %3 = load i32, ptr %n.addr, align 4, !dbg !95
  %4 = load i32, ptr %start.addr, align 4, !dbg !96
  %cmp = icmp slt i32 %3, %4, !dbg !97
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !98

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %next, align 4, !dbg !99
  %6 = load i32, ptr %start.addr, align 4, !dbg !100
  %cmp2 = icmp uge i32 %5, %6, !dbg !101
  br i1 %cmp2, label %if.then, label %if.else, !dbg !102

if.then:                                          ; preds = %land.lhs.true1
  %7 = load i32, ptr @nr_cpu_ids, align 4, !dbg !103
  store i32 %7, ptr %retval, align 4, !dbg !105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !105

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %again
  %8 = load i32, ptr %next, align 4, !dbg !106
  %9 = load i32, ptr @nr_cpu_ids, align 4, !dbg !108
  %cmp3 = icmp uge i32 %8, %9, !dbg !109
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !110

if.then4:                                         ; preds = %if.else
  store i8 1, ptr %wrap.addr, align 1, !dbg !111
  store i32 -1, ptr %n.addr, align 4, !dbg !113
  br label %again, !dbg !114

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %10 = load i32, ptr %next, align 4, !dbg !115
  store i32 %10, ptr %retval, align 4, !dbg !116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !116

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #9, !dbg !117
  %11 = load i32, ptr %retval, align 4, !dbg !117
  ret i32 %11, !dbg !117
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_next(i32 noundef %n, ptr noundef %srcp) #3 align 16 !dbg !118 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !122, metadata !DIExpression()), !dbg !124
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !123, metadata !DIExpression()), !dbg !125
  %0 = load i32, ptr %n.addr, align 4, !dbg !126
  %cmp = icmp ne i32 %0, -1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !130
  %call = call i32 @cpumask_check(i32 noundef %1) #10, !dbg !131
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %srcp.addr, align 8, !dbg !132
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !132
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !132
  %3 = load i32, ptr %n.addr, align 4, !dbg !133
  %add = add i32 %3, 1, !dbg !134
  %conv = sext i32 %add to i64, !dbg !133
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #10, !dbg !135
  %conv2 = trunc i64 %call1 to i32, !dbg !135
  ret i32 %conv2, !dbg !136
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpumask_local_spread(i32 noundef %i, i32 noundef %node) #4 align 16 !dbg !137 {
entry:
  %i.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %cpu = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !141, metadata !DIExpression()), !dbg !149
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !142, metadata !DIExpression()), !dbg !150
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #9, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !143, metadata !DIExpression()), !dbg !152
  %call = call i32 @num_online_cpus() #10, !dbg !153
  %0 = load i32, ptr %i.addr, align 4, !dbg !154
  %rem = urem i32 %0, %call, !dbg !154
  store i32 %rem, ptr %i.addr, align 4, !dbg !154
  %1 = load i32, ptr %i.addr, align 4, !dbg !155
  %2 = load i32, ptr %node.addr, align 4, !dbg !156
  %call1 = call i32 @sched_numa_find_nth_cpu(ptr noundef @__cpu_online_mask, i32 noundef %1, i32 noundef %2) #10, !dbg !157
  store i32 %call1, ptr %cpu, align 4, !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !144, metadata !DIExpression()), !dbg !159
  %3 = load i32, ptr %cpu, align 4, !dbg !159
  %4 = load i32, ptr @nr_cpu_ids, align 4, !dbg !159
  %cmp = icmp uge i32 %3, %4, !dbg !159
  %lnot = xor i1 %cmp, true, !dbg !159
  %lnot2 = xor i1 %lnot, true, !dbg !159
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !159
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !159
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !160
  %tobool = icmp ne i32 %5, 0, !dbg !160
  %lnot3 = xor i1 %tobool, true, !dbg !160
  %lnot5 = xor i1 %lnot3, true, !dbg !160
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !160
  %conv = sext i32 %lnot.ext6 to i64, !dbg !160
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !160
  %tobool7 = icmp ne i64 %expval, 0, !dbg !160
  br i1 %tobool7, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !160

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !146, metadata !DIExpression()), !dbg !161
  store i32 2305, ptr %__flags, align 4, !dbg !161
  br label %do.body8, !dbg !161

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !162

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !162

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !161

do.body9:                                         ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !164
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 151, i32 %6, i64 12) #9, !dbg !164, !srcloc !166
  br label %do.cond10, !dbg !164

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !164

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !161

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !167

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !167

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !160
  br label %do.cond15, !dbg !161

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !161

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !161

if.end:                                           ; preds = %do.end16, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !159
  %tobool17 = icmp ne i32 %7, 0, !dbg !159
  %lnot18 = xor i1 %tobool17, true, !dbg !159
  %lnot20 = xor i1 %lnot18, true, !dbg !159
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !159
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !159
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !159
  store i64 %expval23, ptr %tmp, align 8, !dbg !160
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !169
  %8 = load i64, ptr %tmp, align 8, !dbg !159
  %9 = load i32, ptr %cpu, align 4, !dbg !170
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #9, !dbg !171
  ret i32 %9, !dbg !172
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #5 align 16 !dbg !173 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #10, !dbg !176
  ret i32 %call, !dbg !177
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !178 dso_local i32 @sched_numa_find_nth_cpu(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpumask_any_and_distribute(ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !182 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  %next = alloca i32, align 4
  %prev = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify12 = alloca ptr, align 8
  %pto_val__ = alloca i32, align 4
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !186, metadata !DIExpression()), !dbg !206
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !187, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #9, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %next, metadata !188, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev) #9, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !189, metadata !DIExpression()), !dbg !210
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !211
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !190, metadata !DIExpression()), !dbg !212
  br label %do.body, !dbg !212

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !193, metadata !DIExpression()), !dbg !213
  store ptr null, ptr %__vpp_verify, align 8, !dbg !213
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !213
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !212
  br label %do.cond, !dbg !213

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !213

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !197, metadata !DIExpression()), !dbg !214
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @distribute_cpu_mask_prev) #11, !dbg !214, !srcloc !215
  store i32 %1, ptr %pfo_val__, align 4, !dbg !214
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !214
  %conv = zext i32 %2 to i64, !dbg !214
  %conv2 = trunc i64 %conv to i32, !dbg !214
  store i32 %conv2, ptr %tmp1, align 4, !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !212
  %3 = load i32, ptr %tmp1, align 4, !dbg !214
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !212
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !212
  store i32 %4, ptr %tmp3, align 4, !dbg !212
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !211
  %5 = load i32, ptr %tmp3, align 4, !dbg !212
  store i32 %5, ptr %tmp, align 4, !dbg !211
  %6 = load i32, ptr %tmp, align 4, !dbg !211
  store i32 %6, ptr %prev, align 4, !dbg !216
  %7 = load ptr, ptr %src1p.addr, align 8, !dbg !217
  %bits = getelementptr inbounds %struct.cpumask, ptr %7, i32 0, i32 0, !dbg !217
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !217
  %8 = load ptr, ptr %src2p.addr, align 8, !dbg !218
  %bits4 = getelementptr inbounds %struct.cpumask, ptr %8, i32 0, i32 0, !dbg !218
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !218
  %9 = load i32, ptr @nr_cpu_ids, align 4, !dbg !219
  %conv6 = zext i32 %9 to i64, !dbg !219
  %10 = load i32, ptr %prev, align 4, !dbg !220
  %add = add i32 %10, 1, !dbg !221
  %conv7 = zext i32 %add to i64, !dbg !220
  %call = call i64 @find_next_and_bit_wrap(ptr noundef %arraydecay, ptr noundef %arraydecay5, i64 noundef %conv6, i64 noundef %conv7) #10, !dbg !222
  %conv8 = trunc i64 %call to i32, !dbg !222
  store i32 %conv8, ptr %next, align 4, !dbg !223
  %11 = load i32, ptr %next, align 4, !dbg !224
  %12 = load i32, ptr @nr_cpu_ids, align 4, !dbg !225
  %cmp = icmp ult i32 %11, %12, !dbg !226
  br i1 %cmp, label %if.then, label %if.end, !dbg !227

if.then:                                          ; preds = %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #10, !dbg !228
  br label %do.body10, !dbg !228

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !229

do.body11:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify12) #9, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify12, metadata !199, metadata !DIExpression()), !dbg !230
  store ptr null, ptr %__vpp_verify12, align 8, !dbg !230
  %13 = load ptr, ptr %__vpp_verify12, align 8, !dbg !230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify12) #9, !dbg !229
  br label %do.cond13, !dbg !230

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !230

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !229

do.body15:                                        ; preds = %do.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #9, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !204, metadata !DIExpression()), !dbg !231
  %14 = load i32, ptr %next, align 4, !dbg !231
  %conv16 = zext i32 %14 to i64, !dbg !231
  %and = and i64 %conv16, 4294967295, !dbg !231
  %conv17 = trunc i64 %and to i32, !dbg !231
  store i32 %conv17, ptr %pto_val__, align 4, !dbg !231
  %15 = load i32, ptr %pto_val__, align 4, !dbg !231
  call void asm "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @distribute_cpu_mask_prev, i32 %15, ptr elementtype(i32) @distribute_cpu_mask_prev) #9, !dbg !231, !srcloc !232
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #9, !dbg !229
  br label %do.cond18, !dbg !231

do.cond18:                                        ; preds = %do.body15
  br label %do.end19, !dbg !231

do.end19:                                         ; preds = %do.cond18
  br label %do.cond20, !dbg !229

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !229

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !233

if.end:                                           ; preds = %do.end21, %do.end
  %16 = load i32, ptr %next, align 4, !dbg !234
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev) #9, !dbg !235
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #9, !dbg !235
  ret i32 %16, !dbg !236
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !237 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !244, metadata !DIExpression()), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_and_bit_wrap(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !247 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %bit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !254, metadata !DIExpression()), !dbg !259
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !255, metadata !DIExpression()), !dbg !260
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !256, metadata !DIExpression()), !dbg !261
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !257, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit) #9, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !258, metadata !DIExpression()), !dbg !264
  %0 = load ptr, ptr %addr1.addr, align 8, !dbg !265
  %1 = load ptr, ptr %addr2.addr, align 8, !dbg !266
  %2 = load i64, ptr %size.addr, align 8, !dbg !267
  %3 = load i64, ptr %offset.addr, align 8, !dbg !268
  %call = call i64 @find_next_and_bit(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #10, !dbg !269
  store i64 %call, ptr %bit, align 8, !dbg !264
  %4 = load i64, ptr %bit, align 8, !dbg !270
  %5 = load i64, ptr %size.addr, align 8, !dbg !272
  %cmp = icmp ult i64 %4, %5, !dbg !273
  br i1 %cmp, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %bit, align 8, !dbg !275
  store i64 %6, ptr %retval, align 8, !dbg !276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !276

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !277
  %8 = load ptr, ptr %addr2.addr, align 8, !dbg !278
  %9 = load i64, ptr %offset.addr, align 8, !dbg !279
  %call1 = call i64 @find_first_and_bit(ptr noundef %7, ptr noundef %8, i64 noundef %9) #10, !dbg !280
  store i64 %call1, ptr %bit, align 8, !dbg !281
  %10 = load i64, ptr %bit, align 8, !dbg !282
  %11 = load i64, ptr %offset.addr, align 8, !dbg !283
  %cmp2 = icmp ult i64 %10, %11, !dbg !284
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !282

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %bit, align 8, !dbg !285
  br label %cond.end, !dbg !282

cond.false:                                       ; preds = %if.end
  %13 = load i64, ptr %size.addr, align 8, !dbg !286
  br label %cond.end, !dbg !282

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !282
  store i64 %cond, ptr %retval, align 8, !dbg !287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !287

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit) #9, !dbg !288
  %14 = load i64, ptr %retval, align 8, !dbg !288
  ret i64 %14, !dbg !288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpumask_any_distribute(ptr noundef %srcp) #4 align 16 !dbg !289 {
entry:
  %srcp.addr = alloca ptr, align 8
  %next = alloca i32, align 4
  %prev = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify10 = alloca ptr, align 8
  %pto_val__ = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !293, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #9, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %next, metadata !294, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev) #9, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !295, metadata !DIExpression()), !dbg !313
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !314
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !296, metadata !DIExpression()), !dbg !315
  br label %do.body, !dbg !315

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !299, metadata !DIExpression()), !dbg !316
  store ptr null, ptr %__vpp_verify, align 8, !dbg !316
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !315
  br label %do.cond, !dbg !316

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !316

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !301, metadata !DIExpression()), !dbg !317
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @distribute_cpu_mask_prev) #11, !dbg !317, !srcloc !318
  store i32 %1, ptr %pfo_val__, align 4, !dbg !317
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !317
  %conv = zext i32 %2 to i64, !dbg !317
  %conv2 = trunc i64 %conv to i32, !dbg !317
  store i32 %conv2, ptr %tmp1, align 4, !dbg !317
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !315
  %3 = load i32, ptr %tmp1, align 4, !dbg !317
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !315
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !315
  store i32 %4, ptr %tmp3, align 4, !dbg !315
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !314
  %5 = load i32, ptr %tmp3, align 4, !dbg !315
  store i32 %5, ptr %tmp, align 4, !dbg !314
  %6 = load i32, ptr %tmp, align 4, !dbg !314
  store i32 %6, ptr %prev, align 4, !dbg !319
  %7 = load ptr, ptr %srcp.addr, align 8, !dbg !320
  %bits = getelementptr inbounds %struct.cpumask, ptr %7, i32 0, i32 0, !dbg !320
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !320
  %8 = load i32, ptr @nr_cpu_ids, align 4, !dbg !321
  %conv4 = zext i32 %8 to i64, !dbg !321
  %9 = load i32, ptr %prev, align 4, !dbg !322
  %add = add i32 %9, 1, !dbg !323
  %conv5 = zext i32 %add to i64, !dbg !322
  %call = call i64 @find_next_bit_wrap(ptr noundef %arraydecay, i64 noundef %conv4, i64 noundef %conv5) #10, !dbg !324
  %conv6 = trunc i64 %call to i32, !dbg !324
  store i32 %conv6, ptr %next, align 4, !dbg !325
  %10 = load i32, ptr %next, align 4, !dbg !326
  %11 = load i32, ptr @nr_cpu_ids, align 4, !dbg !327
  %cmp = icmp ult i32 %10, %11, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #10, !dbg !330
  br label %do.body8, !dbg !330

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !331

do.body9:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify10) #9, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify10, metadata !303, metadata !DIExpression()), !dbg !332
  store ptr null, ptr %__vpp_verify10, align 8, !dbg !332
  %12 = load ptr, ptr %__vpp_verify10, align 8, !dbg !332
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify10) #9, !dbg !331
  br label %do.cond11, !dbg !332

do.cond11:                                        ; preds = %do.body9
  br label %do.end12, !dbg !332

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !331

do.body13:                                        ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #9, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !308, metadata !DIExpression()), !dbg !333
  %13 = load i32, ptr %next, align 4, !dbg !333
  %conv14 = zext i32 %13 to i64, !dbg !333
  %and = and i64 %conv14, 4294967295, !dbg !333
  %conv15 = trunc i64 %and to i32, !dbg !333
  store i32 %conv15, ptr %pto_val__, align 4, !dbg !333
  %14 = load i32, ptr %pto_val__, align 4, !dbg !333
  call void asm "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @distribute_cpu_mask_prev, i32 %14, ptr elementtype(i32) @distribute_cpu_mask_prev) #9, !dbg !333, !srcloc !334
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #9, !dbg !331
  br label %do.cond16, !dbg !333

do.cond16:                                        ; preds = %do.body13
  br label %do.end17, !dbg !333

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !331

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !331

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !335

if.end:                                           ; preds = %do.end19, %do.end
  %15 = load i32, ptr %next, align 4, !dbg !336
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #9, !dbg !337
  ret i32 %15, !dbg !338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit_wrap(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !339 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %bit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !343, metadata !DIExpression()), !dbg !347
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !344, metadata !DIExpression()), !dbg !348
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !345, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit) #9, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !346, metadata !DIExpression()), !dbg !351
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !352
  %1 = load i64, ptr %size.addr, align 8, !dbg !353
  %2 = load i64, ptr %offset.addr, align 8, !dbg !354
  %call = call i64 @find_next_bit(ptr noundef %0, i64 noundef %1, i64 noundef %2) #10, !dbg !355
  store i64 %call, ptr %bit, align 8, !dbg !351
  %3 = load i64, ptr %bit, align 8, !dbg !356
  %4 = load i64, ptr %size.addr, align 8, !dbg !358
  %cmp = icmp ult i64 %3, %4, !dbg !359
  br i1 %cmp, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %bit, align 8, !dbg !361
  store i64 %5, ptr %retval, align 8, !dbg !362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !363
  %7 = load i64, ptr %offset.addr, align 8, !dbg !364
  %call1 = call i64 @find_first_bit(ptr noundef %6, i64 noundef %7) #10, !dbg !365
  store i64 %call1, ptr %bit, align 8, !dbg !366
  %8 = load i64, ptr %bit, align 8, !dbg !367
  %9 = load i64, ptr %offset.addr, align 8, !dbg !368
  %cmp2 = icmp ult i64 %8, %9, !dbg !369
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !367

cond.true:                                        ; preds = %if.end
  %10 = load i64, ptr %bit, align 8, !dbg !370
  br label %cond.end, !dbg !367

cond.false:                                       ; preds = %if.end
  %11 = load i64, ptr %size.addr, align 8, !dbg !371
  br label %cond.end, !dbg !367

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !367
  store i64 %cond, ptr %retval, align 8, !dbg !372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !372

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit) #9, !dbg !373
  %12 = load i64, ptr %retval, align 8, !dbg !373
  ret i64 %12, !dbg !373
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !374 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !380
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #10, !dbg !381
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !382
  ret i32 %1, !dbg !383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !384 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !386, metadata !DIExpression()), !dbg !392
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !387, metadata !DIExpression()), !dbg !393
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !388, metadata !DIExpression()), !dbg !394
  %0 = load i64, ptr %size.addr, align 8, !dbg !395
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !395
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !395

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !395
  %cmp = icmp ule i64 %2, 64, !dbg !395
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !395

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !395
  %cmp2 = icmp ugt i64 %3, 0, !dbg !395
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !396

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %val, metadata !389, metadata !DIExpression()), !dbg !398
  %4 = load i64, ptr %offset.addr, align 8, !dbg !399
  %5 = load i64, ptr %size.addr, align 8, !dbg !399
  %cmp3 = icmp uge i64 %4, %5, !dbg !399
  %lnot = xor i1 %cmp3, true, !dbg !399
  %lnot4 = xor i1 %lnot, true, !dbg !399
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !399
  %conv = sext i32 %lnot.ext to i64, !dbg !399
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !399
  %tobool = icmp ne i64 %expval, 0, !dbg !399
  br i1 %tobool, label %if.then5, label %if.end, !dbg !401

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !402
  store i64 %6, ptr %retval, align 8, !dbg !403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !403

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !404
  %8 = load i64, ptr %7, align 8, !dbg !405
  %9 = load i64, ptr %offset.addr, align 8, !dbg !406
  %shl = shl i64 1, %9, !dbg !406
  %sub = sub i64 -1, %shl, !dbg !406
  %add = add i64 %sub, 1, !dbg !406
  %10 = load i64, ptr %size.addr, align 8, !dbg !406
  %sub6 = sub i64 %10, 1, !dbg !406
  %sub7 = sub i64 63, %sub6, !dbg !406
  %shr = lshr i64 -1, %sub7, !dbg !406
  %and = and i64 %add, %shr, !dbg !406
  %add8 = add i64 0, %and, !dbg !406
  %and9 = and i64 %8, %add8, !dbg !407
  store i64 %and9, ptr %val, align 8, !dbg !408
  %11 = load i64, ptr %val, align 8, !dbg !409
  %tobool10 = icmp ne i64 %11, 0, !dbg !409
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !409

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !410
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !410
  br i1 %13, label %cond.true11, label %cond.false, !dbg !410

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !410
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !410
  %cast = trunc i64 %15 to i32, !dbg !410
  %conv12 = sext i32 %cast to i64, !dbg !410
  br label %cond.end, !dbg !410

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !410
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !410
  br label %cond.end, !dbg !410

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !410
  br label %cond.end14, !dbg !409

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !411
  br label %cond.end14, !dbg !409

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !409
  store i64 %cond15, ptr %retval, align 8, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !413
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !414
  %19 = load i64, ptr %size.addr, align 8, !dbg !415
  %20 = load i64, ptr %offset.addr, align 8, !dbg !416
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !417
  store i64 %call17, ptr %retval, align 8, !dbg !418
  br label %return, !dbg !418

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !419
  ret i64 %21, !dbg !419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !420 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !424, metadata !DIExpression()), !dbg !426
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !425, metadata !DIExpression()), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !429 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i64, ptr %word.addr, align 8, !dbg !436
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !437, !srcloc !438
  store i64 %1, ptr %word.addr, align 8, !dbg !437
  %2 = load i64, ptr %word.addr, align 8, !dbg !439
  ret i64 %2, !dbg !440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !441 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !442 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load ptr, ptr %v.addr, align 8, !dbg !455
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !456
  ret i32 %call, !dbg !457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !458 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %v.addr, align 8, !dbg !463
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !463
  %1 = load volatile i32, ptr %counter, align 4, !dbg !463
  ret i32 %1, !dbg !464
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !465 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !467, metadata !DIExpression()), !dbg !474
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !468, metadata !DIExpression()), !dbg !475
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !469, metadata !DIExpression()), !dbg !476
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !470, metadata !DIExpression()), !dbg !477
  %0 = load i64, ptr %size.addr, align 8, !dbg !478
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !478
  br i1 %1, label %land.lhs.true, label %if.end17, !dbg !478

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !478
  %cmp = icmp ule i64 %2, 64, !dbg !478
  br i1 %cmp, label %land.lhs.true1, label %if.end17, !dbg !478

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !478
  %cmp2 = icmp ugt i64 %3, 0, !dbg !478
  br i1 %cmp2, label %if.then, label %if.end17, !dbg !479

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !480
  call void @llvm.dbg.declare(metadata ptr %val, metadata !471, metadata !DIExpression()), !dbg !481
  %4 = load i64, ptr %offset.addr, align 8, !dbg !482
  %5 = load i64, ptr %size.addr, align 8, !dbg !482
  %cmp3 = icmp uge i64 %4, %5, !dbg !482
  %lnot = xor i1 %cmp3, true, !dbg !482
  %lnot4 = xor i1 %lnot, true, !dbg !482
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !482
  %conv = sext i32 %lnot.ext to i64, !dbg !482
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !482
  %tobool = icmp ne i64 %expval, 0, !dbg !482
  br i1 %tobool, label %if.then5, label %if.end, !dbg !484

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !485
  store i64 %6, ptr %retval, align 8, !dbg !486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !486

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !487
  %8 = load i64, ptr %7, align 8, !dbg !488
  %9 = load ptr, ptr %addr2.addr, align 8, !dbg !489
  %10 = load i64, ptr %9, align 8, !dbg !490
  %and = and i64 %8, %10, !dbg !491
  %11 = load i64, ptr %offset.addr, align 8, !dbg !492
  %shl = shl i64 1, %11, !dbg !492
  %sub = sub i64 -1, %shl, !dbg !492
  %add = add i64 %sub, 1, !dbg !492
  %12 = load i64, ptr %size.addr, align 8, !dbg !492
  %sub6 = sub i64 %12, 1, !dbg !492
  %sub7 = sub i64 63, %sub6, !dbg !492
  %shr = lshr i64 -1, %sub7, !dbg !492
  %and8 = and i64 %add, %shr, !dbg !492
  %add9 = add i64 0, %and8, !dbg !492
  %and10 = and i64 %and, %add9, !dbg !493
  store i64 %and10, ptr %val, align 8, !dbg !494
  %13 = load i64, ptr %val, align 8, !dbg !495
  %tobool11 = icmp ne i64 %13, 0, !dbg !495
  br i1 %tobool11, label %cond.true, label %cond.false14, !dbg !495

cond.true:                                        ; preds = %if.end
  %14 = load i64, ptr %val, align 8, !dbg !496
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !496
  br i1 %15, label %cond.true12, label %cond.false, !dbg !496

cond.true12:                                      ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !496
  %17 = call i64 @llvm.cttz.i64(i64 %16, i1 true), !dbg !496
  %cast = trunc i64 %17 to i32, !dbg !496
  %conv13 = sext i32 %cast to i64, !dbg !496
  br label %cond.end, !dbg !496

cond.false:                                       ; preds = %cond.true
  %18 = load i64, ptr %val, align 8, !dbg !496
  %call = call i64 @variable__ffs(i64 noundef %18) #10, !dbg !496
  br label %cond.end, !dbg !496

cond.end:                                         ; preds = %cond.false, %cond.true12
  %cond = phi i64 [ %conv13, %cond.true12 ], [ %call, %cond.false ], !dbg !496
  br label %cond.end15, !dbg !495

cond.false14:                                     ; preds = %if.end
  %19 = load i64, ptr %size.addr, align 8, !dbg !497
  br label %cond.end15, !dbg !495

cond.end15:                                       ; preds = %cond.false14, %cond.end
  %cond16 = phi i64 [ %cond, %cond.end ], [ %19, %cond.false14 ], !dbg !495
  store i64 %cond16, ptr %retval, align 8, !dbg !498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %cond.end15, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !499
  br label %return

if.end17:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %20 = load ptr, ptr %addr1.addr, align 8, !dbg !500
  %21 = load ptr, ptr %addr2.addr, align 8, !dbg !501
  %22 = load i64, ptr %size.addr, align 8, !dbg !502
  %23 = load i64, ptr %offset.addr, align 8, !dbg !503
  %call18 = call i64 @_find_next_and_bit(ptr noundef %20, ptr noundef %21, i64 noundef %22, i64 noundef %23) #10, !dbg !504
  store i64 %call18, ptr %retval, align 8, !dbg !505
  br label %return, !dbg !505

return:                                           ; preds = %if.end17, %cleanup
  %24 = load i64, ptr %retval, align 8, !dbg !506
  ret i64 %24, !dbg !506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size) #3 align 16 !dbg !507 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !511, metadata !DIExpression()), !dbg !517
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !512, metadata !DIExpression()), !dbg !518
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !513, metadata !DIExpression()), !dbg !519
  %0 = load i64, ptr %size.addr, align 8, !dbg !520
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !520
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !520

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !520
  %cmp = icmp ule i64 %2, 64, !dbg !520
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !520

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !520
  %cmp2 = icmp ugt i64 %3, 0, !dbg !520
  br i1 %cmp2, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %val, metadata !514, metadata !DIExpression()), !dbg !523
  %4 = load ptr, ptr %addr1.addr, align 8, !dbg !524
  %5 = load i64, ptr %4, align 8, !dbg !525
  %6 = load ptr, ptr %addr2.addr, align 8, !dbg !526
  %7 = load i64, ptr %6, align 8, !dbg !527
  %and = and i64 %5, %7, !dbg !528
  %8 = load i64, ptr %size.addr, align 8, !dbg !529
  %sub = sub i64 %8, 1, !dbg !529
  %sub3 = sub i64 63, %sub, !dbg !529
  %shr = lshr i64 -1, %sub3, !dbg !529
  %and4 = and i64 -1, %shr, !dbg !529
  %add = add i64 0, %and4, !dbg !529
  %and5 = and i64 %and, %add, !dbg !530
  store i64 %and5, ptr %val, align 8, !dbg !523
  %9 = load i64, ptr %val, align 8, !dbg !531
  %tobool = icmp ne i64 %9, 0, !dbg !531
  br i1 %tobool, label %cond.true, label %cond.false7, !dbg !531

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %val, align 8, !dbg !532
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !532
  br i1 %11, label %cond.true6, label %cond.false, !dbg !532

cond.true6:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !532
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !532
  %cast = trunc i64 %13 to i32, !dbg !532
  %conv = sext i32 %cast to i64, !dbg !532
  br label %cond.end, !dbg !532

cond.false:                                       ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !532
  %call = call i64 @variable__ffs(i64 noundef %14) #10, !dbg !532
  br label %cond.end, !dbg !532

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i64 [ %conv, %cond.true6 ], [ %call, %cond.false ], !dbg !532
  br label %cond.end8, !dbg !531

cond.false7:                                      ; preds = %if.then
  %15 = load i64, ptr %size.addr, align 8, !dbg !533
  br label %cond.end8, !dbg !531

cond.end8:                                        ; preds = %cond.false7, %cond.end
  %cond9 = phi i64 [ %cond, %cond.end ], [ %15, %cond.false7 ], !dbg !531
  store i64 %cond9, ptr %retval, align 8, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !535
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %16 = load ptr, ptr %addr1.addr, align 8, !dbg !536
  %17 = load ptr, ptr %addr2.addr, align 8, !dbg !537
  %18 = load i64, ptr %size.addr, align 8, !dbg !538
  %call10 = call i64 @_find_first_and_bit(ptr noundef %16, ptr noundef %17, i64 noundef %18) #10, !dbg !539
  store i64 %call10, ptr %retval, align 8, !dbg !540
  br label %return, !dbg !540

return:                                           ; preds = %if.end, %cond.end8
  %19 = load i64, ptr %retval, align 8, !dbg !541
  ret i64 %19, !dbg !541
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !542 dso_local i64 @_find_next_and_bit(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !543 dso_local i64 @_find_first_and_bit(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !544 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !548, metadata !DIExpression()), !dbg !553
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !549, metadata !DIExpression()), !dbg !554
  %0 = load i64, ptr %size.addr, align 8, !dbg !555
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !555
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !555

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !555
  %cmp = icmp ule i64 %2, 64, !dbg !555
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !555

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !555
  %cmp2 = icmp ugt i64 %3, 0, !dbg !555
  br i1 %cmp2, label %if.then, label %if.end, !dbg !556

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %val, metadata !550, metadata !DIExpression()), !dbg !558
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !559
  %5 = load i64, ptr %4, align 8, !dbg !560
  %6 = load i64, ptr %size.addr, align 8, !dbg !561
  %sub = sub i64 %6, 1, !dbg !561
  %sub3 = sub i64 63, %sub, !dbg !561
  %shr = lshr i64 -1, %sub3, !dbg !561
  %and = and i64 -1, %shr, !dbg !561
  %add = add i64 0, %and, !dbg !561
  %and4 = and i64 %5, %add, !dbg !562
  store i64 %and4, ptr %val, align 8, !dbg !558
  %7 = load i64, ptr %val, align 8, !dbg !563
  %tobool = icmp ne i64 %7, 0, !dbg !563
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !563

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !564
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !564
  br i1 %9, label %cond.true5, label %cond.false, !dbg !564

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !564
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !564
  %cast = trunc i64 %11 to i32, !dbg !564
  %conv = sext i32 %cast to i64, !dbg !564
  br label %cond.end, !dbg !564

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !564
  %call = call i64 @variable__ffs(i64 noundef %12) #10, !dbg !564
  br label %cond.end, !dbg !564

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !564
  br label %cond.end7, !dbg !563

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !565
  br label %cond.end7, !dbg !563

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !563
  store i64 %cond8, ptr %retval, align 8, !dbg !566
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !567
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !568
  %15 = load i64, ptr %size.addr, align 8, !dbg !569
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #10, !dbg !570
  store i64 %call9, ptr %retval, align 8, !dbg !571
  br label %return, !dbg !571

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !572
  ret i64 %16, !dbg !572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !573 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpumask_next_wrap277", scope: !2, file: !3, line: 40, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.cpumask.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/cpumask\22 -D KBUILD_BASENAME=\22cpumask\22 -D KBUILD_MODNAME=\22cpumask\22 -D __KBUILD_MODNAME=kmod_cpumask -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/cpumask.ll lib/cpumask.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/cpumask.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28dca7406fdcc118e3afad661491d24")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !23, !24, !20, !25, !7, !29}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !16, line: 19, size: 64, elements: !17)
!16 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !15, file: !16, line: 19, baseType: !19, size: 64)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !21)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 1)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!32 = !{!0, !33, !39, !41, !46, !51, !53, !55}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 112, elements: !37)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !{!38}
!38 = !DISubrange(count: 14)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpumask_local_spread278", scope: !2, file: !3, line: 154, type: !12, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 40, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 5)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 48, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 6)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpumask_any_and_distribute279", scope: !2, file: !3, line: 183, type: !12, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpumask_any_distribute280", scope: !2, file: !3, line: 197, type: !12, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "distribute_cpu_mask_prev", scope: !2, file: !3, line: 156, type: !24, isLocal: true, isDefinition: true)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 8, !"cf-protection-branch", i32 1}
!61 = !{i32 4, !"function_return_thunk_extern", i32 1}
!62 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!63 = !{i32 1, !"Code Model", i32 2}
!64 = !{i32 1, !"override-stack-alignment", i32 8}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = distinct !DISubprogram(name: "cpumask_next_wrap", scope: !3, file: !3, line: 22, type: !67, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!67 = !DISubroutineType(types: !68)
!68 = !{!7, !24, !13, !24, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 35, baseType: !71)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DILocalVariable(name: "n", arg: 1, scope: !66, file: !3, line: 22, type: !24)
!74 = !DILocalVariable(name: "mask", arg: 2, scope: !66, file: !3, line: 22, type: !13)
!75 = !DILocalVariable(name: "start", arg: 3, scope: !66, file: !3, line: 22, type: !24)
!76 = !DILocalVariable(name: "wrap", arg: 4, scope: !66, file: !3, line: 22, type: !69)
!77 = !DILocalVariable(name: "next", scope: !66, file: !3, line: 24, type: !7)
!78 = !DILabel(scope: !66, name: "again", file: !3, line: 26)
!79 = !DILocation(line: 22, column: 36, scope: !66)
!80 = !DILocation(line: 22, column: 61, scope: !66)
!81 = !DILocation(line: 22, column: 71, scope: !66)
!82 = !DILocation(line: 22, column: 83, scope: !66)
!83 = !DILocation(line: 24, column: 2, scope: !66)
!84 = !DILocation(line: 24, column: 15, scope: !66)
!85 = !DILocation(line: 26, column: 1, scope: !66)
!86 = !DILocation(line: 27, column: 22, scope: !66)
!87 = !DILocation(line: 27, column: 25, scope: !66)
!88 = !DILocation(line: 27, column: 9, scope: !66)
!89 = !DILocation(line: 27, column: 7, scope: !66)
!90 = !DILocation(line: 29, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !66, file: !3, line: 29, column: 6)
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !DILocation(line: 29, column: 11, scope: !91)
!95 = !DILocation(line: 29, column: 14, scope: !91)
!96 = !DILocation(line: 29, column: 18, scope: !91)
!97 = !DILocation(line: 29, column: 16, scope: !91)
!98 = !DILocation(line: 29, column: 24, scope: !91)
!99 = !DILocation(line: 29, column: 27, scope: !91)
!100 = !DILocation(line: 29, column: 35, scope: !91)
!101 = !DILocation(line: 29, column: 32, scope: !91)
!102 = !DILocation(line: 29, column: 6, scope: !66)
!103 = !DILocation(line: 30, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !91, file: !3, line: 29, column: 42)
!105 = !DILocation(line: 30, column: 3, scope: !104)
!106 = !DILocation(line: 32, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !91, file: !3, line: 32, column: 13)
!108 = !DILocation(line: 32, column: 21, scope: !107)
!109 = !DILocation(line: 32, column: 18, scope: !107)
!110 = !DILocation(line: 32, column: 13, scope: !91)
!111 = !DILocation(line: 33, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 32, column: 38)
!113 = !DILocation(line: 34, column: 5, scope: !112)
!114 = !DILocation(line: 35, column: 3, scope: !112)
!115 = !DILocation(line: 38, column: 9, scope: !66)
!116 = !DILocation(line: 38, column: 2, scope: !66)
!117 = !DILocation(line: 39, column: 1, scope: !66)
!118 = distinct !DISubprogram(name: "cpumask_next", scope: !16, file: !16, line: 208, type: !119, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!7, !24, !13}
!121 = !{!122, !123}
!122 = !DILocalVariable(name: "n", arg: 1, scope: !118, file: !16, line: 208, type: !24)
!123 = !DILocalVariable(name: "srcp", arg: 2, scope: !118, file: !16, line: 208, type: !13)
!124 = !DILocation(line: 208, column: 31, scope: !118)
!125 = !DILocation(line: 208, column: 56, scope: !118)
!126 = !DILocation(line: 211, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !16, line: 211, column: 6)
!128 = !DILocation(line: 211, column: 8, scope: !127)
!129 = !DILocation(line: 211, column: 6, scope: !118)
!130 = !DILocation(line: 212, column: 17, scope: !127)
!131 = !DILocation(line: 212, column: 3, scope: !127)
!132 = !DILocation(line: 213, column: 23, scope: !118)
!133 = !DILocation(line: 213, column: 63, scope: !118)
!134 = !DILocation(line: 213, column: 65, scope: !118)
!135 = !DILocation(line: 213, column: 9, scope: !118)
!136 = !DILocation(line: 213, column: 2, scope: !118)
!137 = distinct !DISubprogram(name: "cpumask_local_spread", scope: !3, file: !3, line: 142, type: !138, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!7, !7, !24}
!140 = !{!141, !142, !143, !144, !146}
!141 = !DILocalVariable(name: "i", arg: 1, scope: !137, file: !3, line: 142, type: !7)
!142 = !DILocalVariable(name: "node", arg: 2, scope: !137, file: !3, line: 142, type: !24)
!143 = !DILocalVariable(name: "cpu", scope: !137, file: !3, line: 144, type: !7)
!144 = !DILocalVariable(name: "__ret_warn_on", scope: !145, file: !3, line: 151, type: !24)
!145 = distinct !DILexicalBlock(scope: !137, file: !3, line: 151, column: 2)
!146 = !DILocalVariable(name: "__flags", scope: !147, file: !3, line: 151, type: !24)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 151, column: 2)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 151, column: 2)
!149 = !DILocation(line: 142, column: 48, scope: !137)
!150 = !DILocation(line: 142, column: 55, scope: !137)
!151 = !DILocation(line: 144, column: 2, scope: !137)
!152 = !DILocation(line: 144, column: 15, scope: !137)
!153 = !DILocation(line: 147, column: 7, scope: !137)
!154 = !DILocation(line: 147, column: 4, scope: !137)
!155 = !DILocation(line: 149, column: 49, scope: !137)
!156 = !DILocation(line: 149, column: 52, scope: !137)
!157 = !DILocation(line: 149, column: 8, scope: !137)
!158 = !DILocation(line: 149, column: 6, scope: !137)
!159 = !DILocation(line: 151, column: 2, scope: !145)
!160 = !DILocation(line: 151, column: 2, scope: !148)
!161 = !DILocation(line: 151, column: 2, scope: !147)
!162 = !DILocation(line: 151, column: 2, scope: !163)
!163 = distinct !DILexicalBlock(scope: !147, file: !3, line: 151, column: 2)
!164 = !DILocation(line: 151, column: 2, scope: !165)
!165 = distinct !DILexicalBlock(scope: !147, file: !3, line: 151, column: 2)
!166 = !{i64 2154025820, i64 2154025849, i64 2154025895, i64 2154025953, i64 2154026007, i64 2154026061, i64 2154026116, i64 2154026147, i64 2154026455, i64 2154026461, i64 2154026508, i64 2154026531, i64 2154026557}
!167 = !DILocation(line: 151, column: 2, scope: !168)
!168 = distinct !DILexicalBlock(scope: !147, file: !3, line: 151, column: 2)
!169 = !DILocation(line: 151, column: 2, scope: !137)
!170 = !DILocation(line: 152, column: 9, scope: !137)
!171 = !DILocation(line: 153, column: 1, scope: !137)
!172 = !DILocation(line: 152, column: 2, scope: !137)
!173 = distinct !DISubprogram(name: "num_online_cpus", scope: !16, file: !16, line: 1072, type: !174, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!174 = !DISubroutineType(types: !175)
!175 = !{!7}
!176 = !DILocation(line: 1074, column: 9, scope: !173)
!177 = !DILocation(line: 1074, column: 2, scope: !173)
!178 = !DISubprogram(name: "sched_numa_find_nth_cpu", scope: !179, file: !179, line: 249, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!180 = !DISubroutineType(types: !181)
!181 = !{!24, !13, !24, !24}
!182 = distinct !DISubprogram(name: "cpumask_any_and_distribute", scope: !3, file: !3, line: 168, type: !183, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!7, !13, !13}
!185 = !{!186, !187, !188, !189, !190, !193, !197, !199, !204}
!186 = !DILocalVariable(name: "src1p", arg: 1, scope: !182, file: !3, line: 168, type: !13)
!187 = !DILocalVariable(name: "src2p", arg: 2, scope: !182, file: !3, line: 169, type: !13)
!188 = !DILocalVariable(name: "next", scope: !182, file: !3, line: 171, type: !7)
!189 = !DILocalVariable(name: "prev", scope: !182, file: !3, line: 171, type: !7)
!190 = !DILocalVariable(name: "pscr_ret__", scope: !191, file: !3, line: 174, type: !24)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 174, column: 9)
!192 = distinct !DILexicalBlock(scope: !182, file: !3, line: 174, column: 9)
!193 = !DILocalVariable(name: "__vpp_verify", scope: !194, file: !3, line: 174, type: !195)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 174, column: 9)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!197 = !DILocalVariable(name: "pfo_val__", scope: !198, file: !3, line: 174, type: !25)
!198 = distinct !DILexicalBlock(scope: !191, file: !3, line: 174, column: 9)
!199 = !DILocalVariable(name: "__vpp_verify", scope: !200, file: !3, line: 179, type: !195)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 179, column: 3)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 179, column: 3)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 179, column: 3)
!203 = distinct !DILexicalBlock(scope: !182, file: !3, line: 178, column: 6)
!204 = !DILocalVariable(name: "pto_val__", scope: !205, file: !3, line: 179, type: !25)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 179, column: 3)
!206 = !DILocation(line: 168, column: 63, scope: !182)
!207 = !DILocation(line: 169, column: 33, scope: !182)
!208 = !DILocation(line: 171, column: 2, scope: !182)
!209 = !DILocation(line: 171, column: 15, scope: !182)
!210 = !DILocation(line: 171, column: 21, scope: !182)
!211 = !DILocation(line: 174, column: 9, scope: !192)
!212 = !DILocation(line: 174, column: 9, scope: !191)
!213 = !DILocation(line: 174, column: 9, scope: !194)
!214 = !DILocation(line: 174, column: 9, scope: !198)
!215 = !{i64 2154031588}
!216 = !DILocation(line: 174, column: 7, scope: !182)
!217 = !DILocation(line: 176, column: 32, scope: !182)
!218 = !DILocation(line: 176, column: 53, scope: !182)
!219 = !DILocation(line: 177, column: 6, scope: !182)
!220 = !DILocation(line: 177, column: 23, scope: !182)
!221 = !DILocation(line: 177, column: 28, scope: !182)
!222 = !DILocation(line: 176, column: 9, scope: !182)
!223 = !DILocation(line: 176, column: 7, scope: !182)
!224 = !DILocation(line: 178, column: 6, scope: !203)
!225 = !DILocation(line: 178, column: 13, scope: !203)
!226 = !DILocation(line: 178, column: 11, scope: !203)
!227 = !DILocation(line: 178, column: 6, scope: !182)
!228 = !DILocation(line: 179, column: 3, scope: !202)
!229 = !DILocation(line: 179, column: 3, scope: !201)
!230 = !DILocation(line: 179, column: 3, scope: !200)
!231 = !DILocation(line: 179, column: 3, scope: !205)
!232 = !{i64 2154035751}
!233 = !DILocation(line: 179, column: 3, scope: !203)
!234 = !DILocation(line: 181, column: 9, scope: !182)
!235 = !DILocation(line: 182, column: 1, scope: !182)
!236 = !DILocation(line: 181, column: 2, scope: !182)
!237 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !238, file: !238, line: 313, type: !239, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!238 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!243 = !{!244}
!244 = !DILocalVariable(name: "op", arg: 1, scope: !237, file: !238, line: 313, type: !241)
!245 = !DILocation(line: 313, column: 66, scope: !237)
!246 = !DILocation(line: 313, column: 72, scope: !237)
!247 = distinct !DISubprogram(name: "find_next_and_bit_wrap", scope: !248, file: !248, line: 402, type: !249, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!248 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!249 = !DISubroutineType(types: !250)
!250 = !{!20, !251, !251, !20, !20}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!253 = !{!254, !255, !256, !257, !258}
!254 = !DILocalVariable(name: "addr1", arg: 1, scope: !247, file: !248, line: 402, type: !251)
!255 = !DILocalVariable(name: "addr2", arg: 2, scope: !247, file: !248, line: 403, type: !251)
!256 = !DILocalVariable(name: "size", arg: 3, scope: !247, file: !248, line: 404, type: !20)
!257 = !DILocalVariable(name: "offset", arg: 4, scope: !247, file: !248, line: 404, type: !20)
!258 = !DILocalVariable(name: "bit", scope: !247, file: !248, line: 406, type: !20)
!259 = !DILocation(line: 402, column: 59, scope: !247)
!260 = !DILocation(line: 403, column: 27, scope: !247)
!261 = !DILocation(line: 404, column: 20, scope: !247)
!262 = !DILocation(line: 404, column: 40, scope: !247)
!263 = !DILocation(line: 406, column: 2, scope: !247)
!264 = !DILocation(line: 406, column: 16, scope: !247)
!265 = !DILocation(line: 406, column: 40, scope: !247)
!266 = !DILocation(line: 406, column: 47, scope: !247)
!267 = !DILocation(line: 406, column: 54, scope: !247)
!268 = !DILocation(line: 406, column: 60, scope: !247)
!269 = !DILocation(line: 406, column: 22, scope: !247)
!270 = !DILocation(line: 408, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !247, file: !248, line: 408, column: 6)
!272 = !DILocation(line: 408, column: 12, scope: !271)
!273 = !DILocation(line: 408, column: 10, scope: !271)
!274 = !DILocation(line: 408, column: 6, scope: !247)
!275 = !DILocation(line: 409, column: 10, scope: !271)
!276 = !DILocation(line: 409, column: 3, scope: !271)
!277 = !DILocation(line: 411, column: 27, scope: !247)
!278 = !DILocation(line: 411, column: 34, scope: !247)
!279 = !DILocation(line: 411, column: 41, scope: !247)
!280 = !DILocation(line: 411, column: 8, scope: !247)
!281 = !DILocation(line: 411, column: 6, scope: !247)
!282 = !DILocation(line: 412, column: 9, scope: !247)
!283 = !DILocation(line: 412, column: 15, scope: !247)
!284 = !DILocation(line: 412, column: 13, scope: !247)
!285 = !DILocation(line: 412, column: 24, scope: !247)
!286 = !DILocation(line: 412, column: 30, scope: !247)
!287 = !DILocation(line: 412, column: 2, scope: !247)
!288 = !DILocation(line: 413, column: 1, scope: !247)
!289 = distinct !DISubprogram(name: "cpumask_any_distribute", scope: !3, file: !3, line: 185, type: !290, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!7, !13}
!292 = !{!293, !294, !295, !296, !299, !301, !303, !308}
!293 = !DILocalVariable(name: "srcp", arg: 1, scope: !289, file: !3, line: 185, type: !13)
!294 = !DILocalVariable(name: "next", scope: !289, file: !3, line: 187, type: !7)
!295 = !DILocalVariable(name: "prev", scope: !289, file: !3, line: 187, type: !7)
!296 = !DILocalVariable(name: "pscr_ret__", scope: !297, file: !3, line: 190, type: !24)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 190, column: 9)
!298 = distinct !DILexicalBlock(scope: !289, file: !3, line: 190, column: 9)
!299 = !DILocalVariable(name: "__vpp_verify", scope: !300, file: !3, line: 190, type: !195)
!300 = distinct !DILexicalBlock(scope: !297, file: !3, line: 190, column: 9)
!301 = !DILocalVariable(name: "pfo_val__", scope: !302, file: !3, line: 190, type: !25)
!302 = distinct !DILexicalBlock(scope: !297, file: !3, line: 190, column: 9)
!303 = !DILocalVariable(name: "__vpp_verify", scope: !304, file: !3, line: 193, type: !195)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 193, column: 3)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 193, column: 3)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 193, column: 3)
!307 = distinct !DILexicalBlock(scope: !289, file: !3, line: 192, column: 6)
!308 = !DILocalVariable(name: "pto_val__", scope: !309, file: !3, line: 193, type: !25)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 193, column: 3)
!310 = !DILocation(line: 185, column: 59, scope: !289)
!311 = !DILocation(line: 187, column: 2, scope: !289)
!312 = !DILocation(line: 187, column: 15, scope: !289)
!313 = !DILocation(line: 187, column: 21, scope: !289)
!314 = !DILocation(line: 190, column: 9, scope: !298)
!315 = !DILocation(line: 190, column: 9, scope: !297)
!316 = !DILocation(line: 190, column: 9, scope: !300)
!317 = !DILocation(line: 190, column: 9, scope: !302)
!318 = !{i64 2154041430}
!319 = !DILocation(line: 190, column: 7, scope: !289)
!320 = !DILocation(line: 191, column: 28, scope: !289)
!321 = !DILocation(line: 191, column: 48, scope: !289)
!322 = !DILocation(line: 191, column: 65, scope: !289)
!323 = !DILocation(line: 191, column: 70, scope: !289)
!324 = !DILocation(line: 191, column: 9, scope: !289)
!325 = !DILocation(line: 191, column: 7, scope: !289)
!326 = !DILocation(line: 192, column: 6, scope: !307)
!327 = !DILocation(line: 192, column: 13, scope: !307)
!328 = !DILocation(line: 192, column: 11, scope: !307)
!329 = !DILocation(line: 192, column: 6, scope: !289)
!330 = !DILocation(line: 193, column: 3, scope: !306)
!331 = !DILocation(line: 193, column: 3, scope: !305)
!332 = !DILocation(line: 193, column: 3, scope: !304)
!333 = !DILocation(line: 193, column: 3, scope: !309)
!334 = !{i64 2154049631}
!335 = !DILocation(line: 193, column: 3, scope: !307)
!336 = !DILocation(line: 195, column: 9, scope: !289)
!337 = !DILocation(line: 196, column: 1, scope: !289)
!338 = !DILocation(line: 195, column: 2, scope: !289)
!339 = distinct !DISubprogram(name: "find_next_bit_wrap", scope: !248, file: !248, line: 425, type: !340, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!20, !251, !20, !20}
!342 = !{!343, !344, !345, !346}
!343 = !DILocalVariable(name: "addr", arg: 1, scope: !339, file: !248, line: 425, type: !251)
!344 = !DILocalVariable(name: "size", arg: 2, scope: !339, file: !248, line: 426, type: !20)
!345 = !DILocalVariable(name: "offset", arg: 3, scope: !339, file: !248, line: 426, type: !20)
!346 = !DILocalVariable(name: "bit", scope: !339, file: !248, line: 428, type: !20)
!347 = !DILocation(line: 425, column: 55, scope: !339)
!348 = !DILocation(line: 426, column: 20, scope: !339)
!349 = !DILocation(line: 426, column: 40, scope: !339)
!350 = !DILocation(line: 428, column: 2, scope: !339)
!351 = !DILocation(line: 428, column: 16, scope: !339)
!352 = !DILocation(line: 428, column: 36, scope: !339)
!353 = !DILocation(line: 428, column: 42, scope: !339)
!354 = !DILocation(line: 428, column: 48, scope: !339)
!355 = !DILocation(line: 428, column: 22, scope: !339)
!356 = !DILocation(line: 430, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !339, file: !248, line: 430, column: 6)
!358 = !DILocation(line: 430, column: 12, scope: !357)
!359 = !DILocation(line: 430, column: 10, scope: !357)
!360 = !DILocation(line: 430, column: 6, scope: !339)
!361 = !DILocation(line: 431, column: 10, scope: !357)
!362 = !DILocation(line: 431, column: 3, scope: !357)
!363 = !DILocation(line: 433, column: 23, scope: !339)
!364 = !DILocation(line: 433, column: 29, scope: !339)
!365 = !DILocation(line: 433, column: 8, scope: !339)
!366 = !DILocation(line: 433, column: 6, scope: !339)
!367 = !DILocation(line: 434, column: 9, scope: !339)
!368 = !DILocation(line: 434, column: 15, scope: !339)
!369 = !DILocation(line: 434, column: 13, scope: !339)
!370 = !DILocation(line: 434, column: 24, scope: !339)
!371 = !DILocation(line: 434, column: 30, scope: !339)
!372 = !DILocation(line: 434, column: 2, scope: !339)
!373 = !DILocation(line: 435, column: 1, scope: !339)
!374 = distinct !DISubprogram(name: "cpumask_check", scope: !16, file: !16, line: 148, type: !375, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!7, !7}
!377 = !{!378}
!378 = !DILocalVariable(name: "cpu", arg: 1, scope: !374, file: !16, line: 148, type: !7)
!379 = !DILocation(line: 148, column: 64, scope: !374)
!380 = !DILocation(line: 150, column: 20, scope: !374)
!381 = !DILocation(line: 150, column: 2, scope: !374)
!382 = !DILocation(line: 151, column: 9, scope: !374)
!383 = !DILocation(line: 151, column: 2, scope: !374)
!384 = distinct !DISubprogram(name: "find_next_bit", scope: !248, file: !248, line: 54, type: !340, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386, !387, !388, !389}
!386 = !DILocalVariable(name: "addr", arg: 1, scope: !384, file: !248, line: 54, type: !251)
!387 = !DILocalVariable(name: "size", arg: 2, scope: !384, file: !248, line: 54, type: !20)
!388 = !DILocalVariable(name: "offset", arg: 3, scope: !384, file: !248, line: 55, type: !20)
!389 = !DILocalVariable(name: "val", scope: !390, file: !248, line: 58, type: !20)
!390 = distinct !DILexicalBlock(scope: !391, file: !248, line: 57, column: 31)
!391 = distinct !DILexicalBlock(scope: !384, file: !248, line: 57, column: 6)
!392 = !DILocation(line: 54, column: 50, scope: !384)
!393 = !DILocation(line: 54, column: 70, scope: !384)
!394 = !DILocation(line: 55, column: 22, scope: !384)
!395 = !DILocation(line: 57, column: 6, scope: !391)
!396 = !DILocation(line: 57, column: 6, scope: !384)
!397 = !DILocation(line: 58, column: 3, scope: !390)
!398 = !DILocation(line: 58, column: 17, scope: !390)
!399 = !DILocation(line: 60, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !390, file: !248, line: 60, column: 7)
!401 = !DILocation(line: 60, column: 7, scope: !390)
!402 = !DILocation(line: 61, column: 11, scope: !400)
!403 = !DILocation(line: 61, column: 4, scope: !400)
!404 = !DILocation(line: 63, column: 10, scope: !390)
!405 = !DILocation(line: 63, column: 9, scope: !390)
!406 = !DILocation(line: 63, column: 17, scope: !390)
!407 = !DILocation(line: 63, column: 15, scope: !390)
!408 = !DILocation(line: 63, column: 7, scope: !390)
!409 = !DILocation(line: 64, column: 10, scope: !390)
!410 = !DILocation(line: 64, column: 16, scope: !390)
!411 = !DILocation(line: 64, column: 29, scope: !390)
!412 = !DILocation(line: 64, column: 3, scope: !390)
!413 = !DILocation(line: 65, column: 2, scope: !391)
!414 = !DILocation(line: 67, column: 24, scope: !384)
!415 = !DILocation(line: 67, column: 30, scope: !384)
!416 = !DILocation(line: 67, column: 36, scope: !384)
!417 = !DILocation(line: 67, column: 9, scope: !384)
!418 = !DILocation(line: 67, column: 2, scope: !384)
!419 = !DILocation(line: 68, column: 1, scope: !384)
!420 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !16, file: !16, line: 140, type: !421, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !7, !7}
!423 = !{!424, !425}
!424 = !DILocalVariable(name: "cpu", arg: 1, scope: !420, file: !16, line: 140, type: !7)
!425 = !DILocalVariable(name: "bits", arg: 2, scope: !420, file: !16, line: 140, type: !7)
!426 = !DILocation(line: 140, column: 60, scope: !420)
!427 = !DILocation(line: 140, column: 78, scope: !420)
!428 = !DILocation(line: 145, column: 1, scope: !420)
!429 = distinct !DISubprogram(name: "variable__ffs", scope: !430, file: !430, line: 250, type: !431, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!430 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!431 = !DISubroutineType(types: !432)
!432 = !{!20, !20}
!433 = !{!434}
!434 = !DILocalVariable(name: "word", arg: 1, scope: !429, file: !430, line: 250, type: !20)
!435 = !DILocation(line: 250, column: 66, scope: !429)
!436 = !DILocation(line: 254, column: 11, scope: !429)
!437 = !DILocation(line: 252, column: 2, scope: !429)
!438 = !{i64 589749}
!439 = !DILocation(line: 255, column: 9, scope: !429)
!440 = !DILocation(line: 255, column: 2, scope: !429)
!441 = !DISubprogram(name: "_find_next_bit", scope: !248, file: !248, line: 11, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = distinct !DISubprogram(name: "raw_atomic_read", scope: !443, file: !443, line: 442, type: !444, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!443 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!444 = !DISubroutineType(types: !445)
!445 = !{!24, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 174, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 172, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !449, file: !70, line: 173, baseType: !24, size: 32)
!452 = !{!453}
!453 = !DILocalVariable(name: "v", arg: 1, scope: !442, file: !443, line: 442, type: !446)
!454 = !DILocation(line: 442, column: 33, scope: !442)
!455 = !DILocation(line: 444, column: 26, scope: !442)
!456 = !DILocation(line: 444, column: 9, scope: !442)
!457 = !DILocation(line: 444, column: 2, scope: !442)
!458 = distinct !DISubprogram(name: "arch_atomic_read", scope: !459, file: !459, line: 17, type: !444, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !460)
!459 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!460 = !{!461}
!461 = !DILocalVariable(name: "v", arg: 1, scope: !458, file: !459, line: 17, type: !446)
!462 = !DILocation(line: 17, column: 61, scope: !458)
!463 = !DILocation(line: 23, column: 9, scope: !458)
!464 = !DILocation(line: 23, column: 2, scope: !458)
!465 = distinct !DISubprogram(name: "find_next_and_bit", scope: !248, file: !248, line: 83, type: !249, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!466 = !{!467, !468, !469, !470, !471}
!467 = !DILocalVariable(name: "addr1", arg: 1, scope: !465, file: !248, line: 83, type: !251)
!468 = !DILocalVariable(name: "addr2", arg: 2, scope: !465, file: !248, line: 84, type: !251)
!469 = !DILocalVariable(name: "size", arg: 3, scope: !465, file: !248, line: 84, type: !20)
!470 = !DILocalVariable(name: "offset", arg: 4, scope: !465, file: !248, line: 85, type: !20)
!471 = !DILocalVariable(name: "val", scope: !472, file: !248, line: 88, type: !20)
!472 = distinct !DILexicalBlock(scope: !473, file: !248, line: 87, column: 31)
!473 = distinct !DILexicalBlock(scope: !465, file: !248, line: 87, column: 6)
!474 = !DILocation(line: 83, column: 54, scope: !465)
!475 = !DILocation(line: 84, column: 24, scope: !465)
!476 = !DILocation(line: 84, column: 45, scope: !465)
!477 = !DILocation(line: 85, column: 17, scope: !465)
!478 = !DILocation(line: 87, column: 6, scope: !473)
!479 = !DILocation(line: 87, column: 6, scope: !465)
!480 = !DILocation(line: 88, column: 3, scope: !472)
!481 = !DILocation(line: 88, column: 17, scope: !472)
!482 = !DILocation(line: 90, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !472, file: !248, line: 90, column: 7)
!484 = !DILocation(line: 90, column: 7, scope: !472)
!485 = !DILocation(line: 91, column: 11, scope: !483)
!486 = !DILocation(line: 91, column: 4, scope: !483)
!487 = !DILocation(line: 93, column: 10, scope: !472)
!488 = !DILocation(line: 93, column: 9, scope: !472)
!489 = !DILocation(line: 93, column: 19, scope: !472)
!490 = !DILocation(line: 93, column: 18, scope: !472)
!491 = !DILocation(line: 93, column: 16, scope: !472)
!492 = !DILocation(line: 93, column: 27, scope: !472)
!493 = !DILocation(line: 93, column: 25, scope: !472)
!494 = !DILocation(line: 93, column: 7, scope: !472)
!495 = !DILocation(line: 94, column: 10, scope: !472)
!496 = !DILocation(line: 94, column: 16, scope: !472)
!497 = !DILocation(line: 94, column: 29, scope: !472)
!498 = !DILocation(line: 94, column: 3, scope: !472)
!499 = !DILocation(line: 95, column: 2, scope: !473)
!500 = !DILocation(line: 97, column: 28, scope: !465)
!501 = !DILocation(line: 97, column: 35, scope: !465)
!502 = !DILocation(line: 97, column: 42, scope: !465)
!503 = !DILocation(line: 97, column: 48, scope: !465)
!504 = !DILocation(line: 97, column: 9, scope: !465)
!505 = !DILocation(line: 97, column: 2, scope: !465)
!506 = !DILocation(line: 98, column: 1, scope: !465)
!507 = distinct !DISubprogram(name: "find_first_and_bit", scope: !248, file: !248, line: 334, type: !508, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!20, !251, !251, !20}
!510 = !{!511, !512, !513, !514}
!511 = !DILocalVariable(name: "addr1", arg: 1, scope: !507, file: !248, line: 334, type: !251)
!512 = !DILocalVariable(name: "addr2", arg: 2, scope: !507, file: !248, line: 335, type: !251)
!513 = !DILocalVariable(name: "size", arg: 3, scope: !507, file: !248, line: 336, type: !20)
!514 = !DILocalVariable(name: "val", scope: !515, file: !248, line: 339, type: !20)
!515 = distinct !DILexicalBlock(scope: !516, file: !248, line: 338, column: 31)
!516 = distinct !DILexicalBlock(scope: !507, file: !248, line: 338, column: 6)
!517 = !DILocation(line: 334, column: 55, scope: !507)
!518 = !DILocation(line: 335, column: 27, scope: !507)
!519 = !DILocation(line: 336, column: 20, scope: !507)
!520 = !DILocation(line: 338, column: 6, scope: !516)
!521 = !DILocation(line: 338, column: 6, scope: !507)
!522 = !DILocation(line: 339, column: 3, scope: !515)
!523 = !DILocation(line: 339, column: 17, scope: !515)
!524 = !DILocation(line: 339, column: 24, scope: !515)
!525 = !DILocation(line: 339, column: 23, scope: !515)
!526 = !DILocation(line: 339, column: 33, scope: !515)
!527 = !DILocation(line: 339, column: 32, scope: !515)
!528 = !DILocation(line: 339, column: 30, scope: !515)
!529 = !DILocation(line: 339, column: 41, scope: !515)
!530 = !DILocation(line: 339, column: 39, scope: !515)
!531 = !DILocation(line: 341, column: 10, scope: !515)
!532 = !DILocation(line: 341, column: 16, scope: !515)
!533 = !DILocation(line: 341, column: 29, scope: !515)
!534 = !DILocation(line: 341, column: 3, scope: !515)
!535 = !DILocation(line: 342, column: 2, scope: !516)
!536 = !DILocation(line: 344, column: 29, scope: !507)
!537 = !DILocation(line: 344, column: 36, scope: !507)
!538 = !DILocation(line: 344, column: 43, scope: !507)
!539 = !DILocation(line: 344, column: 9, scope: !507)
!540 = !DILocation(line: 344, column: 2, scope: !507)
!541 = !DILocation(line: 345, column: 1, scope: !507)
!542 = !DISubprogram(name: "_find_next_and_bit", scope: !248, file: !248, line: 13, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubprogram(name: "_find_first_and_bit", scope: !248, file: !248, line: 30, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = distinct !DISubprogram(name: "find_first_bit", scope: !248, file: !248, line: 200, type: !545, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!20, !251, !20}
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "addr", arg: 1, scope: !544, file: !248, line: 200, type: !251)
!549 = !DILocalVariable(name: "size", arg: 2, scope: !544, file: !248, line: 200, type: !20)
!550 = !DILocalVariable(name: "val", scope: !551, file: !248, line: 203, type: !20)
!551 = distinct !DILexicalBlock(scope: !552, file: !248, line: 202, column: 31)
!552 = distinct !DILexicalBlock(scope: !544, file: !248, line: 202, column: 6)
!553 = !DILocation(line: 200, column: 51, scope: !544)
!554 = !DILocation(line: 200, column: 71, scope: !544)
!555 = !DILocation(line: 202, column: 6, scope: !552)
!556 = !DILocation(line: 202, column: 6, scope: !544)
!557 = !DILocation(line: 203, column: 3, scope: !551)
!558 = !DILocation(line: 203, column: 17, scope: !551)
!559 = !DILocation(line: 203, column: 24, scope: !551)
!560 = !DILocation(line: 203, column: 23, scope: !551)
!561 = !DILocation(line: 203, column: 31, scope: !551)
!562 = !DILocation(line: 203, column: 29, scope: !551)
!563 = !DILocation(line: 205, column: 10, scope: !551)
!564 = !DILocation(line: 205, column: 16, scope: !551)
!565 = !DILocation(line: 205, column: 29, scope: !551)
!566 = !DILocation(line: 205, column: 3, scope: !551)
!567 = !DILocation(line: 206, column: 2, scope: !552)
!568 = !DILocation(line: 208, column: 25, scope: !544)
!569 = !DILocation(line: 208, column: 31, scope: !544)
!570 = !DILocation(line: 208, column: 9, scope: !544)
!571 = !DILocation(line: 208, column: 2, scope: !544)
!572 = !DILocation(line: 209, column: 1, scope: !544)
!573 = !DISubprogram(name: "_find_first_bit", scope: !248, file: !248, line: 21, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
