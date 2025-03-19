; ModuleID = 'kernel/rcu/sync.c'
source_filename = "kernel/rcu/sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rcu_sync_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"&rsp->gp_wait\00", align 1, !dbg !94
@.str.1 = private unnamed_addr constant [18 x i8] c"kernel/rcu/sync.c\00", align 1, !dbg !100
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !105
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_sync_init(ptr noundef %rsp) #0 align 16 !dbg !2 {
entry:
  %rsp.addr = alloca ptr, align 8
  store ptr %rsp, ptr %rsp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsp.addr, metadata !112, metadata !DIExpression()), !dbg !125
  %0 = load ptr, ptr %rsp.addr, align 8, !dbg !126
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false), !dbg !127
  br label %do.body, !dbg !128

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %rsp.addr, align 8, !dbg !129
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %1, i32 0, i32 2, !dbg !129
  call void @__init_waitqueue_head(ptr noundef %gp_wait, ptr noundef @.str, ptr noundef @rcu_sync_init.__key) #8, !dbg !129
  br label %do.end, !dbg !129

do.end:                                           ; preds = %do.body
  ret void, !dbg !131
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !132 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_sync_enter_start(ptr noundef %rsp) #0 align 16 !dbg !139 {
entry:
  %rsp.addr = alloca ptr, align 8
  store ptr %rsp, ptr %rsp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsp.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load ptr, ptr %rsp.addr, align 8, !dbg !143
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1, !dbg !144
  %1 = load i32, ptr %gp_count, align 4, !dbg !145
  %inc = add i32 %1, 1, !dbg !145
  store i32 %inc, ptr %gp_count, align 4, !dbg !145
  %2 = load ptr, ptr %rsp.addr, align 8, !dbg !146
  %gp_state = getelementptr inbounds %struct.rcu_sync, ptr %2, i32 0, i32 0, !dbg !147
  store i32 2, ptr %gp_state, align 8, !dbg !148
  ret void, !dbg !149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_sync_enter(ptr noundef %rsp) #0 align 16 !dbg !150 {
entry:
  %rsp.addr = alloca ptr, align 8
  %gp_state = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp61 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  store ptr %rsp, ptr %rsp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsp.addr, metadata !152, metadata !DIExpression()), !dbg !182
  call void @llvm.lifetime.start.p0(i64 4, ptr %gp_state) #9, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %gp_state, metadata !153, metadata !DIExpression()), !dbg !184
  %0 = load ptr, ptr %rsp.addr, align 8, !dbg !185
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 2, !dbg !186
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait, i32 0, i32 0, !dbg !186
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !187
  %1 = load ptr, ptr %rsp.addr, align 8, !dbg !188
  %gp_state1 = getelementptr inbounds %struct.rcu_sync, ptr %1, i32 0, i32 0, !dbg !189
  %2 = load i32, ptr %gp_state1, align 8, !dbg !189
  store i32 %2, ptr %gp_state, align 4, !dbg !190
  %3 = load i32, ptr %gp_state, align 4, !dbg !191
  %cmp = icmp eq i32 %3, 0, !dbg !192
  br i1 %cmp, label %if.then, label %if.end36, !dbg !193

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !194

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !195

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !197

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !197

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !195

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %rsp.addr, align 8, !dbg !199
  %gp_state4 = getelementptr inbounds %struct.rcu_sync, ptr %4, i32 0, i32 0, !dbg !199
  store volatile i32 1, ptr %gp_state4, align 8, !dbg !199
  br label %do.cond5, !dbg !199

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !199

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !195

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !195

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !154, metadata !DIExpression()), !dbg !201
  %5 = load ptr, ptr %rsp.addr, align 8, !dbg !201
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %5, i32 0, i32 1, !dbg !201
  %6 = load i32, ptr %gp_count, align 4, !dbg !201
  %tobool = icmp ne i32 %6, 0, !dbg !201
  %lnot = xor i1 %tobool, true, !dbg !201
  %lnot9 = xor i1 %lnot, true, !dbg !201
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !201
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !201
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !202
  %tobool10 = icmp ne i32 %7, 0, !dbg !202
  %lnot11 = xor i1 %tobool10, true, !dbg !202
  %lnot13 = xor i1 %lnot11, true, !dbg !202
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !202
  %conv = sext i32 %lnot.ext14 to i64, !dbg !202
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !202
  %tobool15 = icmp ne i64 %expval, 0, !dbg !202
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !201

if.then16:                                        ; preds = %do.end8
  br label %do.body17, !dbg !202

do.body17:                                        ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !158, metadata !DIExpression()), !dbg !203
  store i32 2307, ptr %__flags, align 4, !dbg !203
  br label %do.body18, !dbg !203

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !204

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !204

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !203

do.body21:                                        ; preds = %do.end20
  %8 = load i32, ptr %__flags, align 4, !dbg !206
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 129, i32 %8, i64 12) #9, !dbg !206, !srcloc !208
  br label %do.cond22, !dbg !206

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !206

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !203

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !209

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !209

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !202
  br label %do.cond27, !dbg !203

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !203

do.end28:                                         ; preds = %do.cond27
  br label %if.end, !dbg !203

if.end:                                           ; preds = %do.end28, %do.end8
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !201
  %tobool29 = icmp ne i32 %9, 0, !dbg !201
  %lnot30 = xor i1 %tobool29, true, !dbg !201
  %lnot32 = xor i1 %lnot30, true, !dbg !201
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !201
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !201
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !201
  store i64 %expval35, ptr %tmp, align 8, !dbg !202
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !211
  %10 = load i64, ptr %tmp, align 8, !dbg !201
  br label %if.end36, !dbg !212

if.end36:                                         ; preds = %if.end, %entry
  %11 = load ptr, ptr %rsp.addr, align 8, !dbg !213
  %gp_count37 = getelementptr inbounds %struct.rcu_sync, ptr %11, i32 0, i32 1, !dbg !214
  %12 = load i32, ptr %gp_count37, align 4, !dbg !215
  %inc = add i32 %12, 1, !dbg !215
  store i32 %inc, ptr %gp_count37, align 4, !dbg !215
  %13 = load ptr, ptr %rsp.addr, align 8, !dbg !216
  %gp_wait38 = getelementptr inbounds %struct.rcu_sync, ptr %13, i32 0, i32 2, !dbg !217
  %lock39 = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait38, i32 0, i32 0, !dbg !217
  call void @spin_unlock_irq(ptr noundef %lock39) #8, !dbg !218
  %14 = load i32, ptr %gp_state, align 4, !dbg !219
  %cmp40 = icmp eq i32 %14, 0, !dbg !221
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !222

if.then42:                                        ; preds = %if.end36
  call void @synchronize_rcu() #8, !dbg !223
  %15 = load ptr, ptr %rsp.addr, align 8, !dbg !225
  %cb_head = getelementptr inbounds %struct.rcu_sync, ptr %15, i32 0, i32 3, !dbg !226
  call void @rcu_sync_func(ptr noundef %cb_head) #8, !dbg !227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !228

if.end43:                                         ; preds = %if.end36
  br label %do.body44, !dbg !229

do.body44:                                        ; preds = %if.end43
  br label %do.body45, !dbg !230

do.body45:                                        ; preds = %do.body44
  call void @might_resched() #8, !dbg !231
  br label %do.cond46, !dbg !231

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !231

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !233

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !236

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !236

do.end50:                                         ; preds = %do.cond49
  %16 = load ptr, ptr %rsp.addr, align 8, !dbg !233
  %gp_state52 = getelementptr inbounds %struct.rcu_sync, ptr %16, i32 0, i32 0, !dbg !233
  %17 = load volatile i32, ptr %gp_state52, align 8, !dbg !233
  store i32 %17, ptr %tmp51, align 4, !dbg !236
  %18 = load i32, ptr %tmp51, align 4, !dbg !233
  %cmp53 = icmp sge i32 %18, 2, !dbg !238
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !230

if.then55:                                        ; preds = %do.end50
  br label %do.end70, !dbg !238

if.end56:                                         ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #9, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !161, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #9, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !175, metadata !DIExpression()), !dbg !239
  store i64 0, ptr %__ret, align 8, !dbg !239
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #8, !dbg !239
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %cleanup.cont, %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #9, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !177, metadata !DIExpression()), !dbg !240
  %19 = load ptr, ptr %rsp.addr, align 8, !dbg !240
  %gp_wait57 = getelementptr inbounds %struct.rcu_sync, ptr %19, i32 0, i32 2, !dbg !240
  %call = call i64 @prepare_to_wait_event(ptr noundef %gp_wait57, ptr noundef %__wq_entry, i32 noundef 2) #8, !dbg !240
  store i64 %call, ptr %__int, align 8, !dbg !240
  br label %do.body58, !dbg !241

do.body58:                                        ; preds = %for.cond
  br label %do.cond59, !dbg !244

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !244

do.end60:                                         ; preds = %do.cond59
  %20 = load ptr, ptr %rsp.addr, align 8, !dbg !241
  %gp_state62 = getelementptr inbounds %struct.rcu_sync, ptr %20, i32 0, i32 0, !dbg !241
  %21 = load volatile i32, ptr %gp_state62, align 8, !dbg !241
  store i32 %21, ptr %tmp61, align 4, !dbg !244
  %22 = load i32, ptr %tmp61, align 4, !dbg !241
  %cmp63 = icmp sge i32 %22, 2, !dbg !246
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !240

if.then65:                                        ; preds = %do.end60
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !246

if.end66:                                         ; preds = %do.end60
  call void @schedule() #8, !dbg !240
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !247
  br label %cleanup, !dbg !247

cleanup:                                          ; preds = %if.end66, %if.then65
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #9, !dbg !247
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 22, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !247, !llvm.loop !248

for.end:                                          ; preds = %cleanup
  %23 = load ptr, ptr %rsp.addr, align 8, !dbg !239
  %gp_wait67 = getelementptr inbounds %struct.rcu_sync, ptr %23, i32 0, i32 2, !dbg !239
  call void @finish_wait(ptr noundef %gp_wait67, ptr noundef %__wq_entry) #8, !dbg !239
  br label %__out, !dbg !239

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !181), !dbg !239
  %24 = load i64, ptr %__ret, align 8, !dbg !239
  store i64 %24, ptr %tmp68, align 8, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #9, !dbg !230
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #9, !dbg !230
  %25 = load i64, ptr %tmp68, align 8, !dbg !239
  br label %do.cond69, !dbg !230

do.cond69:                                        ; preds = %__out
  br label %do.end70, !dbg !230

do.end70:                                         ; preds = %do.cond69, %if.then55
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !251
  br label %cleanup71, !dbg !251

cleanup71:                                        ; preds = %do.end70, %if.then42
  call void @llvm.lifetime.end.p0(i64 4, ptr %gp_state) #9, !dbg !251
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %cleanup.cont73
  ]

cleanup.cont73:                                   ; preds = %cleanup71, %cleanup71
  ret void, !dbg !251

unreachable:                                      ; preds = %cleanup71, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !252 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !260
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !260
  call void @_raw_spin_lock_irq(ptr noundef %1) #8, !dbg !260
  ret void, !dbg !261
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !262 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !266
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !266
  call void @_raw_spin_unlock_irq(ptr noundef %1) #8, !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !268 dso_local void @synchronize_rcu() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_sync_func(ptr noundef %rhp) #0 align 16 !dbg !270 {
entry:
  %rhp.addr = alloca ptr, align 8
  %rsp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %__flags50 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp75 = alloca i32, align 4
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !272, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsp) #9, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %rsp, metadata !273, metadata !DIExpression()), !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !274, metadata !DIExpression()), !dbg !296
  %0 = load ptr, ptr %rhp.addr, align 8, !dbg !296
  store ptr %0, ptr %__mptr, align 8, !dbg !296
  %1 = load ptr, ptr %__mptr, align 8, !dbg !296
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !296
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !296
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !297
  %2 = load ptr, ptr %tmp, align 8, !dbg !296
  store ptr %2, ptr %rsp, align 8, !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !276, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !278, metadata !DIExpression()), !dbg !300
  br label %do.body, !dbg !301

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !303

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !303

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %rsp, align 8, !dbg !301
  %gp_state = getelementptr inbounds %struct.rcu_sync, ptr %3, i32 0, i32 0, !dbg !301
  %4 = load volatile i32, ptr %gp_state, align 8, !dbg !301
  store i32 %4, ptr %tmp1, align 4, !dbg !303
  %5 = load i32, ptr %tmp1, align 4, !dbg !301
  %cmp = icmp eq i32 %5, 0, !dbg !300
  %lnot = xor i1 %cmp, true, !dbg !300
  %lnot2 = xor i1 %lnot, true, !dbg !300
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !300
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !300
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !305
  %tobool = icmp ne i32 %6, 0, !dbg !305
  %lnot3 = xor i1 %tobool, true, !dbg !305
  %lnot5 = xor i1 %lnot3, true, !dbg !305
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !305
  %conv = sext i32 %lnot.ext6 to i64, !dbg !305
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !305
  %tobool7 = icmp ne i64 %expval, 0, !dbg !305
  br i1 %tobool7, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !305

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !280, metadata !DIExpression()), !dbg !306
  store i32 2307, ptr %__flags, align 4, !dbg !306
  br label %do.body9, !dbg !306

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !307

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !307

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !306

do.body12:                                        ; preds = %do.end11
  %7 = load i32, ptr %__flags, align 4, !dbg !309
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 78, i32 %7, i64 12) #9, !dbg !309, !srcloc !311
  br label %do.cond13, !dbg !309

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !309

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !306

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !312

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !312

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !305
  br label %do.cond18, !dbg !306

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !306

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !306

if.end:                                           ; preds = %do.end19, %do.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !300
  %tobool21 = icmp ne i32 %8, 0, !dbg !300
  %lnot22 = xor i1 %tobool21, true, !dbg !300
  %lnot24 = xor i1 %lnot22, true, !dbg !300
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !300
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !300
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !300
  store i64 %expval27, ptr %tmp20, align 8, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !314
  %9 = load i64, ptr %tmp20, align 8, !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !283, metadata !DIExpression()), !dbg !315
  br label %do.body29, !dbg !316

do.body29:                                        ; preds = %if.end
  br label %do.cond30, !dbg !318

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !318

do.end31:                                         ; preds = %do.cond30
  %10 = load ptr, ptr %rsp, align 8, !dbg !316
  %gp_state33 = getelementptr inbounds %struct.rcu_sync, ptr %10, i32 0, i32 0, !dbg !316
  %11 = load volatile i32, ptr %gp_state33, align 8, !dbg !316
  store i32 %11, ptr %tmp32, align 4, !dbg !318
  %12 = load i32, ptr %tmp32, align 4, !dbg !316
  %cmp34 = icmp eq i32 %12, 2, !dbg !315
  %lnot36 = xor i1 %cmp34, true, !dbg !315
  %lnot38 = xor i1 %lnot36, true, !dbg !315
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !315
  store i32 %lnot.ext39, ptr %__ret_warn_on28, align 4, !dbg !315
  %13 = load i32, ptr %__ret_warn_on28, align 4, !dbg !320
  %tobool40 = icmp ne i32 %13, 0, !dbg !320
  %lnot41 = xor i1 %tobool40, true, !dbg !320
  %lnot43 = xor i1 %lnot41, true, !dbg !320
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !320
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !320
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !320
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !320
  br i1 %tobool47, label %if.then48, label %if.end62, !dbg !315

if.then48:                                        ; preds = %do.end31
  br label %do.body49, !dbg !320

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags50) #9, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %__flags50, metadata !285, metadata !DIExpression()), !dbg !321
  store i32 2307, ptr %__flags50, align 4, !dbg !321
  br label %do.body51, !dbg !321

do.body51:                                        ; preds = %do.body49
  br label %do.cond52, !dbg !322

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !322

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !321

do.body54:                                        ; preds = %do.end53
  %14 = load i32, ptr %__flags50, align 4, !dbg !324
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 79, i32 %14, i64 12) #9, !dbg !324, !srcloc !326
  br label %do.cond55, !dbg !324

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !324

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !321

do.body57:                                        ; preds = %do.end56
  br label %do.cond58, !dbg !327

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !327

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags50) #9, !dbg !320
  br label %do.cond60, !dbg !321

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !321

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !321

if.end62:                                         ; preds = %do.end61, %do.end31
  %15 = load i32, ptr %__ret_warn_on28, align 4, !dbg !315
  %tobool64 = icmp ne i32 %15, 0, !dbg !315
  %lnot65 = xor i1 %tobool64, true, !dbg !315
  %lnot67 = xor i1 %lnot65, true, !dbg !315
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !315
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !315
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !315
  store i64 %expval70, ptr %tmp63, align 8, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !329
  %16 = load i64, ptr %tmp63, align 8, !dbg !315
  br label %do.body71, !dbg !330

do.body71:                                        ; preds = %if.end62
  br label %do.body72, !dbg !331

do.body72:                                        ; preds = %do.body71
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !288, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !292, metadata !DIExpression()), !dbg !332
  %cmp73 = icmp eq ptr %__dummy, %__dummy2, !dbg !332
  %conv74 = zext i1 %cmp73 to i32, !dbg !332
  store i32 1, ptr %tmp75, align 4, !dbg !332
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !333
  %17 = load i32, ptr %tmp75, align 4, !dbg !332
  %18 = load ptr, ptr %rsp, align 8, !dbg !333
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %18, i32 0, i32 2, !dbg !333
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait, i32 0, i32 0, !dbg !333
  %call = call ptr @spinlock_check(ptr noundef %lock) #8, !dbg !333
  %call76 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #8, !dbg !333
  store i64 %call76, ptr %flags, align 8, !dbg !333
  br label %do.cond77, !dbg !333

do.cond77:                                        ; preds = %do.body72
  br label %do.end78, !dbg !333

do.end78:                                         ; preds = %do.cond77
  br label %do.cond79, !dbg !331

do.cond79:                                        ; preds = %do.end78
  br label %do.end80, !dbg !331

do.end80:                                         ; preds = %do.cond79
  %19 = load ptr, ptr %rsp, align 8, !dbg !334
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %19, i32 0, i32 1, !dbg !336
  %20 = load i32, ptr %gp_count, align 4, !dbg !336
  %tobool81 = icmp ne i32 %20, 0, !dbg !334
  br i1 %tobool81, label %if.then82, label %if.else, !dbg !337

if.then82:                                        ; preds = %do.end80
  br label %do.body83, !dbg !338

do.body83:                                        ; preds = %if.then82
  br label %do.body84, !dbg !340

do.body84:                                        ; preds = %do.body83
  br label %do.cond85, !dbg !342

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !342

do.end86:                                         ; preds = %do.cond85
  br label %do.body87, !dbg !340

do.body87:                                        ; preds = %do.end86
  %21 = load ptr, ptr %rsp, align 8, !dbg !344
  %gp_state88 = getelementptr inbounds %struct.rcu_sync, ptr %21, i32 0, i32 0, !dbg !344
  store volatile i32 2, ptr %gp_state88, align 8, !dbg !344
  br label %do.cond89, !dbg !344

do.cond89:                                        ; preds = %do.body87
  br label %do.end90, !dbg !344

do.end90:                                         ; preds = %do.cond89
  br label %do.cond91, !dbg !340

do.cond91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !340

do.end92:                                         ; preds = %do.cond91
  %22 = load ptr, ptr %rsp, align 8, !dbg !346
  %gp_wait93 = getelementptr inbounds %struct.rcu_sync, ptr %22, i32 0, i32 2, !dbg !346
  call void @__wake_up_locked(ptr noundef %gp_wait93, i32 noundef 3, i32 noundef 1) #8, !dbg !346
  br label %if.end120, !dbg !347

if.else:                                          ; preds = %do.end80
  %23 = load ptr, ptr %rsp, align 8, !dbg !348
  %gp_state94 = getelementptr inbounds %struct.rcu_sync, ptr %23, i32 0, i32 0, !dbg !350
  %24 = load i32, ptr %gp_state94, align 8, !dbg !350
  %cmp95 = icmp eq i32 %24, 4, !dbg !351
  br i1 %cmp95, label %if.then97, label %if.else108, !dbg !352

if.then97:                                        ; preds = %if.else
  br label %do.body98, !dbg !353

do.body98:                                        ; preds = %if.then97
  br label %do.body99, !dbg !355

do.body99:                                        ; preds = %do.body98
  br label %do.cond100, !dbg !357

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !357

do.end101:                                        ; preds = %do.cond100
  br label %do.body102, !dbg !355

do.body102:                                       ; preds = %do.end101
  %25 = load ptr, ptr %rsp, align 8, !dbg !359
  %gp_state103 = getelementptr inbounds %struct.rcu_sync, ptr %25, i32 0, i32 0, !dbg !359
  store volatile i32 3, ptr %gp_state103, align 8, !dbg !359
  br label %do.cond104, !dbg !359

do.cond104:                                       ; preds = %do.body102
  br label %do.end105, !dbg !359

do.end105:                                        ; preds = %do.cond104
  br label %do.cond106, !dbg !355

do.cond106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !355

do.end107:                                        ; preds = %do.cond106
  %26 = load ptr, ptr %rsp, align 8, !dbg !361
  call void @rcu_sync_call(ptr noundef %26) #8, !dbg !362
  br label %if.end119, !dbg !363

if.else108:                                       ; preds = %if.else
  br label %do.body109, !dbg !364

do.body109:                                       ; preds = %if.else108
  br label %do.body110, !dbg !366

do.body110:                                       ; preds = %do.body109
  br label %do.cond111, !dbg !368

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !368

do.end112:                                        ; preds = %do.cond111
  br label %do.body113, !dbg !366

do.body113:                                       ; preds = %do.end112
  %27 = load ptr, ptr %rsp, align 8, !dbg !370
  %gp_state114 = getelementptr inbounds %struct.rcu_sync, ptr %27, i32 0, i32 0, !dbg !370
  store volatile i32 0, ptr %gp_state114, align 8, !dbg !370
  br label %do.cond115, !dbg !370

do.cond115:                                       ; preds = %do.body113
  br label %do.end116, !dbg !370

do.end116:                                        ; preds = %do.cond115
  br label %do.cond117, !dbg !366

do.cond117:                                       ; preds = %do.end116
  br label %do.end118, !dbg !366

do.end118:                                        ; preds = %do.cond117
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %do.end107
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %do.end92
  %28 = load ptr, ptr %rsp, align 8, !dbg !372
  %gp_wait121 = getelementptr inbounds %struct.rcu_sync, ptr %28, i32 0, i32 2, !dbg !373
  %lock122 = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait121, i32 0, i32 0, !dbg !373
  %29 = load i64, ptr %flags, align 8, !dbg !374
  call void @spin_unlock_irqrestore(ptr noundef %lock122, i64 noundef %29) #8, !dbg !375
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !376
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsp) #9, !dbg !376
  ret void, !dbg !376
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !107 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !377
  %0 = load ptr, ptr %tmp, align 8, !dbg !377
  %call = call i32 %0() #8, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !384 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !387 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !389 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_sync_exit(ptr noundef %rsp) #0 align 16 !dbg !392 {
entry:
  %rsp.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %__flags48 = alloca i32, align 4
  %tmp61 = alloca i64, align 8
  store ptr %rsp, ptr %rsp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsp.addr, metadata !394, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !395, metadata !DIExpression()), !dbg !406
  br label %do.body, !dbg !407

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !409

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !409

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rsp.addr, align 8, !dbg !407
  %gp_state = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 0, !dbg !407
  %1 = load volatile i32, ptr %gp_state, align 8, !dbg !407
  store i32 %1, ptr %tmp, align 4, !dbg !409
  %2 = load i32, ptr %tmp, align 4, !dbg !407
  %cmp = icmp eq i32 %2, 0, !dbg !406
  %lnot = xor i1 %cmp, true, !dbg !406
  %lnot1 = xor i1 %lnot, true, !dbg !406
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !406
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !406
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !411
  %tobool = icmp ne i32 %3, 0, !dbg !411
  %lnot2 = xor i1 %tobool, true, !dbg !411
  %lnot4 = xor i1 %lnot2, true, !dbg !411
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !411
  %conv = sext i32 %lnot.ext5 to i64, !dbg !411
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !411
  %tobool6 = icmp ne i64 %expval, 0, !dbg !411
  br i1 %tobool6, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %do.end
  br label %do.body7, !dbg !411

do.body7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !397, metadata !DIExpression()), !dbg !412
  store i32 2307, ptr %__flags, align 4, !dbg !412
  br label %do.body8, !dbg !412

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !413

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !413

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !412

do.body11:                                        ; preds = %do.end10
  %4 = load i32, ptr %__flags, align 4, !dbg !415
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 170, i32 %4, i64 12) #9, !dbg !415, !srcloc !417
  br label %do.cond12, !dbg !415

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !415

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !412

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !418

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !418

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !411
  br label %do.cond17, !dbg !412

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !412

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !412

if.end:                                           ; preds = %do.end18, %do.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !406
  %tobool20 = icmp ne i32 %5, 0, !dbg !406
  %lnot21 = xor i1 %tobool20, true, !dbg !406
  %lnot23 = xor i1 %lnot21, true, !dbg !406
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !406
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !406
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !406
  store i64 %expval26, ptr %tmp19, align 8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !420
  %6 = load i64, ptr %tmp19, align 8, !dbg !406
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on27) #9, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on27, metadata !400, metadata !DIExpression()), !dbg !421
  br label %do.body28, !dbg !422

do.body28:                                        ; preds = %if.end
  br label %do.cond29, !dbg !424

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !424

do.end30:                                         ; preds = %do.cond29
  %7 = load ptr, ptr %rsp.addr, align 8, !dbg !422
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %7, i32 0, i32 1, !dbg !422
  %8 = load volatile i32, ptr %gp_count, align 4, !dbg !422
  store i32 %8, ptr %tmp31, align 4, !dbg !424
  %9 = load i32, ptr %tmp31, align 4, !dbg !422
  %cmp32 = icmp eq i32 %9, 0, !dbg !421
  %lnot34 = xor i1 %cmp32, true, !dbg !421
  %lnot36 = xor i1 %lnot34, true, !dbg !421
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !421
  store i32 %lnot.ext37, ptr %__ret_warn_on27, align 4, !dbg !421
  %10 = load i32, ptr %__ret_warn_on27, align 4, !dbg !426
  %tobool38 = icmp ne i32 %10, 0, !dbg !426
  %lnot39 = xor i1 %tobool38, true, !dbg !426
  %lnot41 = xor i1 %lnot39, true, !dbg !426
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !426
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !426
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !426
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !426
  br i1 %tobool45, label %if.then46, label %if.end60, !dbg !421

if.then46:                                        ; preds = %do.end30
  br label %do.body47, !dbg !426

do.body47:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags48) #9, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %__flags48, metadata !402, metadata !DIExpression()), !dbg !427
  store i32 2307, ptr %__flags48, align 4, !dbg !427
  br label %do.body49, !dbg !427

do.body49:                                        ; preds = %do.body47
  br label %do.cond50, !dbg !428

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !428

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !427

do.body52:                                        ; preds = %do.end51
  %11 = load i32, ptr %__flags48, align 4, !dbg !430
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 171, i32 %11, i64 12) #9, !dbg !430, !srcloc !432
  br label %do.cond53, !dbg !430

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !430

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !427

do.body55:                                        ; preds = %do.end54
  br label %do.cond56, !dbg !433

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !433

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags48) #9, !dbg !426
  br label %do.cond58, !dbg !427

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !427

do.end59:                                         ; preds = %do.cond58
  br label %if.end60, !dbg !427

if.end60:                                         ; preds = %do.end59, %do.end30
  %12 = load i32, ptr %__ret_warn_on27, align 4, !dbg !421
  %tobool62 = icmp ne i32 %12, 0, !dbg !421
  %lnot63 = xor i1 %tobool62, true, !dbg !421
  %lnot65 = xor i1 %lnot63, true, !dbg !421
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !421
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !421
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !421
  store i64 %expval68, ptr %tmp61, align 8, !dbg !426
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on27) #9, !dbg !435
  %13 = load i64, ptr %tmp61, align 8, !dbg !421
  %14 = load ptr, ptr %rsp.addr, align 8, !dbg !436
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %14, i32 0, i32 2, !dbg !437
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait, i32 0, i32 0, !dbg !437
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !438
  %15 = load ptr, ptr %rsp.addr, align 8, !dbg !439
  %gp_count69 = getelementptr inbounds %struct.rcu_sync, ptr %15, i32 0, i32 1, !dbg !441
  %16 = load i32, ptr %gp_count69, align 4, !dbg !442
  %dec = add i32 %16, -1, !dbg !442
  store i32 %dec, ptr %gp_count69, align 4, !dbg !442
  %tobool70 = icmp ne i32 %dec, 0, !dbg !442
  br i1 %tobool70, label %if.end102, label %if.then71, !dbg !443

if.then71:                                        ; preds = %if.end60
  %17 = load ptr, ptr %rsp.addr, align 8, !dbg !444
  %gp_state72 = getelementptr inbounds %struct.rcu_sync, ptr %17, i32 0, i32 0, !dbg !447
  %18 = load i32, ptr %gp_state72, align 8, !dbg !447
  %cmp73 = icmp eq i32 %18, 2, !dbg !448
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !449

if.then75:                                        ; preds = %if.then71
  br label %do.body76, !dbg !450

do.body76:                                        ; preds = %if.then75
  br label %do.body77, !dbg !452

do.body77:                                        ; preds = %do.body76
  br label %do.end79, !dbg !454

do.end79:                                         ; preds = %do.body77
  br label %do.body80, !dbg !452

do.body80:                                        ; preds = %do.end79
  %19 = load ptr, ptr %rsp.addr, align 8, !dbg !456
  %gp_state81 = getelementptr inbounds %struct.rcu_sync, ptr %19, i32 0, i32 0, !dbg !456
  store volatile i32 3, ptr %gp_state81, align 8, !dbg !456
  br label %do.end83, !dbg !456

do.end83:                                         ; preds = %do.body80
  br label %do.end85, !dbg !452

do.end85:                                         ; preds = %do.end83
  %20 = load ptr, ptr %rsp.addr, align 8, !dbg !458
  call void @rcu_sync_call(ptr noundef %20) #8, !dbg !459
  br label %if.end101, !dbg !460

if.else:                                          ; preds = %if.then71
  %21 = load ptr, ptr %rsp.addr, align 8, !dbg !461
  %gp_state86 = getelementptr inbounds %struct.rcu_sync, ptr %21, i32 0, i32 0, !dbg !463
  %22 = load i32, ptr %gp_state86, align 8, !dbg !463
  %cmp87 = icmp eq i32 %22, 3, !dbg !464
  br i1 %cmp87, label %if.then89, label %if.end100, !dbg !465

if.then89:                                        ; preds = %if.else
  br label %do.body90, !dbg !466

do.body90:                                        ; preds = %if.then89
  br label %do.body91, !dbg !468

do.body91:                                        ; preds = %do.body90
  br label %do.end93, !dbg !470

do.end93:                                         ; preds = %do.body91
  br label %do.body94, !dbg !468

do.body94:                                        ; preds = %do.end93
  %23 = load ptr, ptr %rsp.addr, align 8, !dbg !472
  %gp_state95 = getelementptr inbounds %struct.rcu_sync, ptr %23, i32 0, i32 0, !dbg !472
  store volatile i32 4, ptr %gp_state95, align 8, !dbg !472
  br label %do.end97, !dbg !472

do.end97:                                         ; preds = %do.body94
  br label %do.end99, !dbg !468

do.end99:                                         ; preds = %do.end97
  br label %if.end100, !dbg !474

if.end100:                                        ; preds = %do.end99, %if.else
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %do.end85
  br label %if.end102, !dbg !475

if.end102:                                        ; preds = %if.end101, %if.end60
  %24 = load ptr, ptr %rsp.addr, align 8, !dbg !476
  %gp_wait103 = getelementptr inbounds %struct.rcu_sync, ptr %24, i32 0, i32 2, !dbg !477
  %lock104 = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait103, i32 0, i32 0, !dbg !477
  call void @spin_unlock_irq(ptr noundef %lock104) #8, !dbg !478
  ret void, !dbg !479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_sync_call(ptr noundef %rsp) #0 align 16 !dbg !480 {
entry:
  %rsp.addr = alloca ptr, align 8
  store ptr %rsp, ptr %rsp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsp.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load ptr, ptr %rsp.addr, align 8, !dbg !484
  %cb_head = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 3, !dbg !485
  call void @call_rcu_hurry(ptr noundef %cb_head, ptr noundef @rcu_sync_func) #8, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_sync_dtor(ptr noundef %rsp) #0 align 16 !dbg !488 {
entry:
  %rsp.addr = alloca ptr, align 8
  %gp_state = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %__flags49 = alloca i32, align 4
  %tmp62 = alloca i64, align 8
  %__ret_warn_on91 = alloca i32, align 4
  %__flags109 = alloca i32, align 4
  %tmp122 = alloca i64, align 8
  store ptr %rsp, ptr %rsp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsp.addr, metadata !490, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %gp_state) #9, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %gp_state, metadata !491, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !492, metadata !DIExpression()), !dbg !512
  br label %do.body, !dbg !513

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !515

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !515

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rsp.addr, align 8, !dbg !513
  %gp_count = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1, !dbg !513
  %1 = load volatile i32, ptr %gp_count, align 4, !dbg !513
  store i32 %1, ptr %tmp, align 4, !dbg !515
  %2 = load i32, ptr %tmp, align 4, !dbg !513
  %tobool = icmp ne i32 %2, 0, !dbg !512
  %lnot = xor i1 %tobool, true, !dbg !512
  %lnot1 = xor i1 %lnot, true, !dbg !512
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !512
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !512
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !517
  %tobool2 = icmp ne i32 %3, 0, !dbg !517
  %lnot3 = xor i1 %tobool2, true, !dbg !517
  %lnot5 = xor i1 %lnot3, true, !dbg !517
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !517
  %conv = sext i32 %lnot.ext6 to i64, !dbg !517
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !517
  %tobool7 = icmp ne i64 %expval, 0, !dbg !517
  br i1 %tobool7, label %if.then, label %if.end, !dbg !512

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !517

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !494, metadata !DIExpression()), !dbg !518
  store i32 2307, ptr %__flags, align 4, !dbg !518
  br label %do.body9, !dbg !518

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !519

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !519

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !518

do.body12:                                        ; preds = %do.end11
  %4 = load i32, ptr %__flags, align 4, !dbg !521
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 193, i32 %4, i64 12) #9, !dbg !521, !srcloc !523
  br label %do.cond13, !dbg !521

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !521

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !518

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !524

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !524

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !517
  br label %do.cond18, !dbg !518

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !518

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !518

if.end:                                           ; preds = %do.end19, %do.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !512
  %tobool21 = icmp ne i32 %5, 0, !dbg !512
  %lnot22 = xor i1 %tobool21, true, !dbg !512
  %lnot24 = xor i1 %lnot22, true, !dbg !512
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !512
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !512
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !512
  store i64 %expval27, ptr %tmp20, align 8, !dbg !517
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !526
  %6 = load i64, ptr %tmp20, align 8, !dbg !512
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !497, metadata !DIExpression()), !dbg !527
  br label %do.body29, !dbg !528

do.body29:                                        ; preds = %if.end
  br label %do.cond30, !dbg !530

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !530

do.end31:                                         ; preds = %do.cond30
  %7 = load ptr, ptr %rsp.addr, align 8, !dbg !528
  %gp_state33 = getelementptr inbounds %struct.rcu_sync, ptr %7, i32 0, i32 0, !dbg !528
  %8 = load volatile i32, ptr %gp_state33, align 8, !dbg !528
  store i32 %8, ptr %tmp32, align 4, !dbg !530
  %9 = load i32, ptr %tmp32, align 4, !dbg !528
  %cmp = icmp eq i32 %9, 2, !dbg !527
  %lnot35 = xor i1 %cmp, true, !dbg !527
  %lnot37 = xor i1 %lnot35, true, !dbg !527
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !527
  store i32 %lnot.ext38, ptr %__ret_warn_on28, align 4, !dbg !527
  %10 = load i32, ptr %__ret_warn_on28, align 4, !dbg !532
  %tobool39 = icmp ne i32 %10, 0, !dbg !532
  %lnot40 = xor i1 %tobool39, true, !dbg !532
  %lnot42 = xor i1 %lnot40, true, !dbg !532
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !532
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !532
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !532
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !532
  br i1 %tobool46, label %if.then47, label %if.end61, !dbg !527

if.then47:                                        ; preds = %do.end31
  br label %do.body48, !dbg !532

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags49) #9, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %__flags49, metadata !499, metadata !DIExpression()), !dbg !533
  store i32 2307, ptr %__flags49, align 4, !dbg !533
  br label %do.body50, !dbg !533

do.body50:                                        ; preds = %do.body48
  br label %do.cond51, !dbg !534

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !534

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !533

do.body53:                                        ; preds = %do.end52
  %11 = load i32, ptr %__flags49, align 4, !dbg !536
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 194, i32 %11, i64 12) #9, !dbg !536, !srcloc !538
  br label %do.cond54, !dbg !536

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !536

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !533

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !539

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !539

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags49) #9, !dbg !532
  br label %do.cond59, !dbg !533

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !533

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !533

if.end61:                                         ; preds = %do.end60, %do.end31
  %12 = load i32, ptr %__ret_warn_on28, align 4, !dbg !527
  %tobool63 = icmp ne i32 %12, 0, !dbg !527
  %lnot64 = xor i1 %tobool63, true, !dbg !527
  %lnot66 = xor i1 %lnot64, true, !dbg !527
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !527
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !527
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !527
  store i64 %expval69, ptr %tmp62, align 8, !dbg !532
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !541
  %13 = load i64, ptr %tmp62, align 8, !dbg !527
  %14 = load ptr, ptr %rsp.addr, align 8, !dbg !542
  %gp_wait = getelementptr inbounds %struct.rcu_sync, ptr %14, i32 0, i32 2, !dbg !543
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait, i32 0, i32 0, !dbg !543
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !544
  %15 = load ptr, ptr %rsp.addr, align 8, !dbg !545
  %gp_state70 = getelementptr inbounds %struct.rcu_sync, ptr %15, i32 0, i32 0, !dbg !547
  %16 = load i32, ptr %gp_state70, align 8, !dbg !547
  %cmp71 = icmp eq i32 %16, 4, !dbg !548
  br i1 %cmp71, label %if.then73, label %if.end84, !dbg !549

if.then73:                                        ; preds = %if.end61
  br label %do.body74, !dbg !550

do.body74:                                        ; preds = %if.then73
  br label %do.body75, !dbg !551

do.body75:                                        ; preds = %do.body74
  br label %do.cond76, !dbg !553

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !553

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !551

do.body78:                                        ; preds = %do.end77
  %17 = load ptr, ptr %rsp.addr, align 8, !dbg !555
  %gp_state79 = getelementptr inbounds %struct.rcu_sync, ptr %17, i32 0, i32 0, !dbg !555
  store volatile i32 3, ptr %gp_state79, align 8, !dbg !555
  br label %do.cond80, !dbg !555

do.cond80:                                        ; preds = %do.body78
  br label %do.end81, !dbg !555

do.end81:                                         ; preds = %do.cond80
  br label %do.cond82, !dbg !551

do.cond82:                                        ; preds = %do.end81
  br label %do.end83, !dbg !551

do.end83:                                         ; preds = %do.cond82
  br label %if.end84, !dbg !551

if.end84:                                         ; preds = %do.end83, %if.end61
  %18 = load ptr, ptr %rsp.addr, align 8, !dbg !557
  %gp_state85 = getelementptr inbounds %struct.rcu_sync, ptr %18, i32 0, i32 0, !dbg !558
  %19 = load i32, ptr %gp_state85, align 8, !dbg !558
  store i32 %19, ptr %gp_state, align 4, !dbg !559
  %20 = load ptr, ptr %rsp.addr, align 8, !dbg !560
  %gp_wait86 = getelementptr inbounds %struct.rcu_sync, ptr %20, i32 0, i32 2, !dbg !561
  %lock87 = getelementptr inbounds %struct.wait_queue_head, ptr %gp_wait86, i32 0, i32 0, !dbg !561
  call void @spin_unlock_irq(ptr noundef %lock87) #8, !dbg !562
  %21 = load i32, ptr %gp_state, align 4, !dbg !563
  %cmp88 = icmp ne i32 %21, 0, !dbg !564
  br i1 %cmp88, label %if.then90, label %if.end130, !dbg !565

if.then90:                                        ; preds = %if.end84
  call void @rcu_barrier() #8, !dbg !566
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on91) #9, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on91, metadata !502, metadata !DIExpression()), !dbg !567
  %22 = load ptr, ptr %rsp.addr, align 8, !dbg !567
  %gp_state92 = getelementptr inbounds %struct.rcu_sync, ptr %22, i32 0, i32 0, !dbg !567
  %23 = load i32, ptr %gp_state92, align 8, !dbg !567
  %cmp93 = icmp ne i32 %23, 0, !dbg !567
  %lnot95 = xor i1 %cmp93, true, !dbg !567
  %lnot97 = xor i1 %lnot95, true, !dbg !567
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !567
  store i32 %lnot.ext98, ptr %__ret_warn_on91, align 4, !dbg !567
  %24 = load i32, ptr %__ret_warn_on91, align 4, !dbg !568
  %tobool99 = icmp ne i32 %24, 0, !dbg !568
  %lnot100 = xor i1 %tobool99, true, !dbg !568
  %lnot102 = xor i1 %lnot100, true, !dbg !568
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !568
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !568
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !568
  %tobool106 = icmp ne i64 %expval105, 0, !dbg !568
  br i1 %tobool106, label %if.then107, label %if.end121, !dbg !567

if.then107:                                       ; preds = %if.then90
  br label %do.body108, !dbg !568

do.body108:                                       ; preds = %if.then107
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags109) #9, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %__flags109, metadata !506, metadata !DIExpression()), !dbg !569
  store i32 2307, ptr %__flags109, align 4, !dbg !569
  br label %do.body110, !dbg !569

do.body110:                                       ; preds = %do.body108
  br label %do.cond111, !dbg !570

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !570

do.end112:                                        ; preds = %do.cond111
  br label %do.body113, !dbg !569

do.body113:                                       ; preds = %do.end112
  %25 = load i32, ptr %__flags109, align 4, !dbg !572
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 204, i32 %25, i64 12) #9, !dbg !572, !srcloc !574
  br label %do.cond114, !dbg !572

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !572

do.end115:                                        ; preds = %do.cond114
  br label %do.body116, !dbg !569

do.body116:                                       ; preds = %do.end115
  br label %do.cond117, !dbg !575

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !575

do.end118:                                        ; preds = %do.cond117
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags109) #9, !dbg !568
  br label %do.cond119, !dbg !569

do.cond119:                                       ; preds = %do.end118
  br label %do.end120, !dbg !569

do.end120:                                        ; preds = %do.cond119
  br label %if.end121, !dbg !569

if.end121:                                        ; preds = %do.end120, %if.then90
  %26 = load i32, ptr %__ret_warn_on91, align 4, !dbg !567
  %tobool123 = icmp ne i32 %26, 0, !dbg !567
  %lnot124 = xor i1 %tobool123, true, !dbg !567
  %lnot126 = xor i1 %lnot124, true, !dbg !567
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !567
  %conv128 = sext i32 %lnot.ext127 to i64, !dbg !567
  %expval129 = call i64 @llvm.expect.i64(i64 %conv128, i64 0), !dbg !567
  store i64 %expval129, ptr %tmp122, align 8, !dbg !568
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on91) #9, !dbg !577
  %27 = load i64, ptr %tmp122, align 8, !dbg !567
  br label %if.end130, !dbg !578

if.end130:                                        ; preds = %if.end121, %if.end84
  call void @llvm.lifetime.end.p0(i64 4, ptr %gp_state) #9, !dbg !579
  ret void, !dbg !579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !580 dso_local void @rcu_barrier() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !582 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !588 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !589 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !592 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !598
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !599
  ret ptr %1, !dbg !600
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !601 dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !604 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !608, metadata !DIExpression()), !dbg !614
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !609, metadata !DIExpression()), !dbg !615
  br label %do.body, !dbg !616

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !617
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !610, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !617
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !613, metadata !DIExpression()), !dbg !617
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !617
  %conv = zext i1 %cmp to i32, !dbg !617
  store i32 1, ptr %tmp, align 4, !dbg !617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !618
  %0 = load i32, ptr %tmp, align 4, !dbg !617
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !618
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !618
  %3 = load i64, ptr %flags.addr, align 8, !dbg !618
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #8, !dbg !618
  br label %do.end, !dbg !618

do.end:                                           ; preds = %do.body
  ret void, !dbg !619
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !620 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @call_rcu_hurry(ptr noundef %head, ptr noundef %func) #7 align 16 !dbg !623 {
entry:
  %head.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !628, metadata !DIExpression()), !dbg !630
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !629, metadata !DIExpression()), !dbg !631
  %0 = load ptr, ptr %head.addr, align 8, !dbg !632
  %1 = load ptr, ptr %func.addr, align 8, !dbg !633
  call void @call_rcu(ptr noundef %0, ptr noundef %1) #8, !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !636 dso_local void @call_rcu(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!77}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 24, type: !113, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "rcu_sync_init", scope: !3, file: !3, line: 21, type: !4, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !111)
!3 = !DIFile(filename: "kernel/rcu/sync.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "069b67cbf2876fe93820e96f025507af")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !8, line: 17, size: 384, elements: !9)
!8 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!9 = !{!10, !12, !13, !68}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !7, file: !8, line: 18, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !7, file: !8, line: 19, baseType: !11, size: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !7, file: !8, line: 20, baseType: !14, size: 192, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !15, line: 41, baseType: !16)
!15 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !15, line: 37, size: 192, elements: !17)
!17 = !{!18, !62}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !16, file: !15, line: 38, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !20, line: 29, baseType: !21)
!20 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !20, line: 17, size: 32, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, scope: !21, file: !20, line: 18, baseType: !24, size: 32)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !20, line: 18, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !24, file: !20, line: 19, baseType: !27, size: 32)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !28, line: 14, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !27, file: !28, line: 15, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !32, line: 44, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !32, line: 14, size: 32, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, scope: !33, file: !32, line: 15, baseType: !36, size: 32)
!36 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !32, line: 15, size: 32, elements: !37)
!37 = !{!38, !44, !54}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !36, file: !32, line: 16, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !40, line: 174, baseType: !41)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 172, size: 32, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !41, file: !40, line: 173, baseType: !11, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !36, file: !32, line: 24, baseType: !45, size: 16)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !32, line: 24, size: 16, elements: !46)
!46 = !{!47, !53}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !45, file: !32, line: 25, baseType: !48, size: 8)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !49, line: 17, baseType: !50)
!49 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !51, line: 21, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !45, file: !32, line: 26, baseType: !48, size: 8, offset: 8)
!54 = !DIDerivedType(tag: DW_TAG_member, scope: !36, file: !32, line: 28, baseType: !55, size: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !32, line: 28, size: 32, elements: !56)
!56 = !{!57, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !55, file: !32, line: 29, baseType: !58, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !49, line: 19, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !51, line: 24, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !55, file: !32, line: 30, baseType: !58, size: 16, offset: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !16, file: !15, line: 39, baseType: !63, size: 128, offset: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 190, size: 128, elements: !64)
!64 = !{!65, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !40, line: 191, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !63, file: !40, line: 191, baseType: !66, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !7, file: !8, line: 22, baseType: !69, size: 128, align: 64, offset: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !40, line: 232, size: 128, align: 64, elements: !70)
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !40, line: 233, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !69, file: !40, line: 234, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !72}
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/rcu/.sync.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/rcu/sync\22 -D KBUILD_BASENAME=\22sync\22 -D KBUILD_MODNAME=\22sync\22 -D __KBUILD_MODNAME=kmod_sync -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/rcu/sync.ll kernel/rcu/sync.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !87, globals: !93, splitDebugInlining: false, nameTableKind: None)
!78 = !{!79}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 13, baseType: !80, size: 32, elements: !81)
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "GP_IDLE", value: 0)
!83 = !DIEnumerator(name: "GP_ENTER", value: 1)
!84 = !DIEnumerator(name: "GP_PASSED", value: 2)
!85 = !DIEnumerator(name: "GP_EXIT", value: 3)
!86 = !DIEnumerator(name: "GP_REPLAY", value: 4)
!87 = !{!88, !90, !92, !6}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !{!0, !94, !100, !105}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 112, elements: !98)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!99}
!99 = !DISubrange(count: 14)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 144, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 18)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !107, file: !108, line: 112, type: !92, isLocal: true, isDefinition: true)
!107 = distinct !DISubprogram(name: "might_resched", scope: !108, file: !108, line: 110, type: !109, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77)
!108 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!109 = !DISubroutineType(types: !110)
!110 = !{null}
!111 = !{!112}
!112 = !DILocalVariable(name: "rsp", arg: 1, scope: !2, file: !3, line: 21, type: !6)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !114, line: 206, elements: !115)
!114 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!115 = !{}
!116 = !{i32 7, !"Dwarf Version", i32 5}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 8, !"cf-protection-branch", i32 1}
!120 = !{i32 4, !"function_return_thunk_extern", i32 1}
!121 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!122 = !{i32 1, !"Code Model", i32 2}
!123 = !{i32 1, !"override-stack-alignment", i32 8}
!124 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!125 = !DILocation(line: 21, column: 37, scope: !2)
!126 = !DILocation(line: 23, column: 9, scope: !2)
!127 = !DILocation(line: 23, column: 2, scope: !2)
!128 = !DILocation(line: 24, column: 2, scope: !2)
!129 = !DILocation(line: 24, column: 2, scope: !130)
!130 = distinct !DILexicalBlock(scope: !2, file: !3, line: 24, column: 2)
!131 = !DILocation(line: 25, column: 1, scope: !2)
!132 = !DISubprogram(name: "__init_waitqueue_head", scope: !15, file: !15, line: 64, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !136, !138}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!139 = distinct !DISubprogram(name: "rcu_sync_enter_start", scope: !3, file: !3, line: 36, type: !4, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !140)
!140 = !{!141}
!141 = !DILocalVariable(name: "rsp", arg: 1, scope: !139, file: !3, line: 36, type: !6)
!142 = !DILocation(line: 36, column: 44, scope: !139)
!143 = !DILocation(line: 38, column: 2, scope: !139)
!144 = !DILocation(line: 38, column: 7, scope: !139)
!145 = !DILocation(line: 38, column: 15, scope: !139)
!146 = !DILocation(line: 39, column: 2, scope: !139)
!147 = !DILocation(line: 39, column: 7, scope: !139)
!148 = !DILocation(line: 39, column: 16, scope: !139)
!149 = !DILocation(line: 40, column: 1, scope: !139)
!150 = distinct !DISubprogram(name: "rcu_sync_enter", scope: !3, file: !3, line: 121, type: !4, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !151)
!151 = !{!152, !153, !154, !158, !161, !175, !177, !181}
!152 = !DILocalVariable(name: "rsp", arg: 1, scope: !150, file: !3, line: 121, type: !6)
!153 = !DILocalVariable(name: "gp_state", scope: !150, file: !3, line: 123, type: !11)
!154 = !DILocalVariable(name: "__ret_warn_on", scope: !155, file: !3, line: 129, type: !11)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 129, column: 3)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 127, column: 27)
!157 = distinct !DILexicalBlock(scope: !150, file: !3, line: 127, column: 6)
!158 = !DILocalVariable(name: "__flags", scope: !159, file: !3, line: 129, type: !11)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 129, column: 3)
!160 = distinct !DILexicalBlock(scope: !155, file: !3, line: 129, column: 3)
!161 = !DILocalVariable(name: "__wq_entry", scope: !162, file: !3, line: 155, type: !164)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 155, column: 2)
!163 = distinct !DILexicalBlock(scope: !150, file: !3, line: 155, column: 2)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !15, line: 30, size: 320, elements: !165)
!165 = !{!166, !167, !168, !174}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !15, line: 31, baseType: !80, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !164, file: !15, line: 32, baseType: !92, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !164, file: !15, line: 33, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !15, line: 16, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!11, !173, !80, !11, !92}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !164, file: !15, line: 34, baseType: !63, size: 128, offset: 192)
!175 = !DILocalVariable(name: "__ret", scope: !162, file: !3, line: 155, type: !176)
!176 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!177 = !DILocalVariable(name: "__int", scope: !178, file: !3, line: 155, type: !176)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 155, column: 2)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 155, column: 2)
!180 = distinct !DILexicalBlock(scope: !162, file: !3, line: 155, column: 2)
!181 = !DILabel(scope: !162, name: "__out", file: !3, line: 155)
!182 = !DILocation(line: 121, column: 38, scope: !150)
!183 = !DILocation(line: 123, column: 2, scope: !150)
!184 = !DILocation(line: 123, column: 6, scope: !150)
!185 = !DILocation(line: 125, column: 17, scope: !150)
!186 = !DILocation(line: 125, column: 22, scope: !150)
!187 = !DILocation(line: 125, column: 2, scope: !150)
!188 = !DILocation(line: 126, column: 13, scope: !150)
!189 = !DILocation(line: 126, column: 18, scope: !150)
!190 = !DILocation(line: 126, column: 11, scope: !150)
!191 = !DILocation(line: 127, column: 6, scope: !157)
!192 = !DILocation(line: 127, column: 15, scope: !157)
!193 = !DILocation(line: 127, column: 6, scope: !150)
!194 = !DILocation(line: 128, column: 3, scope: !156)
!195 = !DILocation(line: 128, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !156, file: !3, line: 128, column: 3)
!197 = !DILocation(line: 128, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !3, line: 128, column: 3)
!199 = !DILocation(line: 128, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 128, column: 3)
!201 = !DILocation(line: 129, column: 3, scope: !155)
!202 = !DILocation(line: 129, column: 3, scope: !160)
!203 = !DILocation(line: 129, column: 3, scope: !159)
!204 = !DILocation(line: 129, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !159, file: !3, line: 129, column: 3)
!206 = !DILocation(line: 129, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !159, file: !3, line: 129, column: 3)
!208 = !{i64 2150816309, i64 2150816338, i64 2150816384, i64 2150816442, i64 2150816496, i64 2150816550, i64 2150816605, i64 2150816636, i64 2150816944, i64 2150816950, i64 2150816997, i64 2150817020, i64 2150817046}
!209 = !DILocation(line: 129, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !159, file: !3, line: 129, column: 3)
!211 = !DILocation(line: 129, column: 3, scope: !156)
!212 = !DILocation(line: 140, column: 2, scope: !156)
!213 = !DILocation(line: 141, column: 2, scope: !150)
!214 = !DILocation(line: 141, column: 7, scope: !150)
!215 = !DILocation(line: 141, column: 15, scope: !150)
!216 = !DILocation(line: 142, column: 19, scope: !150)
!217 = !DILocation(line: 142, column: 24, scope: !150)
!218 = !DILocation(line: 142, column: 2, scope: !150)
!219 = !DILocation(line: 144, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !150, file: !3, line: 144, column: 6)
!221 = !DILocation(line: 144, column: 15, scope: !220)
!222 = !DILocation(line: 144, column: 6, scope: !150)
!223 = !DILocation(line: 149, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 144, column: 27)
!225 = !DILocation(line: 150, column: 18, scope: !224)
!226 = !DILocation(line: 150, column: 23, scope: !224)
!227 = !DILocation(line: 150, column: 3, scope: !224)
!228 = !DILocation(line: 152, column: 3, scope: !224)
!229 = !DILocation(line: 155, column: 2, scope: !150)
!230 = !DILocation(line: 155, column: 2, scope: !163)
!231 = !DILocation(line: 155, column: 2, scope: !232)
!232 = distinct !DILexicalBlock(scope: !163, file: !3, line: 155, column: 2)
!233 = !DILocation(line: 155, column: 2, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 155, column: 2)
!235 = distinct !DILexicalBlock(scope: !163, file: !3, line: 155, column: 2)
!236 = !DILocation(line: 155, column: 2, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !3, line: 155, column: 2)
!238 = !DILocation(line: 155, column: 2, scope: !235)
!239 = !DILocation(line: 155, column: 2, scope: !162)
!240 = !DILocation(line: 155, column: 2, scope: !178)
!241 = !DILocation(line: 155, column: 2, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 155, column: 2)
!243 = distinct !DILexicalBlock(scope: !178, file: !3, line: 155, column: 2)
!244 = !DILocation(line: 155, column: 2, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !3, line: 155, column: 2)
!246 = !DILocation(line: 155, column: 2, scope: !243)
!247 = !DILocation(line: 155, column: 2, scope: !179)
!248 = distinct !{!248, !249, !249, !250}
!249 = !DILocation(line: 155, column: 2, scope: !180)
!250 = !{!"llvm.loop.unroll.disable"}
!251 = !DILocation(line: 156, column: 1, scope: !150)
!252 = distinct !DISubprogram(name: "spin_lock_irq", scope: !253, file: !253, line: 374, type: !254, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !257)
!253 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!257 = !{!258}
!258 = !DILocalVariable(name: "lock", arg: 1, scope: !252, file: !253, line: 374, type: !256)
!259 = !DILocation(line: 374, column: 55, scope: !252)
!260 = !DILocation(line: 376, column: 2, scope: !252)
!261 = !DILocation(line: 377, column: 1, scope: !252)
!262 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !253, file: !253, line: 399, type: !254, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !263)
!263 = !{!264}
!264 = !DILocalVariable(name: "lock", arg: 1, scope: !262, file: !253, line: 399, type: !256)
!265 = !DILocation(line: 399, column: 57, scope: !262)
!266 = !DILocation(line: 401, column: 2, scope: !262)
!267 = !DILocation(line: 402, column: 1, scope: !262)
!268 = !DISubprogram(name: "synchronize_rcu", scope: !269, file: !269, line: 45, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!270 = distinct !DISubprogram(name: "rcu_sync_func", scope: !3, file: !3, line: 73, type: !75, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !271)
!271 = !{!272, !273, !274, !276, !278, !280, !283, !285, !288, !292}
!272 = !DILocalVariable(name: "rhp", arg: 1, scope: !270, file: !3, line: 73, type: !72)
!273 = !DILocalVariable(name: "rsp", scope: !270, file: !3, line: 75, type: !6)
!274 = !DILocalVariable(name: "__mptr", scope: !275, file: !3, line: 75, type: !92)
!275 = distinct !DILexicalBlock(scope: !270, file: !3, line: 75, column: 25)
!276 = !DILocalVariable(name: "flags", scope: !270, file: !3, line: 76, type: !277)
!277 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!278 = !DILocalVariable(name: "__ret_warn_on", scope: !279, file: !3, line: 78, type: !11)
!279 = distinct !DILexicalBlock(scope: !270, file: !3, line: 78, column: 2)
!280 = !DILocalVariable(name: "__flags", scope: !281, file: !3, line: 78, type: !11)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 78, column: 2)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 78, column: 2)
!283 = !DILocalVariable(name: "__ret_warn_on", scope: !284, file: !3, line: 79, type: !11)
!284 = distinct !DILexicalBlock(scope: !270, file: !3, line: 79, column: 2)
!285 = !DILocalVariable(name: "__flags", scope: !286, file: !3, line: 79, type: !11)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 79, column: 2)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 79, column: 2)
!288 = !DILocalVariable(name: "__dummy", scope: !289, file: !3, line: 81, type: !277)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 81, column: 2)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 81, column: 2)
!291 = distinct !DILexicalBlock(scope: !270, file: !3, line: 81, column: 2)
!292 = !DILocalVariable(name: "__dummy2", scope: !289, file: !3, line: 81, type: !277)
!293 = !DILocation(line: 73, column: 44, scope: !270)
!294 = !DILocation(line: 75, column: 2, scope: !270)
!295 = !DILocation(line: 75, column: 19, scope: !270)
!296 = !DILocation(line: 75, column: 25, scope: !275)
!297 = !DILocation(line: 75, column: 25, scope: !270)
!298 = !DILocation(line: 76, column: 2, scope: !270)
!299 = !DILocation(line: 76, column: 16, scope: !270)
!300 = !DILocation(line: 78, column: 2, scope: !279)
!301 = !DILocation(line: 78, column: 2, scope: !302)
!302 = distinct !DILexicalBlock(scope: !279, file: !3, line: 78, column: 2)
!303 = !DILocation(line: 78, column: 2, scope: !304)
!304 = distinct !DILexicalBlock(scope: !302, file: !3, line: 78, column: 2)
!305 = !DILocation(line: 78, column: 2, scope: !282)
!306 = !DILocation(line: 78, column: 2, scope: !281)
!307 = !DILocation(line: 78, column: 2, scope: !308)
!308 = distinct !DILexicalBlock(scope: !281, file: !3, line: 78, column: 2)
!309 = !DILocation(line: 78, column: 2, scope: !310)
!310 = distinct !DILexicalBlock(scope: !281, file: !3, line: 78, column: 2)
!311 = !{i64 2150800389, i64 2150800418, i64 2150800464, i64 2150800522, i64 2150800576, i64 2150800630, i64 2150800685, i64 2150800716, i64 2150801024, i64 2150801030, i64 2150801077, i64 2150801100, i64 2150801126}
!312 = !DILocation(line: 78, column: 2, scope: !313)
!313 = distinct !DILexicalBlock(scope: !281, file: !3, line: 78, column: 2)
!314 = !DILocation(line: 78, column: 2, scope: !270)
!315 = !DILocation(line: 79, column: 2, scope: !284)
!316 = !DILocation(line: 79, column: 2, scope: !317)
!317 = distinct !DILexicalBlock(scope: !284, file: !3, line: 79, column: 2)
!318 = !DILocation(line: 79, column: 2, scope: !319)
!319 = distinct !DILexicalBlock(scope: !317, file: !3, line: 79, column: 2)
!320 = !DILocation(line: 79, column: 2, scope: !287)
!321 = !DILocation(line: 79, column: 2, scope: !286)
!322 = !DILocation(line: 79, column: 2, scope: !323)
!323 = distinct !DILexicalBlock(scope: !286, file: !3, line: 79, column: 2)
!324 = !DILocation(line: 79, column: 2, scope: !325)
!325 = distinct !DILexicalBlock(scope: !286, file: !3, line: 79, column: 2)
!326 = !{i64 2150805755, i64 2150805784, i64 2150805830, i64 2150805888, i64 2150805942, i64 2150805996, i64 2150806051, i64 2150806082, i64 2150806390, i64 2150806396, i64 2150806443, i64 2150806466, i64 2150806492}
!327 = !DILocation(line: 79, column: 2, scope: !328)
!328 = distinct !DILexicalBlock(scope: !286, file: !3, line: 79, column: 2)
!329 = !DILocation(line: 79, column: 2, scope: !270)
!330 = !DILocation(line: 81, column: 2, scope: !270)
!331 = !DILocation(line: 81, column: 2, scope: !291)
!332 = !DILocation(line: 81, column: 2, scope: !289)
!333 = !DILocation(line: 81, column: 2, scope: !290)
!334 = !DILocation(line: 82, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !270, file: !3, line: 82, column: 6)
!336 = !DILocation(line: 82, column: 11, scope: !335)
!337 = !DILocation(line: 82, column: 6, scope: !270)
!338 = !DILocation(line: 86, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 82, column: 21)
!340 = !DILocation(line: 86, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !3, line: 86, column: 3)
!342 = !DILocation(line: 86, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !341, file: !3, line: 86, column: 3)
!344 = !DILocation(line: 86, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 86, column: 3)
!346 = !DILocation(line: 87, column: 3, scope: !339)
!347 = !DILocation(line: 88, column: 2, scope: !339)
!348 = !DILocation(line: 88, column: 13, scope: !349)
!349 = distinct !DILexicalBlock(scope: !335, file: !3, line: 88, column: 13)
!350 = !DILocation(line: 88, column: 18, scope: !349)
!351 = !DILocation(line: 88, column: 27, scope: !349)
!352 = !DILocation(line: 88, column: 13, scope: !335)
!353 = !DILocation(line: 93, column: 3, scope: !354)
!354 = distinct !DILexicalBlock(scope: !349, file: !3, line: 88, column: 41)
!355 = !DILocation(line: 93, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !3, line: 93, column: 3)
!357 = !DILocation(line: 93, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !3, line: 93, column: 3)
!359 = !DILocation(line: 93, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 93, column: 3)
!361 = !DILocation(line: 94, column: 17, scope: !354)
!362 = !DILocation(line: 94, column: 3, scope: !354)
!363 = !DILocation(line: 95, column: 2, scope: !354)
!364 = !DILocation(line: 101, column: 3, scope: !365)
!365 = distinct !DILexicalBlock(scope: !349, file: !3, line: 95, column: 9)
!366 = !DILocation(line: 101, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !3, line: 101, column: 3)
!368 = !DILocation(line: 101, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !3, line: 101, column: 3)
!370 = !DILocation(line: 101, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !3, line: 101, column: 3)
!372 = !DILocation(line: 103, column: 26, scope: !270)
!373 = !DILocation(line: 103, column: 31, scope: !270)
!374 = !DILocation(line: 103, column: 41, scope: !270)
!375 = !DILocation(line: 103, column: 2, scope: !270)
!376 = !DILocation(line: 104, column: 1, scope: !270)
!377 = !DILocation(line: 112, column: 2, scope: !378)
!378 = distinct !DILexicalBlock(scope: !107, file: !108, line: 112, column: 2)
!379 = !DILocation(line: 112, column: 2, scope: !107)
!380 = !DILocation(line: 113, column: 1, scope: !107)
!381 = !DISubprogram(name: "init_wait_entry", scope: !15, file: !15, line: 290, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !173, !11}
!384 = !DISubprogram(name: "prepare_to_wait_event", scope: !15, file: !15, line: 1199, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!176, !135, !173, !11}
!387 = !DISubprogram(name: "schedule", scope: !388, file: !388, line: 303, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!389 = !DISubprogram(name: "finish_wait", scope: !15, file: !15, line: 1200, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !135, !173}
!392 = distinct !DISubprogram(name: "rcu_sync_exit", scope: !3, file: !3, line: 168, type: !4, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !393)
!393 = !{!394, !395, !397, !400, !402}
!394 = !DILocalVariable(name: "rsp", arg: 1, scope: !392, file: !3, line: 168, type: !6)
!395 = !DILocalVariable(name: "__ret_warn_on", scope: !396, file: !3, line: 170, type: !11)
!396 = distinct !DILexicalBlock(scope: !392, file: !3, line: 170, column: 2)
!397 = !DILocalVariable(name: "__flags", scope: !398, file: !3, line: 170, type: !11)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 170, column: 2)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 170, column: 2)
!400 = !DILocalVariable(name: "__ret_warn_on", scope: !401, file: !3, line: 171, type: !11)
!401 = distinct !DILexicalBlock(scope: !392, file: !3, line: 171, column: 2)
!402 = !DILocalVariable(name: "__flags", scope: !403, file: !3, line: 171, type: !11)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 171, column: 2)
!404 = distinct !DILexicalBlock(scope: !401, file: !3, line: 171, column: 2)
!405 = !DILocation(line: 168, column: 37, scope: !392)
!406 = !DILocation(line: 170, column: 2, scope: !396)
!407 = !DILocation(line: 170, column: 2, scope: !408)
!408 = distinct !DILexicalBlock(scope: !396, file: !3, line: 170, column: 2)
!409 = !DILocation(line: 170, column: 2, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !3, line: 170, column: 2)
!411 = !DILocation(line: 170, column: 2, scope: !399)
!412 = !DILocation(line: 170, column: 2, scope: !398)
!413 = !DILocation(line: 170, column: 2, scope: !414)
!414 = distinct !DILexicalBlock(scope: !398, file: !3, line: 170, column: 2)
!415 = !DILocation(line: 170, column: 2, scope: !416)
!416 = distinct !DILexicalBlock(scope: !398, file: !3, line: 170, column: 2)
!417 = !{i64 2150829669, i64 2150829698, i64 2150829744, i64 2150829802, i64 2150829856, i64 2150829910, i64 2150829965, i64 2150829996, i64 2150830304, i64 2150830310, i64 2150830357, i64 2150830380, i64 2150830406}
!418 = !DILocation(line: 170, column: 2, scope: !419)
!419 = distinct !DILexicalBlock(scope: !398, file: !3, line: 170, column: 2)
!420 = !DILocation(line: 170, column: 2, scope: !392)
!421 = !DILocation(line: 171, column: 2, scope: !401)
!422 = !DILocation(line: 171, column: 2, scope: !423)
!423 = distinct !DILexicalBlock(scope: !401, file: !3, line: 171, column: 2)
!424 = !DILocation(line: 171, column: 2, scope: !425)
!425 = distinct !DILexicalBlock(scope: !423, file: !3, line: 171, column: 2)
!426 = !DILocation(line: 171, column: 2, scope: !404)
!427 = !DILocation(line: 171, column: 2, scope: !403)
!428 = !DILocation(line: 171, column: 2, scope: !429)
!429 = distinct !DILexicalBlock(scope: !403, file: !3, line: 171, column: 2)
!430 = !DILocation(line: 171, column: 2, scope: !431)
!431 = distinct !DILexicalBlock(scope: !403, file: !3, line: 171, column: 2)
!432 = !{i64 2150835028, i64 2150835057, i64 2150835103, i64 2150835161, i64 2150835215, i64 2150835269, i64 2150835324, i64 2150835355, i64 2150835663, i64 2150835669, i64 2150835716, i64 2150835739, i64 2150835765}
!433 = !DILocation(line: 171, column: 2, scope: !434)
!434 = distinct !DILexicalBlock(scope: !403, file: !3, line: 171, column: 2)
!435 = !DILocation(line: 171, column: 2, scope: !392)
!436 = !DILocation(line: 173, column: 17, scope: !392)
!437 = !DILocation(line: 173, column: 22, scope: !392)
!438 = !DILocation(line: 173, column: 2, scope: !392)
!439 = !DILocation(line: 174, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !392, file: !3, line: 174, column: 6)
!441 = !DILocation(line: 174, column: 14, scope: !440)
!442 = !DILocation(line: 174, column: 7, scope: !440)
!443 = !DILocation(line: 174, column: 6, scope: !392)
!444 = !DILocation(line: 175, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 175, column: 7)
!446 = distinct !DILexicalBlock(scope: !440, file: !3, line: 174, column: 24)
!447 = !DILocation(line: 175, column: 12, scope: !445)
!448 = !DILocation(line: 175, column: 21, scope: !445)
!449 = !DILocation(line: 175, column: 7, scope: !446)
!450 = !DILocation(line: 176, column: 4, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !3, line: 175, column: 35)
!452 = !DILocation(line: 176, column: 4, scope: !453)
!453 = distinct !DILexicalBlock(scope: !451, file: !3, line: 176, column: 4)
!454 = !DILocation(line: 176, column: 4, scope: !455)
!455 = distinct !DILexicalBlock(scope: !453, file: !3, line: 176, column: 4)
!456 = !DILocation(line: 176, column: 4, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 176, column: 4)
!458 = !DILocation(line: 177, column: 18, scope: !451)
!459 = !DILocation(line: 177, column: 4, scope: !451)
!460 = !DILocation(line: 178, column: 3, scope: !451)
!461 = !DILocation(line: 178, column: 14, scope: !462)
!462 = distinct !DILexicalBlock(scope: !445, file: !3, line: 178, column: 14)
!463 = !DILocation(line: 178, column: 19, scope: !462)
!464 = !DILocation(line: 178, column: 28, scope: !462)
!465 = !DILocation(line: 178, column: 14, scope: !445)
!466 = !DILocation(line: 179, column: 4, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 178, column: 40)
!468 = !DILocation(line: 179, column: 4, scope: !469)
!469 = distinct !DILexicalBlock(scope: !467, file: !3, line: 179, column: 4)
!470 = !DILocation(line: 179, column: 4, scope: !471)
!471 = distinct !DILexicalBlock(scope: !469, file: !3, line: 179, column: 4)
!472 = !DILocation(line: 179, column: 4, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 179, column: 4)
!474 = !DILocation(line: 180, column: 3, scope: !467)
!475 = !DILocation(line: 181, column: 2, scope: !446)
!476 = !DILocation(line: 182, column: 19, scope: !392)
!477 = !DILocation(line: 182, column: 24, scope: !392)
!478 = !DILocation(line: 182, column: 2, scope: !392)
!479 = !DILocation(line: 183, column: 1, scope: !392)
!480 = distinct !DISubprogram(name: "rcu_sync_call", scope: !3, file: !3, line: 45, type: !4, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !481)
!481 = !{!482}
!482 = !DILocalVariable(name: "rsp", arg: 1, scope: !480, file: !3, line: 45, type: !6)
!483 = !DILocation(line: 45, column: 44, scope: !480)
!484 = !DILocation(line: 47, column: 18, scope: !480)
!485 = !DILocation(line: 47, column: 23, scope: !480)
!486 = !DILocation(line: 47, column: 2, scope: !480)
!487 = !DILocation(line: 48, column: 1, scope: !480)
!488 = distinct !DISubprogram(name: "rcu_sync_dtor", scope: !3, file: !3, line: 189, type: !4, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !489)
!489 = !{!490, !491, !492, !494, !497, !499, !502, !506}
!490 = !DILocalVariable(name: "rsp", arg: 1, scope: !488, file: !3, line: 189, type: !6)
!491 = !DILocalVariable(name: "gp_state", scope: !488, file: !3, line: 191, type: !11)
!492 = !DILocalVariable(name: "__ret_warn_on", scope: !493, file: !3, line: 193, type: !11)
!493 = distinct !DILexicalBlock(scope: !488, file: !3, line: 193, column: 2)
!494 = !DILocalVariable(name: "__flags", scope: !495, file: !3, line: 193, type: !11)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 193, column: 2)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 193, column: 2)
!497 = !DILocalVariable(name: "__ret_warn_on", scope: !498, file: !3, line: 194, type: !11)
!498 = distinct !DILexicalBlock(scope: !488, file: !3, line: 194, column: 2)
!499 = !DILocalVariable(name: "__flags", scope: !500, file: !3, line: 194, type: !11)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 194, column: 2)
!501 = distinct !DILexicalBlock(scope: !498, file: !3, line: 194, column: 2)
!502 = !DILocalVariable(name: "__ret_warn_on", scope: !503, file: !3, line: 204, type: !11)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 204, column: 3)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 202, column: 27)
!505 = distinct !DILexicalBlock(scope: !488, file: !3, line: 202, column: 6)
!506 = !DILocalVariable(name: "__flags", scope: !507, file: !3, line: 204, type: !11)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 204, column: 3)
!508 = distinct !DILexicalBlock(scope: !503, file: !3, line: 204, column: 3)
!509 = !DILocation(line: 189, column: 37, scope: !488)
!510 = !DILocation(line: 191, column: 2, scope: !488)
!511 = !DILocation(line: 191, column: 6, scope: !488)
!512 = !DILocation(line: 193, column: 2, scope: !493)
!513 = !DILocation(line: 193, column: 2, scope: !514)
!514 = distinct !DILexicalBlock(scope: !493, file: !3, line: 193, column: 2)
!515 = !DILocation(line: 193, column: 2, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !3, line: 193, column: 2)
!517 = !DILocation(line: 193, column: 2, scope: !496)
!518 = !DILocation(line: 193, column: 2, scope: !495)
!519 = !DILocation(line: 193, column: 2, scope: !520)
!520 = distinct !DILexicalBlock(scope: !495, file: !3, line: 193, column: 2)
!521 = !DILocation(line: 193, column: 2, scope: !522)
!522 = distinct !DILexicalBlock(scope: !495, file: !3, line: 193, column: 2)
!523 = !{i64 2150844662, i64 2150844691, i64 2150844737, i64 2150844795, i64 2150844849, i64 2150844903, i64 2150844958, i64 2150844989, i64 2150845297, i64 2150845303, i64 2150845350, i64 2150845373, i64 2150845399}
!524 = !DILocation(line: 193, column: 2, scope: !525)
!525 = distinct !DILexicalBlock(scope: !495, file: !3, line: 193, column: 2)
!526 = !DILocation(line: 193, column: 2, scope: !488)
!527 = !DILocation(line: 194, column: 2, scope: !498)
!528 = !DILocation(line: 194, column: 2, scope: !529)
!529 = distinct !DILexicalBlock(scope: !498, file: !3, line: 194, column: 2)
!530 = !DILocation(line: 194, column: 2, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !3, line: 194, column: 2)
!532 = !DILocation(line: 194, column: 2, scope: !501)
!533 = !DILocation(line: 194, column: 2, scope: !500)
!534 = !DILocation(line: 194, column: 2, scope: !535)
!535 = distinct !DILexicalBlock(scope: !500, file: !3, line: 194, column: 2)
!536 = !DILocation(line: 194, column: 2, scope: !537)
!537 = distinct !DILexicalBlock(scope: !500, file: !3, line: 194, column: 2)
!538 = !{i64 2150850029, i64 2150850058, i64 2150850104, i64 2150850162, i64 2150850216, i64 2150850270, i64 2150850325, i64 2150850356, i64 2150850664, i64 2150850670, i64 2150850717, i64 2150850740, i64 2150850766}
!539 = !DILocation(line: 194, column: 2, scope: !540)
!540 = distinct !DILexicalBlock(scope: !500, file: !3, line: 194, column: 2)
!541 = !DILocation(line: 194, column: 2, scope: !488)
!542 = !DILocation(line: 196, column: 17, scope: !488)
!543 = !DILocation(line: 196, column: 22, scope: !488)
!544 = !DILocation(line: 196, column: 2, scope: !488)
!545 = !DILocation(line: 197, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !488, file: !3, line: 197, column: 6)
!547 = !DILocation(line: 197, column: 11, scope: !546)
!548 = !DILocation(line: 197, column: 20, scope: !546)
!549 = !DILocation(line: 197, column: 6, scope: !488)
!550 = !DILocation(line: 198, column: 3, scope: !546)
!551 = !DILocation(line: 198, column: 3, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 198, column: 3)
!553 = !DILocation(line: 198, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !552, file: !3, line: 198, column: 3)
!555 = !DILocation(line: 198, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 198, column: 3)
!557 = !DILocation(line: 199, column: 13, scope: !488)
!558 = !DILocation(line: 199, column: 18, scope: !488)
!559 = !DILocation(line: 199, column: 11, scope: !488)
!560 = !DILocation(line: 200, column: 19, scope: !488)
!561 = !DILocation(line: 200, column: 24, scope: !488)
!562 = !DILocation(line: 200, column: 2, scope: !488)
!563 = !DILocation(line: 202, column: 6, scope: !505)
!564 = !DILocation(line: 202, column: 15, scope: !505)
!565 = !DILocation(line: 202, column: 6, scope: !488)
!566 = !DILocation(line: 203, column: 3, scope: !504)
!567 = !DILocation(line: 204, column: 3, scope: !503)
!568 = !DILocation(line: 204, column: 3, scope: !508)
!569 = !DILocation(line: 204, column: 3, scope: !507)
!570 = !DILocation(line: 204, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !507, file: !3, line: 204, column: 3)
!572 = !DILocation(line: 204, column: 3, scope: !573)
!573 = distinct !DILexicalBlock(scope: !507, file: !3, line: 204, column: 3)
!574 = !{i64 2150853713, i64 2150853742, i64 2150853788, i64 2150853846, i64 2150853900, i64 2150853954, i64 2150854009, i64 2150854040, i64 2150854348, i64 2150854354, i64 2150854401, i64 2150854424, i64 2150854450}
!575 = !DILocation(line: 204, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !507, file: !3, line: 204, column: 3)
!577 = !DILocation(line: 204, column: 3, scope: !504)
!578 = !DILocation(line: 205, column: 2, scope: !504)
!579 = !DILocation(line: 206, column: 1, scope: !488)
!580 = !DISubprogram(name: "rcu_barrier", scope: !581, file: !581, line: 39, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!582 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !583, file: !583, line: 29, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!583 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!584 = !DISubroutineType(types: !585)
!585 = !{null, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !28, line: 23, baseType: !27)
!588 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !583, file: !583, line: 41, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !583, file: !583, line: 32, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DISubroutineType(types: !591)
!591 = !{!277, !586}
!592 = distinct !DISubprogram(name: "spinlock_check", scope: !253, file: !253, line: 324, type: !593, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!586, !256}
!595 = !{!596}
!596 = !DILocalVariable(name: "lock", arg: 1, scope: !592, file: !253, line: 324, type: !256)
!597 = !DILocation(line: 324, column: 67, scope: !592)
!598 = !DILocation(line: 326, column: 10, scope: !592)
!599 = !DILocation(line: 326, column: 16, scope: !592)
!600 = !DILocation(line: 326, column: 2, scope: !592)
!601 = !DISubprogram(name: "__wake_up_locked", scope: !15, file: !15, line: 219, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !135, !80, !11}
!604 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !253, file: !253, line: 404, type: !605, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !256, !277}
!607 = !{!608, !609, !610, !613}
!608 = !DILocalVariable(name: "lock", arg: 1, scope: !604, file: !253, line: 404, type: !256)
!609 = !DILocalVariable(name: "flags", arg: 2, scope: !604, file: !253, line: 404, type: !277)
!610 = !DILocalVariable(name: "__dummy", scope: !611, file: !253, line: 406, type: !277)
!611 = distinct !DILexicalBlock(scope: !612, file: !253, line: 406, column: 2)
!612 = distinct !DILexicalBlock(scope: !604, file: !253, line: 406, column: 2)
!613 = !DILocalVariable(name: "__dummy2", scope: !611, file: !253, line: 406, type: !277)
!614 = !DILocation(line: 404, column: 64, scope: !604)
!615 = !DILocation(line: 404, column: 84, scope: !604)
!616 = !DILocation(line: 406, column: 2, scope: !604)
!617 = !DILocation(line: 406, column: 2, scope: !611)
!618 = !DILocation(line: 406, column: 2, scope: !612)
!619 = !DILocation(line: 407, column: 1, scope: !604)
!620 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !583, file: !583, line: 43, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !586, !277}
!623 = distinct !DISubprogram(name: "call_rcu_hurry", scope: !269, file: !269, line: 115, type: !624, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !627)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !72, !626}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !40, line: 238, baseType: !74)
!627 = !{!628, !629}
!628 = !DILocalVariable(name: "head", arg: 1, scope: !623, file: !269, line: 115, type: !72)
!629 = !DILocalVariable(name: "func", arg: 2, scope: !623, file: !269, line: 115, type: !626)
!630 = !DILocation(line: 115, column: 52, scope: !623)
!631 = !DILocation(line: 115, column: 73, scope: !623)
!632 = !DILocation(line: 117, column: 11, scope: !623)
!633 = !DILocation(line: 117, column: 17, scope: !623)
!634 = !DILocation(line: 117, column: 2, scope: !623)
!635 = !DILocation(line: 118, column: 1, scope: !623)
!636 = !DISubprogram(name: "call_rcu", scope: !269, file: !269, line: 42, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
