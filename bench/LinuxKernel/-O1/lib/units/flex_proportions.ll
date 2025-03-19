; ModuleID = 'lib/flex_proportions.c'
source_filename = "lib/flex_proportions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.fprop_local_single = type { i64, i32, %struct.raw_spinlock }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }

@fprop_global_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@fprop_new_period.__UNIQUE_ID___addressable___SCK__preempt_schedule116 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !97
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@fprop_local_init_percpu.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !108
@nr_cpu_ids = external dso_local global i32, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@percpu_counter_batch = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @fprop_new_period.__UNIQUE_ID___addressable___SCK__preempt_schedule116], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fprop_global_init(ptr noundef %p, i32 noundef %gfp) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !127, metadata !DIExpression()), !dbg !140
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !128, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %err, metadata !129, metadata !DIExpression()), !dbg !143
  %0 = load ptr, ptr %p.addr, align 8, !dbg !144
  %period = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1, !dbg !145
  store i32 0, ptr %period, align 8, !dbg !146
  %1 = load ptr, ptr %p.addr, align 8, !dbg !147
  %events = getelementptr inbounds %struct.fprop_global, ptr %1, i32 0, i32 0, !dbg !147
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !147
  %call = call i32 @__percpu_counter_init_many(ptr noundef %events, i64 noundef 1, i32 noundef %2, i32 noundef 1, ptr noundef @fprop_global_init.__key) #14, !dbg !147
  store i32 %call, ptr %tmp, align 4, !dbg !147
  %3 = load i32, ptr %tmp, align 4, !dbg !147
  store i32 %3, ptr %err, align 4, !dbg !149
  %4 = load i32, ptr %err, align 4, !dbg !150
  %tobool = icmp ne i32 %4, 0, !dbg !150
  br i1 %tobool, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !153
  store i32 %5, ptr %retval, align 4, !dbg !154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !154

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8, !dbg !155
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %6, i32 0, i32 2, !dbg !155
  call void @__seqcount_init(ptr noundef %sequence, ptr noundef null, ptr noundef null) #14, !dbg !155
  store i32 0, ptr %retval, align 4, !dbg !156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !157
  %7 = load i32, ptr %retval, align 4, !dbg !157
  ret i32 %7, !dbg !157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !158 dso_local i32 @__percpu_counter_init_many(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqcount_init(ptr noundef %s, ptr noundef %name, ptr noundef %key) #4 align 16 !dbg !163 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !171, metadata !DIExpression()), !dbg !174
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !172, metadata !DIExpression()), !dbg !175
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !173, metadata !DIExpression()), !dbg !176
  br label %do.body, !dbg !177

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !178
  %1 = load ptr, ptr %key.addr, align 8, !dbg !178
  br label %do.end, !dbg !178

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %s.addr, align 8, !dbg !180
  %sequence = getelementptr inbounds %struct.seqcount, ptr %2, i32 0, i32 0, !dbg !181
  store i32 0, ptr %sequence, align 4, !dbg !182
  ret void, !dbg !183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fprop_global_destroy(ptr noundef %p) #0 align 16 !dbg !184 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !188, metadata !DIExpression()), !dbg !189
  %0 = load ptr, ptr %p.addr, align 8, !dbg !190
  %events = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 0, !dbg !191
  call void @percpu_counter_destroy(ptr noundef %events) #14, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_destroy(ptr noundef %fbc) #4 align 16 !dbg !194 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !200
  call void @percpu_counter_destroy_many(ptr noundef %0, i32 noundef 1) #14, !dbg !201
  ret void, !dbg !202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @fprop_new_period(ptr noundef %p, i32 noundef %periods) #0 align 16 !dbg !99 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %periods.addr = alloca i32, align 4
  %events = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !105, metadata !DIExpression()), !dbg !203
  store i32 %periods, ptr %periods.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %periods.addr, metadata !106, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 8, ptr %events) #13, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %events, metadata !107, metadata !DIExpression()), !dbg !206
  %0 = load ptr, ptr %p.addr, align 8, !dbg !207
  %events1 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 0, !dbg !208
  %call = call i64 @percpu_counter_sum(ptr noundef %events1) #14, !dbg !209
  store i64 %call, ptr %events, align 8, !dbg !206
  %1 = load i64, ptr %events, align 8, !dbg !210
  %cmp = icmp sle i64 %1, 1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !215

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !216

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !219

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !219

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !221

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !221

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !222

do.body5:                                         ; preds = %do.end4
  %2 = load ptr, ptr %p.addr, align 8, !dbg !223
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %2, i32 0, i32 2, !dbg !223
  call void @__seqprop_assert(ptr noundef %sequence) #14, !dbg !223
  %3 = load ptr, ptr %p.addr, align 8, !dbg !225
  %sequence6 = getelementptr inbounds %struct.fprop_global, ptr %3, i32 0, i32 2, !dbg !225
  %call7 = call zeroext i1 @__seqprop_preemptible(ptr noundef %sequence6) #14, !dbg !225
  br i1 %call7, label %if.then8, label %if.end12, !dbg !223

if.then8:                                         ; preds = %do.body5
  br label %do.body9, !dbg !225

do.body9:                                         ; preds = %if.then8
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !227
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !227, !srcloc !229
  br label %do.cond10, !dbg !227

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !227

do.end11:                                         ; preds = %do.cond10
  br label %if.end12, !dbg !227

if.end12:                                         ; preds = %do.end11, %do.body5
  %4 = load ptr, ptr %p.addr, align 8, !dbg !223
  %sequence13 = getelementptr inbounds %struct.fprop_global, ptr %4, i32 0, i32 2, !dbg !223
  %call14 = call ptr @__seqprop_ptr(ptr noundef %sequence13) #14, !dbg !223
  call void @do_write_seqcount_begin(ptr noundef %call14) #14, !dbg !223
  br label %do.cond15, !dbg !223

do.cond15:                                        ; preds = %if.end12
  br label %do.end16, !dbg !223

do.end16:                                         ; preds = %do.cond15
  %5 = load i32, ptr %periods.addr, align 4, !dbg !230
  %cmp17 = icmp slt i32 %5, 64, !dbg !232
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !233

if.then18:                                        ; preds = %do.end16
  %6 = load i64, ptr %events, align 8, !dbg !234
  %7 = load i32, ptr %periods.addr, align 4, !dbg !235
  %sh_prom = zext i32 %7 to i64, !dbg !236
  %shr = ashr i64 %6, %sh_prom, !dbg !236
  %8 = load i64, ptr %events, align 8, !dbg !237
  %sub = sub i64 %8, %shr, !dbg !237
  store i64 %sub, ptr %events, align 8, !dbg !237
  br label %if.end19, !dbg !238

if.end19:                                         ; preds = %if.then18, %do.end16
  %9 = load ptr, ptr %p.addr, align 8, !dbg !239
  %events20 = getelementptr inbounds %struct.fprop_global, ptr %9, i32 0, i32 0, !dbg !240
  %10 = load i64, ptr %events, align 8, !dbg !241
  %sub21 = sub i64 0, %10, !dbg !242
  call void @percpu_counter_add(ptr noundef %events20, i64 noundef %sub21) #14, !dbg !243
  %11 = load i32, ptr %periods.addr, align 4, !dbg !244
  %12 = load ptr, ptr %p.addr, align 8, !dbg !245
  %period = getelementptr inbounds %struct.fprop_global, ptr %12, i32 0, i32 1, !dbg !246
  %13 = load i32, ptr %period, align 8, !dbg !247
  %add = add i32 %13, %11, !dbg !247
  store i32 %add, ptr %period, align 8, !dbg !247
  br label %do.body22, !dbg !248

do.body22:                                        ; preds = %if.end19
  %14 = load ptr, ptr %p.addr, align 8, !dbg !249
  %sequence23 = getelementptr inbounds %struct.fprop_global, ptr %14, i32 0, i32 2, !dbg !249
  %call24 = call ptr @__seqprop_ptr(ptr noundef %sequence23) #14, !dbg !249
  call void @do_write_seqcount_end(ptr noundef %call24) #14, !dbg !249
  %15 = load ptr, ptr %p.addr, align 8, !dbg !251
  %sequence25 = getelementptr inbounds %struct.fprop_global, ptr %15, i32 0, i32 2, !dbg !251
  %call26 = call zeroext i1 @__seqprop_preemptible(ptr noundef %sequence25) #14, !dbg !251
  br i1 %call26, label %if.then27, label %if.end38, !dbg !249

if.then27:                                        ; preds = %do.body22
  br label %do.body28, !dbg !251

do.body28:                                        ; preds = %if.then27
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !253, !srcloc !255
  %call29 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !256
  %lnot = xor i1 %call29, true, !dbg !256
  %lnot30 = xor i1 %lnot, true, !dbg !256
  %lnot.ext = zext i1 %lnot30 to i32, !dbg !256
  %conv = sext i32 %lnot.ext to i64, !dbg !256
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !256
  %tobool = icmp ne i64 %expval, 0, !dbg !256
  br i1 %tobool, label %if.then31, label %if.end35, !dbg !253

if.then31:                                        ; preds = %do.body28
  br label %do.body32, !dbg !256

do.body32:                                        ; preds = %if.then31
  %16 = call i64 @llvm.read_register.i64(metadata !130), !dbg !258
  %17 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %16) #13, !dbg !258, !srcloc !260
  call void @llvm.write_register.i64(metadata !130, i64 %17), !dbg !258
  br label %do.cond33, !dbg !258

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !258

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !258

if.end35:                                         ; preds = %do.end34, %do.body28
  br label %do.cond36, !dbg !253

do.cond36:                                        ; preds = %if.end35
  br label %do.end37, !dbg !253

do.end37:                                         ; preds = %do.cond36
  br label %if.end38, !dbg !253

if.end38:                                         ; preds = %do.end37, %do.body22
  br label %do.cond39, !dbg !249

do.cond39:                                        ; preds = %if.end38
  br label %do.end40, !dbg !249

do.end40:                                         ; preds = %do.cond39
  call void @preempt_enable_nested() #14, !dbg !261
  store i1 true, ptr %retval, align 1, !dbg !262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !262

cleanup:                                          ; preds = %do.end40, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %events) #13, !dbg !263
  %18 = load i1, ptr %retval, align 1, !dbg !263
  ret i1 %18, !dbg !263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_sum(ptr noundef %fbc) #4 align 16 !dbg !264 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !270
  %call = call i64 @__percpu_counter_sum(ptr noundef %0) #14, !dbg !271
  ret i64 %call, !dbg !272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqprop_assert(ptr noundef %s) #4 align 16 !dbg !273 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !279, metadata !DIExpression()), !dbg !280
  br label %do.body, !dbg !281

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !282

do.end:                                           ; preds = %do.body
  ret void, !dbg !284
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__seqprop_preemptible(ptr noundef %s) #4 align 16 !dbg !285 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !289, metadata !DIExpression()), !dbg !290
  ret i1 false, !dbg !291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !292 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !297, metadata !DIExpression()), !dbg !305
  br label %do.body, !dbg !306

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !298, metadata !DIExpression()), !dbg !307
  %0 = load i32, ptr %val.addr, align 4, !dbg !307
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !307
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !307

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !307
  %cmp = icmp eq i32 %2, 1, !dbg !307
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !307

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !307
  %cmp1 = icmp eq i32 %3, -1, !dbg !307
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !307

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !307
  br label %cond.end, !dbg !307

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !307
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !307
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !308
  %cmp2 = icmp eq i32 %5, 1, !dbg !308
  br i1 %cmp2, label %if.then, label %if.else, !dbg !307

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !309, !srcloc !311
  br label %if.end8, !dbg !308

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !312
  %cmp3 = icmp eq i32 %6, -1, !dbg !312
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !308

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !313, !srcloc !315
  br label %if.end, !dbg !312

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !312

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !301, metadata !DIExpression()), !dbg !316
  %7 = load i32, ptr %val.addr, align 4, !dbg !316
  %conv = sext i32 %7 to i64, !dbg !316
  %and = and i64 %conv, 4294967295, !dbg !316
  %conv7 = trunc i64 %and to i32, !dbg !316
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !316
  %8 = load i32, ptr %pto_val__, align 4, !dbg !316
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !316, !srcloc !317
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !312
  br label %do.cond, !dbg !316

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !316

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !306
  br label %do.end10, !dbg !307

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin(ptr noundef %s) #4 align 16 !dbg !319 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load ptr, ptr %s.addr, align 8, !dbg !325
  call void @do_write_seqcount_begin_nested(ptr noundef %0, i32 noundef 0) #14, !dbg !326
  ret void, !dbg !327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_ptr(ptr noundef %s) #4 align 16 !dbg !328 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load ptr, ptr %s.addr, align 8, !dbg !334
  ret ptr %0, !dbg !335
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_add(ptr noundef %fbc, i64 noundef %amount) #4 align 16 !dbg !336 {
entry:
  %fbc.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !340, metadata !DIExpression()), !dbg !342
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !341, metadata !DIExpression()), !dbg !343
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !344
  %1 = load i64, ptr %amount.addr, align 8, !dbg !345
  %2 = load i32, ptr @percpu_counter_batch, align 4, !dbg !346
  call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %1, i32 noundef %2) #14, !dbg !347
  ret void, !dbg !348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_end(ptr noundef %s) #4 align 16 !dbg !349 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !351, metadata !DIExpression()), !dbg !352
  br label %do.body, !dbg !353

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !354

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !356
  call void @do_raw_write_seqcount_end(ptr noundef %0) #14, !dbg !357
  ret void, !dbg !358
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !359 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %c, metadata !363, metadata !DIExpression()), !dbg !365
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !365, !srcloc !366
  %1 = icmp ult i8 %0, 2, !dbg !365
  call void @llvm.assume(i1 %1), !dbg !365
  store i8 %0, ptr %c, align 1, !dbg !365
  %2 = load i8, ptr %c, align 1, !dbg !365, !range !367, !noundef !125
  %tobool = trunc i8 %2 to i1, !dbg !365
  %frombool = zext i1 %tobool to i8, !dbg !365
  store i8 %frombool, ptr %tmp, align 1, !dbg !365
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !368
  %3 = load i8, ptr %tmp, align 1, !dbg !365, !range !367, !noundef !125
  %tobool1 = trunc i8 %3 to i1, !dbg !365
  ret i1 %tobool1, !dbg !369
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @preempt_enable_nested() #5 align 16 !dbg !370 {
entry:
  ret void, !dbg !374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fprop_local_init_single(ptr noundef %pl) #0 align 16 !dbg !375 {
entry:
  %pl.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %pl.addr, align 8, !dbg !387
  %events = getelementptr inbounds %struct.fprop_local_single, ptr %0, i32 0, i32 0, !dbg !388
  store i64 0, ptr %events, align 8, !dbg !389
  %1 = load ptr, ptr %pl.addr, align 8, !dbg !390
  %period = getelementptr inbounds %struct.fprop_local_single, ptr %1, i32 0, i32 1, !dbg !391
  store i32 0, ptr %period, align 8, !dbg !392
  br label %do.body, !dbg !393

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %pl.addr, align 8, !dbg !394
  %lock = getelementptr inbounds %struct.fprop_local_single, ptr %2, i32 0, i32 2, !dbg !394
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !394
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !394
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !394
  store i32 0, ptr %counter, align 4, !dbg !394
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !394
  br label %do.end, !dbg !394

do.end:                                           ; preds = %do.body
  ret i32 0, !dbg !396
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fprop_local_destroy_single(ptr noundef %pl) #0 align 16 !dbg !397 {
entry:
  %pl.addr = alloca ptr, align 8
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !401, metadata !DIExpression()), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__fprop_inc_single(ptr noundef %p, ptr noundef %pl) #0 align 16 !dbg !404 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !408, metadata !DIExpression()), !dbg !410
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !409, metadata !DIExpression()), !dbg !411
  %0 = load ptr, ptr %p.addr, align 8, !dbg !412
  %1 = load ptr, ptr %pl.addr, align 8, !dbg !413
  call void @fprop_reflect_period_single(ptr noundef %0, ptr noundef %1) #14, !dbg !414
  %2 = load ptr, ptr %pl.addr, align 8, !dbg !415
  %events = getelementptr inbounds %struct.fprop_local_single, ptr %2, i32 0, i32 0, !dbg !416
  %3 = load i64, ptr %events, align 8, !dbg !417
  %inc = add i64 %3, 1, !dbg !417
  store i64 %inc, ptr %events, align 8, !dbg !417
  %4 = load ptr, ptr %p.addr, align 8, !dbg !418
  %events1 = getelementptr inbounds %struct.fprop_global, ptr %4, i32 0, i32 0, !dbg !419
  call void @percpu_counter_add(ptr noundef %events1, i64 noundef 1) #14, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fprop_reflect_period_single(ptr noundef %p, ptr noundef %pl) #0 align 16 !dbg !422 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %period = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !424, metadata !DIExpression()), !dbg !442
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !425, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 4, ptr %period) #13, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %period, metadata !426, metadata !DIExpression()), !dbg !445
  %0 = load ptr, ptr %p.addr, align 8, !dbg !446
  %period1 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1, !dbg !447
  %1 = load i32, ptr %period1, align 8, !dbg !447
  store i32 %1, ptr %period, align 4, !dbg !445
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !427, metadata !DIExpression()), !dbg !449
  %2 = load ptr, ptr %pl.addr, align 8, !dbg !450
  %period2 = getelementptr inbounds %struct.fprop_local_single, ptr %2, i32 0, i32 1, !dbg !452
  %3 = load i32, ptr %period2, align 8, !dbg !452
  %4 = load i32, ptr %period, align 4, !dbg !453
  %cmp = icmp eq i32 %3, %4, !dbg !454
  br i1 %cmp, label %if.then, label %if.end, !dbg !455

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !456

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !457

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !428, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !431, metadata !DIExpression()), !dbg !458
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !458
  %conv = zext i1 %cmp3 to i32, !dbg !458
  store i32 1, ptr %tmp, align 4, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !459
  %5 = load i32, ptr %tmp, align 4, !dbg !458
  %6 = load ptr, ptr %pl.addr, align 8, !dbg !459
  %lock = getelementptr inbounds %struct.fprop_local_single, ptr %6, i32 0, i32 2, !dbg !459
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #14, !dbg !459
  store i64 %call, ptr %flags, align 8, !dbg !459
  br label %do.cond, !dbg !459

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !459

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %pl.addr, align 8, !dbg !460
  %period4 = getelementptr inbounds %struct.fprop_local_single, ptr %7, i32 0, i32 1, !dbg !461
  %8 = load i32, ptr %period4, align 8, !dbg !461
  %9 = load i32, ptr %period, align 4, !dbg !462
  %cmp5 = icmp uge i32 %8, %9, !dbg !463
  br i1 %cmp5, label %if.then7, label %if.end17, !dbg !464

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !465

do.body8:                                         ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy9) #13, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %__dummy9, metadata !432, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy210) #13, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %__dummy210, metadata !437, metadata !DIExpression()), !dbg !466
  %cmp11 = icmp eq ptr %__dummy9, %__dummy210, !dbg !466
  %conv12 = zext i1 %cmp11 to i32, !dbg !466
  store i32 1, ptr %tmp13, align 4, !dbg !466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy210) #13, !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy9) #13, !dbg !467
  %10 = load i32, ptr %tmp13, align 4, !dbg !466
  %11 = load ptr, ptr %pl.addr, align 8, !dbg !467
  %lock14 = getelementptr inbounds %struct.fprop_local_single, ptr %11, i32 0, i32 2, !dbg !467
  %12 = load i64, ptr %flags, align 8, !dbg !467
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock14, i64 noundef %12) #14, !dbg !467
  br label %do.cond15, !dbg !467

do.cond15:                                        ; preds = %do.body8
  br label %do.end16, !dbg !467

do.end16:                                         ; preds = %do.cond15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !468

if.end17:                                         ; preds = %do.end
  %13 = load i32, ptr %period, align 4, !dbg !469
  %14 = load ptr, ptr %pl.addr, align 8, !dbg !471
  %period18 = getelementptr inbounds %struct.fprop_local_single, ptr %14, i32 0, i32 1, !dbg !472
  %15 = load i32, ptr %period18, align 8, !dbg !472
  %sub = sub i32 %13, %15, !dbg !473
  %cmp19 = icmp ult i32 %sub, 64, !dbg !474
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !475

if.then21:                                        ; preds = %if.end17
  %16 = load i32, ptr %period, align 4, !dbg !476
  %17 = load ptr, ptr %pl.addr, align 8, !dbg !477
  %period22 = getelementptr inbounds %struct.fprop_local_single, ptr %17, i32 0, i32 1, !dbg !478
  %18 = load i32, ptr %period22, align 8, !dbg !478
  %sub23 = sub i32 %16, %18, !dbg !479
  %19 = load ptr, ptr %pl.addr, align 8, !dbg !480
  %events = getelementptr inbounds %struct.fprop_local_single, ptr %19, i32 0, i32 0, !dbg !481
  %20 = load i64, ptr %events, align 8, !dbg !482
  %sh_prom = zext i32 %sub23 to i64, !dbg !482
  %shr = lshr i64 %20, %sh_prom, !dbg !482
  store i64 %shr, ptr %events, align 8, !dbg !482
  br label %if.end25, !dbg !480

if.else:                                          ; preds = %if.end17
  %21 = load ptr, ptr %pl.addr, align 8, !dbg !483
  %events24 = getelementptr inbounds %struct.fprop_local_single, ptr %21, i32 0, i32 0, !dbg !484
  store i64 0, ptr %events24, align 8, !dbg !485
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then21
  %22 = load i32, ptr %period, align 4, !dbg !486
  %23 = load ptr, ptr %pl.addr, align 8, !dbg !487
  %period26 = getelementptr inbounds %struct.fprop_local_single, ptr %23, i32 0, i32 1, !dbg !488
  store i32 %22, ptr %period26, align 8, !dbg !489
  br label %do.body27, !dbg !490

do.body27:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #13, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !438, metadata !DIExpression()), !dbg !491
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy229) #13, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %__dummy229, metadata !441, metadata !DIExpression()), !dbg !491
  %cmp30 = icmp eq ptr %__dummy28, %__dummy229, !dbg !491
  %conv31 = zext i1 %cmp30 to i32, !dbg !491
  store i32 1, ptr %tmp32, align 4, !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy229) #13, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #13, !dbg !492
  %24 = load i32, ptr %tmp32, align 4, !dbg !491
  %25 = load ptr, ptr %pl.addr, align 8, !dbg !492
  %lock33 = getelementptr inbounds %struct.fprop_local_single, ptr %25, i32 0, i32 2, !dbg !492
  %26 = load i64, ptr %flags, align 8, !dbg !492
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33, i64 noundef %26) #14, !dbg !492
  br label %do.cond34, !dbg !492

do.cond34:                                        ; preds = %do.body27
  br label %do.end35, !dbg !492

do.end35:                                         ; preds = %do.cond34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !493
  br label %cleanup, !dbg !493

cleanup:                                          ; preds = %do.end35, %do.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !493
  call void @llvm.lifetime.end.p0(i64 4, ptr %period) #13, !dbg !493
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !493

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fprop_fraction_single(ptr noundef %p, ptr noundef %pl, ptr noundef %numerator, ptr noundef %denominator) #0 align 16 !dbg !494 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %numerator.addr = alloca ptr, align 8
  %denominator.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !499, metadata !DIExpression()), !dbg !512
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !500, metadata !DIExpression()), !dbg !513
  store ptr %numerator, ptr %numerator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %numerator.addr, metadata !501, metadata !DIExpression()), !dbg !514
  store ptr %denominator, ptr %denominator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %denominator.addr, metadata !502, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #13, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !503, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #13, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %num, metadata !504, metadata !DIExpression()), !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr %den) #13, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %den, metadata !505, metadata !DIExpression()), !dbg !520
  br label %do.body, !dbg !521

do.body:                                          ; preds = %do.cond15, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #13, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !506, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #13, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !510, metadata !DIExpression()), !dbg !523
  br label %while.cond, !dbg !523

while.cond:                                       ; preds = %while.body, %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !523
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 2, !dbg !523
  %call = call i32 @__seqprop_sequence(ptr noundef %sequence) #14, !dbg !523
  store i32 %call, ptr %__seq, align 4, !dbg !523
  %and = and i32 %call, 1, !dbg !523
  %tobool = icmp ne i32 %and, 0, !dbg !523
  br i1 %tobool, label %while.body, label %while.end, !dbg !523

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #14, !dbg !523
  br label %while.cond, !dbg !523, !llvm.loop !524

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #14, !dbg !523
  %1 = load i32, ptr %__seq, align 4, !dbg !523
  store i32 %1, ptr %tmp1, align 4, !dbg !523
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #13, !dbg !522
  %2 = load i32, ptr %tmp1, align 4, !dbg !523
  store i32 %2, ptr %_seq, align 4, !dbg !522
  br label %do.body2, !dbg !522

do.body2:                                         ; preds = %while.end
  br label %do.body3, !dbg !527

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !529

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !529

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !527

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !531

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !533

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !533

do.end7:                                          ; preds = %do.cond6
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !531, !srcloc !535
  br label %do.cond8, !dbg !531

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !531

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !527

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !527

do.end11:                                         ; preds = %do.cond10
  %3 = load i32, ptr %_seq, align 4, !dbg !522
  store i32 %3, ptr %tmp12, align 4, !dbg !527
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #13, !dbg !536
  %4 = load i32, ptr %tmp12, align 4, !dbg !522
  store i32 %4, ptr %tmp, align 4, !dbg !537
  %5 = load i32, ptr %tmp, align 4, !dbg !536
  store i32 %5, ptr %seq, align 4, !dbg !538
  %6 = load ptr, ptr %p.addr, align 8, !dbg !539
  %7 = load ptr, ptr %pl.addr, align 8, !dbg !540
  call void @fprop_reflect_period_single(ptr noundef %6, ptr noundef %7) #14, !dbg !541
  %8 = load ptr, ptr %pl.addr, align 8, !dbg !542
  %events = getelementptr inbounds %struct.fprop_local_single, ptr %8, i32 0, i32 0, !dbg !543
  %9 = load i64, ptr %events, align 8, !dbg !543
  store i64 %9, ptr %num, align 8, !dbg !544
  %10 = load ptr, ptr %p.addr, align 8, !dbg !545
  %events13 = getelementptr inbounds %struct.fprop_global, ptr %10, i32 0, i32 0, !dbg !546
  %call14 = call i64 @percpu_counter_read_positive(ptr noundef %events13) #14, !dbg !547
  store i64 %call14, ptr %den, align 8, !dbg !548
  br label %do.cond15, !dbg !549

do.cond15:                                        ; preds = %do.end11
  %11 = load ptr, ptr %p.addr, align 8, !dbg !550
  %sequence16 = getelementptr inbounds %struct.fprop_global, ptr %11, i32 0, i32 2, !dbg !550
  %call17 = call ptr @__seqprop_ptr(ptr noundef %sequence16) #14, !dbg !550
  %12 = load i32, ptr %seq, align 4, !dbg !550
  %call18 = call i32 @do_read_seqcount_retry(ptr noundef %call17, i32 noundef %12) #14, !dbg !550
  %tobool19 = icmp ne i32 %call18, 0, !dbg !549
  br i1 %tobool19, label %do.body, label %do.end20, !dbg !549, !llvm.loop !551

do.end20:                                         ; preds = %do.cond15
  %13 = load i64, ptr %den, align 8, !dbg !553
  %14 = load i64, ptr %num, align 8, !dbg !555
  %cmp = icmp sle i64 %13, %14, !dbg !556
  br i1 %cmp, label %if.then, label %if.end23, !dbg !557

if.then:                                          ; preds = %do.end20
  %15 = load i64, ptr %num, align 8, !dbg !558
  %tobool21 = icmp ne i64 %15, 0, !dbg !558
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !561

if.then22:                                        ; preds = %if.then
  %16 = load i64, ptr %num, align 8, !dbg !562
  store i64 %16, ptr %den, align 8, !dbg !563
  br label %if.end, !dbg !564

if.else:                                          ; preds = %if.then
  store i64 1, ptr %den, align 8, !dbg !565
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  br label %if.end23, !dbg !566

if.end23:                                         ; preds = %if.end, %do.end20
  %17 = load i64, ptr %den, align 8, !dbg !567
  %18 = load ptr, ptr %denominator.addr, align 8, !dbg !568
  store i64 %17, ptr %18, align 8, !dbg !569
  %19 = load i64, ptr %num, align 8, !dbg !570
  %20 = load ptr, ptr %numerator.addr, align 8, !dbg !571
  store i64 %19, ptr %20, align 8, !dbg !572
  call void @llvm.lifetime.end.p0(i64 8, ptr %den) #13, !dbg !573
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #13, !dbg !573
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #13, !dbg !573
  ret void, !dbg !573
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_sequence(ptr noundef %s) #4 align 16 !dbg !574 {
entry:
  %s.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !578, metadata !DIExpression()), !dbg !579
  br label %do.body, !dbg !580

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !582

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !580
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !580
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !580
  store i32 %1, ptr %tmp, align 4, !dbg !582
  %2 = load i32, ptr %tmp, align 4, !dbg !580
  ret i32 %2, !dbg !584
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #5 align 16 !dbg !585 {
entry:
  call void @rep_nop() #14, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #4 align 16 !dbg !589 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !592, metadata !DIExpression()), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_read_positive(ptr noundef %fbc) #4 align 16 !dbg !595 {
entry:
  %retval = alloca i64, align 8
  %fbc.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !598, metadata !DIExpression()), !dbg !601
  br label %do.body, !dbg !602

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !604

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !604

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !602
  %count = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1, !dbg !602
  %1 = load volatile i64, ptr %count, align 8, !dbg !602
  store i64 %1, ptr %tmp, align 8, !dbg !604
  %2 = load i64, ptr %tmp, align 8, !dbg !602
  store i64 %2, ptr %ret, align 8, !dbg !601
  %3 = load i64, ptr %ret, align 8, !dbg !606
  %cmp = icmp sge i64 %3, 0, !dbg !608
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %do.end
  %4 = load i64, ptr %ret, align 8, !dbg !610
  store i64 %4, ptr %retval, align 8, !dbg !611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !611

if.end:                                           ; preds = %do.end
  store i64 0, ptr %retval, align 8, !dbg !612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !612

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !613
  %5 = load i64, ptr %retval, align 8, !dbg !613
  ret i64 %5, !dbg !613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #4 align 16 !dbg !614 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !618, metadata !DIExpression()), !dbg !620
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !619, metadata !DIExpression()), !dbg !621
  br label %do.body, !dbg !622

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !623

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !625

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !623

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !627

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !629

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !627, !srcloc !631
  br label %do.end5, !dbg !627

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !623

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !632
  %1 = load i32, ptr %start.addr, align 4, !dbg !633
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #14, !dbg !634
  ret i32 %call, !dbg !635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fprop_local_init_percpu(ptr noundef %pl, i32 noundef %gfp) #0 align 16 !dbg !110 {
entry:
  %retval = alloca i32, align 4
  %pl.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !120, metadata !DIExpression()), !dbg !636
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !121, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %err, metadata !122, metadata !DIExpression()), !dbg !639
  %0 = load ptr, ptr %pl.addr, align 8, !dbg !640
  %events = getelementptr inbounds %struct.fprop_local_percpu, ptr %0, i32 0, i32 0, !dbg !640
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !640
  %call = call i32 @__percpu_counter_init_many(ptr noundef %events, i64 noundef 0, i32 noundef %1, i32 noundef 1, ptr noundef @fprop_local_init_percpu.__key) #14, !dbg !640
  store i32 %call, ptr %tmp, align 4, !dbg !640
  %2 = load i32, ptr %tmp, align 4, !dbg !640
  store i32 %2, ptr %err, align 4, !dbg !642
  %3 = load i32, ptr %err, align 4, !dbg !643
  %tobool = icmp ne i32 %3, 0, !dbg !643
  br i1 %tobool, label %if.then, label %if.end, !dbg !645

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !646
  store i32 %4, ptr %retval, align 4, !dbg !647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !647

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pl.addr, align 8, !dbg !648
  %period = getelementptr inbounds %struct.fprop_local_percpu, ptr %5, i32 0, i32 1, !dbg !649
  store i32 0, ptr %period, align 8, !dbg !650
  br label %do.body, !dbg !651

do.body:                                          ; preds = %if.end
  %6 = load ptr, ptr %pl.addr, align 8, !dbg !652
  %lock = getelementptr inbounds %struct.fprop_local_percpu, ptr %6, i32 0, i32 2, !dbg !652
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !652
  %7 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !652
  %counter = getelementptr inbounds %struct.atomic_t, ptr %7, i32 0, i32 0, !dbg !652
  store i32 0, ptr %counter, align 4, !dbg !652
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !652
  br label %do.cond, !dbg !652

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !652

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !654

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !655
  %8 = load i32, ptr %retval, align 4, !dbg !655
  ret i32 %8, !dbg !655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fprop_local_destroy_percpu(ptr noundef %pl) #0 align 16 !dbg !656 {
entry:
  %pl.addr = alloca ptr, align 8
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load ptr, ptr %pl.addr, align 8, !dbg !662
  %events = getelementptr inbounds %struct.fprop_local_percpu, ptr %0, i32 0, i32 0, !dbg !663
  call void @percpu_counter_destroy(ptr noundef %events) #14, !dbg !664
  ret void, !dbg !665
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__fprop_add_percpu(ptr noundef %p, ptr noundef %pl, i64 noundef %nr) #0 align 16 !dbg !666 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !671, metadata !DIExpression()), !dbg !674
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !672, metadata !DIExpression()), !dbg !675
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !673, metadata !DIExpression()), !dbg !676
  %0 = load ptr, ptr %p.addr, align 8, !dbg !677
  %1 = load ptr, ptr %pl.addr, align 8, !dbg !678
  call void @fprop_reflect_period_percpu(ptr noundef %0, ptr noundef %1) #14, !dbg !679
  %2 = load ptr, ptr %pl.addr, align 8, !dbg !680
  %events = getelementptr inbounds %struct.fprop_local_percpu, ptr %2, i32 0, i32 0, !dbg !681
  %3 = load i64, ptr %nr.addr, align 8, !dbg !682
  %4 = load i32, ptr @nr_cpu_ids, align 4, !dbg !683
  %5 = call i1 @llvm.is.constant.i32(i32 %4), !dbg !683
  br i1 %5, label %cond.true, label %cond.false2, !dbg !683

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr @nr_cpu_ids, align 4, !dbg !683
  %cmp = icmp ult i32 %6, 2, !dbg !683
  br i1 %cmp, label %cond.true1, label %cond.false, !dbg !683

cond.true1:                                       ; preds = %cond.true
  br label %cond.end, !dbg !683

cond.false:                                       ; preds = %cond.true
  %7 = load i32, ptr @nr_cpu_ids, align 4, !dbg !683
  %conv = zext i32 %7 to i64, !dbg !683
  %8 = call i64 @llvm.ctlz.i64(i64 %conv, i1 true), !dbg !683
  %cast = trunc i64 %8 to i32, !dbg !683
  %sub = sub i32 63, %cast, !dbg !683
  br label %cond.end, !dbg !683

cond.end:                                         ; preds = %cond.false, %cond.true1
  %cond = phi i32 [ 0, %cond.true1 ], [ %sub, %cond.false ], !dbg !683
  br label %cond.end3, !dbg !683

cond.false2:                                      ; preds = %entry
  %9 = load i32, ptr @nr_cpu_ids, align 4, !dbg !683
  %call = call i32 @__ilog2_u32(i32 noundef %9) #15, !dbg !683
  br label %cond.end3, !dbg !683

cond.end3:                                        ; preds = %cond.false2, %cond.end
  %cond4 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false2 ], !dbg !683
  %add = add i32 1, %cond4, !dbg !683
  %mul = mul i32 8, %add, !dbg !683
  call void @percpu_counter_add_batch(ptr noundef %events, i64 noundef %3, i32 noundef %mul) #14, !dbg !684
  %10 = load ptr, ptr %p.addr, align 8, !dbg !685
  %events5 = getelementptr inbounds %struct.fprop_global, ptr %10, i32 0, i32 0, !dbg !686
  %11 = load i64, ptr %nr.addr, align 8, !dbg !687
  call void @percpu_counter_add(ptr noundef %events5, i64 noundef %11) #14, !dbg !688
  ret void, !dbg !689
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fprop_reflect_period_percpu(ptr noundef %p, ptr noundef %pl) #0 align 16 !dbg !690 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %period = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  %val = alloca i64, align 8
  %__dummy65 = alloca i64, align 8
  %__dummy266 = alloca i64, align 8
  %tmp69 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !694, metadata !DIExpression()), !dbg !715
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !695, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %period) #13, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %period, metadata !696, metadata !DIExpression()), !dbg !718
  %0 = load ptr, ptr %p.addr, align 8, !dbg !719
  %period1 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1, !dbg !720
  %1 = load i32, ptr %period1, align 8, !dbg !720
  store i32 %1, ptr %period, align 4, !dbg !718
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !721
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !697, metadata !DIExpression()), !dbg !722
  %2 = load ptr, ptr %pl.addr, align 8, !dbg !723
  %period2 = getelementptr inbounds %struct.fprop_local_percpu, ptr %2, i32 0, i32 1, !dbg !725
  %3 = load i32, ptr %period2, align 8, !dbg !725
  %4 = load i32, ptr %period, align 4, !dbg !726
  %cmp = icmp eq i32 %3, %4, !dbg !727
  br i1 %cmp, label %if.then, label %if.end, !dbg !728

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !729

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !730

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !698, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !701, metadata !DIExpression()), !dbg !731
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !731
  %conv = zext i1 %cmp3 to i32, !dbg !731
  store i32 1, ptr %tmp, align 4, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !732
  %5 = load i32, ptr %tmp, align 4, !dbg !731
  %6 = load ptr, ptr %pl.addr, align 8, !dbg !732
  %lock = getelementptr inbounds %struct.fprop_local_percpu, ptr %6, i32 0, i32 2, !dbg !732
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #14, !dbg !732
  store i64 %call, ptr %flags, align 8, !dbg !732
  br label %do.cond, !dbg !732

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !732

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %pl.addr, align 8, !dbg !733
  %period4 = getelementptr inbounds %struct.fprop_local_percpu, ptr %7, i32 0, i32 1, !dbg !734
  %8 = load i32, ptr %period4, align 8, !dbg !734
  %9 = load i32, ptr %period, align 4, !dbg !735
  %cmp5 = icmp uge i32 %8, %9, !dbg !736
  br i1 %cmp5, label %if.then7, label %if.end17, !dbg !737

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !738

do.body8:                                         ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy9) #13, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %__dummy9, metadata !702, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy210) #13, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %__dummy210, metadata !707, metadata !DIExpression()), !dbg !739
  %cmp11 = icmp eq ptr %__dummy9, %__dummy210, !dbg !739
  %conv12 = zext i1 %cmp11 to i32, !dbg !739
  store i32 1, ptr %tmp13, align 4, !dbg !739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy210) #13, !dbg !740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy9) #13, !dbg !740
  %10 = load i32, ptr %tmp13, align 4, !dbg !739
  %11 = load ptr, ptr %pl.addr, align 8, !dbg !740
  %lock14 = getelementptr inbounds %struct.fprop_local_percpu, ptr %11, i32 0, i32 2, !dbg !740
  %12 = load i64, ptr %flags, align 8, !dbg !740
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock14, i64 noundef %12) #14, !dbg !740
  br label %do.cond15, !dbg !740

do.cond15:                                        ; preds = %do.body8
  br label %do.end16, !dbg !740

do.end16:                                         ; preds = %do.cond15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !741

if.end17:                                         ; preds = %do.end
  %13 = load i32, ptr %period, align 4, !dbg !742
  %14 = load ptr, ptr %pl.addr, align 8, !dbg !743
  %period18 = getelementptr inbounds %struct.fprop_local_percpu, ptr %14, i32 0, i32 1, !dbg !744
  %15 = load i32, ptr %period18, align 8, !dbg !744
  %sub = sub i32 %13, %15, !dbg !745
  %cmp19 = icmp ult i32 %sub, 64, !dbg !746
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !747

if.then21:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %val, metadata !708, metadata !DIExpression()), !dbg !749
  %16 = load ptr, ptr %pl.addr, align 8, !dbg !750
  %events = getelementptr inbounds %struct.fprop_local_percpu, ptr %16, i32 0, i32 0, !dbg !751
  %call22 = call i64 @percpu_counter_read(ptr noundef %events) #14, !dbg !752
  store i64 %call22, ptr %val, align 8, !dbg !749
  %17 = load i64, ptr %val, align 8, !dbg !753
  %18 = load i32, ptr @nr_cpu_ids, align 4, !dbg !755
  %19 = load i32, ptr @nr_cpu_ids, align 4, !dbg !756
  %20 = call i1 @llvm.is.constant.i32(i32 %19), !dbg !756
  br i1 %20, label %cond.true, label %cond.false28, !dbg !756

cond.true:                                        ; preds = %if.then21
  %21 = load i32, ptr @nr_cpu_ids, align 4, !dbg !756
  %cmp23 = icmp ult i32 %21, 2, !dbg !756
  br i1 %cmp23, label %cond.true25, label %cond.false, !dbg !756

cond.true25:                                      ; preds = %cond.true
  br label %cond.end, !dbg !756

cond.false:                                       ; preds = %cond.true
  %22 = load i32, ptr @nr_cpu_ids, align 4, !dbg !756
  %conv26 = zext i32 %22 to i64, !dbg !756
  %23 = call i64 @llvm.ctlz.i64(i64 %conv26, i1 true), !dbg !756
  %cast = trunc i64 %23 to i32, !dbg !756
  %sub27 = sub i32 63, %cast, !dbg !756
  br label %cond.end, !dbg !756

cond.end:                                         ; preds = %cond.false, %cond.true25
  %cond = phi i32 [ 0, %cond.true25 ], [ %sub27, %cond.false ], !dbg !756
  br label %cond.end30, !dbg !756

cond.false28:                                     ; preds = %if.then21
  %24 = load i32, ptr @nr_cpu_ids, align 4, !dbg !756
  %call29 = call i32 @__ilog2_u32(i32 noundef %24) #15, !dbg !756
  br label %cond.end30, !dbg !756

cond.end30:                                       ; preds = %cond.false28, %cond.end
  %cond31 = phi i32 [ %cond, %cond.end ], [ %call29, %cond.false28 ], !dbg !756
  %add = add i32 1, %cond31, !dbg !756
  %mul = mul i32 8, %add, !dbg !756
  %mul32 = mul i32 %18, %mul, !dbg !757
  %conv33 = zext i32 %mul32 to i64, !dbg !758
  %cmp34 = icmp slt i64 %17, %conv33, !dbg !759
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !760

if.then36:                                        ; preds = %cond.end30
  %25 = load ptr, ptr %pl.addr, align 8, !dbg !761
  %events37 = getelementptr inbounds %struct.fprop_local_percpu, ptr %25, i32 0, i32 0, !dbg !762
  %call38 = call i64 @percpu_counter_sum(ptr noundef %events37) #14, !dbg !763
  store i64 %call38, ptr %val, align 8, !dbg !764
  br label %if.end39, !dbg !765

if.end39:                                         ; preds = %if.then36, %cond.end30
  %26 = load ptr, ptr %pl.addr, align 8, !dbg !766
  %events40 = getelementptr inbounds %struct.fprop_local_percpu, ptr %26, i32 0, i32 0, !dbg !767
  %27 = load i64, ptr %val, align 8, !dbg !768
  %sub41 = sub i64 0, %27, !dbg !769
  %28 = load i64, ptr %val, align 8, !dbg !770
  %29 = load i32, ptr %period, align 4, !dbg !771
  %30 = load ptr, ptr %pl.addr, align 8, !dbg !772
  %period42 = getelementptr inbounds %struct.fprop_local_percpu, ptr %30, i32 0, i32 1, !dbg !773
  %31 = load i32, ptr %period42, align 8, !dbg !773
  %sub43 = sub i32 %29, %31, !dbg !774
  %sh_prom = zext i32 %sub43 to i64, !dbg !775
  %shr = ashr i64 %28, %sh_prom, !dbg !775
  %add44 = add i64 %sub41, %shr, !dbg !776
  %32 = load i32, ptr @nr_cpu_ids, align 4, !dbg !777
  %33 = call i1 @llvm.is.constant.i32(i32 %32), !dbg !777
  br i1 %33, label %cond.true45, label %cond.false55, !dbg !777

cond.true45:                                      ; preds = %if.end39
  %34 = load i32, ptr @nr_cpu_ids, align 4, !dbg !777
  %cmp46 = icmp ult i32 %34, 2, !dbg !777
  br i1 %cmp46, label %cond.true48, label %cond.false49, !dbg !777

cond.true48:                                      ; preds = %cond.true45
  br label %cond.end53, !dbg !777

cond.false49:                                     ; preds = %cond.true45
  %35 = load i32, ptr @nr_cpu_ids, align 4, !dbg !777
  %conv50 = zext i32 %35 to i64, !dbg !777
  %36 = call i64 @llvm.ctlz.i64(i64 %conv50, i1 true), !dbg !777
  %cast51 = trunc i64 %36 to i32, !dbg !777
  %sub52 = sub i32 63, %cast51, !dbg !777
  br label %cond.end53, !dbg !777

cond.end53:                                       ; preds = %cond.false49, %cond.true48
  %cond54 = phi i32 [ 0, %cond.true48 ], [ %sub52, %cond.false49 ], !dbg !777
  br label %cond.end57, !dbg !777

cond.false55:                                     ; preds = %if.end39
  %37 = load i32, ptr @nr_cpu_ids, align 4, !dbg !777
  %call56 = call i32 @__ilog2_u32(i32 noundef %37) #15, !dbg !777
  br label %cond.end57, !dbg !777

cond.end57:                                       ; preds = %cond.false55, %cond.end53
  %cond58 = phi i32 [ %cond54, %cond.end53 ], [ %call56, %cond.false55 ], !dbg !777
  %add59 = add i32 1, %cond58, !dbg !777
  %mul60 = mul i32 8, %add59, !dbg !777
  call void @percpu_counter_add_batch(ptr noundef %events40, i64 noundef %add44, i32 noundef %mul60) #14, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !779
  br label %if.end62, !dbg !780

if.else:                                          ; preds = %if.end17
  %38 = load ptr, ptr %pl.addr, align 8, !dbg !781
  %events61 = getelementptr inbounds %struct.fprop_local_percpu, ptr %38, i32 0, i32 0, !dbg !782
  call void @percpu_counter_set(ptr noundef %events61, i64 noundef 0) #14, !dbg !783
  br label %if.end62

if.end62:                                         ; preds = %if.else, %cond.end57
  %39 = load i32, ptr %period, align 4, !dbg !784
  %40 = load ptr, ptr %pl.addr, align 8, !dbg !785
  %period63 = getelementptr inbounds %struct.fprop_local_percpu, ptr %40, i32 0, i32 1, !dbg !786
  store i32 %39, ptr %period63, align 8, !dbg !787
  br label %do.body64, !dbg !788

do.body64:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy65) #13, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %__dummy65, metadata !711, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy266) #13, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %__dummy266, metadata !714, metadata !DIExpression()), !dbg !789
  %cmp67 = icmp eq ptr %__dummy65, %__dummy266, !dbg !789
  %conv68 = zext i1 %cmp67 to i32, !dbg !789
  store i32 1, ptr %tmp69, align 4, !dbg !789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy266) #13, !dbg !790
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy65) #13, !dbg !790
  %41 = load i32, ptr %tmp69, align 4, !dbg !789
  %42 = load ptr, ptr %pl.addr, align 8, !dbg !790
  %lock70 = getelementptr inbounds %struct.fprop_local_percpu, ptr %42, i32 0, i32 2, !dbg !790
  %43 = load i64, ptr %flags, align 8, !dbg !790
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock70, i64 noundef %43) #14, !dbg !790
  br label %do.cond71, !dbg !790

do.cond71:                                        ; preds = %do.body64
  br label %do.end72, !dbg !790

do.end72:                                         ; preds = %do.cond71
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !791
  br label %cleanup, !dbg !791

cleanup:                                          ; preds = %do.end72, %do.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !791
  call void @llvm.lifetime.end.p0(i64 4, ptr %period) #13, !dbg !791
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !791

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !792 dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u32(i32 noundef %n) #11 align 16 !dbg !795 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !800, metadata !DIExpression()), !dbg !801
  %0 = load i32, ptr %n.addr, align 4, !dbg !802
  %call = call i32 @fls(i32 noundef %0) #14, !dbg !803
  %sub = sub i32 %call, 1, !dbg !804
  ret i32 %sub, !dbg !805
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fprop_fraction_percpu(ptr noundef %p, ptr noundef %pl, ptr noundef %numerator, ptr noundef %denominator) #0 align 16 !dbg !806 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %numerator.addr = alloca ptr, align 8
  %denominator.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !810, metadata !DIExpression()), !dbg !823
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !811, metadata !DIExpression()), !dbg !824
  store ptr %numerator, ptr %numerator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %numerator.addr, metadata !812, metadata !DIExpression()), !dbg !825
  store ptr %denominator, ptr %denominator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %denominator.addr, metadata !813, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #13, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !814, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #13, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %num, metadata !815, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %den) #13, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %den, metadata !816, metadata !DIExpression()), !dbg !831
  br label %do.body, !dbg !832

do.body:                                          ; preds = %do.cond16, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #13, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !817, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #13, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !821, metadata !DIExpression()), !dbg !834
  br label %while.cond, !dbg !834

while.cond:                                       ; preds = %while.body, %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !834
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 2, !dbg !834
  %call = call i32 @__seqprop_sequence(ptr noundef %sequence) #14, !dbg !834
  store i32 %call, ptr %__seq, align 4, !dbg !834
  %and = and i32 %call, 1, !dbg !834
  %tobool = icmp ne i32 %and, 0, !dbg !834
  br i1 %tobool, label %while.body, label %while.end, !dbg !834

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #14, !dbg !834
  br label %while.cond, !dbg !834, !llvm.loop !835

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #14, !dbg !834
  %1 = load i32, ptr %__seq, align 4, !dbg !834
  store i32 %1, ptr %tmp1, align 4, !dbg !834
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #13, !dbg !833
  %2 = load i32, ptr %tmp1, align 4, !dbg !834
  store i32 %2, ptr %_seq, align 4, !dbg !833
  br label %do.body2, !dbg !833

do.body2:                                         ; preds = %while.end
  br label %do.body3, !dbg !836

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !838

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !838

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !836

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !840

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !842

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !842

do.end7:                                          ; preds = %do.cond6
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !840, !srcloc !844
  br label %do.cond8, !dbg !840

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !840

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !836

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !836

do.end11:                                         ; preds = %do.cond10
  %3 = load i32, ptr %_seq, align 4, !dbg !833
  store i32 %3, ptr %tmp12, align 4, !dbg !836
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #13, !dbg !845
  %4 = load i32, ptr %tmp12, align 4, !dbg !833
  store i32 %4, ptr %tmp, align 4, !dbg !846
  %5 = load i32, ptr %tmp, align 4, !dbg !845
  store i32 %5, ptr %seq, align 4, !dbg !847
  %6 = load ptr, ptr %p.addr, align 8, !dbg !848
  %7 = load ptr, ptr %pl.addr, align 8, !dbg !849
  call void @fprop_reflect_period_percpu(ptr noundef %6, ptr noundef %7) #14, !dbg !850
  %8 = load ptr, ptr %pl.addr, align 8, !dbg !851
  %events = getelementptr inbounds %struct.fprop_local_percpu, ptr %8, i32 0, i32 0, !dbg !852
  %call13 = call i64 @percpu_counter_read_positive(ptr noundef %events) #14, !dbg !853
  store i64 %call13, ptr %num, align 8, !dbg !854
  %9 = load ptr, ptr %p.addr, align 8, !dbg !855
  %events14 = getelementptr inbounds %struct.fprop_global, ptr %9, i32 0, i32 0, !dbg !856
  %call15 = call i64 @percpu_counter_read_positive(ptr noundef %events14) #14, !dbg !857
  store i64 %call15, ptr %den, align 8, !dbg !858
  br label %do.cond16, !dbg !859

do.cond16:                                        ; preds = %do.end11
  %10 = load ptr, ptr %p.addr, align 8, !dbg !860
  %sequence17 = getelementptr inbounds %struct.fprop_global, ptr %10, i32 0, i32 2, !dbg !860
  %call18 = call ptr @__seqprop_ptr(ptr noundef %sequence17) #14, !dbg !860
  %11 = load i32, ptr %seq, align 4, !dbg !860
  %call19 = call i32 @do_read_seqcount_retry(ptr noundef %call18, i32 noundef %11) #14, !dbg !860
  %tobool20 = icmp ne i32 %call19, 0, !dbg !859
  br i1 %tobool20, label %do.body, label %do.end21, !dbg !859, !llvm.loop !861

do.end21:                                         ; preds = %do.cond16
  %12 = load i64, ptr %den, align 8, !dbg !863
  %13 = load i64, ptr %num, align 8, !dbg !865
  %cmp = icmp sle i64 %12, %13, !dbg !866
  br i1 %cmp, label %if.then, label %if.end24, !dbg !867

if.then:                                          ; preds = %do.end21
  %14 = load i64, ptr %num, align 8, !dbg !868
  %tobool22 = icmp ne i64 %14, 0, !dbg !868
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !871

if.then23:                                        ; preds = %if.then
  %15 = load i64, ptr %num, align 8, !dbg !872
  store i64 %15, ptr %den, align 8, !dbg !873
  br label %if.end, !dbg !874

if.else:                                          ; preds = %if.then
  store i64 1, ptr %den, align 8, !dbg !875
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then23
  br label %if.end24, !dbg !876

if.end24:                                         ; preds = %if.end, %do.end21
  %16 = load i64, ptr %den, align 8, !dbg !877
  %17 = load ptr, ptr %denominator.addr, align 8, !dbg !878
  store i64 %16, ptr %17, align 8, !dbg !879
  %18 = load i64, ptr %num, align 8, !dbg !880
  %19 = load ptr, ptr %numerator.addr, align 8, !dbg !881
  store i64 %18, ptr %19, align 8, !dbg !882
  call void @llvm.lifetime.end.p0(i64 8, ptr %den) #13, !dbg !883
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #13, !dbg !883
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #13, !dbg !883
  ret void, !dbg !883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__fprop_add_percpu_max(ptr noundef %p, ptr noundef %pl, i32 noundef %max_frac, i64 noundef %nr) #0 align 16 !dbg !884 {
entry:
  %p.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %max_frac.addr = alloca i32, align 4
  %nr.addr = alloca i64, align 8
  %numerator = alloca i64, align 8
  %denominator = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !888, metadata !DIExpression()), !dbg !897
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !889, metadata !DIExpression()), !dbg !898
  store i32 %max_frac, ptr %max_frac.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_frac.addr, metadata !890, metadata !DIExpression()), !dbg !899
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !891, metadata !DIExpression()), !dbg !900
  %0 = load i32, ptr %max_frac.addr, align 4, !dbg !901
  %conv = sext i32 %0 to i64, !dbg !901
  %cmp = icmp ult i64 %conv, 1024, !dbg !901
  %lnot = xor i1 %cmp, true, !dbg !901
  %lnot2 = xor i1 %lnot, true, !dbg !901
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !901
  %conv3 = sext i32 %lnot.ext to i64, !dbg !901
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !901
  %tobool = icmp ne i64 %expval, 0, !dbg !901
  br i1 %tobool, label %if.then, label %if.end23, !dbg !902

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %numerator) #13, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %numerator, metadata !892, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 8, ptr %denominator) #13, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %denominator, metadata !895, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !896, metadata !DIExpression()), !dbg !907
  %1 = load ptr, ptr %p.addr, align 8, !dbg !908
  %2 = load ptr, ptr %pl.addr, align 8, !dbg !909
  call void @fprop_fraction_percpu(ptr noundef %1, ptr noundef %2, ptr noundef %numerator, ptr noundef %denominator) #14, !dbg !910
  %3 = load i64, ptr %denominator, align 8, !dbg !911
  %4 = load i32, ptr %max_frac.addr, align 4, !dbg !912
  %conv4 = sext i32 %4 to i64, !dbg !912
  %mul = mul i64 %3, %conv4, !dbg !913
  %5 = load i64, ptr %numerator, align 8, !dbg !914
  %shl = shl i64 %5, 10, !dbg !915
  %sub = sub i64 %mul, %shl, !dbg !916
  store i64 %sub, ptr %tmp, align 8, !dbg !917
  %6 = load i64, ptr %tmp, align 8, !dbg !918
  %cmp5 = icmp slt i64 %6, 0, !dbg !920
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !921

if.then7:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !922

if.else:                                          ; preds = %if.then
  %7 = load i64, ptr %tmp, align 8, !dbg !924
  %8 = load i64, ptr %nr.addr, align 8, !dbg !926
  %9 = load i32, ptr %max_frac.addr, align 4, !dbg !927
  %conv8 = sext i32 %9 to i64, !dbg !927
  %sub9 = sub i64 1024, %conv8, !dbg !928
  %mul10 = mul i64 %8, %sub9, !dbg !929
  %cmp11 = icmp ult i64 %7, %mul10, !dbg !930
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !931

if.then13:                                        ; preds = %if.else
  %10 = load i64, ptr %tmp, align 8, !dbg !932
  %add = add i64 %10, 1024, !dbg !934
  %11 = load i32, ptr %max_frac.addr, align 4, !dbg !935
  %conv14 = sext i32 %11 to i64, !dbg !935
  %sub15 = sub i64 %add, %conv14, !dbg !936
  %sub16 = sub i64 %sub15, 1, !dbg !937
  %12 = load i32, ptr %max_frac.addr, align 4, !dbg !938
  %conv17 = sext i32 %12 to i64, !dbg !938
  %sub18 = sub i64 1024, %conv17, !dbg !939
  %conv19 = trunc i64 %sub18 to i32, !dbg !940
  %call = call i64 @div_u64(i64 noundef %sub16, i32 noundef %conv19) #14, !dbg !941
  store i64 %call, ptr %nr.addr, align 8, !dbg !942
  br label %if.end, !dbg !943

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !944
  br label %cleanup, !dbg !944

cleanup:                                          ; preds = %if.end20, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !944
  call void @llvm.lifetime.end.p0(i64 8, ptr %denominator) #13, !dbg !944
  call void @llvm.lifetime.end.p0(i64 8, ptr %numerator) #13, !dbg !944
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23, !dbg !945

if.end23:                                         ; preds = %cleanup.cont, %entry
  %13 = load ptr, ptr %p.addr, align 8, !dbg !946
  %14 = load ptr, ptr %pl.addr, align 8, !dbg !947
  %15 = load i64, ptr %nr.addr, align 8, !dbg !948
  call void @__fprop_add_percpu(ptr noundef %13, ptr noundef %14, i64 noundef %15) #14, !dbg !949
  br label %return, !dbg !950

return:                                           ; preds = %if.end23, %cleanup
  ret void, !dbg !950

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #4 align 16 !dbg !951 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !956, metadata !DIExpression()), !dbg !959
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !957, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #13, !dbg !961
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !958, metadata !DIExpression()), !dbg !962
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !963
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !964
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #14, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #13, !dbg !966
  ret i64 %call, !dbg !967
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !968 dso_local void @percpu_counter_destroy_many(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !971 dso_local i64 @__percpu_counter_sum(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin_nested(ptr noundef %s, i32 noundef %subclass) #4 align 16 !dbg !972 {
entry:
  %s.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !976, metadata !DIExpression()), !dbg !978
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !977, metadata !DIExpression()), !dbg !979
  br label %do.body, !dbg !980

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !981

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !983
  call void @do_raw_write_seqcount_begin(ptr noundef %0) #14, !dbg !984
  ret void, !dbg !985
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #4 align 16 !dbg !986 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !988, metadata !DIExpression()), !dbg !989
  call void @kcsan_nestable_atomic_begin() #14, !dbg !990
  %0 = load ptr, ptr %s.addr, align 8, !dbg !991
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !992
  %1 = load i32, ptr %sequence, align 4, !dbg !993
  %inc = add i32 %1, 1, !dbg !993
  store i32 %inc, ptr %sequence, align 4, !dbg !993
  br label %do.body, !dbg !994

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !995

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !997

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !995, !srcloc !999
  br label %do.end2, !dbg !995

do.end2:                                          ; preds = %do.end
  ret void, !dbg !1000
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #4 align 16 !dbg !1001 {
entry:
  ret void, !dbg !1002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #4 align 16 !dbg !1003 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1005, metadata !DIExpression()), !dbg !1006
  br label %do.body, !dbg !1007

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1008

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1010

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1008, !srcloc !1012
  br label %do.end2, !dbg !1008

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1013
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1014
  %1 = load i32, ptr %sequence, align 4, !dbg !1015
  %inc = add i32 %1, 1, !dbg !1015
  store i32 %inc, ptr %sequence, align 4, !dbg !1015
  call void @kcsan_nestable_atomic_end() #14, !dbg !1016
  ret void, !dbg !1017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #4 align 16 !dbg !1018 {
entry:
  ret void, !dbg !1019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1020 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1025 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #5 align 16 !dbg !1028 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1029, !srcloc !1030
  ret void, !dbg !1031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #4 align 16 !dbg !1032 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1034, metadata !DIExpression()), !dbg !1036
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1035, metadata !DIExpression()), !dbg !1037
  call void @kcsan_atomic_next(i32 noundef 0) #14, !dbg !1038
  br label %do.body, !dbg !1039

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1041

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1039
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1039
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !1039
  store i32 %1, ptr %tmp, align 4, !dbg !1041
  %2 = load i32, ptr %tmp, align 4, !dbg !1039
  %3 = load i32, ptr %start.addr, align 4, !dbg !1043
  %cmp = icmp ne i32 %2, %3, !dbg !1043
  %lnot = xor i1 %cmp, true, !dbg !1043
  %lnot1 = xor i1 %lnot, true, !dbg !1043
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1043
  %conv = sext i32 %lnot.ext to i64, !dbg !1043
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1043
  %conv2 = trunc i64 %expval to i32, !dbg !1043
  ret i32 %conv2, !dbg !1044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_read(ptr noundef %fbc) #4 align 16 !dbg !1045 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !1047, metadata !DIExpression()), !dbg !1048
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !1049
  %count = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1, !dbg !1050
  %1 = load i64, ptr %count, align 8, !dbg !1050
  ret i64 %1, !dbg !1051
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1052 dso_local void @percpu_counter_set(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #5 align 16 !dbg !1053 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1058, metadata !DIExpression()), !dbg !1060
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1059, metadata !DIExpression()), !dbg !1062
  %0 = load i32, ptr %x.addr, align 4, !dbg !1063
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #16, !dbg !1064, !srcloc !1065
  store i32 %1, ptr %r, align 4, !dbg !1064
  %2 = load i32, ptr %r, align 4, !dbg !1066
  %add = add i32 %2, 1, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13, !dbg !1068
  ret i32 %add, !dbg !1069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #4 align 16 !dbg !1070 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1075, metadata !DIExpression()), !dbg !1078
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1076, metadata !DIExpression()), !dbg !1079
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1077, metadata !DIExpression()), !dbg !1080
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1081
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1082
  %conv = zext i32 %1 to i64, !dbg !1082
  %rem = urem i64 %0, %conv, !dbg !1083
  %conv1 = trunc i64 %rem to i32, !dbg !1081
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1084
  store i32 %conv1, ptr %2, align 4, !dbg !1085
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1086
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1087
  %conv2 = zext i32 %4 to i64, !dbg !1087
  %div = udiv i64 %3, %conv2, !dbg !1088
  ret i64 %div, !dbg !1089
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone nounwind willreturn memory(none) }
attributes #16 = { nounwind memory(read) }

!llvm.dbg.cu = !{!75}
!llvm.named.register.rsp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 44, type: !123, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "fprop_global_init", scope: !3, file: !3, line: 38, type: !4, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !126)
!3 = !DIFile(filename: "lib/flex_proportions.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "baf2f9be95236bd9afbc0691b4ab14a0")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !74}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_global", file: !9, line: 28, size: 384, elements: !10)
!9 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!10 = !{!11, !66, !68}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !8, file: !9, line: 30, baseType: !12, size: 320)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !13, line: 22, size: 320, elements: !14)
!13 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!14 = !{!15, !52, !56, !62}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !12, file: !13, line: 23, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !17, line: 23, baseType: !18)
!17 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !17, line: 14, size: 32, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !18, file: !17, line: 15, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !22, line: 44, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !22, line: 14, size: 32, elements: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, scope: !23, file: !22, line: 15, baseType: !26, size: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !22, line: 15, size: 32, elements: !27)
!27 = !{!28, !34, !44}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !26, file: !22, line: 16, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !31, file: !30, line: 173, baseType: !6, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !22, line: 24, baseType: !35, size: 16)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !22, line: 24, size: 16, elements: !36)
!36 = !{!37, !43}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !35, file: !22, line: 25, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !39, line: 17, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !41, line: 21, baseType: !42)
!41 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !35, file: !22, line: 26, baseType: !38, size: 8, offset: 8)
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !22, line: 28, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !22, line: 28, size: 32, elements: !46)
!46 = !{!47, !51}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !45, file: !22, line: 29, baseType: !48, size: 16)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !39, line: 19, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !41, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !45, file: !22, line: 30, baseType: !48, size: 16, offset: 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !12, file: !13, line: 24, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !39, line: 22, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !41, line: 30, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !12, file: !13, line: 26, baseType: !57, size: 128, offset: 128)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !58)
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !30, line: 191, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !57, file: !30, line: 191, baseType: !60, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !12, file: !13, line: 28, baseType: !63, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !39, line: 20, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !41, line: 26, baseType: !6)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !8, file: !9, line: 32, baseType: !67, size: 32, offset: 320)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !8, file: !9, line: 34, baseType: !69, size: 32, offset: 352)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !70, line: 69, baseType: !71)
!70 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !70, line: 64, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !71, file: !70, line: 65, baseType: !67, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !67)
!75 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.flex_proportions.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/flex_proportions\22 -D KBUILD_BASENAME=\22flex_proportions\22 -D KBUILD_MODNAME=\22flex_proportions\22 -D __KBUILD_MODNAME=kmod_flex_proportions -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/flex_proportions.ll lib/flex_proportions.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !82, globals: !96, splitDebugInlining: false, nameTableKind: None)
!76 = !{!77}
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 10, baseType: !67, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "false", value: 0)
!81 = !DIEnumerator(name: "true", value: 1)
!82 = !{!83, !84, !6, !87, !89, !90, !93}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !39, line: 23, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !41, line: 31, baseType: !86)
!86 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !39, line: 21, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !41, line: 27, baseType: !67)
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!96 = !{!0, !97, !108}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule116", scope: !99, file: !3, line: 80, type: !83, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "fprop_new_period", scope: !3, file: !3, line: 64, type: !100, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !104)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !7, !6}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !103)
!103 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!104 = !{!105, !106, !107}
!105 = !DILocalVariable(name: "p", arg: 1, scope: !99, file: !3, line: 64, type: !7)
!106 = !DILocalVariable(name: "periods", arg: 2, scope: !99, file: !3, line: 64, type: !6)
!107 = !DILocalVariable(name: "events", scope: !99, file: !3, line: 66, type: !53)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "__key", scope: !110, file: !3, line: 172, type: !123, isLocal: true, isDefinition: true)
!110 = distinct !DISubprogram(name: "fprop_local_init_percpu", scope: !3, file: !3, line: 168, type: !111, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !119)
!111 = !DISubroutineType(types: !112)
!112 = !{!6, !113, !74}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !9, line: 76, size: 384, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !114, file: !9, line: 78, baseType: !12, size: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !114, file: !9, line: 80, baseType: !67, size: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !114, file: !9, line: 81, baseType: !16, size: 32, offset: 352)
!119 = !{!120, !121, !122}
!120 = !DILocalVariable(name: "pl", arg: 1, scope: !110, file: !3, line: 168, type: !113)
!121 = !DILocalVariable(name: "gfp", arg: 2, scope: !110, file: !3, line: 168, type: !74)
!122 = !DILocalVariable(name: "err", scope: !110, file: !3, line: 170, type: !6)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !124, line: 206, elements: !125)
!124 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!125 = !{}
!126 = !{!127, !128, !129}
!127 = !DILocalVariable(name: "p", arg: 1, scope: !2, file: !3, line: 38, type: !7)
!128 = !DILocalVariable(name: "gfp", arg: 2, scope: !2, file: !3, line: 38, type: !74)
!129 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 40, type: !6)
!130 = !{!"rsp"}
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 8, !"cf-protection-branch", i32 1}
!135 = !{i32 4, !"function_return_thunk_extern", i32 1}
!136 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!137 = !{i32 1, !"Code Model", i32 2}
!138 = !{i32 1, !"override-stack-alignment", i32 8}
!139 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!140 = !DILocation(line: 38, column: 44, scope: !2)
!141 = !DILocation(line: 38, column: 53, scope: !2)
!142 = !DILocation(line: 40, column: 2, scope: !2)
!143 = !DILocation(line: 40, column: 6, scope: !2)
!144 = !DILocation(line: 42, column: 2, scope: !2)
!145 = !DILocation(line: 42, column: 5, scope: !2)
!146 = !DILocation(line: 42, column: 12, scope: !2)
!147 = !DILocation(line: 44, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 8)
!149 = !DILocation(line: 44, column: 6, scope: !2)
!150 = !DILocation(line: 45, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !2, file: !3, line: 45, column: 6)
!152 = !DILocation(line: 45, column: 6, scope: !2)
!153 = !DILocation(line: 46, column: 10, scope: !151)
!154 = !DILocation(line: 46, column: 3, scope: !151)
!155 = !DILocation(line: 47, column: 2, scope: !2)
!156 = !DILocation(line: 48, column: 2, scope: !2)
!157 = !DILocation(line: 49, column: 1, scope: !2)
!158 = !DISubprogram(name: "__percpu_counter_init_many", scope: !13, file: !13, line: 33, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DISubroutineType(types: !160)
!160 = !{!6, !161, !53, !74, !87, !162}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!163 = distinct !DISubprogram(name: "__seqcount_init", scope: !70, file: !70, line: 71, type: !164, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !170)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166, !167, !162}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "s", arg: 1, scope: !163, file: !70, line: 71, type: !166)
!172 = !DILocalVariable(name: "name", arg: 2, scope: !163, file: !70, line: 71, type: !167)
!173 = !DILocalVariable(name: "key", arg: 3, scope: !163, file: !70, line: 72, type: !162)
!174 = !DILocation(line: 71, column: 48, scope: !163)
!175 = !DILocation(line: 71, column: 63, scope: !163)
!176 = !DILocation(line: 72, column: 31, scope: !163)
!177 = !DILocation(line: 77, column: 2, scope: !163)
!178 = !DILocation(line: 77, column: 2, scope: !179)
!179 = distinct !DILexicalBlock(scope: !163, file: !70, line: 77, column: 2)
!180 = !DILocation(line: 78, column: 2, scope: !163)
!181 = !DILocation(line: 78, column: 5, scope: !163)
!182 = !DILocation(line: 78, column: 14, scope: !163)
!183 = !DILocation(line: 79, column: 1, scope: !163)
!184 = distinct !DISubprogram(name: "fprop_global_destroy", scope: !3, file: !3, line: 51, type: !185, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !7}
!187 = !{!188}
!188 = !DILocalVariable(name: "p", arg: 1, scope: !184, file: !3, line: 51, type: !7)
!189 = !DILocation(line: 51, column: 48, scope: !184)
!190 = !DILocation(line: 53, column: 26, scope: !184)
!191 = !DILocation(line: 53, column: 29, scope: !184)
!192 = !DILocation(line: 53, column: 2, scope: !184)
!193 = !DILocation(line: 54, column: 1, scope: !184)
!194 = distinct !DISubprogram(name: "percpu_counter_destroy", scope: !13, file: !13, line: 50, type: !195, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !161}
!197 = !{!198}
!198 = !DILocalVariable(name: "fbc", arg: 1, scope: !194, file: !13, line: 50, type: !161)
!199 = !DILocation(line: 50, column: 66, scope: !194)
!200 = !DILocation(line: 52, column: 30, scope: !194)
!201 = !DILocation(line: 52, column: 2, scope: !194)
!202 = !DILocation(line: 53, column: 1, scope: !194)
!203 = !DILocation(line: 64, column: 44, scope: !99)
!204 = !DILocation(line: 64, column: 51, scope: !99)
!205 = !DILocation(line: 66, column: 2, scope: !99)
!206 = !DILocation(line: 66, column: 6, scope: !99)
!207 = !DILocation(line: 66, column: 35, scope: !99)
!208 = !DILocation(line: 66, column: 38, scope: !99)
!209 = !DILocation(line: 66, column: 15, scope: !99)
!210 = !DILocation(line: 71, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !99, file: !3, line: 71, column: 6)
!212 = !DILocation(line: 71, column: 13, scope: !211)
!213 = !DILocation(line: 71, column: 6, scope: !99)
!214 = !DILocation(line: 72, column: 3, scope: !211)
!215 = !DILocation(line: 73, column: 2, scope: !99)
!216 = !DILocation(line: 73, column: 2, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 73, column: 2)
!218 = distinct !DILexicalBlock(scope: !99, file: !3, line: 73, column: 2)
!219 = !DILocation(line: 73, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 73, column: 2)
!221 = !DILocation(line: 73, column: 2, scope: !218)
!222 = !DILocation(line: 74, column: 2, scope: !99)
!223 = !DILocation(line: 74, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !99, file: !3, line: 74, column: 2)
!225 = !DILocation(line: 74, column: 2, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !3, line: 74, column: 2)
!227 = !DILocation(line: 74, column: 2, scope: !228)
!228 = distinct !DILexicalBlock(scope: !226, file: !3, line: 74, column: 2)
!229 = !{i64 2151302774}
!230 = !DILocation(line: 75, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !99, file: !3, line: 75, column: 6)
!232 = !DILocation(line: 75, column: 14, scope: !231)
!233 = !DILocation(line: 75, column: 6, scope: !99)
!234 = !DILocation(line: 76, column: 13, scope: !231)
!235 = !DILocation(line: 76, column: 23, scope: !231)
!236 = !DILocation(line: 76, column: 20, scope: !231)
!237 = !DILocation(line: 76, column: 10, scope: !231)
!238 = !DILocation(line: 76, column: 3, scope: !231)
!239 = !DILocation(line: 78, column: 22, scope: !99)
!240 = !DILocation(line: 78, column: 25, scope: !99)
!241 = !DILocation(line: 78, column: 34, scope: !99)
!242 = !DILocation(line: 78, column: 33, scope: !99)
!243 = !DILocation(line: 78, column: 2, scope: !99)
!244 = !DILocation(line: 79, column: 15, scope: !99)
!245 = !DILocation(line: 79, column: 2, scope: !99)
!246 = !DILocation(line: 79, column: 5, scope: !99)
!247 = !DILocation(line: 79, column: 12, scope: !99)
!248 = !DILocation(line: 80, column: 2, scope: !99)
!249 = !DILocation(line: 80, column: 2, scope: !250)
!250 = distinct !DILexicalBlock(scope: !99, file: !3, line: 80, column: 2)
!251 = !DILocation(line: 80, column: 2, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !3, line: 80, column: 2)
!253 = !DILocation(line: 80, column: 2, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !3, line: 80, column: 2)
!255 = !{i64 2151310189}
!256 = !DILocation(line: 80, column: 2, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 80, column: 2)
!258 = !DILocation(line: 80, column: 2, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !3, line: 80, column: 2)
!260 = !{i64 2151310371}
!261 = !DILocation(line: 81, column: 2, scope: !99)
!262 = !DILocation(line: 83, column: 2, scope: !99)
!263 = !DILocation(line: 84, column: 1, scope: !99)
!264 = distinct !DISubprogram(name: "percpu_counter_sum", scope: !13, file: !13, line: 94, type: !265, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!53, !161}
!267 = !{!268}
!268 = !DILocalVariable(name: "fbc", arg: 1, scope: !264, file: !13, line: 94, type: !161)
!269 = !DILocation(line: 94, column: 61, scope: !264)
!270 = !DILocation(line: 96, column: 30, scope: !264)
!271 = !DILocation(line: 96, column: 9, scope: !264)
!272 = !DILocation(line: 96, column: 2, scope: !264)
!273 = distinct !DISubprogram(name: "__seqprop_assert", scope: !70, file: !70, line: 267, type: !274, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !278)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!278 = !{!279}
!279 = !DILocalVariable(name: "s", arg: 1, scope: !273, file: !70, line: 267, type: !276)
!280 = !DILocation(line: 267, column: 55, scope: !273)
!281 = !DILocation(line: 269, column: 2, scope: !273)
!282 = !DILocation(line: 269, column: 2, scope: !283)
!283 = distinct !DILexicalBlock(scope: !273, file: !70, line: 269, column: 2)
!284 = !DILocation(line: 270, column: 1, scope: !273)
!285 = distinct !DISubprogram(name: "__seqprop_preemptible", scope: !70, file: !70, line: 262, type: !286, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{!102, !276}
!288 = !{!289}
!289 = !DILocalVariable(name: "s", arg: 1, scope: !285, file: !70, line: 262, type: !276)
!290 = !DILocation(line: 262, column: 60, scope: !285)
!291 = !DILocation(line: 264, column: 2, scope: !285)
!292 = distinct !DISubprogram(name: "__preempt_count_add", scope: !293, file: !293, line: 78, type: !294, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !296)
!293 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!294 = !DISubroutineType(types: !295)
!295 = !{null, !6}
!296 = !{!297, !298, !301}
!297 = !DILocalVariable(name: "val", arg: 1, scope: !292, file: !293, line: 78, type: !6)
!298 = !DILocalVariable(name: "pao_ID__", scope: !299, file: !293, line: 80, type: !300)
!299 = distinct !DILexicalBlock(scope: !292, file: !293, line: 80, column: 2)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!301 = !DILocalVariable(name: "pto_val__", scope: !302, file: !293, line: 80, type: !87)
!302 = distinct !DILexicalBlock(scope: !303, file: !293, line: 80, column: 2)
!303 = distinct !DILexicalBlock(scope: !304, file: !293, line: 80, column: 2)
!304 = distinct !DILexicalBlock(scope: !299, file: !293, line: 80, column: 2)
!305 = !DILocation(line: 78, column: 53, scope: !292)
!306 = !DILocation(line: 80, column: 2, scope: !292)
!307 = !DILocation(line: 80, column: 2, scope: !299)
!308 = !DILocation(line: 80, column: 2, scope: !304)
!309 = !DILocation(line: 80, column: 2, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !293, line: 80, column: 2)
!311 = !{i64 2149464895}
!312 = !DILocation(line: 80, column: 2, scope: !303)
!313 = !DILocation(line: 80, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !303, file: !293, line: 80, column: 2)
!315 = !{i64 2149465190}
!316 = !DILocation(line: 80, column: 2, scope: !302)
!317 = !{i64 2149465895}
!318 = !DILocation(line: 81, column: 1, scope: !292)
!319 = distinct !DISubprogram(name: "do_write_seqcount_begin", scope: !70, file: !70, line: 539, type: !320, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !166}
!322 = !{!323}
!323 = !DILocalVariable(name: "s", arg: 1, scope: !319, file: !70, line: 539, type: !166)
!324 = !DILocation(line: 539, column: 56, scope: !319)
!325 = !DILocation(line: 541, column: 33, scope: !319)
!326 = !DILocation(line: 541, column: 2, scope: !319)
!327 = !DILocation(line: 542, column: 1, scope: !319)
!328 = distinct !DISubprogram(name: "__seqprop_ptr", scope: !70, file: !70, line: 252, type: !329, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!166, !166}
!331 = !{!332}
!332 = !DILocalVariable(name: "s", arg: 1, scope: !328, file: !70, line: 252, type: !166)
!333 = !DILocation(line: 252, column: 53, scope: !328)
!334 = !DILocation(line: 254, column: 9, scope: !328)
!335 = !DILocation(line: 254, column: 2, scope: !328)
!336 = distinct !DISubprogram(name: "percpu_counter_add", scope: !13, file: !13, line: 67, type: !337, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !161, !53}
!339 = !{!340, !341}
!340 = !DILocalVariable(name: "fbc", arg: 1, scope: !336, file: !13, line: 67, type: !161)
!341 = !DILocalVariable(name: "amount", arg: 2, scope: !336, file: !13, line: 67, type: !53)
!342 = !DILocation(line: 67, column: 62, scope: !336)
!343 = !DILocation(line: 67, column: 71, scope: !336)
!344 = !DILocation(line: 69, column: 27, scope: !336)
!345 = !DILocation(line: 69, column: 32, scope: !336)
!346 = !DILocation(line: 69, column: 40, scope: !336)
!347 = !DILocation(line: 69, column: 2, scope: !336)
!348 = !DILocation(line: 70, column: 1, scope: !336)
!349 = distinct !DISubprogram(name: "do_write_seqcount_end", scope: !70, file: !70, line: 559, type: !320, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !350)
!350 = !{!351}
!351 = !DILocalVariable(name: "s", arg: 1, scope: !349, file: !70, line: 559, type: !166)
!352 = !DILocation(line: 559, column: 54, scope: !349)
!353 = !DILocation(line: 561, column: 2, scope: !349)
!354 = !DILocation(line: 561, column: 2, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !70, line: 561, column: 2)
!356 = !DILocation(line: 562, column: 28, scope: !349)
!357 = !DILocation(line: 562, column: 2, scope: !349)
!358 = !DILocation(line: 563, column: 1, scope: !349)
!359 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !293, file: !293, line: 93, type: !360, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!102}
!362 = !{!363}
!363 = !DILocalVariable(name: "c", scope: !364, file: !293, line: 95, type: !102)
!364 = distinct !DILexicalBlock(scope: !359, file: !293, line: 95, column: 9)
!365 = !DILocation(line: 95, column: 9, scope: !364)
!366 = !{i64 2149469251, i64 2149469344}
!367 = !{i8 0, i8 2}
!368 = !DILocation(line: 95, column: 9, scope: !359)
!369 = !DILocation(line: 95, column: 2, scope: !359)
!370 = distinct !DISubprogram(name: "preempt_enable_nested", scope: !371, file: !371, line: 472, type: !372, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!371 = !DIFile(filename: "./include/linux/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0033247f2e1e62facd4401477e3cb79")
!372 = !DISubroutineType(types: !373)
!373 = !{null}
!374 = !DILocation(line: 476, column: 1, scope: !370)
!375 = distinct !DISubprogram(name: "fprop_local_init_single", scope: !3, file: !3, line: 90, type: !376, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !384)
!376 = !DISubroutineType(types: !377)
!377 = !{!6, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_single", file: !9, line: 44, size: 128, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !379, file: !9, line: 46, baseType: !89, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !379, file: !9, line: 48, baseType: !67, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !379, file: !9, line: 49, baseType: !16, size: 32, offset: 96)
!384 = !{!385}
!385 = !DILocalVariable(name: "pl", arg: 1, scope: !375, file: !3, line: 90, type: !378)
!386 = !DILocation(line: 90, column: 56, scope: !375)
!387 = !DILocation(line: 92, column: 2, scope: !375)
!388 = !DILocation(line: 92, column: 6, scope: !375)
!389 = !DILocation(line: 92, column: 13, scope: !375)
!390 = !DILocation(line: 93, column: 2, scope: !375)
!391 = !DILocation(line: 93, column: 6, scope: !375)
!392 = !DILocation(line: 93, column: 13, scope: !375)
!393 = !DILocation(line: 94, column: 2, scope: !375)
!394 = !DILocation(line: 94, column: 2, scope: !395)
!395 = distinct !DILexicalBlock(scope: !375, file: !3, line: 94, column: 2)
!396 = !DILocation(line: 95, column: 2, scope: !375)
!397 = distinct !DISubprogram(name: "fprop_local_destroy_single", scope: !3, file: !3, line: 98, type: !398, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !378}
!400 = !{!401}
!401 = !DILocalVariable(name: "pl", arg: 1, scope: !397, file: !3, line: 98, type: !378)
!402 = !DILocation(line: 98, column: 60, scope: !397)
!403 = !DILocation(line: 100, column: 1, scope: !397)
!404 = distinct !DISubprogram(name: "__fprop_inc_single", scope: !3, file: !3, line: 127, type: !405, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !7, !378}
!407 = !{!408, !409}
!408 = !DILocalVariable(name: "p", arg: 1, scope: !404, file: !3, line: 127, type: !7)
!409 = !DILocalVariable(name: "pl", arg: 2, scope: !404, file: !3, line: 127, type: !378)
!410 = !DILocation(line: 127, column: 46, scope: !404)
!411 = !DILocation(line: 127, column: 76, scope: !404)
!412 = !DILocation(line: 129, column: 30, scope: !404)
!413 = !DILocation(line: 129, column: 33, scope: !404)
!414 = !DILocation(line: 129, column: 2, scope: !404)
!415 = !DILocation(line: 130, column: 2, scope: !404)
!416 = !DILocation(line: 130, column: 6, scope: !404)
!417 = !DILocation(line: 130, column: 12, scope: !404)
!418 = !DILocation(line: 131, column: 22, scope: !404)
!419 = !DILocation(line: 131, column: 25, scope: !404)
!420 = !DILocation(line: 131, column: 2, scope: !404)
!421 = !DILocation(line: 132, column: 1, scope: !404)
!422 = distinct !DISubprogram(name: "fprop_reflect_period_single", scope: !3, file: !3, line: 102, type: !405, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !423)
!423 = !{!424, !425, !426, !427, !428, !431, !432, !437, !438, !441}
!424 = !DILocalVariable(name: "p", arg: 1, scope: !422, file: !3, line: 102, type: !7)
!425 = !DILocalVariable(name: "pl", arg: 2, scope: !422, file: !3, line: 103, type: !378)
!426 = !DILocalVariable(name: "period", scope: !422, file: !3, line: 105, type: !67)
!427 = !DILocalVariable(name: "flags", scope: !422, file: !3, line: 106, type: !89)
!428 = !DILocalVariable(name: "__dummy", scope: !429, file: !3, line: 111, type: !89)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 111, column: 2)
!430 = distinct !DILexicalBlock(scope: !422, file: !3, line: 111, column: 2)
!431 = !DILocalVariable(name: "__dummy2", scope: !429, file: !3, line: 111, type: !89)
!432 = !DILocalVariable(name: "__dummy", scope: !433, file: !3, line: 114, type: !89)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 114, column: 3)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 114, column: 3)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 113, column: 28)
!436 = distinct !DILexicalBlock(scope: !422, file: !3, line: 113, column: 6)
!437 = !DILocalVariable(name: "__dummy2", scope: !433, file: !3, line: 114, type: !89)
!438 = !DILocalVariable(name: "__dummy", scope: !439, file: !3, line: 123, type: !89)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 123, column: 2)
!440 = distinct !DILexicalBlock(scope: !422, file: !3, line: 123, column: 2)
!441 = !DILocalVariable(name: "__dummy2", scope: !439, file: !3, line: 123, type: !89)
!442 = !DILocation(line: 102, column: 62, scope: !422)
!443 = !DILocation(line: 103, column: 33, scope: !422)
!444 = !DILocation(line: 105, column: 2, scope: !422)
!445 = !DILocation(line: 105, column: 15, scope: !422)
!446 = !DILocation(line: 105, column: 24, scope: !422)
!447 = !DILocation(line: 105, column: 27, scope: !422)
!448 = !DILocation(line: 106, column: 2, scope: !422)
!449 = !DILocation(line: 106, column: 16, scope: !422)
!450 = !DILocation(line: 109, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !422, file: !3, line: 109, column: 6)
!452 = !DILocation(line: 109, column: 10, scope: !451)
!453 = !DILocation(line: 109, column: 20, scope: !451)
!454 = !DILocation(line: 109, column: 17, scope: !451)
!455 = !DILocation(line: 109, column: 6, scope: !422)
!456 = !DILocation(line: 110, column: 3, scope: !451)
!457 = !DILocation(line: 111, column: 2, scope: !422)
!458 = !DILocation(line: 111, column: 2, scope: !429)
!459 = !DILocation(line: 111, column: 2, scope: !430)
!460 = !DILocation(line: 113, column: 6, scope: !436)
!461 = !DILocation(line: 113, column: 10, scope: !436)
!462 = !DILocation(line: 113, column: 20, scope: !436)
!463 = !DILocation(line: 113, column: 17, scope: !436)
!464 = !DILocation(line: 113, column: 6, scope: !422)
!465 = !DILocation(line: 114, column: 3, scope: !435)
!466 = !DILocation(line: 114, column: 3, scope: !433)
!467 = !DILocation(line: 114, column: 3, scope: !434)
!468 = !DILocation(line: 115, column: 3, scope: !435)
!469 = !DILocation(line: 118, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !422, file: !3, line: 118, column: 6)
!471 = !DILocation(line: 118, column: 15, scope: !470)
!472 = !DILocation(line: 118, column: 19, scope: !470)
!473 = !DILocation(line: 118, column: 13, scope: !470)
!474 = !DILocation(line: 118, column: 26, scope: !470)
!475 = !DILocation(line: 118, column: 6, scope: !422)
!476 = !DILocation(line: 119, column: 18, scope: !470)
!477 = !DILocation(line: 119, column: 27, scope: !470)
!478 = !DILocation(line: 119, column: 31, scope: !470)
!479 = !DILocation(line: 119, column: 25, scope: !470)
!480 = !DILocation(line: 119, column: 3, scope: !470)
!481 = !DILocation(line: 119, column: 7, scope: !470)
!482 = !DILocation(line: 119, column: 14, scope: !470)
!483 = !DILocation(line: 121, column: 3, scope: !470)
!484 = !DILocation(line: 121, column: 7, scope: !470)
!485 = !DILocation(line: 121, column: 14, scope: !470)
!486 = !DILocation(line: 122, column: 15, scope: !422)
!487 = !DILocation(line: 122, column: 2, scope: !422)
!488 = !DILocation(line: 122, column: 6, scope: !422)
!489 = !DILocation(line: 122, column: 13, scope: !422)
!490 = !DILocation(line: 123, column: 2, scope: !422)
!491 = !DILocation(line: 123, column: 2, scope: !439)
!492 = !DILocation(line: 123, column: 2, scope: !440)
!493 = !DILocation(line: 124, column: 1, scope: !422)
!494 = distinct !DISubprogram(name: "fprop_fraction_single", scope: !3, file: !3, line: 135, type: !495, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !498)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !7, !378, !497, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !510}
!499 = !DILocalVariable(name: "p", arg: 1, scope: !494, file: !3, line: 135, type: !7)
!500 = !DILocalVariable(name: "pl", arg: 2, scope: !494, file: !3, line: 136, type: !378)
!501 = !DILocalVariable(name: "numerator", arg: 3, scope: !494, file: !3, line: 137, type: !497)
!502 = !DILocalVariable(name: "denominator", arg: 4, scope: !494, file: !3, line: 137, type: !497)
!503 = !DILocalVariable(name: "seq", scope: !494, file: !3, line: 139, type: !67)
!504 = !DILocalVariable(name: "num", scope: !494, file: !3, line: 140, type: !53)
!505 = !DILocalVariable(name: "den", scope: !494, file: !3, line: 140, type: !53)
!506 = !DILocalVariable(name: "_seq", scope: !507, file: !3, line: 143, type: !67)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 143, column: 9)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 143, column: 9)
!509 = distinct !DILexicalBlock(scope: !494, file: !3, line: 142, column: 5)
!510 = !DILocalVariable(name: "__seq", scope: !511, file: !3, line: 143, type: !67)
!511 = distinct !DILexicalBlock(scope: !507, file: !3, line: 143, column: 9)
!512 = !DILocation(line: 135, column: 49, scope: !494)
!513 = !DILocation(line: 136, column: 34, scope: !494)
!514 = !DILocation(line: 137, column: 22, scope: !494)
!515 = !DILocation(line: 137, column: 48, scope: !494)
!516 = !DILocation(line: 139, column: 2, scope: !494)
!517 = !DILocation(line: 139, column: 15, scope: !494)
!518 = !DILocation(line: 140, column: 2, scope: !494)
!519 = !DILocation(line: 140, column: 6, scope: !494)
!520 = !DILocation(line: 140, column: 11, scope: !494)
!521 = !DILocation(line: 142, column: 2, scope: !494)
!522 = !DILocation(line: 143, column: 9, scope: !507)
!523 = !DILocation(line: 143, column: 9, scope: !511)
!524 = distinct !{!524, !523, !523, !525, !526}
!525 = !{!"llvm.loop.mustprogress"}
!526 = !{!"llvm.loop.unroll.disable"}
!527 = !DILocation(line: 143, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !507, file: !3, line: 143, column: 9)
!529 = !DILocation(line: 143, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !528, file: !3, line: 143, column: 9)
!531 = !DILocation(line: 143, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 143, column: 9)
!533 = !DILocation(line: 143, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !532, file: !3, line: 143, column: 9)
!535 = !{i64 2151314691}
!536 = !DILocation(line: 143, column: 9, scope: !508)
!537 = !DILocation(line: 143, column: 9, scope: !509)
!538 = !DILocation(line: 143, column: 7, scope: !509)
!539 = !DILocation(line: 144, column: 31, scope: !509)
!540 = !DILocation(line: 144, column: 34, scope: !509)
!541 = !DILocation(line: 144, column: 3, scope: !509)
!542 = !DILocation(line: 145, column: 9, scope: !509)
!543 = !DILocation(line: 145, column: 13, scope: !509)
!544 = !DILocation(line: 145, column: 7, scope: !509)
!545 = !DILocation(line: 146, column: 39, scope: !509)
!546 = !DILocation(line: 146, column: 42, scope: !509)
!547 = !DILocation(line: 146, column: 9, scope: !509)
!548 = !DILocation(line: 146, column: 7, scope: !509)
!549 = !DILocation(line: 147, column: 2, scope: !509)
!550 = !DILocation(line: 147, column: 11, scope: !494)
!551 = distinct !{!551, !521, !552, !525, !526}
!552 = !DILocation(line: 147, column: 49, scope: !494)
!553 = !DILocation(line: 153, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !494, file: !3, line: 153, column: 6)
!555 = !DILocation(line: 153, column: 13, scope: !554)
!556 = !DILocation(line: 153, column: 10, scope: !554)
!557 = !DILocation(line: 153, column: 6, scope: !494)
!558 = !DILocation(line: 154, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 154, column: 7)
!560 = distinct !DILexicalBlock(scope: !554, file: !3, line: 153, column: 18)
!561 = !DILocation(line: 154, column: 7, scope: !560)
!562 = !DILocation(line: 155, column: 10, scope: !559)
!563 = !DILocation(line: 155, column: 8, scope: !559)
!564 = !DILocation(line: 155, column: 4, scope: !559)
!565 = !DILocation(line: 157, column: 8, scope: !559)
!566 = !DILocation(line: 158, column: 2, scope: !560)
!567 = !DILocation(line: 159, column: 17, scope: !494)
!568 = !DILocation(line: 159, column: 3, scope: !494)
!569 = !DILocation(line: 159, column: 15, scope: !494)
!570 = !DILocation(line: 160, column: 15, scope: !494)
!571 = !DILocation(line: 160, column: 3, scope: !494)
!572 = !DILocation(line: 160, column: 13, scope: !494)
!573 = !DILocation(line: 161, column: 1, scope: !494)
!574 = distinct !DISubprogram(name: "__seqprop_sequence", scope: !70, file: !70, line: 257, type: !575, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!67, !276}
!577 = !{!578}
!578 = !DILocalVariable(name: "s", arg: 1, scope: !574, file: !70, line: 257, type: !276)
!579 = !DILocation(line: 257, column: 61, scope: !574)
!580 = !DILocation(line: 259, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !574, file: !70, line: 259, column: 9)
!582 = !DILocation(line: 259, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !581, file: !70, line: 259, column: 9)
!584 = !DILocation(line: 259, column: 2, scope: !574)
!585 = distinct !DISubprogram(name: "cpu_relax", scope: !586, file: !586, line: 16, type: !372, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!586 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!587 = !DILocation(line: 18, column: 2, scope: !585)
!588 = !DILocation(line: 19, column: 1, scope: !585)
!589 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !590, file: !590, line: 203, type: !294, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !591)
!590 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!591 = !{!592}
!592 = !DILocalVariable(name: "n", arg: 1, scope: !589, file: !590, line: 203, type: !6)
!593 = !DILocation(line: 203, column: 42, scope: !589)
!594 = !DILocation(line: 203, column: 48, scope: !589)
!595 = distinct !DISubprogram(name: "percpu_counter_read_positive", scope: !13, file: !13, line: 109, type: !265, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !596)
!596 = !{!597, !598}
!597 = !DILocalVariable(name: "fbc", arg: 1, scope: !595, file: !13, line: 109, type: !161)
!598 = !DILocalVariable(name: "ret", scope: !595, file: !13, line: 112, type: !53)
!599 = !DILocation(line: 109, column: 71, scope: !595)
!600 = !DILocation(line: 112, column: 2, scope: !595)
!601 = !DILocation(line: 112, column: 6, scope: !595)
!602 = !DILocation(line: 112, column: 12, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !13, line: 112, column: 12)
!604 = !DILocation(line: 112, column: 12, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !13, line: 112, column: 12)
!606 = !DILocation(line: 114, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !595, file: !13, line: 114, column: 6)
!608 = !DILocation(line: 114, column: 10, scope: !607)
!609 = !DILocation(line: 114, column: 6, scope: !595)
!610 = !DILocation(line: 115, column: 10, scope: !607)
!611 = !DILocation(line: 115, column: 3, scope: !607)
!612 = !DILocation(line: 116, column: 2, scope: !595)
!613 = !DILocation(line: 117, column: 1, scope: !595)
!614 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !70, file: !70, line: 446, type: !615, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!6, !276, !67}
!617 = !{!618, !619}
!618 = !DILocalVariable(name: "s", arg: 1, scope: !614, file: !70, line: 446, type: !276)
!619 = !DILocalVariable(name: "start", arg: 2, scope: !614, file: !70, line: 446, type: !67)
!620 = !DILocation(line: 446, column: 60, scope: !614)
!621 = !DILocation(line: 446, column: 72, scope: !614)
!622 = !DILocation(line: 448, column: 2, scope: !614)
!623 = !DILocation(line: 448, column: 2, scope: !624)
!624 = distinct !DILexicalBlock(scope: !614, file: !70, line: 448, column: 2)
!625 = !DILocation(line: 448, column: 2, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !70, line: 448, column: 2)
!627 = !DILocation(line: 448, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !70, line: 448, column: 2)
!629 = !DILocation(line: 448, column: 2, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !70, line: 448, column: 2)
!631 = !{i64 2149877515}
!632 = !DILocation(line: 449, column: 34, scope: !614)
!633 = !DILocation(line: 449, column: 37, scope: !614)
!634 = !DILocation(line: 449, column: 9, scope: !614)
!635 = !DILocation(line: 449, column: 2, scope: !614)
!636 = !DILocation(line: 168, column: 56, scope: !110)
!637 = !DILocation(line: 168, column: 66, scope: !110)
!638 = !DILocation(line: 170, column: 2, scope: !110)
!639 = !DILocation(line: 170, column: 6, scope: !110)
!640 = !DILocation(line: 172, column: 8, scope: !641)
!641 = distinct !DILexicalBlock(scope: !110, file: !3, line: 172, column: 8)
!642 = !DILocation(line: 172, column: 6, scope: !110)
!643 = !DILocation(line: 173, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !110, file: !3, line: 173, column: 6)
!645 = !DILocation(line: 173, column: 6, scope: !110)
!646 = !DILocation(line: 174, column: 10, scope: !644)
!647 = !DILocation(line: 174, column: 3, scope: !644)
!648 = !DILocation(line: 175, column: 2, scope: !110)
!649 = !DILocation(line: 175, column: 6, scope: !110)
!650 = !DILocation(line: 175, column: 13, scope: !110)
!651 = !DILocation(line: 176, column: 2, scope: !110)
!652 = !DILocation(line: 176, column: 2, scope: !653)
!653 = distinct !DILexicalBlock(scope: !110, file: !3, line: 176, column: 2)
!654 = !DILocation(line: 177, column: 2, scope: !110)
!655 = !DILocation(line: 178, column: 1, scope: !110)
!656 = distinct !DISubprogram(name: "fprop_local_destroy_percpu", scope: !3, file: !3, line: 180, type: !657, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !113}
!659 = !{!660}
!660 = !DILocalVariable(name: "pl", arg: 1, scope: !656, file: !3, line: 180, type: !113)
!661 = !DILocation(line: 180, column: 60, scope: !656)
!662 = !DILocation(line: 182, column: 26, scope: !656)
!663 = !DILocation(line: 182, column: 30, scope: !656)
!664 = !DILocation(line: 182, column: 2, scope: !656)
!665 = !DILocation(line: 183, column: 1, scope: !656)
!666 = distinct !DISubprogram(name: "__fprop_add_percpu", scope: !3, file: !3, line: 216, type: !667, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !670)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !7, !113, !669}
!669 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!670 = !{!671, !672, !673}
!671 = !DILocalVariable(name: "p", arg: 1, scope: !666, file: !3, line: 216, type: !7)
!672 = !DILocalVariable(name: "pl", arg: 2, scope: !666, file: !3, line: 216, type: !113)
!673 = !DILocalVariable(name: "nr", arg: 3, scope: !666, file: !3, line: 217, type: !669)
!674 = !DILocation(line: 216, column: 46, scope: !666)
!675 = !DILocation(line: 216, column: 76, scope: !666)
!676 = !DILocation(line: 217, column: 8, scope: !666)
!677 = !DILocation(line: 219, column: 30, scope: !666)
!678 = !DILocation(line: 219, column: 33, scope: !666)
!679 = !DILocation(line: 219, column: 2, scope: !666)
!680 = !DILocation(line: 220, column: 28, scope: !666)
!681 = !DILocation(line: 220, column: 32, scope: !666)
!682 = !DILocation(line: 220, column: 40, scope: !666)
!683 = !DILocation(line: 220, column: 44, scope: !666)
!684 = !DILocation(line: 220, column: 2, scope: !666)
!685 = !DILocation(line: 221, column: 22, scope: !666)
!686 = !DILocation(line: 221, column: 25, scope: !666)
!687 = !DILocation(line: 221, column: 33, scope: !666)
!688 = !DILocation(line: 221, column: 2, scope: !666)
!689 = !DILocation(line: 222, column: 1, scope: !666)
!690 = distinct !DISubprogram(name: "fprop_reflect_period_percpu", scope: !3, file: !3, line: 185, type: !691, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !7, !113}
!693 = !{!694, !695, !696, !697, !698, !701, !702, !707, !708, !711, !714}
!694 = !DILocalVariable(name: "p", arg: 1, scope: !690, file: !3, line: 185, type: !7)
!695 = !DILocalVariable(name: "pl", arg: 2, scope: !690, file: !3, line: 186, type: !113)
!696 = !DILocalVariable(name: "period", scope: !690, file: !3, line: 188, type: !67)
!697 = !DILocalVariable(name: "flags", scope: !690, file: !3, line: 189, type: !89)
!698 = !DILocalVariable(name: "__dummy", scope: !699, file: !3, line: 194, type: !89)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 194, column: 2)
!700 = distinct !DILexicalBlock(scope: !690, file: !3, line: 194, column: 2)
!701 = !DILocalVariable(name: "__dummy2", scope: !699, file: !3, line: 194, type: !89)
!702 = !DILocalVariable(name: "__dummy", scope: !703, file: !3, line: 197, type: !89)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 197, column: 3)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 197, column: 3)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 196, column: 28)
!706 = distinct !DILexicalBlock(scope: !690, file: !3, line: 196, column: 6)
!707 = !DILocalVariable(name: "__dummy2", scope: !703, file: !3, line: 197, type: !89)
!708 = !DILocalVariable(name: "val", scope: !709, file: !3, line: 202, type: !53)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 201, column: 43)
!710 = distinct !DILexicalBlock(scope: !690, file: !3, line: 201, column: 6)
!711 = !DILocalVariable(name: "__dummy", scope: !712, file: !3, line: 212, type: !89)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 212, column: 2)
!713 = distinct !DILexicalBlock(scope: !690, file: !3, line: 212, column: 2)
!714 = !DILocalVariable(name: "__dummy2", scope: !712, file: !3, line: 212, type: !89)
!715 = !DILocation(line: 185, column: 62, scope: !690)
!716 = !DILocation(line: 186, column: 33, scope: !690)
!717 = !DILocation(line: 188, column: 2, scope: !690)
!718 = !DILocation(line: 188, column: 15, scope: !690)
!719 = !DILocation(line: 188, column: 24, scope: !690)
!720 = !DILocation(line: 188, column: 27, scope: !690)
!721 = !DILocation(line: 189, column: 2, scope: !690)
!722 = !DILocation(line: 189, column: 16, scope: !690)
!723 = !DILocation(line: 192, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !690, file: !3, line: 192, column: 6)
!725 = !DILocation(line: 192, column: 10, scope: !724)
!726 = !DILocation(line: 192, column: 20, scope: !724)
!727 = !DILocation(line: 192, column: 17, scope: !724)
!728 = !DILocation(line: 192, column: 6, scope: !690)
!729 = !DILocation(line: 193, column: 3, scope: !724)
!730 = !DILocation(line: 194, column: 2, scope: !690)
!731 = !DILocation(line: 194, column: 2, scope: !699)
!732 = !DILocation(line: 194, column: 2, scope: !700)
!733 = !DILocation(line: 196, column: 6, scope: !706)
!734 = !DILocation(line: 196, column: 10, scope: !706)
!735 = !DILocation(line: 196, column: 20, scope: !706)
!736 = !DILocation(line: 196, column: 17, scope: !706)
!737 = !DILocation(line: 196, column: 6, scope: !690)
!738 = !DILocation(line: 197, column: 3, scope: !705)
!739 = !DILocation(line: 197, column: 3, scope: !703)
!740 = !DILocation(line: 197, column: 3, scope: !704)
!741 = !DILocation(line: 198, column: 3, scope: !705)
!742 = !DILocation(line: 201, column: 6, scope: !710)
!743 = !DILocation(line: 201, column: 15, scope: !710)
!744 = !DILocation(line: 201, column: 19, scope: !710)
!745 = !DILocation(line: 201, column: 13, scope: !710)
!746 = !DILocation(line: 201, column: 26, scope: !710)
!747 = !DILocation(line: 201, column: 6, scope: !690)
!748 = !DILocation(line: 202, column: 3, scope: !709)
!749 = !DILocation(line: 202, column: 7, scope: !709)
!750 = !DILocation(line: 202, column: 34, scope: !709)
!751 = !DILocation(line: 202, column: 38, scope: !709)
!752 = !DILocation(line: 202, column: 13, scope: !709)
!753 = !DILocation(line: 204, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !709, file: !3, line: 204, column: 7)
!755 = !DILocation(line: 204, column: 14, scope: !754)
!756 = !DILocation(line: 204, column: 27, scope: !754)
!757 = !DILocation(line: 204, column: 25, scope: !754)
!758 = !DILocation(line: 204, column: 13, scope: !754)
!759 = !DILocation(line: 204, column: 11, scope: !754)
!760 = !DILocation(line: 204, column: 7, scope: !709)
!761 = !DILocation(line: 205, column: 30, scope: !754)
!762 = !DILocation(line: 205, column: 34, scope: !754)
!763 = !DILocation(line: 205, column: 10, scope: !754)
!764 = !DILocation(line: 205, column: 8, scope: !754)
!765 = !DILocation(line: 205, column: 4, scope: !754)
!766 = !DILocation(line: 207, column: 29, scope: !709)
!767 = !DILocation(line: 207, column: 33, scope: !709)
!768 = !DILocation(line: 208, column: 5, scope: !709)
!769 = !DILocation(line: 208, column: 4, scope: !709)
!770 = !DILocation(line: 208, column: 12, scope: !709)
!771 = !DILocation(line: 208, column: 20, scope: !709)
!772 = !DILocation(line: 208, column: 27, scope: !709)
!773 = !DILocation(line: 208, column: 31, scope: !709)
!774 = !DILocation(line: 208, column: 26, scope: !709)
!775 = !DILocation(line: 208, column: 16, scope: !709)
!776 = !DILocation(line: 208, column: 9, scope: !709)
!777 = !DILocation(line: 208, column: 41, scope: !709)
!778 = !DILocation(line: 207, column: 3, scope: !709)
!779 = !DILocation(line: 209, column: 2, scope: !710)
!780 = !DILocation(line: 209, column: 2, scope: !709)
!781 = !DILocation(line: 210, column: 23, scope: !710)
!782 = !DILocation(line: 210, column: 27, scope: !710)
!783 = !DILocation(line: 210, column: 3, scope: !710)
!784 = !DILocation(line: 211, column: 15, scope: !690)
!785 = !DILocation(line: 211, column: 2, scope: !690)
!786 = !DILocation(line: 211, column: 6, scope: !690)
!787 = !DILocation(line: 211, column: 13, scope: !690)
!788 = !DILocation(line: 212, column: 2, scope: !690)
!789 = !DILocation(line: 212, column: 2, scope: !712)
!790 = !DILocation(line: 212, column: 2, scope: !713)
!791 = !DILocation(line: 213, column: 1, scope: !690)
!792 = !DISubprogram(name: "percpu_counter_add_batch", scope: !13, file: !13, line: 56, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !161, !53, !64}
!795 = distinct !DISubprogram(name: "__ilog2_u32", scope: !796, file: !796, line: 22, type: !797, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !799)
!796 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!797 = !DISubroutineType(types: !798)
!798 = !{!6, !87}
!799 = !{!800}
!800 = !DILocalVariable(name: "n", arg: 1, scope: !795, file: !796, line: 22, type: !87)
!801 = !DILocation(line: 22, column: 21, scope: !795)
!802 = !DILocation(line: 24, column: 13, scope: !795)
!803 = !DILocation(line: 24, column: 9, scope: !795)
!804 = !DILocation(line: 24, column: 16, scope: !795)
!805 = !DILocation(line: 24, column: 2, scope: !795)
!806 = distinct !DISubprogram(name: "fprop_fraction_percpu", scope: !3, file: !3, line: 224, type: !807, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !7, !113, !497, !497}
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !821}
!810 = !DILocalVariable(name: "p", arg: 1, scope: !806, file: !3, line: 224, type: !7)
!811 = !DILocalVariable(name: "pl", arg: 2, scope: !806, file: !3, line: 225, type: !113)
!812 = !DILocalVariable(name: "numerator", arg: 3, scope: !806, file: !3, line: 226, type: !497)
!813 = !DILocalVariable(name: "denominator", arg: 4, scope: !806, file: !3, line: 226, type: !497)
!814 = !DILocalVariable(name: "seq", scope: !806, file: !3, line: 228, type: !67)
!815 = !DILocalVariable(name: "num", scope: !806, file: !3, line: 229, type: !53)
!816 = !DILocalVariable(name: "den", scope: !806, file: !3, line: 229, type: !53)
!817 = !DILocalVariable(name: "_seq", scope: !818, file: !3, line: 232, type: !67)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 232, column: 9)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 232, column: 9)
!820 = distinct !DILexicalBlock(scope: !806, file: !3, line: 231, column: 5)
!821 = !DILocalVariable(name: "__seq", scope: !822, file: !3, line: 232, type: !67)
!822 = distinct !DILexicalBlock(scope: !818, file: !3, line: 232, column: 9)
!823 = !DILocation(line: 224, column: 49, scope: !806)
!824 = !DILocation(line: 225, column: 34, scope: !806)
!825 = !DILocation(line: 226, column: 22, scope: !806)
!826 = !DILocation(line: 226, column: 48, scope: !806)
!827 = !DILocation(line: 228, column: 2, scope: !806)
!828 = !DILocation(line: 228, column: 15, scope: !806)
!829 = !DILocation(line: 229, column: 2, scope: !806)
!830 = !DILocation(line: 229, column: 6, scope: !806)
!831 = !DILocation(line: 229, column: 11, scope: !806)
!832 = !DILocation(line: 231, column: 2, scope: !806)
!833 = !DILocation(line: 232, column: 9, scope: !818)
!834 = !DILocation(line: 232, column: 9, scope: !822)
!835 = distinct !{!835, !834, !834, !525, !526}
!836 = !DILocation(line: 232, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !818, file: !3, line: 232, column: 9)
!838 = !DILocation(line: 232, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !3, line: 232, column: 9)
!840 = !DILocation(line: 232, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 232, column: 9)
!842 = !DILocation(line: 232, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !3, line: 232, column: 9)
!844 = !{i64 2151319431}
!845 = !DILocation(line: 232, column: 9, scope: !819)
!846 = !DILocation(line: 232, column: 9, scope: !820)
!847 = !DILocation(line: 232, column: 7, scope: !820)
!848 = !DILocation(line: 233, column: 31, scope: !820)
!849 = !DILocation(line: 233, column: 34, scope: !820)
!850 = !DILocation(line: 233, column: 3, scope: !820)
!851 = !DILocation(line: 234, column: 39, scope: !820)
!852 = !DILocation(line: 234, column: 43, scope: !820)
!853 = !DILocation(line: 234, column: 9, scope: !820)
!854 = !DILocation(line: 234, column: 7, scope: !820)
!855 = !DILocation(line: 235, column: 39, scope: !820)
!856 = !DILocation(line: 235, column: 42, scope: !820)
!857 = !DILocation(line: 235, column: 9, scope: !820)
!858 = !DILocation(line: 235, column: 7, scope: !820)
!859 = !DILocation(line: 236, column: 2, scope: !820)
!860 = !DILocation(line: 236, column: 11, scope: !806)
!861 = distinct !{!861, !832, !862, !525, !526}
!862 = !DILocation(line: 236, column: 49, scope: !806)
!863 = !DILocation(line: 242, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !806, file: !3, line: 242, column: 6)
!865 = !DILocation(line: 242, column: 13, scope: !864)
!866 = !DILocation(line: 242, column: 10, scope: !864)
!867 = !DILocation(line: 242, column: 6, scope: !806)
!868 = !DILocation(line: 243, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 243, column: 7)
!870 = distinct !DILexicalBlock(scope: !864, file: !3, line: 242, column: 18)
!871 = !DILocation(line: 243, column: 7, scope: !870)
!872 = !DILocation(line: 244, column: 10, scope: !869)
!873 = !DILocation(line: 244, column: 8, scope: !869)
!874 = !DILocation(line: 244, column: 4, scope: !869)
!875 = !DILocation(line: 246, column: 8, scope: !869)
!876 = !DILocation(line: 247, column: 2, scope: !870)
!877 = !DILocation(line: 248, column: 17, scope: !806)
!878 = !DILocation(line: 248, column: 3, scope: !806)
!879 = !DILocation(line: 248, column: 15, scope: !806)
!880 = !DILocation(line: 249, column: 15, scope: !806)
!881 = !DILocation(line: 249, column: 3, scope: !806)
!882 = !DILocation(line: 249, column: 13, scope: !806)
!883 = !DILocation(line: 250, column: 1, scope: !806)
!884 = distinct !DISubprogram(name: "__fprop_add_percpu_max", scope: !3, file: !3, line: 256, type: !885, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !7, !113, !6, !669}
!887 = !{!888, !889, !890, !891, !892, !895, !896}
!888 = !DILocalVariable(name: "p", arg: 1, scope: !884, file: !3, line: 256, type: !7)
!889 = !DILocalVariable(name: "pl", arg: 2, scope: !884, file: !3, line: 257, type: !113)
!890 = !DILocalVariable(name: "max_frac", arg: 3, scope: !884, file: !3, line: 257, type: !6)
!891 = !DILocalVariable(name: "nr", arg: 4, scope: !884, file: !3, line: 257, type: !669)
!892 = !DILocalVariable(name: "numerator", scope: !893, file: !3, line: 260, type: !89)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 259, column: 44)
!894 = distinct !DILexicalBlock(scope: !884, file: !3, line: 259, column: 6)
!895 = !DILocalVariable(name: "denominator", scope: !893, file: !3, line: 260, type: !89)
!896 = !DILocalVariable(name: "tmp", scope: !893, file: !3, line: 261, type: !53)
!897 = !DILocation(line: 256, column: 50, scope: !884)
!898 = !DILocation(line: 257, column: 30, scope: !884)
!899 = !DILocation(line: 257, column: 38, scope: !884)
!900 = !DILocation(line: 257, column: 53, scope: !884)
!901 = !DILocation(line: 259, column: 6, scope: !894)
!902 = !DILocation(line: 259, column: 6, scope: !884)
!903 = !DILocation(line: 260, column: 3, scope: !893)
!904 = !DILocation(line: 260, column: 17, scope: !893)
!905 = !DILocation(line: 260, column: 28, scope: !893)
!906 = !DILocation(line: 261, column: 3, scope: !893)
!907 = !DILocation(line: 261, column: 7, scope: !893)
!908 = !DILocation(line: 263, column: 25, scope: !893)
!909 = !DILocation(line: 263, column: 28, scope: !893)
!910 = !DILocation(line: 263, column: 3, scope: !893)
!911 = !DILocation(line: 265, column: 14, scope: !893)
!912 = !DILocation(line: 265, column: 28, scope: !893)
!913 = !DILocation(line: 265, column: 26, scope: !893)
!914 = !DILocation(line: 266, column: 12, scope: !893)
!915 = !DILocation(line: 266, column: 22, scope: !893)
!916 = !DILocation(line: 265, column: 37, scope: !893)
!917 = !DILocation(line: 265, column: 7, scope: !893)
!918 = !DILocation(line: 267, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !893, file: !3, line: 267, column: 7)
!920 = !DILocation(line: 267, column: 11, scope: !919)
!921 = !DILocation(line: 267, column: 7, scope: !893)
!922 = !DILocation(line: 269, column: 4, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 267, column: 16)
!924 = !DILocation(line: 270, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !919, file: !3, line: 270, column: 14)
!926 = !DILocation(line: 270, column: 20, scope: !925)
!927 = !DILocation(line: 270, column: 44, scope: !925)
!928 = !DILocation(line: 270, column: 42, scope: !925)
!929 = !DILocation(line: 270, column: 23, scope: !925)
!930 = !DILocation(line: 270, column: 18, scope: !925)
!931 = !DILocation(line: 270, column: 14, scope: !919)
!932 = !DILocation(line: 272, column: 17, scope: !933)
!933 = distinct !DILexicalBlock(scope: !925, file: !3, line: 270, column: 55)
!934 = !DILocation(line: 272, column: 21, scope: !933)
!935 = !DILocation(line: 272, column: 41, scope: !933)
!936 = !DILocation(line: 272, column: 39, scope: !933)
!937 = !DILocation(line: 272, column: 50, scope: !933)
!938 = !DILocation(line: 273, column: 24, scope: !933)
!939 = !DILocation(line: 273, column: 22, scope: !933)
!940 = !DILocation(line: 273, column: 6, scope: !933)
!941 = !DILocation(line: 272, column: 9, scope: !933)
!942 = !DILocation(line: 272, column: 7, scope: !933)
!943 = !DILocation(line: 274, column: 3, scope: !933)
!944 = !DILocation(line: 275, column: 2, scope: !894)
!945 = !DILocation(line: 275, column: 2, scope: !893)
!946 = !DILocation(line: 277, column: 21, scope: !884)
!947 = !DILocation(line: 277, column: 24, scope: !884)
!948 = !DILocation(line: 277, column: 28, scope: !884)
!949 = !DILocation(line: 277, column: 2, scope: !884)
!950 = !DILocation(line: 278, column: 1, scope: !884)
!951 = distinct !DISubprogram(name: "div_u64", scope: !952, file: !952, line: 127, type: !953, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !955)
!952 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!953 = !DISubroutineType(types: !954)
!954 = !{!84, !84, !87}
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "dividend", arg: 1, scope: !951, file: !952, line: 127, type: !84)
!957 = !DILocalVariable(name: "divisor", arg: 2, scope: !951, file: !952, line: 127, type: !87)
!958 = !DILocalVariable(name: "remainder", scope: !951, file: !952, line: 129, type: !87)
!959 = !DILocation(line: 127, column: 31, scope: !951)
!960 = !DILocation(line: 127, column: 45, scope: !951)
!961 = !DILocation(line: 129, column: 2, scope: !951)
!962 = !DILocation(line: 129, column: 6, scope: !951)
!963 = !DILocation(line: 130, column: 21, scope: !951)
!964 = !DILocation(line: 130, column: 31, scope: !951)
!965 = !DILocation(line: 130, column: 9, scope: !951)
!966 = !DILocation(line: 131, column: 1, scope: !951)
!967 = !DILocation(line: 130, column: 2, scope: !951)
!968 = !DISubprogram(name: "percpu_counter_destroy_many", scope: !13, file: !13, line: 49, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !161, !87}
!971 = !DISubprogram(name: "__percpu_counter_sum", scope: !13, file: !13, line: 58, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = distinct !DISubprogram(name: "do_write_seqcount_begin_nested", scope: !70, file: !70, line: 513, type: !973, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !166, !6}
!975 = !{!976, !977}
!976 = !DILocalVariable(name: "s", arg: 1, scope: !972, file: !70, line: 513, type: !166)
!977 = !DILocalVariable(name: "subclass", arg: 2, scope: !972, file: !70, line: 513, type: !6)
!978 = !DILocation(line: 513, column: 63, scope: !972)
!979 = !DILocation(line: 513, column: 70, scope: !972)
!980 = !DILocation(line: 515, column: 2, scope: !972)
!981 = !DILocation(line: 515, column: 2, scope: !982)
!982 = distinct !DILexicalBlock(scope: !972, file: !70, line: 515, column: 2)
!983 = !DILocation(line: 516, column: 30, scope: !972)
!984 = !DILocation(line: 516, column: 2, scope: !972)
!985 = !DILocation(line: 517, column: 1, scope: !972)
!986 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !70, file: !70, line: 466, type: !320, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !987)
!987 = !{!988}
!988 = !DILocalVariable(name: "s", arg: 1, scope: !986, file: !70, line: 466, type: !166)
!989 = !DILocation(line: 466, column: 60, scope: !986)
!990 = !DILocation(line: 468, column: 2, scope: !986)
!991 = !DILocation(line: 469, column: 2, scope: !986)
!992 = !DILocation(line: 469, column: 5, scope: !986)
!993 = !DILocation(line: 469, column: 13, scope: !986)
!994 = !DILocation(line: 470, column: 2, scope: !986)
!995 = !DILocation(line: 470, column: 2, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !70, line: 470, column: 2)
!997 = !DILocation(line: 470, column: 2, scope: !998)
!998 = distinct !DILexicalBlock(scope: !996, file: !70, line: 470, column: 2)
!999 = !{i64 2149877788}
!1000 = !DILocation(line: 471, column: 1, scope: !986)
!1001 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !590, file: !590, line: 199, type: !372, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!1002 = !DILocation(line: 199, column: 56, scope: !1001)
!1003 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !70, file: !70, line: 487, type: !320, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1004)
!1004 = !{!1005}
!1005 = !DILocalVariable(name: "s", arg: 1, scope: !1003, file: !70, line: 487, type: !166)
!1006 = !DILocation(line: 487, column: 58, scope: !1003)
!1007 = !DILocation(line: 489, column: 2, scope: !1003)
!1008 = !DILocation(line: 489, column: 2, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !70, line: 489, column: 2)
!1010 = !DILocation(line: 489, column: 2, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !70, line: 489, column: 2)
!1012 = !{i64 2149878061}
!1013 = !DILocation(line: 490, column: 2, scope: !1003)
!1014 = !DILocation(line: 490, column: 5, scope: !1003)
!1015 = !DILocation(line: 490, column: 13, scope: !1003)
!1016 = !DILocation(line: 491, column: 2, scope: !1003)
!1017 = !DILocation(line: 492, column: 1, scope: !1003)
!1018 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !590, file: !590, line: 200, type: !372, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!1019 = !DILocation(line: 200, column: 54, scope: !1018)
!1020 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1021, file: !1021, line: 32, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!89, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1025 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1021, file: !1021, line: 43, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !1024, !89}
!1028 = distinct !DISubprogram(name: "rep_nop", scope: !586, file: !586, line: 11, type: !372, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!1029 = !DILocation(line: 13, column: 2, scope: !1028)
!1030 = !{i64 1933681}
!1031 = !DILocation(line: 14, column: 1, scope: !1028)
!1032 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !70, file: !70, line: 426, type: !615, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1033)
!1033 = !{!1034, !1035}
!1034 = !DILocalVariable(name: "s", arg: 1, scope: !1032, file: !70, line: 426, type: !276)
!1035 = !DILocalVariable(name: "start", arg: 2, scope: !1032, file: !70, line: 426, type: !67)
!1036 = !DILocation(line: 426, column: 62, scope: !1032)
!1037 = !DILocation(line: 426, column: 74, scope: !1032)
!1038 = !DILocation(line: 428, column: 2, scope: !1032)
!1039 = !DILocation(line: 429, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !70, line: 429, column: 9)
!1041 = !DILocation(line: 429, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1040, file: !70, line: 429, column: 9)
!1043 = !DILocation(line: 429, column: 9, scope: !1032)
!1044 = !DILocation(line: 429, column: 2, scope: !1032)
!1045 = distinct !DISubprogram(name: "percpu_counter_read", scope: !13, file: !13, line: 99, type: !265, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1046)
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "fbc", arg: 1, scope: !1045, file: !13, line: 99, type: !161)
!1048 = !DILocation(line: 99, column: 62, scope: !1045)
!1049 = !DILocation(line: 101, column: 9, scope: !1045)
!1050 = !DILocation(line: 101, column: 14, scope: !1045)
!1051 = !DILocation(line: 101, column: 2, scope: !1045)
!1052 = !DISubprogram(name: "percpu_counter_set", scope: !13, file: !13, line: 55, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = distinct !DISubprogram(name: "fls", scope: !1054, file: !1054, line: 359, type: !1055, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1057)
!1054 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!6, !67}
!1057 = !{!1058, !1059}
!1058 = !DILocalVariable(name: "x", arg: 1, scope: !1053, file: !1054, line: 359, type: !67)
!1059 = !DILocalVariable(name: "r", scope: !1053, file: !1054, line: 361, type: !6)
!1060 = !DILocation(line: 359, column: 45, scope: !1053)
!1061 = !DILocation(line: 361, column: 2, scope: !1053)
!1062 = !DILocation(line: 361, column: 6, scope: !1053)
!1063 = !DILocation(line: 375, column: 14, scope: !1053)
!1064 = !DILocation(line: 373, column: 2, scope: !1053)
!1065 = !{i64 481483}
!1066 = !DILocation(line: 386, column: 9, scope: !1053)
!1067 = !DILocation(line: 386, column: 11, scope: !1053)
!1068 = !DILocation(line: 387, column: 1, scope: !1053)
!1069 = !DILocation(line: 386, column: 2, scope: !1053)
!1070 = distinct !DISubprogram(name: "div_u64_rem", scope: !952, file: !952, line: 26, type: !1071, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1074)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!84, !84, !87, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1074 = !{!1075, !1076, !1077}
!1075 = !DILocalVariable(name: "dividend", arg: 1, scope: !1070, file: !952, line: 26, type: !84)
!1076 = !DILocalVariable(name: "divisor", arg: 2, scope: !1070, file: !952, line: 26, type: !87)
!1077 = !DILocalVariable(name: "remainder", arg: 3, scope: !1070, file: !952, line: 26, type: !1073)
!1078 = !DILocation(line: 26, column: 35, scope: !1070)
!1079 = !DILocation(line: 26, column: 49, scope: !1070)
!1080 = !DILocation(line: 26, column: 63, scope: !1070)
!1081 = !DILocation(line: 28, column: 15, scope: !1070)
!1082 = !DILocation(line: 28, column: 26, scope: !1070)
!1083 = !DILocation(line: 28, column: 24, scope: !1070)
!1084 = !DILocation(line: 28, column: 3, scope: !1070)
!1085 = !DILocation(line: 28, column: 13, scope: !1070)
!1086 = !DILocation(line: 29, column: 9, scope: !1070)
!1087 = !DILocation(line: 29, column: 20, scope: !1070)
!1088 = !DILocation(line: 29, column: 18, scope: !1070)
!1089 = !DILocation(line: 29, column: 2, scope: !1070)
